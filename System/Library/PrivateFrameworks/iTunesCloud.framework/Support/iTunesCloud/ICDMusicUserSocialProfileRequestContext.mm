@interface ICDMusicUserSocialProfileRequestContext
- (BOOL)isEqual:(id)equal;
- (ICDMusicUserSocialProfileRequestContext)initWithStoreRequestContext:(id)context subscriptionStatus:(id)status;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICDMusicUserSocialProfileRequestContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    cacheKey = [equalCopy cacheKey];
    cacheKey2 = [(ICDMusicUserSocialProfileRequestContext *)self cacheKey];
    v7 = [cacheKey isEqualToString:cacheKey2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICDMusicUserSocialProfileRequestContext allocWithZone:zone];
  storeRequestContext = self->_storeRequestContext;
  subscriptionStatus = self->_subscriptionStatus;

  return [(ICDMusicUserSocialProfileRequestContext *)v4 initWithStoreRequestContext:storeRequestContext subscriptionStatus:subscriptionStatus];
}

- (ICDMusicUserSocialProfileRequestContext)initWithStoreRequestContext:(id)context subscriptionStatus:(id)status
{
  contextCopy = context;
  statusCopy = status;
  v197.receiver = self;
  v197.super_class = ICDMusicUserSocialProfileRequestContext;
  v8 = [(ICDMusicUserSocialProfileRequestContext *)&v197 init];
  if (v8)
  {
    v9 = [contextCopy copy];
    storeRequestContext = v8->_storeRequestContext;
    v8->_storeRequestContext = v9;

    objc_storeStrong(&v8->_subscriptionStatus, status);
    identity = [(ICStoreRequestContext *)v8->_storeRequestContext identity];
    accountDSID = [identity accountDSID];
    memset(&v199, 0, sizeof(v199));
    v198 = 4001;
    CC_SHA1_Init(&v199);
    v12 = accountDSID;
    uTF8String = [v12 UTF8String];
    v14 = [v12 length];
    v15 = v14;
    v16 = ICPushNotificationMessage_ptr;
    if (v198 > 3000)
    {
      if (v198 > 4000)
      {
        switch(v198)
        {
          case 4001:
            CC_SHA1_Update(&v199, uTF8String, v14);
            break;
          case 4256:
            CC_SHA256_Update(&v199, uTF8String, v14);
            break;
          case 4512:
            CC_SHA512_Update(&v199, uTF8String, v14);
            break;
        }

        goto LABEL_98;
      }

      if (v198 != 3001)
      {
        if (v198 == 4000)
        {
          CC_MD5_Update(&v199, uTF8String, v14);
        }

        goto LABEL_98;
      }

      if (!uTF8String)
      {
        goto LABEL_98;
      }

      v199.count[0] += v14;
      if (v14 + LODWORD(v199.hash[7]) <= 0x1F)
      {
        memcpy(&v199.wbuf[-5] + LODWORD(v199.hash[7]), uTF8String, v14);
        v56 = LODWORD(v199.hash[7]) + v15;
LABEL_72:
        LODWORD(v199.hash[7]) = v56;
        goto LABEL_98;
      }

      v69 = &uTF8String[v14];
      if (LODWORD(v199.hash[7]))
      {
        memcpy(&v199.wbuf[-5] + LODWORD(v199.hash[7]), uTF8String, (32 - LODWORD(v199.hash[7])));
        v199.count[1] = 0x9E3779B185EBCA87 * __ROR8__(v199.count[1] - 0x3D4D51C2D82B14B1 * v199.hash[3], 33);
        v199.hash[0] = 0x9E3779B185EBCA87 * __ROR8__(v199.hash[0] - 0x3D4D51C2D82B14B1 * v199.hash[4], 33);
        v199.hash[1] = 0x9E3779B185EBCA87 * __ROR8__(v199.hash[1] - 0x3D4D51C2D82B14B1 * v199.hash[5], 33);
        v199.hash[2] = 0x9E3779B185EBCA87 * __ROR8__(v199.hash[2] - 0x3D4D51C2D82B14B1 * v199.hash[6], 33);
        uTF8String += (32 - LODWORD(v199.hash[7]));
        LODWORD(v199.hash[7]) = 0;
      }

      if ((uTF8String + 32) <= v69)
      {
        v70 = v199.count[1];
        v72 = v199.hash[1];
        v73 = v199.hash[0];
        v71 = v199.hash[2];
        do
        {
          v70 = 0x9E3779B185EBCA87 * __ROR8__(v70 - 0x3D4D51C2D82B14B1 * *uTF8String, 33);
          v73 = 0x9E3779B185EBCA87 * __ROR8__(v73 - 0x3D4D51C2D82B14B1 * *(uTF8String + 1), 33);
          v72 = 0x9E3779B185EBCA87 * __ROR8__(v72 - 0x3D4D51C2D82B14B1 * *(uTF8String + 2), 33);
          v71 = 0x9E3779B185EBCA87 * __ROR8__(v71 - 0x3D4D51C2D82B14B1 * *(uTF8String + 3), 33);
          uTF8String += 32;
        }

        while (uTF8String <= v69 - 32);
        v199.count[1] = v70;
        v199.hash[0] = v73;
        v199.hash[1] = v72;
        v199.hash[2] = v71;
      }

      v16 = ICPushNotificationMessage_ptr;
      if (uTF8String < v69)
      {
        v56 = v69 - uTF8String;
        __memcpy_chk();
        goto LABEL_72;
      }

LABEL_98:

      memset(&v200[8], 0, 64);
      *v200 = v198;
      if (v198 > 3000)
      {
        if (v198 > 4000)
        {
          switch(v198)
          {
            case 4001:
              CC_SHA1_Final(&v200[8], &v199);
              break;
            case 4256:
              CC_SHA256_Final(&v200[8], &v199);
              break;
            case 4512:
              CC_SHA512_Final(&v200[8], &v199);
              break;
          }

          goto LABEL_145;
        }

        if (v198 != 3001)
        {
          if (v198 == 4000)
          {
            CC_MD5_Final(&v200[8], &v199);
          }

LABEL_145:
          v201[0] = *v200;
          v201[1] = *&v200[16];
          v201[2] = *&v200[32];
          v201[3] = *&v200[48];
          v202 = *&v200[64];
          if (*v200 > 3999)
          {
            if (*v200 > 4255)
            {
              if (*v200 == 4256)
              {
                v181 = v201 + 8;
                v182 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                v183 = v182;
                for (i = 0; i != 64; i += 2)
                {
                  v185 = *v181++;
                  v186 = &v182[i];
                  *v186 = a0123456789abcd[v185 >> 4];
                  v186[1] = a0123456789abcd[v185 & 0xF];
                }

                v150 = objc_alloc(v16[88]);
                v151 = v183;
                v152 = 64;
              }

              else
              {
                if (*v200 != 4512)
                {
                  goto LABEL_194;
                }

                v157 = v201 + 8;
                v158 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                v159 = v158;
                for (j = 0; j != 128; j += 2)
                {
                  v161 = *v157++;
                  v162 = &v158[j];
                  *v162 = a0123456789abcd[v161 >> 4];
                  v162[1] = a0123456789abcd[v161 & 0xF];
                }

                v150 = objc_alloc(v16[88]);
                v151 = v159;
                v152 = 128;
              }
            }

            else if (*v200 == 4000)
            {
              v171 = v201 + 8;
              v172 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
              v173 = v172;
              for (k = 0; k != 32; k += 2)
              {
                v175 = *v171++;
                v176 = &v172[k];
                *v176 = a0123456789abcd[v175 >> 4];
                v176[1] = a0123456789abcd[v175 & 0xF];
              }

              v150 = objc_alloc(v16[88]);
              v151 = v173;
              v152 = 32;
            }

            else
            {
              if (*v200 != 4001)
              {
                goto LABEL_194;
              }

              v144 = v201 + 8;
              v145 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
              v146 = v145;
              for (m = 0; m != 40; m += 2)
              {
                v148 = *v144++;
                v149 = &v145[m];
                *v149 = a0123456789abcd[v148 >> 4];
                v149[1] = a0123456789abcd[v148 & 0xF];
              }

              v150 = objc_alloc(v16[88]);
              v151 = v146;
              v152 = 40;
            }
          }

          else
          {
            if (*v200 <= 2999)
            {
              if (*v200 == 1000)
              {
                v163 = *(&v201[0] + 1);
                if (*(&v201[0] + 1))
                {
                  v164 = v16;
                  v165 = v204 + 1;
                  quot = *(&v201[0] + 1);
                  do
                  {
                    v167 = lldiv(quot, 10);
                    quot = v167.quot;
                    if (v167.rem >= 0)
                    {
                      LOBYTE(v168) = v167.rem;
                    }

                    else
                    {
                      v168 = -v167.rem;
                    }

                    *(v165 - 2) = v168 + 48;
                    v169 = (v165 - 2);
                    --v165;
                  }

                  while (v167.quot);
                  if (v163 < 0)
                  {
                    *(v165 - 2) = 45;
                    v169 = (v165 - 2);
                  }

                  v170 = CFStringCreateWithBytes(0, v169, v204 - v169, 0x8000100u, 0);
                  v16 = v164;
                  goto LABEL_192;
                }

                goto LABEL_195;
              }

              if (*v200 == 2000)
              {
                v139 = DWORD2(v201[0]);
                if (DWORD2(v201[0]))
                {
                  v140 = v204;
                  do
                  {
                    v141 = ldiv(v139, 10);
                    v139 = v141.quot;
                    if (v141.rem >= 0)
                    {
                      LOBYTE(v142) = v141.rem;
                    }

                    else
                    {
                      v142 = -v141.rem;
                    }

                    *--v140 = v142 + 48;
                  }

                  while (v141.quot);
                  v143 = CFStringCreateWithBytes(0, v140, v204 - v140, 0x8000100u, 0);
                  goto LABEL_191;
                }

LABEL_195:
                v170 = @"0";
                goto LABEL_192;
              }

LABEL_194:
              v194 = +[NSAssertionHandler currentHandler];
              v195 = [v16[88] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
              [v194 handleFailureInFunction:v195 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

              v170 = &stru_1001E0388;
              goto LABEL_192;
            }

            if (*v200 == 3000)
            {
              LODWORD(v203[0]) = bswap32(DWORD2(v201[0]));
              v177 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
              v178 = 0;
              v179 = v177 + 1;
              do
              {
                v180 = *(v203 + v178);
                *(v179 - 1) = a0123456789abcd[v180 >> 4];
                *v179 = a0123456789abcd[v180 & 0xF];
                v179 += 2;
                ++v178;
              }

              while (v178 != 4);
              v150 = objc_alloc(v16[88]);
              v151 = v177;
              v152 = 8;
            }

            else
            {
              if (*v200 != 3001)
              {
                goto LABEL_194;
              }

              v203[0] = bswap64(*(&v201[0] + 1));
              v153 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
              v154 = 0;
              v155 = v153 + 1;
              do
              {
                v156 = *(v203 + v154);
                *(v155 - 1) = a0123456789abcd[v156 >> 4];
                *v155 = a0123456789abcd[v156 & 0xF];
                v155 += 2;
                ++v154;
              }

              while (v154 != 8);
              v150 = objc_alloc(v16[88]);
              v151 = v153;
              v152 = 16;
            }
          }

          v143 = [v150 initWithBytesNoCopy:v151 length:v152 encoding:4 freeWhenDone:1];
LABEL_191:
          v170 = v143;
LABEL_192:

          hashedDSID = v8->_hashedDSID;
          v8->_hashedDSID = &v170->isa;

          v188 = v16[88];
          v189 = v8->_hashedDSID;
          v190 = [NSNumber numberWithInteger:[(ICMusicSubscriptionStatus *)v8->_subscriptionStatus statusType]];
          v190 = [v188 stringWithFormat:@"%@-%@", v189, v190];
          cacheKey = v8->_cacheKey;
          v8->_cacheKey = v190;

          goto LABEL_193;
        }

        if (v199.count[0] < 0x20)
        {
          v120 = v199.hash[1] + 0x27D4EB2F165667C5;
        }

        else
        {
          v120 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(v199.hash[0], 57) + __ROR8__(v199.count[1], 63) + __ROR8__(v199.hash[1], 52) + __ROR8__(v199.hash[2], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v199.count[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v199.hash[0], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v199.hash[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v199.hash[2], 33)));
        }

        v121 = v120 + v199.count[0];
        v122 = &v199.hash[3];
        v123 = v199.count[0] & 0x1F;
        if (v123 >= 8)
        {
          do
          {
            v124 = *v122++;
            v121 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v124, 33)) ^ v121, 37);
            v123 -= 8;
          }

          while (v123 > 7);
        }

        if (v123 >= 4)
        {
          v125 = *v122;
          v122 = (v122 + 4);
          v121 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v125) ^ v121, 41);
          v123 -= 4;
        }

        for (; v123; --v123)
        {
          v126 = *v122;
          v122 = (v122 + 1);
          v121 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v126) ^ v121, 53);
        }

        v127 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v121 ^ (v121 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v121 ^ (v121 >> 33))) >> 29));
        v115 = v127 ^ HIDWORD(v127);
LABEL_132:
        *&v200[8] = v115;
        goto LABEL_145;
      }

      if (v198 <= 1999)
      {
        if (!v198)
        {
          v117 = +[NSAssertionHandler currentHandler];
          v118 = [v16[88] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
          [v117 handleFailureInFunction:v118 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

          goto LABEL_145;
        }

        if (v198 != 1000)
        {
          goto LABEL_145;
        }

        v85 = (v199.count[0] + v199.count[1]) ^ __ROR8__(v199.count[1], 51);
        v86 = v199.hash[0] + (v199.hash[1] ^ v199.hash[2]);
        v87 = __ROR8__(v199.hash[1] ^ v199.hash[2], 48);
        v88 = (v86 ^ v87) + __ROR8__(v199.count[0] + v199.count[1], 32);
        v89 = v88 ^ __ROR8__(v86 ^ v87, 43);
        v90 = v86 + v85;
        v91 = v90 ^ __ROR8__(v85, 47);
        v92 = (v88 ^ v199.hash[2]) + v91;
        v93 = v92 ^ __ROR8__(v91, 51);
        v94 = (__ROR8__(v90, 32) ^ 0xFFLL) + v89;
        v95 = __ROR8__(v89, 48);
        v96 = __ROR8__(v92, 32) + (v94 ^ v95);
        v97 = v96 ^ __ROR8__(v94 ^ v95, 43);
        v98 = v93 + v94;
        v99 = v98 ^ __ROR8__(v93, 47);
        v100 = v99 + v96;
        v101 = v100 ^ __ROR8__(v99, 51);
        v102 = __ROR8__(v98, 32) + v97;
        v103 = __ROR8__(v97, 48);
        v104 = __ROR8__(v100, 32) + (v102 ^ v103);
        v105 = v104 ^ __ROR8__(v102 ^ v103, 43);
        v106 = v101 + v102;
        v107 = v106 ^ __ROR8__(v101, 47);
        v108 = v107 + v104;
        v109 = v108 ^ __ROR8__(v107, 51);
        v110 = __ROR8__(v106, 32) + v105;
        v111 = __ROR8__(v105, 48);
        v112 = __ROR8__(v108, 32) + (v110 ^ v111);
        v113 = v112 ^ __ROR8__(v110 ^ v111, 43);
        v114 = v109 + v110;
        v199.count[0] = v112;
        v199.count[1] = v114 ^ __ROR8__(v109, 47);
        v199.hash[0] = __ROR8__(v114, 32);
        v199.hash[1] = v113;
        v115 = v199.count[1] ^ v112 ^ v199.hash[0] ^ v113;
        goto LABEL_132;
      }

      if (v198 != 2000)
      {
        if (v198 != 3000)
        {
          goto LABEL_145;
        }

        if (HIDWORD(v199.count[0]))
        {
          v116 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v199.count[1], xmmword_10016AE40), vshlq_u32(*&v199.count[1], xmmword_10016AE30)));
        }

        else
        {
          v116 = LODWORD(v199.hash[0]) + 374761393;
        }

        v128 = LODWORD(v199.count[0]) + v116;
        v129 = &v199.hash[1];
        v130 = v199.hash[3] & 0xF;
        if (v130 >= 4)
        {
          do
          {
            v131 = *v129;
            v129 = (v129 + 4);
            HIDWORD(v132) = v128 - 1028477379 * v131;
            LODWORD(v132) = HIDWORD(v132);
            v128 = 668265263 * (v132 >> 15);
            v130 -= 4;
          }

          while (v130 > 3);
        }

        for (; v130; --v130)
        {
          v133 = *v129;
          v129 = (v129 + 1);
          HIDWORD(v134) = v128 + 374761393 * v133;
          LODWORD(v134) = HIDWORD(v134);
          v128 = -1640531535 * (v134 >> 21);
        }

        v135 = -1028477379 * ((-2048144777 * (v128 ^ (v128 >> 15))) ^ ((-2048144777 * (v128 ^ (v128 >> 15))) >> 13));
        v136 = v135 ^ HIWORD(v135);
        goto LABEL_144;
      }

      switch(BYTE3(v199.count[1]))
      {
        case 1u:
          v119 = LOBYTE(v199.count[1]);
          break;
        case 2u:
          v119 = LOWORD(v199.count[1]);
          break;
        case 3u:
          v119 = LOWORD(v199.count[1]) | (BYTE2(v199.count[1]) << 16);
          break;
        default:
          v137 = v199.count[0];
          goto LABEL_143;
      }

      v137 = (461845907 * ((380141568 * v119) | ((-862048943 * v119) >> 17))) ^ LODWORD(v199.count[0]);
LABEL_143:
      v138 = -2048144789 * (v137 ^ HIDWORD(v199.count[0]) ^ ((v137 ^ HIDWORD(v199.count[0])) >> 16));
      v136 = (-1028477387 * (v138 ^ (v138 >> 13))) ^ ((-1028477387 * (v138 ^ (v138 >> 13))) >> 16);
      LODWORD(v199.count[0]) = v136;
LABEL_144:
      *&v200[8] = v136;
      goto LABEL_145;
    }

    if (v198 <= 1999)
    {
      if (!v198)
      {
        v52 = +[NSAssertionHandler currentHandler];
        v53 = [NSString stringWithUTF8String:"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"];
        [v52 handleFailureInFunction:v53 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_98;
      }

      if (v198 != 1000)
      {
        goto LABEL_98;
      }

      v17 = HIBYTE(v199.hash[2]);
      v18 = v199.hash[2] & 0xFFFFFFFFFFFFFFLL;
      v19 = HIBYTE(v199.hash[2]) & 7;
      if (v19)
      {
        v20 = 8 - v19;
        v21 = v14 - (8 - v19);
        if (v14 < 8 - v19)
        {
LABEL_20:
          if (v15)
          {
            v44 = 0;
            v45 = 0;
            v46 = v15;
            do
            {
              v47 = *uTF8String++;
              v45 |= v47 << v44;
              v44 += 8;
              --v46;
            }

            while (v46);
            if (v19)
            {
              v48 = (v45 << (8 * v19)) | ((v15 + v17) << 56) | v18;
            }

            else
            {
              v48 = v45 | ((v15 + v17) << 56);
            }
          }

          else
          {
            if (v19)
            {
              goto LABEL_98;
            }

            v48 = v17 << 56;
          }

          v199.hash[2] = v48;
          goto LABEL_98;
        }

        v22 = 8 * v19;
        v23 = uTF8String;
        v24 = v199.hash[2] & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v25 = *v23++;
          v24 |= v25 << v22;
          v22 += 8;
        }

        while (v22 != 64);
        v26 = (v199.count[0] + v199.count[1]) ^ __ROR8__(v199.count[1], 51);
        v27 = v199.hash[0] + (v199.hash[1] ^ v24);
        v28 = __ROR8__(v199.hash[1] ^ v24, 48);
        v29 = (v27 ^ v28) + __ROR8__(v199.count[0] + v199.count[1], 32);
        v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
        v31 = v27 + v26;
        v199.hash[0] = __ROR8__(v31, 32);
        v199.hash[1] = v30;
        v199.count[0] = v29 ^ v24;
        v199.count[1] = v31 ^ __ROR8__(v26, 47);
        uTF8String += v20;
        v199.hash[2] = (v20 + v17) << 56;
        v15 = v21;
      }

      if (v15 >= 8)
      {
        v32 = v199.count[1];
        v33 = v199.count[0];
        v34 = v199.hash[1];
        v35 = v199.hash[0];
        do
        {
          v36 = *uTF8String;
          uTF8String += 8;
          v37 = v34 ^ v36;
          v38 = v33 + v32;
          v39 = v38 ^ __ROR8__(v32, 51);
          v40 = v35 + v37;
          v41 = __ROR8__(v37, 48);
          v42 = (v40 ^ v41) + __ROR8__(v38, 32);
          v34 = v42 ^ __ROR8__(v40 ^ v41, 43);
          v43 = v40 + v39;
          v32 = v43 ^ __ROR8__(v39, 47);
          v35 = __ROR8__(v43, 32);
          v199.hash[0] = v35;
          v199.hash[1] = v34;
          v33 = v42 ^ v36;
          v199.count[0] = v33;
          v199.count[1] = v32;
          v15 -= 8;
          v17 += 8;
        }

        while (v15 > 7);
      }

      v19 = 0;
      goto LABEL_20;
    }

    if (v198 != 2000)
    {
      if (v198 != 3000 || !uTF8String)
      {
        goto LABEL_98;
      }

      v50 = v14 > 0xF || (LODWORD(v199.count[0]) + v14) > 0xF;
      LODWORD(v199.count[0]) += v14;
      HIDWORD(v199.count[0]) |= v50;
      if (v14 + LODWORD(v199.hash[3]) > 0xF)
      {
        v61 = &uTF8String[v14];
        if (LODWORD(v199.hash[3]))
        {
          memcpy(&v199.wbuf[-7] + LODWORD(v199.hash[3]), uTF8String, (16 - LODWORD(v199.hash[3])));
          HIDWORD(v62) = LODWORD(v199.count[1]) - 2048144777 * LODWORD(v199.hash[1]);
          LODWORD(v62) = HIDWORD(v62);
          v63 = -1640531535 * (v62 >> 19);
          HIDWORD(v62) = HIDWORD(v199.count[1]) - 2048144777 * HIDWORD(v199.hash[1]);
          LODWORD(v62) = HIDWORD(v62);
          LODWORD(v199.count[1]) = v63;
          HIDWORD(v199.count[1]) = -1640531535 * (v62 >> 19);
          HIDWORD(v62) = LODWORD(v199.hash[0]) - 2048144777 * LODWORD(v199.hash[2]);
          LODWORD(v62) = HIDWORD(v62);
          LODWORD(v199.hash[0]) = -1640531535 * (v62 >> 19);
          HIDWORD(v62) = HIDWORD(v199.hash[0]) - 2048144777 * HIDWORD(v199.hash[2]);
          LODWORD(v62) = HIDWORD(v62);
          uTF8String += (16 - LODWORD(v199.hash[3]));
          HIDWORD(v199.hash[0]) = -1640531535 * (v62 >> 19);
          LODWORD(v199.hash[3]) = 0;
        }

        if (uTF8String <= v61 - 16)
        {
          v64 = v199.count[1];
          v65 = HIDWORD(v199.count[1]);
          v66 = v199.hash[0];
          v67 = HIDWORD(v199.hash[0]);
          do
          {
            HIDWORD(v68) = v64 - 2048144777 * *uTF8String;
            LODWORD(v68) = HIDWORD(v68);
            v64 = -1640531535 * (v68 >> 19);
            HIDWORD(v68) = v65 - 2048144777 * *(uTF8String + 1);
            LODWORD(v68) = HIDWORD(v68);
            v65 = -1640531535 * (v68 >> 19);
            HIDWORD(v68) = v66 - 2048144777 * *(uTF8String + 2);
            LODWORD(v68) = HIDWORD(v68);
            v66 = -1640531535 * (v68 >> 19);
            HIDWORD(v68) = v67 - 2048144777 * *(uTF8String + 3);
            LODWORD(v68) = HIDWORD(v68);
            v67 = -1640531535 * (v68 >> 19);
            uTF8String += 16;
          }

          while (uTF8String <= v61 - 16);
          v199.count[1] = __PAIR64__(v65, v64);
          v199.hash[0] = __PAIR64__(v67, v66);
        }

        v16 = ICPushNotificationMessage_ptr;
        if (uTF8String >= v61)
        {
          goto LABEL_98;
        }

        v51 = v61 - uTF8String;
        __memcpy_chk();
      }

      else
      {
        memcpy(&v199.wbuf[-7] + LODWORD(v199.hash[3]), uTF8String, v14);
        v51 = LODWORD(v199.hash[3]) + v15;
      }

      LODWORD(v199.hash[3]) = v51;
      goto LABEL_98;
    }

    v54 = v14 + BYTE3(v199.count[1]);
    if (v54 < 4)
    {
      v55 = &v198 + BYTE3(v199.count[1]);
      if (v14 <= 1u)
      {
        if (!v14)
        {
LABEL_97:
          HIDWORD(v199.count[0]) += v15;
          goto LABEL_98;
        }

        if (v14 == 1)
        {
          v55[16] = *uTF8String;
          goto LABEL_97;
        }

LABEL_81:
        memcpy(v55 + 16, uTF8String, v14);
        goto LABEL_97;
      }

      if (v14 == 2)
      {
        v74 = *uTF8String;
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_81;
        }

        v74 = *uTF8String;
        v55[18] = uTF8String[2];
      }

      *(v55 + 8) = v74;
      goto LABEL_97;
    }

    LOBYTE(v57) = 0;
    v58 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    if (BYTE3(v199.count[1]) > 1u)
    {
      if (BYTE3(v199.count[1]) != 2)
      {
        LOBYTE(v59) = 0;
        LOBYTE(v60) = 0;
        v75 = 0;
        if (BYTE3(v199.count[1]) == 3)
        {
          LOBYTE(v59) = v199.count[1];
          v57 = HIBYTE(LOWORD(v199.count[1]));
          LOBYTE(v60) = BYTE2(v199.count[1]);
          v75 = *uTF8String;
        }

        goto LABEL_87;
      }

      LOBYTE(v59) = v199.count[1];
      v57 = HIBYTE(LOWORD(v199.count[1]));
      v60 = *uTF8String;
    }

    else
    {
      if (!BYTE3(v199.count[1]))
      {
        v59 = *uTF8String;
        v57 = *uTF8String >> 8;
        v60 = HIWORD(*uTF8String);
        v75 = HIBYTE(*uTF8String);
        goto LABEL_87;
      }

      LOBYTE(v59) = v199.count[1];
      LOBYTE(v57) = *uTF8String;
      v60 = *(uTF8String + 1);
    }

    v75 = v60 >> 8;
LABEL_87:
    v76 = v54 & 3;
    v77 = (v60 << 16) | (v75 << 24) | v59 | (v57 << 8);
    HIDWORD(v78) = (461845907 * ((380141568 * v77) | ((-862048943 * v77) >> 17))) ^ LODWORD(v199.count[0]);
    LODWORD(v78) = HIDWORD(v78);
    v79 = 5 * (v78 >> 19) - 430675100;
    LODWORD(v199.count[0]) = v79;
    v80 = &uTF8String[-BYTE3(v199.count[1]) + 4];
    v81 = &uTF8String[v58 - BYTE3(v199.count[1])];
    while (v80 < v81)
    {
      v82 = *v80;
      v80 += 4;
      HIDWORD(v83) = (461845907 * ((380141568 * v82) | ((-862048943 * v82) >> 17))) ^ v79;
      LODWORD(v83) = HIDWORD(v83);
      v79 = 5 * (v83 >> 19) - 430675100;
      LODWORD(v199.count[0]) = v79;
    }

    if (v76 > 1)
    {
      if (v76 == 2)
      {
        LOWORD(v199.count[1]) = *v81;
      }

      else
      {
        v84 = *v81;
        BYTE2(v199.count[1]) = v81[2];
        LOWORD(v199.count[1]) = v84;
      }
    }

    else if (v76)
    {
      LOBYTE(v199.count[1]) = *v81;
    }

    BYTE3(v199.count[1]) = v76;
    goto LABEL_97;
  }

LABEL_193:

  return v8;
}

@end