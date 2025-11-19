@interface PPScoreInterpreterBytecode
+ (id)_bytecodeInstructionForOp:(void *)a3 unsignedIntegerArgument:(void *)a4 doubleArgument:(void *)a5 objectArgument:;
+ (id)_compileToBytecode:(void *)a3 handleDependency:(void *)a4 handleScoreInputsNeeded:(void *)a5 handleRetainedObject:;
+ (id)bytecodeFromAsset:(id)a3;
+ (id)bytecodeFromFactorName:(id)a3 namespaceName:(id)a4;
+ (id)scoreInterpreterParseRootFromAsset:(id)a3 scalarSubscoreCount:(unint64_t *)a4 arraySubscoreCount:(unint64_t *)a5 objectSubscoreCount:(unint64_t *)a6;
- (PPScoreInterpreterBytecode)initWithParseRoot:(id)a3 scalarSubscoreCount:(unint64_t)a4 arraySubscoreCount:(unint64_t)a5 objectSubscoreCount:(unint64_t)a6;
- (id).cxx_construct;
- (void)dealloc;
- (void)resolveSubscoreDependencies:(uint64_t)a3 resolved:(uint64_t *)a4 unresolved:(uint64_t)a5 resolvedOrdering:;
@end

@implementation PPScoreInterpreterBytecode

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)dealloc
{
  CFRelease(self->_scalarScoreInputsNeeded);
  CFRelease(self->_arrayScoreInputsNeeded);
  CFRelease(self->_objectScoreInputsNeeded);
  v3.receiver = self;
  v3.super_class = PPScoreInterpreterBytecode;
  [(PPScoreInterpreterBytecode *)&v3 dealloc];
}

- (PPScoreInterpreterBytecode)initWithParseRoot:(id)a3 scalarSubscoreCount:(unint64_t)a4 arraySubscoreCount:(unint64_t)a5 objectSubscoreCount:(unint64_t)a6
{
  v20[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13.receiver = self;
  v13.super_class = PPScoreInterpreterBytecode;
  if ([(PPScoreInterpreterBytecode *)&v13 init])
  {
    std::vector<std::unordered_set<PPSubscoreIdentifier>>::vector[abi:ne200100](&v18, a4);
    std::vector<std::unordered_set<PPSubscoreIdentifier>>::vector[abi:ne200100](&v19, a5);
    std::vector<std::unordered_set<PPSubscoreIdentifier>>::vector[abi:ne200100](v20, a6);
    v16 = 0uLL;
    *&v17 = 0;
    v14 = &v16;
    v15 = 0;
    operator new();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __47__PPScoreInterpreterBytecode__compileBytecode___block_invoke(uint64_t a1, unsigned __int8 a2, __int16 a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v3 = **(*(a1 + 32) + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(*(a1 + 32) + 32) + 8) - v3) >> 3) <= *(a1 + 48))
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = *(a1 + 40);
  v6 = (v3 + 24 * *(a1 + 48));
  v5 = *v6;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3) <= v4)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  return std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::__emplace_unique_key_args<PPSubscoreIdentifier,PPSubscoreIdentifier const&>((v5 + 40 * v4), v8);
}

void __47__PPScoreInterpreterBytecode__compileBytecode___block_invoke_2(uint64_t a1, uint64_t a2, CFIndex a3)
{
  switch(a2)
  {
    case 201:
      v4 = 32;
      break;
    case 401:
      v4 = 48;
      break;
    case 301:
      v4 = 40;
      break;
    default:
      __break(1u);
      return;
  }

  v5 = *(a1 + v4);
  Count = CFBitVectorGetCount(v5);
  if (Count <= a3 + 1)
  {
    v7 = a3 + 1;
  }

  else
  {
    v7 = Count;
  }

  CFBitVectorSetCount(v5, v7);

  CFBitVectorSetBitAtIndex(v5, a3, 1u);
}

uint64_t __47__PPScoreInterpreterBytecode__compileBytecode___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) count];
  [*(a1 + 32) addObject:v3];

  return v4;
}

+ (id)_compileToBytecode:(void *)a3 handleDependency:(void *)a4 handleScoreInputsNeeded:(void *)a5 handleRetainedObject:
{
  v9 = a2;
  v51 = a3;
  v10 = a4;
  v50 = a5;
  v11 = objc_opt_self();
  v12 = [v9 objectAtIndexedSubscript:0];
  v13 = [v12 intValue];

  if (v13 > 301)
  {
    if (v13 <= 400)
    {
      if (v13 == 302)
      {
        if (v51)
        {
          v14 = [v9 objectAtIndexedSubscript:1];
          v51[2](v51, 1, [v14 intValue]);
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v13 == 303)
      {
        goto LABEL_35;
      }

      if (v13 != 304)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v13 <= 402)
      {
        if (v13 != 401)
        {
          if (v51)
          {
            v14 = [v9 objectAtIndexedSubscript:1];
            v51[2](v51, 2, [v14 intValue]);
LABEL_34:
          }

LABEL_35:
          v15 = [v9 objectAtIndexedSubscript:1];
          v17 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v13 unsignedIntegerArgument:v15 doubleArgument:0 objectArgument:0];
          goto LABEL_36;
        }

LABEL_21:
        if (v10)
        {
          v14 = [v9 objectAtIndexedSubscript:1];
          (*(v10 + 2))(v10, v13, [v14 intValue]);
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v13 == 403)
      {
        goto LABEL_35;
      }

      if (v13 != 404)
      {
        goto LABEL_38;
      }
    }

    v15 = [v9 objectAtIndexedSubscript:1];
    if (!v50)
    {
      v17 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v13 unsignedIntegerArgument:0 doubleArgument:0 objectArgument:v15];
      goto LABEL_36;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50[2]()];
    v5 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v16 unsignedIntegerArgument:0 doubleArgument:0 objectArgument:?];
    goto LABEL_27;
  }

  if (v13 > 201)
  {
    if (v13 <= 203)
    {
      if (v13 != 202 || !v51)
      {
        goto LABEL_35;
      }

      v14 = [v9 objectAtIndexedSubscript:1];
      v51[2](v51, 0, [v14 intValue]);
      goto LABEL_34;
    }

    if (v13 == 204)
    {
      v15 = [v9 objectAtIndexedSubscript:1];
      v17 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:0 unsignedIntegerArgument:v15 doubleArgument:0 objectArgument:?];
LABEL_36:
      v5 = v17;
      goto LABEL_37;
    }

    if (v13 != 301)
    {
      goto LABEL_38;
    }

    goto LABEL_21;
  }

  switch(v13)
  {
    case -1:
      v5 = [MEMORY[0x277CBEA90] data];
      break;
    case 101:
      v15 = [v9 objectAtIndexedSubscript:2];
      v19 = [v15 count];
      v20 = [v9 objectAtIndexedSubscript:1];
      v21 = [v20 intValue];

      if (v21 > 16)
      {
        if ((v21 - 17) < 2)
        {
          v22 = v21;
          if ([v15 count])
          {
            goto LABEL_55;
          }

          v23 = [MEMORY[0x277CCA890] currentHandler];
          [v23 handleFailureInMethod:sel__compileToBytecode_handleDependency_handleScoreInputsNeeded_handleRetainedObject_ object:v11 file:@"PPScoreInterpreter.mm" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"argArray.count >= 1"}];
        }

        else
        {
          if (v21 != 19 && v21 != 21)
          {
            goto LABEL_55;
          }

          v22 = v21;
          if ([v15 count] > 1)
          {
            goto LABEL_55;
          }

          v23 = [MEMORY[0x277CCA890] currentHandler];
          [v23 handleFailureInMethod:sel__compileToBytecode_handleDependency_handleScoreInputsNeeded_handleRetainedObject_ object:v11 file:@"PPScoreInterpreter.mm" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"argArray.count >= 2"}];
        }

        v21 = v22;
LABEL_55:
        objc_opt_self();
        v29 = v21 + 1;
        v49 = 0x17C0013uLL >> v29;
        if (((0x17C0013uLL >> v29) & 1) == 0)
        {
          v30 = qword_232418600[v29];
          if ([v15 count] != v30)
          {
            v44 = [MEMORY[0x277CCA890] currentHandler];
            [v44 handleFailureInMethod:sel__compileToBytecode_handleDependency_handleScoreInputsNeeded_handleRetainedObject_ object:v11 file:@"PPScoreInterpreter.mm" lineNumber:708 description:{@"expected argArray.count (%tu) == expected count (%tu) for operator %hu", objc_msgSend(v15, "count"), v30, v21}];
          }
        }

        v47 = v21;
        v5 = objc_opt_new();
        if (v19)
        {
          for (i = 0; i != v19; ++i)
          {
            v32 = objc_autoreleasePoolPush();
            v33 = [v15 objectAtIndexedSubscript:i];
            v34 = [(PPScoreInterpreterBytecode *)v11 _compileToBytecode:v33 handleDependency:v51 handleScoreInputsNeeded:v10 handleRetainedObject:v50];
            [v5 appendData:v34];

            objc_autoreleasePoolPop(v32);
          }
        }

        if (v49)
        {
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
          v16 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v47 unsignedIntegerArgument:v35 doubleArgument:0 objectArgument:0];
        }

        else
        {
          v16 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v47 unsignedIntegerArgument:0 doubleArgument:0 objectArgument:0];
        }

        [v5 appendData:v16];
        goto LABEL_27;
      }

      switch(v21)
      {
        case -1:
          v17 = [MEMORY[0x277CBEA90] data];
          goto LABEL_36;
        case 10:
          if (v19 != 3)
          {
            v46 = [MEMORY[0x277CCA890] currentHandler];
            [v46 handleFailureInMethod:sel__compileToBytecode_handleDependency_handleScoreInputsNeeded_handleRetainedObject_ object:v11 file:@"PPScoreInterpreter.mm" lineNumber:632 description:{@"Invalid parameter not satisfying: %@", @"argCount == 3"}];
          }

          v36 = [v15 objectAtIndexedSubscript:1];
          v16 = [(PPScoreInterpreterBytecode *)v11 _compileToBytecode:v36 handleDependency:v51 handleScoreInputsNeeded:v10 handleRetainedObject:v50];

          v37 = [v15 objectAtIndexedSubscript:2];
          v38 = [(PPScoreInterpreterBytecode *)v11 _compileToBytecode:v37 handleDependency:v51 handleScoreInputsNeeded:v10 handleRetainedObject:v50];

          v48 = v38;
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "length")}];
          v28 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v39 unsignedIntegerArgument:0 doubleArgument:0 objectArgument:?];

          v40 = [v15 objectAtIndexedSubscript:0];
          v41 = [(PPScoreInterpreterBytecode *)v11 _compileToBytecode:v40 handleDependency:v51 handleScoreInputsNeeded:v10 handleRetainedObject:v50];

          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "length") + objc_msgSend(v16, "length")}];
          v43 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v42 unsignedIntegerArgument:0 doubleArgument:0 objectArgument:?];

          v5 = [v41 mutableCopy];
          [v5 appendData:v43];
          [v5 appendData:v16];
          [v5 appendData:v28];
          [v5 appendData:v48];

          break;
        case 14:
          if (v19 != 2)
          {
            v45 = [MEMORY[0x277CCA890] currentHandler];
            [v45 handleFailureInMethod:sel__compileToBytecode_handleDependency_handleScoreInputsNeeded_handleRetainedObject_ object:v11 file:@"PPScoreInterpreter.mm" lineNumber:669 description:{@"Invalid parameter not satisfying: %@", @"argCount == 2"}];
          }

          v24 = [v15 objectAtIndexedSubscript:1];
          v16 = [(PPScoreInterpreterBytecode *)v11 _compileToBytecode:v24 handleDependency:v51 handleScoreInputsNeeded:v10 handleRetainedObject:v50];

          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
          v26 = [(PPScoreInterpreterBytecode *)v11 _bytecodeInstructionForOp:v25 unsignedIntegerArgument:0 doubleArgument:0 objectArgument:?];

          v48 = v26;
          v27 = [v15 objectAtIndexedSubscript:0];
          v28 = [(PPScoreInterpreterBytecode *)v11 _compileToBytecode:v27 handleDependency:v51 handleScoreInputsNeeded:v10 handleRetainedObject:v50];

          v5 = [v28 mutableCopy];
          [v5 appendData:v26];
          [v5 appendData:v16];
          break;
        default:
          goto LABEL_55;
      }

LABEL_27:
LABEL_37:

      break;
    case 201:
      goto LABEL_21;
  }

LABEL_38:

  return v5;
}

- (void)resolveSubscoreDependencies:(uint64_t)a3 resolved:(uint64_t *)a4 unresolved:(uint64_t)a5 resolvedOrdering:
{
  v38 = a2;
  std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::__emplace_unique_key_args<PPSubscoreIdentifier,PPSubscoreIdentifier const&>(a4, &v38);
  v11 = **(a1 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 32) + 8) - v11) >> 3) <= a2)
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  v13 = (v11 + 24 * a2);
  v12 = *v13;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13[1] - *v13) >> 3) <= HIWORD(a2))
  {
    std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
  }

  for (i = *(v12 + 40 * HIWORD(a2) + 16); i; i = *i)
  {
    if (!std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::find<PPSubscoreIdentifier>(*a3, *(a3 + 8), i + 16))
    {
      if (std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::find<PPSubscoreIdentifier>(*a4, a4[1], i + 16))
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:sel_resolveSubscoreDependencies_resolved_unresolved_resolvedOrdering_ object:a1 file:@"PPScoreInterpreter.mm" lineNumber:371 description:@"Circular dependency detected in model subscore definitions"];
      }

      v5 = v5 & 0xFFFFFFFF00000000 | *(i + 4);
      [(PPScoreInterpreterBytecode *)a1 resolveSubscoreDependencies:v5 resolved:a3 unresolved:a4 resolvedOrdering:a5];
    }
  }

  if (std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::__emplace_unique_key_args<PPSubscoreIdentifier,PPSubscoreIdentifier const&>(a3, &v38))
  {
    v17 = *(a5 + 8);
    v16 = *(a5 + 16);
    if (v17 >= v16)
    {
      v19 = (v17 - *a5) >> 2;
      if ((v19 + 1) >> 62)
      {
        std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      v20 = v16 - *a5;
      v21 = v20 >> 1;
      if (v20 >> 1 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PPSubscoreIdentifier>>(v22);
      }

      v23 = (4 * v19);
      *v23 = a2;
      v18 = 4 * v19 + 4;
      v24 = *(a5 + 8) - *a5;
      v25 = v23 - v24;
      memcpy(v23 - v24, *a5, v24);
      v26 = *a5;
      *a5 = v25;
      *(a5 + 8) = v18;
      *(a5 + 16) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v17 = a2;
      v18 = (v17 + 1);
    }

    *(a5 + 8) = v18;
  }

  v28 = *a4;
  v27 = a4[1];
  v29 = std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::find<PPSubscoreIdentifier>(*a4, v27, &v38);
  if (v29)
  {
    v30 = v29[1];
    v31 = vcnt_s8(v27);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > 1uLL)
    {
      if (v30 >= v27)
      {
        v30 %= v27;
      }
    }

    else
    {
      v30 &= v27 - 1;
    }

    v32 = *(v28 + 8 * v30);
    do
    {
      v33 = v32;
      v32 = *v32;
    }

    while (v32 != v29);
    if (v33 == a4 + 2)
    {
      goto LABEL_42;
    }

    v34 = v33[1];
    if (v31.u32[0] > 1uLL)
    {
      if (v34 >= v27)
      {
        v34 %= v27;
      }
    }

    else
    {
      v34 &= v27 - 1;
    }

    if (v34 != v30)
    {
LABEL_42:
      if (!*v29)
      {
        goto LABEL_43;
      }

      v35 = *(*v29 + 8);
      if (v31.u32[0] > 1uLL)
      {
        if (v35 >= v27)
        {
          v35 %= v27;
        }
      }

      else
      {
        v35 &= v27 - 1;
      }

      if (v35 != v30)
      {
LABEL_43:
        *(v28 + 8 * v30) = 0;
      }
    }

    v36 = *v29;
    if (*v29)
    {
      v37 = *(v36 + 8);
      if (v31.u32[0] > 1uLL)
      {
        if (v37 >= v27)
        {
          v37 %= v27;
        }
      }

      else
      {
        v37 &= v27 - 1;
      }

      if (v37 != v30)
      {
        *(*a4 + 8 * v37) = v33;
        v36 = *v29;
      }
    }

    *v33 = v36;
    *v29 = 0;
    --a4[3];

    operator delete(v29);
  }
}

+ (id)_bytecodeInstructionForOp:(void *)a3 unsignedIntegerArgument:(void *)a4 doubleArgument:(void *)a5 objectArgument:
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_self();
  v12 = v8 != 0;
  if (v9)
  {
    ++v12;
  }

  if (v10)
  {
    ++v12;
  }

  if (v12 >= 2)
  {
    __assert_rtn("+[PPScoreInterpreterBytecode _bytecodeInstructionForOp:unsignedIntegerArgument:doubleArgument:objectArgument:]", "PPScoreInterpreter.mm", 487, "(nil != unsignedIntegerArgument ? 1 : 0) + (nil != doubleArgument ? 1 : 0) + (nil != objectArgument ? 1 : 0) <= 1");
  }

  v13 = v11;
  if (!v8 && !v9 && !v10)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v30 length:2];
LABEL_16:
    v17 = v14;
    goto LABEL_17;
  }

  if (v8)
  {
    v15 = [v8 unsignedIntValue];
    if (HIWORD(v15))
    {
      LOWORD(v33[0]) = -5;
      HIWORD(v33[0]) = a2;
      v33[1] = v15;
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v33 length:8];
    }

    else
    {
      LOWORD(v33[0]) = a2;
      HIWORD(v33[0]) = v15;
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v33 length:4];
    }

    goto LABEL_16;
  }

  if (v9)
  {
    LOWORD(v33[0]) = a2;
    [v9 doubleValue];
    *(v33 + 2) = v16;
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v33 length:10];
    goto LABEL_16;
  }

  v29 = 0;
  v20 = [MEMORY[0x277D425D8] dataWithPropertyList:v10 error:&v29];
  v21 = v29;
  if (v21)
  {
    v25 = MEMORY[0x277CBEAD8];
    v31 = @"error";
    v32 = v21;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v27 = [v25 exceptionWithName:@"PPScoreInterpreterError" reason:@"couldn't encode obj arg to plist" userInfo:v26];
    v28 = v27;

    objc_exception_throw(v27);
  }

  if (!v20)
  {
    __assert_rtn("+[PPScoreInterpreterBytecode _bytecodeInstructionForOp:unsignedIntegerArgument:doubleArgument:objectArgument:]", "PPScoreInterpreter.mm", 529, "lazyPlist");
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "length")}];
  v23 = [(PPScoreInterpreterBytecode *)v13 _bytecodeInstructionForOp:a2 unsignedIntegerArgument:v22 doubleArgument:0 objectArgument:0];

  v24 = [v23 mutableCopy];
  [v24 appendData:v20];
  v17 = [v24 copy];

LABEL_17:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)bytecodeFromFactorName:(id)a3 namespaceName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (+[PPScoreInterpreterBytecode bytecodeFromFactorName:namespaceName:]::_pasOnceToken2 != -1)
  {
    dispatch_once(&+[PPScoreInterpreterBytecode bytecodeFromFactorName:namespaceName:]::_pasOnceToken2, &__block_literal_global_2743);
  }

  v7 = +[PPScoreInterpreterBytecode bytecodeFromFactorName:namespaceName:]::_pasExprOnceResult;
  v8 = MEMORY[0x277D42648];
  v9 = [v5 copy];
  v10 = [v6 copy];
  v11 = [v8 tupleWithFirst:v9 second:v10];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2744;
  v25 = __Block_byref_object_dispose__2745;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__PPScoreInterpreterBytecode_bytecodeFromFactorName_namespaceName___block_invoke_96;
  v18 = &unk_2789720D8;
  v20 = &v21;
  v12 = v11;
  v19 = v12;
  [v7 runWithLockAcquired:&v15];
  v13 = [v22[5] result];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __67__PPScoreInterpreterBytecode_bytecodeFromFactorName_namespaceName___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_alloc(MEMORY[0x277D425E8]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__PPScoreInterpreterBytecode_bytecodeFromFactorName_namespaceName___block_invoke_2;
    v11[3] = &unk_2789720B0;
    v12 = *(a1 + 32);
    v8 = [v7 initWithBlock:v11];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [v3 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  }
}

id __67__PPScoreInterpreterBytecode_bytecodeFromFactorName_namespaceName___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = +[PPTrialWrapper sharedInstance];
  v3 = [*(a1 + 32) first];
  v4 = [*(a1 + 32) second];
  v12 = 0;
  v5 = [v2 lazyPlistForFactorName:v3 namespaceName:v4 error:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = [PPScoreInterpreterBytecode bytecodeFromAsset:v5];
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "Error loading asset %@: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __67__PPScoreInterpreterBytecode_bytecodeFromFactorName_namespaceName___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = +[PPScoreInterpreterBytecode bytecodeFromFactorName:namespaceName:]::_pasExprOnceResult;
  +[PPScoreInterpreterBytecode bytecodeFromFactorName:namespaceName:]::_pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

+ (id)bytecodeFromAsset:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v4 = [objc_opt_class() scoreInterpreterParseRootFromAsset:v3 scalarSubscoreCount:&v10 arraySubscoreCount:&v9 objectSubscoreCount:&v8];
  v5 = objc_alloc(objc_opt_class());
  v6 = [v5 initWithParseRoot:v4 scalarSubscoreCount:v10 arraySubscoreCount:v9 objectSubscoreCount:v8];

  return v6;
}

+ (id)scoreInterpreterParseRootFromAsset:(id)a3 scalarSubscoreCount:(unint64_t *)a4 arraySubscoreCount:(unint64_t *)a5 objectSubscoreCount:(unint64_t *)a6
{
  v9 = [a3 objectForKeyedSubscript:@"Scorer"];
  v10 = [v9 objectAtIndexedSubscript:0];
  *a4 = [v10 count];

  v11 = [v9 objectAtIndexedSubscript:1];
  *a5 = [v11 count];

  v12 = [v9 objectAtIndexedSubscript:2];
  *a6 = [v12 count];

  return v9;
}

@end