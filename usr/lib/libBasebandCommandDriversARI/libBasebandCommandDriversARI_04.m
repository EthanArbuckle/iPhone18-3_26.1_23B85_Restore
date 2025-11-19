void sub_296DB0FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27)
{
  std::runtime_error::~runtime_error(&a27);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v29);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(&v31);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v30);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a23 + 16));
  __cxa_rethrow();
}

void sub_296DB1044(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v4);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(&v6);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DB1014);
}

void sub_296DB108C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296DB10B8);
}

void ___ZN7desense16ARICommandDriver4initEv_block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D Stopped", v2, 2u);
  }
}

uint64_t desense::ARICommandDriver::handleCurrentFrequencyInfoIndication_sync(desense::ARICommandDriver *this, const unsigned __int8 *a2)
{
  v193 = *MEMORY[0x29EDCA608];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v190 = v3;
  v191 = v3;
  v188 = v3;
  v189 = v3;
  v186[3] = v3;
  v187 = v3;
  v186[1] = v3;
  v186[2] = v3;
  v186[0] = v3;
  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(v186, a2);
  v4 = AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::unpack(v186);
  v5 = v4;
  if (v4)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = v5;
      v8 = "#N Could not unpack IBIMsAccCurrentFreqInfoIndCb: %s (%d)";
LABEL_7:
      _os_log_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (!**(&v187 + 1))
  {
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    v183 = &v183;
    v184 = &v183;
    v185 = 0;
    v180 = &v180;
    v181 = &v180;
    v182 = 0;
    v177 = &v177;
    v178 = &v177;
    v179 = 0;
    v174 = &v174;
    v175 = &v174;
    v176 = 0;
    v171 = &v171;
    v172 = &v171;
    v173 = 0;
    v13 = *(&v188 + 1);
    v14 = **(&v188 + 1);
    if (**(&v188 + 1))
    {
      v15 = *(*(&v188 + 1) + 12);
      v4 = operator new(0x20uLL);
      v16 = v4;
      v17 = *(v13 + 4);
      v4[6] = v15;
      *(v4 + 1) = buf;
      *(v4 + 2) = v17;
      *v4 = buf;
      *buf = v4;
      *&buf[8] = v4;
      *&buf[16] = 1;
      if (v14 != 1)
      {
        v18 = *(v13 + 24);
        v4 = operator new(0x20uLL);
        v19 = *(v13 + 16);
        v4[6] = v18;
        *(v4 + 1) = buf;
        *(v4 + 2) = v19;
        *v4 = v16;
        *(v16 + 1) = v4;
        *buf = v4;
        *&buf[16] = 2;
      }
    }

    v20 = capabilities::abs::nonPrimaryDLServingCellBandwidthMaxValue(v4);
    if (*v189)
    {
      if (*v189 >= 0x14u)
      {
        v21 = 20;
      }

      else
      {
        v21 = *v189;
      }

      v22 = v183;
      v23 = (v189 + 12);
      v24 = v185 + 1;
      do
      {
        v25 = *v23;
        v26 = operator new(0x20uLL);
        v27 = *(v23 - 1);
        v26[1] = &v183;
        v26[2] = v27;
        if (v25 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v25;
        }

        *(v26 + 6) = v28;
        *v26 = v22;
        v22[1] = v26;
        v183 = v26;
        v185 = v24;
        v23 += 3;
        ++v24;
        v22 = v26;
        --v21;
      }

      while (v21);
    }

    if (**(&v189 + 1))
    {
      if (**(&v189 + 1) >= 0x40u)
      {
        v29 = 64;
      }

      else
      {
        v29 = **(&v189 + 1);
      }

      v30 = v180;
      v31 = (*(&v189 + 1) + 12);
      v32 = v182 + 1;
      do
      {
        v33 = *v31;
        v34 = operator new(0x20uLL);
        v35 = *(v31 - 1);
        v34[1] = &v180;
        v34[2] = v35;
        if (v33 >= v20)
        {
          v36 = v20;
        }

        else
        {
          v36 = v33;
        }

        *(v34 + 6) = v36;
        *v34 = v30;
        v30[1] = v34;
        v180 = v34;
        v182 = v32;
        v31 += 3;
        ++v32;
        v30 = v34;
        --v29;
      }

      while (v29);
    }

    if (*v190)
    {
      if (*v190 >= 0x64u)
      {
        v37 = 100;
      }

      else
      {
        v37 = *v190;
      }

      v38 = v177;
      v39 = (v190 + 12);
      v40 = v179 + 1;
      do
      {
        v41 = *v39;
        v42 = operator new(0x20uLL);
        v43 = *(v39 - 1);
        v42[1] = &v177;
        v42[2] = v43;
        if (v41 >= v20)
        {
          v44 = v20;
        }

        else
        {
          v44 = v41;
        }

        *(v42 + 6) = v44;
        *v42 = v38;
        v38[1] = v42;
        v177 = v42;
        v179 = v40;
        v39 += 3;
        ++v40;
        v38 = v42;
        --v37;
      }

      while (v37);
    }

    if (**(&v190 + 1))
    {
      if (**(&v190 + 1) >= 0x46u)
      {
        v45 = 70;
      }

      else
      {
        v45 = **(&v190 + 1);
      }

      v46 = v174;
      v47 = (*(&v190 + 1) + 12);
      v48 = v176 + 1;
      do
      {
        v49 = *v47;
        v50 = operator new(0x20uLL);
        v51 = *(v47 - 1);
        v50[1] = &v174;
        v50[2] = v51;
        if (v49 >= v20)
        {
          v52 = v20;
        }

        else
        {
          v52 = v49;
        }

        *(v50 + 6) = v52;
        *v50 = v46;
        v46[1] = v50;
        v174 = v50;
        v176 = v48;
        v47 += 3;
        ++v48;
        v46 = v50;
        --v45;
      }

      while (v45);
    }

    v53 = v188;
    v54 = *v188;
    if (*v188)
    {
      v55 = v54 >= 4 ? 4 : *v188;
      v56 = v173;
      v57 = v171;
      v58 = *(v188 + 12);
      v59 = operator new(0x20uLL);
      v60 = *(v53 + 4);
      v59[6] = v58;
      *(v59 + 1) = &v171;
      *(v59 + 2) = v60;
      *v59 = v57;
      v57[1] = v59;
      v171 = v59;
      v173 = v56 + 1;
      if (v54 != 1)
      {
        v61 = v55 - 1;
        v62 = (v53 + 24);
        v63 = v56 + 2;
        do
        {
          v64 = *v62;
          v65 = operator new(0x20uLL);
          v66 = *(v62 - 1);
          v65[1] = &v171;
          v65[2] = v66;
          if (v64 >= v20)
          {
            v67 = v20;
          }

          else
          {
            v67 = v64;
          }

          *(v65 + 6) = v67;
          *v65 = v59;
          *(v59 + 1) = v65;
          v171 = v65;
          v173 = v63;
          v62 += 3;
          ++v63;
          v59 = v65;
          --v61;
        }

        while (v61);
      }
    }

    v169 = 0;
    v170 = 0;
    v168 = &v169;
    v68 = operator new(0x40uLL);
    v69 = &v169;
    v68[4] = *MEMORY[0x29EDC9118];
    v68[5] = (v68 + 5);
    v68[6] = (v68 + 5);
    v68[7] = 0;
    *v68 = 0;
    v68[1] = 0;
    v68[2] = &v169;
    v168 = v68;
    v169 = v68;
    *(v68 + 24) = 1;
    v170 = 1;
    std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v68 + 5, v68 + 5, *&buf[8], buf);
    v70 = v169;
    v71 = *MEMORY[0x29EDC9110];
    v72 = &v169;
    v73 = &v169;
    if (v169)
    {
      while (1)
      {
        while (1)
        {
          v73 = v70;
          v74 = v70[4];
          if (v71 >= v74)
          {
            break;
          }

          v70 = *v73;
          v72 = v73;
          if (!*v73)
          {
            goto LABEL_65;
          }
        }

        if (v74 >= v71)
        {
          break;
        }

        v70 = v73[1];
        if (!v70)
        {
          v72 = v73 + 1;
          goto LABEL_65;
        }
      }

      v75 = v73;
      v76 = (v73 + 5);
      if (v76 == &v183)
      {
LABEL_84:
        v84 = v169;
        v85 = *MEMORY[0x29EDC9120];
        v86 = &v169;
        v87 = &v169;
        if (v169)
        {
          while (1)
          {
            while (1)
            {
              v87 = v84;
              v88 = v84[4];
              if (v85 >= v88)
              {
                break;
              }

              v84 = *v87;
              v86 = v87;
              if (!*v87)
              {
                goto LABEL_91;
              }
            }

            if (v88 >= v85)
            {
              break;
            }

            v84 = v87[1];
            if (!v84)
            {
              v86 = v87 + 1;
              goto LABEL_91;
            }
          }

          v89 = v87;
          v90 = (v87 + 5);
          if (v90 == &v180)
          {
LABEL_110:
            v98 = v169;
            v99 = *MEMORY[0x29EDC9130];
            v100 = &v169;
            v101 = &v169;
            if (v169)
            {
              while (1)
              {
                while (1)
                {
                  v101 = v98;
                  v102 = v98[4];
                  if (v99 >= v102)
                  {
                    break;
                  }

                  v98 = *v101;
                  v100 = v101;
                  if (!*v101)
                  {
                    goto LABEL_117;
                  }
                }

                if (v102 >= v99)
                {
                  break;
                }

                v98 = v101[1];
                if (!v98)
                {
                  v100 = v101 + 1;
                  goto LABEL_117;
                }
              }

              v103 = v101;
              v104 = (v101 + 5);
              if (v104 == &v177)
              {
LABEL_136:
                v112 = v169;
                v113 = *MEMORY[0x29EDC9108];
                v114 = &v169;
                v115 = &v169;
                if (v169)
                {
                  while (1)
                  {
                    while (1)
                    {
                      v115 = v112;
                      v116 = v112[4];
                      if (v113 >= v116)
                      {
                        break;
                      }

                      v112 = *v115;
                      v114 = v115;
                      if (!*v115)
                      {
                        goto LABEL_143;
                      }
                    }

                    if (v116 >= v113)
                    {
                      break;
                    }

                    v112 = v115[1];
                    if (!v112)
                    {
                      v114 = v115 + 1;
                      goto LABEL_143;
                    }
                  }

                  v117 = v115;
                  v118 = (v115 + 5);
                  if (v118 == &v174)
                  {
LABEL_162:
                    v126 = v169;
                    v127 = *MEMORY[0x29EDC9128];
                    v128 = &v169;
                    if (v169)
                    {
                      while (1)
                      {
                        while (1)
                        {
                          v128 = v126;
                          v129 = v126[4];
                          if (v127 >= v129)
                          {
                            break;
                          }

                          v126 = *v128;
                          v69 = v128;
                          if (!*v128)
                          {
                            goto LABEL_169;
                          }
                        }

                        if (v129 >= v127)
                        {
                          break;
                        }

                        v126 = v128[1];
                        if (!v126)
                        {
                          v69 = v128 + 1;
                          goto LABEL_169;
                        }
                      }

                      v130 = v128;
                      v131 = (v128 + 5);
                      if (v131 == &v171)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
LABEL_169:
                      v130 = operator new(0x40uLL);
                      v130[4] = v127;
                      v130[5] = (v130 + 5);
                      v130[6] = (v130 + 5);
                      v130[7] = 0;
                      *v130 = 0;
                      v130[1] = 0;
                      v130[2] = v128;
                      *v69 = v130;
                      if (*v168)
                      {
                        v168 = *v168;
                      }

                      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v130);
                      ++v170;
                      v131 = v130 + 5;
                      if (v130 + 5 == &v171)
                      {
                        goto LABEL_188;
                      }
                    }

                    v132 = v172;
                    for (i = v130[6]; v132 != &v171 && i != v131; i = i[1])
                    {
                      i[2] = *(v132 + 16);
                      *(i + 6) = *(v132 + 24);
                      v132 = *(v132 + 8);
                    }

                    if (i == v131)
                    {
                      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v131, v131, v132, &v171);
                    }

                    else
                    {
                      v136 = *(v130[5] + 8);
                      v137 = *i;
                      *(v137 + 8) = v136;
                      *v136 = v137;
                      do
                      {
                        v138 = i[1];
                        --v130[7];
                        operator delete(i);
                        i = v138;
                      }

                      while (v138 != v131);
                    }

LABEL_188:
                    v167[0] = 0;
                    v167[1] = 0;
                    v166 = v167;
                    v139 = v168;
                    if (v168 != &v169)
                    {
                      do
                      {
                        std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v166, v167, v139[4], v139 + 4);
                        v164 = v139[1];
                        if (v164)
                        {
                          do
                          {
                            v165 = v164;
                            v164 = *v164;
                          }

                          while (v164);
                        }

                        else
                        {
                          do
                          {
                            v165 = v139[2];
                            v79 = *v165 == v139;
                            v139 = v165;
                          }

                          while (!v79);
                        }

                        v139 = v165;
                      }

                      while (v165 != &v169);
                    }

                    desense::ARICommandDriver::sendFrequencyReport_sync(this, &v166, 0);
                    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v167[0]);
                    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v169);
                    if (v173)
                    {
                      v140 = v172;
                      v141 = v171[1];
                      v142 = *v172;
                      *(v142 + 8) = v141;
                      *v141 = v142;
                      v173 = 0;
                      if (v140 != &v171)
                      {
                        do
                        {
                          v143 = v140[1];
                          operator delete(v140);
                          v140 = v143;
                        }

                        while (v143 != &v171);
                      }
                    }

                    if (v176)
                    {
                      v144 = v175;
                      v145 = v174[1];
                      v146 = *v175;
                      *(v146 + 8) = v145;
                      *v145 = v146;
                      v176 = 0;
                      if (v144 != &v174)
                      {
                        do
                        {
                          v147 = v144[1];
                          operator delete(v144);
                          v144 = v147;
                        }

                        while (v147 != &v174);
                      }
                    }

                    if (v179)
                    {
                      v148 = v178;
                      v149 = v177[1];
                      v150 = *v178;
                      *(v150 + 8) = v149;
                      *v149 = v150;
                      v179 = 0;
                      if (v148 != &v177)
                      {
                        do
                        {
                          v151 = v148[1];
                          operator delete(v148);
                          v148 = v151;
                        }

                        while (v151 != &v177);
                      }
                    }

                    if (v182)
                    {
                      v152 = v181;
                      v153 = v180[1];
                      v154 = *v181;
                      *(v154 + 8) = v153;
                      *v153 = v154;
                      v182 = 0;
                      if (v152 != &v180)
                      {
                        do
                        {
                          v155 = v152[1];
                          operator delete(v152);
                          v152 = v155;
                        }

                        while (v155 != &v180);
                      }
                    }

                    if (v185)
                    {
                      v156 = v184;
                      v157 = v183[1];
                      v158 = *v184;
                      *(v158 + 8) = v157;
                      *v157 = v158;
                      v185 = 0;
                      if (v156 != &v183)
                      {
                        do
                        {
                          v159 = v156[1];
                          operator delete(v156);
                          v156 = v159;
                        }

                        while (v159 != &v183);
                      }
                    }

                    if (*&buf[16])
                    {
                      v160 = *&buf[8];
                      v161 = *(*buf + 8);
                      v162 = **&buf[8];
                      *(v162 + 8) = v161;
                      *v161 = v162;
                      *&buf[16] = 0;
                      if (v160 != buf)
                      {
                        do
                        {
                          v163 = v160[1];
                          operator delete(v160);
                          v160 = v163;
                        }

                        while (v163 != buf);
                      }
                    }

                    goto LABEL_8;
                  }
                }

                else
                {
LABEL_143:
                  v117 = operator new(0x40uLL);
                  v117[4] = v113;
                  v117[5] = (v117 + 5);
                  v117[6] = (v117 + 5);
                  v117[7] = 0;
                  *v117 = 0;
                  v117[1] = 0;
                  v117[2] = v115;
                  *v114 = v117;
                  if (*v168)
                  {
                    v168 = *v168;
                  }

                  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v117);
                  ++v170;
                  v118 = v117 + 5;
                  if (v117 + 5 == &v174)
                  {
                    goto LABEL_162;
                  }
                }

                v119 = v175;
                for (j = v117[6]; v119 != &v174 && j != v118; j = j[1])
                {
                  j[2] = *(v119 + 16);
                  *(j + 6) = *(v119 + 24);
                  v119 = *(v119 + 8);
                }

                if (j == v118)
                {
                  std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v118, v118, v119, &v174);
                }

                else
                {
                  v123 = *(v117[5] + 8);
                  v124 = *j;
                  *(v124 + 8) = v123;
                  *v123 = v124;
                  do
                  {
                    v125 = j[1];
                    --v117[7];
                    operator delete(j);
                    j = v125;
                  }

                  while (v125 != v118);
                }

                goto LABEL_162;
              }
            }

            else
            {
LABEL_117:
              v103 = operator new(0x40uLL);
              v103[4] = v99;
              v103[5] = (v103 + 5);
              v103[6] = (v103 + 5);
              v103[7] = 0;
              *v103 = 0;
              v103[1] = 0;
              v103[2] = v101;
              *v100 = v103;
              if (*v168)
              {
                v168 = *v168;
              }

              std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v103);
              ++v170;
              v104 = v103 + 5;
              if (v103 + 5 == &v177)
              {
                goto LABEL_136;
              }
            }

            v105 = v178;
            for (k = v103[6]; v105 != &v177 && k != v104; k = k[1])
            {
              k[2] = *(v105 + 16);
              *(k + 6) = *(v105 + 24);
              v105 = *(v105 + 8);
            }

            if (k == v104)
            {
              std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v104, v104, v105, &v177);
            }

            else
            {
              v109 = *(v103[5] + 8);
              v110 = *k;
              *(v110 + 8) = v109;
              *v109 = v110;
              do
              {
                v111 = k[1];
                --v103[7];
                operator delete(k);
                k = v111;
              }

              while (v111 != v104);
            }

            goto LABEL_136;
          }
        }

        else
        {
LABEL_91:
          v89 = operator new(0x40uLL);
          v89[4] = v85;
          v89[5] = (v89 + 5);
          v89[6] = (v89 + 5);
          v89[7] = 0;
          *v89 = 0;
          v89[1] = 0;
          v89[2] = v87;
          *v86 = v89;
          if (*v168)
          {
            v168 = *v168;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v89);
          ++v170;
          v90 = v89 + 5;
          if (v89 + 5 == &v180)
          {
            goto LABEL_110;
          }
        }

        v91 = v181;
        for (m = v89[6]; v91 != &v180 && m != v90; m = m[1])
        {
          m[2] = *(v91 + 16);
          *(m + 6) = *(v91 + 24);
          v91 = *(v91 + 8);
        }

        if (m == v90)
        {
          std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v90, v90, v91, &v180);
        }

        else
        {
          v95 = *(v89[5] + 8);
          v96 = *m;
          *(v96 + 8) = v95;
          *v95 = v96;
          do
          {
            v97 = m[1];
            --v89[7];
            operator delete(m);
            m = v97;
          }

          while (v97 != v90);
        }

        goto LABEL_110;
      }
    }

    else
    {
LABEL_65:
      v75 = operator new(0x40uLL);
      v75[4] = v71;
      v75[5] = (v75 + 5);
      v75[6] = (v75 + 5);
      v75[7] = 0;
      *v75 = 0;
      v75[1] = 0;
      v75[2] = v73;
      *v72 = v75;
      if (*v168)
      {
        v168 = *v168;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v75);
      ++v170;
      v76 = v75 + 5;
      if (v75 + 5 == &v183)
      {
        goto LABEL_84;
      }
    }

    v77 = v184;
    v78 = v75[6];
    v79 = v184 == &v183 || v78 == v76;
    if (!v79)
    {
      do
      {
        v78[2] = *(v77 + 16);
        *(v78 + 6) = *(v77 + 24);
        v77 = *(v77 + 8);
        v78 = v78[1];
      }

      while (v77 != &v183 && v78 != v76);
    }

    if (v78 == v76)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v76, v76, v77, &v183);
    }

    else
    {
      v81 = *(v75[5] + 8);
      v82 = *v78;
      *(v82 + 8) = v81;
      *v81 = v82;
      do
      {
        v83 = v78[1];
        --v75[7];
        operator delete(v78);
        v78 = v83;
      }

      while (v83 != v76);
    }

    goto LABEL_84;
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    v10 = **(&v187 + 1);
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v8 = "#N Current frequency info indication failed: %s (%d)";
    goto LABEL_7;
  }

LABEL_8:
  result = MEMORY[0x29C265400](v186);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DB1EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a16);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a19);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a22);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a25);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a28);
  std::list<std::pair<unsigned long long,unsigned int>>::~list((v31 - 112));
  MEMORY[0x29C265400](&a31);
  _Unwind_Resume(a1);
}

uint64_t desense::ARICommandDriver::setFrequencyReportingMode(void *a1, uint64_t a2, unsigned int a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = desense::asString();
    _os_log_impl(&dword_296D7D000, v5, OS_LOG_TYPE_DEFAULT, "#I Set Frequency reporting mode: %s", buf, 0xCu);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v6;
  *__p = v6;
  v34 = v6;
  v35 = v6;
  *buf = v6;
  AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::ARI_IBIMsAccCurrentFreqInfoReq_SDK(buf);
  v7 = operator new(4uLL);
  *v7 = 0;
  v8 = __p[0];
  __p[0] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  if (a3 < 3)
  {
    v9 = operator new(4uLL);
    *v9 = a3;
    v10 = __p[1];
    __p[1] = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = a1[17];
    v13 = a1[1];
    v12 = a1[2];
    if (!v12 || (v14 = std::__shared_weak_count::lock(v12), (v29 = v14) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v15 = v14;
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    p_shared_weak_owners = &v14->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v15);
    }

    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v17 = operator new(0x38uLL);
    v17->__shared_owners_ = 0;
    p_shared_owners = &v17->__shared_owners_;
    v17->__shared_weak_owners_ = 0;
    v17->__vftable = &unk_2A1E0C318;
    v17[1].__vftable = v13;
    v17[1].__shared_owners_ = v15;
    v17[1].__shared_weak_owners_ = desense::ARICommandDriver::handleSetFrequencyReportingModeResponse_sync;
    v17[2].__vftable = 0;
    *&v38 = MEMORY[0x29EDCA5F8];
    *(&v38 + 1) = 1174405120;
    v39 = ___ZN3ice6detail12wrapCallbackIZNS_6Client4sendIN6AriSdk34ARI_IBIMsAccCurrentFreqInfoReq_SDKEN7desense13CommandDriverENS6_16ARICommandDriverEvJPKhjEEENS_16SendMsgBaseProxyERT_NSt3__110shared_ptrIT0_EEMT1_FT2_DpT3_EEUlSA_jE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENSE_17integral_constantIiLi2EEEOSC__block_invoke;
    v40 = &__block_descriptor_tmp_33_3;
    v41 = v17 + 1;
    v42 = v17;
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_4;
    aBlock[3] = &unk_29EE5BA40;
    aBlock[4] = &v38;
    v19 = _Block_copy(aBlock);
    v20 = v42;
    if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_15:
        if (__p[0])
        {
          goto LABEL_22;
        }

LABEL_21:
        v23 = operator new(4uLL);
        *v23 = 0;
        __p[0] = v23;
LABEL_22:
        v31 = 0xAAAAAAAAAAAAAAAALL;
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v30[0] = v24;
        v30[1] = v24;
        v25 = *(v11 + 16);
        *&v38 = *(v11 + 8);
        if (v25)
        {
          *(&v38 + 1) = std::__shared_weak_count::lock(v25);
          if (*(&v38 + 1))
          {
            ice::SendMsgBaseProxy::SendMsgBaseProxy();
            v26 = *(&v38 + 1);
            if (*(&v38 + 1) && !atomic_fetch_add((*(&v38 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v26->__on_zero_shared)(v26);
              std::__shared_weak_count::__release_weak(v26);
            }

            aBlock[0] = v19;
            ice::SendMsgBaseProxy::callback();
            if (aBlock[0])
            {
              _Block_release(aBlock[0]);
            }

            std::__shared_weak_count::__release_weak(v15);
            MEMORY[0x29C263BF0](v30);
            if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v29->__on_zero_shared)(v29);
              std::__shared_weak_count::__release_weak(v29);
            }

            goto LABEL_32;
          }
        }

        else
        {
          *(&v38 + 1) = 0;
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (__p[0])
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v21 = a1[5];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = desense::asString();
    LODWORD(v38) = 136315138;
    *(&v38 + 4) = v22;
    _os_log_impl(&dword_296D7D000, v21, OS_LOG_TYPE_DEFAULT, "#N Unhandled frequency reporting mode: %s", &v38, 0xCu);
  }

LABEL_32:
  result = MEMORY[0x29C265210](buf);
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t desense::ARICommandDriver::handleSetFrequencyReportingModeResponse_sync(desense::ARICommandDriver *this, const unsigned __int8 *a2)
{
  v193 = *MEMORY[0x29EDCA608];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v190 = v3;
  v191 = v3;
  v188 = v3;
  v189 = v3;
  v186[3] = v3;
  v187 = v3;
  v186[1] = v3;
  v186[2] = v3;
  v186[0] = v3;
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v186, a2);
  if ((ice::isARIResponseValid() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::unpack(v186);
  v5 = v4;
  if (v4)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = v5;
      v8 = "#N Could not unpack IBIMsAccCurrentFreqInfoRspCb: %s (%d)";
LABEL_8:
      _os_log_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!**(&v187 + 1))
  {
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    v183 = &v183;
    v184 = &v183;
    v185 = 0;
    v180 = &v180;
    v181 = &v180;
    v182 = 0;
    v177 = &v177;
    v178 = &v177;
    v179 = 0;
    v174 = &v174;
    v175 = &v174;
    v176 = 0;
    v171 = &v171;
    v172 = &v171;
    v173 = 0;
    v13 = *(&v188 + 1);
    v14 = **(&v188 + 1);
    if (**(&v188 + 1))
    {
      v15 = *(*(&v188 + 1) + 12);
      v4 = operator new(0x20uLL);
      v16 = v4;
      v17 = *(v13 + 4);
      v4[6] = v15;
      *(v4 + 1) = buf;
      *(v4 + 2) = v17;
      *v4 = buf;
      *buf = v4;
      *&buf[8] = v4;
      *&buf[16] = 1;
      if (v14 != 1)
      {
        v18 = *(v13 + 24);
        v4 = operator new(0x20uLL);
        v19 = *(v13 + 16);
        v4[6] = v18;
        *(v4 + 1) = buf;
        *(v4 + 2) = v19;
        *v4 = v16;
        *(v16 + 1) = v4;
        *buf = v4;
        *&buf[16] = 2;
      }
    }

    v20 = capabilities::abs::nonPrimaryDLServingCellBandwidthMaxValue(v4);
    if (*v189)
    {
      if (*v189 >= 0x14u)
      {
        v21 = 20;
      }

      else
      {
        v21 = *v189;
      }

      v22 = v183;
      v23 = (v189 + 12);
      v24 = v185 + 1;
      do
      {
        v25 = *v23;
        v26 = operator new(0x20uLL);
        v27 = *(v23 - 1);
        v26[1] = &v183;
        v26[2] = v27;
        if (v25 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v25;
        }

        *(v26 + 6) = v28;
        *v26 = v22;
        v22[1] = v26;
        v183 = v26;
        v185 = v24;
        v23 += 3;
        ++v24;
        v22 = v26;
        --v21;
      }

      while (v21);
    }

    if (**(&v189 + 1))
    {
      if (**(&v189 + 1) >= 0x40u)
      {
        v29 = 64;
      }

      else
      {
        v29 = **(&v189 + 1);
      }

      v30 = v180;
      v31 = (*(&v189 + 1) + 12);
      v32 = v182 + 1;
      do
      {
        v33 = *v31;
        v34 = operator new(0x20uLL);
        v35 = *(v31 - 1);
        v34[1] = &v180;
        v34[2] = v35;
        if (v33 >= v20)
        {
          v36 = v20;
        }

        else
        {
          v36 = v33;
        }

        *(v34 + 6) = v36;
        *v34 = v30;
        v30[1] = v34;
        v180 = v34;
        v182 = v32;
        v31 += 3;
        ++v32;
        v30 = v34;
        --v29;
      }

      while (v29);
    }

    if (*v190)
    {
      if (*v190 >= 0x64u)
      {
        v37 = 100;
      }

      else
      {
        v37 = *v190;
      }

      v38 = v177;
      v39 = (v190 + 12);
      v40 = v179 + 1;
      do
      {
        v41 = *v39;
        v42 = operator new(0x20uLL);
        v43 = *(v39 - 1);
        v42[1] = &v177;
        v42[2] = v43;
        if (v41 >= v20)
        {
          v44 = v20;
        }

        else
        {
          v44 = v41;
        }

        *(v42 + 6) = v44;
        *v42 = v38;
        v38[1] = v42;
        v177 = v42;
        v179 = v40;
        v39 += 3;
        ++v40;
        v38 = v42;
        --v37;
      }

      while (v37);
    }

    if (**(&v190 + 1))
    {
      if (**(&v190 + 1) >= 0x46u)
      {
        v45 = 70;
      }

      else
      {
        v45 = **(&v190 + 1);
      }

      v46 = v174;
      v47 = (*(&v190 + 1) + 12);
      v48 = v176 + 1;
      do
      {
        v49 = *v47;
        v50 = operator new(0x20uLL);
        v51 = *(v47 - 1);
        v50[1] = &v174;
        v50[2] = v51;
        if (v49 >= v20)
        {
          v52 = v20;
        }

        else
        {
          v52 = v49;
        }

        *(v50 + 6) = v52;
        *v50 = v46;
        v46[1] = v50;
        v174 = v50;
        v176 = v48;
        v47 += 3;
        ++v48;
        v46 = v50;
        --v45;
      }

      while (v45);
    }

    v53 = v188;
    v54 = *v188;
    if (*v188)
    {
      v55 = v54 >= 4 ? 4 : *v188;
      v56 = v173;
      v57 = v171;
      v58 = *(v188 + 12);
      v59 = operator new(0x20uLL);
      v60 = *(v53 + 4);
      v59[6] = v58;
      *(v59 + 1) = &v171;
      *(v59 + 2) = v60;
      *v59 = v57;
      v57[1] = v59;
      v171 = v59;
      v173 = v56 + 1;
      if (v54 != 1)
      {
        v61 = v55 - 1;
        v62 = (v53 + 24);
        v63 = v56 + 2;
        do
        {
          v64 = *v62;
          v65 = operator new(0x20uLL);
          v66 = *(v62 - 1);
          v65[1] = &v171;
          v65[2] = v66;
          if (v64 >= v20)
          {
            v67 = v20;
          }

          else
          {
            v67 = v64;
          }

          *(v65 + 6) = v67;
          *v65 = v59;
          *(v59 + 1) = v65;
          v171 = v65;
          v173 = v63;
          v62 += 3;
          ++v63;
          v59 = v65;
          --v61;
        }

        while (v61);
      }
    }

    v169 = 0;
    v170 = 0;
    v168 = &v169;
    v68 = operator new(0x40uLL);
    v69 = &v169;
    v68[4] = *MEMORY[0x29EDC9118];
    v68[5] = (v68 + 5);
    v68[6] = (v68 + 5);
    v68[7] = 0;
    *v68 = 0;
    v68[1] = 0;
    v68[2] = &v169;
    v168 = v68;
    v169 = v68;
    *(v68 + 24) = 1;
    v170 = 1;
    std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v68 + 5, v68 + 5, *&buf[8], buf);
    v70 = v169;
    v71 = *MEMORY[0x29EDC9110];
    v72 = &v169;
    v73 = &v169;
    if (v169)
    {
      while (1)
      {
        while (1)
        {
          v73 = v70;
          v74 = v70[4];
          if (v71 >= v74)
          {
            break;
          }

          v70 = *v73;
          v72 = v73;
          if (!*v73)
          {
            goto LABEL_66;
          }
        }

        if (v74 >= v71)
        {
          break;
        }

        v70 = v73[1];
        if (!v70)
        {
          v72 = v73 + 1;
          goto LABEL_66;
        }
      }

      v75 = v73;
      v76 = (v73 + 5);
      if (v76 == &v183)
      {
LABEL_85:
        v84 = v169;
        v85 = *MEMORY[0x29EDC9120];
        v86 = &v169;
        v87 = &v169;
        if (v169)
        {
          while (1)
          {
            while (1)
            {
              v87 = v84;
              v88 = v84[4];
              if (v85 >= v88)
              {
                break;
              }

              v84 = *v87;
              v86 = v87;
              if (!*v87)
              {
                goto LABEL_92;
              }
            }

            if (v88 >= v85)
            {
              break;
            }

            v84 = v87[1];
            if (!v84)
            {
              v86 = v87 + 1;
              goto LABEL_92;
            }
          }

          v89 = v87;
          v90 = (v87 + 5);
          if (v90 == &v180)
          {
LABEL_111:
            v98 = v169;
            v99 = *MEMORY[0x29EDC9130];
            v100 = &v169;
            v101 = &v169;
            if (v169)
            {
              while (1)
              {
                while (1)
                {
                  v101 = v98;
                  v102 = v98[4];
                  if (v99 >= v102)
                  {
                    break;
                  }

                  v98 = *v101;
                  v100 = v101;
                  if (!*v101)
                  {
                    goto LABEL_118;
                  }
                }

                if (v102 >= v99)
                {
                  break;
                }

                v98 = v101[1];
                if (!v98)
                {
                  v100 = v101 + 1;
                  goto LABEL_118;
                }
              }

              v103 = v101;
              v104 = (v101 + 5);
              if (v104 == &v177)
              {
LABEL_137:
                v112 = v169;
                v113 = *MEMORY[0x29EDC9108];
                v114 = &v169;
                v115 = &v169;
                if (v169)
                {
                  while (1)
                  {
                    while (1)
                    {
                      v115 = v112;
                      v116 = v112[4];
                      if (v113 >= v116)
                      {
                        break;
                      }

                      v112 = *v115;
                      v114 = v115;
                      if (!*v115)
                      {
                        goto LABEL_144;
                      }
                    }

                    if (v116 >= v113)
                    {
                      break;
                    }

                    v112 = v115[1];
                    if (!v112)
                    {
                      v114 = v115 + 1;
                      goto LABEL_144;
                    }
                  }

                  v117 = v115;
                  v118 = (v115 + 5);
                  if (v118 == &v174)
                  {
LABEL_163:
                    v126 = v169;
                    v127 = *MEMORY[0x29EDC9128];
                    v128 = &v169;
                    if (v169)
                    {
                      while (1)
                      {
                        while (1)
                        {
                          v128 = v126;
                          v129 = v126[4];
                          if (v127 >= v129)
                          {
                            break;
                          }

                          v126 = *v128;
                          v69 = v128;
                          if (!*v128)
                          {
                            goto LABEL_170;
                          }
                        }

                        if (v129 >= v127)
                        {
                          break;
                        }

                        v126 = v128[1];
                        if (!v126)
                        {
                          v69 = v128 + 1;
                          goto LABEL_170;
                        }
                      }

                      v130 = v128;
                      v131 = (v128 + 5);
                      if (v131 == &v171)
                      {
                        goto LABEL_189;
                      }
                    }

                    else
                    {
LABEL_170:
                      v130 = operator new(0x40uLL);
                      v130[4] = v127;
                      v130[5] = (v130 + 5);
                      v130[6] = (v130 + 5);
                      v130[7] = 0;
                      *v130 = 0;
                      v130[1] = 0;
                      v130[2] = v128;
                      *v69 = v130;
                      if (*v168)
                      {
                        v168 = *v168;
                      }

                      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v130);
                      ++v170;
                      v131 = v130 + 5;
                      if (v130 + 5 == &v171)
                      {
                        goto LABEL_189;
                      }
                    }

                    v132 = v172;
                    for (i = v130[6]; v132 != &v171 && i != v131; i = i[1])
                    {
                      i[2] = *(v132 + 16);
                      *(i + 6) = *(v132 + 24);
                      v132 = *(v132 + 8);
                    }

                    if (i == v131)
                    {
                      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v131, v131, v132, &v171);
                    }

                    else
                    {
                      v136 = *(v130[5] + 8);
                      v137 = *i;
                      *(v137 + 8) = v136;
                      *v136 = v137;
                      do
                      {
                        v138 = i[1];
                        --v130[7];
                        operator delete(i);
                        i = v138;
                      }

                      while (v138 != v131);
                    }

LABEL_189:
                    v167[0] = 0;
                    v167[1] = 0;
                    v166 = v167;
                    v139 = v168;
                    if (v168 != &v169)
                    {
                      do
                      {
                        std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v166, v167, v139[4], v139 + 4);
                        v164 = v139[1];
                        if (v164)
                        {
                          do
                          {
                            v165 = v164;
                            v164 = *v164;
                          }

                          while (v164);
                        }

                        else
                        {
                          do
                          {
                            v165 = v139[2];
                            v79 = *v165 == v139;
                            v139 = v165;
                          }

                          while (!v79);
                        }

                        v139 = v165;
                      }

                      while (v165 != &v169);
                    }

                    desense::ARICommandDriver::sendFrequencyReport_sync(this, &v166, 0);
                    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v167[0]);
                    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v169);
                    if (v173)
                    {
                      v140 = v172;
                      v141 = v171[1];
                      v142 = *v172;
                      *(v142 + 8) = v141;
                      *v141 = v142;
                      v173 = 0;
                      if (v140 != &v171)
                      {
                        do
                        {
                          v143 = v140[1];
                          operator delete(v140);
                          v140 = v143;
                        }

                        while (v143 != &v171);
                      }
                    }

                    if (v176)
                    {
                      v144 = v175;
                      v145 = v174[1];
                      v146 = *v175;
                      *(v146 + 8) = v145;
                      *v145 = v146;
                      v176 = 0;
                      if (v144 != &v174)
                      {
                        do
                        {
                          v147 = v144[1];
                          operator delete(v144);
                          v144 = v147;
                        }

                        while (v147 != &v174);
                      }
                    }

                    if (v179)
                    {
                      v148 = v178;
                      v149 = v177[1];
                      v150 = *v178;
                      *(v150 + 8) = v149;
                      *v149 = v150;
                      v179 = 0;
                      if (v148 != &v177)
                      {
                        do
                        {
                          v151 = v148[1];
                          operator delete(v148);
                          v148 = v151;
                        }

                        while (v151 != &v177);
                      }
                    }

                    if (v182)
                    {
                      v152 = v181;
                      v153 = v180[1];
                      v154 = *v181;
                      *(v154 + 8) = v153;
                      *v153 = v154;
                      v182 = 0;
                      if (v152 != &v180)
                      {
                        do
                        {
                          v155 = v152[1];
                          operator delete(v152);
                          v152 = v155;
                        }

                        while (v155 != &v180);
                      }
                    }

                    if (v185)
                    {
                      v156 = v184;
                      v157 = v183[1];
                      v158 = *v184;
                      *(v158 + 8) = v157;
                      *v157 = v158;
                      v185 = 0;
                      if (v156 != &v183)
                      {
                        do
                        {
                          v159 = v156[1];
                          operator delete(v156);
                          v156 = v159;
                        }

                        while (v159 != &v183);
                      }
                    }

                    if (*&buf[16])
                    {
                      v160 = *&buf[8];
                      v161 = *(*buf + 8);
                      v162 = **&buf[8];
                      *(v162 + 8) = v161;
                      *v161 = v162;
                      *&buf[16] = 0;
                      if (v160 != buf)
                      {
                        do
                        {
                          v163 = v160[1];
                          operator delete(v160);
                          v160 = v163;
                        }

                        while (v163 != buf);
                      }
                    }

                    goto LABEL_9;
                  }
                }

                else
                {
LABEL_144:
                  v117 = operator new(0x40uLL);
                  v117[4] = v113;
                  v117[5] = (v117 + 5);
                  v117[6] = (v117 + 5);
                  v117[7] = 0;
                  *v117 = 0;
                  v117[1] = 0;
                  v117[2] = v115;
                  *v114 = v117;
                  if (*v168)
                  {
                    v168 = *v168;
                  }

                  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v117);
                  ++v170;
                  v118 = v117 + 5;
                  if (v117 + 5 == &v174)
                  {
                    goto LABEL_163;
                  }
                }

                v119 = v175;
                for (j = v117[6]; v119 != &v174 && j != v118; j = j[1])
                {
                  j[2] = *(v119 + 16);
                  *(j + 6) = *(v119 + 24);
                  v119 = *(v119 + 8);
                }

                if (j == v118)
                {
                  std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v118, v118, v119, &v174);
                }

                else
                {
                  v123 = *(v117[5] + 8);
                  v124 = *j;
                  *(v124 + 8) = v123;
                  *v123 = v124;
                  do
                  {
                    v125 = j[1];
                    --v117[7];
                    operator delete(j);
                    j = v125;
                  }

                  while (v125 != v118);
                }

                goto LABEL_163;
              }
            }

            else
            {
LABEL_118:
              v103 = operator new(0x40uLL);
              v103[4] = v99;
              v103[5] = (v103 + 5);
              v103[6] = (v103 + 5);
              v103[7] = 0;
              *v103 = 0;
              v103[1] = 0;
              v103[2] = v101;
              *v100 = v103;
              if (*v168)
              {
                v168 = *v168;
              }

              std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v103);
              ++v170;
              v104 = v103 + 5;
              if (v103 + 5 == &v177)
              {
                goto LABEL_137;
              }
            }

            v105 = v178;
            for (k = v103[6]; v105 != &v177 && k != v104; k = k[1])
            {
              k[2] = *(v105 + 16);
              *(k + 6) = *(v105 + 24);
              v105 = *(v105 + 8);
            }

            if (k == v104)
            {
              std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v104, v104, v105, &v177);
            }

            else
            {
              v109 = *(v103[5] + 8);
              v110 = *k;
              *(v110 + 8) = v109;
              *v109 = v110;
              do
              {
                v111 = k[1];
                --v103[7];
                operator delete(k);
                k = v111;
              }

              while (v111 != v104);
            }

            goto LABEL_137;
          }
        }

        else
        {
LABEL_92:
          v89 = operator new(0x40uLL);
          v89[4] = v85;
          v89[5] = (v89 + 5);
          v89[6] = (v89 + 5);
          v89[7] = 0;
          *v89 = 0;
          v89[1] = 0;
          v89[2] = v87;
          *v86 = v89;
          if (*v168)
          {
            v168 = *v168;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v89);
          ++v170;
          v90 = v89 + 5;
          if (v89 + 5 == &v180)
          {
            goto LABEL_111;
          }
        }

        v91 = v181;
        for (m = v89[6]; v91 != &v180 && m != v90; m = m[1])
        {
          m[2] = *(v91 + 16);
          *(m + 6) = *(v91 + 24);
          v91 = *(v91 + 8);
        }

        if (m == v90)
        {
          std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v90, v90, v91, &v180);
        }

        else
        {
          v95 = *(v89[5] + 8);
          v96 = *m;
          *(v96 + 8) = v95;
          *v95 = v96;
          do
          {
            v97 = m[1];
            --v89[7];
            operator delete(m);
            m = v97;
          }

          while (v97 != v90);
        }

        goto LABEL_111;
      }
    }

    else
    {
LABEL_66:
      v75 = operator new(0x40uLL);
      v75[4] = v71;
      v75[5] = (v75 + 5);
      v75[6] = (v75 + 5);
      v75[7] = 0;
      *v75 = 0;
      v75[1] = 0;
      v75[2] = v73;
      *v72 = v75;
      if (*v168)
      {
        v168 = *v168;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v169, v75);
      ++v170;
      v76 = v75 + 5;
      if (v75 + 5 == &v183)
      {
        goto LABEL_85;
      }
    }

    v77 = v184;
    v78 = v75[6];
    v79 = v184 == &v183 || v78 == v76;
    if (!v79)
    {
      do
      {
        v78[2] = *(v77 + 16);
        *(v78 + 6) = *(v77 + 24);
        v77 = *(v77 + 8);
        v78 = v78[1];
      }

      while (v77 != &v183 && v78 != v76);
    }

    if (v78 == v76)
    {
      std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(v76, v76, v77, &v183);
    }

    else
    {
      v81 = *(v75[5] + 8);
      v82 = *v78;
      *(v82 + 8) = v81;
      *v81 = v82;
      do
      {
        v83 = v78[1];
        --v75[7];
        operator delete(v78);
        v78 = v83;
      }

      while (v83 != v76);
    }

    goto LABEL_85;
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    v10 = **(&v187 + 1);
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v8 = "#N Set frequency reporting mode request failed: %s (%d)";
    goto LABEL_8;
  }

LABEL_9:
  result = MEMORY[0x29C265430](v186);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DB32AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a16);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a19);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a22);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a25);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a28);
  std::list<std::pair<unsigned long long,unsigned int>>::~list((v31 - 112));
  MEMORY[0x29C265430](&a31);
  _Unwind_Resume(a1);
}

void desense::ARICommandDriver::sendFrequencyReport_sync(uint64_t a1, void *a2, int a3)
{
  v93 = *MEMORY[0x29EDCA608];
  if (!a2[2])
  {
    goto LABEL_71;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&dword_296D7D000, v6, OS_LOG_TYPE_DEFAULT, "#I Sending frequency report for SubId=%d", buf, 8u);
  }

  v49[0] = 0;
  v49[1] = 0;
  v48 = v49;
  v9 = *a2;
  v7 = a2 + 1;
  v8 = v9;
  if (v9 == v7)
  {
    v10 = *(a1 + 80);
    v51 = 0;
    v52 = 0;
    v50 = &v51;
  }

  else
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v48, v49, v8[4], v8 + 4);
      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v7);
    v14 = v48;
    v10 = *(a1 + 80);
    v51 = 0;
    v52 = 0;
    v50 = &v51;
    if (v48 != v49)
    {
      do
      {
        std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v50, &v51, v14[4], v14 + 4);
        v22 = v14[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v14[2];
            v13 = *v23 == v14;
            v14 = v23;
          }

          while (!v13);
        }

        v14 = v23;
      }

      while (v23 != v49);
    }
  }

  v61 = a3;
  v59 = 0;
  v60 = 0;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v78 = v15;
  v79 = v15;
  v76 = v15;
  v77 = v15;
  v74 = v15;
  v75 = v15;
  v72 = v15;
  v73 = v15;
  *buf = v15;
  v71 = v15;
  v16 = *(v10 + 24);
  __p[0] = 10;
  __p[1] = buf;
  v81[0] = 0;
  v81[1] = v16;
  pthread_mutex_lock(v16);
  v17 = *(v10 + 8);
  if (!v17)
  {
    v19 = *v10;
    goto LABEL_33;
  }

  explicit = atomic_load_explicit(v17 + 2, memory_order_acquire);
  v19 = *v10;
  if (explicit == 1)
  {
    v20 = *v19;
    v21 = *(v10 + 16);
    if (v21 == *v19)
    {
      v21 = *(v20 + 8);
      *&v62 = v21;
      if (v20 == v21)
      {
LABEL_30:
        *(v10 + 16) = v21;
        goto LABEL_31;
      }
    }

    else
    {
      *&v62 = *(v10 + 16);
    }

    v24 = v21[2];
    if (*(v24 + 24))
    {
      v21 = v21[1];
    }

    else
    {
      v21 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v20, (v24 + 64), &v62);
      v19 = *v10;
    }

    goto LABEL_30;
  }

LABEL_31:
  v17 = *(v10 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
  }

LABEL_33:
  v25 = v60;
  v59 = v19;
  v60 = v17;
  if (v25)
  {
    if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v25 + 16))(v25);
      if (atomic_fetch_add(v25 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v25 + 24))(v25);
      }
    }
  }

  pthread_mutex_unlock(v81[1]);
  v26 = __p[1];
  if (__p[1])
  {
    if (v81[0] > 0)
    {
      v46 = __p[1] + 16 * v81[0];
      do
      {
        v47 = *(v46 - 1);
        if (v47)
        {
          if (atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v47 + 16))(v47);
            if (atomic_fetch_add(v47 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v47 + 24))(v47);
            }
          }
        }

        v46 -= 16;
      }

      while (v46 > v26);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v83 = v27;
  v84 = v27;
  *v81 = v27;
  v82 = v27;
  v79 = v27;
  *__p = v27;
  v77 = v27;
  v78 = v27;
  v75 = v27;
  v76 = v27;
  v73 = v27;
  v74 = v27;
  v71 = v27;
  v72 = v27;
  *buf = v27;
  buf[0] = 0;
  v85 = 0xAAAAAAAAAAAAAAAALL;
  v86 = 10;
  v87 = &buf[8];
  v88 = 0;
  v89 = &v50;
  v90 = &v61;
  v92 = 0;
  v91 = 0;
  v28 = v59;
  v29 = *v59;
  v56 = buf;
  v57 = v10;
  v58 = v29;
  *&v54 = *(v29 + 8);
  *(&v54 + 1) = v29;
  *&v55 = buf;
  *(&v55 + 1) = v29;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v54);
  v53[0] = *v28;
  v53[1] = v53[0];
  v53[2] = buf;
  v53[3] = v53[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(v53);
  v62 = v54;
  v63 = v55;
  v30 = v53[0];
  v31 = v54;
  if (v54 == v53[0])
  {
    if (HIDWORD(v91) <= v91)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v32 = v63;
    v33 = *v63;
    do
    {
      if ((v33 & 1) == 0)
      {
        v34 = *(*(v31 + 16) + 32);
        v35 = *(v32 + 272);
        v65 = 0;
        v66 = 0;
        v64 = &v65;
        v38 = *v35;
        v36 = v35 + 1;
        v37 = v38;
        if (v38 != v36)
        {
          do
          {
            std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v64, &v65, v37[4], v37 + 4);
            v42 = v37[1];
            if (v42)
            {
              do
              {
                v43 = v42;
                v42 = *v42;
              }

              while (v42);
            }

            else
            {
              do
              {
                v43 = v37[2];
                v13 = *v43 == v37;
                v37 = v43;
              }

              while (!v13);
            }

            v37 = v43;
          }

          while (v43 != v36);
        }

        v39 = *(v34 + 24);
        if (!v39)
        {
          std::runtime_error::runtime_error(&v69, "call to empty boost::function");
          v69.__vftable = &unk_2A1E0C118;
          boost::throw_exception<boost::bad_function_call>(&v69);
        }

        v40 = **(v32 + 280);
        v41 = *((v39 & 0xFFFFFFFFFFFFFFFELL) + 8);
        v67 = v64;
        v68[0] = v65;
        v68[1] = v66;
        if (v66)
        {
          v65[2] = v68;
          v64 = &v65;
          v65 = 0;
          v66 = 0;
        }

        else
        {
          v67 = v68;
        }

        v41(v34 + 32, &v67, v40);
        std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v68[0]);
        std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v65);
        if ((*v32 & 1) == 0)
        {
          *v32 = 1;
        }
      }

      *&v62 = *(v31 + 8);
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v62);
      v32 = v63;
      if (*v63 == 1)
      {
        *v63 = 0;
      }

      v33 = 0;
      v31 = v62;
    }

    while (v62 != v30);
    if (*(v56 + 73) <= *(v56 + 72))
    {
      goto LABEL_66;
    }
  }

  boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(v57, v58);
LABEL_66:
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>>::~slot_call_iterator_cache(buf);
  v44 = v60;
  if (v60)
  {
    if (atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v44 + 16))(v44);
      if (atomic_fetch_add(v44 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v44 + 24))(v44);
      }
    }
  }

  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v51);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v49[0]);
LABEL_71:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_296DB3B18(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296DB3B9CLL);
}

uint64_t *std::list<std::pair<unsigned long long,unsigned int>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void *boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E0BE40;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E0BF00;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E0BE40;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E0BF00;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void *std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a1[1]);
    if (a1[7])
    {
      v2 = a1[6];
      v3 = *(a1[5] + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[7] = 0;
      if (v2 != a1 + 5)
      {
        do
        {
          v5 = v2[1];
          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1 + 5);
      }
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 == a2 || (v8 = a2[4], v8 > a3))
  {
    v9 = *a2;
    if (*result == a2)
    {
      v11 = a2;
LABEL_16:
      if (v9)
      {
        v17 = v11;
      }

      else
      {
        v17 = a2;
      }

      if (v9)
      {
        v13 = (v11 + 1);
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

      v5 = v17;
      goto LABEL_36;
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (v11[4] < a3)
    {
      goto LABEL_16;
    }

    v18 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
LABEL_36:
      v22 = operator new(0x40uLL);
      v23 = v22;
      v24 = v22 + 5;
      v25 = a4 + 1;
      v22[4] = *a4;
      v22[5] = (v22 + 5);
      v22[6] = (v22 + 5);
      v22[7] = 0;
      v26 = a4[2];
      if (v26 != v25)
      {
        v27 = 1;
        v28 = v22 + 5;
        do
        {
          v29 = operator new(0x20uLL);
          v29[1] = *(v26 + 16);
          *v29 = v28;
          *(v29 + 1) = v24;
          v28[1] = v29;
          v23[5] = v29;
          v23[7] = v27;
          v26 = *(v26 + 8);
          ++v27;
          v28 = v29;
        }

        while (v26 != v25);
      }

      *v23 = 0;
      v23[1] = 0;
      v23[2] = v5;
      *v13 = v23;
      v30 = **v6;
      if (v30)
      {
        *v6 = v30;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v23);
      ++v6[2];
      return result;
    }

    while (1)
    {
      while (1)
      {
        v5 = v18;
        v19 = v18[4];
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8 >= a3)
    {
      return result;
    }

    v13 = (a2 + 1);
    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
        v5 = v13;
        v14 = v13;
      }

      while (v12);
    }

    else
    {
      v14 = a2;
      do
      {
        v20 = v14;
        v14 = v14[2];
      }

      while (*v14 != v20);
    }

    if (v14 == v7)
    {
      goto LABEL_36;
    }

    if (v14[4] > a3)
    {
      goto LABEL_36;
    }

    v21 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
      goto LABEL_36;
    }

    while (1)
    {
      while (1)
      {
        v5 = v21;
        v31 = v21[4];
        if (v31 <= a3)
        {
          break;
        }

        v21 = *v21;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v31 >= a3)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
LABEL_30:
        v13 = v5 + 1;
        goto LABEL_36;
      }
    }
  }

  return result;
}

void sub_296DB437C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(v2);
  std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      if (v1[7])
      {
        v3 = v1[6];
        v4 = *(v1[5] + 8);
        v5 = *v3;
        *(v5 + 8) = v4;
        *v4 = v5;
        v1[7] = 0;
        if (v3 != v1 + 5)
        {
          do
          {
            v6 = v3[1];
            operator delete(v3);
            v3 = v6;
          }

          while (v6 != v1 + 5);
        }
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

atomic_ullong *std::shared_ptr<desense::ARICommandDriver>::shared_ptr[abi:ne200100]<desense::ARICommandDriver,std::shared_ptr<desense::ARICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::ARICommandDriver>(desense::ARICommandDriver*)::{lambda(desense::ARICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0BF70;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296DB46F0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<desense::ARICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::ARICommandDriver>(desense::ARICommandDriver*)::{lambda(desense::ARICommandDriver*)#1}::operator() const(desense::ARICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<desense::ARICommandDriver *,std::shared_ptr<desense::ARICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::ARICommandDriver>(desense::ARICommandDriver*)::{lambda(desense::ARICommandDriver *)#1},std::allocator<desense::ARICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<desense::ARICommandDriver *,std::shared_ptr<desense::ARICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::ARICommandDriver>(desense::ARICommandDriver*)::{lambda(desense::ARICommandDriver *)#1},std::allocator<desense::ARICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7desense13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<desense::ARICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::ARICommandDriver>(desense::ARICommandDriver*)::{lambda(desense::ARICommandDriver*)#1}::operator() const(desense::ARICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a1;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v4 = *(a1 + 176);
  v14 = *a2;
  *&v6[2 * v4] = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_296DB55CC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_2A1E0C0E8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E0C070;
  *(a1 + 8) = &unk_2A1E0C0A0;
  *(a1 + 24) = &unk_2A1E0C0C8;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E0C140;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E0C0E8;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_2A1E0C118;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E0C140;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E0C070;
  *(v2 + 1) = &unk_2A1E0C0A0;
  *(v2 + 3) = &unk_2A1E0C0C8;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_296DB58C8(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E0C140;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_2A1E0C140;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_2A1E0C140;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_2A1E0C140;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_2A1E0C140;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E0C0E8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1E0C118;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E0C140;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E0C070;
  *(a1 + 8) = &unk_2A1E0C0A0;
  *(a1 + 24) = &unk_2A1E0C0C8;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_296DB5FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_296DB5FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_296DB5FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 284);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 280);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 288) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296DB67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296DB67E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear(void *result)
{
  v1 = result[32];
  if (v1)
  {
    v2 = result;
    v3 = result[32];
    if (-24 * v1 < 0)
    {
      v4 = result[31] + 24 * v1;
      v5 = result[31];
      v6 = v4;
      do
      {
        v7 = *(v6 - 24);
        v6 -= 24;
        if (v7 == v7 >> 31)
        {
          v8 = *(v4 - 8);
          if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
          {
            result = (*(*v8 + 16))(v8);
            if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
            {
              result = (*(*v8 + 24))(v8);
            }
          }
        }

        else
        {
          result = *(v4 - 16);
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v4 = v6;
      }

      while (v6 > v5);
      v3 = v2[32];
    }

    v2[32] = v3 - v1;
  }

  return result;
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_296DB6BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[32];
  if (v4 == a1[30])
  {
    if (v4 == -1)
    {
      v6 = a1[31];
      v7 = -1;
    }

    else
    {
      if (4 * v4 <= (v4 + 1))
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 4 * v4;
      }

      v6 = a1;
      if (v5 >= 0xB)
      {
        if (v5 >= 0xAAAAAAAAAAAAAABLL)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v6 = operator new(24 * v5);
      }

      std::uninitialized_copy[abi:ne200100]<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *,boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *>(a1[31], a1[31] + 24 * v4, v6);
      boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(a1);
      a1[30] = v5;
      a1[31] = v6;
      v7 = a1[32];
    }

    v8 = v6 + 24 * v7;
    result = *(a2 + 8);
    if (*a2 != *a2 >> 31)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = a1[31] + 24 * v4;
    result = *(a2 + 8);
    if (*a2 != *a2 >> 31)
    {
LABEL_15:
      result = (*(*result + 16))(result);
      *(v8 + 8) = result;
      goto LABEL_16;
    }
  }

  v10 = *(a2 + 16);
  *(v8 + 8) = result;
  *(v8 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

LABEL_16:
  *v8 = *a2 ^ (*a2 >> 31);
  ++a1[32];
  return result;
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t std::uninitialized_copy[abi:ne200100]<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *,boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = *(a1 + v6 + 8);
      if (*(a1 + v6) == *(a1 + v6) >> 31)
      {
        v10 = *(v8 + 16);
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
        }
      }

      else
      {
        *(v7 + 8) = (*(*v9 + 16))(v9);
      }

      *v7 = *v8 ^ (*v8 >> 31);
      v6 += 24;
    }

    while (v8 + 24 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_296DB7004(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = (v1 + 8);
    do
    {
      if (*(v3 - 2) == *(v3 - 2) >> 31)
      {
        v4 = v3[1];
        if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 16))(v4);
          if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v4 + 24))(v4);
          }
        }
      }

      else if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  __cxa_rethrow();
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_296DB7154(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296DB7144);
}

uint64_t boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E0C1D0;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E0C160;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296DB7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296DB82D0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void ___ZN3ice6detail12wrapCallbackIZNS_6Client13regIndicationIN7desense13CommandDriverENS4_16ARICommandDriverEvJPKhjEEEvjNSt3__110shared_ptrIT_EEMT0_FT1_DpT2_EEUlS8_jE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENS9_17integral_constantIiLi2EEEOSB__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = a3;
        v9 = v7;
        if (*v3)
        {
          v10 = v3[2];
          v11 = v3[3];
          v12 = (*v3 + (v11 >> 1));
          if (v11)
          {
            v10 = *(*v12 + v10);
          }

          v10(v12, a2, v8);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZN3ice6Client13regIndicationIN7desense13CommandDriverENS4_16ARICommandDriverEvJPKhjEEEvjNS0_IT_EEMT0_FT1_DpT2_EEUlS8_jE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZN3ice6Client13regIndicationIN7desense13CommandDriverENS4_16ARICommandDriverEvJPKhjEEEvjNS0_IT_EEMT0_FT1_DpT2_EEUlS8_jE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void ice::Client::regIndication<desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void ice::Client::regIndication<desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void ice::Client::regIndication<desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void ice::Client::regIndication<desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7desense13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7desense13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZNS_6Client4sendIN6AriSdk34ARI_IBIMsAccCurrentFreqInfoReq_SDKEN7desense13CommandDriverENS6_16ARICommandDriverEvJPKhjEEENS_16SendMsgBaseProxyERT_NSt3__110shared_ptrIT0_EEMT1_FT2_DpT3_EEUlSA_jE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENSE_17integral_constantIiLi2EEEOSC__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = a3;
        v9 = v7;
        if (*v3)
        {
          v10 = v3[2];
          v11 = v3[3];
          v12 = (*v3 + (v11 >> 1));
          if (v11)
          {
            v10 = *(*v12 + v10);
          }

          v10(v12, a2, v8);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c206_ZTSNSt3__110shared_ptrIZN3ice6Client4sendIN6AriSdk34ARI_IBIMsAccCurrentFreqInfoReq_SDKEN7desense13CommandDriverENS6_16ARICommandDriverEvJPKhjEEENS1_16SendMsgBaseProxyERT_NS0_IT0_EEMT1_FT2_DpT3_EEUlSA_jE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c206_ZTSNSt3__110shared_ptrIZN3ice6Client4sendIN6AriSdk34ARI_IBIMsAccCurrentFreqInfoReq_SDKEN7desense13CommandDriverENS6_16ARICommandDriverEvJPKhjEEENS1_16SendMsgBaseProxyERT_NS0_IT0_EEMT1_FT2_DpT3_EEUlSA_jE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<ice::SendMsgBaseProxy ice::Client::send<AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK,desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK &,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1},std::allocator<ice::SendMsgBaseProxy ice::Client::send<AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK,desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK &,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0C318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ice::SendMsgBaseProxy ice::Client::send<AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK,desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK &,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1},std::allocator<ice::SendMsgBaseProxy ice::Client::send<AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK,desense::CommandDriver,desense::ARICommandDriver,void,unsigned char const*,unsigned int>(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK &,std::shared_ptr<desense::CommandDriver>,void (desense::ARICommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::list<std::pair<unsigned long long,unsigned int>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>,std::__list_const_iterator<std::pair<unsigned long long,unsigned int>,void *>>(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v7 = result;
    result = operator new(0x20uLL);
    v8 = result;
    *result = 0;
    result[1] = 0;
    *(result + 1) = *(a3 + 16);
    v9 = *(a3 + 8);
    v10 = 1;
    if (v9 != a4)
    {
      v11 = result;
      do
      {
        result = operator new(0x20uLL);
        *result = v11;
        result[1] = 0;
        *(result + 1) = *(v9 + 16);
        v11[1] = result;
        ++v10;
        v9 = *(v9 + 8);
        v11 = result;
      }

      while (v9 != a4);
    }

    v12 = *a2;
    *(v12 + 8) = v8;
    *v8 = v12;
    *a2 = result;
    result[1] = a2;
    v7[2] += v10;
  }

  return result;
}

void sub_296DB8998(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 292);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 288);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 296);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 296) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 296);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 296) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 296);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 296) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296DB9340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296DB9354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 292) > *(*result + 288))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E0C3C8;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E0C368;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296DB9AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 296);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 296), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296DBA4DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t antenna::ARICommandDriver::create@<X0>(NSObject **a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0xC0uLL);
  v7 = *a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::ARICommandDriver::ARICommandDriver(v6, &object, v11);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<antenna::ARICommandDriver>::shared_ptr[abi:ne200100]<antenna::ARICommandDriver,std::shared_ptr<antenna::ARICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::ARICommandDriver>(antenna::ARICommandDriver*)::{lambda(antenna::ARICommandDriver*)#1},0>(a3, v6);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return (*(**a3 + 32))();
}

void sub_296DBA6F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (v4)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

antenna::CommandDriver *antenna::ARICommandDriver::ARICommandDriver(antenna::CommandDriver *a1, dispatch_object_t *a2, uint64_t *a3)
{
  object = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = a3[1];
  v9 = *a3;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::CommandDriver::CommandDriver();
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2A1E0C428;
  v6 = *(a1 + 3);
  v8 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  antenna::CommandDriver::getName(a1);
  ice::Client::create();
  if (v8)
  {
    dispatch_release(v8);
  }

  *(a1 + 20) = 0;
  *(a1 + 18) = 0;
  *(a1 + 19) = a1 + 160;
  *(a1 + 22) = 0;
  *(a1 + 23) = 0;
  *(a1 + 21) = 0;
  return a1;
}

void sub_296DBA848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t a9, char a10, uint64_t a11, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void antenna::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E0C540;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[12];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[10];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(this[7]);
  MEMORY[0x29C263A00](this + 5);
  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void antenna::ARICommandDriver::~ARICommandDriver(antenna::ARICommandDriver *this)
{
  *this = &unk_2A1E0C428;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v6, 2u);
  }

  v3 = *(this + 23);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    _Block_release(v4);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 20));
  v5 = *(this + 17);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    antenna::CommandDriver::~CommandDriver(this);
  }

  else
  {
    antenna::CommandDriver::~CommandDriver(this);
  }
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void antenna::ARICommandDriver::init(antenna::ARICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN7antenna16ARICommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6;
  v1[4] = this;
  ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t ___ZN7antenna16ARICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = (v1 + 56);
  v2 = *(v1 + 56);
  v4 = (v1 + 56);
  v5 = (v1 + 56);
  if (v2)
  {
    v6 = *(v1 + 56);
    while (1)
    {
      while (1)
      {
        v5 = v6;
        v7 = *(v6 + 28);
        if (v7 < 2)
        {
          break;
        }

        v6 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v7)
      {
        break;
      }

      v6 = v5[1];
      if (!v6)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = v5;
    v5 = operator new(0x28uLL);
    *(v5 + 28) = 1;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = v8;
    *v4 = v5;
    v9 = **(v1 + 48);
    if (v9)
    {
      *(v1 + 48) = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v5);
    v2 = *(v1 + 56);
    ++*(v1 + 64);
  }

  *(v5 + 8) = 2;
  v10 = (v1 + 56);
  v11 = (v1 + 56);
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v2;
        v12 = *(v2 + 28);
        if (v12 < 3)
        {
          break;
        }

        v2 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 == 2)
      {
        break;
      }

      v2 = v11[1];
      if (!v2)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 28) = 2;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(v1 + 48);
    if (v14)
    {
      *(v1 + 48) = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v11);
    ++*(v1 + 64);
  }

  *(v11 + 8) = 16;
  v15 = *v3;
  v16 = (v1 + 56);
  v17 = (v1 + 56);
  if (*v3)
  {
    v18 = *v3;
    while (1)
    {
      while (1)
      {
        v17 = v18;
        v19 = *(v18 + 28);
        if (v19 < 5)
        {
          break;
        }

        v18 = *v17;
        v16 = v17;
        if (!*v17)
        {
          goto LABEL_28;
        }
      }

      if (v19 == 4)
      {
        break;
      }

      v18 = v17[1];
      if (!v18)
      {
        v16 = v17 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v20 = v17;
    v17 = operator new(0x28uLL);
    *(v17 + 28) = 4;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v20;
    *v16 = v17;
    v21 = **(v1 + 48);
    if (v21)
    {
      *(v1 + 48) = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v17);
    v15 = *(v1 + 56);
    ++*(v1 + 64);
  }

  *(v17 + 8) = 32;
  v22 = (v1 + 56);
  v23 = (v1 + 56);
  if (v15)
  {
    while (1)
    {
      while (1)
      {
        v23 = v15;
        v24 = *(v15 + 28);
        if (v24 < 0x21)
        {
          break;
        }

        v15 = *v23;
        v22 = v23;
        if (!*v23)
        {
          goto LABEL_38;
        }
      }

      if (v24 == 32)
      {
        break;
      }

      v15 = v23[1];
      if (!v15)
      {
        v22 = v23 + 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v25 = v23;
    v23 = operator new(0x28uLL);
    *(v23 + 28) = 32;
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v25;
    *v22 = v23;
    v26 = **(v1 + 48);
    if (v26)
    {
      *(v1 + 48) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v23);
    ++*(v1 + 64);
  }

  *(v23 + 8) = 256;
  v27 = *v3;
  v28 = (v1 + 56);
  v29 = (v1 + 56);
  if (*v3)
  {
    v30 = *v3;
    while (1)
    {
      while (1)
      {
        v29 = v30;
        v31 = *(v30 + 28);
        if (v31 < 0x11)
        {
          break;
        }

        v30 = *v29;
        v28 = v29;
        if (!*v29)
        {
          goto LABEL_48;
        }
      }

      if (v31 == 16)
      {
        break;
      }

      v30 = v29[1];
      if (!v30)
      {
        v28 = v29 + 1;
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v32 = v29;
    v29 = operator new(0x28uLL);
    *(v29 + 28) = 16;
    *v29 = 0;
    v29[1] = 0;
    v29[2] = v32;
    *v28 = v29;
    v33 = **(v1 + 48);
    if (v33)
    {
      *(v1 + 48) = v33;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v29);
    v27 = *(v1 + 56);
    ++*(v1 + 64);
  }

  *(v29 + 8) = 1024;
  v34 = (v1 + 56);
  v35 = (v1 + 56);
  if (v27)
  {
    while (1)
    {
      while (1)
      {
        v35 = v27;
        v36 = *(v27 + 28);
        if (v36 < 9)
        {
          break;
        }

        v27 = *v35;
        v34 = v35;
        if (!*v35)
        {
          goto LABEL_58;
        }
      }

      if (v36 == 8)
      {
        break;
      }

      v27 = v35[1];
      if (!v27)
      {
        v34 = v35 + 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
LABEL_58:
    v37 = v35;
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 8;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v37;
    *v34 = v35;
    v38 = **(v1 + 48);
    if (v38)
    {
      *(v1 + 48) = v38;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v35);
    ++*(v1 + 64);
  }

  *(v35 + 8) = 64;
  v39 = *v3;
  v40 = (v1 + 56);
  v41 = (v1 + 56);
  if (*v3)
  {
    v42 = *v3;
    while (1)
    {
      while (1)
      {
        v41 = v42;
        v43 = *(v42 + 28);
        if (v43 < 0x41)
        {
          break;
        }

        v42 = *v41;
        v40 = v41;
        if (!*v41)
        {
          goto LABEL_68;
        }
      }

      if (v43 == 64)
      {
        break;
      }

      v42 = v41[1];
      if (!v42)
      {
        v40 = v41 + 1;
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    v44 = v41;
    v41 = operator new(0x28uLL);
    *(v41 + 28) = 64;
    *v41 = 0;
    v41[1] = 0;
    v41[2] = v44;
    *v40 = v41;
    v45 = **(v1 + 48);
    if (v45)
    {
      *(v1 + 48) = v45;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v41);
    v39 = *(v1 + 56);
    ++*(v1 + 64);
  }

  *(v41 + 8) = 2048;
  v46 = (v1 + 56);
  v47 = (v1 + 56);
  if (v39)
  {
    while (1)
    {
      while (1)
      {
        v47 = v39;
        v48 = *(v39 + 28);
        if (v48 < 0x81)
        {
          break;
        }

        v39 = *v47;
        v46 = v47;
        if (!*v47)
        {
          goto LABEL_78;
        }
      }

      if (v48 == 128)
      {
        break;
      }

      v39 = v47[1];
      if (!v39)
      {
        v46 = v47 + 1;
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v49 = v47;
    v47 = operator new(0x28uLL);
    *(v47 + 28) = 128;
    *v47 = 0;
    v47[1] = 0;
    v47[2] = v49;
    *v46 = v47;
    v50 = **(v1 + 48);
    if (v50)
    {
      *(v1 + 48) = v50;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v47);
    ++*(v1 + 64);
  }

  *(v47 + 8) = 4096;
  v51 = *v3;
  v52 = (v1 + 56);
  v53 = (v1 + 56);
  if (*v3)
  {
    v54 = *v3;
    while (1)
    {
      while (1)
      {
        v53 = v54;
        v55 = *(v54 + 28);
        if (v55 < 0x101)
        {
          break;
        }

        v54 = *v53;
        v52 = v53;
        if (!*v53)
        {
          goto LABEL_88;
        }
      }

      if (v55 == 256)
      {
        break;
      }

      v54 = v53[1];
      if (!v54)
      {
        v52 = v53 + 1;
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v56 = v53;
    v53 = operator new(0x28uLL);
    *(v53 + 28) = 256;
    *v53 = 0;
    v53[1] = 0;
    v53[2] = v56;
    *v52 = v53;
    v57 = **(v1 + 48);
    if (v57)
    {
      *(v1 + 48) = v57;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v53);
    v51 = *(v1 + 56);
    ++*(v1 + 64);
  }

  *(v53 + 8) = 0x2000;
  v58 = (v1 + 56);
  v59 = (v1 + 56);
  if (v51)
  {
    while (1)
    {
      while (1)
      {
        v59 = v51;
        v60 = *(v51 + 28);
        if (v60 < 0x201)
        {
          break;
        }

        v51 = *v59;
        v58 = v59;
        if (!*v59)
        {
          goto LABEL_98;
        }
      }

      if (v60 == 512)
      {
        break;
      }

      v51 = v59[1];
      if (!v51)
      {
        v58 = v59 + 1;
        goto LABEL_98;
      }
    }
  }

  else
  {
LABEL_98:
    v61 = v59;
    v59 = operator new(0x28uLL);
    *(v59 + 28) = 512;
    *v59 = 0;
    v59[1] = 0;
    v59[2] = v61;
    *v58 = v59;
    v62 = **(v1 + 48);
    if (v62)
    {
      *(v1 + 48) = v62;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v59);
    ++*(v1 + 64);
  }

  *(v59 + 8) = 0x4000;
  v63 = *v3;
  v64 = (v1 + 56);
  v65 = (v1 + 56);
  if (*v3)
  {
    v66 = *v3;
    while (1)
    {
      while (1)
      {
        v65 = v66;
        v67 = *(v66 + 28);
        if (v67 < 0x401)
        {
          break;
        }

        v66 = *v65;
        v64 = v65;
        if (!*v65)
        {
          goto LABEL_108;
        }
      }

      if (v67 == 1024)
      {
        break;
      }

      v66 = v65[1];
      if (!v66)
      {
        v64 = v65 + 1;
        goto LABEL_108;
      }
    }
  }

  else
  {
LABEL_108:
    v68 = v65;
    v65 = operator new(0x28uLL);
    *(v65 + 28) = 1024;
    *v65 = 0;
    v65[1] = 0;
    v65[2] = v68;
    *v64 = v65;
    v69 = **(v1 + 48);
    if (v69)
    {
      *(v1 + 48) = v69;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v65);
    v63 = *(v1 + 56);
    ++*(v1 + 64);
  }

  *(v65 + 8) = 0x8000;
  v70 = (v1 + 56);
  v71 = (v1 + 56);
  if (v63)
  {
    while (1)
    {
      while (1)
      {
        v71 = v63;
        v72 = *(v63 + 28);
        if (v72 < 0x801)
        {
          break;
        }

        v63 = *v71;
        v70 = v71;
        if (!*v71)
        {
          goto LABEL_118;
        }
      }

      if (v72 == 2048)
      {
        break;
      }

      v63 = v71[1];
      if (!v63)
      {
        v70 = v71 + 1;
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    v73 = v71;
    v71 = operator new(0x28uLL);
    *(v71 + 28) = 2048;
    *v71 = 0;
    v71[1] = 0;
    v71[2] = v73;
    *v70 = v71;
    v74 = **(v1 + 48);
    if (v74)
    {
      *(v1 + 48) = v74;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v71);
    ++*(v1 + 64);
  }

  *(v71 + 8) = 0x10000;
  v75 = *v3;
  v76 = (v1 + 56);
  if (*v3)
  {
    while (1)
    {
      while (1)
      {
        v76 = v75;
        v77 = *(v75 + 28);
        if (v77 <= 0x1000)
        {
          break;
        }

        v75 = *v76;
        v3 = v76;
        if (!*v76)
        {
          goto LABEL_128;
        }
      }

      if (v77 == 4096)
      {
        break;
      }

      v75 = v76[1];
      if (!v75)
      {
        v3 = v76 + 1;
        goto LABEL_128;
      }
    }
  }

  else
  {
LABEL_128:
    v78 = v76;
    v76 = operator new(0x28uLL);
    *(v76 + 28) = 4096;
    *v76 = 0;
    v76[1] = 0;
    v76[2] = v78;
    *v3 = v76;
    v79 = **(v1 + 48);
    if (v79)
    {
      *(v1 + 48) = v79;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 56), v76);
    ++*(v1 + 64);
  }

  *(v76 + 8) = 0x20000;
  v81 = (v1 + 160);
  v80 = *(v1 + 160);
  v82 = (v1 + 160);
  v83 = (v1 + 160);
  if (v80)
  {
    v84 = *(v1 + 160);
    while (1)
    {
      while (1)
      {
        v83 = v84;
        v85 = *(v84 + 28);
        if (v85 < 1)
        {
          break;
        }

        v84 = *v83;
        v82 = v83;
        if (!*v83)
        {
          goto LABEL_138;
        }
      }

      if ((v85 & 0x80000000) == 0)
      {
        break;
      }

      v84 = v83[1];
      if (!v84)
      {
        v82 = v83 + 1;
        goto LABEL_138;
      }
    }
  }

  else
  {
LABEL_138:
    v86 = v83;
    v83 = operator new(0x28uLL);
    *(v83 + 7) = 0;
    *(v83 + 8) = 0;
    *v83 = 0;
    v83[1] = 0;
    v83[2] = v86;
    *v82 = v83;
    v87 = **(v1 + 152);
    if (v87)
    {
      *(v1 + 152) = v87;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 160), v83);
    v80 = *(v1 + 160);
    ++*(v1 + 168);
  }

  *(v83 + 8) = 2;
  v88 = (v1 + 160);
  v89 = (v1 + 160);
  if (v80)
  {
    while (1)
    {
      while (1)
      {
        v89 = v80;
        v90 = *(v80 + 28);
        if (v90 < 2)
        {
          break;
        }

        v80 = *v89;
        v88 = v89;
        if (!*v89)
        {
          goto LABEL_148;
        }
      }

      if (v90 == 1)
      {
        break;
      }

      v80 = v89[1];
      if (!v80)
      {
        v88 = v89 + 1;
        goto LABEL_148;
      }
    }
  }

  else
  {
LABEL_148:
    v91 = v89;
    v89 = operator new(0x28uLL);
    *(v89 + 28) = 1;
    *v89 = 0;
    v89[1] = 0;
    v89[2] = v91;
    *v88 = v89;
    v92 = **(v1 + 152);
    if (v92)
    {
      *(v1 + 152) = v92;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 160), v89);
    ++*(v1 + 168);
  }

  *(v89 + 8) = 3;
  v93 = *v81;
  v94 = (v1 + 160);
  v95 = (v1 + 160);
  if (*v81)
  {
    v96 = *v81;
    while (1)
    {
      while (1)
      {
        v95 = v96;
        v97 = *(v96 + 28);
        if (v97 < 3)
        {
          break;
        }

        v96 = *v95;
        v94 = v95;
        if (!*v95)
        {
          goto LABEL_158;
        }
      }

      if (v97 == 2)
      {
        break;
      }

      v96 = v95[1];
      if (!v96)
      {
        v94 = v95 + 1;
        goto LABEL_158;
      }
    }
  }

  else
  {
LABEL_158:
    v98 = v95;
    v95 = operator new(0x28uLL);
    *(v95 + 28) = 2;
    *v95 = 0;
    v95[1] = 0;
    v95[2] = v98;
    *v94 = v95;
    v99 = **(v1 + 152);
    if (v99)
    {
      *(v1 + 152) = v99;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 160), v95);
    v93 = *(v1 + 160);
    ++*(v1 + 168);
  }

  *(v95 + 8) = 0;
  v100 = (v1 + 160);
  v101 = (v1 + 160);
  if (v93)
  {
    while (1)
    {
      while (1)
      {
        v101 = v93;
        v102 = *(v93 + 28);
        if (v102 < 4)
        {
          break;
        }

        v93 = *v101;
        v100 = v101;
        if (!*v101)
        {
          goto LABEL_168;
        }
      }

      if (v102 == 3)
      {
        break;
      }

      v93 = v101[1];
      if (!v93)
      {
        v100 = v101 + 1;
        goto LABEL_168;
      }
    }
  }

  else
  {
LABEL_168:
    v103 = v101;
    v101 = operator new(0x28uLL);
    *(v101 + 28) = 3;
    *v101 = 0;
    v101[1] = 0;
    v101[2] = v103;
    *v100 = v101;
    v104 = **(v1 + 152);
    if (v104)
    {
      *(v1 + 152) = v104;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 160), v101);
    ++*(v1 + 168);
  }

  *(v101 + 8) = 1;
  v105 = *v81;
  v106 = (v1 + 160);
  if (*v81)
  {
    while (1)
    {
      while (1)
      {
        v106 = v105;
        v107 = *(v105 + 28);
        if (v107 < 5)
        {
          break;
        }

        v105 = *v106;
        v81 = v106;
        if (!*v106)
        {
          goto LABEL_178;
        }
      }

      if (v107 == 4)
      {
        break;
      }

      v105 = v106[1];
      if (!v105)
      {
        v81 = v106 + 1;
        goto LABEL_178;
      }
    }
  }

  else
  {
LABEL_178:
    v108 = v106;
    v106 = operator new(0x28uLL);
    *(v106 + 28) = 4;
    *v106 = 0;
    v106[1] = 0;
    v106[2] = v108;
    *v81 = v106;
    v109 = **(v1 + 152);
    if (v109)
    {
      *(v1 + 152) = v109;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 160), v106);
    ++*(v1 + 168);
  }

  *(v106 + 8) = 255;
  v110 = *(v1 + 128);
  v111 = operator new(0x20uLL);
  v111->__shared_owners_ = 0;
  p_shared_owners = &v111->__shared_owners_;
  v111->__shared_weak_owners_ = 0;
  v111->__vftable = &unk_2A1E0C5F8;
  v111[1].__vftable = v1;
  v135 = MEMORY[0x29EDCA5F8];
  v136 = 1174405120;
  v137 = ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__0vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v138 = &__block_descriptor_tmp_15_2;
  v139 = v111 + 1;
  v140 = v111;
  atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v142 = 0x40000000;
  v143 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_2;
  v144 = &unk_29EE5BA88;
  v145 = &v135;
  v113 = _Block_copy(&aBlock);
  v114 = v140;
  if (!v140 || atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_184;
    }

LABEL_187:
    (v111->__on_zero_shared)(v111);
    std::__shared_weak_count::__release_weak(v111);
    if (v113)
    {
      goto LABEL_185;
    }

    goto LABEL_188;
  }

  (v114->__on_zero_shared)(v114);
  std::__shared_weak_count::__release_weak(v114);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_187;
  }

LABEL_184:
  if (v113)
  {
LABEL_185:
    v115 = _Block_copy(v113);
    goto LABEL_189;
  }

LABEL_188:
  v115 = 0;
LABEL_189:
  v135 = v115;
  ice::Client::regEventHandlerInternal();
  if (v135)
  {
    _Block_release(v135);
  }

  if (v113)
  {
    _Block_release(v113);
  }

  v116 = *(v1 + 128);
  v117 = operator new(0x20uLL);
  v117->__shared_owners_ = 0;
  v118 = &v117->__shared_owners_;
  v117->__shared_weak_owners_ = 0;
  v117->__vftable = &unk_2A1E0C678;
  v117[1].__vftable = v1;
  v135 = MEMORY[0x29EDCA5F8];
  v136 = 1174405120;
  v137 = ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__1vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v138 = &__block_descriptor_tmp_19;
  v139 = v117 + 1;
  v140 = v117;
  atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v142 = 0x40000000;
  v143 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_2;
  v144 = &unk_29EE5BA88;
  v145 = &v135;
  v119 = _Block_copy(&aBlock);
  v120 = v140;
  if (!v140 || atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v118, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_196;
    }

LABEL_199:
    (v117->__on_zero_shared)(v117);
    std::__shared_weak_count::__release_weak(v117);
    if (v119)
    {
      goto LABEL_197;
    }

    goto LABEL_200;
  }

  (v120->__on_zero_shared)(v120);
  std::__shared_weak_count::__release_weak(v120);
  if (!atomic_fetch_add(v118, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_199;
  }

LABEL_196:
  if (v119)
  {
LABEL_197:
    v121 = _Block_copy(v119);
    goto LABEL_201;
  }

LABEL_200:
  v121 = 0;
LABEL_201:
  v135 = v121;
  ice::Client::regEventHandlerInternal();
  if (v135)
  {
    _Block_release(v135);
  }

  if (v119)
  {
    _Block_release(v119);
  }

  v122 = *(v1 + 128);
  v123 = operator new(0x20uLL);
  v123->__shared_owners_ = 0;
  v124 = &v123->__shared_owners_;
  v123->__shared_weak_owners_ = 0;
  v123->__vftable = &unk_2A1E0C6F8;
  v123[1].__vftable = v1;
  v135 = MEMORY[0x29EDCA5F8];
  v136 = 1174405120;
  v137 = ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__2vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v138 = &__block_descriptor_tmp_21_0;
  v139 = v123 + 1;
  v140 = v123;
  atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v142 = 0x40000000;
  v143 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_2;
  v144 = &unk_29EE5BA88;
  v145 = &v135;
  v125 = _Block_copy(&aBlock);
  v126 = v140;
  if (!v140 || atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v124, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_208;
    }

LABEL_211:
    (v123->__on_zero_shared)(v123);
    std::__shared_weak_count::__release_weak(v123);
    if (v125)
    {
      goto LABEL_209;
    }

    goto LABEL_212;
  }

  (v126->__on_zero_shared)(v126);
  std::__shared_weak_count::__release_weak(v126);
  if (!atomic_fetch_add(v124, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_211;
  }

LABEL_208:
  if (v125)
  {
LABEL_209:
    v127 = _Block_copy(v125);
    goto LABEL_213;
  }

LABEL_212:
  v127 = 0;
LABEL_213:
  v135 = v127;
  ice::Client::regEventHandlerInternal();
  if (v135)
  {
    _Block_release(v135);
  }

  if (v125)
  {
    _Block_release(v125);
  }

  v128 = *(v1 + 128);
  v129 = operator new(0x20uLL);
  v129->__shared_owners_ = 0;
  v130 = &v129->__shared_owners_;
  v129->__shared_weak_owners_ = 0;
  v129->__vftable = &unk_2A1E0C778;
  v129[1].__vftable = v1;
  v135 = MEMORY[0x29EDCA5F8];
  v136 = 1174405120;
  v137 = ___ZN3ice6detail17wrapEventCallbackIZZN7antenna16ARICommandDriver4initEvEUb_E3__3vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v138 = &__block_descriptor_tmp_23_1;
  v139 = v129 + 1;
  v140 = v129;
  atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v142 = 0x40000000;
  v143 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_2;
  v144 = &unk_29EE5BA88;
  v145 = &v135;
  v131 = _Block_copy(&aBlock);
  v132 = v140;
  if (!v140 || atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v130, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_220;
    }

LABEL_223:
    (v129->__on_zero_shared)(v129);
    std::__shared_weak_count::__release_weak(v129);
    if (v131)
    {
      goto LABEL_221;
    }

    goto LABEL_224;
  }

  (v132->__on_zero_shared)(v132);
  std::__shared_weak_count::__release_weak(v132);
  if (!atomic_fetch_add(v130, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_223;
  }

LABEL_220:
  if (v131)
  {
LABEL_221:
    v133 = _Block_copy(v131);
    goto LABEL_225;
  }

LABEL_224:
  v133 = 0;
LABEL_225:
  v135 = v133;
  ice::Client::regEventHandlerInternal();
  if (v135)
  {
    _Block_release(v135);
  }

  if (v131)
  {
    _Block_release(v131);
  }

  return ice::Client::start(*(v1 + 128));
}