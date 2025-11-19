void llvm::object::WasmObjectFile::parseCustomSection(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v451 = *MEMORY[0x277D85DE8];
  if (a4 > 7)
  {
    if (a4 != 8)
    {
      if (a4 == 9)
      {
        if (*a3 != 0x72656375646F7270 || *(a3 + 8) != 115)
        {
          goto LABEL_461;
        }

        *&__dst = v436;
        *(&__dst + 1) = 0x300000000;
        v440 = 0;
        v439 = 0;
        v438 = &v439;
        Varuint32 = readVaruint32(a5);
        if (Varuint32)
        {
          v337 = 0;
          v388 = Varuint32;
          do
          {
            String = readString(v5);
            v404.__r_.__value_.__r.__words[0] = String;
            v404.__r_.__value_.__l.__size_ = v339;
            if (v440)
            {
              std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v438, &v404);
              if ((v340 & 1) == 0)
              {
                goto LABEL_644;
              }
            }

            else
            {
              v341 = String;
              v342 = v339;
              v343 = DWORD2(__dst);
              if (!DWORD2(__dst))
              {
                goto LABEL_543;
              }

              v344 = 16 * DWORD2(__dst);
              v345 = (__dst + 8);
              while (*v345 != v342 || v342 && memcmp(*(v345 - 1), v341, v342))
              {
                v345 += 2;
                v344 -= 16;
                if (!v344)
                {
                  goto LABEL_542;
                }
              }

              if (v344)
              {
LABEL_644:
                operator new();
              }

LABEL_542:
              if (v343 >= 3)
              {
                do
                {
                  std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v438, (__dst + 16 * v343 - 16));
                  v343 = --DWORD2(__dst);
                }

                while (DWORD2(__dst));
                std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v438, &v404);
              }

              else
              {
LABEL_543:
                llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&__dst, v341, v342);
              }
            }

            switch(v404.__r_.__value_.__l.__size_)
            {
              case 3uLL:
                v348 = *v404.__r_.__value_.__l.__data_ == 25715 && *(v404.__r_.__value_.__r.__words[0] + 2) == 107;
                v346 = a2 + 232;
                if (!v348)
                {
LABEL_643:
                  operator new();
                }

                break;
              case 0xCuLL:
                v347 = *v404.__r_.__value_.__l.__data_ == 0x65737365636F7270 && *(v404.__r_.__value_.__r.__words[0] + 8) == 2036477284;
                v346 = a2 + 208;
                if (!v347)
                {
                  goto LABEL_643;
                }

                break;
              case 8uLL:
                v346 = a2 + 184;
                if (*v404.__r_.__value_.__l.__data_ != 0x65676175676E616CLL)
                {
                  goto LABEL_643;
                }

                break;
              default:
                goto LABEL_643;
            }

            v349 = readVaruint32(v5);
            *&v441 = &v442;
            *(&v441 + 1) = 0x800000000;
            v446 = 0;
            v447 = 0;
            v445 = &v446;
            if (v349)
            {
              v384 = v337;
              v350 = 0;
              v399 = v349;
              do
              {
                v402[0] = readString(v5);
                v402[1] = v351;
                v352 = readString(v5);
                v354 = v353;
                if (v447)
                {
                  std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v445, v402);
                  if ((v355 & 1) == 0)
                  {
                    goto LABEL_616;
                  }
                }

                else
                {
                  v356 = DWORD2(v441);
                  v357 = v402[0];
                  v358 = v402[1];
                  if (!DWORD2(v441))
                  {
                    goto LABEL_575;
                  }

                  v359 = 16 * DWORD2(v441);
                  v360 = (v441 + 8);
                  while (*v360 != v358 || v358 && memcmp(*(v360 - 1), v357, v358))
                  {
                    v360 += 2;
                    v359 -= 16;
                    if (!v359)
                    {
                      goto LABEL_574;
                    }
                  }

                  if (v359)
                  {
LABEL_616:
                    LODWORD(v409[0]) = 3;
                    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
                  }

LABEL_574:
                  if (v356 >= 8)
                  {
                    do
                    {
                      std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v445, (v441 + 16 * v356 - 16));
                      v356 = --DWORD2(v441);
                    }

                    while (DWORD2(v441));
                    std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(&v445, v402);
                  }

                  else
                  {
LABEL_575:
                    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v441, v357, v358);
                  }
                }

                v361 = v402[1];
                if (v402[1] > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_658;
                }

                if (v402[1] >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v409[2]) = v402[1];
                if (v402[1])
                {
                  memmove(v409, v402[0], v402[1]);
                }

                v5 = a5;
                *(v409 + v361) = 0;
                if (v354 > 0x7FFFFFFFFFFFFFF7)
                {
LABEL_658:
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                if (v354 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(p_ULEB128) = v354;
                if (v354)
                {
                  memmove(v406, v352, v354);
                }

                *(v406 + v354) = 0;
                v362 = *(v346 + 8);
                v363 = *(v346 + 16);
                if (v362 >= v363)
                {
                  v365 = *v346;
                  v366 = v362 - *v346;
                  v367 = 0xAAAAAAAAAAAAAAABLL * (v366 >> 4) + 1;
                  if (v367 > 0x555555555555555)
                  {
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  v368 = 0xAAAAAAAAAAAAAAABLL * ((v363 - v365) >> 4);
                  if (2 * v368 > v367)
                  {
                    v367 = 2 * v368;
                  }

                  if (v368 >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v369 = 0x555555555555555;
                  }

                  else
                  {
                    v369 = v367;
                  }

                  if (v369)
                  {
                    if (v369 <= 0x555555555555555)
                    {
                      operator new();
                    }

                    goto LABEL_659;
                  }

                  v370 = 16 * (v366 >> 4);
                  *v370 = *v409;
                  *(v370 + 16) = v409[2];
                  *(v370 + 24) = *v406;
                  *(v370 + 40) = p_ULEB128;
                  v364 = v370 + 48;
                  v371 = v370 - v366;
                  memcpy((v370 - v366), v365, v366);
                  *v346 = v371;
                  *(v346 + 8) = v364;
                  *(v346 + 16) = 0;
                  if (v365)
                  {
                    operator delete(v365);
                  }
                }

                else
                {
                  *v362 = *v409;
                  *(v362 + 16) = v409[2];
                  *(v362 + 24) = *v406;
                  *(v362 + 40) = p_ULEB128;
                  v364 = v362 + 48;
                }

                *(v346 + 8) = v364;
                ++v350;
              }

              while (v350 != v399);
              v372 = v446;
              v337 = v384;
            }

            else
            {
              v372 = 0;
            }

            std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(&v445, v372);
            if (v441 != &v442)
            {
              free(v441);
            }

            ++v337;
          }

          while (v337 != v388);
        }

        if (*(v5 + 8) != *(v5 + 16))
        {
          operator new();
        }

        v374 = a1;
        *a1 = 0;
        std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(&v438, v439);
        if (__dst != v436)
        {
          free(__dst);
        }
      }

      else
      {
        if (a4 != 15)
        {
          goto LABEL_444;
        }

        if (*a3 != 0x665F746567726174 || *(a3 + 7) != 0x7365727574616566)
        {
LABEL_461:
          if (*a3 == 1869374834 && *(a3 + 4) == 11875)
          {
            v300 = readVaruint32(a5);
            v301 = *(a2 + 72);
            if (0x8E38E38E38E38E39 * ((*(a2 + 80) - v301) >> 3) <= v300)
            {
              LODWORD(v441) = 3;
              llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
            }

            v302 = v300;
            v303 = readVaruint32(v5);
            if (v303)
            {
              v304 = v303;
              v305 = 0;
              v306 = v301 + 72 * v302;
              v398 = *(v306 + 40);
              while (1)
              {
                v307 = readVaruint32(v5);
                v308 = readVaruint32(v5);
                if (v308 < v305)
                {
                  LODWORD(v441) = 3;
                  goto LABEL_623;
                }

                v305 = v308;
                v309 = readVaruint32(v5);
                v310 = v309;
                switch(v307)
                {
                  case 0u:
                  case 1u:
                  case 2u:
                  case 0xCu:
                  case 0x12u:
                  case 0x13u:
                  case 0x18u:
                    v311 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v311) >> 5) || *(*(v311 + 32 * v309) + 16))
                    {
                      goto LABEL_628;
                    }

                    Varint32 = 0;
                    goto LABEL_480;
                  case 3u:
                  case 4u:
                  case 5u:
                  case 0xBu:
                  case 0x15u:
                  case 0x17u:
                    v313 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v313) >> 5) || *(*(v313 + 32 * v309) + 16) != 1)
                    {
                      goto LABEL_626;
                    }

                    Varint32 = readVarint32(v5);
                    goto LABEL_480;
                  case 6u:
                    if (v309 < ((*(a2 + 288) - *(a2 + 280)) >> 6))
                    {
                      goto LABEL_524;
                    }

                    LODWORD(v441) = 3;
                    goto LABEL_627;
                  case 7u:
                    v330 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v330) >> 5) || *(*(v330 + 32 * v309) + 16) >= 3u)
                    {
                      goto LABEL_650;
                    }

                    goto LABEL_524;
                  case 8u:
                    v333 = *(a2 + 536);
                    if (v309 < ((*(a2 + 544) - v333) >> 5) && !*(*(v333 + 32 * v309) + 16))
                    {
                      goto LABEL_519;
                    }

                    goto LABEL_628;
                  case 9u:
                    v329 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v329) >> 5) || *(*(v329 + 32 * v309) + 16) != 3)
                    {
                      LODWORD(v441) = 3;
LABEL_456:
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                    }

LABEL_519:
                    Varint32 = readVarint32(v5);
LABEL_485:
                    v315 = 4;
LABEL_486:
                    if (v307 <= 0x16u && ((1 << v307) & 0x490000) != 0)
                    {
LABEL_488:
                      v315 = 8;
                    }

LABEL_489:
                    if (v315 + v305 > v398)
                    {
                      LODWORD(v441) = 3;
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                    }

                    v316 = *(v306 + 56);
                    v317 = *(v306 + 64);
                    if (v316 >= v317)
                    {
                      v319 = *(v306 + 48);
                      v320 = 0xAAAAAAAAAAAAAAABLL * ((v316 - v319) >> 3);
                      v321 = v320 + 1;
                      if (v320 + 1 > 0xAAAAAAAAAAAAAAALL)
                      {
                        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                      }

                      v322 = 0xAAAAAAAAAAAAAAABLL * ((v317 - v319) >> 3);
                      if (2 * v322 > v321)
                      {
                        v321 = 2 * v322;
                      }

                      if (v322 >= 0x555555555555555)
                      {
                        v323 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v323 = v321;
                      }

                      if (v323)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(v323);
                      }

                      v324 = 24 * v320;
                      *v324 = v307;
                      *(v324 + 1) = 0;
                      *(v324 + 3) = 0;
                      *(v324 + 4) = v310;
                      *(v324 + 8) = v305;
                      *(v324 + 16) = Varint32;
                      v318 = 24 * v320 + 24;
                      v325 = *(v306 + 48);
                      v326 = *(v306 + 56) - v325;
                      v327 = v324 - v326;
                      memcpy((v324 - v326), v325, v326);
                      v328 = *(v306 + 48);
                      *(v306 + 48) = v327;
                      *(v306 + 56) = v318;
                      *(v306 + 64) = 0;
                      if (v328)
                      {
                        operator delete(v328);
                      }

                      v5 = a5;
                    }

                    else
                    {
                      *v316 = v307;
                      *(v316 + 1) = 0;
                      *(v316 + 3) = 0;
                      *(v316 + 4) = v310;
                      v318 = v316 + 24;
                      *(v316 + 8) = v305;
                      *(v316 + 16) = Varint32;
                    }

                    *(v306 + 56) = v318;
                    if (!--v304)
                    {
                      goto LABEL_611;
                    }

                    break;
                  case 0xAu:
                    v334 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v334) >> 5) || *(*(v334 + 32 * v309) + 16) != 4)
                    {
                      LODWORD(v441) = 3;
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                    }

                    goto LABEL_524;
                  case 0xDu:
                    v335 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v335) >> 5) || *(*(v335 + 32 * v309) + 16) != 2)
                    {
LABEL_650:
                      LODWORD(v441) = 3;
LABEL_623:
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
                    }

                    Varint32 = 0;
                    goto LABEL_485;
                  case 0xEu:
                  case 0xFu:
                  case 0x10u:
                  case 0x11u:
                  case 0x19u:
                    v314 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v314) >> 5) || *(*(v314 + 32 * v309) + 16) != 1)
                    {
LABEL_626:
                      LODWORD(v441) = 3;
LABEL_627:
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                    }

                    Varint32 = readLEB128(v5);
LABEL_480:
                    if ((v307 - 14) > 3u)
                    {
                      v315 = 5;
                    }

                    else
                    {
                      v315 = qword_2750C7FB0[(v307 - 14)];
                    }

                    if (v307 <= 0x17u && ((1 << v307) & 0x802324) != 0)
                    {
                      goto LABEL_485;
                    }

                    goto LABEL_486;
                  case 0x14u:
                    v332 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v332) >> 5) || *(*(v332 + 32 * v309) + 16) != 5)
                    {
                      LODWORD(v441) = 3;
                      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                    }

LABEL_524:
                    Varint32 = 0;
                    v315 = 5;
                    goto LABEL_489;
                  case 0x16u:
                    v331 = *(a2 + 536);
                    if (v309 >= ((*(a2 + 544) - v331) >> 5) || *(*(v331 + 32 * v309) + 16))
                    {
LABEL_628:
                      LODWORD(v441) = 3;
                      goto LABEL_640;
                    }

                    Varint32 = readLEB128(v5);
                    goto LABEL_488;
                  default:
                    *&v441 = "invalid relocation type: ";
                    v442 = v307;
                    goto LABEL_618;
                }
              }
            }

LABEL_611:
            if (*(v5 + 8) != *(v5 + 16))
            {
              LODWORD(v441) = 3;
              goto LABEL_623;
            }
          }

          goto LABEL_648;
        }

        *&v441 = &v442;
        *(&v441 + 1) = 0x800000000;
        v450 = 0;
        v449 = 0;
        v448 = &v449;
        v182 = readVaruint32(a5);
        if (v182)
        {
          v183 = 0;
          v395 = v182;
          do
          {
            v409[1] = 0;
            v409[2] = 0;
            v410 = 0;
            v184 = *(v5 + 8);
            if (v184 == *(v5 + 16))
            {
LABEL_662:
              llvm::report_fatal_error("EOF while reading uint8", 1);
            }

            *(v5 + 8) = v184 + 1;
            v185 = *v184;
            LOBYTE(v409[0]) = v185;
            v186 = v185 > 0x3D;
            v187 = (1 << v185) & 0x2000280000000000;
            if (v186 || v187 == 0)
            {
              LODWORD(__dst) = 3;
              llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
            }

            v189 = readString(v5);
            if (v190 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_658;
            }

            v191 = v190;
            if (v190 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v436[0]) = v190;
            if (v190)
            {
              memmove(&__dst, v189, v190);
            }

            *(&v436[-2] + v191) = 0;
            if (SHIBYTE(v410) < 0)
            {
              operator delete(v409[1]);
            }

            *&v409[1] = __dst;
            v410 = v436[0];
            if (v450)
            {
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v448, &v409[1]);
              if ((v192 & 1) == 0)
              {
                goto LABEL_625;
              }
            }

            else
            {
              v193 = DWORD2(v441);
              if (!DWORD2(v441))
              {
                goto LABEL_309;
              }

              v194 = v441;
              if (v410 >= 0)
              {
                v195 = HIBYTE(v410);
              }

              else
              {
                v195 = v409[2];
              }

              if (v410 >= 0)
              {
                v196 = &v409[1];
              }

              else
              {
                v196 = v409[1];
              }

              v197 = 24 * DWORD2(v441);
              while (1)
              {
                v198 = *(v194 + 23);
                v199 = v198;
                if ((v198 & 0x80u) != 0)
                {
                  v198 = *(v194 + 8);
                }

                if (v198 == v195)
                {
                  v200 = v199 >= 0 ? v194 : *v194;
                  if (!memcmp(v200, v196, v195))
                  {
                    break;
                  }
                }

                v194 += 24;
                v197 -= 24;
                if (!v197)
                {
                  goto LABEL_308;
                }
              }

              if (v197)
              {
LABEL_625:
                std::operator+<char>();
                v375 = std::string::append(&v404, "");
                v376 = v375->__r_.__value_.__r.__words[2];
                *v406 = *&v375->__r_.__value_.__l.__data_;
                p_ULEB128 = v376;
                v375->__r_.__value_.__l.__size_ = 0;
                v375->__r_.__value_.__r.__words[2] = 0;
                v375->__r_.__value_.__r.__words[0] = 0;
                operator new();
              }

LABEL_308:
              if (v193 >= 8)
              {
                do
                {
                  while (1)
                  {
                    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v448, (v441 + 24 * v193 - 24));
                    v193 = DWORD2(v441) - 1;
                    DWORD2(v441) = v193;
                    v201 = v441 + 24 * v193;
                    if (*(v201 + 23) < 0)
                    {
                      break;
                    }

                    if (!v193)
                    {
                      goto LABEL_314;
                    }
                  }

                  operator delete(*v201);
                  v193 = DWORD2(v441);
                }

                while (DWORD2(v441));
LABEL_314:
                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v448, &v409[1]);
              }

              else
              {
LABEL_309:
                llvm::SmallVectorTemplateBase<std::string,false>::push_back(&v441, &v409[1]);
              }
            }

            v203 = *(a2 + 264);
            v202 = *(a2 + 272);
            if (v203 >= v202)
            {
              v206 = *(a2 + 256);
              v207 = (v203 - v206) >> 5;
              if ((v207 + 1) >> 59)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v208 = v202 - v206;
              v209 = v208 >> 4;
              if (v208 >> 4 <= (v207 + 1))
              {
                v209 = v207 + 1;
              }

              if (v208 >= 0x7FFFFFFFFFFFFFE0)
              {
                v210 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v210 = v209;
              }

              if (v210)
              {
                if (!(v210 >> 59))
                {
                  operator new();
                }

                goto LABEL_659;
              }

              v212 = 32 * v207;
              *(32 * v207) = v409[0];
              if (SHIBYTE(v410) < 0)
              {
                std::string::__init_copy_ctor_external((32 * v207 + 8), v409[1], v409[2]);
              }

              else
              {
                *(32 * v207 + 8) = *&v409[1];
                *(32 * v207 + 0x18) = v410;
              }

              v213 = *(a2 + 256);
              v214 = *(a2 + 264);
              v215 = v212 + v213 - v214;
              if (v214 != v213)
              {
                v216 = *(a2 + 256);
                v217 = v212 + v213 - v214;
                do
                {
                  *v217 = *v216;
                  v218 = *(v216 + 8);
                  *(v217 + 24) = *(v216 + 24);
                  *(v217 + 8) = v218;
                  *(v216 + 16) = 0;
                  *(v216 + 24) = 0;
                  *(v216 + 8) = 0;
                  v216 += 32;
                  v217 += 32;
                }

                while (v216 != v214);
                do
                {
                  if (*(v213 + 31) < 0)
                  {
                    operator delete(*(v213 + 8));
                  }

                  v213 += 32;
                }

                while (v213 != v214);
                v213 = *(a2 + 256);
              }

              v211 = v212 + 32;
              *(a2 + 256) = v215;
              *(a2 + 264) = v212 + 32;
              *(a2 + 272) = 0;
              if (v213)
              {
                operator delete(v213);
              }

              v5 = a5;
            }

            else
            {
              *v203 = v409[0];
              v204 = (v203 + 8);
              if (SHIBYTE(v410) < 0)
              {
                std::string::__init_copy_ctor_external(v204, v409[1], v409[2]);
              }

              else
              {
                v205 = *&v409[1];
                *(v203 + 24) = v410;
                *&v204->__r_.__value_.__l.__data_ = v205;
              }

              v211 = v203 + 32;
            }

            *(a2 + 264) = v211;
            if (SHIBYTE(v410) < 0)
            {
              operator delete(v409[1]);
            }

            ++v183;
          }

          while (v183 != v395);
        }

        if (*(v5 + 8) != *(v5 + 16))
        {
          operator new();
        }

        v374 = a1;
        *a1 = 0;
        std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&v448, v449);
        llvm::SmallVector<std::string,2u>::~SmallVector(&v441);
      }

LABEL_647:
      if (*v374)
      {
        goto LABEL_649;
      }

LABEL_648:
      *a1 = 0;
      goto LABEL_649;
    }

    if (*a3 != 0x302E6B6E696C7964)
    {
      goto LABEL_461;
    }

    *(a2 + 589) = 1;
    v249 = *(a5 + 8);
    v250 = *(a5 + 16);
    if (v249 >= v250)
    {
      if (v249 != v250)
      {
        LODWORD(v441) = 3;
        llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
      }

      goto LABEL_648;
    }

    v397 = *(a5 + 16);
    while (1)
    {
      *(v5 + 8) = v249 + 1;
      *(v5 + 16) = v250;
      v251 = *v249;
      v252 = *(v5 + 8) + readVaruint32(v5);
      *(v5 + 16) = v252;
      if (v251 > 2)
      {
        if (v251 == 3)
        {
          v277 = readVaruint32(v5);
          if (v277)
          {
            v278 = v277;
            do
            {
              v279 = readString(v5);
              v281 = v280;
              v282 = readVaruint32(v5);
              v284 = *(a2 + 168);
              v283 = *(a2 + 176);
              if (v284 >= v283)
              {
                v286 = *(a2 + 160);
                v287 = v284 - v286;
                v288 = 0xAAAAAAAAAAAAAAABLL * ((v284 - v286) >> 3);
                v289 = v288 + 1;
                if (v288 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v290 = 0xAAAAAAAAAAAAAAABLL * ((v283 - v286) >> 3);
                if (2 * v290 > v289)
                {
                  v289 = 2 * v290;
                }

                if (v290 >= 0x555555555555555)
                {
                  v291 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v291 = v289;
                }

                if (v291)
                {
                  if (v291 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

LABEL_659:
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v292 = 24 * v288;
                *v292 = v279;
                *(v292 + 8) = v281;
                *(v292 + 16) = v282;
                v285 = 24 * v288 + 24;
                v293 = (24 * v288 - v287);
                memcpy(v293, v286, v287);
                *(a2 + 160) = v293;
                *(a2 + 168) = v285;
                *(a2 + 176) = 0;
                if (v286)
                {
                  operator delete(v286);
                }
              }

              else
              {
                *v284 = v279;
                *(v284 + 8) = v281;
                v285 = v284 + 24;
                *(v284 + 16) = v282;
              }

              *(a2 + 168) = v285;
              --v278;
            }

            while (v278);
          }

          goto LABEL_441;
        }

        if (v251 == 4)
        {
          v256 = readVaruint32(v5);
          if (v256)
          {
            v257 = v256;
            while (1)
            {
              v258 = readString(v5);
              v260 = v259;
              v261 = readString(v5);
              v262 = v5;
              v264 = v263;
              v265 = readVaruint32(v262);
              v266 = *(a2 + 144);
              v267 = *(a2 + 152);
              if (v266 >= v267)
              {
                v269 = *(a2 + 136);
                v270 = v266 - v269;
                v271 = 0xCCCCCCCCCCCCCCCDLL * ((v266 - v269) >> 3);
                v272 = v271 + 1;
                if (v271 + 1 > 0x666666666666666)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v273 = 0xCCCCCCCCCCCCCCCDLL * ((v267 - v269) >> 3);
                if (2 * v273 > v272)
                {
                  v272 = 2 * v273;
                }

                if (v273 >= 0x333333333333333)
                {
                  v274 = 0x666666666666666;
                }

                else
                {
                  v274 = v272;
                }

                if (v274)
                {
                  if (v274 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  goto LABEL_659;
                }

                v275 = 40 * v271;
                *v275 = v258;
                *(v275 + 8) = v260;
                *(v275 + 16) = v261;
                *(v275 + 24) = v264;
                *(v275 + 32) = v265;
                v268 = 40 * v271 + 40;
                v276 = (40 * v271 - v270);
                memcpy(v276, v269, v270);
                *(a2 + 136) = v276;
                *(a2 + 144) = v268;
                *(a2 + 152) = 0;
                if (v269)
                {
                  operator delete(v269);
                }
              }

              else
              {
                *v266 = v258;
                *(v266 + 8) = v260;
                *(v266 + 16) = v261;
                *(v266 + 24) = v264;
                v268 = v266 + 40;
                *(v266 + 32) = v265;
              }

              v5 = a5;
              *(a2 + 144) = v268;
              if (!--v257)
              {
                goto LABEL_441;
              }
            }
          }

          goto LABEL_441;
        }
      }

      else
      {
        if (v251 == 1)
        {
          *(a2 + 96) = readVaruint32(v5);
          *(a2 + 100) = readVaruint32(v5);
          *(a2 + 104) = readVaruint32(v5);
          *(a2 + 108) = readVaruint32(v5);
          goto LABEL_441;
        }

        if (v251 == 2)
        {
          v253 = readVaruint32(v5);
          if (v253)
          {
            v254 = v253;
            do
            {
              --v254;
              *&v441 = readString(v5);
              *(&v441 + 1) = v255;
              std::vector<llvm::StringRef>::push_back[abi:nn200100](a2 + 112, &v441);
            }

            while (v254);
          }

          goto LABEL_441;
        }
      }

      *(v5 + 8) = v252;
LABEL_441:
      v249 = *(v5 + 8);
      if (v249 != *(v5 + 16))
      {
        operator new();
      }

      v250 = v397;
      if (v249 >= v397)
      {
        goto LABEL_648;
      }
    }
  }

  if (a4 == 4)
  {
    if (*a3 != 1701667182)
    {
      goto LABEL_648;
    }

    __dst = 0uLL;
    LODWORD(v436[0]) = 0;
    memset(v409, 0, 20);
    v406[0] = 0;
    v406[1] = 0;
    LODWORD(p_ULEB128) = 0;
    v219 = *(a5 + 8);
    while (1)
    {
      v220 = *(v5 + 16);
      if (v219 >= v220)
      {
        break;
      }

      *(v5 + 8) = v219 + 1;
      v221 = *v219;
      v222 = readVaruint32(v5);
      v223 = v221 > 9 || ((1 << v221) & 0x282) == 0;
      v396 = (*(v5 + 8) + v222);
      if (v223)
      {
        *(v5 + 8) += v222;
      }

      else
      {
        v224 = readVaruint32(v5);
        if (v224)
        {
          for (i = v224; i; --i)
          {
            v226 = readVaruint32(v5);
            v227 = readString(v5);
            v229 = v228;
            if (v221 == 7)
            {
              v404.__r_.__value_.__r.__words[0] = v226;
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v409, &v404, &v441);
              if ((v442 & 1) == 0)
              {
                LODWORD(v441) = 3;
                goto LABEL_636;
              }

              if (*(a2 + 672) + ((*(a2 + 360) - *(a2 + 352)) >> 6) <= v226 || v229 == 0)
              {
                LODWORD(v441) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              v233 = 1;
            }

            else if (v221 == 1)
            {
              v404.__r_.__value_.__r.__words[0] = v226;
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__dst, &v404, &v441);
              if ((v442 & 1) == 0)
              {
                LODWORD(v441) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              v230 = *(a2 + 680);
              v231 = *(a2 + 512);
              if (v230 + ((*(a2 + 520) - v231) >> 7) <= v226 || v229 == 0)
              {
                LODWORD(v441) = 3;
LABEL_636:
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              v233 = 0;
              v234 = v226 >= v230;
              v235 = v226 - v230;
              if (v234)
              {
                v236 = v231 + (v235 << 7);
                *(v236 + 104) = v227;
                *(v236 + 112) = v229;
              }
            }

            else
            {
              v404.__r_.__value_.__r.__words[0] = v226;
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>,unsigned long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseSetPair<unsigned long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v406, &v404, &v441);
              if ((v442 & 1) == 0)
              {
                LODWORD(v441) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - *(a2 + 472)) >> 3) < v226)
              {
                LODWORD(v441) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
              }

              v233 = 2;
            }

            v238 = *(a2 + 568);
            v239 = *(a2 + 576);
            if (v238 >= v239)
            {
              v241 = *(a2 + 560);
              v242 = v238 - v241;
              v243 = 0xAAAAAAAAAAAAAAABLL * ((v238 - v241) >> 3);
              v244 = v243 + 1;
              if (v243 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v245 = 0xAAAAAAAAAAAAAAABLL * ((v239 - v241) >> 3);
              if (2 * v245 > v244)
              {
                v244 = 2 * v245;
              }

              if (v245 >= 0x555555555555555)
              {
                v246 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v246 = v244;
              }

              if (v246)
              {
                if (v246 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                goto LABEL_659;
              }

              v247 = 24 * v243;
              *v247 = v233;
              *(v247 + 4) = v226;
              *(v247 + 8) = v227;
              *(v247 + 16) = v229;
              v240 = 24 * v243 + 24;
              v248 = (24 * v243 - v242);
              memcpy(v248, v241, v242);
              *(a2 + 560) = v248;
              *(a2 + 568) = v240;
              *(a2 + 576) = 0;
              if (v241)
              {
                operator delete(v241);
              }

              v5 = a5;
            }

            else
            {
              *v238 = v233;
              *(v238 + 4) = v226;
              v240 = v238 + 24;
              *(v238 + 8) = v227;
              *(v238 + 16) = v229;
            }

            *(a2 + 568) = v240;
          }
        }
      }

      v219 = *(v5 + 8);
      if (v219 != v396)
      {
        LODWORD(v441) = 3;
        llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
      }
    }

    if (v219 != v220)
    {
      LODWORD(v441) = 3;
      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
    }

    v374 = a1;
    *a1 = 0;
    MEMORY[0x277C69E30](v406[0], 8);
    MEMORY[0x277C69E30](v409[0], 8);
    MEMORY[0x277C69E30](__dst, 8);
    goto LABEL_647;
  }

  if (a4 == 6)
  {
    if (*a3 == 1768716644 && *(a3 + 4) == 27502)
    {
      *(a2 + 589) = 1;
      *(a2 + 96) = readVaruint32(a5);
      *(a2 + 100) = readVaruint32(v5);
      *(a2 + 104) = readVaruint32(v5);
      *(a2 + 108) = readVaruint32(v5);
      v295 = readVaruint32(v5);
      if (v295)
      {
        v296 = v295;
        do
        {
          --v296;
          *&v441 = readString(v5);
          *(&v441 + 1) = v297;
          std::vector<llvm::StringRef>::push_back[abi:nn200100](a2 + 112, &v441);
        }

        while (v296);
      }

      if (*(v5 + 8) != *(v5 + 16))
      {
        LODWORD(v441) = 3;
        goto LABEL_456;
      }

      goto LABEL_648;
    }

    goto LABEL_461;
  }

  if (a4 != 7)
  {
LABEL_444:
    if (a4 >= 6)
    {
      goto LABEL_461;
    }

    goto LABEL_648;
  }

  if (*a3 != 1802398060 || *(a3 + 3) != 1735289195)
  {
    goto LABEL_461;
  }

  *(a2 + 588) = 1;
  v8 = readVaruint32(a5);
  *(a2 + 592) = v8;
  v9 = ")";
  if (v8 != 2)
  {
    v406[0] = "unexpected metadata version: ";
    p_ULEB128 = v8;
    v408 = 2051;
    v409[0] = v406;
    v409[2] = " (Expected: ";
    v373 = 770;
    v411 = 770;
    *&__dst = v409;
    v436[0] = 2;
    v437 = 2050;
    *&v441 = &__dst;
    v442 = ")";
    goto LABEL_619;
  }

  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v378 = (a2 + 624);
  v379 = v11;
  while (1)
  {
    if (v10 >= v11)
    {
      if (v10 != v11)
      {
        LODWORD(v441) = 3;
LABEL_640:
        llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
      }

      goto LABEL_648;
    }

    *(v5 + 8) = v10 + 1;
    *(v5 + 16) = v11;
    v12 = *v10;
    v13 = *(v5 + 8) + readVaruint32(v5);
    *(v5 + 16) = v13;
    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v142 = readVaruint32(v5);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - *(a2 + 472)) >> 3) < v142)
        {
          LODWORD(v441) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
        }

        if (v142)
        {
          v143 = 0;
          v144 = 104 * v142;
          do
          {
            v145 = readString(v5);
            v146 = *(a2 + 472) + v143;
            *(v146 + 72) = v145;
            *(v146 + 80) = v147;
            *(*(a2 + 472) + v143 + 88) = readVaruint32(v5);
            *(*(a2 + 472) + v143 + 92) = readVaruint32(v5);
            v143 += 104;
          }

          while (v144 != v143);
        }
      }

      else
      {
        if (v12 != 6)
        {
          goto LABEL_189;
        }

        v14 = readVaruint32(v5);
        v15 = *(a2 + 600);
        if (v14 > ((*(a2 + 616) - v15) >> 3))
        {
          v16 = *(a2 + 608) - v15;
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(v14);
        }

        if (v14)
        {
          while (1)
          {
            v17 = readVaruint32(v5);
            v18 = readVaruint32(v5);
            v19 = v18;
            v20 = *(a2 + 536);
            if (v18 >= ((*(a2 + 544) - v20) >> 5) || *(*(v20 + 32 * v18) + 16))
            {
              break;
            }

            v21 = *(a2 + 608);
            v22 = *(a2 + 616);
            if (v21 >= v22)
            {
              v24 = *(a2 + 600);
              v25 = (v21 - v24) >> 3;
              if ((v25 + 1) >> 61)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v26 = v22 - v24;
              v27 = v26 >> 2;
              if (v26 >> 2 <= (v25 + 1))
              {
                v27 = v25 + 1;
              }

              if (v26 >= 0x7FFFFFFFFFFFFFF8)
              {
                v28 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v27;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(v28);
              }

              *(8 * v25) = v17 | (v19 << 32);
              v23 = 8 * v25 + 8;
              v29 = *(a2 + 600);
              v30 = *(a2 + 608) - v29;
              v31 = (8 * v25 - v30);
              memcpy(v31, v29, v30);
              v32 = *(a2 + 600);
              *(a2 + 600) = v31;
              *(a2 + 608) = v23;
              *(a2 + 616) = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v21 = v17 | (v18 << 32);
              v23 = (v21 + 1);
            }

            *(a2 + 608) = v23;
            if (!--v14)
            {
              goto LABEL_258;
            }
          }

          *&v441 = "invalid function symbol: ";
          v442 = v18;
LABEL_618:
          v373 = 2051;
LABEL_619:
          v444 = v373;
          operator new();
        }
      }

      goto LABEL_258;
    }

    if (v12 != 7)
    {
      break;
    }

    v148 = readVaruint32(v5);
    __dst = 0uLL;
    v436[0] = 0x800000000;
    if (v148)
    {
      v149 = v148;
      for (j = 0; j != v149; ++j)
      {
        v152 = readString(v5);
        v153 = v151;
        if (!v151 || (llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace<>(&__dst, v152, v151), (v154 & 1) == 0))
        {
          *&v441 = "bad/duplicate COMDAT name ";
          v442 = v152;
          v443 = v153;
          v444 = 1283;
          operator new();
        }

        v155 = *(a2 + 632);
        v156 = *(a2 + 640);
        if (v155 >= v156)
        {
          v158 = (v155 - *v378) >> 4;
          v159 = v158 + 1;
          if ((v158 + 1) >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v160 = v156 - *v378;
          if (v160 >> 3 > v159)
          {
            v159 = v160 >> 3;
          }

          if (v160 >= 0x7FFFFFFFFFFFFFF0)
          {
            v161 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v161 = v159;
          }

          if (v161)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(v378, v161);
          }

          v162 = (16 * v158);
          *v162 = v152;
          v162[1] = v153;
          v157 = 16 * v158 + 16;
          v163 = *(a2 + 624);
          v164 = *(a2 + 632) - v163;
          v165 = v162 - v164;
          memcpy(v162 - v164, v163, v164);
          v166 = *(a2 + 624);
          *(a2 + 624) = v165;
          *(a2 + 632) = v157;
          *(a2 + 640) = 0;
          if (v166)
          {
            operator delete(v166);
          }
        }

        else
        {
          *v155 = v152;
          v155[1] = v153;
          v157 = (v155 + 2);
        }

        *(a2 + 632) = v157;
        if (readVaruint32(v5))
        {
          LODWORD(v441) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
        }

        v167 = readVaruint32(v5);
        if (v167)
        {
          for (k = v167; k; --k)
          {
            v169 = readVaruint32(v5);
            v170 = readVaruint32(v5);
            if (v169)
            {
              if (v169 == 1)
              {
                v174 = *(a2 + 680);
                if (v170 < v174 || (v175 = *(a2 + 512), v174 + ((*(a2 + 520) - v175) >> 7) <= v170))
                {
                  LODWORD(v441) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v176 = v175 + ((v170 - v174) << 7);
                v177 = *(v176 + 120);
                v173 = (v176 + 120);
                if (v177 != -1)
                {
                  LODWORD(v441) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }
              }

              else
              {
                if (v169 != 5)
                {
                  LODWORD(v441) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v171 = *(a2 + 72);
                if (0x8E38E38E38E38E39 * ((*(a2 + 80) - v171) >> 3) <= v170)
                {
                  LODWORD(v441) = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v172 = (v171 + 72 * v170);
                if (*v172)
                {
                  LODWORD(v441) = 3;
LABEL_237:
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v173 = v172 + 6;
              }
            }

            else
            {
              v178 = *(a2 + 472);
              if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - v178) >> 3) <= v170)
              {
                LODWORD(v441) = 3;
                goto LABEL_237;
              }

              v179 = v178 + 104 * v170;
              v180 = *(v179 + 96);
              v173 = (v179 + 96);
              if (v180 != -1)
              {
                LODWORD(v441) = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }
            }

            *v173 = j;
          }
        }
      }
    }

    *a1 = 0;
    llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(&__dst);
    if (*a1)
    {
      goto LABEL_649;
    }

LABEL_258:
    v10 = *(v5 + 8);
    v11 = v379;
    if (v10 != *(v5 + 16))
    {
      LODWORD(v441) = 3;
      llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
    }
  }

  if (v12 != 8)
  {
LABEL_189:
    *(v5 + 8) = v13;
    goto LABEL_258;
  }

  v33 = readVaruint32(v5);
  v34 = v33;
  v35 = *(a2 + 648);
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 664) - v35) >> 3) < v33)
  {
    v36 = *(a2 + 656) - v35;
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSymbolInfo>>(v33);
  }

  v37 = *(a2 + 536);
  if (v33 > ((*(a2 + 552) - v37) >> 5))
  {
    v38 = *(a2 + 544) - v37;
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSymbol>>(v33);
  }

  v431[0] = 0;
  v431[1] = 0;
  v431[2] = 0x800000000;
  v428 = 0;
  v429 = 0;
  v430 = 0;
  v425 = 0;
  v426 = 0;
  v427 = 0;
  v422 = 0;
  v423 = 0;
  v424 = 0;
  v39 = (*(a2 + 408) - *(a2 + 400)) >> 3;
  __p = 0;
  v420 = 0;
  v421 = 0;
  std::vector<llvm::wasm::WasmImport *>::reserve(&v428, 0x8E38E38E38E38E39 * v39);
  std::vector<llvm::wasm::WasmImport *>::reserve(&v425, 0x8E38E38E38E38E39 * ((*(a2 + 408) - *(a2 + 400)) >> 3));
  std::vector<llvm::wasm::WasmImport *>::reserve(&v422, 0x8E38E38E38E38E39 * ((*(a2 + 408) - *(a2 + 400)) >> 3));
  std::vector<llvm::wasm::WasmImport *>::reserve(&__p, 0x8E38E38E38E38E39 * ((*(a2 + 408) - *(a2 + 400)) >> 3));
  v41 = *(a2 + 400);
  v40 = *(a2 + 408);
  if (v41 != v40)
  {
    v389 = v34;
    v42 = v420;
    v43 = v423;
    v391 = v424;
    v393 = v421;
    __src = __p;
    v381 = v422;
    v9 = v429;
    v385 = v427;
    v386 = v430;
    v44 = v426;
    v382 = v428;
    v383 = v425;
    while (1)
    {
      v45 = *(v41 + 32);
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          if (v9 >= v386)
          {
            v58 = v9 - v382;
            v59 = (v9 - v382) >> 3;
            v60 = v59 + 1;
            if ((v59 + 1) >> 61)
            {
LABEL_665:
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            if ((v386 - v382) >> 2 > v60)
            {
              v60 = (v386 - v382) >> 2;
            }

            if (v386 - v382 >= 0x7FFFFFFFFFFFFFF8)
            {
              v61 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v60;
            }

            if (v61)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v61);
            }

            v386 = 0;
            *(8 * v59) = v41;
            v9 = (8 * v59 + 8);
            memcpy(0, v382, v58);
            if (v382)
            {
              operator delete(v382);
            }

            v382 = 0;
            goto LABEL_100;
          }

          *v9 = v41;
          v9 += 8;
        }

        else if (v45 == 4)
        {
          if (v43 >= v391)
          {
            v50 = v43 - v381;
            v51 = (v43 - v381) >> 3;
            v52 = v51 + 1;
            if ((v51 + 1) >> 61)
            {
              goto LABEL_665;
            }

            if ((v391 - v381) >> 2 > v52)
            {
              v52 = (v391 - v381) >> 2;
            }

            if (v391 - v381 >= 0x7FFFFFFFFFFFFFF8)
            {
              v53 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v53);
            }

            v391 = 0;
            *(8 * v51) = v41;
            v43 = (8 * v51 + 8);
            memcpy(0, v381, v50);
            if (v381)
            {
              operator delete(v381);
            }

            v381 = 0;
            goto LABEL_100;
          }

          *v43 = v41;
          v43 += 8;
        }
      }

      else if (*(v41 + 32))
      {
        if (v45 == 1)
        {
          if (v42 >= v393)
          {
            v46 = v42 - __src;
            v47 = (v42 - __src) >> 3;
            v48 = v47 + 1;
            if ((v47 + 1) >> 61)
            {
              goto LABEL_665;
            }

            if ((v393 - __src) >> 2 > v48)
            {
              v48 = (v393 - __src) >> 2;
            }

            if (v393 - __src >= 0x7FFFFFFFFFFFFFF8)
            {
              v49 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v48;
            }

            if (v49)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v49);
            }

            v393 = 0;
            *(8 * v47) = v41;
            v42 = (8 * v47 + 8);
            memcpy(0, __src, v46);
            if (__src)
            {
              operator delete(__src);
            }

            __src = 0;
LABEL_100:
            v5 = a5;
            goto LABEL_101;
          }

          *v42 = v41;
          v42 += 8;
        }
      }

      else
      {
        if (v44 >= v385)
        {
          v54 = v44 - v383;
          v55 = (v44 - v383) >> 3;
          v56 = v55 + 1;
          if ((v55 + 1) >> 61)
          {
            goto LABEL_665;
          }

          if ((v385 - v383) >> 2 > v56)
          {
            v56 = (v385 - v383) >> 2;
          }

          if (v385 - v383 >= 0x7FFFFFFFFFFFFFF8)
          {
            v57 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v57);
          }

          v385 = 0;
          *(8 * v55) = v41;
          v44 = (8 * v55 + 8);
          memcpy(0, v383, v54);
          if (v383)
          {
            operator delete(v383);
          }

          v383 = 0;
          goto LABEL_100;
        }

        *v44 = v41;
        v44 += 8;
      }

LABEL_101:
      v41 += 72;
      if (v41 == v40)
      {
        v420 = v42;
        v421 = v393;
        __p = __src;
        v423 = v43;
        v424 = v391;
        v422 = v381;
        v429 = v9;
        v430 = v386;
        v427 = v385;
        v428 = v382;
        v425 = v383;
        v426 = v44;
        v34 = v389;
        break;
      }
    }
  }

  if (v34)
  {
    while (2)
    {
      v390 = v34;
      v62 = *(v5 + 8);
      if (v62 == *(v5 + 16))
      {
        goto LABEL_662;
      }

      *(v5 + 8) = v62 + 1;
      v63 = *v62;
      v392 = readVaruint32(v5);
      v64 = v392 & 0x10;
      v394 = v63;
      if (v63 > 2)
      {
        if (v63 == 3)
        {
          if ((v392 & 3) != 2)
          {
            operator new();
          }

          LODWORD(v9) = readVaruint32(v5);
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v72 = 0;
          v387 = 0;
          v88 = *(a2 + 72) + 72 * v9;
          v69 = *(v88 + 8);
          v70 = *(v88 + 16);
          goto LABEL_157;
        }

        if (v63 != 4)
        {
          if (v63 != 5)
          {
            *&v441 = "invalid symbol type: ";
            v442 = v63;
            v444 = 2051;
            operator new();
          }

          v78 = readVaruint32(v5);
          v79 = *(a2 + 676);
          if (v79 + 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 312) - *(a2 + 304)) >> 3) <= v78 || (LODWORD(v9) = v78, v79 <= v78 == v64 >> 4))
          {
            LODWORD(v441) = 3;
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
          }

          if ((v392 & 0x10) == 0)
          {
            v80 = readString(v5);
            v69 = v80;
            v70 = v81;
            v82 = *(a2 + 304) + 56 * (v9 - *(a2 + 676));
            v387 = v82 + 8;
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = 0;
            v72 = 0;
            if (!*(v82 + 48))
            {
              *(v82 + 40) = v80;
              *(v82 + 48) = v81;
            }

            goto LABEL_157;
          }

          if ((v392 & 3) == 1)
          {
            LODWORD(v441) = 3;
LABEL_243:
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
          }

          v97 = *(__p + v78);
          if ((v392 & 0x40) != 0)
          {
            v69 = readString(a5);
            v70 = v104;
            v74 = v97[16];
            v433[0] = *(v97 + 17);
            *(v433 + 7) = *(v97 + 3);
            v98 = 1;
          }

          else
          {
            v98 = 0;
            v74 = 0;
            v69 = *(v97 + 2);
            v70 = *(v97 + 3);
          }

          v77 = 0;
          v72 = 0;
          v387 = (v97 + 40);
          goto LABEL_156;
        }

        v92 = readVaruint32(v5);
        v93 = *(a2 + 684);
        if (v93 - 0x5555555555555555 * ((*(a2 + 384) - *(a2 + 376)) >> 3) <= v92 || (LODWORD(v9) = v92, v93 <= v92 == v64 >> 4))
        {
          LODWORD(v441) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
        }

        if ((v392 & 0x10) == 0)
        {
          v94 = readString(v5);
          v69 = v94;
          v70 = v95;
          v96 = *(a2 + 376) + 24 * (v9 - *(a2 + 684));
          v77 = *(a2 + 280) + (*(v96 + 4) << 6);
          if (!*(v96 + 16))
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v72 = 0;
            v387 = 0;
            *(v96 + 8) = v94;
            *(v96 + 16) = v95;
            goto LABEL_157;
          }

LABEL_136:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          goto LABEL_137;
        }

        if ((v392 & 3) == 1)
        {
LABEL_260:
          LODWORD(v441) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
        }

        v99 = v422;
      }

      else
      {
        if (v63)
        {
          if (v63 != 1)
          {
            v65 = readVaruint32(v5);
            v66 = *(a2 + 672);
            if (v66 + ((*(a2 + 360) - *(a2 + 352)) >> 6) <= v65 || (LODWORD(v9) = v65, v66 <= v65 == v64 >> 4))
            {
              LODWORD(v441) = 3;
              goto LABEL_243;
            }

            if ((v392 & 0x10) == 0)
            {
              v67 = readString(v5);
              v69 = v67;
              v70 = v68;
              v71 = *(a2 + 352) + ((v9 - *(a2 + 672)) << 6);
              v72 = v71 + 4;
              if (*(v71 + 56))
              {
                v73 = 0;
                v74 = 0;
                v75 = 0;
                v76 = 0;
                v77 = 0;
                goto LABEL_138;
              }

              v73 = 0;
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v387 = 0;
              *(v71 + 48) = v67;
              *(v71 + 56) = v68;
LABEL_157:
              if ((v392 & 3) != 2)
              {
                v105 = v70;
                v106 = v70;
                v107 = v74;
                v108 = v76;
                v109 = v77;
                v110 = v75;
                llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace<>(v431, v69, v105);
                v75 = v110;
                v77 = v109;
                v76 = v108;
                v74 = v107;
                v70 = v106;
                if ((v111 & 1) == 0)
                {
                  *&v441 = "duplicate symbol name ";
                  v442 = v69;
                  v443 = v106;
                  v444 = 1283;
                  operator new();
                }
              }

              v112 = *(a2 + 656);
              v113 = *(a2 + 664);
              if (v112 >= v113)
              {
                v117 = *(a2 + 648);
                v118 = 0xEEEEEEEEEEEEEEEFLL * ((v112 - v117) >> 3);
                v119 = v118 + 1;
                if (v118 + 1 > 0x222222222222222)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v120 = 0xEEEEEEEEEEEEEEEFLL * ((v113 - v117) >> 3);
                if (2 * v120 > v119)
                {
                  v119 = 2 * v120;
                }

                if (v120 >= 0x111111111111111)
                {
                  v121 = 0x222222222222222;
                }

                else
                {
                  v121 = v119;
                }

                if (v121)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSymbolInfo>>(v121);
                }

                v122 = 120 * v118;
                *v122 = v69;
                *(v122 + 8) = v70;
                *(v122 + 16) = v394;
                *(v122 + 17) = v417;
                *(v122 + 19) = v418;
                *(v122 + 20) = v392;
                *(v122 + 24) = v76;
                *(v122 + 25) = v434[0];
                *(v122 + 32) = *(v434 + 7);
                *(v122 + 40) = v75;
                *(v122 + 44) = *&v416[3];
                *(v122 + 41) = *v416;
                *(v122 + 48) = v74;
                *(v122 + 49) = v433[0];
                *(v122 + 56) = *(v433 + 7);
                *(v122 + 64) = v73;
                *(v122 + 65) = *v415;
                *(v122 + 68) = *&v415[3];
                *(v122 + 72) = 0;
                *(v122 + 73) = *v432;
                *(v122 + 80) = *&v432[7];
                *(v122 + 88) = 0;
                v123 = *v414;
                *(v122 + 92) = *&v414[3];
                *(v122 + 96) = v9;
                *(v122 + 89) = v123;
                *(v122 + 104) = v385;
                *(v122 + 112) = v383;
                v115 = 120 * v118 + 120;
                v124 = *(a2 + 648);
                v125 = *(a2 + 656) - v124;
                v126 = v122 - v125;
                memcpy((v122 - v125), v124, v125);
                v127 = *(a2 + 648);
                *(a2 + 648) = v126;
                *(a2 + 656) = v115;
                *(a2 + 664) = 0;
                if (v127)
                {
                  operator delete(v127);
                }

                v5 = a5;
                v116 = v390;
              }

              else
              {
                *v112 = v69;
                *(v112 + 8) = v70;
                *(v112 + 16) = v394;
                *(v112 + 17) = v417;
                *(v112 + 19) = v418;
                *(v112 + 20) = v392;
                *(v112 + 24) = v76;
                *(v112 + 25) = v434[0];
                *(v112 + 32) = *(v434 + 7);
                *(v112 + 40) = v75;
                *(v112 + 44) = *&v416[3];
                *(v112 + 41) = *v416;
                *(v112 + 48) = v74;
                *(v112 + 49) = v433[0];
                *(v112 + 56) = *(v433 + 7);
                *(v112 + 64) = v73;
                *(v112 + 65) = *v415;
                *(v112 + 68) = *&v415[3];
                *(v112 + 72) = 0;
                *(v112 + 73) = *v432;
                *(v112 + 80) = *&v432[7];
                *(v112 + 88) = 0;
                v114 = *v414;
                *(v112 + 92) = *&v414[3];
                *(v112 + 96) = v9;
                *(v112 + 89) = v114;
                v115 = v112 + 120;
                *(v112 + 104) = v385;
                *(v112 + 112) = v383;
                v5 = a5;
                v116 = v390;
              }

              *(a2 + 656) = v115;
              v128 = v115 - 120;
              v129 = *(a2 + 544);
              v130 = *(a2 + 552);
              if (v129 >= v130)
              {
                v132 = *(a2 + 536);
                v133 = (v129 - v132) >> 5;
                v134 = v133 + 1;
                if ((v133 + 1) >> 59)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v135 = v130 - v132;
                if (v135 >> 4 > v134)
                {
                  v134 = v135 >> 4;
                }

                if (v135 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v136 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v136 = v134;
                }

                if (v136)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSymbol>>(v136);
                }

                v137 = (32 * v133);
                *v137 = v128;
                v137[1] = v72;
                v137[2] = v387;
                v137[3] = v77;
                v131 = 32 * v133 + 32;
                v138 = *(a2 + 536);
                v139 = *(a2 + 544) - v138;
                v140 = v137 - v139;
                memcpy(v137 - v139, v138, v139);
                v141 = *(a2 + 536);
                *(a2 + 536) = v140;
                *(a2 + 544) = v131;
                *(a2 + 552) = 0;
                if (v141)
                {
                  operator delete(v141);
                }
              }

              else
              {
                *v129 = v128;
                v129[1] = v72;
                v131 = (v129 + 4);
                v129[2] = v387;
                v129[3] = v77;
              }

              *(a2 + 544) = v131;
              v34 = v116 - 1;
              if (!v34)
              {
                goto LABEL_229;
              }

              continue;
            }

            if ((v392 & 3) == 1)
            {
              goto LABEL_260;
            }

            v97 = *(v428 + v65);
            if ((v392 & 0x40) != 0)
            {
              v69 = readString(a5);
              v70 = v103;
              v74 = v97[16];
              v433[0] = *(v97 + 17);
              *(v433 + 7) = *(v97 + 3);
              v98 = 1;
            }

            else
            {
              v98 = 0;
              v74 = 0;
              v69 = *(v97 + 2);
              v70 = *(v97 + 3);
            }

            v77 = 0;
            v387 = 0;
            v72 = (v97 + 40);
LABEL_156:
            v76 = *v97;
            v434[0] = *(v97 + 1);
            *(v434 + 7) = *(v97 + 1);
            v75 = 1;
            v73 = v98;
            goto LABEL_157;
          }

          v69 = readString(v5);
          v70 = v89;
          if ((v392 & 0x10) == 0)
          {
            v90 = readVaruint32(v5);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 480) - *(a2 + 472)) >> 3) <= v90)
            {
              LODWORD(v441) = 3;
              llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
            }

            LODWORD(v9) = v90;
            v91 = v90;
            ULEB128 = readULEB128(v5);
            v383 = readULEB128(v5);
            v385 = ULEB128;
            v412 = *(*(a2 + 472) + 104 * v91 + 64);
            if (ULEB128 > v412)
            {
              v403 = 1283;
              v402[2] = v69;
              v402[3] = v70;
              v404.__r_.__value_.__r.__words[0] = v402;
              v405 = 770;
              v406[0] = &v404;
              p_ULEB128 = &ULEB128;
              v408 = 3074;
              v409[0] = v406;
              v409[2] = " segment size: ";
              v411 = 770;
              *&__dst = v409;
              v436[0] = &v412;
              v437 = 2562;
              *&v441 = &__dst;
              v442 = ")";
              v444 = 770;
              operator new();
            }
          }

          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
LABEL_137:
          v72 = 0;
LABEL_138:
          v387 = 0;
          goto LABEL_157;
        }

        v83 = readVaruint32(v5);
        v84 = *(a2 + 680);
        if (v84 + ((*(a2 + 520) - *(a2 + 512)) >> 7) <= v83 || (LODWORD(v9) = v83, v84 <= v83 == v64 >> 4))
        {
          LODWORD(v441) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
        }

        if ((v392 & 0x10) == 0)
        {
          v85 = readString(v5);
          v69 = v85;
          v70 = v86;
          v87 = *(a2 + 512) + ((v9 - *(a2 + 680)) << 7);
          v77 = *(a2 + 280) + (*(v87 + 4) << 6);
          if (!*(v87 + 96))
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v72 = 0;
            v387 = 0;
            *(v87 + 88) = v85;
            *(v87 + 96) = v86;
            goto LABEL_157;
          }

          goto LABEL_136;
        }

        v99 = v425;
      }

      break;
    }

    v100 = v99[v9];
    if ((v392 & 0x40) != 0)
    {
      v69 = readString(a5);
      v70 = v102;
      v74 = v100[16];
      v433[0] = *(v100 + 17);
      *(v433 + 7) = *(v100 + 3);
      v101 = 1;
    }

    else
    {
      v101 = 0;
      v74 = 0;
      v69 = *(v100 + 2);
      v70 = *(v100 + 3);
    }

    v72 = 0;
    v387 = 0;
    v77 = *(a2 + 280) + (*(v100 + 10) << 6);
    v76 = *v100;
    v434[0] = *(v100 + 1);
    *(v434 + 7) = *(v100 + 1);
    v75 = 1;
    v73 = v101;
    goto LABEL_157;
  }

LABEL_229:
  *a1 = 0;
  v9 = ")";
  if (__p)
  {
    operator delete(__p);
  }

  if (v422)
  {
    operator delete(v422);
  }

  if (v425)
  {
    operator delete(v425);
  }

  if (v428)
  {
    operator delete(v428);
  }

  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(v431);
  if (!*a1)
  {
    goto LABEL_258;
  }

LABEL_649:
  v377 = *MEMORY[0x277D85DE8];
}

unint64_t readVaruint32(uint64_t a1)
{
  result = readULEB128(a1);
  if (HIDWORD(result))
  {
    llvm::report_fatal_error("LEB is outside Varuint32 range", 1);
  }

  return result;
}

uint64_t readString(uint64_t a1)
{
  ULEB128 = readULEB128(a1);
  result = *(a1 + 8);
  v4 = result + ULEB128;
  if (v4 > *(a1 + 16))
  {
    llvm::report_fatal_error("EOF while reading string", 1);
  }

  *(a1 + 8) = v4;
  return result;
}

void *std::vector<llvm::wasm::WasmImport *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t readVarint32(uint64_t a1)
{
  result = readLEB128(a1);
  if (result != result)
  {
    llvm::report_fatal_error("LEB is outside Varint32 range", 1);
  }

  return result;
}

unint64_t readVaruint1(uint64_t a1)
{
  result = readLEB128(a1);
  if (result >= 2)
  {
    llvm::report_fatal_error("LEB is outside Varuint1 range", 1);
  }

  return result;
}

uint64_t readLimits(uint64_t a1, uint64_t a2)
{
  Varuint32 = readVaruint32(a2);
  *a1 = Varuint32;
  result = readULEB128(a2);
  *(a1 + 8) = result;
  if (Varuint32)
  {
    result = readULEB128(a2);
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t readInitExpr(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  *a2 = 0;
  v4 = *(a3 + 16);
  if (v3 == v4)
  {
    goto LABEL_41;
  }

  v7 = result;
  v8 = (v3 + 1);
  *(a3 + 8) = v3 + 1;
  v9 = *v3;
  *(a2 + 8) = v9;
  if (v9 > 66)
  {
    switch(v9)
    {
      case 67:
        if ((v3 + 5) <= v4)
        {
          v10 = *v8;
          *(a3 + 8) = v3 + 5;
          *(a2 + 16) = v10;
          goto LABEL_18;
        }

        break;
      case 68:
        if ((v3 + 9) <= v4)
        {
          v11 = *v8;
          *(a3 + 8) = v3 + 9;
          *(a2 + 16) = v11;
          goto LABEL_18;
        }

        break;
      case 208:
        result = readULEB128(a3);
        if (result != 111)
        {
          LODWORD(v17) = 3;
          llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
        }

        goto LABEL_18;
      default:
        goto LABEL_21;
    }

    v16 = "EOF while reading float64";
LABEL_42:
    llvm::report_fatal_error(v16, 1);
  }

  switch(v9)
  {
    case '#':
      result = readULEB128(a3);
      *(a2 + 16) = result;
      break;
    case 'A':
      result = readVarint32(a3);
      *(a2 + 16) = result;
      break;
    case 'B':
      result = readLEB128(a3);
      *(a2 + 16) = result;
      break;
    default:
      goto LABEL_21;
  }

LABEL_18:
  v4 = *(a3 + 16);
  if (*a2)
  {
    goto LABEL_22;
  }

  v12 = *(a3 + 8);
  if (v12 == v4)
  {
LABEL_41:
    v16 = "EOF while reading uint8";
    goto LABEL_42;
  }

  *(a3 + 8) = v12 + 1;
  if (*v12 == 11)
  {
    goto LABEL_39;
  }

LABEL_21:
  *a2 = 1;
LABEL_22:
  *(a3 + 8) = v3;
  if (v3 == v4)
  {
    goto LABEL_41;
  }

  v13 = v3;
  while (1)
  {
    *(a3 + 8) = v13 + 1;
    v14 = *v13;
    if (*v13 <= 0x69u)
    {
      break;
    }

    v15 = (v14 - 106) > 0x14 || ((1 << (v14 - 106)) & 0x1C0007) == 0;
    ++v13;
    if (!v15)
    {
      goto LABEL_34;
    }

    if (v14 != 208)
    {
      goto LABEL_40;
    }

LABEL_33:
    result = readULEB128(a3);
    v13 = *(a3 + 8);
    v4 = *(a3 + 16);
LABEL_34:
    if (v13 == v4)
    {
      goto LABEL_41;
    }
  }

  if ((v14 - 65) < 4 || v14 == 35)
  {
    goto LABEL_33;
  }

  if (v14 != 11)
  {
LABEL_40:
    v17 = "invalid opcode in init_expr: ";
    v18 = v14;
    v19 = 2051;
    operator new();
  }

  *(a2 + 24) = v3;
  *(a2 + 32) = v13 + 1 - v3;
LABEL_39:
  *v7 = 0;
  return result;
}

uint64_t llvm::object::WasmObjectFile::getSymbolFlags@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(result + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  v4 = *(v3 + 20);
  if ((v4 & 3) == 1)
  {
    v5 = 6;
  }

  else if ((v4 & 3) == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  if ((v4 & 0xC) == 4)
  {
    v5 |= 0x200u;
  }

  v6 = v5 | (v4 >> 4) & 1;
  if (*(v3 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 0x800;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v7;
  return result;
}

__n128 llvm::object::WasmObjectFile::getSymbolName@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(*(a1 + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  a3[1].n128_u8[0] &= ~1u;
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t llvm::object::WasmObjectFile::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(a1 + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  if (*(v3 + 16))
  {
    return llvm::object::ObjectFile::getSymbolValue(a1, a2, a3);
  }

  v4 = *(v3 + 96);
  v5 = *(a1 + 680);
  if (v4 < v5)
  {
    return llvm::object::ObjectFile::getSymbolValue(a1, a2, a3);
  }

  v6 = *(a1 + 512);
  if (v5 + ((*(a1 + 520) - v6) >> 7) <= v4)
  {
    return llvm::object::ObjectFile::getSymbolValue(a1, a2, a3);
  }

  *(a3 + 8) &= ~1u;
  *a3 = *(v6 + ((v4 - v5) << 7) + 48);
  return a1;
}

uint64_t llvm::object::WasmObjectFile::getSymbolValueImpl(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 536) + ((a2 >> 27) & 0x1FFFFFFFE0));
  v4 = *(v3 + 16);
  if (((1 << v4) & 0x35) != 0)
  {
    return *(v3 + 96);
  }

  result = 0;
  if (v4 == 1)
  {
    v6 = *(a1 + 472) + 104 * *(v3 + 96);
    if (*(v6 + 24) == 65)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    return *(v3 + 104) + v7;
  }

  return result;
}

uint64_t llvm::object::WasmObjectFile::getSymbolType@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(*(result + 536) + ((a2 >> 27) & 0x1FFFFFFFE0)) + 16);
  *(a3 + 8) &= ~1u;
  *a3 = dword_2750C7FD0[v3];
  return result;
}

unsigned int *llvm::object::WasmObjectFile::getSymbolSection@<X0>(unsigned int *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(result + 67) + ((a2 >> 27) & 0x1FFFFFFFE0));
  if ((*(v4 + 20) & 0x10) != 0)
  {
    v7 = (*(*result + 360))(result);
    result = v8;
  }

  else
  {
    v5 = *(v4 + 16);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = (v4 + 96);
      }

      else if (v5 == 4)
      {
        v6 = result + 174;
      }

      else
      {
        v6 = result + 176;
      }
    }

    else if (*(v4 + 16))
    {
      if (v5 == 1)
      {
        v6 = result + 173;
      }

      else
      {
        v6 = result + 175;
      }
    }

    else
    {
      v6 = result + 172;
    }

    v7 = *v6;
  }

  *(a3 + 16) &= ~1u;
  *a3 = v7;
  *(a3 + 8) = result;
  return result;
}

char *llvm::object::WasmObjectFile::getSectionName@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = (*(a1 + 72) + 72 * a2);
  result = *v4;
  if (result)
  {
    if (result >= 0xE)
    {
      llvm::object::object_category(result);
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    result = llvm::wasm::sectionTypeToString(result);
    *(a3 + 16) &= ~1u;
    *a3 = result;
    *(a3 + 8) = v6;
  }

  else
  {
    *(a3 + 16) &= ~1u;
    *a3 = *(v4 + 2);
  }

  return result;
}

__n128 llvm::object::WasmObjectFile::getSectionContents@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v3 = (*(a1 + 72) + 72 * a2);
  a3[1].n128_u8[0] &= ~1u;
  result = v3[2];
  *a3 = result;
  return result;
}

unint64_t llvm::object::WasmObjectFile::getRelocationSymbol(void *a1, uint64_t a2)
{
  v2 = *(a1[9] + 72 * a2 + 48) + 24 * HIDWORD(a2);
  if (*v2 == 6)
  {
    return (*(*a1 + 56))(a1);
  }

  else
  {
    return (*(v2 + 4) << 32) | 1;
  }
}

void *llvm::object::WasmObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 72) + 72 * a2 + 48) + 24 * HIDWORD(a2));
  if (v3 > 0x19)
  {
    v4 = "Unknown";
    v5 = 7;
  }

  else
  {
    v4 = off_279EFF250[v3];
    v5 = qword_2750C7FE8[v3];
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v4, &v4[v5]);
}

uint64_t llvm::object::WasmObjectFile::getBytesInAddress(llvm::object::WasmObjectFile *this)
{
  if (*(this + 590))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

uint64_t llvm::object::WasmObjectFile::getArch(llvm::object::WasmObjectFile *this)
{
  if (*(this + 590))
  {
    return 57;
  }

  else
  {
    return 56;
  }
}

void llvm::object::WasmObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  llvm::SubtargetFeatures::Split(&v3, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v3;
  memset(&v3, 0, sizeof(v3));
  v4 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void llvm::object::WasmObjectFile::~WasmObjectFile(llvm::object::WasmObjectFile *this)
{
  llvm::object::WasmObjectFile::~WasmObjectFile(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EF730;
  v2 = *(this + 81);
  if (v2)
  {
    *(this + 82) = v2;
    operator delete(v2);
  }

  v3 = *(this + 78);
  if (v3)
  {
    *(this + 79) = v3;
    operator delete(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    *(this + 76) = v4;
    operator delete(v4);
  }

  v5 = *(this + 70);
  if (v5)
  {
    *(this + 71) = v5;
    operator delete(v5);
  }

  v6 = *(this + 67);
  if (v6)
  {
    *(this + 68) = v6;
    operator delete(v6);
  }

  v7 = *(this + 64);
  if (v7)
  {
    v8 = *(this + 65);
    v9 = *(this + 64);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 120);
        if (v10)
        {
          *(v8 - 112) = v10;
          operator delete(v10);
        }

        v8 -= 128;
      }

      while (v8 != v7);
      v9 = *(this + 64);
    }

    *(this + 65) = v7;
    operator delete(v9);
  }

  v11 = *(this + 59);
  if (v11)
  {
    *(this + 60) = v11;
    operator delete(v11);
  }

  v12 = *(this + 56);
  if (v12)
  {
    v13 = *(this + 57);
    v14 = *(this + 56);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 24);
        if (v15)
        {
          *(v13 - 16) = v15;
          operator delete(v15);
        }

        v13 -= 80;
      }

      while (v13 != v12);
      v14 = *(this + 56);
    }

    *(this + 57) = v12;
    operator delete(v14);
  }

  v16 = *(this + 53);
  if (v16)
  {
    *(this + 54) = v16;
    operator delete(v16);
  }

  v17 = *(this + 50);
  if (v17)
  {
    *(this + 51) = v17;
    operator delete(v17);
  }

  v18 = *(this + 47);
  if (v18)
  {
    *(this + 48) = v18;
    operator delete(v18);
  }

  v19 = *(this + 44);
  if (v19)
  {
    *(this + 45) = v19;
    operator delete(v19);
  }

  v20 = *(this + 41);
  if (v20)
  {
    *(this + 42) = v20;
    operator delete(v20);
  }

  v21 = *(this + 38);
  if (v21)
  {
    *(this + 39) = v21;
    operator delete(v21);
  }

  v22 = *(this + 35);
  if (v22)
  {
    v23 = *(this + 36);
    v24 = *(this + 35);
    if (v23 != v22)
    {
      do
      {
        v23 -= 64;
        std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](v23);
      }

      while (v23 != v22);
      v24 = *(this + 35);
    }

    *(this + 36) = v22;
    operator delete(v24);
  }

  v25 = *(this + 32);
  if (v25)
  {
    v26 = *(this + 33);
    v27 = *(this + 32);
    if (v26 != v25)
    {
      do
      {
        if (*(v26 - 1) < 0)
        {
          operator delete(*(v26 - 24));
        }

        v26 -= 32;
      }

      while (v26 != v25);
      v27 = *(this + 32);
    }

    *(this + 33) = v25;
    operator delete(v27);
  }

  v35 = (this + 232);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](&v35);
  v35 = (this + 208);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](&v35);
  v35 = (this + 184);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](&v35);
  v28 = *(this + 20);
  if (v28)
  {
    *(this + 21) = v28;
    operator delete(v28);
  }

  v29 = *(this + 17);
  if (v29)
  {
    *(this + 18) = v29;
    operator delete(v29);
  }

  v30 = *(this + 14);
  if (v30)
  {
    *(this + 15) = v30;
    operator delete(v30);
  }

  v31 = *(this + 9);
  if (v31)
  {
    v32 = *(this + 10);
    v33 = *(this + 9);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 24);
        if (v34)
        {
          *(v32 - 16) = v34;
          operator delete(v34);
        }

        v32 -= 72;
      }

      while (v32 != v31);
      v33 = *(this + 9);
    }

    *(this + 10) = v31;
    operator delete(v33);
  }
}

void llvm::to_string<unsigned int>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2883EB8F0;
  v13 = v14;
  llvm::raw_ostream::SetUnbuffered(&v5);
  write_unsigned<unsigned long>(&v5, *a1, 0, 0, 0);
  if (*(v13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    a2->__r_.__value_.__r.__words[2] = v13[2];
    *&a2->__r_.__value_.__l.__data_ = v4;
  }

  llvm::raw_ostream::~raw_ostream(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

uint64_t readULEB128(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = "malformed uleb128, extends past end";
  v5 = *(a1 + 8);
  do
  {
    if (v5 == *(a1 + 16))
    {
      goto LABEL_9;
    }

    v6 = *v5;
    v7 = *v5 & 0x7F;
    if (v3 >= 0x40 && (*v5 & 0x7F) != 0 || (v7 << v3) >> v3 != v7)
    {
      v4 = "uleb128 too big for uint64";
LABEL_9:
      llvm::report_fatal_error(v4, 1);
    }

    v2 += v7 << v3;
    v3 += 7;
    ++v5;
    ++v1;
  }

  while (v6 < 0);
  *(a1 + 8) += v1;
  return v2;
}

uint64_t readLEB128(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = "malformed sleb128, extends past end";
  v5 = *(a1 + 8);
  do
  {
    if (v5 == *(a1 + 16))
    {
      goto LABEL_18;
    }

    v6 = *v5;
    v7 = v6 & 0x7F;
    if (v3 < 0x40)
    {
      if (v3 == 63 && v6 - 127 >= 2 && v6 != 255 && *v5)
      {
LABEL_17:
        v4 = "sleb128 too big for int64";
LABEL_18:
        llvm::report_fatal_error(v4, 1);
      }
    }

    else if (((v2 >> 63) & 0x7F) != v7)
    {
      goto LABEL_17;
    }

    v2 |= v7 << v3;
    v3 += 7;
    ++v5;
    ++v1;
  }

  while ((v6 & 0x80) != 0);
  v8 = v6 < 0x40 || v3 > 0x3F;
  v9 = -1 << v3;
  if (v8)
  {
    v9 = 0;
  }

  *(a1 + 8) += v1;
  return v2 | v9;
}

void std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  v3 = *a1;
  if (*a1 != a1 + 16)
  {

    free(v3);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v6 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<llvm::wasm::WasmRelocation>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
    if (v3 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(v3);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSymbolInfo>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSymbol>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::SmallVectorTemplateBase<std::string,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(a1, a2, 1);
  v4 = *a1 + 24 * *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((*a1 + 24 * *(a1 + 8)), *v3, *(v3 + 8));
  }

  else
  {
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
  }

  ++*(a1 + 8);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>,llvm::wasm::WasmSignature*>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(a3, v6);
      v6 += 16;
      a3 += 64;
    }

    while (v6 != a2);
    do
    {
      std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](v5);
      v5 += 64;
    }

    while (v5 != a2);
  }
}

uint64_t std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  if (a2[2])
  {
    llvm::SmallVectorImpl<llvm::wasm::ValType>::operator=(a1, a2);
  }

  *(a1 + 24) = a1 + 40;
  result = a1 + 24;
  *(a1 + 32) = 0x400000000;
  if (a2[8])
  {
    result = llvm::SmallVectorImpl<llvm::wasm::ValType>::operator=(result, (a2 + 6));
  }

  *(a1 + 56) = a2[14];
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::wasm::ValType>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 4 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 4 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 4 * v9), (*a2 + 4 * v9), 4 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t std::__split_buffer<llvm::wasm::WasmSignature>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<llvm::wasm::WasmSignature>::destroy[abi:nn200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmImport>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>,llvm::wasm::WasmFunction*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v7 = *(v5 + 80);
      v6 = *(v5 + 96);
      v8 = *(v5 + 64);
      *(a3 + 108) = *(v5 + 108);
      *(a3 + 80) = v7;
      *(a3 + 96) = v6;
      *(a3 + 64) = v8;
      v9 = *(v5 + 48);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 48) = v9;
      v5 += 128;
      a3 += 128;
    }

    while (v5 != a2);
    do
    {
      v10 = *(v4 + 8);
      if (v10)
      {
        *(v4 + 16) = v10;
        operator delete(v10);
      }

      v4 += 128;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<llvm::wasm::WasmFunction>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 128;
    v4 = *(v2 - 120);
    if (v4)
    {
      *(v2 - 112) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 128;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLocalDecl>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTable>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLimits>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTag>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmGlobal>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmExport>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>,llvm::wasm::WasmElemSegment*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[2];
      v8 = *(v5 + 6);
      *(a3 + 16) = v5[1];
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 48) = v8;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 72) = *(v5 + 9);
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      *(v5 + 9) = 0;
      v5 += 5;
      a3 += 80;
    }

    while (v5 != a2);
    do
    {
      v9 = *(v4 + 7);
      if (v9)
      {
        *(v4 + 8) = v9;
        operator delete(v9);
      }

      v4 += 5;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<llvm::wasm::WasmElemSegment>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 80;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 80;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSegment>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::object::WindowsResource::createWindowsResource(void *a1)
{
  if (a1[1] <= 0x1FuLL)
  {
    v1 = a1[2];
    v2 = a1[3];
    v6 = 773;
    v3 = v1;
    v4 = v2;
    v5 = ": too small to be a resource file";
    operator new();
  }

  operator new();
}

uint64_t llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader64,llvm::object::XCOFFRelocation64>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[6];
  v7 = *(a3 + 40);
  if ((*(*a2 + 64))(a2))
  {
    v8 = *(a3 + 56);
LABEL_3:
    v9 = bswap32(v8);
LABEL_5:
    v10 = v9;
    v11 = 1;
    goto LABEL_6;
  }

  v9 = bswap32(*(a3 + 56));
  if (v9 < 0xFFFF)
  {
    goto LABEL_5;
  }

  v19 = a2[8];
  v20 = (*(*a2 + 64))(a2);
  v21 = a2[6];
  if (*(v21 + 2))
  {
    v22 = (v19 + 36);
    v23 = 40 * __rev16(*(v21 + 2));
    while (*v22 != 0x800000 || bswap32(*(v22 - 2)) >> 16 != (-29127 * ((a3 - v19) >> 3) + 1))
    {
      v22 += 10;
      v23 -= 40;
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    v8 = *(v22 - 7);
    goto LABEL_3;
  }

LABEL_18:
  *&v41.__val_ = llvm::object::object_category(v20);
  result = llvm::errorCodeToError(3, v41, &v37);
  v24 = v37;
  if (v37)
  {
    *(a1 + 16) |= 1u;
    *a1 = v24;
    return result;
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  v12 = bswap64(v7) + v6;
  v13 = *(a2 + 2);
  v37 = *(a2 + 1);
  v38 = v13;
  result = llvm::object::Binary::checkOffset(&v37, v12, 14 * v10, v35);
  if (v35[0])
  {
    v27 = v35[0];
    llvm::toString(&v27, &v28);
    v15 = std::string::append(&v28, ": relocations with offset 0x");
    v16 = v15->__r_.__value_.__r.__words[2];
    *__p = *&v15->__r_.__value_.__l.__data_;
    v30 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = bswap64(*(a3 + 40));
    v25 = 14 * v10;
    v26 = v17;
    v31[0] = __p;
    v31[2] = &v26;
    v32 = 3588;
    v33[0] = v31;
    v33[2] = " and size 0x";
    v34 = 770;
    v35[0] = v33;
    v35[2] = &v25;
    v36 = 3586;
    *&v37 = v35;
    *&v38 = " go past the end of the file";
    v39 = 770;
    v40 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a1 + 16) &= ~1u;
  *a1 = v12;
  *(a1 + 8) = 0x6DB6DB6DB6DB6DB7 * ((14 * v10) >> 1);
  if (v10)
  {
    v18 = v11;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader32,llvm::object::XCOFFRelocation32>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[6];
  v7 = *(a3 + 24);
  if ((*(*a2 + 64))(a2))
  {
    v8 = bswap32(*(a3 + 32)) >> 16;
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v9 = *(a3 + 32);
  if (v9 != 0xFFFF)
  {
    v8 = __rev16(v9);
    goto LABEL_5;
  }

  v18 = a2[8];
  v19 = (*(*a2 + 64))(a2);
  v20 = a2[6];
  if (*(v20 + 2))
  {
    v21 = (v18 + 36);
    v22 = 40 * __rev16(*(v20 + 2));
    while (*v21 != 0x800000 || bswap32(*(v21 - 2)) >> 16 != (-13107 * ((a3 - v18) >> 3) + 1))
    {
      v21 += 10;
      v22 -= 40;
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    v8 = bswap32(*(v21 - 7));
    goto LABEL_5;
  }

LABEL_19:
  *&v40.__val_ = llvm::object::object_category(v19);
  result = llvm::errorCodeToError(3, v40, &v36);
  v23 = v36;
  if (v36)
  {
    *(a1 + 16) |= 1u;
    *a1 = v23;
    return result;
  }

  v10 = 0;
  v8 = 0;
LABEL_6:
  v11 = bswap32(v7) + v6;
  v12 = *(a2 + 2);
  v36 = *(a2 + 1);
  v37 = v12;
  result = llvm::object::Binary::checkOffset(&v36, v11, 10 * v8, v34);
  if (v34[0])
  {
    v26 = v34[0];
    llvm::toString(&v26, &v27);
    v14 = std::string::append(&v27, ": relocations with offset 0x");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v29 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = bswap32(*(a3 + 24));
    v24 = 10 * v8;
    v25 = v16;
    v30[0] = __p;
    v30[2] = &v25;
    v31 = 3588;
    v32[0] = v30;
    v32[2] = " and size 0x";
    v33 = 770;
    v34[0] = v32;
    v34[2] = &v24;
    v35 = 3586;
    *&v36 = v34;
    *&v37 = " go past the end of the file";
    v38 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a1 + 16) &= ~1u;
  *a1 = v11;
  *(a1 + 8) = v8;
  if (v8)
  {
    v17 = v10;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::moveSymbolNext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = (*(*a1 + 64))(a1);
  v5 = v3;
  if ((result & 1) == 0)
  {
    v5 = v3;
  }

  *a2 = v3 + 18 * *(v5 + 17) + 18;
  return result;
}

size_t llvm::object::XCOFFObjectFile::getStringTableEntry(size_t this, uint64_t a2, unsigned int a3)
{
  v3 = this;
  if (a3 > 3)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 80);
    if (v4)
    {
      v6 = v5 > a3;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v9 = a3;
      v10[0] = "entry with offset 0x";
      v10[2] = &v9;
      v11 = 3587;
      v12[0] = v10;
      v12[2] = " in a string table with size 0x";
      v13 = 770;
      v8 = v5;
      v14[0] = v12;
      v14[2] = &v8;
      v15 = 3586;
      v16 = v14;
      v17 = " is invalid";
      v18 = 770;
      v19 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = (v4 + a3);
    *(v3 + 16) &= ~1u;
    *v3 = v7;
    this = strlen(v7);
    *(v3 + 8) = this;
  }

  else
  {
    *(this + 16) &= ~1u;
    *this = 0;
    *(this + 8) = 0;
  }

  return this;
}

void *llvm::object::XCOFFObjectFile::getSymbolName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = a1;
  v5 = (*(*a1 + 64))(a1);
  v6 = 1;
  if (v5)
  {
    v6 = 2;
  }

  v8[v6] = a2;
  return llvm::object::XCOFFSymbolRef::getName(a3, v8);
}

void *llvm::object::XCOFFSymbolRef::getName(void *this, uint64_t a2)
{
  v2 = this;
  v3 = *(a2 + 8);
  if (!v3)
  {
    v5 = *(a2 + 16);
    if ((*(v5 + 16) & 0x80000000) == 0)
    {
      v6 = *a2;
      v7 = *(v5 + 8);
      goto LABEL_11;
    }

LABEL_9:
    *(this + 16) &= ~1u;
    *this = "Unimplemented Debug Name";
    this[1] = 24;
    return this;
  }

  if (*(v3 + 16) < 0)
  {
    goto LABEL_9;
  }

  if (*v3)
  {
    this = memchr(*(a2 + 8), 0, 8uLL);
    v4 = this - v3;
    v2[16] &= ~1u;
    if (!this)
    {
      v4 = 8;
    }

    *v2 = v3;
    *(v2 + 1) = v4;
    return this;
  }

  v6 = *a2;
  v7 = *(v3 + 4);
LABEL_11:
  v8 = bswap32(v7);

  return llvm::object::XCOFFObjectFile::getStringTableEntry(this, v6, v8);
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v6 = bswap64(*a2);
  }

  else
  {
    v6 = bswap32(*(a2 + 8));
  }

  *(a3 + 8) &= ~1u;
  *a3 = v6;
  return result;
}

unint64_t llvm::object::XCOFFObjectFile::getSymbolValueImpl(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return bswap64(*a2);
  }

  else
  {
    return bswap32(*(a2 + 8));
  }
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v10 = a1;
  v3 = (*(*a1 + 64))(a1);
  v4 = 8;
  if (v3)
  {
    v4 = 16;
  }

  *(&v10 + v4) = a2;
  v5 = v11;
  if (!v11)
  {
    v5 = v12;
  }

  v6 = *(v5 + 16);
  if (v6 != 2 && v6 != 111 && v6 != 107)
  {
    goto LABEL_11;
  }

  llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(v14, &v10);
  v7 = v14[0];
  if (v15)
  {
    v13 = v14[0];
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

LABEL_11:
    result = 0;
    goto LABEL_15;
  }

  if (!v14[0])
  {
    v7 = v14[1];
  }

  result = (1 << (*(v7 + 10) >> 3));
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(llvm::object::XCOFFSymbolRef *this, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  if (!v4)
  {
    v4 = a2[2];
  }

  v5 = *(v4 + 17);
  result = llvm::object::XCOFFSymbolRef::getName(&v29, a2);
  v7 = v31;
  if (v31)
  {
    v8 = v29;
    v29 = 0;
    if (v8)
    {
      *(this + 16) |= 1u;
      *this = v8;
      goto LABEL_23;
    }
  }

  v9 = *a2;
  v10 = a2[1];
  if (!v10)
  {
    v10 = a2[2];
  }

  v11 = (v10 - v9[9]) / 0x12uLL;
  if (!v5)
  {
    v17 = 1283;
    v16[0] = "csect symbol ";
    v16[2] = v29;
    v16[3] = v30;
    v18[0] = v16;
    v19 = " with index ";
    v21 = 770;
    v22[0] = v18;
    v23 = v11;
    v24 = 2050;
    v25 = v22;
    v26 = " contains no auxiliary entry";
    v27 = 770;
    v28 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  result = (*(*v9 + 64))(v9);
  v12 = a2[1];
  if (result)
  {
    while (1)
    {
      v13 = a2[1];
      if (!v12)
      {
        v13 = a2[2];
      }

      v14 = v13 + 18 * v5;
      if (*(v14 + 17) == 251)
      {
        break;
      }

      LOBYTE(v5) = v5 - 1;
      if (!v5)
      {
        v21 = 1283;
        v18[0] = "a csect auxiliary entry has not been found for symbol ";
        v19 = v29;
        v20 = v30;
        v22[0] = v18;
        v23 = " with index ";
        v24 = 770;
        v25 = v22;
        v26 = v11;
        v27 = 2050;
        LODWORD(v16[0]) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }
    }

    *(this + 16) &= ~1u;
    *this = 0;
    *(this + 1) = v14;
    if (v7)
    {
LABEL_21:
      result = v29;
      if (v29)
      {
        result = (*(*v29 + 8))(v29);
      }
    }
  }

  else
  {
    if (!v12)
    {
      v12 = a2[2];
    }

    *(this + 16) &= ~1u;
    *this = v12 + 18 * v5;
    *(this + 1) = 0;
    if (v7)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::XCOFFObjectFile::getCommonSymbolSizeImpl(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = a1;
  v3 = (*(*a1 + 64))(a1);
  v4 = 8;
  if (v3)
  {
    v4 = 16;
  }

  *(&v9 + v4) = a2;
  v5 = v10;
  if (!v10)
  {
    v5 = v11;
  }

  v6 = *(v5 + 16);
  if (v6 == 2 || v6 == 111 || (result = 0, v6 == 107))
  {
    llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(&v13, &v9);
    if (v15)
    {
      v12 = v13;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12);
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      result = 0;
    }

    else if (v13)
    {
      result = bswap32(*v13);
    }

    else
    {
      result = bswap64(v14[3] | (*v14 << 32));
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolType@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v24 = a1;
  result = (*(*a1 + 64))(a1);
  v7 = 1;
  if (result)
  {
    v7 = 2;
  }

  (&v24)[v7] = a2;
  v8 = v25;
  v9 = v26;
  if (v25)
  {
    v10 = v25;
  }

  else
  {
    v10 = v26;
  }

  v11 = *(v10 + 16);
  if (v11 != 2 && v11 != 107 && v11 != 111)
  {
    goto LABEL_17;
  }

  if ((*(v10 + 14) & 0x2000) != 0)
  {
    goto LABEL_50;
  }

  result = llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(&v30, &v24);
  v12 = v30;
  if (v32)
  {
    v28 = v30;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v28);
    result = v28;
    if (!v28)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (!v30)
  {
    v12 = v31;
  }

  if ((*(v12 + 10) & 7) == 2 && !*(v12 + 11))
  {
    llvm::object::XCOFFObjectFile::getSectionByNum(&v28, a1, bswap32(*(v10 + 12)) >> 16);
    if (v29)
    {
      v27 = v28;
      llvm::consumeError(&v27);
      result = v27;
      if (v27)
      {
LABEL_12:
        result = (*(*result + 8))(result);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v21 = v28;
    result = (*(*a1 + 64))(a1);
    v22 = 36;
    if (result)
    {
      v22 = 64;
    }

    if ((*(v21 + v22) & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_50:
    *(a3 + 8) &= ~1u;
    v14 = 5;
    goto LABEL_51;
  }

LABEL_17:
  if (v8)
  {
    if (*(v8 + 16) != 103)
    {
      v13 = bswap32(*(v8 + 12)) >> 16;
      if (v13 < 1)
      {
        goto LABEL_42;
      }

      goto LABEL_24;
    }

LABEL_22:
    *(a3 + 8) &= ~1u;
    v14 = 4;
    goto LABEL_51;
  }

  if (*(v9 + 16) == 103)
  {
    goto LABEL_22;
  }

  v13 = bswap32(*(v9 + 12)) >> 16;
  if (v13 <= 0)
  {
LABEL_42:
    *(a3 + 8) &= ~1u;
LABEL_43:
    v14 = 1;
    goto LABEL_51;
  }

LABEL_24:
  result = llvm::object::XCOFFObjectFile::getSectionByNum(&v28, a1, v13);
  if ((v29 & 1) == 0)
  {
    v16 = v28;
    result = llvm::object::XCOFFSymbolRef::getName(&v30, &v24);
    if (v32)
    {
      v15 = v30;
      goto LABEL_28;
    }

    v17 = v30;
    v18 = v31;
    if (v31 == 3 && *v30 == 20308 && *(v30 + 2) == 67)
    {
      goto LABEL_42;
    }

    (*(*a1 + 64))(a1);
    result = memchr(v16, 0, 8uLL);
    v20 = result - v16;
    if (!result)
    {
      v20 = 8;
    }

    if (v20 == v18)
    {
      if (!v18)
      {
        goto LABEL_42;
      }

      result = memcmp(v16, v17, v18);
      if (!result)
      {
        goto LABEL_42;
      }
    }

    result = (*(*a1 + 208))(a1, v16);
    if ((result & 1) == 0)
    {
      result = (*(*a1 + 216))(a1, v16);
      if (!result)
      {
        result = (*(*a1 + 264))(a1, v16);
        *(a3 + 8) &= ~1u;
        if (result)
        {
          v14 = 3;
          goto LABEL_51;
        }

        goto LABEL_43;
      }
    }

    *(a3 + 8) &= ~1u;
    v14 = 2;
LABEL_51:
    *a3 = v14;
    goto LABEL_52;
  }

  v15 = v28;
LABEL_28:
  *(a3 + 8) |= 1u;
  *a3 = v15;
LABEL_52:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::getSectionByNum(llvm::object::XCOFFObjectFile *this, void *a2, int a3)
{
  v4 = this;
  v5 = a3 - 1;
  if (a3 < 1 || (this = (*(*a2 + 64))(a2), a3 > (bswap32(*(a2[6] + 2)) >> 16)))
  {
    v7 = llvm::object::object_category(this);
    v12[0] = "the section index (";
    v12[2] = a3;
    v13 = 2307;
    v14[0] = v12;
    v14[2] = ") is invalid";
    v15 = 770;
    llvm::Twine::str(v14, v16);
    if (v17 >= 0)
    {
      v8 = v16;
    }

    else
    {
      v8 = v16[0];
    }

    v19 = 6;
    v20 = v7;
    v18 = v8;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v9 = a2[8];
  result = (*(*a2 + 64))(a2);
  v11 = 40;
  if (result)
  {
    v11 = 72;
  }

  *(v4 + 8) &= ~1u;
  *v4 = v9 + v11 * v5;
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(*a1 + 64))(a1);
  v6 = bswap32(*(a2 + 12));
  if ((HIWORD(v6) + 2) > 2u)
  {
    result = llvm::object::XCOFFObjectFile::getSectionByNum(&v13, a1, v6 >> 16);
    v9 = *(a3 + 16);
    v10 = v13;
    if (v14)
    {
      v11 = v9 | 1;
    }

    else
    {
      v11 = v9 & 0xFE;
      *(a3 + 8) = a1;
    }

    *(a3 + 16) = v11;
    *a3 = v10;
  }

  else
  {
    result = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = result;
    *(a3 + 8) = v8;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::moveSectionNext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = (*(*a1 + 64))(a1);
  v5 = 40;
  if (result)
  {
    v5 = 72;
  }

  *a2 = v5 + v3;
  return result;
}

_BYTE *llvm::object::XCOFFObjectFile::getSectionName@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a1 + 64))(a1);
  result = memchr(a2, 0, 8uLL);
  v6 = result - a2;
  *(a3 + 16) &= ~1u;
  if (!result)
  {
    v6 = 8;
  }

  *a3 = a2;
  *(a3 + 8) = v6;
  return result;
}

unint64_t llvm::object::XCOFFObjectFile::getSectionAddress(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return bswap64(*(a2 + 16));
  }

  else
  {
    return bswap32(*(a2 + 12));
  }
}

uint64_t llvm::object::XCOFFObjectFile::getSectionIndex(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = 40;
  if (v4)
  {
    v5 = 72;
  }

  return (a2 - a1[8]) / v5 + 1;
}

unint64_t llvm::object::XCOFFObjectFile::getSectionSize(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return bswap64(*(a2 + 24));
  }

  else
  {
    return bswap32(*(a2 + 16));
  }
}

llvm::object *llvm::object::XCOFFObjectFile::getSectionContents@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*a1 + 224))(a1);
  if (result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) &= ~1u;
  }

  else
  {
    if ((*(*a1 + 64))(a1))
    {
      v7 = bswap64(*(a2 + 32));
    }

    else
    {
      v7 = bswap32(*(a2 + 20));
    }

    v28 = v7;
    v8 = *(a1 + 16) + v7;
    v9 = (*(*a1 + 168))(a1, a2);
    v27 = v9;
    v10 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v10;
    result = llvm::object::Binary::checkOffset(&v23, v8, v9, &v26);
    if (v26)
    {
      v13 = v26;
      v26 = 0;
      llvm::toString(&v13, &v14);
      v11 = std::string::append(&v14, ": section data with offset 0x");
      v12 = v11->__r_.__value_.__r.__words[2];
      *__p = *&v11->__r_.__value_.__l.__data_;
      v16 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v17[0] = __p;
      v17[2] = &v28;
      v18 = 3588;
      v19[0] = v17;
      v19[2] = " and size 0x";
      v20 = 770;
      v21[0] = v19;
      v21[2] = &v27;
      v22 = 3586;
      *&v23 = v21;
      *&v24 = " goes past the end of the file";
      v25 = 770;
      v29 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a3 + 16) &= ~1u;
    *a3 = v8;
    *(a3 + 8) = v9;
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::isSectionText(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 3) >> 5) & 1;
}

BOOL llvm::object::XCOFFObjectFile::isSectionData(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 2) & 0x4004) != 0;
}

BOOL llvm::object::XCOFFObjectFile::isSectionBSS(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 2) & 0x8008) != 0;
}

BOOL llvm::object::XCOFFObjectFile::isDebugSection(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 36;
  if (v3)
  {
    v4 = 64;
  }

  return (*(a2 + v4 + 2) & 0x1020) != 0;
}

BOOL llvm::object::XCOFFObjectFile::isSectionVirtual(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    return *(a2 + 32) == 0;
  }

  else
  {
    return *(a2 + 20) == 0;
  }
}

uint64_t llvm::object::XCOFFObjectFile::section_rel_begin(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader64,llvm::object::XCOFFRelocation64>(v7, a1, a2);
  }

  else
  {
    llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader32,llvm::object::XCOFFRelocation32>(v7, a1, a2);
  }

  result = v7[0];
  if ((v8 & 1) != 0 && v7[0])
  {
    v6 = v7[0];
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::section_rel_end(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 64))(a1))
  {
    llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader32,llvm::object::XCOFFRelocation32>(&v10, a1, a2);
    v4 = v10;
    if (v12)
    {
      if (!v10)
      {
        result = 10 * v11;
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    v6 = v11;
    v7 = 10;
LABEL_12:
    result = v4 + v6 * v7;
    goto LABEL_13;
  }

  llvm::object::XCOFFObjectFile::relocations<llvm::object::XCOFFSectionHeader64,llvm::object::XCOFFRelocation64>(&v10, a1, a2);
  v4 = v10;
  if ((v12 & 1) == 0)
  {
    v6 = v11;
    v7 = 14;
    goto LABEL_12;
  }

  if (!v10)
  {
    result = 14 * v11;
    goto LABEL_13;
  }

LABEL_7:
  v9 = v4;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v9);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = 0;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::moveRelocationNext(uint64_t a1, void *a2)
{
  result = (*(*a1 + 64))(a1);
  v4 = 10;
  if (result)
  {
    v4 = 14;
  }

  *a2 += v4;
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::getRelocationOffset(void *a1, unint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = a1[8];
  v6 = *(*a1 + 64);
  if (v4)
  {
    v7 = *a2;
    v6(a1);
    v8 = a1[6];
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v10 = 0;
      v11 = bswap64(v7);
      v12 = __rev16(v9);
      for (i = (v5 + 24); ; i += 9)
      {
        v14 = bswap64(*(i - 1));
        result = v11 - v14;
        if (v11 >= v14 && v11 < bswap64(*i) + v14)
        {
          break;
        }

        if (v12 <= ++v10)
        {
          return -1;
        }
      }

      return result;
    }

    return -1;
  }

  v16 = *a2;
  v6(a1);
  v17 = a1[6];
  v18 = *(v17 + 2);
  if (!*(v17 + 2))
  {
    return -1;
  }

  v19 = 0;
  v20 = bswap32(v16);
  v21 = __rev16(v18);
  for (j = (v5 + 16); ; j += 10)
  {
    v23 = bswap32(*(j - 1));
    result = v20 - v23;
    if (v20 >= v23 && v20 < bswap32(*j) + v23)
    {
      break;
    }

    if (v21 <= ++v19)
    {
      return -1;
    }
  }

  return result;
}

uint64_t llvm::object::XCOFFObjectFile::getRelocationSymbol(void *a1, uint64_t a2)
{
  if ((*(*a1 + 64))(a1))
  {
    v4 = bswap32(*(a2 + 8));
    v5 = bswap32(*(a1[6] + 20));
  }

  else
  {
    v4 = bswap32(*(a2 + 4));
    v6 = bswap32(*(a1[6] + 12));
    v5 = v6 & ~(v6 >> 31);
  }

  if (v4 >= v5)
  {
    return (*(*a1 + 56))(a1);
  }

  else
  {
    return a1[9] + 18 * v4;
  }
}

uint64_t llvm::object::XCOFFObjectFile::getRelocationType(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1);
  v4 = 9;
  if (v3)
  {
    v4 = 13;
  }

  return *(a2 + v4);
}

void *llvm::object::XCOFFObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 64))(a1);
  v6 = 9;
  if (v5)
  {
    v6 = 13;
  }

  RelocationTypeString = llvm::XCOFF::getRelocationTypeString(*(a2 + v6));

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, RelocationTypeString, &RelocationTypeString[v7]);
}

uint64_t llvm::object::XCOFFObjectFile::getSymbolFlags@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v22 = a1;
  v6 = (*(*a1 + 64))(a1);
  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  (&v22)[v7] = a2;
  if (v23)
  {
    v8 = v23;
  }

  else
  {
    v8 = v24;
  }

  v9 = *(v8 + 12);
  v10 = *(v8 + 16);
  if (v10 == 111)
  {
    v11 = 6;
  }

  else
  {
    v11 = 2;
  }

  v12 = v11 | (8 * (v9 == 0xFFFF));
  if (v10 == 111 || v10 == 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 8 * (v9 == 0xFFFF);
  }

  if (v10 == 2 || v10 == 111 || v10 == 107)
  {
    result = llvm::object::XCOFFSymbolRef::getXCOFFCsectAuxRef(v25, &v22);
    v16 = v25[0];
    if (v26)
    {
      *(a3 + 8) |= 1u;
      *a3 = v16;
      goto LABEL_34;
    }

    if (!v25[0])
    {
      v16 = v25[1];
    }

    if ((*(v16 + 10) & 7) == 3)
    {
      v14 |= 0x10u;
    }

    v9 = *(v8 + 12);
  }

  v17 = v14 | (v9 == 0);
  result = (*(*a1 + 64))(a1);
  if ((result & 1) != 0 || (v18 = a1[7]) != 0 && *(v18 + 2) == 512)
  {
    v19 = (*(v8 + 14) << 8) & 0x7000;
    v20 = v17 | 0x200;
    if (v19 != 0x2000)
    {
      v20 = v17;
    }

    if (v19 == 0x4000)
    {
      v17 |= 0x40u;
    }

    else
    {
      v17 = v20;
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v17;
LABEL_34:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::XCOFFObjectFile::symbol_end(llvm::object::XCOFFObjectFile *this)
{
  v2 = (*(*this + 64))(this);
  v3 = *(this + 6);
  if (v2)
  {
    v4 = bswap32(*(v3 + 20));
  }

  else
  {
    v5 = bswap32(*(v3 + 12));
    v4 = v5 & ~(v5 >> 31);
  }

  return *(this + 9) + 18 * v4;
}

uint64_t llvm::object::XCOFFObjectFile::section_end(llvm::object::XCOFFObjectFile *this)
{
  v2 = *(this + 8);
  (*(*this + 64))(this);
  v3 = bswap32(*(*(this + 6) + 2)) >> 16;
  v4 = (*(*this + 64))(this);
  v5 = 40;
  if (v4)
  {
    v5 = 72;
  }

  return v2 + v5 * v3;
}

uint64_t llvm::object::XCOFFObjectFile::getBytesInAddress(llvm::object::XCOFFObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

const char *llvm::object::XCOFFObjectFile::getFileFormatName(llvm::object::XCOFFObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return "aix5coff64-rs6000";
  }

  else
  {
    return "aixcoff-rs6000";
  }
}

uint64_t llvm::object::XCOFFObjectFile::getArch(llvm::object::XCOFFObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return 23;
  }

  else
  {
    return 21;
  }
}

void llvm::object::XCOFFObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  llvm::SubtargetFeatures::Split(&v3, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v3;
  memset(&v3, 0, sizeof(v3));
  v4 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
}

const char *llvm::object::XCOFFObjectFile::mapDebugSectionName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  switch(a3)
  {
    case 5:
      if (*a2 == 1953724260 && *(a2 + 4) == 114)
      {
        return "debug_str";
      }

      else if (*a2 == 1869379428 && *(a2 + 4) == 99)
      {
        return "debug_loc";
      }

      else if (!(*a2 ^ 0x616D7764 | *(a2 + 4) ^ 0x63))
      {
        return "debug_macinfo";
      }

      break;
    case 7:
      if (*a2 == 1651537764 && *(a2 + 3) == 1936551522)
      {
        return "debug_pubnames";
      }

      else if (*a2 == 1651537764 && *(a2 + 3) == 1887007842)
      {
        return "debug_pubtypes";
      }

      else if (*a2 == 1918990180 && *(a2 + 3) == 1701277298)
      {
        return "debug_aranges";
      }

      else if (*a2 == 1650554724 && *(a2 + 3) == 1986359906)
      {
        return "debug_abbrev";
      }

      else if (*a2 == 1852995428 && *(a2 + 3) == 1936025454)
      {
        return "debug_ranges";
      }

      else if (*a2 == 1919317860 && *(a2 + 3) == 1701667186)
      {
        return "debug_frame";
      }

      break;
    case 6:
      if (*a2 == 1852405604 && *(a2 + 4) == 28518)
      {
        return "debug_info";
      }

      else if (*a2 == 1768716132 && *(a2 + 4) == 25966)
      {
        return "debug_line";
      }

      break;
  }

  return result;
}

void llvm::object::ObjectFile::createXCOFFObjectFile(__int128 *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  llvm::object::XCOFFObjectFile::create();
}

uint64_t llvm::opt::Arg::Arg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a9;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 44) &= 0xFCu;
  *(a1 + 48) = a1 + 64;
  v11 = (a1 + 48);
  *(a1 + 56) = 0x200000000;
  *(a1 + 80) = 0;
  llvm::SmallVectorTemplateBase<void *,true>::push_back((a1 + 48), a7);
  llvm::SmallVectorTemplateBase<void *,true>::push_back(v11, a8);
  return a1;
}

void llvm::opt::Arg::~Arg(llvm::opt::Arg *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(this + 6) + v3);
        if (v5)
        {
          MEMORY[0x277C69E10](v5, 0x1000C8077774924);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    llvm::opt::Arg::~Arg(v6);
    MEMORY[0x277C69E40]();
  }

  v7 = *(this + 6);
  if (v7 != this + 64)
  {
    free(v7);
  }
}

uint64_t llvm::opt::ArgList::MakeArgString(llvm::opt::ArgList *this, const llvm::Twine *a2)
{
  v10[32] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_2750C12F0;
  v3 = llvm::Twine::toStringRef(a2, &v8);
  v5 = (*(*this + 16))(this, v3, v4);
  if (v8 != v10)
  {
    free(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t llvm::opt::ArgList::append(llvm::opt::ArgList *this, llvm::opt::Arg *a2)
{
  llvm::SmallVectorTemplateBase<void *,true>::push_back(this + 2, a2);
  result = llvm::opt::Option::getUnaliasedOption(a2);
  if (result)
  {
    v6 = result;
    v7 = v5;
    do
    {
      LODWORD(v14[0]) = *(v6 + 48);
      *(v14 + 4) = 0xFFFFFFFFLL;
      v12 = v14[0];
      v13 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::try_emplace<std::pair<unsigned int,unsigned int>>(this + 152, &v12, (&v12 + 4), v14);
      v8 = v14[0];
      v9 = *(this + 4);
      v10 = v9 - 1;
      if ((v9 - 1) >= *(v14[0] + 4))
      {
        v10 = *(v14[0] + 4);
      }

      *(v14[0] + 4) = v10;
      *(v8 + 8) = v9;
      if (!*(v6 + 60))
      {
        break;
      }

      v11 = *(v7 + 8);
      v6 = v11 + 80 * (*(v6 + 60) - 1);
    }

    while (v11);
  }

  return result;
}

uint64_t llvm::opt::Option::getUnaliasedOption(llvm::opt::Option *this)
{
  result = *this;
  if (*(result + 62))
  {
    v3 = *(this + 1);
    v4 = *(v3 + 8);
    v6[0] = v4 + 80 * (*(result + 62) - 1);
    v6[1] = v3;
    if (v4)
    {
      return llvm::opt::Option::getUnaliasedOption(v6);
    }
  }

  else
  {
    v5 = *(this + 1);
  }

  return result;
}

uint64_t llvm::opt::InputArgList::releaseMemory(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  if (v2 && !*v1)
  {
    v5 = 8 * v2 - 8;
    v3 = *(this + 8);
    while (v5)
    {
      v6 = v3[1];
      ++v3;
      v5 -= 8;
      if (v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v3 = *(this + 8);
LABEL_4:
    v4 = &v1[v2];
    if (v3 != v4)
    {
LABEL_5:
      this = *v3;
      if (*v3)
      {
        llvm::opt::Arg::~Arg(this);
        this = MEMORY[0x277C69E40]();
      }

      while (++v3 != v4)
      {
        if (*v3)
        {
          if (v3 != v4)
          {
            goto LABEL_5;
          }

          return this;
        }
      }
    }
  }

  return this;
}

llvm::opt::InputArgList *llvm::opt::InputArgList::InputArgList(llvm::opt::InputArgList *this, const char **a2, const char **a3)
{
  *(this + 2) = 0x1000000000;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *this = &unk_2883EFAF8;
  *(this + 1) = this + 24;
  *(this + 22) = this + 192;
  *(this + 23) = 0x1000000000;
  *(this + 40) = this + 320;
  *(this + 41) = this + 320;
  *(this + 42) = 0;
  *(this + 86) = (a3 - a2) >> 3;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(this + 44, a2, a3);
  return this;
}

void llvm::opt::InputArgList::MakeArgStringRef(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = *(a1 + 184);
    if (a3 < 0x17)
    {
      v6 = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      operator new();
    }

    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

llvm::opt::Arg **std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](llvm::opt::Arg **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::opt::Arg::~Arg(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::try_emplace<std::pair<unsigned int,unsigned int>>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 4) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 12 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 12 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 12 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(12 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 12 * v10 - 12;
      v13 = vdupq_n_s64(v12 / 0xC);
      v14 = result + 24;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1210)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 6) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 3) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1830)))).i32[1])
        {
          *v14 = -1;
          v14[3] = -1;
        }

        v11 += 4;
        v14 += 12;
      }

      while (((v12 / 0xC + 4) & 0x3FFFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 12 * v3;
      v18 = v4;
      do
      {
        if (*v18 <= 0xFFFFFFFD)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>,unsigned int,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<unsigned int>(a1, v18, &v27);
          v19 = v27;
          *v27 = *v18;
          *(v19 + 1) = *(v18 + 4);
          ++*(a1 + 8);
        }

        v18 += 12;
        v17 -= 12;
      }

      while (v17);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 12 * v20 - 12;
    v23 = vdupq_n_s64(v22 / 0xC);
    v24 = result + 24;
    do
    {
      v25 = vdupq_n_s64(v21);
      v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_2750C1210)));
      if (vuzp1_s16(v26, *v23.i8).u8[0])
      {
        *(v24 - 6) = -1;
      }

      if (vuzp1_s16(v26, *&v23).i8[2])
      {
        *(v24 - 3) = -1;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_2750C1830)))).i32[1])
      {
        *v24 = -1;
        v24[3] = -1;
      }

      v21 += 4;
      v24 += 12;
    }

    while (((v22 / 0xC + 4) & 0x3FFFFFFFFFFFFFFCLL) != v21);
  }

  return result;
}

const char *llvm::opt::Option::accept@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X3>, int a4@<W4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  if (a4 && *(*a1 + 52) == 3)
  {
    operator new();
  }

  result = (**a2)(a2, *a5);
  if (result)
  {
    result = strlen(result);
    v12 = result;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*a1 + 52);
  if (v13 <= 7)
  {
    if (*(*a1 + 52) > 5u)
    {
      if (v13 == 6)
      {
        if (a3 != v12)
        {
          goto LABEL_35;
        }

        v15 = *a5 + 2;
        goto LABEL_20;
      }

      if (a3 == v12)
      {
        ++*a5;
        operator new();
      }
    }

    else
    {
      if (v13 != 3)
      {
        v14 = *a5;
        goto LABEL_29;
      }

      if (a3 == v12)
      {
        ++*a5;
        operator new();
      }
    }
  }

  else
  {
    if (*(*a1 + 52) <= 9u)
    {
      if (v13 == 8)
      {
        operator new();
      }

      (**a2)(a2, *a5);
      ++*a5;
      operator new();
    }

    if (v13 == 10)
    {
      if (a3 == v12)
      {
        v16 = *(*a1 + 53) + *a5 + 1;
        *a5 = v16;
        result = (*(*a2 + 8))(a2);
        if (v16 <= result)
        {
          (**a2)(a2, *a5 - *(*a1 + 53));
          operator new();
        }
      }
    }

    else
    {
      if (v13 == 11)
      {
        v14 = *a5;
        if (a3 == v12)
        {
          v15 = v14 + 2;
LABEL_20:
          *a5 = v15;
          result = (*(*a2 + 8))(a2);
          if (v15 <= result)
          {
            result = (**a2)(a2, *a5 - 1);
            if (result)
            {
              (**a2)(a2, *a5 - 1);
              std::make_unique[abi:nn200100]<llvm::opt::Arg,llvm::opt::Option const&,llvm::StringRef &,unsigned int,char const*,0>();
            }
          }

          goto LABEL_35;
        }

LABEL_29:
        (**a2)(a2, v14);
        ++*a5;
        operator new();
      }

      v17 = *a5 + 2;
      *a5 = v17;
      result = (*(*a2 + 8))(a2);
      if (v17 <= result)
      {
        result = (**a2)(a2, *a5 - 1);
        if (result)
        {
          (**a2)(a2, *a5 - 2);
          (**a2)(a2, *a5 - 1);
          operator new();
        }
      }
    }
  }

LABEL_35:
  *a6 = 0;
  return result;
}

uint64_t llvm::opt::OptTable::OptTable(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *result = &unk_2883EFB20;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 25) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = result + 80;
  *(result + 64) = xmmword_2750C12B0;
  if (a3)
  {
    v4 = 0;
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 4);
      if (*(v5 + 4))
      {
        if (v6 == 2)
        {
          *(result + 44) = *v5;
        }

        else
        {
          if (v6 != 1)
          {
            *(result + 48) = v4;
            return result;
          }

          *(result + 40) = *v5;
        }
      }

      ++v4;
      v5 += 80;
    }

    while (a3 != v4);
  }

  return result;
}

char *llvm::opt::OptTable::buildPrefixChars(size_t *this)
{
  result = (**this)(this);
  if (v3)
  {
    v4 = result;
    v5 = &result[16 * v3];
    do
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        v7 = *v4;
        do
        {
          v8 = *v7;
          v9 = this[7];
          v10 = this[8];
          v11 = &v9[v10];
          result = memchr(v9, *v7, v10);
          if (result)
          {
            v12 = result == v11;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            result = llvm::SmallVectorTemplateBase<char,true>::push_back(this + 7, v8);
          }

          ++v7;
          --v6;
        }

        while (v6);
      }

      v4 += 16;
    }

    while (v4 != v5);
  }

  return result;
}

void *llvm::opt::OptTable::parseOneArgGrouped@<X0>(llvm::opt::OptTable *this@<X0>, llvm::opt::InputArgList *a2@<X1>, unsigned int *a3@<X2>, llvm::opt::Arg **a4@<X8>)
{
  v7 = *(*(a2 + 22) + 8 * *a3);
  v55[0] = v7;
  if (v7)
  {
    v8 = strlen(v7);
  }

  else
  {
    v8 = 0;
  }

  v55[1] = v8;
  v9 = (**this)(this);
  if (isInput(v9, v10, v7, v8))
  {
    v11 = *(this + 10);
    if (v11)
    {
      v12 = *(this + 1) + 80 * (v11 - 1);
    }

    ++*a3;
    operator new();
  }

  v44 = a3;
  v13 = v7;
  v46 = a4;
  v14 = *(this + 1);
  v15 = *(this + 2);
  v48 = (v14 + 80 * v15);
  first_not_of = llvm::StringRef::find_first_not_of(v55, *(this + 7), *(this + 8), 0);
  if (first_not_of >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = first_not_of;
  }

  v45 = this;
  v18 = *(this + 12);
  v19 = (v14 + 80 * v18);
  if (v15 == v18)
  {
    v20 = v13;
  }

  else
  {
    v21 = v8 - v17;
    v22 = 0xCCCCCCCCCCCCCCCDLL * ((80 * v15 - 80 * v18) >> 4);
    v20 = v13;
    do
    {
      v23 = &v19[10 * (v22 >> 1)];
      v24 = v23[3];
      if (v21 >= v24)
      {
        v25 = v23[3];
      }

      else
      {
        v25 = v8 - v17;
      }

      v26 = ascii_strncasecmp(v23[2], &v20[v17], v25);
      if (v25 == v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = -1;
      }

      if (v24 == v21)
      {
        v27 = 0;
      }

      if (v26)
      {
        v27 = v26;
      }

      if (v27 >= 0)
      {
        v22 >>= 1;
      }

      else
      {
        v22 += ~(v22 >> 1);
      }

      if (v27 < 0)
      {
        v19 = v23 + 10;
      }
    }

    while (v22);
  }

  v28 = *v44;
  if (v19 == v48)
  {
    goto LABEL_51;
  }

  v29 = 0;
  do
  {
    matched = matchOption(v19, v20, v8, *(v45 + 24));
    if (matched)
    {
      v31 = matched;
      v49 = v19;
      v50 = v45;
      v32 = *(*(a2 + 22) + 8 * v28);
      result = llvm::opt::Option::accept(&v49, a2, matched, 0, v44, v46);
      if (*v46)
      {
        return result;
      }

      result = std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](v46);
      if (v31 == 2 && *(v49 + 52) == 3)
      {
        v29 = v19;
      }

      if (v28 != *v44)
      {
        *v46 = 0;
        return result;
      }
    }

    v19 += 10;
  }

  while (v19 != v48);
  if (!v29)
  {
LABEL_51:
    if (v20[1] == 45)
    {
      v38 = *(v45 + 11);
      if (v38)
      {
        v39 = *(v45 + 1) + 80 * (v38 - 1);
      }

      ++*v44;
      operator new();
    }

    v53 = 261;
    if (v8 >= 2)
    {
      v40 = 2;
    }

    else
    {
      v40 = v8;
    }

    v49 = v20;
    v50 = v40;
    llvm::opt::ArgList::MakeArgString(a2, &v49);
    v41 = *v44;
    v49 = 45;
    v51 = &v20[v40];
    v52 = v8 - v40;
    v53 = 1287;
    *(*(a2 + 22) + 8 * v41) = llvm::opt::ArgList::MakeArgString(a2, &v49);
    v42 = *(v45 + 11);
    if (v42)
    {
      v43 = *(v45 + 1) + 80 * (v42 - 1);
    }

    operator new();
  }

  v54[0] = v29;
  v54[1] = v45;
  if (v20[2] == 61)
  {
    v34 = *(v45 + 11);
    if (v34)
    {
      v35 = *(v45 + 1) + 80 * (v34 - 1);
    }

    *v44 = v28 + 1;
    operator new();
  }

  if (v8 >= 2)
  {
    v36 = 2;
  }

  else
  {
    v36 = v8;
  }

  llvm::opt::Option::accept(v54, a2, v36, 1, v44, v46);
  if (!*v46)
  {
    std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](v46);
    goto LABEL_51;
  }

  v37 = *v44;
  v49 = 45;
  v51 = &v20[v36];
  v52 = v8 - v36;
  v53 = 1287;
  result = llvm::opt::ArgList::MakeArgString(a2, &v49);
  *(*(a2 + 22) + 8 * v37) = result;
  return result;
}

uint64_t isInput(uint64_t a1, uint64_t a2, _BYTE *__s1, size_t a4)
{
  v6 = a1;
  if ((a4 != 1 || *__s1 != 45) && a2)
  {
    v7 = a1 + 16 * a2;
    do
    {
      v8 = *(v6 + 8);
      if (a4 >= v8)
      {
        if (!v8)
        {
          return 0;
        }

        result = memcmp(__s1, *v6, v8);
        if (!result)
        {
          return result;
        }
      }

      v6 += 16;
    }

    while (v6 != v7);
  }

  return 1;
}

uint64_t matchOption(uint64_t *a1, char *__s1, unint64_t a3, int a4)
{
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a1 + 16 * v4;
  while (1)
  {
    v11 = *(v9 + 8);
    v12 = a3 - v11;
    if (a3 < v11 || v11 && memcmp(__s1, *v9, *(v9 + 8)))
    {
      goto LABEL_13;
    }

    v13 = a1[2];
    v14 = a1[3];
    if (!a4)
    {
      break;
    }

    if (v12 >= v14 && !ascii_strncasecmp(&__s1[v11], v13, a1[3]))
    {
      return (v14 + v11);
    }

LABEL_13:
    v9 += 16;
    if (v9 == v10)
    {
      return 0;
    }
  }

  if (v12 < v14 || v14 && memcmp(&__s1[v11], v13, a1[3]))
  {
    goto LABEL_13;
  }

  return (v14 + v11);
}

void *llvm::opt::OptTable::ParseOneArg@<X0>(llvm::opt::OptTable *this@<X0>, const llvm::opt::ArgList *a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, int a5@<W4>, llvm::opt::Arg **a6@<X8>)
{
  v12 = *a3;
  v13 = (**a2)(a2, *a3);
  v14 = v13;
  v53[0] = v13;
  if (v13)
  {
    v15 = strlen(v13);
  }

  else
  {
    v15 = 0;
  }

  v53[1] = v15;
  v16 = (**this)(this);
  if (isInput(v16, v17, v14, v15))
  {
    v18 = *(this + 10);
    if (v18)
    {
      v19 = *(this + 1) + 80 * (v18 - 1);
    }

    ++*a3;
    operator new();
  }

  v44 = v12;
  v45 = a2;
  v46 = a4;
  v49 = a6;
  v50 = a3;
  v20 = *(this + 12);
  v21 = *(this + 1);
  v22 = *(this + 2);
  v23 = v21 + 80 * v20;
  v51 = v21 + 80 * v22;
  v48 = this;
  first_not_of = llvm::StringRef::find_first_not_of(v53, *(this + 7), *(this + 8), 0);
  if (first_not_of >= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = first_not_of;
  }

  v47 = v15;
  if (v22 != v20)
  {
    v26 = v15 - v25;
    v27 = 0xCCCCCCCCCCCCCCCDLL * ((80 * v22 - 80 * v20) >> 4);
    do
    {
      v28 = v23 + 80 * (v27 >> 1);
      v29 = *(v28 + 24);
      if (v26 >= v29)
      {
        v30 = *(v28 + 24);
      }

      else
      {
        v30 = v26;
      }

      v31 = ascii_strncasecmp(*(v28 + 16), &v14[v25], v30);
      if (v30 == v29)
      {
        v32 = 1;
      }

      else
      {
        v32 = -1;
      }

      if (v29 == v26)
      {
        v32 = 0;
      }

      if (v31)
      {
        v32 = v31;
      }

      if (v32 >= 0)
      {
        v27 >>= 1;
      }

      else
      {
        v27 += ~(v27 >> 1);
      }

      if (v32 < 0)
      {
        v23 = v28 + 80;
      }
    }

    while (v27);
  }

  v33 = v51;
  if (v23 == v51)
  {
LABEL_45:
    if (*v14 == 47)
    {
      v42 = *(v48 + 10);
    }

    else
    {
      v42 = *(v48 + 11);
    }

    if (v42)
    {
      v43 = *(v48 + 1) + 80 * (v42 - 1);
    }

    ++*v50;
    operator new();
  }

  while (1)
  {
    v34 = *(v48 + 24);
    v23 += 80;
    while (1)
    {
      matched = matchOption((v23 - 80), v14, v47, v34);
      if (matched)
      {
        break;
      }

      v37 = v23 == v33;
      v23 += 80;
      if (v37)
      {
        goto LABEL_45;
      }
    }

    v36 = *(v23 - 24);
    v37 = (v36 & v46) != 0 || v46 == 0;
    v52[0] = v23 - 80;
    v52[1] = v48;
    v38 = v36 & a5;
    if (v37 && v38 == 0)
    {
      v40 = matched;
      (**v45)(v45, *v50);
      result = llvm::opt::Option::accept(v52, v45, v40, 0, v50, v49);
      if (*v49)
      {
        return result;
      }

      result = std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](v49);
      v33 = v51;
      if (v44 != *v50)
      {
        break;
      }
    }

    if (v23 == v33)
    {
      goto LABEL_45;
    }
  }

  *v49 = 0;
  return result;
}

void *llvm::opt::OptTable::ParseArgs@<X0>(llvm::opt::OptTable *a1@<X0>, const char **a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, _DWORD *a5@<X4>, int a6@<W5>, int a7@<W6>, llvm::opt::InputArgList *a8@<X8>)
{
  v12 = a3;
  result = llvm::opt::InputArgList::InputArgList(a8, a2, &a2[a3]);
  *a5 = 0;
  *a4 = 0;
  v20 = 0;
  if (v12)
  {
    v16 = 0;
    do
    {
      v17 = *(*(a8 + 22) + 8 * v16);
      if (v17 && *v17)
      {
        if (*(a1 + 25) == 1)
        {
          llvm::opt::OptTable::parseOneArgGrouped(a1, a8, &v20, &v19);
        }

        else
        {
          llvm::opt::OptTable::ParseOneArg(a1, a8, &v20, a6, a7, &v19);
        }

        v18 = v19;
        if (v19)
        {
          v19 = 0;
          llvm::opt::ArgList::append(a8, v18);
        }

        else
        {
          *a4 = v16;
          *a5 = v20 + ~v16;
        }

        result = std::unique_ptr<llvm::opt::Arg>::~unique_ptr[abi:nn200100](&v19);
        if (!v18)
        {
          return result;
        }

        v16 = v20;
      }

      else
      {
        v20 = ++v16;
      }
    }

    while (v16 < v12);
  }

  return result;
}

void llvm::readWideAPInt(unint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, llvm::APInt *a4@<X8>)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v16[0] = v17;
  v16[1] = 0x800000000;
  llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(v16, a2);
  v8 = v16[0];
  if (a2)
  {
    v9 = 8 * a2;
    v10 = v16[0];
    do
    {
      v12 = *a1++;
      v11 = v12;
      v13 = -(v12 >> 1);
      if (v12 == 1)
      {
        v13 = 0x8000000000000000;
      }

      if (v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11 >> 1;
      }

      *v10++ = v14;
      v9 -= 8;
    }

    while (v9);
  }

  *(a4 + 2) = a3;
  llvm::APInt::initFromArray(a4, v8);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void (***llvm::BitcodeErrorCategory(llvm *this))(_anonymous_namespace_::BitcodeErrorCategoryType *__hidden this)
{
  {
  }

  return llvm::BitcodeErrorCategory(void)::ErrorCategory;
}

uint64_t llvm::getBitcodeModuleList@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  llvm::getBitcodeFileContents(v7, &v8);
  if (v10)
  {
    v4 = v8;
    v8 = 0;
    *(a2 + 24) |= 1u;
  }

  else
  {
    *(a2 + 24) &= ~1u;
    v4 = v8;
    *(a2 + 8) = v9;
    v8 = 0;
    v9 = 0uLL;
  }

  *a2 = v4;
  result = llvm::Expected<llvm::BitcodeFileContents>::~Expected(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::getBitcodeFileContents(llvm *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  if ((v3 & 3) != 0)
  {
    v4 = "Invalid bitcode signature";
    goto LABEL_3;
  }

  v6 = *a1;
  v7 = (*a1 + v3);
  if (v3 && *v6 == 222 && v6[1] == 192 && v6[2] == 23 && v6[3] == 11)
  {
    if ((v3 & 0xFFFFFFF0) == 0 || (v8 = *(v6 + 2), v9 = *(v6 + 3), v9 + v8 > v3))
    {
      v4 = "Invalid bitcode wrapper header";
LABEL_3:
      *&v61 = v4;
      LOWORD(v63) = 259;
      llvm::BitcodeErrorCategory(a1);
      operator new();
    }

    v6 += v8;
    v7 = &v6[v9];
  }

  *&v61 = v6;
  *(&v61 + 1) = v7 - v6;
  v62 = 0uLL;
  v63 = 0x200000000;
  memset(v64, 0, sizeof(v64));
  v65 = &v67;
  v66 = 0x800000000;
  v68 = 0;
  if ((v7 - v6) <= 3)
  {
    *&v53 = 92;
    *(&v53 + 1) = std::generic_category();
    *&v71 = "file too small to contain bitcode header";
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v10 = 0;
  v11 = 66;
  do
  {
    v12 = v10;
    llvm::SimpleBitstreamCursor::Read(&v61, 8u, &v71);
    if (BYTE8(v71))
    {
      v15 = v71;
      goto LABEL_28;
    }

    if (v71 != v11)
    {
      *&v53 = 92;
      *(&v53 + 1) = std::generic_category();
      v69 = "file doesn't start with bitcode header";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v10 = 1;
    v11 = 67;
  }

  while ((v12 & 1) == 0);
  v13 = 0;
  v71 = xmmword_2750C80C0;
  while (1)
  {
    v14 = *(&v71 + v13);
    llvm::SimpleBitstreamCursor::Read(&v61, 4u, &v69);
    if (v70)
    {
      break;
    }

    if (v69 != v14)
    {
      *&v53 = 92;
      *(&v53 + 1) = std::generic_category();
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v13 += 4;
    if (v13 == 16)
    {
      goto LABEL_30;
    }
  }

  v15 = v69;
LABEL_28:
  if (v15)
  {
    v60 = -1;
    *&v53 = v15;
  }

  else
  {
LABEL_30:
    v60 = 0;
    v55 = v63;
    v53 = v61;
    v54 = v62;
    v56 = *v64;
    v16 = *&v64[16];
    memset(v64, 0, sizeof(v64));
    v57 = v16;
    v58[0] = v59;
    v58[1] = 0x800000000;
    if (v66)
    {
      llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(v58, &v65);
    }

    v59[32] = v68;
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(&v65);
  *&v71 = v64;
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v71);
  if (v60)
  {
    v17 = v53;
    *&v53 = 0;
    *(a2 + 56) |= 1u;
    *a2 = v17;
    goto LABEL_35;
  }

  v20 = 8 * v54 - v55;
  v21 = v20 >> 3;
  if ((v20 >> 3) + 8 < *(&v53 + 1))
  {
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v22 = 0;
    v23 = 0;
    v24 = *a2;
    v25 = *(a2 + 56);
    while (1)
    {
      v26 = llvm::BitstreamCursor::advance(&v53, 0, &v71);
      if (BYTE8(v71))
      {
        v24 = v71;
        *&v71 = 0;
        goto LABEL_44;
      }

      if (v71 < 2)
      {
        *&v61 = "Malformed block";
        LOWORD(v63) = 259;
        llvm::BitcodeErrorCategory(v26);
        operator new();
      }

      if (v71 == 2)
      {
        if (SDWORD1(v71) > 22)
        {
          if (DWORD1(v71) != 23)
          {
            if (DWORD1(v71) == 25)
            {
              readBlobInRecord(&v61, &v53, 25);
              if ((v62 & 1) == 0)
              {
                if (!v51)
                {
                  v27 = 2;
                  v51 = *(&v61 + 1);
                  v22 = v61;
                  goto LABEL_71;
                }

LABEL_63:
                v27 = 2;
                goto LABEL_71;
              }

LABEL_78:
              v24 = v61;
LABEL_44:
              v25 |= 1u;
              v27 = 1;
              goto LABEL_71;
            }

LABEL_64:
            llvm::BitstreamCursor::SkipBlock(&v53, &v61);
            v25 |= v61 != 0;
            if (v61)
            {
              v24 = v61;
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }

            goto LABEL_71;
          }

          readBlobInRecord(&v61, &v53, 23);
          if (v62)
          {
            goto LABEL_78;
          }

          for (i = v52; i; i -= 64)
          {
            if (*(i - 24))
            {
              break;
            }

            *(i - 32) = v61;
          }

          v27 = 2;
          if (v51 && !v50)
          {
            v27 = 2;
            v50 = *(&v61 + 1);
            v23 = v61;
          }
        }

        else
        {
          if (DWORD1(v71) == 8)
          {
            v28 = v23;
            v49 = v22;
            v33 = v20 & 0xFFFFFFFFFFFFFFF8;
            v34 = -1;
          }

          else
          {
            if (DWORD1(v71) != 13)
            {
              goto LABEL_64;
            }

            v28 = v23;
            v49 = v22;
            v29 = v54;
            v30 = v55;
            llvm::BitstreamCursor::SkipBlock(&v53, &v61);
            v31 = v61;
            if (v61)
            {
              goto LABEL_69;
            }

            v32 = llvm::BitstreamCursor::advance(&v53, 0, &v61);
            if (BYTE8(v61))
            {
              v24 = v61;
              v25 |= 1u;
              v27 = 1;
LABEL_70:
              v22 = v49;
              v23 = v28;
              goto LABEL_71;
            }

            if (v61 != 0x800000002)
            {
              *&v61 = "Malformed block";
              LOWORD(v63) = 259;
              llvm::BitcodeErrorCategory(v32);
              operator new();
            }

            v46 = 8 * v29;
            v33 = v20 & 0xFFFFFFFFFFFFFFF8;
            v34 = v46 - ((v20 & 0xFFFFFFFFFFFFFFF8) + v30);
          }

          v48 = v34;
          v35 = v54;
          v36 = v55;
          llvm::BitstreamCursor::SkipBlock(&v53, &v61);
          v31 = v61;
          if (v61)
          {
LABEL_69:
            v25 |= 1u;
            v27 = 1;
            v24 = v31;
            goto LABEL_70;
          }

          v39 = 8 * v35 - (v33 + v36);
          v40 = ((8 * v54 - v55) >> 3) - v21;
          v41 = v53 + v21;
          v43 = *(a1 + 2);
          v42 = *(a1 + 3);
          v44 = v52;
          v45 = v52 >> 6;
          if (((v52 >> 6) + 1) >> 58)
          {
            *(a2 + 56) = v25;
            *a2 = v24;
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v23 = v28;
          if (v52 >> 6 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::BitcodeModule>>((v52 >> 6) + 1);
          }

          v47 = (v45 << 6);
          *v47 = v41;
          v47[1] = v40;
          v47[2] = v43;
          v47[3] = v42;
          v47[4] = 0;
          v47[5] = 0;
          v52 = (v45 << 6) + 64;
          v47[6] = v48;
          v47[7] = v39;
          memcpy(0, 0, v44);
          v27 = 2;
          v22 = v49;
        }
      }

      else if (v71 == 3)
      {
        llvm::BitstreamCursor::skipRecord(&v53, SDWORD1(v71), &v61);
        if ((BYTE8(v61) & 1) == 0 || !v61)
        {
          goto LABEL_63;
        }

        v25 |= 1u;
        v27 = 1;
        v24 = v61;
      }

      else
      {
        v27 = 0;
      }

LABEL_71:
      if (BYTE8(v71))
      {
        v37 = v71;
        *&v71 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v27 | 2) != 2)
      {
        *(a2 + 56) = v25;
        *a2 = v24;
        goto LABEL_35;
      }

      v20 = 8 * v54 - v55;
      v21 = v20 >> 3;
      if ((v20 >> 3) + 8 >= *(&v53 + 1))
      {
        goto LABEL_94;
      }
    }
  }

  v22 = 0;
  v51 = 0;
  v23 = 0;
  v50 = 0;
  v52 = 0;
  LOBYTE(v25) = *(a2 + 56);
LABEL_94:
  *(a2 + 56) = v25 & 0xFE;
  *a2 = 0;
  a2[1] = v52;
  a2[2] = 0;
  a2[3] = v22;
  a2[4] = v51;
  a2[5] = v23;
  a2[6] = v50;
LABEL_35:
  if (v60)
  {
    v18 = v53;
    *&v53 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  else
  {
    llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(v58);
    *&v61 = &v56;
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v61);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::BitstreamCursor::advance@<X0>(uint64_t this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 8);
  if (!*(this + 32) && *(this + 8) <= *(this + 16))
  {
    *(a3 + 8) = v6 & 0xFE;
    *a3 = 0;
    goto LABEL_26;
  }

  this = llvm::BitstreamCursor::ReadCode(this, &v12);
  if (v13)
  {
    v7 = v12;
    v12 = 0;
LABEL_5:
    v8 = v6 | 1;
LABEL_20:
    *a3 = v7;
    goto LABEL_21;
  }

  if (v12 == 2)
  {
    if ((a2 & 2) == 0)
    {
      llvm::BitstreamCursor::ReadAbbrevRecord(v4);
    }

    goto LABEL_16;
  }

  if (v12 == 1)
  {
    this = llvm::SimpleBitstreamCursor::ReadVBR(v4, 8u, &v10);
    if (v11)
    {
      v7 = v10;
      goto LABEL_5;
    }

    v7 = (v10 << 32) | 2;
LABEL_19:
    v8 = v6 & 0xFE;
    goto LABEL_20;
  }

  if (v12)
  {
LABEL_16:
    v7 = (v12 << 32) | 3;
    goto LABEL_19;
  }

  if ((a2 & 1) != 0 || (this = llvm::BitstreamCursor::ReadBlockEnd(v4), !this))
  {
    v8 = v6 & 0xFE;
    *a3 = 1;
  }

  else
  {
    v8 = v6 & 0xFE;
    *a3 = 0;
  }

LABEL_21:
  if (v13)
  {
    this = v12;
    v12 = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(a3 + 8) = v8;
LABEL_26:
  v9 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t llvm::BitstreamCursor::SkipBlock@<X0>(llvm::BitstreamCursor *this@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  result = llvm::SimpleBitstreamCursor::ReadVBR(this, 4u, &v18);
  if (v19 & 1) != 0 || ((v5 = *(this + 8), v6 = v5 >= 0x20, v7 = v5 - 32, v6) ? (*(this + 3) >>= v7, v8 = 32) : (v8 = 0), *(this + 8) = v8, result = llvm::SimpleBitstreamCursor::Read(this, 0x20u, &v18), (v19))
  {
    *a2 = v18;
  }

  else
  {
    v10 = *(this + 8);
    v11 = *(this + 1);
    v12 = *(this + 2);
    if (!v10 && v11 <= v12)
    {
      v13 = std::generic_category();
      v18 = 92;
      v19 = v13;
      v16[0] = "can't skip block: already at end of stream";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v14 = 8 * v12 - v10;
    v15 = v14 + 32 * v18;
    if (v11 < v15 >> 3)
    {
      __p[3] = 92;
      __p[4] = std::generic_category();
      memset(__p, 0, 24);
      LODWORD(v19) = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v18 = &unk_2883EB8F0;
      v26 = __p;
      llvm::raw_ostream::SetUnbuffered(&v18);
      v16[0] = &unk_2883EFD80;
      v16[1] = "can't skip to bit %zu from %llu";
      v16[2] = v15;
      v16[3] = v14;
      llvm::raw_ostream::operator<<(&v18, v16);
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    result = llvm::SimpleBitstreamCursor::JumpToBit(this, v15, a2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void readBlobInRecord(llvm::BitstreamCursor *a1, llvm::BitstreamCursor *a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(a2, 0, a3, v18);
  v5 = v18[0];
  if (v18[0])
  {
    *(a1 + 16) |= 1u;
    *a1 = v5;
  }

  else
  {
    v15 = 0uLL;
    v6 = *a1;
    v7 = *(a1 + 16);
    for (i = llvm::BitstreamCursor::advance(a2, 0, &v20); (v21 & 1) == 0; i = llvm::BitstreamCursor::advance(a2, 0, &v20))
    {
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v14 = 0uLL;
          v18[0] = v19;
          v18[1] = 0x100000000;
          llvm::BitstreamCursor::readRecord(a2, SHIDWORD(v20), v18, &v14, &v16);
          v10 = v17;
          if (v17)
          {
            v6 = v16;
            v7 |= 1u;
          }

          else if (v16 == 1)
          {
            v15 = v14;
          }

          if (v18[0] != v19)
          {
            free(v18[0]);
          }

          if (v10)
          {
            *(a1 + 16) = v7;
            *a1 = v6;
            goto LABEL_25;
          }
        }
      }

      else
      {
        switch(v20)
        {
          case 2:
            llvm::BitstreamCursor::SkipBlock(a2, v18);
            v9 = v18[0];
            if (v18[0])
            {
              goto LABEL_24;
            }

            break;
          case 0:
            v18[0] = "Malformed block";
            v19[8] = 259;
            llvm::BitcodeErrorCategory(i);
            operator new();
          case 1:
            *(a1 + 16) = v7 & 0xFE;
            *a1 = v15;
            goto LABEL_25;
        }
      }

      if (v21)
      {
        v11 = v20;
        v20 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }
    }

    v9 = v20;
    v20 = 0;
LABEL_24:
    *(a1 + 16) = v7 | 1;
    *a1 = v9;
LABEL_25:
    if (v21)
    {
      v12 = v20;
      v20 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void llvm::BitcodeModule::getModuleImpl(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v23[0] = *a1;
  v23[1] = 0uLL;
  v24 = 0x200000000;
  v25 = 0;
  v26 = 0u;
  v27[0] = v28;
  v27[1] = 0x800000000;
  v28[32] = 0;
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 48);
  if (v4 == -1)
  {
    goto LABEL_36;
  }

  llvm::SimpleBitstreamCursor::JumpToBit(v23, v4, v38);
  v5 = v38[0];
  if (v38[0])
  {
LABEL_37:
    *(a2 + 8) |= 1u;
    *a2 = v5;
    goto LABEL_38;
  }

  llvm::BitstreamCursor::EnterSubBlock(v23, 0, 13, v38);
  v6 = v38[0];
  if (v38[0])
  {
    v22 |= 1u;
    v21.__r_.__value_.__r.__words[0] = 0;
    llvm::Expected<std::string>::~Expected(&v21);
    goto LABEL_5;
  }

  v38[0] = &v39;
  v38[1] = 0x4000000000;
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v7 = llvm::BitstreamCursor::advance(v23, 0, &p_dst);
    if ((v33 & 1) == 0)
    {
      break;
    }

    if (p_dst)
    {
      v22 |= 1u;
      v21.__r_.__value_.__r.__words[0] = p_dst;
      goto LABEL_28;
    }

LABEL_12:
    LODWORD(v38[1]) = 0;
    Record = llvm::BitstreamCursor::readRecord(v23, v6, v38, 0, &v36);
    if (v37)
    {
      v11 = v36;
      v36 = 0;
      v22 |= 1u;
      v21.__r_.__value_.__r.__words[0] = v11;
      if (v37)
      {
        v36 = 0;
      }

      goto LABEL_28;
    }

    if (v36 == 1)
    {
      std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v38[0], (v38[0] + 8 * LODWORD(v38[1])));
      if (v37)
      {
        v10 = v36;
        v36 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }
    }

    else
    {
      if (v36 != 2)
      {
        p_dst = "Invalid value";
        v12 = 259;
LABEL_25:
        LOWORD(v35) = v12;
        llvm::BitcodeErrorCategory(Record);
        operator new();
      }

      v9 = *v38[0];
      if (*v38[0])
      {
        v16[0] = "Incompatible epoch: Bitcode '";
        v16[2] = v9;
        v17 = 2051;
        v18[0] = v16;
        v18[2] = "' vs current: '";
        v12 = 770;
        v19 = 770;
        *&__dst = v18;
        v30 = 0;
        v31 = 2306;
        p_dst = &__dst;
        v34 = "'";
        goto LABEL_25;
      }
    }
  }

  if (p_dst == 3)
  {
    LODWORD(v6) = HIDWORD(p_dst);
    goto LABEL_12;
  }

  if (p_dst != 1)
  {
    p_dst = "Malformed block";
    LOWORD(v35) = 259;
    llvm::BitcodeErrorCategory(v7);
    operator new();
  }

  v22 &= ~1u;
  v21 = __p;
  memset(&__p, 0, sizeof(__p));
LABEL_28:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38[0] != &v39)
  {
    free(v38[0]);
  }

  if ((v22 & 1) == 0)
  {
    v14 = v21.__r_.__value_.__r.__words[0];
    v15 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    *(&v21.__r_.__value_.__s + 23) = 0;
    v21.__r_.__value_.__s.__data_[0] = 0;
    llvm::Expected<std::string>::~Expected(&v21);
LABEL_36:
    llvm::SimpleBitstreamCursor::JumpToBit(v23, *(a1 + 56), v38);
    v5 = v38[0];
    if (!v38[0])
    {
      operator new();
    }

    goto LABEL_37;
  }

  v6 = v21.__r_.__value_.__r.__words[0];
  v21.__r_.__value_.__r.__words[0] = 0;
  llvm::Expected<std::string>::~Expected(&v21);
  if (!v6)
  {
    goto LABEL_36;
  }

LABEL_5:
  *(a2 + 8) |= 1u;
  *a2 = v6;
LABEL_38:
  if (v15 < 0)
  {
    operator delete(v14);
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(v27);
  v38[0] = &v25;
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](v38);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SimpleBitstreamCursor::JumpToBit@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 16) = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  *(this + 32) = 0;
  v4 = a2 & 0x3F;
  if (v4)
  {
    this = llvm::SimpleBitstreamCursor::Read(this, v4, &v7);
    if (v8)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    *a3 = v5;
  }

  else
  {
    *a3 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

_anonymous_namespace_::BitcodeReaderBase *anonymous namespace::BitcodeReader::materializeForwardReferencedFunctions(_anonymous_namespace_::BitcodeReaderBase *this, uint64_t a2)
{
  v2 = this;
  if (*(a2 + 1713) == 1)
  {
    goto LABEL_15;
  }

  *(a2 + 1713) = 1;
  while (1)
  {
    v4 = *(a2 + 1680);
    if (!v4)
    {
      break;
    }

    v5 = *(a2 + 1648);
    v6 = *(a2 + 1672);
    v7 = (*(v5 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)))[v6 & 0x1FF];
    *(a2 + 1680) = v4 - 1;
    *(a2 + 1672) = v6 + 1;
    if (v6 + 1 >= 0x400)
    {
      operator delete(*v5);
      *(a2 + 1648) += 8;
      *(a2 + 1672) -= 512;
    }

    if (this)
    {
      if ((*(v7 + 35) & 1) == 0)
      {
        v10[0] = "Never resolved function from blockaddress";
        v11 = 259;
      }

      this = (*(*a2 + 16))(a2, v7);
      if (*v2)
      {
        return this;
      }
    }
  }

  v8 = *(a2 + 1688);
  v9 = *(a2 + 1696);
  if (v8 == v9)
  {
LABEL_14:
    *(a2 + 1696) = v8;
    *(a2 + 1713) = 0;
LABEL_15:
    *v2 = 0;
    return this;
  }

  while (1)
  {
    this = (*(*a2 + 16))(a2, *v8);
    if (*v2)
    {
      return this;
    }

    if (++v8 == v9)
    {
      v8 = *(a2 + 1688);
      goto LABEL_14;
    }
  }
}

void llvm::BitcodeModule::getLazyModule(uint64_t a1@<X0>, _BYTE *a2@<X4>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v8 = 0;
  if (a2[32] == 1)
  {
    std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::__value_func[abi:nn200100](v7, a2);
    v8 = 1;
  }

  v9[0] = 0;
  v10 = 0;
  if (a2[72] == 1)
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](v9, (a2 + 40));
    v10 = 1;
  }

  v11[0] = 0;
  v12 = 0;
  if (a2[112] == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](v11, (a2 + 80));
    v12 = 1;
  }

  llvm::BitcodeModule::getModuleImpl(a1, a3);
  if (v12 == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v11);
  }

  if (v10 == 1)
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v9);
  }

  if (v8 == 1)
  {
    std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::BitcodeErrorCategoryType::~BitcodeErrorCategoryType(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::SimpleBitstreamCursor::Read@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = *(this + 32);
  if (a2 <= v6)
  {
    v8 = *(this + 24);
    *(this + 24) = v8 >> a2;
    *(this + 32) = v6 - a2;
    *(a3 + 8) &= ~1u;
    *a3 = v8 & (0xFFFFFFFFFFFFFFFFLL >> -a2);
  }

  else
  {
    if (v6)
    {
      v7 = *(this + 24);
    }

    else
    {
      v7 = 0;
    }

    this = llvm::SimpleBitstreamCursor::fillCurWord(this, &v15);
    v9 = v15;
    if (v15)
    {
      v10 = *(a3 + 8) | 1;
    }

    else
    {
      v11 = *(v4 + 32);
      v12 = v11 >= a2 - v6;
      v13 = v11 - (a2 - v6);
      if (!v12)
      {
        std::generic_category();
        memset(__p, 0, sizeof(__p));
        v16 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 1;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v15 = &unk_2883EB8F0;
        v23 = __p;
        llvm::raw_ostream::SetUnbuffered(&v15);
        v25[0] = &unk_2883EFD60;
        v25[1] = "Unexpected end of file reading %u of %u bits";
        v26 = *(v4 + 32);
        v27 = a2 - v6;
        llvm::raw_ostream::operator<<(&v15, v25);
        operator new();
      }

      v14 = *(v4 + 24);
      *(v4 + 24) = v14 >> (a2 - v6);
      *(v4 + 32) = v13;
      v9 = ((v14 & (0xFFFFFFFFFFFFFFFFLL >> (v6 - a2))) << v6) | v7;
      v10 = *(a3 + 8) & 0xFE;
    }

    *(a3 + 8) = v10;
    *a3 = v9;
  }

  return this;
}

uint64_t llvm::SimpleBitstreamCursor::fillCurWord@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v5 = *(this + 8);
  v4 = *(this + 16);
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    v22[3] = 5;
    v22[4] = std::generic_category();
    memset(v22, 0, 24);
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = &unk_2883EB8F0;
    v21 = v22;
    llvm::raw_ostream::SetUnbuffered(&v13);
    v11 = *(v2 + 16);
    v12[0] = &unk_2883EFD40;
    v12[1] = "Unexpected end of file reading %u of %u bytes";
    v12[2] = v11;
    v12[3] = v5;
    llvm::raw_ostream::operator<<(&v13, v12);
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  v7 = (*this + v4);
  if (v5 >= v4 + 8)
  {
    *(this + 24) = *v7;
    v6 = 8;
  }

  else
  {
    *(this + 24) = 0;
    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *v7;
        v7 = (v7 + 1);
        v9 |= v10 << (v8 & 0xF8);
        *(this + 24) = v9;
        v8 += 8;
      }

      while (8 * v6 != v8);
    }
  }

  *(this + 16) = v4 + v6;
  *(this + 32) = 8 * v6;
  *a2 = 0;
  return this;
}

uint64_t llvm::BitstreamCursor::ReadCode@<X0>(llvm::BitstreamCursor *this@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = llvm::SimpleBitstreamCursor::Read(this, *(this + 9), &v6);
  v4 = v7;
  *(a2 + 8) = *(a2 + 8) & 0xFE | v7 & 1;
  if (v4)
  {
    *a2 = v6;
  }

  else
  {
    *a2 = v6;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::BitstreamCursor::ReadBlockEnd(llvm::BitstreamCursor *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = *(this + 8);
    v3 = v2 >= 0x20;
    v4 = v2 - 32;
    if (v3)
    {
      *(this + 3) >>= v4;
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *(this + 8) = v5;
    llvm::BitstreamCursor::popBlockScope(this);
  }

  return v1 == 0;
}

void llvm::BitstreamCursor::popBlockScope(llvm::BitstreamCursor *this)
{
  v2 = *(this + 8) + 32 * *(this + 18);
  *(this + 9) = *(v2 - 32);
  std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vdeallocate(this + 5);
  *(this + 40) = *(v2 - 24);
  *(this + 7) = *(v2 - 8);
  *(v2 - 24) = 0;
  *(v2 - 16) = 0;
  *(v2 - 8) = 0;
  v3 = (*(this + 18) - 1);
  *(this + 18) = v3;
  v4 = (*(this + 8) + 32 * v3 + 8);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

uint64_t llvm::SimpleBitstreamCursor::ReadVBR@<X0>(llvm::SimpleBitstreamCursor *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  result = llvm::SimpleBitstreamCursor::Read(this, a2, &v19);
  v18 = v20 & 1;
  if (v20)
  {
    v7 = v19;
    *(a3 + 8) = *(a3 + 8) & 0xFE | v20 & 1;
    *a3 = v7;
  }

  else
  {
    v8 = v19;
    LODWORD(v17) = v19;
    v9 = 1 << (a2 - 1);
    if ((v19 & v9) != 0)
    {
      v10 = (v9 - 1) & v19;
      v11 = a2 - 1;
      while (1)
      {
        if (v11 >= 0x20)
        {
          v13 = std::generic_category();
          v19 = 92;
          v20 = v13;
          v15 = "Unterminated VBR";
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }

        llvm::SimpleBitstreamCursor::Read(this, a2, &v15);
        LOBYTE(v20) = v20 & 0xFE | v16 & 1;
        if (v16)
        {
          v12 = v15;
          v15 = 0;
          v19 = v12;
        }

        else
        {
          LODWORD(v19) = v15;
        }

        result = llvm::Expected<unsigned int>::moveAssign<unsigned int>(&v17, &v19);
        if (v20)
        {
          result = v19;
          v19 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        if (v16)
        {
          result = v15;
          v15 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        if (v18)
        {
          break;
        }

        v10 |= (v17 & (v9 - 1)) << v11;
        v11 += a2 - 1;
        if ((v17 & v9) == 0)
        {
          *(a3 + 8) &= ~1u;
          *a3 = v10;
          goto LABEL_21;
        }
      }

      *(a3 + 8) = *(a3 + 8) & 0xFE | v18 & 1;
      *a3 = v17;
    }

    else
    {
      *(a3 + 8) &= ~1u;
      *a3 = v8;
    }
  }

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *llvm::Expected<unsigned int>::moveAssign<unsigned int>(_BYTE *result, _BYTE *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[8];
    if (v4)
    {
      result = *result;
      *v3 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
        v4 = v3[8];
      }
    }

    v5 = a2[8];
    v3[8] = v4 & 0xFE | v5 & 1;
    if (v5)
    {
      v6 = *a2;
      *a2 = 0;
      *v3 = v6;
    }

    else
    {
      *v3 = *a2;
    }
  }

  return result;
}

std::string *std::string::append[abi:nn200100]<unsigned long long const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  v4 = a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = a3 - a2;
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    v7 = a3 - a2;
    if (a3 == a2)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  v12 = v7 >> 3;
  if (v10 > v4 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= v4)
  {
    if (v8 - size < v12)
    {
      std::string::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    do
    {
      v16 = v4->__r_.__value_.__r.__words[0];
      v4 = (v4 + 8);
      *v15++ = v16;
    }

    while (v4 != a3);
    *v15 = 0;
    v17 = v12 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (v12 > 0x16)
    {
      operator new();
    }

    v23 = v7 >> 3;
    v13 = __p;
    do
    {
      v18 = v4->__r_.__value_.__r.__words[0];
      v4 = (v4 + 8);
      *v13 = v18;
      v13 = (v13 + 1);
    }

    while (v4 != a3);
    *v13 = 0;
    if ((v23 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v20 = v23;
    }

    else
    {
      v20 = __p[1];
    }

    std::string::append(this, v19, v20);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

uint64_t llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      v10 = *a1;
      if (v6)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *>(&v27, v4, &v4[32 * v6], v10);
        v12 = v11;
        v10 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v12 = *a1;
      }

      v21 = &v10[32 * v7];
      if (v21 != v12)
      {
        do
        {
          v22 = v21 - 32;
          v27 = (v21 - 24);
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
          v21 = v22;
        }

        while (v22 != v12);
      }

      *(a1 + 8) = v6;
      v23 = *(a2 + 8);
      if (v23)
      {
        v24 = (*a2 + 32 * v23 - 24);
        v25 = -32 * v23;
        do
        {
          v27 = v24;
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
          v24 -= 4;
          v25 += 32;
        }

        while (v25);
      }

      goto LABEL_29;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *>(&v27, v4, &v4[32 * v7], *a1);
LABEL_15:
        v13 = *a2;
        v14 = *(a2 + 8);
        if (v7 != v14)
        {
          v15 = &v13[32 * v14];
          v16 = *a1 + 32 * v7;
          v17 = &v13[32 * v7];
          do
          {
            *v16 = *v17;
            *(v16 + 16) = 0;
            *(v16 + 24) = 0;
            *(v16 + 8) = 0;
            *(v16 + 8) = *(v17 + 8);
            *(v16 + 24) = *(v17 + 3);
            *(v17 + 1) = 0;
            *(v17 + 2) = 0;
            *(v17 + 3) = 0;
            v16 += 32;
            v17 += 32;
          }

          while (v17 != v15);
          v13 = *a2;
        }

        *(a1 + 8) = v6;
        v18 = *(a2 + 8);
        if (v18)
        {
          v19 = &v13[32 * v18 - 24];
          v20 = -32 * v18;
          do
          {
            v27 = v19;
            std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
            v19 -= 4;
            v20 += 32;
          }

          while (v20);
        }

LABEL_29:
        *(a2 + 8) = 0;
        return a1;
      }
    }

    else
    {
      if (v7)
      {
        v8 = (*a1 + 32 * v7 - 24);
        v9 = -32 * v7;
        do
        {
          v27 = v8;
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v27);
          v8 -= 4;
          v9 += 32;
        }

        while (v9);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(a1, v6);
    }

    v7 = 0;
    goto LABEL_15;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        v8 = std::__copy_impl::operator()[abi:nn200100]<llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block*>(*a2, *a2 + 32 * v4, *a1);
        v9 = *a1;
        v5 = *(a1 + 8);
      }

      else
      {
        v9 = *a1;
        v8 = *a1;
      }

      v15 = v9 + 32 * v5;
      if (v15 != v8)
      {
        do
        {
          v16 = v15 - 32;
          v18 = (v15 - 24);
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v18);
          v15 = v16;
        }

        while (v16 != v8);
      }

      goto LABEL_20;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        std::__copy_impl::operator()[abi:nn200100]<llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block*>(*a2, *a2 + 32 * v5, *a1);
        goto LABEL_13;
      }
    }

    else
    {
      if (v5)
      {
        v6 = (*a1 + 32 * v5 - 24);
        v7 = -32 * v5;
        do
        {
          v18 = v6;
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v18);
          v6 -= 4;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_13:
    v10 = *(a2 + 8);
    if (v5 != v10)
    {
      v11 = *a2;
      v12 = *a2 + 32 * v10;
      v13 = *a1 + 32 * v5;
      v14 = v11 + 32 * v5;
      do
      {
        *v13 = *v14;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 8) = 0;
        std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__init_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>(v13 + 8, *(v14 + 8), *(v14 + 16), (*(v14 + 16) - *(v14 + 8)) >> 4);
        v14 += 32;
        v13 += 32;
      }

      while (v14 != v12);
    }

LABEL_20:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::assignRemote(char **a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[32 * v5 - 24];
    v7 = -32 * v5;
    do
    {
      v9 = v6;
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v6 -= 4;
      v7 += 32;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *,llvm::BitstreamCursor::Block *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vdeallocate((a4 + 8));
    *(a4 + 8) = *(v5 + 8);
    *(a4 + 24) = *(v5 + 24);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v5 += 32;
    a4 += 32;
  }

  while (v5 != v6);
  return v6;
}

void llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 32 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a2 + 8) = *(v3 + 8);
      *(a2 + 24) = *(v3 + 24);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      a2 += 32;
      v3 += 32;
    }

    while (v3 != v4);
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = (*a1 + 32 * v5 - 24);
      v7 = -32 * v5;
      do
      {
        v8 = v6;
        std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v8);
        v6 -= 4;
        v7 += 32;
      }

      while (v7);
    }
  }
}

void anonymous namespace::BitcodeReader::~BitcodeReader(_anonymous_namespace_::BitcodeReader *this)
{
  *this = &unk_2883EFB90;
  v2 = *(this + 234);
  if (v2)
  {
    *(this + 235) = v2;
    operator delete(v2);
  }

  if (*(this + 1864) == 1)
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](this + 1832);
  }

  v3 = *(this + 225);
  if (v3 != this + 1824)
  {
    free(v3);
  }

  v34 = (this + 1776);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v34);
  MEMORY[0x277C69E30](*(this + 219), 8);
  MEMORY[0x277C69E30](*(this + 216), 8);
  v4 = *(this + 211);
  if (v4)
  {
    *(this + 212) = v4;
    operator delete(v4);
  }

  v5 = *(this + 206);
  v6 = *(this + 207);
  *(this + 210) = 0;
  v7 = v6 - v5;
  if (v7 >= 3)
  {
    do
    {
      operator delete(*v5);
      v5 = (*(this + 206) + 8);
      *(this + 206) = v5;
      v6 = *(this + 207);
      v7 = v6 - v5;
    }

    while (v7 > 2);
  }

  if (v7 == 1)
  {
    v8 = 256;
    goto LABEL_15;
  }

  if (v7 == 2)
  {
    v8 = 512;
LABEL_15:
    *(this + 209) = v8;
  }

  if (v5 != v6)
  {
    do
    {
      v9 = *v5++;
      operator delete(v9);
    }

    while (v5 != v6);
    v10 = *(this + 206);
    v11 = *(this + 207);
    if (v11 != v10)
    {
      *(this + 207) = v11 + ((v10 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v12 = *(this + 205);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 408);
  v14 = *(this + 202);
  if (v13)
  {
    v15 = (v14 + 16);
    v16 = 32 * v13;
    do
    {
      if ((*(v15 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          *v15 = v17;
          operator delete(v17);
        }
      }

      v15 += 4;
      v16 -= 32;
    }

    while (v16);
    v14 = *(this + 202);
  }

  MEMORY[0x277C69E30](v14, 8);
  v18 = *(this + 199);
  if (v18)
  {
    *(this + 200) = v18;
    operator delete(v18);
  }

  MEMORY[0x277C69E30](*(this + 196), 8);
  MEMORY[0x277C69E30](*(this + 192), 8);
  v19 = *(this + 189);
  if (v19)
  {
    *(this + 190) = v19;
    operator delete(v19);
  }

  v20 = *(this + 186);
  if (v20)
  {
    *(this + 187) = v20;
    operator delete(v20);
  }

  std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(*(this + 184));
  v21 = *(this + 180);
  if (v21)
  {
    *(this + 181) = v21;
    operator delete(v21);
  }

  v22 = *(this + 177);
  if (v22)
  {
    *(this + 178) = v22;
    operator delete(v22);
  }

  v23 = *(this + 174);
  if (v23)
  {
    *(this + 175) = v23;
    operator delete(v23);
  }

  v24 = *(this + 171);
  if (v24)
  {
    *(this + 172) = v24;
    operator delete(v24);
  }

  v25 = *(this + 105);
  if (v25 != this + 856)
  {
    free(v25);
  }

  MEMORY[0x277C69E30](*(this + 102), 8);
  v26 = *(this + 99);
  if (v26)
  {
    *(this + 100) = v26;
    operator delete(v26);
  }

  if (*(this + 784) == 1)
  {
    std::unique_ptr<llvm::MetadataLoader::MetadataLoaderImpl>::reset[abi:nn200100](this + 97, 0);
  }

  std::__function::__value_func<llvm::Expected<llvm::Value *> ()(unsigned int,llvm::BasicBlock *)>::~__value_func[abi:nn200100](this + 744);
  v27 = *(this + 89);
  if (v27)
  {
    std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__base_destruct_at_end[abi:nn200100](this + 712, v27);
    operator delete(*(this + 89));
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 616);
  MEMORY[0x277C69E30](*(this + 74), 8);
  MEMORY[0x277C69E30](*(this + 71), 8);
  v28 = *(this + 140);
  v29 = *(this + 68);
  if (v28)
  {
    v30 = 32 * v28;
    v31 = (v29 + 24);
    do
    {
      if (*(v31 - 6) <= 0xFFFFFFFD)
      {
        v32 = *(v31 - 2);
        if (v31 != v32)
        {
          free(v32);
        }
      }

      v31 += 4;
      v30 -= 32;
    }

    while (v30);
    v29 = *(this + 68);
  }

  MEMORY[0x277C69E30](v29, 8);
  v33 = *(this + 65);
  if (v33)
  {
    *(this + 66) = v33;
    operator delete(v33);
  }

  v34 = (this + 496);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = (this + 472);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v34);
  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(this + 12);
  v34 = (this + 72);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = (this + 8);
  std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v34);
}

{

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::BitcodeReader::materialize(_anonymous_namespace_::BitcodeReader *this@<X0>, llvm::GlobalValue *a2@<X1>, _anonymous_namespace_::BitcodeReaderBase *a3@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!a2 || *(a2 + 16) || (*(a2 + 35) & 1) == 0)
  {
    *a3 = 0;
    goto LABEL_5;
  }

  v7 = *(this + 196);
  v8 = *(this + 396);
  if (v8)
  {
    LODWORD(v9) = (v8 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v10 = v7 + 16 * v9;
    v11 = *v10;
    if (*v10 == a2)
    {
      goto LABEL_13;
    }

    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & (v8 - 1);
      v11 = *(v7 + 16 * v9);
      if (v11 == a2)
      {
        v10 = v7 + 16 * v9;
        goto LABEL_13;
      }
    }
  }

  v10 = v7 + 16 * v8;
LABEL_13:
  if (!*(v10 + 8))
  {
    while (!*(v10 + 8))
    {
      llvm::SimpleBitstreamCursor::JumpToBit(this + 32, *(this + 55), a3);
      if (*a3)
      {
        goto LABEL_5;
      }

      if (!*(this + 16) && *(this + 5) <= *(this + 6))
      {
        v78[0] = "Could not find function in stream";
LABEL_46:
        v81 = 259;
      }

      if ((*(this + 1560) & 1) == 0)
      {
        v78[0] = "Trying to materialize functions before seeing function blocks";
        goto LABEL_46;
      }

      v78[0] = &v79;
      v78[1] = 0x4000000000;
      llvm::BitstreamCursor::advance(this + 32, 0, &v76);
      if (v77)
      {
        v25 = v76;
        v76 = 0;
        *a3 = v25;
      }

      else
      {
        if (v76 != 2)
        {
          v74 = "Expect SubBlock";
          goto LABEL_49;
        }

        if (HIDWORD(v76) != 12)
        {
          v74 = "Expect function block";
LABEL_49:
          v75 = 259;
        }

        if (!*a3)
        {
          *(this + 55) = 8 * *(this + 6) - *(this + 16);
        }
      }

      if (v77)
      {
        v26 = v76;
        v76 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      if (v78[0] != &v79)
      {
        free(v78[0]);
      }

      if (*a3)
      {
        goto LABEL_5;
      }
    }

    *a3 = 0;
  }

  (*(*this + 32))(this);
  if (!*a3)
  {
    llvm::SimpleBitstreamCursor::JumpToBit(this + 32, *(v10 + 8), a3);
    if (!*a3)
    {
      if (!*a3)
      {
        *(a2 + 8) &= ~0x1000000u;
        if (*(this + 1714) == 1)
        {
          llvm::stripDebugInfo(a2, v14);
        }

        if (*(this + 386))
        {
          v16 = *(this + 388);
          if (v16)
          {
            v17 = 16 * v16;
            v18 = *(this + 192);
            while ((*v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v18 += 2;
              v17 -= 16;
              if (!v17)
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
            v18 = *(this + 192);
          }

          v27 = *(this + 192) + 16 * v16;
LABEL_60:
          if (v18 != v27)
          {
            v28 = *(*v18 + 1);
            while (v28)
            {
              v29 = *(v28 + 24);
              v28 = *(v28 + 8);
              if (v29 && *(v29 + 16) == 84)
              {
                llvm::UpgradeIntrinsicCall(v29, v18[1], v15);
              }
            }

            while (1)
            {
              v18 += 2;
              if (v18 == v27)
              {
                break;
              }

              if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                goto LABEL_60;
              }
            }
          }
        }

LABEL_24:
        v73 = this + 776;
        v19 = llvm::MetadataLoader::lookupSubprogramForFunction((this + 776), a2);
        if (v19)
        {
          llvm::Value::setMetadata(a2, 0, v19);
        }

        if ((*(*v73 + 1040) & 1) == 0)
        {
          v21 = a2 + 72;
          v22 = *(a2 + 10);
          if (v22 == a2 + 72)
          {
            v24 = 0;
          }

          else
          {
            do
            {
              v23 = v22 - 24;
              if (!v22)
              {
                v23 = 0;
              }

              v24 = *(v23 + 6);
              if (v24 != v23 + 40)
              {
                break;
              }

              v22 = *(v22 + 1);
            }

            while (v22 != v21);
          }

          if (v22 != v21)
          {
            do
            {
              if (v24)
              {
                v30 = (v24 - 24);
              }

              else
              {
                v30 = 0;
              }

              if (v30[6] || (*(v30 + 23) & 0x20) != 0)
              {
                Metadata = llvm::Value::getMetadata(v30, 1);
                if (Metadata)
                {
                  if ((llvm::TBAAVerifier::visitTBAAMetadata(this + 215, v30, Metadata) & 1) == 0)
                  {
                    *(*v73 + 1040) = 1;
                    v35 = *(a2 + 5);
                    v36 = v35 + 24;
                    for (i = *(v35 + 32); i != v36; i = *(i + 8))
                    {
                      v38 = i - 56;
                      if (!i)
                      {
                        v38 = 0;
                      }

                      if ((*(v38 + 35) & 1) == 0)
                      {
                        v39 = v38 + 72;
                        v40 = *(v38 + 80);
                        if (v40 == v38 + 72)
                        {
                          v42 = 0;
                        }

                        else
                        {
                          do
                          {
                            v41 = v40 - 24;
                            if (!v40)
                            {
                              v41 = 0;
                            }

                            v42 = *(v41 + 48);
                            if (v42 != v41 + 40)
                            {
                              break;
                            }

                            v40 = *(v40 + 8);
                          }

                          while (v40 != v39);
                        }

                        while (v40 != v39)
                        {
                          if (v42)
                          {
                            v43 = v42 - 24;
                          }

                          else
                          {
                            v43 = 0;
                          }

                          if (*(v43 + 48) || (*(v43 + 23) & 0x20) != 0)
                          {
                            llvm::Value::setMetadata(v43, 1, 0);
                          }

                          v42 = *(v42 + 8);
                          v44 = v40 - 24;
                          if (!v40)
                          {
                            v44 = 0;
                          }

                          while (v42 == v44 + 40)
                          {
                            v40 = *(v40 + 8);
                            if (v40 == v39)
                            {
                              break;
                            }

                            v44 = v40 - 24;
                            if (!v40)
                            {
                              v44 = 0;
                            }

                            v42 = *(v44 + 48);
                          }
                        }
                      }
                    }
                  }
                }
              }

              v24 = *(v24 + 1);
              v32 = v22 - 24;
              if (!v22)
              {
                v32 = 0;
              }

              if (v24 == v32 + 40)
              {
                v22 = *(v22 + 1);
                v33 = a2 + 72;
                while (v22 != a2 + 72)
                {
                  v34 = v22 - 24;
                  if (!v22)
                  {
                    v34 = 0;
                  }

                  v24 = *(v34 + 6);
                  if (v24 != v34 + 40)
                  {
                    break;
                  }

                  v22 = *(v22 + 1);
                }
              }

              else
              {
                v33 = a2 + 72;
              }
            }

            while (v22 != v33);
          }
        }

        v45 = a2 + 72;
        v46 = *(a2 + 10);
        if (v46 == a2 + 72)
        {
          v48 = 0;
        }

        else
        {
          do
          {
            v47 = v46 - 24;
            if (!v46)
            {
              v47 = 0;
            }

            v48 = *(v47 + 6);
            if (v48 != v47 + 40)
            {
              break;
            }

            v46 = *(v46 + 1);
          }

          while (v46 != v45);
        }

        if (v46 == v45)
        {
LABEL_180:
          llvm::UpgradeFunctionAttributes(a2, v20);
          goto LABEL_5;
        }

        while (1)
        {
          if (v48)
          {
            v49 = (v48 - 24);
          }

          else
          {
            v49 = 0;
          }

          if (!*(v49 + 48) && (*(v49 + 23) & 0x20) == 0)
          {
            goto LABEL_136;
          }

          v50 = llvm::Value::getMetadata(v49, 2);
          if (!v50)
          {
            goto LABEL_136;
          }

          v51 = *(v50 - 16);
          v52 = (v51 & 2) != 0 ? *(v50 - 32) : (v50 - 16 - 8 * ((v51 >> 2) & 0xF));
          v53 = *v52;
          if (!v53 || *v53)
          {
            goto LABEL_136;
          }

          v66 = *(v53 + 8);
          if (*v66 == 14)
          {
            v67 = v66[3];
            v68 = *(v66 + 30);
            if (v67 == 0x775F68636E617262 && v68 == 0x737468676965775FLL)
            {
              v70 = *(v49 + 16);
              if (v48 && v70 == 30)
              {
                if ((*(v48 - 1) & 0x7FFFFFF) == 3)
                {
                  v71 = 2;
                }

                else
                {
                  v71 = 1;
                }

                goto LABEL_173;
              }

              if (v48 && v70 == 31)
              {
                v71 = (*(v48 - 1) >> 1) & 0x3FFFFFF;
                goto LABEL_173;
              }

              if (v70 == 84)
              {
                v71 = 1;
                goto LABEL_173;
              }

              if (v48 && v70 == 32)
              {
                v71 = (*(v48 - 1) & 0x7FFFFFF) - 1;
                goto LABEL_173;
              }

              if (v70 == 85)
              {
                v71 = 2;
LABEL_173:
                if ((v51 & 2) != 0)
                {
                  v72 = *(v50 - 24);
                }

                else
                {
                  v72 = (v51 >> 6) & 0xF;
                }

                if (v72 != v71 + 1 && (*(v49 + 48) || (*(v49 + 23) & 0x20) != 0))
                {
                  llvm::Value::setMetadata(v49, 2, 0);
                }

LABEL_136:
                v54 = *(v49 + 16) - 33;
                v55 = v54 > 0x33;
                v56 = (1 << v54) & 0x8000000000041;
                if (!v55 && v56 != 0)
                {
                  llvm::AttributeFuncs::typeIncompatible(**(*(v49 + 72) + 16), 3, v78);
                  *(v49 + 64) = llvm::AttributeList::removeAttributesAtIndex((v49 + 64), **v49, 0, v78);
                  std::__tree<llvm::SmallString<32u>>::destroy(&v79, v80);
                  v58 = llvm::CallBase::arg_end(v49);
                  v59 = *(v49 + 20) & 0x7FFFFFF;
                  if (((v58 - v49 + 32 * v59) & 0x1FFFFFFFE0) != 0)
                  {
                    v60 = 0;
                    v61 = -v59;
                    v62 = v49;
                    do
                    {
                      llvm::AttributeFuncs::typeIncompatible(**(v62 + 32 * v61), 3, v78);
                      *(v49 + 64) = llvm::AttributeList::removeAttributesAtIndex((v49 + 64), **v49, ++v60, v78);
                      std::__tree<llvm::SmallString<32u>>::destroy(&v79, v80);
                      v63 = llvm::CallBase::arg_end(v49);
                      v64 = *(v49 + 20) & 0x7FFFFFF;
                      v61 = -v64;
                      v62 += 32;
                    }

                    while (v60 < ((v63 - v49 + 32 * v64) >> 5));
                  }
                }
              }
            }
          }

          v48 = *(v48 + 1);
          v65 = v46 - 24;
          if (!v46)
          {
            v65 = 0;
          }

          while (v48 == v65 + 40)
          {
            v46 = *(v46 + 1);
            if (v46 == v45)
            {
              break;
            }

            v65 = v46 - 24;
            if (!v46)
            {
              v65 = 0;
            }

            v48 = *(v65 + 6);
          }

          if (v46 == v45)
          {
            goto LABEL_180;
          }
        }
      }
    }
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::BitcodeReader::materializeModule(_anonymous_namespace_::BitcodeReader *this@<X0>, void ***a2@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  (*(*this + 32))(a2);
  if (!*a2)
  {
    *(this + 1713) = 1;
    v8 = *(this + 54);
    v9 = v8 + 24;
    for (i = *(v8 + 32); i != v9; i = *(i + 8))
    {
      if (i)
      {
        v11 = i - 56;
      }

      else
      {
        v11 = 0;
      }

      (*(*this + 16))(this, v11);
      if (*a2)
      {
        goto LABEL_2;
      }
    }

    v13 = *(this + 55);
    v12 = *(this + 56);
    if (*(this + 440) == 0)
    {
      goto LABEL_81;
    }

    v59 = 0;
    if (v12 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    memset(v58, 0, sizeof(v58));
    v57 = 0u;
    memset(v56, 0, sizeof(v56));
    if (v59 == 1)
    {
      std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v58);
    }

    if (BYTE8(v57) == 1)
    {
      std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](&v56[2] + 8);
    }

    if (LOBYTE(v56[2]) == 1)
    {
      std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](v56);
    }

    if (!*a2)
    {
LABEL_81:
      if (*(this + 406))
      {
        v54 = "Never resolved function from blockaddress";
        v55 = 259;
      }

      v15 = (this + 1536);
      v16 = *(this + 386);
      if (!v16)
      {
        goto LABEL_49;
      }

      v17 = *(this + 388);
      if (v17)
      {
        v18 = 16 * v17;
        v19 = *(this + 192);
        while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v19 += 2;
          v18 -= 16;
          if (!v18)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v19 = *(this + 192);
      }

      v20 = *(this + 192) + 16 * v17;
      if (v19 != v20)
      {
LABEL_31:
        v21 = *v19;
        v22 = *(*v19 + 1);
        if (v22)
        {
          do
          {
            v23 = *(v22 + 24);
            if (v23 && *(v23 + 16) == 84)
            {
              llvm::UpgradeIntrinsicCall(v23, v19[1], v5);
            }

            v22 = *(v22 + 8);
          }

          while (v22);
          v21 = *v19;
          if (*(*v19 + 1))
          {
            llvm::Value::doRAUW(*v19, v19[1], 1, v6);
            v21 = *v19;
          }
        }

        llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::erase(*(v21 + 5) + 24, v21 + 56);
        while (1)
        {
          v19 += 2;
          if (v19 == v20)
          {
            break;
          }

          if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v19 != v20)
            {
              goto LABEL_31;
            }

            break;
          }
        }

        v16 = *(this + 386);
      }

LABEL_43:
      if (v16)
      {
        v24 = *(this + 388);
        if (v24 > 4 * v16 && v24 >= 0x41)
        {
          v25 = 1 << (33 - __clz(v16 - 1));
          if (v25 <= 64)
          {
            v26 = 64;
          }

          else
          {
            v26 = v25;
          }

LABEL_52:
          if (v26 == v24)
          {
            v27 = 0;
            *(this + 193) = 0;
            v28 = v24 + 0xFFFFFFFFFFFFFFFLL;
            v29 = v28 & 0xFFFFFFFFFFFFFFFLL;
            v30 = (v28 & 0xFFFFFFFFFFFFFFFLL) - (v28 & 1) + 2;
            v31 = vdupq_n_s64(v29);
            v32 = (*(this + 192) + 16);
            do
            {
              v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v27), xmmword_2750C1210)));
              if (v33.i8[0])
              {
                *(v32 - 2) = -4096;
              }

              if (v33.i8[4])
              {
                *v32 = -4096;
              }

              v27 += 2;
              v32 += 4;
            }

            while (v30 != v27);
          }

          else
          {
            MEMORY[0x277C69E30](*v15, 8);
            if (v26)
            {
              v43 = (4 * v26 / 3u + 1) | ((4 * v26 / 3u + 1) >> 1);
              v44 = v43 | (v43 >> 2) | ((v43 | (v43 >> 2)) >> 4);
              LODWORD(v44) = (((v44 | (v44 >> 8)) >> 16) | v44 | (v44 >> 8)) + 1;
              *(this + 388) = v44;
              v45 = operator new(16 * v44, 8uLL);
              *(this + 192) = v45;
              *(this + 193) = 0;
              v46 = *(this + 388);
              if (v46)
              {
                v47 = 0;
                v48 = v46 + 0xFFFFFFFFFFFFFFFLL;
                v49 = v48 & 0xFFFFFFFFFFFFFFFLL;
                v50 = (v48 & 0xFFFFFFFFFFFFFFFLL) - (v48 & 1) + 2;
                v51 = vdupq_n_s64(v49);
                v52 = v45 + 16;
                do
                {
                  v53 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(vdupq_n_s64(v47), xmmword_2750C1210)));
                  if (v53.i8[0])
                  {
                    *(v52 - 2) = -4096;
                  }

                  if (v53.i8[4])
                  {
                    *v52 = -4096;
                  }

                  v47 += 2;
                  v52 += 4;
                }

                while (v50 != v47);
              }
            }

            else
            {
              *v15 = 0;
              *(this + 193) = 0;
              *(this + 388) = 0;
            }
          }

          goto LABEL_68;
        }
      }

      else
      {
LABEL_49:
        if (!*(this + 387))
        {
LABEL_68:
          llvm::UpgradeDebugInfo(*(this + 54), v4);
          llvm::UpgradeModuleFlags(*(this + 54), v41);
          llvm::UpgradeARCRuntime(*(this + 54), v42);
          *a2 = 0;
          goto LABEL_2;
        }

        v24 = *(this + 388);
        if (v24 > 0x40)
        {
          v26 = 0;
          goto LABEL_52;
        }
      }

      if (v24)
      {
        v34 = 0;
        v35 = v24 + 0xFFFFFFFFFFFFFFFLL;
        v36 = v35 & 0xFFFFFFFFFFFFFFFLL;
        v37 = (v35 & 0xFFFFFFFFFFFFFFFLL) - (v35 & 1) + 2;
        v38 = vdupq_n_s64(v36);
        v39 = (*v15 + 16);
        do
        {
          v40 = vmovn_s64(vcgeq_u64(v38, vorrq_s8(vdupq_n_s64(v34), xmmword_2750C1210)));
          if (v40.i8[0])
          {
            *(v39 - 2) = -4096;
          }

          if (v40.i8[4])
          {
            *v39 = -4096;
          }

          v34 += 2;
          v39 += 4;
        }

        while (v37 != v34);
      }

      *(this + 193) = 0;
      goto LABEL_68;
    }
  }

LABEL_2:
  v7 = *MEMORY[0x277D85DE8];
}