id PPSReaderLog()
{
  if (PPSReaderLog_onceToken != -1)
  {
    PPSReaderLog_cold_1();
  }

  v1 = PPSReaderLog___logObj;

  return v1;
}

uint64_t PPSSQLiteRow::PPSSQLiteRow(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  *a1 = &unk_286FF27A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 20) = sqlite3_column_count(a2);
  *(a1 + 24) = MEMORY[0x277CBEC10];
  if (v5)
  {
    PPSSQLiteRow::setColumnNames(a1, v5);
  }

  return a1;
}

unsigned __int8 *PPSSQLiteRow::columnValueAsString(sqlite3_stmt **this, int a2)
{
  v2 = sqlite3_column_text(this[1], *(this + 4) + a2);
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v2];
  }

  return v2;
}

void sub_25E226530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PPSSQLiteDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

id logHandle()
{
  if (logHandle_onceToken != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle__logHandle;

  return v1;
}

id PPSCreateSubsystemCategoryPredicate(uint64_t a1, uint64_t a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K = %@ AND %K = %@)", @"subsystem", a1, @"category", a2];
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x277CCA920];
    v13[0] = v6;
    v13[1] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v10 = [v8 andPredicateWithSubpredicates:v9];

    v7 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

id PerfPowerServicesGetData(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v4 postDataRequest:v3 outError:a2];

  return v5;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<double,double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,double>>>(a1, a2);
  }

  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<double,double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E227830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25E227920(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t AWDMETRICSKCellularLteCdrxConfigReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v103 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v103 & 0x7F) << v5;
        if ((v103 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v104 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v13;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_173:
              *(a1 + 8) = v19;
              goto LABEL_201;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_173;
        case 2u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v115 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v115 & 0x7F) << v69;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v71;
          }

LABEL_185:
          v101 = 20;
          goto LABEL_200;
        case 3u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v114 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v114 & 0x7F) << v63;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_181:
          v101 = 44;
          goto LABEL_200;
        case 4u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v113 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v113 & 0x7F) << v57;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_177;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v59;
          }

LABEL_177:
          v101 = 24;
          goto LABEL_200;
        case 5u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            v112 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v112 & 0x7F) << v33;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_157:
          v101 = 28;
          goto LABEL_200;
        case 7u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            v111 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v111 & 0x7F) << v45;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v47;
          }

LABEL_165:
          v101 = 36;
          goto LABEL_200;
        case 8u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v110 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v110 & 0x7F) << v75;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v11 = v76++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_189;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v77;
          }

LABEL_189:
          v101 = 40;
          goto LABEL_200;
        case 9u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 68) |= 0x2000u;
          while (1)
          {
            v116 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v116 & 0x7F) << v81;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              LOBYTE(v87) = 0;
              goto LABEL_191;
            }
          }

          v87 = (v83 != 0) & ~[a2 hasError];
LABEL_191:
          *(a1 + 64) = v87;
          goto LABEL_201;
        case 0xAu:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 68) |= 0x400u;
          while (1)
          {
            v109 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v109 & 0x7F) << v94;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v96;
          }

LABEL_199:
          v101 = 52;
          goto LABEL_200;
        case 0xBu:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            v108 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v108 & 0x7F) << v88;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_195;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v90;
          }

LABEL_195:
          v101 = 32;
          goto LABEL_200;
        case 0xCu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 68) |= 0x200u;
          while (1)
          {
            v117 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v117 & 0x7F) << v27;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_153:
          v101 = 48;
          goto LABEL_200;
        case 0xDu:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            v107 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v107 & 0x7F) << v51;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v53;
          }

LABEL_169:
          v101 = 16;
          goto LABEL_200;
        case 0xEu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 68) |= 0x1000u;
          while (1)
          {
            v106 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v106 & 0x7F) << v39;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v41;
          }

LABEL_161:
          v101 = 60;
          goto LABEL_200;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 68) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_201;
      }

      while (1)
      {
        v105 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v105 & 0x7F) << v20;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_149;
        }
      }

      v26 = [a2 hasError] ? 0 : v22;
LABEL_149:
      v101 = 56;
LABEL_200:
      *(a1 + v101) = v26;
LABEL_201:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularLteDataInactivityBeforeIdleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularLtePagingCycleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v59 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v59 & 0x7F) << v34;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 20;
            break;
          case 6:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v58 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v58 & 0x7F) << v47;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 24;
            break;
          case 0xF:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v57 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v57 & 0x7F) << v21;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 32;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v61 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v61 & 0x7F) << v41;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 16;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v60 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v14;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 28;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularNrSDMActivationReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v215 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v215 & 0x7F) << v6;
      if ((v215 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          v215 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v215 & 0x7F) << v14;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_351:
            v214 = 16;
            goto LABEL_352;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_351;
      case 2u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 108) |= 0x80000u;
        while (1)
        {
          v215 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v215 & 0x7F) << v101;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_354;
          }
        }

        v46 = (v103 != 0) & ~[a2 hasError];
LABEL_354:
        v213 = 94;
        goto LABEL_405;
      case 3u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 108) |= 0x100000u;
        while (1)
        {
          v215 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v215 & 0x7F) << v77;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_339;
          }
        }

        v46 = (v79 != 0) & ~[a2 hasError];
LABEL_339:
        v213 = 95;
        goto LABEL_405;
      case 4u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 108) |= 0x4000000u;
        while (1)
        {
          v215 = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v215 & 0x7F) << v89;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_345;
          }
        }

        v46 = (v91 != 0) & ~[a2 hasError];
LABEL_345:
        v213 = 101;
        goto LABEL_405;
      case 5u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 108) |= 0x8000000u;
        while (1)
        {
          v215 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v215 & 0x7F) << v47;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_325;
          }
        }

        v46 = (v49 != 0) & ~[a2 hasError];
LABEL_325:
        v213 = 102;
        goto LABEL_405;
      case 6u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 108) |= 0x10000u;
        while (1)
        {
          v215 = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v215 & 0x7F) << v125;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v127;
        }

LABEL_368:
        v212 = 88;
        goto LABEL_410;
      case 7u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 108) |= 0x20000u;
        while (1)
        {
          v215 = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v215 & 0x7F) << v143;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_378;
          }
        }

        v46 = (v145 != 0) & ~[a2 hasError];
LABEL_378:
        v213 = 92;
        goto LABEL_405;
      case 8u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 108) |= 0x40000u;
        while (1)
        {
          v215 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v215 & 0x7F) << v95;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_347;
          }
        }

        v46 = (v97 != 0) & ~[a2 hasError];
LABEL_347:
        v213 = 93;
        goto LABEL_405;
      case 9u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 108) |= 0x80000000;
        while (1)
        {
          v215 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v215 & 0x7F) << v161;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_388;
          }
        }

        v46 = (v163 != 0) & ~[a2 hasError];
LABEL_388:
        v213 = 106;
        goto LABEL_405;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 108) |= 0x10u;
        while (1)
        {
          v215 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v215 & 0x7F) << v59;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_331;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v61;
        }

LABEL_331:
        v212 = 32;
        goto LABEL_410;
      case 0xBu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 108) |= 0x4000u;
        while (1)
        {
          v215 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v215 & 0x7F) << v155;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_386;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v157;
        }

LABEL_386:
        v212 = 80;
        goto LABEL_410;
      case 0xCu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 108) |= 0x1000000u;
        while (1)
        {
          v215 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v215 & 0x7F) << v40;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_323;
          }
        }

        v46 = (v42 != 0) & ~[a2 hasError];
LABEL_323:
        v213 = 99;
        goto LABEL_405;
      case 0xDu:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 108) |= 0x400000u;
        while (1)
        {
          v215 = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v215 & 0x7F) << v53;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_327;
          }
        }

        v46 = (v55 != 0) & ~[a2 hasError];
LABEL_327:
        v213 = 97;
        goto LABEL_405;
      case 0xEu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          v215 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v215 & 0x7F) << v137;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v139;
        }

LABEL_376:
        v212 = 36;
        goto LABEL_410;
      case 0xFu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 108) |= 0x8000u;
        while (1)
        {
          v215 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v215 & 0x7F) << v34;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_321:
        v212 = 84;
        goto LABEL_410;
      case 0x10u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          v215 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v215 & 0x7F) << v83;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_343;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v85;
        }

LABEL_343:
        v214 = 8;
LABEL_352:
        *(a1 + v214) = v20;
        continue;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 108) |= 8u;
        while (1)
        {
          v215 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v215 & 0x7F) << v28;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_317;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_317:
        v212 = 28;
        goto LABEL_410;
      case 0x12u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 108) |= 0x100u;
        while (1)
        {
          v215 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v215 & 0x7F) << v113;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v115;
        }

LABEL_360:
        v212 = 56;
        goto LABEL_410;
      case 0x13u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          v215 = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v215 & 0x7F) << v149;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_382;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v151;
        }

LABEL_382:
        v212 = 24;
        goto LABEL_410;
      case 0x14u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 108) |= 0x200u;
        while (1)
        {
          v215 = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v215 & 0x7F) << v185;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v187;
        }

LABEL_400:
        v212 = 60;
        goto LABEL_410;
      case 0x15u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 108) |= 0x40u;
        while (1)
        {
          v215 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v215 & 0x7F) << v119;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v121;
        }

LABEL_364:
        v212 = 48;
        goto LABEL_410;
      case 0x16u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 108) |= 0x400u;
        while (1)
        {
          v215 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v215 & 0x7F) << v131;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v133;
        }

LABEL_372:
        v212 = 64;
        goto LABEL_410;
      case 0x17u:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 108) |= 0x1000u;
        while (1)
        {
          v215 = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            v184 = [a2 data];
            [v184 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v215 & 0x7F) << v179;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v12 = v180++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v181;
        }

LABEL_396:
        v212 = 72;
        goto LABEL_410;
      case 0x18u:
        v191 = PBReaderReadString();
        v192 = *(a1 + 40);
        *(a1 + 40) = v191;

        continue;
      case 0x19u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 108) |= 0x800u;
        while (1)
        {
          v215 = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v215 & 0x7F) << v71;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v73;
        }

LABEL_337:
        v212 = 68;
        goto LABEL_410;
      case 0x1Au:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 108) |= 0x200000u;
        while (1)
        {
          v215 = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v215 & 0x7F) << v65;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_333;
          }
        }

        v46 = (v67 != 0) & ~[a2 hasError];
LABEL_333:
        v213 = 96;
        goto LABEL_405;
      case 0x1Bu:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 108) |= 0x80u;
        while (1)
        {
          v215 = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            v210 = [a2 data];
            [v210 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (v215 & 0x7F) << v205;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v12 = v206++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_409;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v207;
        }

LABEL_409:
        v212 = 52;
        goto LABEL_410;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 108) |= 0x2000u;
        while (1)
        {
          v215 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v215 & 0x7F) << v21;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_313:
        v212 = 76;
LABEL_410:
        *(a1 + v212) = v27;
        continue;
      case 0x1Du:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 108) |= 0x800000u;
        while (1)
        {
          v215 = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v215 & 0x7F) << v193;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v12 = v194++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_402;
          }
        }

        v46 = (v195 != 0) & ~[a2 hasError];
LABEL_402:
        v213 = 98;
        goto LABEL_405;
      case 0x1Eu:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 108) |= 0x20000000u;
        while (1)
        {
          v215 = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            v204 = [a2 data];
            [v204 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (v215 & 0x7F) << v199;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v12 = v200++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_404;
          }
        }

        v46 = (v201 != 0) & ~[a2 hasError];
LABEL_404:
        v213 = 104;
        goto LABEL_405;
      case 0x1Fu:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 108) |= 0x2000000u;
        while (1)
        {
          v215 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v215 & 0x7F) << v167;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_390;
          }
        }

        v46 = (v169 != 0) & ~[a2 hasError];
LABEL_390:
        v213 = 100;
        goto LABEL_405;
      case 0x20u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 108) |= 0x10000000u;
        while (1)
        {
          v215 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v215 & 0x7F) << v107;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_356;
          }
        }

        v46 = (v109 != 0) & ~[a2 hasError];
LABEL_356:
        v213 = 103;
        goto LABEL_405;
      case 0x21u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 108) |= 0x40000000u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v215 = 0;
      v176 = [a2 position] + 1;
      if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
      {
        v178 = [a2 data];
        [v178 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v175 |= (v215 & 0x7F) << v173;
      if ((v215 & 0x80) == 0)
      {
        break;
      }

      v173 += 7;
      v12 = v174++ >= 9;
      if (v12)
      {
        LOBYTE(v46) = 0;
        goto LABEL_392;
      }
    }

    v46 = (v175 != 0) & ~[a2 hasError];
LABEL_392:
    v213 = 105;
LABEL_405:
    *(a1 + v213) = v46;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularNrSdmEndcReleaseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 20;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 8u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 24;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPlatformApBbSleepStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45[0] & 0x7F) << v22;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            LOBYTE(v28) = 0;
            goto LABEL_65;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_65:
        *(a1 + 32) = v28;
        goto LABEL_79;
      }

      if (v13 == 5)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v45[0] & 0x7F) << v29;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v31;
        }

LABEL_69:
        v42 = 20;
LABEL_78:
        *(a1 + v42) = v21;
        goto LABEL_79;
      }

      if (v13 != 6)
      {
        goto LABEL_62;
      }

      v14 = objc_alloc_init(AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState);
      [a1 addState:v14];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPlatformApBbSleepStatsPlatformStateReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v38 = [a2 position] + 1;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v37 |= (v45[0] & 0x7F) << v35;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v11 = v36++ >= 9;
        if (v11)
        {
          v41 = 0;
          goto LABEL_73;
        }
      }

      if ([a2 hasError])
      {
        v41 = 0;
      }

      else
      {
        v41 = v37;
      }

LABEL_73:
      *(a1 + 8) = v41;
      goto LABEL_79;
    }

    if (v13 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v45[0] & 0x7F) << v15;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_77:
      v42 = 16;
      goto LABEL_78;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPlatformApBbSleepStatsPlatformStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v51 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v33;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__bbChipset;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__bbChipset;
            goto LABEL_86;
          case 5:
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v56 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v43;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationMs;
LABEL_86:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_89:
            *(a1 + *v22) = v21;
            goto LABEL_90;
          case 6:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v55 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v55 & 0x7F) << v23;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationUlpnMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationUlpnMs;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v54 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v54 & 0x7F) << v28;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__ap;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__ap;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v53 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v38;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__psPrefSim;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__psPrefSim;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v52 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__nonPsPrefSim;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__nonPsPrefSim;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerlogProtocolStackHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v235 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v235 & 0x7F) << v5;
        if ((v235 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      switch((v12 >> 3))
      {
        case 1u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 156) |= 1uLL;
          while (1)
          {
            v235 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v235 & 0x7F) << v14;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
LABEL_409:
              *(a1 + 8) = v20;
              goto LABEL_491;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

          goto LABEL_409;
        case 2u:
          v112 = 0;
          v113 = 0;
          v114 = 0;
          *(a1 + 156) |= 0x200000000uLL;
          while (1)
          {
            v235 = 0;
            v115 = [a2 position] + 1;
            if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
            {
              v117 = [a2 data];
              [v117 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v114 |= (v235 & 0x7F) << v112;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v112 += 7;
            v11 = v113++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_413;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v114;
          }

LABEL_413:
          v233 = 144;
          goto LABEL_490;
        case 3u:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 156) |= 2uLL;
          while (1)
          {
            v235 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v235 & 0x7F) << v88;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_389;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v90;
          }

LABEL_389:
          v233 = 16;
          goto LABEL_490;
        case 4u:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 156) |= 4uLL;
          while (1)
          {
            v235 = 0;
            v103 = [a2 position] + 1;
            if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
            {
              v105 = [a2 data];
              [v105 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v102 |= (v235 & 0x7F) << v100;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v11 = v101++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_401;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v102;
          }

LABEL_401:
          v233 = 20;
          goto LABEL_490;
        case 5u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 156) |= 0x2000uLL;
          while (1)
          {
            v235 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v235 & 0x7F) << v58;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_369;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v60;
          }

LABEL_369:
          v233 = 64;
          goto LABEL_490;
        case 6u:
          v142 = 0;
          v143 = 0;
          v144 = 0;
          *(a1 + 156) |= 0x1000000uLL;
          while (1)
          {
            v235 = 0;
            v145 = [a2 position] + 1;
            if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
            {
              v147 = [a2 data];
              [v147 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v144 |= (v235 & 0x7F) << v142;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v142 += 7;
            v11 = v143++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_433;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v144;
          }

LABEL_433:
          v233 = 108;
          goto LABEL_490;
        case 7u:
          v160 = 0;
          v161 = 0;
          v162 = 0;
          *(a1 + 156) |= 0x8000000uLL;
          while (1)
          {
            v235 = 0;
            v163 = [a2 position] + 1;
            if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
            {
              v165 = [a2 data];
              [v165 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v162 |= (v235 & 0x7F) << v160;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v160 += 7;
            v11 = v161++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_445;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v162;
          }

LABEL_445:
          v233 = 120;
          goto LABEL_490;
        case 8u:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 156) |= 0x10000000uLL;
          while (1)
          {
            v235 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v108 |= (v235 & 0x7F) << v106;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v11 = v107++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_405;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v108;
          }

LABEL_405:
          v233 = 124;
          goto LABEL_490;
        case 9u:
          v178 = 0;
          v179 = 0;
          v180 = 0;
          *(a1 + 156) |= 0x20000000uLL;
          while (1)
          {
            v235 = 0;
            v181 = [a2 position] + 1;
            if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
            {
              v183 = [a2 data];
              [v183 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v180 |= (v235 & 0x7F) << v178;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v178 += 7;
            v11 = v179++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_457;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v180;
          }

LABEL_457:
          v233 = 128;
          goto LABEL_490;
        case 0xAu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 156) |= 0x40000000uLL;
          while (1)
          {
            v235 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v235 & 0x7F) << v70;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_377;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v72;
          }

LABEL_377:
          v233 = 132;
          goto LABEL_490;
        case 0xBu:
          v172 = 0;
          v173 = 0;
          v174 = 0;
          *(a1 + 156) |= 0x80000000uLL;
          while (1)
          {
            v235 = 0;
            v175 = [a2 position] + 1;
            if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
            {
              v177 = [a2 data];
              [v177 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v174 |= (v235 & 0x7F) << v172;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v172 += 7;
            v11 = v173++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_453;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v174;
          }

LABEL_453:
          v233 = 136;
          goto LABEL_490;
        case 0xCu:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 156) |= 0x100000000uLL;
          while (1)
          {
            v235 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v235 & 0x7F) << v52;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_365;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v54;
          }

LABEL_365:
          v233 = 140;
          goto LABEL_490;
        case 0xDu:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 156) |= 8uLL;
          while (1)
          {
            v235 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v235 & 0x7F) << v64;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_373;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v66;
          }

LABEL_373:
          v233 = 24;
          goto LABEL_490;
        case 0xEu:
          v154 = 0;
          v155 = 0;
          v156 = 0;
          *(a1 + 156) |= 0x10uLL;
          while (1)
          {
            v235 = 0;
            v157 = [a2 position] + 1;
            if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
            {
              v159 = [a2 data];
              [v159 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v156 |= (v235 & 0x7F) << v154;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v154 += 7;
            v11 = v155++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_441;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v156;
          }

LABEL_441:
          v233 = 28;
          goto LABEL_490;
        case 0xFu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 156) |= 0x20uLL;
          while (1)
          {
            v235 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v235 & 0x7F) << v40;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_357;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_357:
          v233 = 32;
          goto LABEL_490;
        case 0x10u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 156) |= 0x40uLL;
          while (1)
          {
            v235 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v235 & 0x7F) << v94;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_393;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v96;
          }

LABEL_393:
          v233 = 36;
          goto LABEL_490;
        case 0x11u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 156) |= 0x80uLL;
          while (1)
          {
            v235 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v235 & 0x7F) << v34;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_353;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v36;
          }

LABEL_353:
          v233 = 40;
          goto LABEL_490;
        case 0x12u:
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *(a1 + 156) |= 0x100uLL;
          while (1)
          {
            v235 = 0;
            v127 = [a2 position] + 1;
            if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
            {
              v129 = [a2 data];
              [v129 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v126 |= (v235 & 0x7F) << v124;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v124 += 7;
            v11 = v125++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_421;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v126;
          }

LABEL_421:
          v233 = 44;
          goto LABEL_490;
        case 0x13u:
          v166 = 0;
          v167 = 0;
          v168 = 0;
          *(a1 + 156) |= 0x200uLL;
          while (1)
          {
            v235 = 0;
            v169 = [a2 position] + 1;
            if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
            {
              v171 = [a2 data];
              [v171 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v168 |= (v235 & 0x7F) << v166;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v166 += 7;
            v11 = v167++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_449;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v168;
          }

LABEL_449:
          v233 = 48;
          goto LABEL_490;
        case 0x14u:
          v202 = 0;
          v203 = 0;
          v204 = 0;
          *(a1 + 156) |= 0x400uLL;
          while (1)
          {
            v235 = 0;
            v205 = [a2 position] + 1;
            if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
            {
              v207 = [a2 data];
              [v207 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v204 |= (v235 & 0x7F) << v202;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v202 += 7;
            v11 = v203++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_473;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v204;
          }

LABEL_473:
          v233 = 52;
          goto LABEL_490;
        case 0x15u:
          v136 = 0;
          v137 = 0;
          v138 = 0;
          *(a1 + 156) |= 0x800uLL;
          while (1)
          {
            v235 = 0;
            v139 = [a2 position] + 1;
            if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
            {
              v141 = [a2 data];
              [v141 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v138 |= (v235 & 0x7F) << v136;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v136 += 7;
            v11 = v137++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_429;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v138;
          }

LABEL_429:
          v233 = 56;
          goto LABEL_490;
        case 0x16u:
          v148 = 0;
          v149 = 0;
          v150 = 0;
          *(a1 + 156) |= 0x1000uLL;
          while (1)
          {
            v235 = 0;
            v151 = [a2 position] + 1;
            if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
            {
              v153 = [a2 data];
              [v153 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v150 |= (v235 & 0x7F) << v148;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v148 += 7;
            v11 = v149++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_437;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v150;
          }

LABEL_437:
          v233 = 60;
          goto LABEL_490;
        case 0x17u:
          v196 = 0;
          v197 = 0;
          v198 = 0;
          *(a1 + 156) |= 0x4000uLL;
          while (1)
          {
            v235 = 0;
            v199 = [a2 position] + 1;
            if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
            {
              v201 = [a2 data];
              [v201 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v198 |= (v235 & 0x7F) << v196;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v196 += 7;
            v11 = v197++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_469;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v198;
          }

LABEL_469:
          v233 = 68;
          goto LABEL_490;
        case 0x18u:
          v208 = 0;
          v209 = 0;
          v210 = 0;
          *(a1 + 156) |= 0x8000uLL;
          while (1)
          {
            v235 = 0;
            v211 = [a2 position] + 1;
            if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
            {
              v213 = [a2 data];
              [v213 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v210 |= (v235 & 0x7F) << v208;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v208 += 7;
            v11 = v209++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_477;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v210;
          }

LABEL_477:
          v233 = 72;
          goto LABEL_490;
        case 0x19u:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 156) |= 0x10000uLL;
          while (1)
          {
            v235 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v235 & 0x7F) << v82;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_385;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v84;
          }

LABEL_385:
          v233 = 76;
          goto LABEL_490;
        case 0x1Au:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 156) |= 0x20000uLL;
          while (1)
          {
            v235 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v235 & 0x7F) << v76;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_381;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v78;
          }

LABEL_381:
          v233 = 80;
          goto LABEL_490;
        case 0x1Bu:
          v226 = 0;
          v227 = 0;
          v228 = 0;
          *(a1 + 156) |= 0x40000uLL;
          while (1)
          {
            v235 = 0;
            v229 = [a2 position] + 1;
            if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
            {
              v231 = [a2 data];
              [v231 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v228 |= (v235 & 0x7F) << v226;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v226 += 7;
            v11 = v227++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_489;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v228;
          }

LABEL_489:
          v233 = 84;
          goto LABEL_490;
        case 0x1Cu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 156) |= 0x80000uLL;
          while (1)
          {
            v235 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v235 & 0x7F) << v28;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_349;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }

LABEL_349:
          v233 = 88;
          goto LABEL_490;
        case 0x1Du:
          v214 = 0;
          v215 = 0;
          v216 = 0;
          *(a1 + 156) |= 0x100000uLL;
          while (1)
          {
            v235 = 0;
            v217 = [a2 position] + 1;
            if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
            {
              v219 = [a2 data];
              [v219 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v216 |= (v235 & 0x7F) << v214;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v214 += 7;
            v11 = v215++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_481;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v216;
          }

LABEL_481:
          v233 = 92;
          goto LABEL_490;
        case 0x1Eu:
          v220 = 0;
          v221 = 0;
          v222 = 0;
          *(a1 + 156) |= 0x200000uLL;
          while (1)
          {
            v235 = 0;
            v223 = [a2 position] + 1;
            if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
            {
              v225 = [a2 data];
              [v225 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v222 |= (v235 & 0x7F) << v220;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v220 += 7;
            v11 = v221++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_485;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v222;
          }

LABEL_485:
          v233 = 96;
          goto LABEL_490;
        case 0x1Fu:
          v184 = 0;
          v185 = 0;
          v186 = 0;
          *(a1 + 156) |= 0x400000uLL;
          while (1)
          {
            v235 = 0;
            v187 = [a2 position] + 1;
            if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
            {
              v189 = [a2 data];
              [v189 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v186 |= (v235 & 0x7F) << v184;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v184 += 7;
            v11 = v185++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_461;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v186;
          }

LABEL_461:
          v233 = 100;
          goto LABEL_490;
        case 0x20u:
          v118 = 0;
          v119 = 0;
          v120 = 0;
          *(a1 + 156) |= 0x800000uLL;
          while (1)
          {
            v235 = 0;
            v121 = [a2 position] + 1;
            if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
            {
              v123 = [a2 data];
              [v123 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v120 |= (v235 & 0x7F) << v118;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v118 += 7;
            v11 = v119++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_417;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v120;
          }

LABEL_417:
          v233 = 104;
          goto LABEL_490;
        case 0x21u:
          v190 = 0;
          v191 = 0;
          v192 = 0;
          *(a1 + 156) |= 0x2000000uLL;
          while (1)
          {
            v235 = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v235 & 0x7F) << v190;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v11 = v191++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_465;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v192;
          }

LABEL_465:
          v233 = 112;
          goto LABEL_490;
        case 0x22u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 156) |= 0x4000000uLL;
          while (1)
          {
            v235 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v235 & 0x7F) << v46;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_361;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v48;
          }

LABEL_361:
          v233 = 116;
          goto LABEL_490;
        default:
          if (v13 == 126)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            *(a1 + 156) |= 0x400000000uLL;
            while (1)
            {
              v235 = 0;
              v133 = [a2 position] + 1;
              if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
              {
                v135 = [a2 data];
                [v135 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v132 |= (v235 & 0x7F) << v130;
              if ((v235 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              v11 = v131++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_425;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v132;
            }

LABEL_425:
            v233 = 148;
            goto LABEL_490;
          }

          if (v13 == 127)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 156) |= 0x800000000uLL;
            while (1)
            {
              v235 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v235 & 0x7F) << v21;
              if ((v235 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_397;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_397:
            v233 = 152;
LABEL_490:
            *(a1 + v233) = v27;
            goto LABEL_491;
          }

          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

LABEL_491:
          v234 = [a2 position];
          if (v234 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerlogRrcModeHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v192 = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v192 & 0x7F) << v5;
          if ((v192 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v12 = 0;
            goto LABEL_15;
          }
        }

        v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
        if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
        {
          switch((v12 >> 3))
          {
            case 1u:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 128) |= 1u;
              while (1)
              {
                v192 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  v18 = [a2 data];
                  [v18 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v192 & 0x7F) << v13;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v11 = v14++ >= 9;
                if (v11)
                {
                  v19 = 0;
LABEL_341:
                  *(a1 + 8) = v19;
                  goto LABEL_399;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v15;
              }

              goto LABEL_341;
            case 2u:
              v106 = 0;
              v107 = 0;
              v108 = 0;
              *(a1 + 128) |= 0x4000u;
              while (1)
              {
                v192 = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  v111 = [a2 data];
                  [v111 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v192 & 0x7F) << v106;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v11 = v107++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_345;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v108;
              }

LABEL_345:
              v190 = 68;
              goto LABEL_398;
            case 3u:
              v82 = 0;
              v83 = 0;
              v84 = 0;
              *(a1 + 128) |= 0x8000u;
              while (1)
              {
                v192 = 0;
                v85 = [a2 position] + 1;
                if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                {
                  v87 = [a2 data];
                  [v87 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v84 |= (v192 & 0x7F) << v82;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v82 += 7;
                v11 = v83++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_325;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v84;
              }

LABEL_325:
              v190 = 72;
              goto LABEL_398;
            case 4u:
              v94 = 0;
              v95 = 0;
              v96 = 0;
              *(a1 + 128) |= 0x10000u;
              while (1)
              {
                v192 = 0;
                v97 = [a2 position] + 1;
                if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
                {
                  v99 = [a2 data];
                  [v99 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 |= (v192 & 0x7F) << v94;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                v11 = v95++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_333;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v96;
              }

LABEL_333:
              v190 = 76;
              goto LABEL_398;
            case 5u:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 128) |= 0x100000u;
              while (1)
              {
                v192 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v192 & 0x7F) << v52;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_305;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v54;
              }

LABEL_305:
              v190 = 92;
              goto LABEL_398;
            case 6u:
              v124 = 0;
              v125 = 0;
              v126 = 0;
              *(a1 + 128) |= 0x200000u;
              while (1)
              {
                v192 = 0;
                v127 = [a2 position] + 1;
                if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
                {
                  v129 = [a2 data];
                  [v129 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v126 |= (v192 & 0x7F) << v124;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v124 += 7;
                v11 = v125++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_357;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v126;
              }

LABEL_357:
              v190 = 96;
              goto LABEL_398;
            case 7u:
              v142 = 0;
              v143 = 0;
              v144 = 0;
              *(a1 + 128) |= 0x400000u;
              while (1)
              {
                v192 = 0;
                v145 = [a2 position] + 1;
                if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
                {
                  v147 = [a2 data];
                  [v147 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v144 |= (v192 & 0x7F) << v142;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v142 += 7;
                v11 = v143++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_369;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v144;
              }

LABEL_369:
              v190 = 100;
              goto LABEL_398;
            case 8u:
              v100 = 0;
              v101 = 0;
              v102 = 0;
              *(a1 + 128) |= 0x800000u;
              while (1)
              {
                v192 = 0;
                v103 = [a2 position] + 1;
                if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
                {
                  v105 = [a2 data];
                  [v105 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v102 |= (v192 & 0x7F) << v100;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v100 += 7;
                v11 = v101++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_337;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v102;
              }

LABEL_337:
              v190 = 104;
              goto LABEL_398;
            case 9u:
              v160 = 0;
              v161 = 0;
              v162 = 0;
              *(a1 + 128) |= 0x1000000u;
              while (1)
              {
                v192 = 0;
                v163 = [a2 position] + 1;
                if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
                {
                  v165 = [a2 data];
                  [v165 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v162 |= (v192 & 0x7F) << v160;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v160 += 7;
                v11 = v161++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_381;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v162;
              }

LABEL_381:
              v190 = 108;
              goto LABEL_398;
            case 0xAu:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 128) |= 0x2000000u;
              while (1)
              {
                v192 = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v192 & 0x7F) << v64;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_313;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v66;
              }

LABEL_313:
              v190 = 112;
              goto LABEL_398;
            case 0xBu:
              v154 = 0;
              v155 = 0;
              v156 = 0;
              *(a1 + 128) |= 0x4000000u;
              while (1)
              {
                v192 = 0;
                v157 = [a2 position] + 1;
                if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
                {
                  v159 = [a2 data];
                  [v159 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v156 |= (v192 & 0x7F) << v154;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v154 += 7;
                v11 = v155++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_377;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v156;
              }

LABEL_377:
              v190 = 116;
              goto LABEL_398;
            case 0xCu:
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 128) |= 0x8000000u;
              while (1)
              {
                v192 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v192 & 0x7F) << v46;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_301;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v48;
              }

LABEL_301:
              v190 = 120;
              goto LABEL_398;
            case 0xDu:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 128) |= 0x20000u;
              while (1)
              {
                v192 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v192 & 0x7F) << v58;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_309;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v60;
              }

LABEL_309:
              v190 = 80;
              goto LABEL_398;
            case 0xEu:
              v136 = 0;
              v137 = 0;
              v138 = 0;
              *(a1 + 128) |= 0x40000u;
              while (1)
              {
                v192 = 0;
                v139 = [a2 position] + 1;
                if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
                {
                  v141 = [a2 data];
                  [v141 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v138 |= (v192 & 0x7F) << v136;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                v11 = v137++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_365;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v138;
              }

LABEL_365:
              v190 = 84;
              goto LABEL_398;
            case 0xFu:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              *(a1 + 128) |= 0x80000u;
              while (1)
              {
                v192 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v192 & 0x7F) << v39;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_293;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v41;
              }

LABEL_293:
              v190 = 88;
              goto LABEL_398;
            case 0x10u:
              v88 = 0;
              v89 = 0;
              v90 = 0;
              *(a1 + 128) |= 2u;
              while (1)
              {
                v192 = 0;
                v91 = [a2 position] + 1;
                if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
                {
                  v93 = [a2 data];
                  [v93 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v90 |= (v192 & 0x7F) << v88;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v88 += 7;
                v11 = v89++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_329;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v90;
              }

LABEL_329:
              v190 = 16;
              goto LABEL_398;
            case 0x11u:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 128) |= 4u;
              while (1)
              {
                v192 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v192 & 0x7F) << v33;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_289;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v35;
              }

LABEL_289:
              v190 = 20;
              goto LABEL_398;
            case 0x12u:
              v112 = 0;
              v113 = 0;
              v114 = 0;
              *(a1 + 128) |= 0x40u;
              while (1)
              {
                v192 = 0;
                v115 = [a2 position] + 1;
                if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
                {
                  v117 = [a2 data];
                  [v117 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v114 |= (v192 & 0x7F) << v112;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v112 += 7;
                v11 = v113++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_349;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v114;
              }

LABEL_349:
              v190 = 36;
              goto LABEL_398;
            case 0x13u:
              v148 = 0;
              v149 = 0;
              v150 = 0;
              *(a1 + 128) |= 0x80u;
              while (1)
              {
                v192 = 0;
                v151 = [a2 position] + 1;
                if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
                {
                  v153 = [a2 data];
                  [v153 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v150 |= (v192 & 0x7F) << v148;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v148 += 7;
                v11 = v149++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_373;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v150;
              }

LABEL_373:
              v190 = 40;
              goto LABEL_398;
            case 0x14u:
              v172 = 0;
              v173 = 0;
              v174 = 0;
              *(a1 + 128) |= 0x100u;
              while (1)
              {
                v192 = 0;
                v175 = [a2 position] + 1;
                if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
                {
                  v177 = [a2 data];
                  [v177 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v174 |= (v192 & 0x7F) << v172;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v172 += 7;
                v11 = v173++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_389;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v174;
              }

LABEL_389:
              v190 = 44;
              goto LABEL_398;
            case 0x15u:
              v118 = 0;
              v119 = 0;
              v120 = 0;
              *(a1 + 128) |= 0x200u;
              while (1)
              {
                v192 = 0;
                v121 = [a2 position] + 1;
                if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
                {
                  v123 = [a2 data];
                  [v123 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v120 |= (v192 & 0x7F) << v118;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v118 += 7;
                v11 = v119++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_353;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v120;
              }

LABEL_353:
              v190 = 48;
              goto LABEL_398;
            case 0x16u:
              v130 = 0;
              v131 = 0;
              v132 = 0;
              *(a1 + 128) |= 0x400u;
              while (1)
              {
                v192 = 0;
                v133 = [a2 position] + 1;
                if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                {
                  v135 = [a2 data];
                  [v135 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v132 |= (v192 & 0x7F) << v130;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                v11 = v131++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_361;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v132;
              }

LABEL_361:
              v190 = 52;
              goto LABEL_398;
            case 0x17u:
              v166 = 0;
              v167 = 0;
              v168 = 0;
              *(a1 + 128) |= 0x800u;
              while (1)
              {
                v192 = 0;
                v169 = [a2 position] + 1;
                if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
                {
                  v171 = [a2 data];
                  [v171 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v168 |= (v192 & 0x7F) << v166;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v166 += 7;
                v11 = v167++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_385;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v168;
              }

LABEL_385:
              v190 = 56;
              goto LABEL_398;
            case 0x18u:
              v178 = 0;
              v179 = 0;
              v180 = 0;
              *(a1 + 128) |= 0x1000u;
              while (1)
              {
                v192 = 0;
                v181 = [a2 position] + 1;
                if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
                {
                  v183 = [a2 data];
                  [v183 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v180 |= (v192 & 0x7F) << v178;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v178 += 7;
                v11 = v179++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_393;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v180;
              }

LABEL_393:
              v190 = 60;
              goto LABEL_398;
            case 0x19u:
              v76 = 0;
              v77 = 0;
              v78 = 0;
              *(a1 + 128) |= 0x2000u;
              while (1)
              {
                v192 = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  v81 = [a2 data];
                  [v81 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v192 & 0x7F) << v76;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                v11 = v77++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_321;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v78;
              }

LABEL_321:
              v190 = 64;
              goto LABEL_398;
            case 0x1Au:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 128) |= 8u;
              while (1)
              {
                v192 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v192 & 0x7F) << v70;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_317;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v72;
              }

LABEL_317:
              v190 = 24;
              goto LABEL_398;
            case 0x1Bu:
              v184 = 0;
              v185 = 0;
              v186 = 0;
              *(a1 + 128) |= 0x10u;
              while (1)
              {
                v192 = 0;
                v187 = [a2 position] + 1;
                if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
                {
                  v189 = [a2 data];
                  [v189 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v186 |= (v192 & 0x7F) << v184;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v184 += 7;
                v11 = v185++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_397;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v186;
              }

LABEL_397:
              v190 = 28;
              goto LABEL_398;
            case 0x1Cu:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 128) |= 0x20u;
              while (1)
              {
                v192 = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v192 & 0x7F) << v27;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_285;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v29;
              }

LABEL_285:
              v190 = 32;
              goto LABEL_398;
            default:
              if ((v12 >> 3) == 127)
              {
                v20 = 0;
                v21 = 0;
                v22 = 0;
                *(a1 + 128) |= 0x10000000u;
                while (1)
                {
                  v192 = 0;
                  v23 = [a2 position] + 1;
                  if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                  {
                    v25 = [a2 data];
                    [v25 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v22 |= (v192 & 0x7F) << v20;
                  if ((v192 & 0x80) == 0)
                  {
                    break;
                  }

                  v20 += 7;
                  v11 = v21++ >= 9;
                  if (v11)
                  {
                    v26 = 0;
                    goto LABEL_297;
                  }
                }

                if ([a2 hasError])
                {
                  v26 = 0;
                }

                else
                {
                  v26 = v22;
                }

LABEL_297:
                v190 = 124;
LABEL_398:
                *(a1 + v190) = v26;
              }

              else
              {
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }
              }

LABEL_399:
              v191 = [a2 position];
              if (v191 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularWcdmaDataInactivityBeforeIdleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMetricLogPowerReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3985411)
      {
        if (v13 <= 3985679)
        {
          if (v13 > 3985671)
          {
            switch(v13)
            {
              case 0x3CD108:
                v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
                [a1 addKCellularWcdmaServingCellRx0RssiHist:v14];
                break;
              case 0x3CD109:
                v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
                [a1 addKCellularWcdmaServingCellRx1RssiHist:v14];
                break;
              case 0x3CD10C:
                v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
                [a1 addKCellularWcdmaTxPowerHist:v14];
                goto LABEL_89;
              default:
                goto LABEL_81;
            }
          }

          else
          {
            if (v13 == 3985412)
            {
              v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
              [a1 addKCellularGsmServingCellRssiHist:v14];
              goto LABEL_89;
            }

            if (v13 == 3985414)
            {
              v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
              [a1 addKCellularGsmTxPowerHist:v14];
LABEL_89:
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerlogProtocolStackHistReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              goto LABEL_210;
            }

            if (v13 != 3985671)
            {
              goto LABEL_81;
            }

            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
            [a1 addKCellularWcdmaRxDiversityHist:v14];
          }

          goto LABEL_94;
        }

        if (v13 > 3986179)
        {
          if (v13 == 3986180)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
            [a1 addKCellularLteServingCellRsrpHist:v14];
            goto LABEL_94;
          }

          if (v13 == 3986181)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
            [a1 addKCellularLteServingCellSinrHist:v14];
LABEL_94:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerlogRrcModeHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            goto LABEL_210;
          }

          if (v13 != 3986196)
          {
            goto LABEL_81;
          }

          v14 = objc_alloc_init(AWDMETRICSKCellularLteDataInactivityBeforeIdle);
          [a1 addKCellularLteDataInactivityBeforeIdle:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularLteDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
          {
LABEL_230:

            return 0;
          }
        }

        else
        {
          if (v13 == 3985680)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
            [a1 addKCellularWcdmaRabModeHist:v14];
            goto LABEL_89;
          }

          if (v13 == 3985681)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
            [a1 addKCellularWcdmaPsRabTypeHist:v14];
            goto LABEL_89;
          }

          if (v13 != 3985686)
          {
            goto LABEL_81;
          }

          v14 = objc_alloc_init(AWDMETRICSKCellularWcdmaDataInactivityBeforeIdle);
          [a1 addKCellularWcdmaDataInactivityBeforeIdle:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularWcdmaDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_230;
          }
        }
      }

      else if (v13 <= 3952671)
      {
        if (v13 <= 3952141)
        {
          switch(v13)
          {
            case 0x3C0003:
              v14 = objc_alloc_init(AWDMETRICSKCellularPerClientProfileTriggerCount);
              [a1 addKCellularPerClientProfileTriggerCount:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPerClientProfileTriggerCountReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              break;
            case 0x3C4E09:
              v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle);
              [a1 addKCellularPowerLogWcdmaPagingDRXCycle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              break;
            case 0x3C4E0A:
              v14 = objc_alloc_init(AWDMETRICSKCellularLtePagingCycle);
              [a1 addKCellularLtePagingCycle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularLtePagingCycleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              break;
            default:
              goto LABEL_81;
          }
        }

        else if (v13 > 3952663)
        {
          if (v13 == 3952664)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularNrSDMActivation);
            [a1 addKCellularNrSDMActivation:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularNrSDMActivationReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }
          }

          else
          {
            if (v13 != 3952665)
            {
LABEL_81:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_211;
            }

            v14 = objc_alloc_init(AWDMETRICSKCellularNrSdmEndcRelease);
            [a1 addKCellularNrSdmEndcRelease:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularNrSdmEndcReleaseReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }
          }
        }

        else if (v13 == 3952142)
        {
          v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRPagingDRXCycle);
          [a1 addKCellularPowerLogNRPagingDRXCycle:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRPagingDRXCycleReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_230;
          }
        }

        else
        {
          if (v13 != 3952152)
          {
            goto LABEL_81;
          }

          v14 = objc_alloc_init(AWDMETRICSKCellularLteCdrxConfig);
          [a1 addKCellularLteCdrxConfig:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularLteCdrxConfigReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_230;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 3962379:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteCaConfigActivateStats);
            [a1 addKCellularPowerLogLteCaConfigActivateStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962380:
          case 3962381:
          case 3962384:
          case 3962385:
          case 3962386:
          case 3962387:
          case 3962388:
          case 3962390:
          case 3962391:
          case 3962394:
          case 3962395:
          case 3962397:
          case 3962398:
          case 3962399:
          case 3962401:
          case 3962402:
          case 3962403:
          case 3962404:
          case 3962405:
          case 3962406:
          case 3962407:
          case 3962408:
          case 3962409:
          case 3962410:
          case 3962411:
          case 3962413:
          case 3962420:
          case 3962421:
          case 3962424:
          case 3962429:
          case 3962431:
          case 3962432:
          case 3962440:
          case 3962441:
          case 3962442:
          case 3962443:
          case 3962445:
          case 3962446:
          case 3962447:
          case 3962448:
          case 3962449:
          case 3962450:
          case 3962452:
          case 3962453:
          case 3962454:
          case 3962455:
          case 3962456:
          case 3962457:
          case 3962458:
          case 3962459:
          case 3962460:
          case 3962461:
          case 3962462:
          case 3962463:
          case 3962472:
          case 3962473:
            goto LABEL_81;
          case 3962382:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteCarrierComponentInfo);
            [a1 addKCellularPowerLogLteCarrierComponentInfo:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteCarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962383:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogAggregatedDLTBSHist);
            [a1 addKCellularPowerLogLTEAggregatedDLTBS:v14];
            goto LABEL_153;
          case 3962389:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogPowerEstimator);
            [a1 addKCellularPowerLogPowerEstimator:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogPowerEstimatorReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962392:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogProtocolStateHist);
            [a1 addKCellularPowerLogProtocolState:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogProtocolStateHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962393:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogPLMNSearchHist);
            [a1 addKCellularPowerLogPLMNSearch:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogPLMNSearchHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962396:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogGSMRABMode);
            [a1 addKCellularPowerLogGSMRABMode:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogGSMRABModeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962400:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSCGRel);
            [a1 addKCellularPowerLogNRSCGRel:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRSCGRelReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962412:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogWCDMACDRXConfig);
            [a1 addKCellularPowerLogWCDMACDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogWCDMACDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962414:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogWcdmaRrcStateChange);
            [a1 addKCellularPowerLogWcdmaRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogWcdmaRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962415:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteRrcStateChange);
            [a1 addKCellularPowerLogLteRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962416:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSystemEvent);
            [a1 addKCellularPowerLogSystemEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSystemEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962417:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogRatChangeEvent);
            [a1 addKCellularPowerLogRatReselectionEvent:v14];
            goto LABEL_178;
          case 3962418:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogRatChangeEvent);
            [a1 addKCellularPowerLogRatRedirectionEvent:v14];
LABEL_178:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogRatChangeEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962419:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogGsmRrcStateChange);
            [a1 addKCellularPowerLogGsmRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogGsmRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962422:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogServiceStatusEvent);
            [a1 addKCellularPowerLogServiceStatusEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogServiceStatusEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962423:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogPlmnSearchEvent);
            [a1 addKCellularPowerLogPlmnSearchEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogPlmnSearchEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962425:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNrSaRrcStateChange);
            [a1 addKCellularPowerLogNrSaRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNrSaRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962426:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRNSAENDCEvent);
            [a1 addKCellularPowerLogNRNSAENDCEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRNSAENDCEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962427:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfig);
            [a1 addKCellularPowerLogNRCdrxConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRCdrxConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962428:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRBWPHist);
            [a1 addKCellularPowerLogNRsub6BWP:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRBWPHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962430:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNrCaConfigActivateStats);
            [a1 addKCellularPowerLogNrCaConfigActivateStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962433:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCarrierComponentInfo);
            [a1 addKCellularPowerLogNRCarrierComponentInfo:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRCarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962434:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogAggregatedDLTBSHist);
            [a1 addKCellularPowerLogNRsub6DLTBS:v14];
LABEL_153:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogAggregatedDLTBSHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962435:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSub6RSRPHist);
            [a1 addKCellularPowerLogNRSub6RSRP:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRSub6RSRPHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962436:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSub6SINRHist);
            [a1 addKCellularPowerLogNRSub6SINR:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRSub6SINRHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962437:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist);
            [a1 addKCellularPowerLogLteNrRxDiversityHist:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteNrRxDiversityHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962438:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrTxPowerHist);
            [a1 addKCellularPowerLogLteNrTxPowerHist:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteNrTxPowerHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962439:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats);
            [a1 addKCellularPowerLogLteNrRxTxActivityStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962444:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSFTStateEvent);
            [a1 addKCellularPowerLogSFTState:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSFTStateEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962451:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSFTRxTxHist);
            [a1 addKCellularPowerLogSFTRxTx:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSFTRxTxHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962464:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogXOShutdown);
            [a1 addKCellularPowerLogXOShutdown:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogXOShutdownReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962465:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogCpuPerfLevels);
            [a1 addKCellularPowerLogCpuPerfLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogCpuPerfLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962466:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSocPerfLevels);
            [a1 addKCellularPowerLogSocPerfLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSocPerfLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962467:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogAcmPerfLevels);
            [a1 addKCellularPowerLogAcmPerfLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogAcmPerfLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962468:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCpsSleepStates:v14];
            goto LABEL_208;
          case 3962469:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCdpDSleepStates:v14];
            goto LABEL_208;
          case 3962470:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCdpUSleepStates:v14];
            goto LABEL_208;
          case 3962471:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCdpHSleepStates:v14];
            goto LABEL_208;
          case 3962474:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogL1CSleepStates:v14];
            goto LABEL_208;
          case 3962475:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogL1SSleepStates:v14];
            goto LABEL_208;
          case 3962476:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogDcsSleepStates:v14];
            goto LABEL_208;
          case 3962477:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLog2g3gSleepStates:v14];
LABEL_208:
            v17 = 0;
            v18 = 0;
            if (PBReaderPlaceMark() && (AWDMETRICSKCellularPowerLogSubsysSleepStatesReadFrom(v14, a2) & 1) != 0)
            {
              break;
            }

            goto LABEL_230;
          case 3962478:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSleepStates);
            [a1 addKCellularPowerLogSleepStates:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSleepStatesReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962479:
            v14 = objc_alloc_init(AWDMETRICSKCellularPlatformApBbSleepStats);
            [a1 addKCellularPlatformApBbSleepStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPlatformApBbSleepStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962480:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogGPSStates);
            [a1 addKCellularPowerLogGPSStates:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogGPSStatesReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962481:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRFSSVoltageLevels);
            [a1 addKCellularPowerlogRFSSVoltageLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerlogRFSSVoltageLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962482:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogBasebandSleepVeto);
            [a1 addKCellularPowerLogBasebandSleepVeto:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogBasebandSleepVetoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962483:
            v14 = objc_alloc_init(AWDMETRICSKCellularAcmSleepStats);
            [a1 addKCellularAcmSleepStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularAcmSleepStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          default:
            if (v13 == 3952672)
            {
              v14 = objc_alloc_init(AWDMETRICSKCellularNrDataInactivityBeforeIdle);
              [a1 addKCellularNrDataInactivityBeforeIdle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularNrDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }
            }

            else
            {
              if (v13 != 3962165)
              {
                goto LABEL_81;
              }

              v14 = objc_alloc_init(AWDMETRICSKCellularRfTunerHist);
              [a1 addKCellularRfTunerHist:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularRfTunerHistReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }
            }

            break;
        }
      }

LABEL_210:
      PBReaderRecallMark();

LABEL_211:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevelsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v119 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v119 & 0x7F) << v5;
        if ((v119 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x40000u;
          while (1)
          {
            v119 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v13;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v13 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__tdp;
            v21 = v14++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__tdp;
          goto LABEL_220;
        case 2u:
          v72 = 0;
          v73 = 0;
          v15 = 0;
          *(a1 + 88) |= 4u;
          while (1)
          {
            v119 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v72;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v72 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__dmdc0;
            v21 = v73++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__dmdc0;
          goto LABEL_220;
        case 3u:
          v52 = 0;
          v53 = 0;
          v15 = 0;
          *(a1 + 88) |= 8u;
          while (1)
          {
            v119 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v52;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v52 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__dmdc1;
            v21 = v53++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__dmdc1;
          goto LABEL_220;
        case 4u:
          v62 = 0;
          v63 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x10u;
          while (1)
          {
            v119 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v62;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v62 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__dmdc2;
            v21 = v63++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__dmdc2;
          goto LABEL_220;
        case 5u:
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x40u;
          while (1)
          {
            v119 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v37;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v37 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__gala;
            v21 = v38++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__gala;
          goto LABEL_220;
        case 6u:
          v82 = 0;
          v83 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x80000u;
          while (1)
          {
            v119 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v82;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v82 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__uplink;
            v21 = v83++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__uplink;
          goto LABEL_220;
        case 7u:
          v92 = 0;
          v93 = 0;
          v15 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            v119 = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v92;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v92 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__axibr;
            v21 = v93++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__axibr;
          goto LABEL_220;
        case 8u:
          v67 = 0;
          v68 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x1000u;
          while (1)
          {
            v119 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v67;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v67 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__rflc;
            v21 = v68++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__rflc;
          goto LABEL_220;
        case 9u:
          v107 = 0;
          v108 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x80u;
          while (1)
          {
            v119 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v107;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v107 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgAggregatedBw;
            v21 = v108++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgAggregatedBw;
          goto LABEL_220;
        case 0xAu:
          v47 = 0;
          v48 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x200u;
          while (1)
          {
            v119 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v47;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v47 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgDlCcConfigured;
            v21 = v48++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgDlCcConfigured;
          goto LABEL_220;
        case 0xBu:
          v102 = 0;
          v103 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x100u;
          while (1)
          {
            v119 = 0;
            v104 = [a2 position] + 1;
            if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
            {
              v106 = [a2 data];
              [v106 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v102;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v102 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgDlCcActivated;
            v21 = v103++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgDlCcActivated;
          goto LABEL_220;
        case 0xCu:
          v32 = 0;
          v33 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x800u;
          while (1)
          {
            v119 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v32;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v32 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgUlCcConfigured;
            v21 = v33++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgUlCcConfigured;
          goto LABEL_220;
        case 0xDu:
          v42 = 0;
          v43 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x400u;
          while (1)
          {
            v119 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v42;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v42 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgUlCcActivated;
            v21 = v43++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__mcgUlCcActivated;
          goto LABEL_220;
        case 0xEu:
          v87 = 0;
          v88 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x2000u;
          while (1)
          {
            v119 = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v87;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v87 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgAggregatedBw;
            v21 = v88++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgAggregatedBw;
          goto LABEL_220;
        case 0xFu:
          v27 = 0;
          v28 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x8000u;
          while (1)
          {
            v119 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v27;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v27 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgDlCcConfigured;
            v21 = v28++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgDlCcConfigured;
          goto LABEL_220;
        case 0x10u:
          v57 = 0;
          v58 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x4000u;
          while (1)
          {
            v119 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v57;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v57 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgDlCcActivated;
            v21 = v58++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgDlCcActivated;
          goto LABEL_220;
        case 0x11u:
          v22 = 0;
          v23 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x20000u;
          while (1)
          {
            v119 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v22;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v22 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgUlCcConfigured;
            v21 = v23++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgUlCcConfigured;
          goto LABEL_220;
        case 0x12u:
          v77 = 0;
          v78 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x10000u;
          while (1)
          {
            v119 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v77;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v77 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgUlCcActivated;
            v21 = v78++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__scgUlCcActivated;
          goto LABEL_220;
        case 0x13u:
          v97 = 0;
          v98 = 0;
          v15 = 0;
          *(a1 + 88) |= 0x20u;
          while (1)
          {
            v119 = 0;
            v99 = [a2 position] + 1;
            if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v119 & 0x7F) << v97;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v97 += 7;
            v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__durationMs;
            v21 = v98++ > 8;
            if (v21)
            {
              goto LABEL_223;
            }
          }

          v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__durationMs;
          goto LABEL_220;
        case 0x14u:
          v112 = 0;
          v113 = 0;
          v15 = 0;
          *(a1 + 88) |= 2u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_224;
          }

          return 0;
      }

      while (1)
      {
        v119 = 0;
        v114 = [a2 position] + 1;
        if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
        {
          v116 = [a2 data];
          [v116 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v119 & 0x7F) << v112;
        if ((v119 & 0x80) == 0)
        {
          break;
        }

        v19 = 0;
        v112 += 7;
        v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__deployment;
        v21 = v113++ > 8;
        if (v21)
        {
          goto LABEL_223;
        }
      }

      v20 = &OBJC_IVAR___AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels__deployment;
LABEL_220:
      v19 = [a2 hasError] ? 0 : v15;
LABEL_223:
      *(a1 + *v20) = v19;
LABEL_224:
      v117 = [a2 position];
    }

    while (v117 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogAcmPerfLevelsMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v39 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v39 & 0x7F) << v21;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_52:
          *(a1 + 8) = v27;
          goto LABEL_62;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_60;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_60:
        v35 = 16;
      }

      *(a1 + v35) = v20;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}