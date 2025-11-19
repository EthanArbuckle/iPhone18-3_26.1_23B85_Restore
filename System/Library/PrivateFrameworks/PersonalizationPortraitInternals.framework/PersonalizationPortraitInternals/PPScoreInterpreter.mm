@interface PPScoreInterpreter
+ (id)scoreInterpreterFromAsset:(id)a3;
+ (id)scoreInterpreterFromFactorName:(id)a3 namespaceName:(id)a4;
- (PPScoreInterpreter)initWithBytecode:(id)a3 scoreInputSet:(id)a4;
- (PPScoreInterpreter)initWithParseRoot:(id)a3 scalarSubscoreCount:(unint64_t)a4 arraySubscoreCount:(unint64_t)a5 objectSubscoreCount:(unint64_t)a6;
- (id)evaluateWithScoreInputs:(id)a3;
- (id)evaluateWithScoreInputs:(id)a3 previousSubscores:(id)a4;
- (void)_runBytecode:(void *)a3 context:;
- (void)_runOperator:(uint64_t)a1 arity:(unint64_t)a2 context:(void *)a3;
- (void)evaluateScoresWithContext:(uint64_t)a1;
- (void)evaluateWithPreviousStageSubscores:(id)a3 scoreInputInitializationBlock:(id)a4 scoreInputAssignmentBlock:(id)a5 outputBlock:(id)a6;
@end

@implementation PPScoreInterpreter

- (id)evaluateWithScoreInputs:(id)a3
{
  v3 = [(PPScoreInterpreter *)self evaluateWithScoreInputs:a3 previousSubscores:0];

  return v3;
}

- (id)evaluateWithScoreInputs:(id)a3 previousSubscores:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_bytecode->_bytecodeDataBySubscoreTypeAndIndex;
  v9 = [(NSArray *)v8 objectAtIndexedSubscript:0];
  v10 = [v9 count];

  v11 = [(NSArray *)v8 objectAtIndexedSubscript:1];
  v12 = [v11 count];

  v13 = [(NSArray *)v8 objectAtIndexedSubscript:2];
  v14 = [v13 count];

  v15 = [[PPScoreInterpreterCtx alloc] initWithScoreInputs:v6 previousSubscores:v7 scalarSubscoreCount:v10 arraySubscoreCount:v12 objectSubscoreCount:v14];
  [(PPScoreInterpreter *)self evaluateScoresWithContext:v15];
  if (*(v15[1] + 1) != *v15[1])
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((*(v15[1] + 1) - *v15[1]) >> 3);
      v22 = 134217984;
      v23 = v21;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "%lu items left on score interpreter stack", &v22, 0xCu);
    }
  }

  v17 = v15[4];
  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)evaluateScoresWithContext:(uint64_t)a1
{
  v39._subscores = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v5 = *(*(a1 + 8) + 8);
    v7 = *v5;
    v6 = v5[1];
    if (*v5 != v6)
    {
      *&v4 = 67109120;
      v29 = v4;
      do
      {
        v8 = *v7;
        v9 = *(v7 + 1);
        if (v8 == 2)
        {
          v23 = v3;
          v24 = [*(*(a1 + 8) + 16) objectAtIndexedSubscript:2];
          v25 = [v24 objectAtIndexedSubscript:v9];
          [(PPScoreInterpreter *)a1 _runBytecode:v25 context:v23];

          memset(&v39, 0, 24);
          pop(&v39, v23);
          v26 = PPScoreInterpreterValue::getObject(&v39);
          [v3[4] setObject:v26 forIndex:v9];
          PPScoreInterpreterValue::PPScoreInterpreterValue(v30, v26);

          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v39);
          v16 = v30;
        }

        else if (v8 == 1)
        {
          v17 = v3;
          v18 = [*(*(a1 + 8) + 16) objectAtIndexedSubscript:1];
          v19 = [v18 objectAtIndexedSubscript:v9];
          [(PPScoreInterpreter *)a1 _runBytecode:v19 context:v17];

          memset(&v39, 0, 24);
          pop(&v39, v17);
          *buf = 0;
          *&buf[8] = 0;
          PPScoreInterpreterValue::getFloatVector(&v39, buf);
          v20 = v3[4];
          v22 = *buf;
          v21 = *&buf[8];
          v36 = *buf;
          v37 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }

          [v20 setArraySharedPtr:&v36 forIndex:{v9, v29}];
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v31 = v22;
            v32 = v21;
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v33 = 1;
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          else
          {
            v31 = v22;
            v32 = 0;
            v33 = 1;
          }

          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v39);

          v16 = &v31;
        }

        else
        {
          if (*v7)
          {
            v27 = pp_default_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              v39.super.isa = __PAIR64__(v8, v29);
              _os_log_fault_impl(&dword_23224A000, v27, OS_LOG_TYPE_FAULT, "Invalid subscoreType of %d", &v39, 8u);
            }

            goto LABEL_25;
          }

          v10 = v3;
          v11 = [*(*(a1 + 8) + 16) objectAtIndexedSubscript:0];
          v12 = [v11 objectAtIndexedSubscript:v9];
          [(PPScoreInterpreter *)a1 _runBytecode:v12 context:v10];

          memset(&v39, 0, 24);
          pop(&v39, v10);
          Double = PPScoreInterpreterValue::getDouble(&v39);
          v14 = Double;
          if ((*&Double & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v15 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              *&buf[4] = v9;
              *&buf[12] = 2048;
              *&buf[14] = v14;
              _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_INFO, "Score for variable %tu returned Nan or Inf: %f", buf, 0x16u);
            }
          }

          *&Double = v14;
          [v3[4] setScalarValue:v9 forIndex:{Double, v29}];
          v34 = v14;
          v35 = 0;
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v39);

          v16 = &v34;
        }

        PPScoreInterpreterValue::~PPScoreInterpreterValue(v16);
LABEL_25:
        v7 += 4;
      }

      while (v7 != v6);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_runBytecode:(void *)a3 context:
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 bytes];
  v8 = [v5 length];
  __dst = 0;
  if (v8 >= 2)
  {
    v10 = v7 + v8;
    v11 = v7 + 1;
    v12 = 1;
    do
    {
      v13 = *v7;
      if (*v7 > 0x190u)
      {
        if (*v7 <= 0xFFFAu)
        {
          if (*v7 > 0x192u)
          {
            if (v13 != 403)
            {
              if (v13 != 404)
              {
                goto LABEL_76;
              }

              goto LABEL_36;
            }

            HIDWORD(__dst) = 0;
            v14 = &v11[v12];
            if (&v11[v12] > v10)
            {
              break;
            }

            memcpy(&__dst + 4, v11, v12 * 2);
            v28 = [v6[3] objectForIndex:HIDWORD(__dst)];
            PPScoreInterpreterValue::PPScoreInterpreterValue(v49, v28);
            push(v6, v49);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v49);
          }

          else if (v13 == 401)
          {
            HIDWORD(__dst) = 0;
            v14 = &v11[v12];
            if (&v11[v12] > v10)
            {
              break;
            }

            memcpy(&__dst + 4, v11, v12 * 2);
            v27 = [v6[2] objectForIndex:HIDWORD(__dst)];
            PPScoreInterpreterValue::PPScoreInterpreterValue(v51, v27);
            push(v6, v51);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v51);
          }

          else
          {
            if (v13 != 402)
            {
              goto LABEL_76;
            }

            HIDWORD(__dst) = 0;
            v14 = &v11[v12];
            if (&v11[v12] > v10)
            {
              break;
            }

            memcpy(&__dst + 4, v11, v12 * 2);
            v17 = [v6[4] objectForIndex:HIDWORD(__dst)];
            PPScoreInterpreterValue::PPScoreInterpreterValue(v50, v17);
            push(v6, v50);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v50);
          }
        }

        else
        {
          if (*v7 > 0xFFFCu)
          {
            if (v13 != 65533)
            {
              if (v13 != 65534)
              {
                goto LABEL_95;
              }

              pop(&v79, v6);
              Double = PPScoreInterpreterValue::getDouble(&v79);
              PPScoreInterpreterValue::~PPScoreInterpreterValue(&v79);
              v30 = Double != -31338.0;
              if (Double == -31338.0)
              {
                v31 = -31337.0;
              }

              else
              {
                v31 = Double;
              }

              if ((*&Double & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v30 = 0;
              }

              if (v31 != -31337.0 && !v30)
              {
                *v77 = v31;
                v78 = 0;
                push(v6, v77);
                v32 = v77;
                goto LABEL_94;
              }

LABEL_101:
              v11 = (v11 + v12 * 2);
              if (v11 > v10)
              {
                break;
              }

              goto LABEL_102;
            }

            memset(&v79, 0, 24);
            pop(&v79, v6);
            if (LOBYTE(v79._scoreInputs))
            {
              if (LOBYTE(v79._scoreInputs) != 2)
              {
                v44 = pp_score_interpreter_log_handle();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  scoreInputs_low = LOBYTE(v79._scoreInputs);
                  _os_log_error_impl(&dword_23224A000, v44, OS_LOG_TYPE_ERROR, "Attempted to compute IfThenElse with an invalid value type of %d in the if condition", buf, 8u);
                }

                PPScoreInterpreterValue::~PPScoreInterpreterValue(&v79);
                goto LABEL_101;
              }

              v39 = PPScoreInterpreterValue::getObject(&v79);
              v40 = v39 == 0;

              PPScoreInterpreterValue::~PPScoreInterpreterValue(&v79);
              if (v40)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v43 = PPScoreInterpreterValue::getDouble(&v79);
              if (v43 == -31337.0)
              {
                v32 = &v79;
LABEL_94:
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v32);
              }

              else
              {
                v45 = (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
                v46 = ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
                if (v43 >= 0.0)
                {
                  v46 = 0;
                  v45 = 0;
                }

                if ((*&v43 & 0x7FFFFFFFFFFFFFFFLL) == 0)
                {
                  v45 = 1;
                }

                v47 = (*&v43 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v45;
                if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
                {
                  v47 = 1;
                }

                v48 = v47 | v46;
                PPScoreInterpreterValue::~PPScoreInterpreterValue(&v79);
                if ((v48 & 1) == 0)
                {
                  goto LABEL_101;
                }
              }
            }

LABEL_95:
            HIDWORD(__dst) = 0;
            if (&v11[v12] > v10)
            {
              break;
            }

            memcpy(&__dst + 4, v11, v12 * 2);
            v11 = (v11 + v12 * 2 + HIDWORD(__dst));
            if (v11 >= v10)
            {
              break;
            }

            goto LABEL_102;
          }

          if (v13 == 65531)
          {
            if (v12 != 1)
            {
              __assert_rtn("[PPScoreInterpreter _runBytecode:context:]", "PPScoreInterpreter.mm", 2025, "nextUIntArgumentSize == sizeof(uint16_t)");
            }

            v12 = 2;
            goto LABEL_103;
          }

          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          v26 = [*(*(a1 + 8) + 24) objectAtIndexedSubscript:HIDWORD(__dst)];
          PPScoreInterpreterValue::PPScoreInterpreterValue(&v79._previousSubscores, v26);
          push(v6, &v79._previousSubscores);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v79._previousSubscores);
        }

        goto LABEL_90;
      }

      if (*v7 > 0x12Cu)
      {
        if (*v7 > 0x12Eu)
        {
          if (v13 != 303)
          {
            if (v13 != 304)
            {
LABEL_76:
              objc_opt_self();
              if ((0xBE0009uLL >> v13))
              {
                HIDWORD(__dst) = 0;
                v42 = &v11[v12];
                if (&v11[v12] > v10)
                {
                  break;
                }

                memcpy(&__dst + 4, v11, v12 * 2);
                v41 = HIDWORD(__dst);
                v12 = 1;
                v11 = v42;
              }

              else
              {
                v41 = qword_232418600[v13 + 1];
              }

              [PPScoreInterpreter _runOperator:v13 arity:v41 context:v6];
              goto LABEL_103;
            }

LABEL_36:
            LODWORD(__dst) = 0;
            v19 = &v11[v12];
            if (&v11[v12] > v10)
            {
              break;
            }

            memcpy(&__dst, v11, v12 * 2);
            v20 = objc_alloc(MEMORY[0x277CBEB28]);
            v21 = __dst;
            v22 = [v20 initWithLength:__dst];
            v23 = v22;
            v11 = &v19[v21];
            if (&v19[v21] > v10)
            {

              break;
            }

            v24 = v22;
            memcpy([v23 mutableBytes], v19, v21);
            v53[0] = 0;
            v25 = [MEMORY[0x277D425D8] propertyListWithData:v23 error:v53];

            if (!v25)
            {
              __assert_rtn("[PPScoreInterpreter _runBytecode:context:]", "PPScoreInterpreter.mm", 2154, "plpObject");
            }

            PPScoreInterpreterValue::PPScoreInterpreterValue(v52, v25);
            push(v6, v52);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v52);

LABEL_102:
            v12 = 1;
            goto LABEL_103;
          }

          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          v37 = v6[3];
          if (!v37)
          {
            operator new();
          }

          [v37 arraySharedPtrForIndex:HIDWORD(__dst)];
          v55[0] = v53[1];
          v55[1] = v54;
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v56 = 1;
          push(v6, v55);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v55);
          v38 = v54;
          if (!v54)
          {
            goto LABEL_90;
          }
        }

        else if (v13 == 301)
        {
          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          v34 = v6[2];
          if (v34)
          {
            [v34 arraySharedPtrForIndex:HIDWORD(__dst)];
            v64 = v62;
            v65 = v63;
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = 0;
          }

          v66 = 1;
          push(v6, &v64);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v64);
          v38 = v63;
          if (!v63)
          {
            goto LABEL_90;
          }
        }

        else
        {
          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          v18 = v6[4];
          if (v18)
          {
            [v18 arraySharedPtrForIndex:HIDWORD(__dst)];
            v59 = v57;
            v60 = v58;
            if (v58)
            {
              atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
          }

          v61 = 1;
          push(v6, &v59);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(&v59);
          v38 = v58;
          if (!v58)
          {
            goto LABEL_90;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      else
      {
        if (*v7 > 0xCAu)
        {
          if (v13 != 203)
          {
            if (v13 != 204)
            {
              goto LABEL_76;
            }

            v14 = v7 + 5;
            if ((v7 + 5) > v10)
            {
              break;
            }

            v73[0] = *v11;
            v74 = 0;
            push(v6, v73);
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v73);
            goto LABEL_91;
          }

          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          v35 = v6[3];
          if (v35)
          {
            [v35 scalarValueForIndex:HIDWORD(__dst)];
            v67[0] = v36;
            v68 = 0;
            push(v6, v67);
            v16 = v67;
          }

          else
          {
            v69[0] = 0xC0DE9A8000000000;
            v70 = 0;
            push(v6, v69);
            v16 = v69;
          }
        }

        else if (v13 == 201)
        {
          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          [v6[2] scalarValueForIndex:HIDWORD(__dst)];
          v75[0] = v33;
          v76 = 0;
          push(v6, v75);
          v16 = v75;
        }

        else
        {
          if (v13 != 202)
          {
            goto LABEL_76;
          }

          HIDWORD(__dst) = 0;
          v14 = &v11[v12];
          if (&v11[v12] > v10)
          {
            break;
          }

          memcpy(&__dst + 4, v11, v12 * 2);
          [v6[4] scalarValueForIndex:HIDWORD(__dst)];
          v71[0] = v15;
          v72 = 0;
          push(v6, v71);
          v16 = v71;
        }

        PPScoreInterpreterValue::~PPScoreInterpreterValue(v16);
      }

LABEL_90:
      v12 = 1;
LABEL_91:
      v11 = v14;
LABEL_103:
      v7 = v11;
      __dst = 0;
      ++v11;
    }

    while (v11 <= v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_runOperator:(uint64_t)a1 arity:(unint64_t)a2 context:(void *)a3
{
  v648 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v8 = 1;
  switch(a1)
  {
    case 0:
      if (shouldReturnUndefined(v5, a2))
      {
        drop(v6, a2);
        v640[0] = 0xC0DE9A4000000000;
        v641 = 0;
        push(v6, v640);
        v9 = v640;
        goto LABEL_558;
      }

      if (!a2)
      {
        v243 = 0.0;
LABEL_407:
        *v636 = v243;
        v637 = 0;
        push(v6, v636);
        v9 = v636;
        goto LABEL_558;
      }

      v242 = 0;
      v243 = 0.0;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (!buf[16])
        {
          Double = PPScoreInterpreterValue::getDouble(buf);
          if (Double == -31338.0)
          {
            v246 = 0.0;
          }

          else
          {
            v246 = Double;
          }

          goto LABEL_345;
        }

        if (buf[16] == 1)
        {
          v646 = 0uLL;
          PPScoreInterpreterValue::getFloatVector(buf, &v646);
          v244 = *v646;
          v245 = *v646;
          v246 = 0.0;
          while (v245 != *(v646 + 8))
          {
            v247 = *v245++;
            v246 = v246 + v247;
          }

          if (*(&v646 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v646 + 1));
          }

LABEL_345:
          v243 = v243 + v246;
          PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
          if (++v242 == a2)
          {
            goto LABEL_407;
          }

          continue;
        }

        break;
      }

      v351 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v646) = 67109120;
        DWORD1(v646) = buf[16];
        _os_log_error_impl(&dword_23224A000, v351, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorSum", &v646, 8u);
      }

      v638[0] = 0xC0DE9A4000000000;
      v639 = 0;
      push(v6, v638);
      v308 = v638;
      goto LABEL_546;
    case 1:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v634[0] = 0xC0DE9A4000000000;
        v635 = 0;
        push(v6, v634);
        v9 = v634;
      }

      else
      {
        v186 = *v6->_stack.__ptr_;
        v187 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v186) >> 3);
        v188 = v187 - a2;
        if (v187 <= v187 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v189 = PPScoreInterpreterValue::getDouble((v186 + 24 * v188));
        v190 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v190) >> 3) <= v188 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v191 = v189;
        v192 = PPScoreInterpreterValue::getDouble((v190 + 24 * (v188 + 1)));
        drop(v6, a2);
        if (v191 == -31338.0)
        {
          v193 = 0.0;
        }

        else
        {
          v193 = v191;
        }

        if (v192 == -31338.0)
        {
          v194 = 0.0;
        }

        else
        {
          v194 = v192;
        }

        v632[0] = v193 - v194;
        v633 = 0;
        push(v6, v632);
        v9 = v632;
      }

      goto LABEL_558;
    case 2:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v630[0] = 0xC0DE9A4000000000;
        v631 = 0;
        push(v6, v630);
        v9 = v630;
        goto LABEL_558;
      }

      ptr = v6->_stack.__ptr_;
      v222 = 0xAAAAAAAAAAAAAAABLL * ((ptr[1] - *ptr) >> 3) - a2;
      memset(buf, 0, 24);
      v224 = ptr;
      v223 = *ptr;
      if (0xAAAAAAAAAAAAAAABLL * ((v224[1] - v223) >> 3) <= v222)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v223 + 24 * v222));
      drop(v6, a2);
      if (buf[16])
      {
        if (buf[16] == 1)
        {
          PPScoreInterpreterValue::getFloatVector(buf, &v645);
          v647 = 0;
          v646 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v646, *v645, *(v645 + 8), (*(v645 + 8) - *v645) >> 2);
          if (*(&v645 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
          }

          v225 = *(&v646 + 1);
          if (v646 != *(&v646 + 1))
          {
            v226 = v646;
            do
            {
              *v226 = -*v226;
              ++v226;
            }

            while (v226 != v225);
          }

          std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>();
        }

        v313 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 67109120;
          DWORD1(v646) = buf[16];
          _os_log_error_impl(&dword_23224A000, v313, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorNegate", &v646, 8u);
        }

        v626[0] = 0xC0DE9A4000000000;
        v627 = 0;
        push(v6, v626);
        v308 = v626;
      }

      else
      {
        v310 = PPScoreInterpreterValue::getDouble(buf);
        v311 = -v310;
        v306 = v310 == -31338.0;
        v312 = -0.0;
        if (!v306)
        {
          v312 = v311;
        }

        *v628 = v312;
        v629 = 0;
        push(v6, v628);
        v308 = v628;
      }

      goto LABEL_546;
    case 3:
      if (shouldReturnUndefined(v5, a2))
      {
        drop(v6, a2);
        v624[0] = 0xC0DE9A4000000000;
        v625 = 0;
        push(v6, v624);
        v9 = v624;
        goto LABEL_558;
      }

      if (!a2)
      {
        v153 = 1.0;
LABEL_401:
        *v620 = v153;
        v621 = 0;
        push(v6, v620);
        v9 = v620;
        goto LABEL_558;
      }

      v152 = 0;
      v153 = 1.0;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (!buf[16])
        {
          v157 = PPScoreInterpreterValue::getDouble(buf);
          if (v157 == -31338.0)
          {
            v155 = 1.0;
          }

          else
          {
            v155 = v157;
          }

          goto LABEL_214;
        }

        if (buf[16] == 1)
        {
          v646 = 0uLL;
          PPScoreInterpreterValue::getFloatVector(buf, &v646);
          v154 = *v646;
          v155 = 1.0;
          while (v154 != *(v646 + 8))
          {
            v156 = *v154++;
            v155 = v155 * v156;
          }

          if (*(&v646 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v646 + 1));
          }

LABEL_214:
          v153 = v153 * v155;
          PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
          if (++v152 == a2)
          {
            goto LABEL_401;
          }

          continue;
        }

        break;
      }

      v350 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v646) = 67109120;
        DWORD1(v646) = buf[16];
        _os_log_error_impl(&dword_23224A000, v350, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorProduct", &v646, 8u);
      }

      v622[0] = 0xC0DE9A4000000000;
      v623 = 0;
      push(v6, v622);
      v308 = v622;
LABEL_546:
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v308);
      v9 = buf;
      goto LABEL_558;
    case 4:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v618[0] = 0xC0DE9A4000000000;
        v619 = 0;
        push(v6, v618);
        v9 = v618;
      }

      else
      {
        v210 = *v6->_stack.__ptr_;
        v211 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v210) >> 3);
        v212 = v211 - a2;
        if (v211 <= v211 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v213 = PPScoreInterpreterValue::getDouble((v210 + 24 * v212));
        v214 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v214) >> 3) <= v212 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v215 = v213;
        v216 = PPScoreInterpreterValue::getDouble((v214 + 24 * (v212 + 1)));
        drop(v6, a2);
        if (v215 == -31338.0)
        {
          v217 = 0.0;
        }

        else
        {
          v217 = v215;
        }

        if (v216 == -31338.0)
        {
          v218 = 0.0;
        }

        else
        {
          v218 = v216;
        }

        v219 = v217 < v218;
        v220 = 1.0;
        if (v219)
        {
          v220 = 0.0;
        }

        *v616 = v220;
        v617 = 0;
        push(v6, v616);
        v9 = v616;
      }

      goto LABEL_558;
    case 5:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v614[0] = 0xC0DE9A4000000000;
        v615 = 0;
        push(v6, v614);
        v9 = v614;
        goto LABEL_558;
      }

      v231 = *v6->_stack.__ptr_;
      v232 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v231) >> 3);
      v233 = v232 - a2;
      if (v232 <= v232 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v234 = PPScoreInterpreterValue::getDouble((v231 + 24 * v233));
      v235 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v235) >> 3) <= v233 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v236 = v234;
      v237 = PPScoreInterpreterValue::getDouble((v235 + 24 * (v233 + 1)));
      drop(v6, a2);
      if (v236 <= 0.0)
      {
        v400 = [MEMORY[0x277CCA890] currentHandler];
        v401 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [v400 handleFailureInFunction:v401 file:@"PPScoreInterpreter.mm" lineNumber:1206 description:{@"Invalid parameter not satisfying: %@", @"value > 0"}];
      }

      if (v237 <= 0.0)
      {
        v402 = [MEMORY[0x277CCA890] currentHandler];
        v403 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [v402 handleFailureInFunction:v403 file:@"PPScoreInterpreter.mm" lineNumber:1207 description:{@"Invalid parameter not satisfying: %@", @"base > 0"}];
      }

      if (v236 <= 0.0)
      {
        v238 = pp_score_interpreter_log_handle();
        if (!os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_396;
        }

        *buf = 134217984;
        *&buf[4] = v236;
        v239 = "Attempted to compute log10 of non-positive number %f (value arg of Logarithm operator) --  output is NaN";
        v240 = v238;
        v241 = 12;
        goto LABEL_611;
      }

      if (v237 > 0.0)
      {
        goto LABEL_397;
      }

      v238 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v236;
        *&buf[12] = 2048;
        *&buf[14] = v237;
        v239 = "Attempted to compute log10 of number %f with negative base of %f -- output is NaN";
        v240 = v238;
        v241 = 22;
LABEL_611:
        _os_log_error_impl(&dword_23224A000, v240, OS_LOG_TYPE_ERROR, v239, buf, v241);
      }

LABEL_396:

LABEL_397:
      v298 = log2(v236);
      v612[0] = v298 / log2(v237);
      v613 = 0;
      push(v6, v612);
      v9 = v612;
      goto LABEL_558;
    case 6:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v610[0] = 0xC0DE9A4000000000;
        v611 = 0;
        push(v6, v610);
        v9 = v610;
      }

      else
      {
        v119 = *v6->_stack.__ptr_;
        v120 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v119) >> 3);
        v121 = v120 - a2;
        if (v120 <= v120 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v122 = PPScoreInterpreterValue::getDouble((v119 + 24 * v121));
        v123 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v123) >> 3) <= v121 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v124 = v122;
        v125 = PPScoreInterpreterValue::getDouble((v123 + 24 * (v121 + 1)));
        drop(v6, a2);
        if (v125 == 0.0)
        {
          v397 = [MEMORY[0x277CCA890] currentHandler];
          v398 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v397 handleFailureInFunction:v398 file:@"PPScoreInterpreter.mm" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"denominator != 0"}];

          v399 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v124;
            *&buf[12] = 2048;
            *&buf[14] = v125;
            _os_log_error_impl(&dword_23224A000, v399, OS_LOG_TYPE_ERROR, "Divide by zero error (%f / %f) -- setting output to PPScoreNotSet", buf, 0x16u);
          }

          v608[0] = 0xC0DE9A4000000000;
          v609 = 0;
          push(v6, v608);
          v9 = v608;
        }

        else
        {
          v606[0] = v124 / v125;
          v607 = 0;
          push(v6, v606);
          v9 = v606;
        }
      }

      goto LABEL_558;
    case 7:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v604[0] = 0xC0DE9A4000000000;
        v605 = 0;
        push(v6, v604);
        v9 = v604;
      }

      else
      {
        v227 = *v6->_stack.__ptr_;
        v228 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v227) >> 3);
        if (v228 <= v228 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v229 = PPScoreInterpreterValue::getDouble((v227 + 24 * (v228 - a2)));
        drop(v6, a2);
        if (v229 <= 0.0)
        {
          v393 = [MEMORY[0x277CCA890] currentHandler];
          v394 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v393 handleFailureInFunction:v394 file:@"PPScoreInterpreter.mm" lineNumber:1228 description:{@"Invalid parameter not satisfying: %@", @"value > 0"}];

          v230 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v229;
            _os_log_error_impl(&dword_23224A000, v230, OS_LOG_TYPE_ERROR, "Attempted to compute NatLog of non-positive number %f -- output is NaN", buf, 0xCu);
          }
        }

        v602[0] = log(v229);
        v603 = 0;
        push(v6, v602);
        v9 = v602;
      }

      goto LABEL_558;
    case 8:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v600[0] = 0xC0DE9A4000000000;
        v601 = 0;
        push(v6, v600);
        v9 = v600;
      }

      else
      {
        v126 = *v6->_stack.__ptr_;
        v127 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v126) >> 3);
        if (v127 <= v127 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v128 = PPScoreInterpreterValue::getDouble((v126 + 24 * (v127 - a2)));
        drop(v6, a2);
        v129 = 0.0;
        if (v128 != -31338.0)
        {
          v129 = v128;
        }

        v598[0] = exp(v129);
        v599 = 0;
        push(v6, v598);
        v9 = v598;
      }

      goto LABEL_558;
    case 9:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v596[0] = 0xC0DE9A4000000000;
        v597 = 0;
        push(v6, v596);
        v9 = v596;
      }

      else
      {
        v84 = *v6->_stack.__ptr_;
        v85 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v84) >> 3);
        v86 = v85 - a2;
        if (v85 <= v85 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v87 = PPScoreInterpreterValue::getDouble((v84 + 24 * v86));
        v88 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v88) >> 3) <= v86 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v89 = v87;
        v90 = PPScoreInterpreterValue::getDouble((v88 + 24 * (v86 + 1)));
        drop(v6, a2);
        if (v89 == -31338.0)
        {
          v89 = 0.0;
        }

        if (v90 == -31338.0)
        {
          v90 = 0.0;
        }

        if (v89 <= 0.0 && (v89 != 0.0 || v90 < 0.0) && v90 != v90)
        {
          v404 = [MEMORY[0x277CCA890] currentHandler];
          v405 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v404 handleFailureInFunction:v405 file:@"PPScoreInterpreter.mm" lineNumber:1247 description:{@"Attempted to compute pow(%f, %f)", *&v89, *&v90}];

          v406 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v89;
            *&buf[12] = 2048;
            *&buf[14] = v90;
            _os_log_error_impl(&dword_23224A000, v406, OS_LOG_TYPE_ERROR, "Attempted to compute pow(%f,%f) -- output is NaN", buf, 0x16u);
          }
        }

        v594[0] = pow(v89, v90);
        v595 = 0;
        push(v6, v594);
        v9 = v594;
      }

      goto LABEL_558;
    case 11:
      if (shouldReturnUndefined(v5, 3uLL))
      {
        drop(v6, a2);
        v592[0] = 0xC0DE9A4000000000;
        v593 = 0;
        push(v6, v592);
        v9 = v592;
        goto LABEL_558;
      }

      v108 = *v6->_stack.__ptr_;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v108) >> 3);
      v110 = v109 - a2;
      if (v109 <= v109 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v111 = PPScoreInterpreterValue::getDouble((v108 + 24 * v110));
      v112 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v112) >> 3) <= v110 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v113 = v111;
      v114 = PPScoreInterpreterValue::getDouble((v112 + 24 * (v110 + 1)));
      v115 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v115) >> 3) <= v110 + 2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v116 = v114;
      v117 = PPScoreInterpreterValue::getDouble((v115 + 24 * (v110 + 2)));
      drop(v6, a2);
      if (v113 < 0.0)
      {
        v409 = [MEMORY[0x277CCA890] currentHandler];
        v410 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [v409 handleFailureInFunction:v410 file:@"PPScoreInterpreter.mm" lineNumber:1259 description:{@"Invalid parameter not satisfying: %@", @"age >= 0"}];
      }

      if (v116 <= 0.0)
      {
        v413 = [MEMORY[0x277CCA890] currentHandler];
        v414 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
        [v413 handleFailureInFunction:v414 file:@"PPScoreInterpreter.mm" lineNumber:1260 description:{@"Invalid parameter not satisfying: %@", @"halflife > 0"}];
      }

      if (v113 < 0.0)
      {
        v118 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v113;
          _os_log_error_impl(&dword_23224A000, v118, OS_LOG_TYPE_ERROR, "Attempted to compute ExpDecay with negative age: %f  -- output is NaN", buf, 0xCu);
        }

        goto LABEL_399;
      }

      if (v116 > 0.0)
      {
LABEL_399:
        v588[0] = exp(v113 * (-0.693147181 / v116)) * v117;
        v589 = 0;
        push(v6, v588);
        v9 = v588;
        goto LABEL_558;
      }

      v337 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v116;
        _os_log_error_impl(&dword_23224A000, v337, OS_LOG_TYPE_ERROR, "Attempted to compute ExpDecay with non-positive half-life: %f -- forcing output to PPScoreNotSet", buf, 0xCu);
      }

      v590[0] = 0xC0DE9A4000000000;
      v591 = 0;
      push(v6, v590);
      v9 = v590;
      goto LABEL_558;
    case 12:
      if (shouldReturnUndefined(v5, 3uLL))
      {
        drop(v6, a2);
        v586[0] = 0xC0DE9A4000000000;
        v587 = 0;
        push(v6, v586);
        v9 = v586;
      }

      else
      {
        v61 = *v6->_stack.__ptr_;
        v62 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v61) >> 3);
        v63 = v62 - a2;
        if (v62 <= v62 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v64 = PPScoreInterpreterValue::getDouble((v61 + 24 * v63));
        v65 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v65) >> 3) <= v63 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v66 = v64;
        v67 = PPScoreInterpreterValue::getDouble((v65 + 24 * (v63 + 1)));
        v68 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v68) >> 3) <= v63 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v69 = v67;
        v70 = PPScoreInterpreterValue::getDouble((v68 + 24 * (v63 + 2)));
        drop(v6, a2);
        if (v70 == 1.0)
        {
          v407 = [MEMORY[0x277CCA890] currentHandler];
          v408 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v407 handleFailureInFunction:v408 file:@"PPScoreInterpreter.mm" lineNumber:1272 description:{@"Invalid parameter not satisfying: %@", @"ratio != 1"}];
        }

        if (v70 < 0.0)
        {
          v411 = [MEMORY[0x277CCA890] currentHandler];
          v412 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v411 handleFailureInFunction:v412 file:@"PPScoreInterpreter.mm" lineNumber:1273 description:{@"Invalid parameter not satisfying: %@", @"ratio >= 0"}];
        }

        if (v70 == 1.0)
        {
          v71 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23224A000, v71, OS_LOG_TYPE_ERROR, "Attempted to compute GeometricSum with a ratio of 1 -- setting output to PPScoreNotSet", buf, 2u);
          }

          v584[0] = 0xC0DE9A4000000000;
          v585 = 0;
          push(v6, v584);
          v9 = v584;
        }

        else
        {
          if (v70 < 0.0 && v66 != v66)
          {
            v303 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v70;
              *&buf[12] = 2048;
              *&buf[14] = v66;
              _os_log_error_impl(&dword_23224A000, v303, OS_LOG_TYPE_ERROR, "Attempted to compute GeometricSum with ratio of %f and terms of %f -- result will be NaN", buf, 0x16u);
            }
          }

          v582[0] = v69 * ((1.0 - pow(v70, v66)) / (1.0 - v70));
          v583 = 0;
          push(v6, v582);
          v9 = v582;
        }
      }

      goto LABEL_558;
    case 13:
      if (shouldReturnUndefined(v5, 3uLL))
      {
        drop(v6, a2);
        v580[0] = 0xC0DE9A4000000000;
        v581 = 0;
        push(v6, v580);
        v9 = v580;
      }

      else
      {
        v98 = *v6->_stack.__ptr_;
        v99 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v98) >> 3);
        v100 = v99 - a2;
        if (v99 <= v99 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v101 = PPScoreInterpreterValue::getDouble((v98 + 24 * v100));
        v102 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v102) >> 3) <= v100 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v103 = v101;
        v104 = PPScoreInterpreterValue::getDouble((v102 + 24 * (v100 + 1)));
        v105 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v105) >> 3) <= v100 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v106 = v104;
        v107 = PPScoreInterpreterValue::getDouble((v105 + 24 * (v100 + 2)));
        drop(v6, a2);
        v578[0] = v106 / (exp(-(v107 * v103)) + 1.0);
        v579 = 0;
        push(v6, v578);
        v9 = v578;
      }

      goto LABEL_558;
    case 15:
      if (shouldReturnUndefined(v5, 4uLL))
      {
        drop(v6, a2);
        v576[0] = 0xC0DE9A4000000000;
        v577 = 0;
        push(v6, v576);
        v9 = v576;
      }

      else
      {
        v130 = *v6->_stack.__ptr_;
        v131 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v130) >> 3);
        v132 = v131 - a2;
        if (v131 <= v131 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v133 = PPScoreInterpreterValue::getDouble((v130 + 24 * v132));
        v134 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v134) >> 3) <= v132 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v135 = v133;
        v136 = PPScoreInterpreterValue::getDouble((v134 + 24 * (v132 + 1)));
        v137 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v137) >> 3) <= v132 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v138 = v136;
        v139 = PPScoreInterpreterValue::getDouble((v137 + 24 * (v132 + 2)));
        v140 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v140) >> 3) <= v132 + 3)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v141 = v139;
        v142 = PPScoreInterpreterValue::getDouble((v140 + 24 * (v132 + 3)));
        drop(v6, a2);
        if (v138 > v142)
        {
          v415 = [MEMORY[0x277CCA890] currentHandler];
          v416 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v415 handleFailureInFunction:v416 file:@"PPScoreInterpreter.mm" lineNumber:1294 description:{@"ClampToRange: minVal (%f) must be <= defaultVal (%f) ", *&v138, *&v142}];
        }

        if (v142 > v141)
        {
          v417 = [MEMORY[0x277CCA890] currentHandler];
          v418 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v417 handleFailureInFunction:v418 file:@"PPScoreInterpreter.mm" lineNumber:1295 description:{@"ClampToRange: defaultVal (%f) must be <= maxVal (%f) ", *&v142, *&v141}];
        }

        v143 = v135;
        if (v135 < v138)
        {
          v143 = v138;
        }

        if (v143 >= v141)
        {
          v144 = v141;
        }

        else
        {
          v144 = v143;
        }

        if (v144 != v135)
        {
          v145 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
          {
            *buf = 134219008;
            *&buf[4] = v135;
            *&buf[12] = 2048;
            *&buf[14] = v138;
            *&buf[22] = 2048;
            *&buf[24] = v141;
            LOWORD(v643[0]) = 2048;
            *(v643 + 2) = v142;
            WORD1(v643[1]) = 2048;
            *(&v643[1] + 4) = v144;
            _os_log_impl(&dword_23224A000, v145, OS_LOG_TYPE_INFO, "ClampToRange(input=%f, min=%f, max=%f, default=%f): input coerced to %f", buf, 0x34u);
          }
        }

        *v574 = v144;
        v575 = 0;
        push(v6, v574);
        v9 = v574;
      }

      goto LABEL_558;
    case 16:
      pop(buf, v5);
      v18 = PPScoreInterpreterValue::getDouble(buf);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      pop(buf, v6);
      v19 = PPScoreInterpreterValue::getDouble(buf);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      v20 = v18 != -31337.0 && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      v21 = 1.0;
      if (v20)
      {
        v21 = v18;
      }

      if (v19 >= 0.0)
      {
        v22 = v19 * v21;
      }

      else
      {
        v22 = v19 / fmax(v21, 0.0000001);
      }

      *v572 = v22;
      v573 = 0;
      push(v6, v572);
      v9 = v572;
      goto LABEL_558;
    case 17:
      if (shouldReturnUndefined(v5, a2))
      {
        drop(v6, a2);
        v570[0] = 0xC0DE9A4000000000;
        v571 = 0;
        push(v6, v570);
        v9 = v570;
        goto LABEL_558;
      }

      if (!a2)
      {
        v174 = -INFINITY;
LABEL_405:
        *v561 = v174;
        v562 = 0;
        push(v6, v561);
        v9 = v561;
        goto LABEL_558;
      }

      v172 = 0;
      v173 = 0;
      v174 = -INFINITY;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (buf[16])
        {
          if (buf[16] != 1)
          {
            if (buf[16] == 2)
            {
              v175 = PPScoreInterpreterValue::getObject(buf);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v174 == -INFINITY)) != 0)
              {
                v176 = v175;
                v177 = v176;
                if (v172)
                {
                  if ([v176 compare:v172]== 1)
                  {
                    v178 = v177;
                  }

                  else
                  {
                    v178 = v172;
                  }

                  v179 = v178;

                  v172 = v179;
                }

                else
                {
                  v172 = v176;
                }
              }

              goto LABEL_273;
            }

            v359 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v359, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v646) = 67109120;
              DWORD1(v646) = buf[16];
              _os_log_error_impl(&dword_23224A000, v359, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMaximum", &v646, 8u);
            }

            v564[0] = 0xC0DE9A4000000000;
            v565 = 0;
            v360 = v564;
            push(v6, v564);
            break;
          }

          if (!v172)
          {
            v646 = 0uLL;
            PPScoreInterpreterValue::getFloatVector(buf, &v646);
            v180 = *v646;
            v181 = *(v646 + 8);
            if (*v646 == v181)
            {
              v184 = -INFINITY;
            }

            else
            {
              v182 = -INFINITY;
              do
              {
                v183 = *v180++;
                v182 = fmaxf(v182, v183);
              }

              while (v180 != v181);
              v184 = v182;
            }

            if (*(&v646 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v646 + 1));
            }

            v172 = 0;
            v174 = fmax(v174, v184);
            goto LABEL_273;
          }

          v362 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 67109120;
            DWORD1(v646) = buf[16];
            _os_log_error_impl(&dword_23224A000, v362, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMaximum", &v646, 8u);
          }

          v566[0] = 0xC0DE9A4000000000;
          v567 = 0;
          v360 = v566;
          push(v6, v566);
        }

        else
        {
          if (!v172)
          {
            v185 = PPScoreInterpreterValue::getDouble(buf);
            v172 = 0;
            if (v185 == -31338.0)
            {
              v185 = -INFINITY;
            }

            v174 = fmax(v174, v185);
LABEL_273:
            PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
            if (++v173 == a2)
            {
              if (v172)
              {
                PPScoreInterpreterValue::PPScoreInterpreterValue(v563, v172);
                push(v6, v563);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v563);

                goto LABEL_559;
              }

              goto LABEL_405;
            }

            continue;
          }

          v364 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v364, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 67109120;
            DWORD1(v646) = buf[16];
            _os_log_error_impl(&dword_23224A000, v364, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMaximum", &v646, 8u);
          }

          v568[0] = 0xC0DE9A4000000000;
          v569 = 0;
          v360 = v568;
          push(v6, v568);
        }

        break;
      }

      PPScoreInterpreterValue::~PPScoreInterpreterValue(v360);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

      goto LABEL_559;
    case 18:
      if (shouldReturnUndefined(v5, a2))
      {
        drop(v6, a2);
        v559[0] = 0xC0DE9A4000000000;
        v560 = 0;
        push(v6, v559);
        v9 = v559;
        goto LABEL_558;
      }

      if (!a2)
      {
        v160 = INFINITY;
LABEL_403:
        *v550 = v160;
        v551 = 0;
        push(v6, v550);
        v9 = v550;
        goto LABEL_558;
      }

      v158 = 0;
      v159 = 0;
      v160 = INFINITY;
      while (2)
      {
        memset(buf, 0, 24);
        pop(buf, v6);
        if (buf[16])
        {
          if (buf[16] != 1)
          {
            if (buf[16] == 2)
            {
              v161 = PPScoreInterpreterValue::getObject(buf);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v160 == INFINITY)) != 0)
              {
                v162 = v161;
                v163 = v162;
                if (v158)
                {
                  if ([v162 compare:v158]== -1)
                  {
                    v164 = v163;
                  }

                  else
                  {
                    v164 = v158;
                  }

                  v165 = v164;

                  v158 = v165;
                }

                else
                {
                  v158 = v162;
                }
              }

              goto LABEL_243;
            }

            v357 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v357, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v646) = 67109120;
              DWORD1(v646) = buf[16];
              _os_log_error_impl(&dword_23224A000, v357, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMinimum", &v646, 8u);
            }

            v553[0] = 0xC0DE9A4000000000;
            v554 = 0;
            v358 = v553;
            push(v6, v553);
            break;
          }

          if (!v158)
          {
            v646 = 0uLL;
            PPScoreInterpreterValue::getFloatVector(buf, &v646);
            v166 = *v646;
            v167 = *(v646 + 8);
            if (*v646 == v167)
            {
              v170 = INFINITY;
            }

            else
            {
              v168 = INFINITY;
              do
              {
                v169 = *v166++;
                v168 = fminf(v168, v169);
              }

              while (v166 != v167);
              v170 = v168;
            }

            if (*(&v646 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v646 + 1));
            }

            v158 = 0;
            v160 = fmin(v160, v170);
            goto LABEL_243;
          }

          v361 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v361, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 67109120;
            DWORD1(v646) = buf[16];
            _os_log_error_impl(&dword_23224A000, v361, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMinimum", &v646, 8u);
          }

          v555[0] = 0xC0DE9A4000000000;
          v556 = 0;
          v358 = v555;
          push(v6, v555);
        }

        else
        {
          if (!v158)
          {
            v171 = PPScoreInterpreterValue::getDouble(buf);
            v158 = 0;
            if (v171 == -31338.0)
            {
              v171 = INFINITY;
            }

            v160 = fmin(v160, v171);
LABEL_243:
            PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
            if (++v159 == a2)
            {
              if (v158)
              {
                PPScoreInterpreterValue::PPScoreInterpreterValue(v552, v158);
                push(v6, v552);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v552);

                goto LABEL_559;
              }

              goto LABEL_403;
            }

            continue;
          }

          v363 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 67109120;
            DWORD1(v646) = buf[16];
            _os_log_error_impl(&dword_23224A000, v363, OS_LOG_TYPE_ERROR, "Invalid value of type %d passed to PPOperatorMinimum", &v646, 8u);
          }

          v557[0] = 0xC0DE9A4000000000;
          v558 = 0;
          v358 = v557;
          push(v6, v557);
        }

        break;
      }

      PPScoreInterpreterValue::~PPScoreInterpreterValue(v358);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

      goto LABEL_559;
    case 19:
      drop(v5, a2);
      v17 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPOperatorNeuralNet is not supported anymore", buf, 2u);
      }

      v548[0] = 0xC0DE9A4000000000;
      v549 = 0;
      push(v6, v548);
      v9 = v548;
      goto LABEL_558;
    case 21:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v546[0] = 0xC0DE9A4000000000;
        v547 = 0;
        push(v6, v546);
        v9 = v546;
        goto LABEL_558;
      }

      v256 = *v6->_stack.__ptr_;
      v257 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v256) >> 3);
      v258 = v257 - a2;
      if (v257 <= v257 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v259 = PPScoreInterpreterValue::getObject((v256 + 24 * v258));
      v260 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v260) >> 3) <= v258 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v261 = PPScoreInterpreterValue::getObject((v260 + 24 * (v258 + 1)));
      drop(v6, a2);
      v262 = v259;
      v263 = v261;
      [v262 length];
      v544[0] = [v263 containsObject:v262];
      v545 = 0;
      push(v6, v544);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v544);

      goto LABEL_559;
    case 22:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v542[0] = 0xC0DE9A4000000000;
        v543 = 0;
        push(v6, v542);
        v9 = v542;
      }

      else
      {
        v91 = *v6->_stack.__ptr_;
        v92 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v91) >> 3);
        v93 = v92 - a2;
        if (v92 <= v92 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v94 = PPScoreInterpreterValue::getDouble((v91 + 24 * v93));
        v95 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v95) >> 3) <= v93 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v96 = v94;
        v97 = PPScoreInterpreterValue::getDouble((v95 + 24 * (v93 + 1)));
        drop(v6, a2);
        if (v96 > v97)
        {
          v395 = [MEMORY[0x277CCA890] currentHandler];
          v396 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PPScoreInterpreter _runOperator:arity:context:]"];
          [v395 handleFailureInFunction:v396 file:@"PPScoreInterpreter.mm" lineNumber:1463 description:{@"RandomUniform: start (%f) must be <= end (%f) ", *&v96, *&v97}];
        }

        v540[0] = v96 + (v97 - v96) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0);
        v541 = 0;
        push(v6, v540);
        v9 = v540;
      }

      goto LABEL_558;
    case 24:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v538[0] = 0xC0DE9A4000000000;
        v539 = 0;
        push(v6, v538);
        v9 = v538;
        goto LABEL_558;
      }

      v72 = v6->_stack.__ptr_;
      v73 = 0xAAAAAAAAAAAAAAABLL * ((v72[1] - *v72) >> 3) - a2;
      memset(buf, 0, 24);
      v75 = v72;
      v74 = *v72;
      if (0xAAAAAAAAAAAAAAABLL * ((v75[1] - v74) >> 3) <= v73)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v74 + 24 * v73));
      drop(v6, a2);
      if (buf[16])
      {
        if (buf[16] == 1)
        {
          PPScoreInterpreterValue::getFloatVector(buf, &v645);
          v647 = 0;
          v646 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v646, *v645, *(v645 + 8), (*(v645 + 8) - *v645) >> 2);
          if (*(&v645 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v645 + 1));
          }

          v76 = *(&v646 + 1);
          if (v646 != *(&v646 + 1))
          {
            v77 = v646;
            do
            {
              v78 = *v77;
              if (*v77 < 0.0)
              {
                v78 = -*v77;
              }

              *v77++ = v78;
            }

            while (v77 != v76);
          }

          std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>();
        }

        v309 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 67109120;
          DWORD1(v646) = buf[16];
          _os_log_error_impl(&dword_23224A000, v309, OS_LOG_TYPE_ERROR, "Invalid value of type %d in argument to PPOperatorAbsVal", &v646, 8u);
        }

        v534[0] = 0xC0DE9A4000000000;
        v535 = 0;
        push(v6, v534);
        v308 = v534;
      }

      else
      {
        v304 = PPScoreInterpreterValue::getDouble(buf);
        v305 = fabs(v304);
        v306 = v304 == -31338.0;
        v307 = 0.0;
        if (!v306)
        {
          v307 = v305;
        }

        *v536 = v307;
        v537 = 0;
        push(v6, v536);
        v308 = v536;
      }

      goto LABEL_546;
    case 25:
      if (!shouldReturnUndefined(v5, 2uLL))
      {
        v146 = *v6->_stack.__ptr_;
        v147 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v146) >> 3);
        v148 = v147 - a2;
        v646 = 0uLL;
        if (v147 > v147 - a2)
        {
          PPScoreInterpreterValue::getFloatVector((v146 + 24 * v148), &v646);
          v149 = *v6->_stack.__ptr_;
          if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v149) >> 3) > v148 + 1)
          {
            v150 = PPScoreInterpreterValue::getDouble((v149 + 24 * (v148 + 1)));
            drop(v6, a2);
            memset(buf, 0, 24);
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(buf, *v646, *(v646 + 8), (*(v646 + 8) - *v646) >> 2);
            v151 = v150;
            *&v645 = v151;
            std::vector<float>::emplace_back<float>(buf, &v645);
            std::allocate_shared[abi:ne200100]<std::vector<float>,std::allocator<std::vector<float>>,std::vector<float> const&,0>();
          }

          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      drop(v6, a2);
      v532[0] = 0xC0DE9A4000000000;
      v533 = 0;
      push(v6, v532);
      v9 = v532;
      goto LABEL_558;
    case 26:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v530[0] = 0xC0DE9A4000000000;
        v531 = 0;
        push(v6, v530);
        v9 = v530;
        goto LABEL_558;
      }

      v267 = *v6->_stack.__ptr_;
      v268 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v267) >> 3);
      *&buf[8] = 0;
      *buf = 0;
      if (v268 <= v268 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector((v267 + 24 * (v268 - a2)), buf);
      drop(v6, a2);
      v269 = **buf;
      v270 = *(*buf + 8);
      v271 = 0.0;
      if (**buf != v270)
      {
        v272 = **buf;
        do
        {
          v273 = *v272++;
          v271 = v271 + v273;
        }

        while (v272 != v270);
        v271 = v271 / ((v270 - **buf) >> 2);
      }

      *v528 = v271;
      v529 = 0;
      push(v6, v528);
      v266 = v528;
      goto LABEL_410;
    case 27:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v526[0] = 0xC0DE9A4000000000;
        v527 = 0;
        push(v6, v526);
        v9 = v526;
LABEL_558:
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v9);
        goto LABEL_559;
      }

      v38 = *v6->_stack.__ptr_;
      v39 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v38) >> 3);
      v646 = 0uLL;
      if (v39 <= v39 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector((v38 + 24 * (v39 - a2)), &v646);
      drop(v6, a2);
      memset(buf, 0, 24);
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(buf, *v646, *(v646 + 8), (*(v646 + 8) - *v646) >> 2);
      v40 = *buf;
      v41 = *&buf[8] - *buf;
      if (*&buf[8] == *buf)
      {
        v524[0] = 0xC0DE9A4000000000;
        v525 = 0;
        push(v6, v524);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v524);
        if (!v40)
        {
LABEL_532:
          v299 = *(&v646 + 1);
          if (*(&v646 + 1))
          {
LABEL_533:
            std::__shared_weak_count::__release_shared[abi:ne200100](v299);
          }

          goto LABEL_559;
        }

LABEL_531:
        operator delete(v40);
        goto LABEL_532;
      }

      LOBYTE(v645) = 0;
      std::__sort<std::__less<float,float> &,float *>();
      v42 = v41 >> 2;
      v43 = vcvtd_n_f64_u64(v41 >> 2, 1uLL) + -1.0;
      v44 = v43;
      if (v43 == v43)
      {
        if (v42 > v44 && v42 > v44 + 1)
        {
          v45 = (*(v40 + v44) + *(v40 + v44 + 1)) * 0.5;
LABEL_530:
          *v522 = v45;
          v523 = 0;
          push(v6, v522);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v522);
          goto LABEL_531;
        }
      }

      else if (v42 > v44)
      {
        v45 = *(v40 + v44);
        goto LABEL_530;
      }

LABEL_643:
      std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
    case 28:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v520[0] = 0xC0DE9A4000000000;
        v521 = 0;
        push(v6, v520);
        v9 = v520;
        goto LABEL_558;
      }

      v264 = *v6->_stack.__ptr_;
      v265 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v264) >> 3);
      *&buf[8] = 0;
      *buf = 0;
      if (v265 <= v265 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector((v264 + 24 * (v265 - a2)), buf);
      drop(v6, a2);
      v518[0] = ((*(*buf + 8) - **buf) >> 2);
      v519 = 0;
      push(v6, v518);
      v266 = v518;
      goto LABEL_410;
    case 29:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v516[0] = 0xC0DE9A4000000000;
        v517 = 0;
        push(v6, v516);
        v9 = v516;
        goto LABEL_558;
      }

      v280 = *v6->_stack.__ptr_;
      v281 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v280) >> 3);
      *&buf[8] = 0;
      *buf = 0;
      if (v281 <= v281 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::getFloatVector((v280 + 24 * (v281 - a2)), buf);
      drop(v6, a2);
      v282 = **buf;
      v283 = *(*buf + 8);
      v284 = **buf;
      if (**buf == v283)
      {
        v514[0] = 0;
        v515 = 0;
        v292 = v514;
        push(v6, v514);
      }

      else
      {
        v285 = v283 - v284;
        v286 = 0.0;
        v287 = **buf;
        do
        {
          v288 = *v287++;
          v286 = v286 + v288;
        }

        while (v287 != v283);
        v289 = v286 / v285;
        v290 = 0.0;
        do
        {
          v291 = *v284++;
          v290 = v290 + (v291 - v289) * (v291 - v289);
        }

        while (v284 != v283);
        v512[0] = sqrt(v290 / v285);
        v513 = 0;
        v292 = v512;
        push(v6, v512);
      }

      v266 = v292;
LABEL_410:
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v266);
      v299 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_559;
      }

      goto LABEL_533;
    case 30:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v510[0] = 0xC0DE9A4000000000;
        v511 = 0;
        push(v6, v510);
        v9 = v510;
        goto LABEL_558;
      }

      v195 = *v6->_stack.__ptr_;
      v196 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v195) >> 3);
      v197 = v196 - a2;
      if (v196 <= v196 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v198 = PPScoreInterpreterValue::getObject((v195 + 24 * v197));
      memset(buf, 0, 24);
      v199 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v199) >> 3) <= v197 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v199 + 24 * (v197 + 1)));
      drop(v6, a2);
      if (!v198)
      {
        goto LABEL_449;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v200 = v198;
      }

      else
      {
        v317 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
        {
          v382 = objc_opt_class();
          v383 = NSStringFromClass(v382);
          LODWORD(v646) = 138412290;
          *(&v646 + 4) = v383;
          _os_log_error_impl(&dword_23224A000, v317, OS_LOG_TYPE_ERROR, "PPOperatorUpdateItemCounts was passed an existingCountsObj of the wrong type: %@", &v646, 0xCu);
        }

LABEL_449:
        v200 = objc_opt_new();
      }

      v318 = v200;
      if (buf[16] == 2)
      {
        v342 = PPScoreInterpreterValue::getObject(buf);
        if (v342)
        {
          [v318 addObject:v342];
        }

LABEL_509:

        goto LABEL_510;
      }

      if (buf[16] != 1)
      {
        if (!buf[16])
        {
          v319 = [MEMORY[0x277CCABB0] numberWithDouble:PPScoreInterpreterValue::getDouble(buf)];
          [v318 addObject:v319];

          goto LABEL_510;
        }

        v342 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v342, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 67109120;
          DWORD1(v646) = buf[16];
          _os_log_error_impl(&dword_23224A000, v342, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in argument to PPOperatorUpdateItemCounts", &v646, 8u);
        }

        goto LABEL_509;
      }

      v646 = 0uLL;
      PPScoreInterpreterValue::getFloatVector(buf, &v646);
      v339 = *v646;
      v340 = *(v646 + 8);
      if (*v646 != v340)
      {
        do
        {
          LODWORD(v338) = *v339;
          v341 = [MEMORY[0x277CCABB0] numberWithFloat:v338];
          [v318 addObject:v341];

          ++v339;
        }

        while (v339 != v340);
      }

      if (*(&v646 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v646 + 1));
      }

LABEL_510:
      PPScoreInterpreterValue::PPScoreInterpreterValue(v509, v318);
      push(v6, v509);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v509);

      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      goto LABEL_559;
    case 31:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v507[0] = 0xC0DE9A4000000000;
        v508 = 0;
        push(v6, v507);
        v9 = v507;
        goto LABEL_558;
      }

      v274 = *v6->_stack.__ptr_;
      v275 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v274) >> 3);
      v276 = v275 - a2;
      if (v275 <= v275 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v277 = PPScoreInterpreterValue::getObject((v274 + 24 * v276));
      memset(buf, 0, 24);
      v278 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v278) >> 3) <= v276 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v278 + 24 * (v276 + 1)));
      drop(v6, a2);
      if (!v277)
      {
        goto LABEL_457;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v279 = v277;
      }

      else
      {
        v320 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
        {
          v384 = objc_opt_class();
          v385 = NSStringFromClass(v384);
          LODWORD(v646) = 138412290;
          *(&v646 + 4) = v385;
          _os_log_error_impl(&dword_23224A000, v320, OS_LOG_TYPE_ERROR, "PPOperatorUpdateCompactNumericItemCounts was passed an existingCountsObj of the wrong type: %@", &v646, 0xCu);
        }

LABEL_457:
        v279 = objc_opt_new();
      }

      v321 = v279;
      if (buf[16] == 1)
      {
        v646 = 0uLL;
        PPScoreInterpreterValue::getFloatVector(buf, &v646);
        v322 = *v646;
        v323 = *(v646 + 8);
        while (v322 != v323)
        {
          [v321 addValue:*v322++];
        }

        if (*(&v646 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v646 + 1));
        }
      }

      else if (buf[16])
      {
        v324 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 67109120;
          DWORD1(v646) = buf[16];
          _os_log_error_impl(&dword_23224A000, v324, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in argument to PPOperatorUpdateCompactNumericItemCounts", &v646, 8u);
        }
      }

      else
      {
        [v279 addValue:PPScoreInterpreterValue::getDouble(buf)];
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(v506, v321);
      push(v6, v506);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v506);

      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
      goto LABEL_559;
    case 32:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v504[0] = 0xC0DE9A4000000000;
        v505 = 0;
        push(v6, v504);
        v9 = v504;
        goto LABEL_558;
      }

      v249 = *v6->_stack.__ptr_;
      v250 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v249) >> 3);
      v251 = v250 - a2;
      if (v250 <= v250 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v252 = PPScoreInterpreterValue::getObject((v249 + 24 * v251));
      memset(buf, 0, 24);
      v253 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v253) >> 3) <= v251 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v253 + 24 * (v251 + 1)));
      drop(v6, a2);
      if (buf[16])
      {
        if (buf[16] != 2)
        {
          v316 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 67109120;
            DWORD1(v646) = buf[16];
            _os_log_error_impl(&dword_23224A000, v316, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in 2nd argument to PPOperatorCountsForItem", &v646, 8u);
          }

          v502[0] = 0xC0DE9A4000000000;
          v503 = 0;
          push(v6, v502);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v502);
          goto LABEL_609;
        }

        PPScoreInterpreterValue::getObject(buf);
        v255 = v254 = -31337.0;
      }

      else
      {
        v255 = 0;
        v254 = PPScoreInterpreterValue::getDouble(buf);
      }

      if (!v252)
      {
        v500[0] = 0;
        v501 = 0;
        push(v6, v500);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v500);

        goto LABEL_609;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v314 = v252;
        if (v254 != -31337.0)
        {
          v368 = [MEMORY[0x277CCABB0] numberWithDouble:v254];
          v315 = [v314 countForObject:v368];

          goto LABEL_596;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v315 = [v314 countForObject:v255];
LABEL_596:

          v492[0] = v315;
          v493 = 0;
          push(v6, v492);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v492);

          goto LABEL_609;
        }

        v369 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 138412290;
          *(&v646 + 4) = v255;
          _os_log_error_impl(&dword_23224A000, v369, OS_LOG_TYPE_ERROR, "Invalid key passed to PPOperatorCountsForItem using NSCountedSet: %@", &v646, 0xCu);
        }

        v498[0] = 0xC0DE9A4000000000;
        v499 = 0;
        push(v6, v498);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v498);

LABEL_609:
        PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

        goto LABEL_559;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v365 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v365, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 138412290;
          *(&v646 + 4) = v252;
          _os_log_error_impl(&dword_23224A000, v365, OS_LOG_TYPE_ERROR, "Invalid counted set object passed to PPOperatorCountsForItem: %@", &v646, 0xCu);
        }

        v494[0] = 0xC0DE9A4000000000;
        v495 = 0;
        push(v6, v494);
        PPScoreInterpreterValue::~PPScoreInterpreterValue(v494);

        goto LABEL_609;
      }

      v352 = v252;
      if (v254 == -31337.0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v376 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 138412290;
            *(&v646 + 4) = v255;
            _os_log_error_impl(&dword_23224A000, v376, OS_LOG_TYPE_ERROR, "Invalid key passed to PPOperatorCountsForItem using PPU16CountedSet: %@", &v646, 0xCu);
          }

          v496[0] = 0xC0DE9A4000000000;
          v497 = 0;
          push(v6, v496);
          PPScoreInterpreterValue::~PPScoreInterpreterValue(v496);

          goto LABEL_609;
        }

        [v255 doubleValue];
        v254 = v353;
      }

      v315 = [v352 countForValue:v254];
      goto LABEL_596;
    case 33:
      goto LABEL_65;
    case 34:
      v8 = 0;
LABEL_65:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v490[0] = 0xC0DE9A4000000000;
        v491 = 0;
        push(v6, v490);
        v9 = v490;
        goto LABEL_558;
      }

      v23 = v6->_stack.__ptr_;
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v23[1] - *v23) >> 3) - a2;
      v647 = 0;
      v646 = 0uLL;
      v26 = v23;
      v25 = *v23;
      if (0xAAAAAAAAAAAAAAABLL * ((v26[1] - v25) >> 3) <= v24)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(&v646, (v25 + 24 * v24));
      drop(v6, a2);
      if (v647)
      {
        if (v647 == 1)
        {
          PPScoreInterpreterValue::getFloatVector(&v646, buf);
          v295 = *buf;
          v28 = *&buf[8];
          if (v8)
          {
            if (*buf)
            {
              v643[0] = 0;
              memset(buf, 0, sizeof(buf));
              std::unordered_set<float>::unordered_set<std::__wrap_iter<float *>>(buf, *v295, v295[1]);
              v472[0] = *&buf[24];
              v473 = 0;
              push(v6, v472);
              PPScoreInterpreterValue::~PPScoreInterpreterValue(v472);
              std::__hash_table<PPSubscoreIdentifier,std::hash<PPSubscoreIdentifier>,std::equal_to<PPSubscoreIdentifier>,std::allocator<PPSubscoreIdentifier>>::~__hash_table(buf);
              goto LABEL_555;
            }

            goto LABEL_552;
          }

          if (*buf)
          {
            v451[0] = ((*(*buf + 8) - **buf) >> 2);
            v452 = 0;
            push(v6, v451);
            v329 = v451;
LABEL_554:
            PPScoreInterpreterValue::~PPScoreInterpreterValue(v329);
LABEL_555:
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            goto LABEL_557;
          }

LABEL_553:
          v453[0] = 0;
          v454 = 0;
          push(v6, v453);
          v329 = v453;
          goto LABEL_554;
        }

        if (v647 == 2)
        {
          v27 = PPScoreInterpreterValue::getObject(&v646);
          v28 = v27;
          if (v8)
          {
            if (v27)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v28;
                v484[0] = [(std::__shared_weak_count *)v29 count];
                v485 = 0;
                push(v6, v484);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v484);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v366 = v28;
                  v482[0] = [(std::__shared_weak_count *)v366 uniqueValueCount];
                  v483 = 0;
                  push(v6, v482);
                  PPScoreInterpreterValue::~PPScoreInterpreterValue(v482);
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v373 = v28;
                    v374 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v373];
                    v480[0] = [v374 count];
                    v481 = 0;
                    push(v6, v480);
                    PPScoreInterpreterValue::~PPScoreInterpreterValue(v480);
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v377 = v28;
                      v378 = objc_opt_new();
                      for (i = 0; i < [(std::__shared_weak_count *)v377 length]; ++i)
                      {
                        v380 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[std::__shared_weak_count characterAtIndex:](v377, "characterAtIndex:", i)}];
                        [v378 addObject:v380];
                      }

                      v478[0] = [v378 count];
                      v479 = 0;
                      push(v6, v478);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v478);
                    }

                    else
                    {
                      v388 = pp_score_interpreter_log_handle();
                      if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
                      {
                        v391 = objc_opt_class();
                        v392 = NSStringFromClass(v391);
                        *buf = 138412290;
                        *&buf[4] = v392;
                        _os_log_error_impl(&dword_23224A000, v388, OS_LOG_TYPE_ERROR, "Unhandled object type of %@ encountered in PPOperator<Distinct/Total>ItemCount", buf, 0xCu);
                      }

                      v476[0] = 0xC0DE9A4000000000;
                      v477 = 0;
                      push(v6, v476);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v476);
                    }
                  }
                }
              }

LABEL_557:
              v9 = &v646;
              goto LABEL_558;
            }

LABEL_552:
            v474[0] = 0;
            v475 = 0;
            push(v6, v474);
            v329 = v474;
            goto LABEL_554;
          }

          if (v27)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v330 = v28;
              [(std::__shared_weak_count *)v330 objectEnumerator];
              v470 = 0u;
              v471 = 0u;
              v468 = 0u;
              v331 = v469 = 0u;
              v332 = [v331 countByEnumeratingWithState:&v468 objects:v644 count:16];
              if (v332)
              {
                v333 = 0;
                v334 = *v469;
                do
                {
                  for (j = 0; j != v332; ++j)
                  {
                    if (*v469 != v334)
                    {
                      objc_enumerationMutation(v331);
                    }

                    v333 += [(std::__shared_weak_count *)v330 countForObject:*(*(&v468 + 1) + 8 * j)];
                  }

                  v332 = [v331 countByEnumeratingWithState:&v468 objects:v644 count:16];
                }

                while (v332);
                v336 = v333;
              }

              else
              {
                v336 = 0.0;
              }

              *v466 = v336;
              v467 = 0;
              push(v6, v466);
              PPScoreInterpreterValue::~PPScoreInterpreterValue(v466);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v367 = v28;
                v464[0] = [(std::__shared_weak_count *)v367 count];
                v465 = 0;
                push(v6, v464);
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v464);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v375 = v28;
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  *&buf[24] = 0;
                  v463[0] = MEMORY[0x277D85DD0];
                  v463[1] = 3221225472;
                  v463[2] = __49__PPScoreInterpreter__runOperator_arity_context___block_invoke;
                  v463[3] = &unk_2789721B8;
                  v463[4] = buf;
                  [(std::__shared_weak_count *)v375 enumerateValuesAndCountsUsingBlock:v463];
                  v461[0] = *(*&buf[8] + 24);
                  v462 = 0;
                  push(v6, v461);
                  PPScoreInterpreterValue::~PPScoreInterpreterValue(v461);
                  _Block_object_dispose(buf, 8);
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v381 = v28;
                    v459[0] = [(std::__shared_weak_count *)v381 count];
                    v460 = 0;
                    push(v6, v459);
                    PPScoreInterpreterValue::~PPScoreInterpreterValue(v459);
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v389 = v28;
                      v457[0] = [(std::__shared_weak_count *)v389 length];
                      v458 = 0;
                      push(v6, v457);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v457);
                    }

                    else
                    {
                      v390 = pp_score_interpreter_log_handle();
                      if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
                      {
                        v419 = objc_opt_class();
                        v420 = NSStringFromClass(v419);
                        *buf = 138412290;
                        *&buf[4] = v420;
                        _os_log_error_impl(&dword_23224A000, v390, OS_LOG_TYPE_ERROR, "Unhandled object type of %@ encountered in PPOperator<Distinct/Total>ItemCount", buf, 0xCu);
                      }

                      v455[0] = 0xC0DE9A4000000000;
                      v456 = 0;
                      push(v6, v455);
                      PPScoreInterpreterValue::~PPScoreInterpreterValue(v455);
                    }
                  }
                }
              }
            }

            goto LABEL_557;
          }

          goto LABEL_553;
        }

        v297 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v647;
          _os_log_error_impl(&dword_23224A000, v297, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in 2nd argument to PPOperator<Distinct/Total>ItemCount", buf, 8u);
        }

        v486[0] = 0xC0DE9A4000000000;
        v487 = 0;
        push(v6, v486);
        v296 = v486;
      }

      else
      {
        v488[0] = 0x3FF0000000000000;
        v489 = 0;
        push(v6, v488);
        v296 = v488;
      }

      PPScoreInterpreterValue::~PPScoreInterpreterValue(v296);
      goto LABEL_557;
    case 35:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v439[0] = 0xC0DE9A4000000000;
        v440 = 0;
        push(v6, v439);
        v9 = v439;
        goto LABEL_558;
      }

      v201 = *v6->_stack.__ptr_;
      v202 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v201) >> 3);
      v203 = v202 - a2;
      if (v202 <= v202 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v204 = PPScoreInterpreterValue::getObject((v201 + 24 * v203));
      v205 = v203 + 1;
      memset(buf, 0, 24);
      v206 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v206) >> 3) <= v203 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v207 = v203 + 2;
      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v206 + 24 * v205));
      v647 = 0;
      v646 = 0uLL;
      v208 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v208) >> 3) <= v207)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(&v646, (v208 + 24 * v207));
      drop(v6, a2);
      if (!v204)
      {
        goto LABEL_473;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v209 = v204;
      }

      else
      {
        v325 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
        {
          v386 = objc_opt_class();
          v387 = NSStringFromClass(v386);
          LODWORD(v645) = 138412290;
          *(&v645 + 4) = v387;
          _os_log_error_impl(&dword_23224A000, v325, OS_LOG_TYPE_ERROR, "PPOperatorAddToDictionary was passed an existingDictObj of the wrong type: %@", &v645, 0xCu);
        }

LABEL_473:
        v209 = objc_opt_new();
      }

      v326 = v209;
      if (v647 == 2)
      {
        v327 = PPScoreInterpreterValue::getObject(&v646);
      }

      else if (v647 == 1)
      {
        v327 = PPScoreInterpreterValue::getNumericArray(&v646);
      }

      else if (v647)
      {
        v343 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v343, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v645) = 67109120;
          DWORD1(v645) = v647;
          _os_log_error_impl(&dword_23224A000, v343, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in PPOperatorAddToDictionary", &v645, 8u);
        }

        v344 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v645) = 0;
          _os_log_error_impl(&dword_23224A000, v344, OS_LOG_TYPE_ERROR, "Attempted to store nil object value in PPOperatorAddToDictionary", &v645, 2u);
        }

        v327 = objc_opt_new();
      }

      else
      {
        v327 = [MEMORY[0x277CCABB0] numberWithDouble:PPScoreInterpreterValue::getDouble(&v646)];
      }

      v345 = v327;
      if (buf[16] != 2)
      {
        if (!buf[16])
        {
          v346 = [MEMORY[0x277CCABB0] numberWithDouble:PPScoreInterpreterValue::getDouble(buf)];
          goto LABEL_526;
        }

        v348 = pp_score_interpreter_log_handle();
        if (!os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_525;
        }

        LODWORD(v645) = 67109120;
        DWORD1(v645) = buf[16];
        v370 = "Attempted to store invalid key of type %d in PPOperatorAddToDictionary";
        v371 = v348;
        v372 = 8;
LABEL_615:
        _os_log_error_impl(&dword_23224A000, v371, OS_LOG_TYPE_ERROR, v370, &v645, v372);
        goto LABEL_525;
      }

      v347 = PPScoreInterpreterValue::getObject(buf);
      if (v347)
      {
        goto LABEL_527;
      }

      if ([objc_opt_class() conformsToProtocol:&unk_284788E50])
      {
        v347 = 0;
        goto LABEL_527;
      }

      v348 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v645) = 0;
        v370 = "Attempted to store nil object key in PPOperatorAddToDictionary";
        v371 = v348;
        v372 = 2;
        goto LABEL_615;
      }

LABEL_525:

      v346 = objc_opt_new();
LABEL_526:
      v347 = v346;
LABEL_527:
      [v326 setObject:v345 forKeyedSubscript:v347];
      PPScoreInterpreterValue::PPScoreInterpreterValue(v438, &v646);
      push(v6, v438);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v438);

      PPScoreInterpreterValue::~PPScoreInterpreterValue(&v646);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);

LABEL_559:
      v354 = *MEMORY[0x277D85DE8];
      return;
    case 36:
      goto LABEL_22;
    case 37:
      v7 = 1;
      goto LABEL_22;
    case 38:
      v7 = 2;
LABEL_22:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v449[0] = 0xC0DE9A4000000000;
        v450 = 0;
        push(v6, v449);
        v9 = v449;
        goto LABEL_558;
      }

      v10 = *v6->_stack.__ptr_;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v10) >> 3);
      v12 = v11 - a2;
      if (v11 <= v11 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = PPScoreInterpreterValue::getObject((v10 + 24 * v12));
      memset(buf, 0, 24);
      v14 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v14) >> 3) <= v12 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      PPScoreInterpreterValue::PPScoreInterpreterValue(buf, (v14 + 24 * (v12 + 1)));
      drop(v6, a2);
      if (buf[16])
      {
        if (buf[16] != 2)
        {
          v293 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 67109120;
            DWORD1(v646) = buf[16];
            _os_log_error_impl(&dword_23224A000, v293, OS_LOG_TYPE_ERROR, "Attempted to store invalid value of type %d in 2nd argument to PPOperator<Type>ForKey", &v646, 8u);
          }

          v16 = 0;
          goto LABEL_481;
        }

        PPScoreInterpreterValue::getObject(buf);
        v16 = v15 = -31337.0;
      }

      else
      {
        v15 = PPScoreInterpreterValue::getDouble(buf);
        v16 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v293 = v13;
        if (v15 != -31337.0)
        {
          v300 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          v294 = [v293 objectForKeyedSubscript:v300];

          goto LABEL_415;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v294 = [v293 objectForKeyedSubscript:v16];
LABEL_415:

          if (v7 != 1)
          {
            if (!v7)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v294 doubleValue];
                v447[0] = v301;
                v448 = 0;
                v302 = v447;
                push(v6, v447);
LABEL_564:
                PPScoreInterpreterValue::~PPScoreInterpreterValue(v302);

                PPScoreInterpreterValue::~PPScoreInterpreterValue(buf);
                goto LABEL_559;
              }

              v355 = pp_score_interpreter_log_handle();
              if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v646) = 138412290;
                *(&v646 + 4) = v293;
                _os_log_error_impl(&dword_23224A000, v355, OS_LOG_TYPE_ERROR, "Invalid dictionary object (expected NSNumber) passed to PPOperator<Type>ForKey: %@", &v646, 0xCu);
              }

LABEL_563:
              v444[0] = 0xC0DE9A4000000000;
              v445 = 0;
              v302 = v444;
              push(v6, v444);
              goto LABEL_564;
            }

            v349 = pp_score_interpreter_log_handle();
            if (os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v646) = 67109120;
              DWORD1(v646) = v7;
              _os_log_error_impl(&dword_23224A000, v349, OS_LOG_TYPE_ERROR, "Invalid type of %d requested from PPOperator<Type>ForKey", &v646, 8u);
            }

LABEL_539:
            v442 = 2;
            v441[0] = 0;
            v302 = v441;
            push(v6, v441);
            goto LABEL_564;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            PPScoreInterpreterValue::PPScoreInterpreterValue(v446, v294);
          }

          v356 = pp_score_interpreter_log_handle();
          if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v646) = 138412290;
            *(&v646 + 4) = v293;
            _os_log_error_impl(&dword_23224A000, v356, OS_LOG_TYPE_ERROR, "Invalid dictionary object (expected NSArray) passed to PPOperator<Type>ForKey: %@", &v646, 0xCu);
          }

LABEL_483:
          PPScoreInterpreterValue::PPScoreInterpreterValue(v443, MEMORY[0x277CBEBF8]);
        }

        v328 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v328, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 138412290;
          *(&v646 + 4) = v16;
          _os_log_error_impl(&dword_23224A000, v328, OS_LOG_TYPE_ERROR, "Invalid key passed to PPOperator<Type>ForKey: %@", &v646, 0xCu);
        }
      }

      else
      {
        v293 = pp_score_interpreter_log_handle();
        if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v646) = 138412290;
          *(&v646 + 4) = v13;
          _os_log_error_impl(&dword_23224A000, v293, OS_LOG_TYPE_ERROR, "Invalid dictionary object passed to PPOperator<Type>ForKey: %@", &v646, 0xCu);
        }
      }

LABEL_481:

      v294 = 0;
      if (v7 == 2)
      {
        goto LABEL_539;
      }

      if (v7 != 1)
      {
        goto LABEL_563;
      }

      goto LABEL_483;
    case 39:
      if (shouldReturnUndefined(v5, 3uLL))
      {
        drop(v6, a2);
        v436[0] = 0xC0DE9A4000000000;
        v437 = 0;
        push(v6, v436);
        v9 = v436;
      }

      else
      {
        v46 = *v6->_stack.__ptr_;
        v47 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v46) >> 3);
        v48 = v47 - a2;
        if (v47 <= v47 - a2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v49 = PPScoreInterpreterValue::getDouble((v46 + 24 * v48));
        v50 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v50) >> 3) <= v48 + 1)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v51 = v49;
        v52 = PPScoreInterpreterValue::getDouble((v50 + 24 * (v48 + 1)));
        v53 = *v6->_stack.__ptr_;
        if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v53) >> 3) <= v48 + 2)
        {
          std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
        }

        v54 = v52;
        v55 = PPScoreInterpreterValue::getDouble((v53 + 24 * (v48 + 2)));
        drop(v6, a2);
        v434[0] = v51 * exp(-fabs(v54 * v55));
        v435 = 0;
        push(v6, v434);
        v9 = v434;
      }

      goto LABEL_558;
    case 40:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v432[0] = 0xC0DE9A4000000000;
        v433 = 0;
        push(v6, v432);
        v9 = v432;
        goto LABEL_558;
      }

      v56 = *v6->_stack.__ptr_;
      v57 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v56) >> 3);
      if (v57 <= v57 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v58 = PPScoreInterpreterValue::getObject((v56 + 24 * (v57 - a2)));
      drop(v6, a2);
      v59 = v58;
      [v59 timeIntervalSince1970];
      v430[0] = v60;
      v431 = 0;
      push(v6, v430);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v430);

      goto LABEL_559;
    case 41:
      if (shouldReturnUndefined(v5, 1uLL))
      {
        drop(v6, a2);
        v428[0] = 0xC0DE9A4000000000;
        v429 = 0;
        push(v6, v428);
        v9 = v428;
        goto LABEL_558;
      }

      v79 = *v6->_stack.__ptr_;
      v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v79) >> 3);
      if (v80 <= v80 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v81 = PPScoreInterpreterValue::getObject((v79 + 24 * (v80 - a2)));
      drop(v6, a2);
      v82 = v81;
      memset(v643, 0, sizeof(v643));
      memset(buf, 0, sizeof(buf));
      v83 = -1.0;
      if (v82 && ([MEMORY[0x277D3A578] localizedTimeStructForDate:v82 tm:buf] & 1) != 0)
      {
        v83 = (*&buf[24] + 1);
      }

      *v426 = v83;
      v427 = 0;
      push(v6, v426);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v426);

      goto LABEL_559;
    case 42:
      if (shouldReturnUndefined(v5, 2uLL))
      {
        drop(v6, a2);
        v424[0] = 0xC0DE9A4000000000;
        v425 = 0;
        push(v6, v424);
        v9 = v424;
        goto LABEL_558;
      }

      v30 = *v6->_stack.__ptr_;
      v31 = 0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v30) >> 3);
      v32 = v31 - a2;
      if (v31 <= v31 - a2)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v33 = PPScoreInterpreterValue::getObject((v30 + 24 * v32));
      v34 = *v6->_stack.__ptr_;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6->_stack.__ptr_ + 1) - v34) >> 3) <= v32 + 1)
      {
        std::vector<std::vector<std::unordered_set<PPSubscoreIdentifier>>>::__throw_out_of_range[abi:ne200100]();
      }

      v35 = PPScoreInterpreterValue::getDouble((v34 + 24 * (v32 + 1)));
      drop(v6, a2);
      v36 = v33;
      memset(v643, 0, sizeof(v643));
      memset(buf, 0, sizeof(buf));
      v37 = -1.0;
      if (v36 && ([MEMORY[0x277D3A578] localizedTimeStructForDate:v36 tm:buf] & 1) != 0)
      {
        v37 = ((3600 * *&buf[8] + 60 * *&buf[4] + *buf) / (86400 / v35));
      }

      *v422 = v37;
      v423 = 0;
      push(v6, v422);
      PPScoreInterpreterValue::~PPScoreInterpreterValue(v422);

      goto LABEL_559;
    default:
      v421 = pp_score_interpreter_log_handle();
      if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_error_impl(&dword_23224A000, v421, OS_LOG_TYPE_ERROR, "Undefined operator of value %tu", buf, 0xCu);
      }

      __break(1u);
      goto LABEL_643;
  }
}

void __47__PPScoreInterpreter_cleanupReusableComponents__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
}

- (void)evaluateWithPreviousStageSubscores:(id)a3 scoreInputInitializationBlock:(id)a4 scoreInputAssignmentBlock:(id)a5 outputBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  reusableContext = self->_reusableContext;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __125__PPScoreInterpreter_evaluateWithPreviousStageSubscores_scoreInputInitializationBlock_scoreInputAssignmentBlock_outputBlock___block_invoke;
  v20[3] = &unk_278972170;
  v20[4] = self;
  v16 = v11;
  v22 = v16;
  v17 = v10;
  v21 = v17;
  v18 = v12;
  v23 = v18;
  v19 = v13;
  v24 = v19;
  [(_PASLock *)reusableContext runWithLockAcquired:v20];

  objc_autoreleasePoolPop(v14);
}

void __125__PPScoreInterpreter_evaluateWithPreviousStageSubscores_scoreInputInitializationBlock_scoreInputAssignmentBlock_outputBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    v5 = v4[4];
    v6 = v4[3];
    v4[3] = v5;
  }

  else
  {
    v6 = *(*(*(a1 + 32) + 8) + 16);
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 count];

    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [v9 count];

    v11 = [v6 objectAtIndexedSubscript:2];
    v12 = [v11 count];

    v13 = (*(*(a1 + 48) + 16))();
    v14 = [[PPScoreInterpreterCtx alloc] initWithScoreInputs:v13 previousSubscores:*(a1 + 40) scalarSubscoreCount:v8 arraySubscoreCount:v10 objectSubscoreCount:v12];
    v15 = v3[1];
    v3[1] = v14;
  }

  v16 = *(v3[1] + 2);
  (*(*(a1 + 56) + 16))();
  [(PPScoreInterpreter *)*(a1 + 32) evaluateScoresWithContext:?];
  if (*(*(v3[1] + 1) + 8) != **(v3[1] + 1))
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((*(*(v3[1] + 1) + 8) - **(v3[1] + 1)) >> 3);
      v21 = 134217984;
      v22 = v20;
      _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "%lu items left on score interpreter stack", &v21, 0xCu);
    }
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, *(v3[1] + 4));
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (PPScoreInterpreter)initWithBytecode:(id)a3 scoreInputSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PPScoreInterpreter;
  v9 = [(PPScoreInterpreter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bytecode, a3);
    objc_storeStrong(&v10->_scoreInputSet, a4);
    v11 = objc_alloc(MEMORY[0x277D425F8]);
    v12 = objc_opt_new();
    v13 = [v11 initWithGuardedData:v12];
    reusableContext = v10->_reusableContext;
    v10->_reusableContext = v13;
  }

  return v10;
}

- (PPScoreInterpreter)initWithParseRoot:(id)a3 scalarSubscoreCount:(unint64_t)a4 arraySubscoreCount:(unint64_t)a5 objectSubscoreCount:(unint64_t)a6
{
  v10 = a3;
  v11 = v10;
  if (self)
  {
    if (!v10)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:sel_initWithParseRoot_scalarSubscoreCount_arraySubscoreCount_objectSubscoreCount_scoreInputSet_ object:self file:@"PPScoreInterpreter.mm" lineNumber:828 description:{@"Invalid parameter not satisfying: %@", @"root"}];
    }

    v12 = [[PPScoreInterpreterBytecode alloc] initWithParseRoot:v11 scalarSubscoreCount:a4 arraySubscoreCount:a5 objectSubscoreCount:a6];
    self = [(PPScoreInterpreter *)self initWithBytecode:v12 scoreInputSet:0];
  }

  return self;
}

+ (id)scoreInterpreterFromFactorName:(id)a3 namespaceName:(id)a4
{
  v5 = [PPScoreInterpreterBytecode bytecodeFromFactorName:a3 namespaceName:a4];
  if (v5)
  {
    v6 = [[a1 alloc] initWithBytecode:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)scoreInterpreterFromAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [PPScoreInterpreterBytecode bytecodeFromAsset:v4];
  v7 = [v5 initWithBytecode:v6];

  return v7;
}

@end