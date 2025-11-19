@interface WFHarnessTestRunDescriptor
- (BOOL)shouldDisablePrivacyPrompts;
- (WFHarnessTestRunDescriptor)initWithCoder:(id)a3;
- (WFHarnessTestRunDescriptor)initWithTestBundleURL:(id)a3 xcTestClass:(id)a4 xcTestMethodName:(id)a5 testIdentifier:(id)a6;
- (id)description;
- (id)loadTestCaseWithError:(id *)a3;
- (id)testMethodNamebyRemovingSuffixes:(id)a3;
- (void)createWorkflowWithEnvironment:(int64_t)a3 database:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFHarnessTestRunDescriptor

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: xcTestClass: %@, xcTestMethodName: %@, testIdentifier: %@, testCase != nil: %d, testBundleURL: %@"], v5, self, self->_xcTestClass, self->_xcTestMethodName, self->_testIdentifier, self->_testCase != 0, self->_testBundleURL);

  return v6;
}

- (BOOL)shouldDisablePrivacyPrompts
{
  v3 = [(WFHarnessTestRunDescriptor *)self testCase];

  if (!v3)
  {
    return 1;
  }

  v4 = [(WFHarnessTestRunDescriptor *)self testCase];
  v5 = [v4 interactions];
  v6 = [v5 bs_containsObjectPassingTest:&__block_literal_global_20740];

  return v6 ^ 1;
}

- (id)loadTestCaseWithError:(id *)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = [(WFHarnessTestRunDescriptor *)self testCase];

  if (v5)
  {
    v6 = [(WFHarnessTestRunDescriptor *)self testCase];
    goto LABEL_52;
  }

  v7 = MEMORY[0x1E696AAE8];
  v8 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
  v9 = [v7 bundleWithURL:v8];

  if (!v9)
  {
    v33 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v34 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v34;
      _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_FAULT, "%s Could not load test bundle at URL %@", buf, 0x16u);
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_51;
  }

  v10 = [v9 sharedSupportURL];
  v11 = [v10 URLByAppendingPathComponent:@"libActionHarnessTests.dylib"];

  v12 = [(WFHarnessTestRunDescriptor *)v11 wf_fileExists];
  v13 = getWFTestHarnessLogObject();
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v35 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v35;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Could not find action harness test dylib in bundle %@", buf, 0x16u);
    }

    if (!a3)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    v94 = v11;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Loading test dylib at path %@", buf, 0x16u);
  }

  v15 = v11;
  if (!dlopen([(WFHarnessTestRunDescriptor *)v11 fileSystemRepresentation], 2))
  {
    v36 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v11;
      _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Could not dlopen test dylib at path %@", buf, 0x16u);
    }

    if (!a3)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v16 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
  cls = NSClassFromString(v16);

  if (!cls)
  {
    v40 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      v41 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315650;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v41;
      v95 = 2112;
      v96 = v11;
      _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_FAULT, "%s Could not find test class %@ inside dylib at path %@", buf, 0x20u);
    }

    if (!a3)
    {
      goto LABEL_49;
    }

LABEL_47:
    v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    goto LABEL_48;
  }

  v17 = objc_alloc_init(cls);
  v74 = v17;
  v18 = v17;
  if (!v17 || (v19 = [v17 conformsToProtocol:&unk_1F4B24FA0], v18 = v74, (v19 & 1) == 0))
  {

    v37 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      v38 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v38;
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_FAULT, "%s Test class %@ does not conform to WFHarnessTestCaseVendor", buf, 0x16u);
    }

    if (a3)
    {
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
LABEL_48:
      v6 = 0;
      *a3 = v39;
      goto LABEL_50;
    }

LABEL_49:
    v6 = 0;
    goto LABEL_50;
  }

  [v74 setTestBundle:v9];
  outCount = 0;
  v20 = class_copyMethodList(cls, &outCount);
  v21 = v20;
  if (!v20)
  {
    v47 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      v48 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v48;
      _os_log_impl(&dword_1CA256000, v47, OS_LOG_TYPE_FAULT, "%s Unable to get method list from test class: %@", buf, 0x16u);
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_66;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v20;
  v72 = _Block_copy(aBlock);
  v22 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    v24 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
    *buf = 136315906;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    v94 = self;
    v95 = 2112;
    v96 = v23;
    v97 = 2112;
    *v98 = v24;
    _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_DEFAULT, "%s %@: Looking for test method %@ %@", buf, 0x2Au);
  }

  v25 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
  v73 = [(WFHarnessTestRunDescriptor *)self testMethodNamebyRemovingSuffixes:v25];

  if (!outCount)
  {
LABEL_57:
    v29 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v45 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      v46 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
      *buf = 136315650;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = v45;
      v95 = 2112;
      v96 = v46;
      _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_FAULT, "%s Failed to find a test method name matching %@ %@ - check if XCTest calling convention has changed", buf, 0x20u);
    }

    goto LABEL_59;
  }

  v26 = 0;
  v70 = 0;
  while (1)
  {
    while (1)
    {
      v27 = v21[v26];
      Name = method_getName(v27);
      v29 = NSStringFromSelector(Name);
      if ([v29 hasPrefix:@"test"])
      {
        break;
      }

LABEL_19:

      if (++v26 >= outCount)
      {
        if ((v70 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    v30 = [(WFHarnessTestRunDescriptor *)self testMethodNamebyRemovingSuffixes:v29];
    if (([v30 isEqualToString:v73] & 1) == 0)
    {

      goto LABEL_19;
    }

    v71 = [MEMORY[0x1E696AEC0] stringWithCString:method_getTypeEncoding(v27) encoding:4];
    if (v71)
    {
      if ([(WFHarnessTestRunDescriptor *)v71 length])
      {
        break;
      }
    }

    v31 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315906;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = self;
      v95 = 2112;
      v96 = v32;
      v97 = 2112;
      *v98 = v29;
      _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_DEFAULT, "%s %@: Skipping considering %@ %@ - method has empty type encoding", buf, 0x2Au);
    }

    ++v26;
    v70 = 1;
    if (v26 >= outCount)
    {
      goto LABEL_56;
    }
  }

  v49 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    v94 = self;
    v95 = 2112;
    v96 = v71;
    _os_log_impl(&dword_1CA256000, v49, OS_LOG_TYPE_DEFAULT, "%s %@: types=%@", buf, 0x20u);
  }

  clsa = [(objc_class *)cls instanceMethodSignatureForSelector:Name];
  v50 = [(objc_class *)clsa numberOfArguments];
  v51 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    v94 = self;
    v95 = 2048;
    v96 = v50;
    _os_log_impl(&dword_1CA256000, v51, OS_LOG_TYPE_DEFAULT, "%s %@: methodSignature.numberOfArguments=%lu", buf, 0x20u);
  }

  v52 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:clsa];
  [v52 setSelector:Name];
  [v52 setTarget:v74];
  v69 = v52;
  v53 = [v29 containsString:@"WithCompletionHandler:"];
  if (v53)
  {
    if (v50 == 3)
    {
      v54 = [(WFHarnessTestRunDescriptor *)v71 containsString:@"NSError"];
      goto LABEL_82;
    }

LABEL_77:
    v54 = 0;
  }

  else
  {
    if (v50 != 3)
    {
      goto LABEL_77;
    }

    v55 = clsa;
    v56 = [(objc_class *)clsa getArgumentTypeAtIndex:2];
    v57 = v56;
    v54 = *v56 == 94 && v56[1] == 64;
    v58 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = self;
      v95 = 2112;
      v96 = v29;
      v97 = 1024;
      *v98 = v54;
      *&v98[4] = 2080;
      *&v98[6] = v57;
      *&v98[14] = 2080;
      *&v98[16] = "^@";
      _os_log_impl(&dword_1CA256000, v58, OS_LOG_TYPE_DEFAULT, "%s %@: %@ isThrowingTest %d type=%s errorTestArgumentType=%s", buf, 0x3Au);
    }
  }

LABEL_82:
  v59 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    *buf = 136316418;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    v94 = self;
    v95 = 2112;
    v96 = v60;
    v97 = 2112;
    *v98 = v29;
    *&v98[8] = 1024;
    *&v98[10] = v53;
    *&v98[14] = 1024;
    *&v98[16] = v54;
    _os_log_impl(&dword_1CA256000, v59, OS_LOG_TYPE_DEFAULT, "%s %@: Invoking test method %@ %@, isAsyncTest: %d, isThrowingTest: %d", buf, 0x36u);
  }

  if (!v53)
  {
    [v69 invoke];
    if (v54)
    {
      v84 = 0;
      [v69 getArgument:&v84 atIndex:2];
      if (a3)
      {
        *a3 = v84;
      }

      if (v84)
      {
        v62 = getWFTestHarnessLogObject();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
          *buf = 136316162;
          *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
          v93 = 2112;
          v94 = self;
          v95 = 2112;
          v96 = v63;
          v97 = 2112;
          *v98 = v29;
          *&v98[8] = 2112;
          *&v98[10] = v84;
          _os_log_impl(&dword_1CA256000, v62, OS_LOG_TYPE_ERROR, "%s %@: Got error running test method %@ %@ - %@", buf, 0x34u);
        }

        goto LABEL_104;
      }
    }

    goto LABEL_106;
  }

  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__20765;
  v88 = __Block_byref_object_dispose__20766;
  v89 = 0;
  v61 = dispatch_semaphore_create(0);
  if (v54)
  {
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_224;
    v80[3] = &unk_1E8376650;
    v80[4] = self;
    v81 = v29;
    v83 = &v84;
    v82 = v61;
    *buf = _Block_copy(v80);
    [v69 setArgument:buf atIndex:2];
    [v69 invoke];
  }

  else
  {
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_226;
    v77[3] = &unk_1E837C1E8;
    v77[4] = self;
    v78 = v29;
    v79 = v61;
    *buf = _Block_copy(v77);
    [v69 setArgument:buf atIndex:2];
    [v69 invoke];
  }

  v64 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v61, v64))
  {
    v65 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315906;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      v94 = self;
      v95 = 2112;
      v96 = v66;
      v97 = 2112;
      *v98 = v29;
      _os_log_impl(&dword_1CA256000, v65, OS_LOG_TYPE_DEFAULT, "%s %@: Timeout - giving up waiting on async test method %@ %@", buf, 0x2Au);
    }

    goto LABEL_103;
  }

  if (a3)
  {
    *a3 = v85[5];
  }

  if (!v85[5])
  {

    _Block_object_dispose(&v84, 8);
LABEL_106:

LABEL_56:
    v44 = [(WFHarnessTestRunDescriptor *)self testIdentifier];
    v6 = [v74 testCaseWithIdentifier:v44];

    [(WFHarnessTestRunDescriptor *)self setTestCase:v6];
    goto LABEL_60;
  }

  v65 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v67 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    v68 = v85[5];
    *buf = 136316162;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    v94 = self;
    v95 = 2112;
    v96 = v67;
    v97 = 2112;
    *v98 = v29;
    *&v98[8] = 2112;
    *&v98[10] = v68;
    _os_log_impl(&dword_1CA256000, v65, OS_LOG_TYPE_ERROR, "%s %@: Got error running async test method %@ %@ - %@", buf, 0x34u);
  }

LABEL_103:

  _Block_object_dispose(&v84, 8);
LABEL_104:

LABEL_59:
  v6 = 0;
LABEL_60:

  v72[2]();
LABEL_66:

LABEL_50:
LABEL_51:

LABEL_52:
  v42 = *MEMORY[0x1E69E9840];

  return v6;
}

void __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_224(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v6 xcTestClass];
    v8 = *(a1 + 40);
    v10 = 136316162;
    v11 = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s %@: Async test method completed %@ %@ ; error %@", &v10, 0x34u);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v9 = *MEMORY[0x1E69E9840];
}

intptr_t __52__WFHarnessTestRunDescriptor_loadTestCaseWithError___block_invoke_226(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 xcTestClass];
    v5 = *(a1 + 40);
    v8 = 136315906;
    v9 = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEFAULT, "%s %@: Test method completed %@ %@", &v8, 0x2Au);
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)testMethodNamebyRemovingSuffixes:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@"AndReturnError:"])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - objc_msgSend(@"AndReturnError:", "length")}];

    v3 = v4;
  }

  if ([v3 hasSuffix:@"WithCompletionHandler:"])
  {
    v5 = [v3 substringToIndex:{objc_msgSend(v3, "length") - objc_msgSend(@"WithCompletionHandler:", "length")}];

    v3 = v5;
  }

  if ([v3 hasSuffix:@"()"])
  {
    v6 = [v3 substringToIndex:{objc_msgSend(v3, "length") - objc_msgSend(@"()", "length")}];

    v3 = v6;
  }

  return v3;
}

- (WFHarnessTestRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testBundleURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xcTestClass"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xcTestMethodName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testIdentifier"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0 || v8 == 0)
  {
    v13 = 0;
  }

  else
  {
    v12 = [v5 url];
    self = [(WFHarnessTestRunDescriptor *)self initWithTestBundleURL:v12 xcTestClass:v6 xcTestMethodName:v7 testIdentifier:v8];

    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AE98];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
  v11 = [v6 initWithURL:v7];

  [v5 encodeObject:v11 forKey:@"testBundleURL"];
  v8 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
  [v5 encodeObject:v8 forKey:@"xcTestClass"];

  v9 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
  [v5 encodeObject:v9 forKey:@"xcTestMethodName"];

  v10 = [(WFHarnessTestRunDescriptor *)self testIdentifier];
  [v5 encodeObject:v10 forKey:@"testIdentifier"];
}

- (void)dealloc
{
  if ([(WFHarnessTestRunDescriptor *)self holdingSecurityScopedAccess])
  {
    v3 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
    [v3 stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = WFHarnessTestRunDescriptor;
  [(WFHarnessTestRunDescriptor *)&v4 dealloc];
}

- (WFHarnessTestRunDescriptor)initWithTestBundleURL:(id)a3 xcTestClass:(id)a4 xcTestMethodName:(id)a5 testIdentifier:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"testBundleURL"}];

    if (v13)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_14:
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"xcTestMethodName"}];

      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"xcTestClass"}];

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_15:
  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"testIdentifier"}];

LABEL_5:
  v33.receiver = self;
  v33.super_class = WFHarnessTestRunDescriptor;
  v16 = [(WFHarnessTestRunDescriptor *)&v33 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_testBundleURL, a3);
    v18 = [v13 copy];
    xcTestClass = v17->_xcTestClass;
    v17->_xcTestClass = v18;

    v20 = [v14 copy];
    xcTestMethodName = v17->_xcTestMethodName;
    v17->_xcTestMethodName = v20;

    v22 = [v15 copy];
    testIdentifier = v17->_testIdentifier;
    v17->_testIdentifier = v22;

    v24 = [v12 startAccessingSecurityScopedResource];
    v17->_holdingSecurityScopedAccess = v24;
    if (v24)
    {
      v25 = getWFTestHarnessLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[WFHarnessTestRunDescriptor initWithTestBundleURL:xcTestClass:xcTestMethodName:testIdentifier:]";
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Taken sandbox extension to %@", buf, 0x16u);
      }
    }

    v26 = v17;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)createWorkflowWithEnvironment:(int64_t)a3 database:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[WFHarnessTestRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
    v23 = 2112;
    v24 = self;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ - Loading testCase", buf, 0x16u);
  }

  v20 = 0;
  v11 = [(WFHarnessTestRunDescriptor *)self loadTestCaseWithError:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = [v11 runDescriptor];
    v14 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 name];
      *buf = 136315906;
      v22 = "[WFHarnessTestRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
      v23 = 2112;
      v24 = self;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ - Running workflow %@ %@", buf, 0x2Au);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99__WFHarnessTestRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke;
    v17[3] = &unk_1E8376698;
    v18 = v11;
    v19 = v9;
    [v13 createWorkflowWithEnvironment:a3 database:v8 completionHandler:v17];
  }

  else
  {
    (*(v9 + 2))(v9, 0, v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __99__WFHarnessTestRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 name];
  [v8 setName:v7];

  (*(*(a1 + 40) + 16))();
}

@end