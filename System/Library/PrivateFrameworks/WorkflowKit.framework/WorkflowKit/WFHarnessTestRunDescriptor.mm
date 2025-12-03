@interface WFHarnessTestRunDescriptor
- (BOOL)shouldDisablePrivacyPrompts;
- (WFHarnessTestRunDescriptor)initWithCoder:(id)coder;
- (WFHarnessTestRunDescriptor)initWithTestBundleURL:(id)l xcTestClass:(id)class xcTestMethodName:(id)name testIdentifier:(id)identifier;
- (id)description;
- (id)loadTestCaseWithError:(id *)error;
- (id)testMethodNamebyRemovingSuffixes:(id)suffixes;
- (void)createWorkflowWithEnvironment:(int64_t)environment database:(id)database completionHandler:(id)handler;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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
  testCase = [(WFHarnessTestRunDescriptor *)self testCase];

  if (!testCase)
  {
    return 1;
  }

  testCase2 = [(WFHarnessTestRunDescriptor *)self testCase];
  interactions = [testCase2 interactions];
  v6 = [interactions bs_containsObjectPassingTest:&__block_literal_global_20740];

  return v6 ^ 1;
}

- (id)loadTestCaseWithError:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  testCase = [(WFHarnessTestRunDescriptor *)self testCase];

  if (testCase)
  {
    testCase2 = [(WFHarnessTestRunDescriptor *)self testCase];
    goto LABEL_52;
  }

  v7 = MEMORY[0x1E696AAE8];
  testBundleURL = [(WFHarnessTestRunDescriptor *)self testBundleURL];
  v9 = [v7 bundleWithURL:testBundleURL];

  if (!v9)
  {
    v33 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      testBundleURL2 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = testBundleURL2;
      _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_FAULT, "%s Could not load test bundle at URL %@", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
      *error = testCase2 = 0;
    }

    else
    {
      testCase2 = 0;
    }

    goto LABEL_51;
  }

  sharedSupportURL = [v9 sharedSupportURL];
  v11 = [sharedSupportURL URLByAppendingPathComponent:@"libActionHarnessTests.dylib"];

  wf_fileExists = [(WFHarnessTestRunDescriptor *)v11 wf_fileExists];
  v13 = getWFTestHarnessLogObject();
  v14 = v13;
  if ((wf_fileExists & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      testBundleURL3 = [(WFHarnessTestRunDescriptor *)self testBundleURL];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = testBundleURL3;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Could not find action harness test dylib in bundle %@", buf, 0x16u);
    }

    if (!error)
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
    selfCopy9 = v11;
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
      selfCopy9 = v11;
      _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Could not dlopen test dylib at path %@", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  xcTestClass = [(WFHarnessTestRunDescriptor *)self xcTestClass];
  cls = NSClassFromString(xcTestClass);

  if (!cls)
  {
    v40 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      xcTestClass2 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315650;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = xcTestClass2;
      v95 = 2112;
      v96 = v11;
      _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_FAULT, "%s Could not find test class %@ inside dylib at path %@", buf, 0x20u);
    }

    if (!error)
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
      xcTestClass3 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = xcTestClass3;
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_FAULT, "%s Test class %@ does not conform to WFHarnessTestCaseVendor", buf, 0x16u);
    }

    if (error)
    {
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
LABEL_48:
      testCase2 = 0;
      *error = v39;
      goto LABEL_50;
    }

LABEL_49:
    testCase2 = 0;
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
      xcTestClass4 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315394;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = xcTestClass4;
      _os_log_impl(&dword_1CA256000, v47, OS_LOG_TYPE_FAULT, "%s Unable to get method list from test class: %@", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = testCase2 = 0;
    }

    else
    {
      testCase2 = 0;
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
    xcTestClass5 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    xcTestMethodName = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
    *buf = 136315906;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    selfCopy9 = self;
    v95 = 2112;
    v96 = xcTestClass5;
    v97 = 2112;
    *v98 = xcTestMethodName;
    _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_DEFAULT, "%s %@: Looking for test method %@ %@", buf, 0x2Au);
  }

  xcTestMethodName2 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
  v73 = [(WFHarnessTestRunDescriptor *)self testMethodNamebyRemovingSuffixes:xcTestMethodName2];

  if (!outCount)
  {
LABEL_57:
    v29 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      xcTestClass6 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      xcTestMethodName3 = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
      *buf = 136315650;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = xcTestClass6;
      v95 = 2112;
      v96 = xcTestMethodName3;
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
      xcTestClass7 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315906;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = self;
      v95 = 2112;
      v96 = xcTestClass7;
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
    selfCopy9 = self;
    v95 = 2112;
    v96 = v71;
    _os_log_impl(&dword_1CA256000, v49, OS_LOG_TYPE_DEFAULT, "%s %@: types=%@", buf, 0x20u);
  }

  clsa = [(objc_class *)cls instanceMethodSignatureForSelector:Name];
  numberOfArguments = [(objc_class *)clsa numberOfArguments];
  v51 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    selfCopy9 = self;
    v95 = 2048;
    v96 = numberOfArguments;
    _os_log_impl(&dword_1CA256000, v51, OS_LOG_TYPE_DEFAULT, "%s %@: methodSignature.numberOfArguments=%lu", buf, 0x20u);
  }

  v52 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:clsa];
  [v52 setSelector:Name];
  [v52 setTarget:v74];
  v69 = v52;
  v53 = [v29 containsString:@"WithCompletionHandler:"];
  if (v53)
  {
    if (numberOfArguments == 3)
    {
      v54 = [(WFHarnessTestRunDescriptor *)v71 containsString:@"NSError"];
      goto LABEL_82;
    }

LABEL_77:
    v54 = 0;
  }

  else
  {
    if (numberOfArguments != 3)
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
      selfCopy9 = self;
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
    xcTestClass8 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    *buf = 136316418;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    selfCopy9 = self;
    v95 = 2112;
    v96 = xcTestClass8;
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
      if (error)
      {
        *error = v84;
      }

      if (v84)
      {
        v62 = getWFTestHarnessLogObject();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          xcTestClass9 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
          *buf = 136316162;
          *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
          v93 = 2112;
          selfCopy9 = self;
          v95 = 2112;
          v96 = xcTestClass9;
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
      xcTestClass10 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
      *buf = 136315906;
      *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      v93 = 2112;
      selfCopy9 = self;
      v95 = 2112;
      v96 = xcTestClass10;
      v97 = 2112;
      *v98 = v29;
      _os_log_impl(&dword_1CA256000, v65, OS_LOG_TYPE_DEFAULT, "%s %@: Timeout - giving up waiting on async test method %@ %@", buf, 0x2Au);
    }

    goto LABEL_103;
  }

  if (error)
  {
    *error = v85[5];
  }

  if (!v85[5])
  {

    _Block_object_dispose(&v84, 8);
LABEL_106:

LABEL_56:
    testIdentifier = [(WFHarnessTestRunDescriptor *)self testIdentifier];
    testCase2 = [v74 testCaseWithIdentifier:testIdentifier];

    [(WFHarnessTestRunDescriptor *)self setTestCase:testCase2];
    goto LABEL_60;
  }

  v65 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    xcTestClass11 = [(WFHarnessTestRunDescriptor *)self xcTestClass];
    v68 = v85[5];
    *buf = 136316162;
    *&buf[4] = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
    v93 = 2112;
    selfCopy9 = self;
    v95 = 2112;
    v96 = xcTestClass11;
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
  testCase2 = 0;
LABEL_60:

  v72[2]();
LABEL_66:

LABEL_50:
LABEL_51:

LABEL_52:
  v42 = *MEMORY[0x1E69E9840];

  return testCase2;
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

- (id)testMethodNamebyRemovingSuffixes:(id)suffixes
{
  suffixesCopy = suffixes;
  if ([suffixesCopy hasSuffix:@"AndReturnError:"])
  {
    v4 = [suffixesCopy substringToIndex:{objc_msgSend(suffixesCopy, "length") - objc_msgSend(@"AndReturnError:", "length")}];

    suffixesCopy = v4;
  }

  if ([suffixesCopy hasSuffix:@"WithCompletionHandler:"])
  {
    v5 = [suffixesCopy substringToIndex:{objc_msgSend(suffixesCopy, "length") - objc_msgSend(@"WithCompletionHandler:", "length")}];

    suffixesCopy = v5;
  }

  if ([suffixesCopy hasSuffix:@"()"])
  {
    v6 = [suffixesCopy substringToIndex:{objc_msgSend(suffixesCopy, "length") - objc_msgSend(@"()", "length")}];

    suffixesCopy = v6;
  }

  return suffixesCopy;
}

- (WFHarnessTestRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testBundleURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xcTestClass"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xcTestMethodName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testIdentifier"];

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
    selfCopy = 0;
  }

  else
  {
    v12 = [v5 url];
    self = [(WFHarnessTestRunDescriptor *)self initWithTestBundleURL:v12 xcTestClass:v6 xcTestMethodName:v7 testIdentifier:v8];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AE98];
  coderCopy = coder;
  v6 = [v4 alloc];
  testBundleURL = [(WFHarnessTestRunDescriptor *)self testBundleURL];
  v11 = [v6 initWithURL:testBundleURL];

  [coderCopy encodeObject:v11 forKey:@"testBundleURL"];
  xcTestClass = [(WFHarnessTestRunDescriptor *)self xcTestClass];
  [coderCopy encodeObject:xcTestClass forKey:@"xcTestClass"];

  xcTestMethodName = [(WFHarnessTestRunDescriptor *)self xcTestMethodName];
  [coderCopy encodeObject:xcTestMethodName forKey:@"xcTestMethodName"];

  testIdentifier = [(WFHarnessTestRunDescriptor *)self testIdentifier];
  [coderCopy encodeObject:testIdentifier forKey:@"testIdentifier"];
}

- (void)dealloc
{
  if ([(WFHarnessTestRunDescriptor *)self holdingSecurityScopedAccess])
  {
    testBundleURL = [(WFHarnessTestRunDescriptor *)self testBundleURL];
    [testBundleURL stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = WFHarnessTestRunDescriptor;
  [(WFHarnessTestRunDescriptor *)&v4 dealloc];
}

- (WFHarnessTestRunDescriptor)initWithTestBundleURL:(id)l xcTestClass:(id)class xcTestMethodName:(id)name testIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  classCopy = class;
  nameCopy = name;
  identifierCopy = identifier;
  if (lCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"testBundleURL"}];

    if (classCopy)
    {
LABEL_3:
      if (nameCopy)
      {
        goto LABEL_4;
      }

LABEL_14:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"xcTestMethodName"}];

      if (identifierCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"xcTestClass"}];

  if (!nameCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (identifierCopy)
  {
    goto LABEL_5;
  }

LABEL_15:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFHarnessTestRunDescriptor.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"testIdentifier"}];

LABEL_5:
  v33.receiver = self;
  v33.super_class = WFHarnessTestRunDescriptor;
  v16 = [(WFHarnessTestRunDescriptor *)&v33 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_testBundleURL, l);
    v18 = [classCopy copy];
    xcTestClass = v17->_xcTestClass;
    v17->_xcTestClass = v18;

    v20 = [nameCopy copy];
    xcTestMethodName = v17->_xcTestMethodName;
    v17->_xcTestMethodName = v20;

    v22 = [identifierCopy copy];
    testIdentifier = v17->_testIdentifier;
    v17->_testIdentifier = v22;

    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    v17->_holdingSecurityScopedAccess = startAccessingSecurityScopedResource;
    if (startAccessingSecurityScopedResource)
    {
      v25 = getWFTestHarnessLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[WFHarnessTestRunDescriptor initWithTestBundleURL:xcTestClass:xcTestMethodName:testIdentifier:]";
        v36 = 2112;
        v37 = lCopy;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Taken sandbox extension to %@", buf, 0x16u);
      }
    }

    v26 = v17;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)createWorkflowWithEnvironment:(int64_t)environment database:(id)database completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  handlerCopy = handler;
  v10 = getWFTestHarnessLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[WFHarnessTestRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
    v23 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ - Loading testCase", buf, 0x16u);
  }

  v20 = 0;
  v11 = [(WFHarnessTestRunDescriptor *)self loadTestCaseWithError:&v20];
  v12 = v20;
  if (v11)
  {
    runDescriptor = [v11 runDescriptor];
    v14 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [v11 name];
      *buf = 136315906;
      v22 = "[WFHarnessTestRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
      v23 = 2112;
      selfCopy2 = self;
      v25 = 2112;
      v26 = runDescriptor;
      v27 = 2112;
      v28 = name;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ - Running workflow %@ %@", buf, 0x2Au);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99__WFHarnessTestRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke;
    v17[3] = &unk_1E8376698;
    v18 = v11;
    v19 = handlerCopy;
    [runDescriptor createWorkflowWithEnvironment:environment database:databaseCopy completionHandler:v17];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
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