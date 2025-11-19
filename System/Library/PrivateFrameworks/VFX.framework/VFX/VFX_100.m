uint64_t sub_1AF8B5FFC(uint64_t a1)
{
  v2 = sub_1AF8BA04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8B6038(uint64_t a1)
{
  v2 = sub_1AF8BA04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF8B6074@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF8B98A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

char *sub_1AF8B60CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF9D3914(&unk_1F24F3A88);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

void sub_1AF8B6108(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for CurvesState, &off_1F25420E0, v4);

  v5 = v2[2];
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v7, v5);
  os_unfair_lock_unlock(*(v6 + 40));
  v8 = v2[7];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v6 + 40));
  v10 = v2[12];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v6 + 40));
  v12 = v2[17];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  v14 = *(v6 + 40);

  os_unfair_lock_unlock(v14);
}

uint64_t sub_1AF8B6350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v448 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v386 = *(a3 + 48);
  v385[0] = v6;
  v385[1] = v7;
  sub_1AF6B06C0(a2, v385, 0x200000000, &v387);
  if (v387)
  {
    if (v394 < 1 || (v346 = v391) == 0)
    {
LABEL_318:
      sub_1AF5D1564(&v387);
      goto LABEL_319;
    }

    v8 = 0;
    v344 = v390;
    v9 = v393;
    v10 = *(v392 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v350 = *(v393 + 32);
    v366 = v387;
    v367 = v388;
    v368 = v389;
    v342 = v10;
    while (1)
    {
      v353 = v5;
      v11 = (v344 + 48 * v8);
      v12 = *v11;
      v359 = *(v11 + 2);
      v362 = v11[1];
      v13 = *(v11 + 5);
      v356 = *(v11 + 4);
      v348 = v8;
      if (v10)
      {
        v14 = *(v13 + 376);

        os_unfair_lock_lock(v14);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v350);
      v15 = *(v9 + 64);
      v446[0] = *(v9 + 48);
      v446[1] = v15;
      v447 = *(v9 + 80);
      v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v16, 8);
      *(v9 + 56) = v16;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 64) = 0;
      if (v359)
      {
        if (v356)
        {
          v17 = 0;
          while (1)
          {
            v363 = *(v359 + 8 * v17);
            v26 = *(*(v13 + 40) + 16);
            v27 = *(v26 + 128);
            if (*(v27 + 16))
            {
              v28 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotUpload);
              if ((v29 & 1) != 0 && *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * v28) + 32) == &type metadata for TextureGPURepresentationDoNotUpload)
              {
                goto LABEL_52;
              }
            }

            v434 = &type metadata for TextureGPURepresentationDoNotUpload;
            *&v435 = &off_1F25461B8;
            LOBYTE(v437) = 0;
            v30 = *(v9 + 104);
            v31 = *(v30 + 16);
            if (!v31)
            {

LABEL_47:
              v45 = *(v13 + 240) - *(v13 + 232);
              v46 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v45, 8);
              *v46 = v363;
              sub_1AF63515C(&v434, &v421);
              *v424 = v46;
              *&v424[8] = v45;
              *&v424[16] = 1;
              v47 = *(v9 + 104);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v47 = sub_1AF420EA0(0, v47[2] + 1, 1, v47);
                *(v9 + 104) = v47;
              }

              v50 = v47[2];
              v49 = v47[3];
              if (v50 >= v49 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v49 > 1, v50 + 1, 1, v47);
              }

              sub_1AF635250(&v434);
              v51 = *(v9 + 104);
              *(v51 + 16) = v50 + 1;
              v52 = v51 + 72 * v50;
              *(v52 + 32) = v421;
              v54 = v423;
              v53 = *v424;
              v55 = v422;
              *(v52 + 96) = *&v424[16];
              *(v52 + 64) = v54;
              *(v52 + 80) = v53;
              *(v52 + 48) = v55;
              *(v9 + 104) = v51;
              goto LABEL_52;
            }

            v32 = v30 + 32;

            v33 = 0;
            while (1)
            {
              sub_1AF8B9F24(v32, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_33;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] != 1)
                  {
                    goto LABEL_20;
                  }

LABEL_33:
                  v36 = v427;
                  v37 = *v424;
                  sub_1AF635250(&v421);
                  if (v36 == v37)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_21;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] != 2)
                {
LABEL_19:
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
LABEL_20:
                  sub_1AF8B9E30(&v421, sub_1AF635194);
                  goto LABEL_21;
                }

                goto LABEL_38;
              }

              if (BYTE8(v423) == 3)
              {
                sub_1AF63515C(&v421, &v427);
                if (v424[40] != 3)
                {
                  goto LABEL_19;
                }

LABEL_38:
                sub_1AF616568(&v427, &v413);
                sub_1AF616568(v424, &v404);
                v38 = *(&v414 + 1);
                v39 = v415;
                sub_1AF441150(&v413, *(&v414 + 1));
                LOBYTE(v38) = sub_1AF640C98(&v404, v38, v39);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
                sub_1AF8B9E30(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
                sub_1AF635250(&v421);
                if (v38)
                {
                  goto LABEL_43;
                }

                goto LABEL_21;
              }

              if (BYTE8(v423) != 4)
              {
                break;
              }

              sub_1AF8B9E30(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_20;
              }

              v34 = v427;
              v35 = v424[0];
              sub_1AF635250(&v421);
              if (v34 == v35)
              {
                goto LABEL_43;
              }

LABEL_21:
              ++v33;
              v32 += 72;
              if (v31 == v33)
              {
                goto LABEL_47;
              }
            }

            sub_1AF8B9E30(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_20;
            }

            v40 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *v424)
            {
              goto LABEL_20;
            }

            sub_1AF635250(&v421);
LABEL_43:
            v42 = sub_1AFBFCA08(&v421);
            v43 = *(v41 + 48);
            if (v43)
            {
              v44 = *(v41 + 64);
              *(v43 + 8 * v44) = v363;
              *(v41 + 64) = v44 + 1;
            }

            (v42)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_52:
            v56 = *(*(v13 + 40) + 16);
            v57 = *(v56 + 128);
            if (*(v57 + 16))
            {
              v58 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotDownload);
              if ((v59 & 1) != 0 && *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v58) + 32) == &type metadata for TextureGPURepresentationDoNotDownload)
              {
                goto LABEL_90;
              }
            }

            v434 = &type metadata for TextureGPURepresentationDoNotDownload;
            *&v435 = &off_1F2546118;
            LOBYTE(v437) = 0;
            v60 = *(v9 + 104);
            v61 = *(v60 + 16);
            if (!v61)
            {

LABEL_85:
              v75 = *(v13 + 240) - *(v13 + 232);
              v76 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v75, 8);
              *v76 = v363;
              sub_1AF63515C(&v434, &v421);
              *v424 = v76;
              *&v424[8] = v75;
              *&v424[16] = 1;
              v77 = *(v9 + 104);
              v78 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v77;
              if ((v78 & 1) == 0)
              {
                v77 = sub_1AF420EA0(0, v77[2] + 1, 1, v77);
                *(v9 + 104) = v77;
              }

              v80 = v77[2];
              v79 = v77[3];
              if (v80 >= v79 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v79 > 1, v80 + 1, 1, v77);
              }

              sub_1AF635250(&v434);
              v81 = *(v9 + 104);
              *(v81 + 16) = v80 + 1;
              v82 = v81 + 72 * v80;
              *(v82 + 32) = v421;
              v84 = v423;
              v83 = *v424;
              v85 = v422;
              *(v82 + 96) = *&v424[16];
              *(v82 + 64) = v84;
              *(v82 + 80) = v83;
              *(v82 + 48) = v85;
              *(v9 + 104) = v81;
              goto LABEL_90;
            }

            v62 = v60 + 32;

            v63 = 0;
            while (2)
            {
              sub_1AF8B9F24(v62, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_58;
                  }

LABEL_71:
                  v66 = v427;
                  v67 = *v424;
                  sub_1AF635250(&v421);
                  if (v66 == v67)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_59;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_71;
                  }

LABEL_58:
                  sub_1AF8B9E30(&v421, sub_1AF635194);
LABEL_59:
                  ++v63;
                  v62 += 72;
                  if (v61 == v63)
                  {
                    goto LABEL_85;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_76:
                  sub_1AF616568(&v427, &v413);
                  sub_1AF616568(v424, &v404);
                  v68 = *(&v414 + 1);
                  v69 = v415;
                  sub_1AF441150(&v413, *(&v414 + 1));
                  LOBYTE(v68) = sub_1AF640C98(&v404, v68, v69);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
                  sub_1AF635250(&v421);
                  if (v68)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_59;
                }

LABEL_57:
                sub_1AF8B9E30(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_58;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_76;
              }

              goto LABEL_57;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B9E30(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_58;
              }

              v64 = v427;
              v65 = v424[0];
              sub_1AF635250(&v421);
              if (v64 == v65)
              {
                goto LABEL_81;
              }

              goto LABEL_59;
            }

            sub_1AF8B9E30(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_58;
            }

            v70 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *v424)
            {
              goto LABEL_58;
            }

            sub_1AF635250(&v421);
LABEL_81:
            v72 = sub_1AFBFCA08(&v421);
            v73 = *(v71 + 48);
            if (v73)
            {
              v74 = *(v71 + 64);
              *(v73 + 8 * v74) = v363;
              *(v71 + 64) = v74 + 1;
            }

            (v72)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_90:
            v86 = *(*(v13 + 40) + 16);
            v87 = *(v86 + 128);
            if (*(v87 + 16))
            {
              v88 = sub_1AF449CB8(&type metadata for TextureRequireCPURepresentation);
              if ((v89 & 1) != 0 && *(*(v86 + 24) + 16 * *(*(v87 + 56) + 8 * v88) + 32) == &type metadata for TextureRequireCPURepresentation)
              {
                goto LABEL_128;
              }
            }

            v434 = &type metadata for TextureRequireCPURepresentation;
            *&v435 = &off_1F2544440;
            LOBYTE(v437) = 0;
            v90 = *(v9 + 104);
            v91 = *(v90 + 16);
            if (!v91)
            {

LABEL_123:
              v105 = *(v13 + 240) - *(v13 + 232);
              v106 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v105, 8);
              *v106 = v363;
              sub_1AF63515C(&v434, &v421);
              *v424 = v106;
              *&v424[8] = v105;
              *&v424[16] = 1;
              v107 = *(v9 + 104);
              v108 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v107;
              if ((v108 & 1) == 0)
              {
                v107 = sub_1AF420EA0(0, v107[2] + 1, 1, v107);
                *(v9 + 104) = v107;
              }

              v110 = v107[2];
              v109 = v107[3];
              if (v110 >= v109 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v109 > 1, v110 + 1, 1, v107);
              }

              sub_1AF635250(&v434);
              v111 = *(v9 + 104);
              *(v111 + 16) = v110 + 1;
              v112 = v111 + 72 * v110;
              *(v112 + 32) = v421;
              v114 = v423;
              v113 = *v424;
              v115 = v422;
              *(v112 + 96) = *&v424[16];
              *(v112 + 64) = v114;
              *(v112 + 80) = v113;
              *(v112 + 48) = v115;
              *(v9 + 104) = v111;
              goto LABEL_128;
            }

            v92 = v90 + 32;

            v93 = 0;
            while (2)
            {
              sub_1AF8B9F24(v92, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_96;
                  }

LABEL_109:
                  v96 = v427;
                  v97 = *v424;
                  sub_1AF635250(&v421);
                  if (v96 == v97)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_97;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_109;
                  }

LABEL_96:
                  sub_1AF8B9E30(&v421, sub_1AF635194);
LABEL_97:
                  ++v93;
                  v92 += 72;
                  if (v91 == v93)
                  {
                    goto LABEL_123;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_114:
                  sub_1AF616568(&v427, &v413);
                  sub_1AF616568(v424, &v404);
                  v98 = *(&v414 + 1);
                  v99 = v415;
                  sub_1AF441150(&v413, *(&v414 + 1));
                  LOBYTE(v98) = sub_1AF640C98(&v404, v98, v99);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
                  sub_1AF635250(&v421);
                  if (v98)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_97;
                }

LABEL_95:
                sub_1AF8B9E30(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_96;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_114;
              }

              goto LABEL_95;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B9E30(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_96;
              }

              v94 = v427;
              v95 = v424[0];
              sub_1AF635250(&v421);
              if (v94 == v95)
              {
                goto LABEL_119;
              }

              goto LABEL_97;
            }

            sub_1AF8B9E30(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_96;
            }

            v100 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL)) | *v424)
            {
              goto LABEL_96;
            }

            sub_1AF635250(&v421);
LABEL_119:
            v102 = sub_1AFBFCA08(&v421);
            v103 = *(v101 + 48);
            if (v103)
            {
              v104 = *(v101 + 64);
              *(v103 + 8 * v104) = v363;
              *(v101 + 64) = v104 + 1;
            }

            (v102)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_128:
            v116 = *(*(v13 + 40) + 16);
            v117 = *(v116 + 128);
            if (*(v117 + 16))
            {
              v118 = sub_1AF449CB8(&type metadata for TextureRequireGPURepresentation);
              if ((v119 & 1) != 0 && *(*(v116 + 24) + 16 * *(*(v117 + 56) + 8 * v118) + 32) == &type metadata for TextureRequireGPURepresentation)
              {
                goto LABEL_166;
              }
            }

            v434 = &type metadata for TextureRequireGPURepresentation;
            *&v435 = &off_1F25442D0;
            LOBYTE(v437) = 0;
            v120 = *(v9 + 104);
            v121 = *(v120 + 16);
            if (!v121)
            {

LABEL_161:
              v135 = *(v13 + 240) - *(v13 + 232);
              v136 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v135, 8);
              *v136 = v363;
              sub_1AF63515C(&v434, &v421);
              *v424 = v136;
              *&v424[8] = v135;
              *&v424[16] = 1;
              v137 = *(v9 + 104);
              v138 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v137;
              if ((v138 & 1) == 0)
              {
                v137 = sub_1AF420EA0(0, v137[2] + 1, 1, v137);
                *(v9 + 104) = v137;
              }

              v140 = v137[2];
              v139 = v137[3];
              if (v140 >= v139 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v139 > 1, v140 + 1, 1, v137);
              }

              sub_1AF635250(&v434);
              v141 = *(v9 + 104);
              *(v141 + 16) = v140 + 1;
              v142 = v141 + 72 * v140;
              *(v142 + 32) = v421;
              v144 = v423;
              v143 = *v424;
              v145 = v422;
              *(v142 + 96) = *&v424[16];
              *(v142 + 64) = v144;
              *(v142 + 80) = v143;
              *(v142 + 48) = v145;
              *(v9 + 104) = v141;
              goto LABEL_166;
            }

            v122 = v120 + 32;

            v123 = 0;
            while (2)
            {
              sub_1AF8B9F24(v122, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_134;
                  }

LABEL_147:
                  v126 = v427;
                  v127 = *v424;
                  sub_1AF635250(&v421);
                  if (v126 == v127)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_135;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_147;
                  }

LABEL_134:
                  sub_1AF8B9E30(&v421, sub_1AF635194);
LABEL_135:
                  ++v123;
                  v122 += 72;
                  if (v121 == v123)
                  {
                    goto LABEL_161;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_152:
                  sub_1AF616568(&v427, &v413);
                  sub_1AF616568(v424, &v404);
                  v128 = *(&v414 + 1);
                  v129 = v415;
                  sub_1AF441150(&v413, *(&v414 + 1));
                  LOBYTE(v128) = sub_1AF640C98(&v404, v128, v129);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
                  sub_1AF635250(&v421);
                  if (v128)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_135;
                }

LABEL_133:
                sub_1AF8B9E30(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_134;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_152;
              }

              goto LABEL_133;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B9E30(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_134;
              }

              v124 = v427;
              v125 = v424[0];
              sub_1AF635250(&v421);
              if (v124 == v125)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }

            sub_1AF8B9E30(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_134;
            }

            v130 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v130.i8, *&vextq_s8(v130, v130, 8uLL)) | *v424)
            {
              goto LABEL_134;
            }

            sub_1AF635250(&v421);
LABEL_157:
            v132 = sub_1AFBFCA08(&v421);
            v133 = *(v131 + 48);
            if (v133)
            {
              v134 = *(v131 + 64);
              *(v133 + 8 * v134) = v363;
              *(v131 + 64) = v134 + 1;
            }

            (v132)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_166:
            v146 = *(*(v13 + 40) + 16);
            v147 = *(v146 + 128);
            if (*(v147 + 16))
            {
              v148 = sub_1AF449CB8(&type metadata for TextureLoadingOptions);
              if ((v149 & 1) != 0 && *(*(v146 + 24) + 16 * *(*(v147 + 56) + 8 * v148) + 32) == &type metadata for TextureLoadingOptions)
              {
                *v441 = &type metadata for TextureLoadingOptions;
                *&v441[8] = &off_1F2543FE0;
                LOBYTE(v442) = 1;
                v150 = *(v9 + 104);
                v151 = *(v150 + 16);

                if (v151)
                {
                  v152 = 0;
                  v153 = v150 + 32;
                  while (1)
                  {
                    sub_1AF8B9F24(v153, &v421, sub_1AF43A540);
                    v154 = sub_1AF6346E0(&v421, v441);
                    sub_1AF8B9E30(&v421, sub_1AF43A540);
                    if (v154)
                    {
                      break;
                    }

                    ++v152;
                    v153 += 72;
                    if (v151 == v152)
                    {
                      goto LABEL_12;
                    }
                  }

                  v156 = sub_1AFBFCA08(&v421);
                  v157 = *(v155 + 48);
                  if (v157)
                  {
                    v158 = *(v155 + 64);
                    *(v157 + 8 * v158) = v363;
                    *(v155 + 64) = v158 + 1;
                  }

                  (v156)(&v421, 0);

                  sub_1AF635250(v441);
                }

                else
                {
LABEL_12:
                  v18 = *(v13 + 240) - *(v13 + 232);
                  v19 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v18, 8);
                  *v19 = v363;
                  sub_1AF63515C(v441, &v421);
                  *v424 = v19;
                  *&v424[8] = v18;
                  *&v424[16] = 1;
                  sub_1AFCEF4F8();
                  v20 = *(*(v9 + 104) + 16);
                  sub_1AFCEF5E0(v20);

                  sub_1AF635250(v441);
                  v21 = *(v9 + 104);
                  *(v21 + 16) = v20 + 1;
                  v22 = v21 + 72 * v20;
                  *(v22 + 32) = v421;
                  v24 = v423;
                  v23 = *v424;
                  v25 = v422;
                  *(v22 + 96) = *&v424[16];
                  *(v22 + 64) = v24;
                  *(v22 + 80) = v23;
                  *(v22 + 48) = v25;
                  *(v9 + 104) = v21;
                }
              }
            }

            if (++v17 == v356)
            {
              goto LABEL_178;
            }
          }
        }

        goto LABEL_178;
      }

      if (v12 != v362)
      {
        break;
      }

LABEL_178:
      sub_1AF630994(v9, &v366, v446);
      v5 = v353;
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v350);
      v10 = v342;
      if (v342)
      {
        os_unfair_lock_unlock(*(v13 + 344));
        os_unfair_lock_unlock(*(v13 + 376));
      }

      v8 = v348 + 1;
      if (v348 + 1 == v346)
      {
        goto LABEL_318;
      }
    }

LABEL_182:
    v167 = *(*(v13 + 40) + 16);
    v168 = *(v167 + 128);
    if (*(v168 + 16))
    {
      v169 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotUpload);
      if ((v170 & 1) != 0 && *(*(v167 + 24) + 16 * *(*(v168 + 56) + 8 * v169) + 32) == &type metadata for TextureGPURepresentationDoNotUpload)
      {
        goto LABEL_220;
      }
    }

    v434 = &type metadata for TextureGPURepresentationDoNotUpload;
    *&v435 = &off_1F25461B8;
    LOBYTE(v437) = 0;
    v171 = *(v9 + 104);
    v172 = *(v171 + 16);
    if (!v172)
    {

LABEL_215:
      v186 = *(v13 + 240) - *(v13 + 232);
      v187 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v186, 8);
      *v187 = v12;
      sub_1AF63515C(&v434, &v421);
      *v424 = v187;
      *&v424[8] = v186;
      *&v424[16] = 1;
      v188 = *(v9 + 104);
      v189 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 104) = v188;
      if ((v189 & 1) == 0)
      {
        v188 = sub_1AF420EA0(0, v188[2] + 1, 1, v188);
        *(v9 + 104) = v188;
      }

      v191 = v188[2];
      v190 = v188[3];
      if (v191 >= v190 >> 1)
      {
        *(v9 + 104) = sub_1AF420EA0(v190 > 1, v191 + 1, 1, v188);
      }

      sub_1AF635250(&v434);
      v192 = *(v9 + 104);
      *(v192 + 16) = v191 + 1;
      v193 = v192 + 72 * v191;
      *(v193 + 32) = v421;
      v195 = v423;
      v194 = *v424;
      v196 = v422;
      *(v193 + 96) = *&v424[16];
      *(v193 + 64) = v195;
      *(v193 + 80) = v194;
      *(v193 + 48) = v196;
      *(v9 + 104) = v192;
      goto LABEL_220;
    }

    v173 = v171 + 32;

    v174 = 0;
    while (1)
    {
      sub_1AF8B9F24(v173, v441, sub_1AF43A540);
      sub_1AF63515C(v441, &v421);
      sub_1AF63515C(&v434, v424);
      if (BYTE8(v423) <= 2u)
      {
        break;
      }

      if (BYTE8(v423) == 3)
      {
        sub_1AF63515C(&v421, &v427);
        if (v424[40] != 3)
        {
          goto LABEL_187;
        }

LABEL_206:
        sub_1AF616568(&v427, &v413);
        sub_1AF616568(v424, &v404);
        v179 = *(&v414 + 1);
        v180 = v415;
        sub_1AF441150(&v413, *(&v414 + 1));
        LOBYTE(v179) = sub_1AF640C98(&v404, v179, v180);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
        sub_1AF8B9E30(v441, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
        sub_1AF635250(&v421);
        if (v179)
        {
          goto LABEL_211;
        }

        goto LABEL_189;
      }

      if (BYTE8(v423) != 4)
      {
        sub_1AF8B9E30(v441, sub_1AF43A540);
        if (v424[40] == 5)
        {
          v181 = vorrq_s8(*&v424[8], *&v424[24]);
          if (!(*&vorr_s8(*v181.i8, *&vextq_s8(v181, v181, 8uLL)) | *v424))
          {
            sub_1AF635250(&v421);
LABEL_211:
            v183 = sub_1AFBFCA08(&v421);
            v184 = *(v182 + 48);
            if (v184)
            {
              v185 = *(v182 + 64);
              *(v184 + 8 * v185) = v12;
              *(v182 + 64) = v185 + 1;
            }

            (v183)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_220:
            v197 = *(*(v13 + 40) + 16);
            v198 = *(v197 + 128);
            if (*(v198 + 16))
            {
              v199 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotDownload);
              if ((v200 & 1) != 0 && *(*(v197 + 24) + 16 * *(*(v198 + 56) + 8 * v199) + 32) == &type metadata for TextureGPURepresentationDoNotDownload)
              {
                goto LABEL_258;
              }
            }

            v434 = &type metadata for TextureGPURepresentationDoNotDownload;
            *&v435 = &off_1F2546118;
            LOBYTE(v437) = 0;
            v201 = *(v9 + 104);
            v202 = *(v201 + 16);
            if (!v202)
            {

LABEL_253:
              v216 = *(v13 + 240) - *(v13 + 232);
              v217 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v216, 8);
              *v217 = v12;
              sub_1AF63515C(&v434, &v421);
              *v424 = v217;
              *&v424[8] = v216;
              *&v424[16] = 1;
              v218 = *(v9 + 104);
              v219 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v218;
              if ((v219 & 1) == 0)
              {
                v218 = sub_1AF420EA0(0, v218[2] + 1, 1, v218);
                *(v9 + 104) = v218;
              }

              v221 = v218[2];
              v220 = v218[3];
              if (v221 >= v220 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v220 > 1, v221 + 1, 1, v218);
              }

              sub_1AF635250(&v434);
              v222 = *(v9 + 104);
              *(v222 + 16) = v221 + 1;
              v223 = v222 + 72 * v221;
              *(v223 + 32) = v421;
              v225 = v423;
              v224 = *v424;
              v226 = v422;
              *(v223 + 96) = *&v424[16];
              *(v223 + 64) = v225;
              *(v223 + 80) = v224;
              *(v223 + 48) = v226;
              *(v9 + 104) = v222;
              goto LABEL_258;
            }

            v203 = v201 + 32;

            v204 = 0;
            while (2)
            {
              sub_1AF8B9F24(v203, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_226;
                  }

LABEL_239:
                  v207 = v427;
                  v208 = *v424;
                  sub_1AF635250(&v421);
                  if (v207 == v208)
                  {
                    goto LABEL_249;
                  }

                  goto LABEL_227;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_239;
                  }

LABEL_226:
                  sub_1AF8B9E30(&v421, sub_1AF635194);
LABEL_227:
                  ++v204;
                  v203 += 72;
                  if (v202 == v204)
                  {
                    goto LABEL_253;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_244:
                  sub_1AF616568(&v427, &v413);
                  sub_1AF616568(v424, &v404);
                  v209 = *(&v414 + 1);
                  v210 = v415;
                  sub_1AF441150(&v413, *(&v414 + 1));
                  LOBYTE(v209) = sub_1AF640C98(&v404, v209, v210);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
                  sub_1AF635250(&v421);
                  if (v209)
                  {
                    goto LABEL_249;
                  }

                  goto LABEL_227;
                }

LABEL_225:
                sub_1AF8B9E30(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_226;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_244;
              }

              goto LABEL_225;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B9E30(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_226;
              }

              v205 = v427;
              v206 = v424[0];
              sub_1AF635250(&v421);
              if (v205 == v206)
              {
                goto LABEL_249;
              }

              goto LABEL_227;
            }

            sub_1AF8B9E30(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_226;
            }

            v211 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v211.i8, *&vextq_s8(v211, v211, 8uLL)) | *v424)
            {
              goto LABEL_226;
            }

            sub_1AF635250(&v421);
LABEL_249:
            v213 = sub_1AFBFCA08(&v421);
            v214 = *(v212 + 48);
            if (v214)
            {
              v215 = *(v212 + 64);
              *(v214 + 8 * v215) = v12;
              *(v212 + 64) = v215 + 1;
            }

            (v213)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_258:
            v227 = *(*(v13 + 40) + 16);
            v228 = *(v227 + 128);
            if (*(v228 + 16))
            {
              v229 = sub_1AF449CB8(&type metadata for TextureRequireCPURepresentation);
              if ((v230 & 1) != 0 && *(*(v227 + 24) + 16 * *(*(v228 + 56) + 8 * v229) + 32) == &type metadata for TextureRequireCPURepresentation)
              {
                goto LABEL_296;
              }
            }

            v434 = &type metadata for TextureRequireCPURepresentation;
            *&v435 = &off_1F2544440;
            LOBYTE(v437) = 0;
            v231 = *(v9 + 104);
            v232 = *(v231 + 16);
            if (!v232)
            {

LABEL_291:
              v246 = *(v13 + 240) - *(v13 + 232);
              v247 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v246, 8);
              *v247 = v12;
              sub_1AF63515C(&v434, &v421);
              *v424 = v247;
              *&v424[8] = v246;
              *&v424[16] = 1;
              v248 = *(v9 + 104);
              v249 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v248;
              if ((v249 & 1) == 0)
              {
                v248 = sub_1AF420EA0(0, v248[2] + 1, 1, v248);
                *(v9 + 104) = v248;
              }

              v251 = v248[2];
              v250 = v248[3];
              if (v251 >= v250 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v250 > 1, v251 + 1, 1, v248);
              }

              sub_1AF635250(&v434);
              v252 = *(v9 + 104);
              *(v252 + 16) = v251 + 1;
              v253 = v252 + 72 * v251;
              *(v253 + 32) = v421;
              v255 = v423;
              v254 = *v424;
              v256 = v422;
              *(v253 + 96) = *&v424[16];
              *(v253 + 64) = v255;
              *(v253 + 80) = v254;
              *(v253 + 48) = v256;
              *(v9 + 104) = v252;
              goto LABEL_296;
            }

            v233 = v231 + 32;

            v234 = 0;
            while (2)
            {
              sub_1AF8B9F24(v233, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_264;
                  }

LABEL_277:
                  v237 = v427;
                  v238 = *v424;
                  sub_1AF635250(&v421);
                  if (v237 == v238)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_265;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_277;
                  }

LABEL_264:
                  sub_1AF8B9E30(&v421, sub_1AF635194);
LABEL_265:
                  ++v234;
                  v233 += 72;
                  if (v232 == v234)
                  {
                    goto LABEL_291;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_282:
                  sub_1AF616568(&v427, &v413);
                  sub_1AF616568(v424, &v404);
                  v239 = *(&v414 + 1);
                  v240 = v415;
                  sub_1AF441150(&v413, *(&v414 + 1));
                  LOBYTE(v239) = sub_1AF640C98(&v404, v239, v240);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v404);
                  sub_1AF8B9E30(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v413);
                  sub_1AF635250(&v421);
                  if (v239)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_265;
                }

LABEL_263:
                sub_1AF8B9E30(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_264;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_282;
              }

              goto LABEL_263;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B9E30(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_264;
              }

              v235 = v427;
              v236 = v424[0];
              sub_1AF635250(&v421);
              if (v235 == v236)
              {
                goto LABEL_287;
              }

              goto LABEL_265;
            }

            sub_1AF8B9E30(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_264;
            }

            v241 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v241.i8, *&vextq_s8(v241, v241, 8uLL)) | *v424)
            {
              goto LABEL_264;
            }

            sub_1AF635250(&v421);
LABEL_287:
            v243 = sub_1AFBFCA08(&v421);
            v244 = *(v242 + 48);
            if (v244)
            {
              v245 = *(v242 + 64);
              *(v244 + 8 * v245) = v12;
              *(v242 + 64) = v245 + 1;
            }

            (v243)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_296:
            v257 = *(*(v13 + 40) + 16);
            v258 = *(v257 + 128);
            if (!*(v258 + 16) || (v259 = sub_1AF449CB8(&type metadata for TextureRequireGPURepresentation), (v260 & 1) == 0) || *(*(v257 + 24) + 16 * *(*(v258 + 56) + 8 * v259) + 32) != &type metadata for TextureRequireGPURepresentation)
            {
              *v441 = &type metadata for TextureRequireGPURepresentation;
              *&v441[8] = &off_1F25442D0;
              LOBYTE(v442) = 0;
              v261 = *(v9 + 104);
              v262 = *(v261 + 16);

              if (v262)
              {
                v263 = 0;
                v264 = v261 + 32;
                while (1)
                {
                  sub_1AF8B9F24(v264, &v421, sub_1AF43A540);
                  v265 = sub_1AF6346E0(&v421, v441);
                  sub_1AF8B9E30(&v421, sub_1AF43A540);
                  if (v265)
                  {
                    break;
                  }

                  ++v263;
                  v264 += 72;
                  if (v262 == v263)
                  {
                    goto LABEL_303;
                  }
                }

                v275 = sub_1AFBFCA08(&v421);
                v276 = *(v274 + 48);
                if (v276)
                {
                  v277 = *(v274 + 64);
                  *(v276 + 8 * v277) = v12;
                  *(v274 + 64) = v277 + 1;
                }

                (v275)(&v421, 0);

                sub_1AF635250(v441);
              }

              else
              {
LABEL_303:
                v266 = *(v13 + 240) - *(v13 + 232);
                v267 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v266, 8);
                *v267 = v12;
                sub_1AF63515C(v441, &v421);
                *v424 = v267;
                *&v424[8] = v266;
                *&v424[16] = 1;
                sub_1AFCEF4F8();
                v268 = *(*(v9 + 104) + 16);
                sub_1AFCEF5E0(v268);

                sub_1AF635250(v441);
                v269 = *(v9 + 104);
                *(v269 + 16) = v268 + 1;
                v270 = v269 + 72 * v268;
                *(v270 + 32) = v421;
                v272 = v423;
                v271 = *v424;
                v273 = v422;
                *(v270 + 96) = *&v424[16];
                *(v270 + 64) = v272;
                *(v270 + 80) = v271;
                *(v270 + 48) = v273;
                *(v9 + 104) = v269;
              }
            }

            v278 = *(*(v13 + 40) + 16);
            v279 = *(v278 + 128);
            if (*(v279 + 16))
            {
              v280 = sub_1AF449CB8(&type metadata for TextureLoadingOptions);
              if ((v281 & 1) != 0 && *(*(v278 + 24) + 16 * *(*(v279 + 56) + 8 * v280) + 32) == &type metadata for TextureLoadingOptions)
              {
                *v441 = &type metadata for TextureLoadingOptions;
                *&v441[8] = &off_1F2543FE0;
                LOBYTE(v442) = 1;
                v282 = *(v9 + 104);
                v283 = *(v282 + 16);

                if (v283)
                {
                  v284 = 0;
                  v285 = v282 + 32;
                  while (1)
                  {
                    sub_1AF8B9F24(v285, &v421, sub_1AF43A540);
                    v286 = sub_1AF6346E0(&v421, v441);
                    sub_1AF8B9E30(&v421, sub_1AF43A540);
                    if (v286)
                    {
                      break;
                    }

                    ++v284;
                    v285 += 72;
                    if (v283 == v284)
                    {
                      goto LABEL_180;
                    }
                  }

                  v288 = sub_1AFBFCA08(&v421);
                  v289 = *(v287 + 48);
                  if (v289)
                  {
                    v290 = *(v287 + 64);
                    *(v289 + 8 * v290) = v12;
                    *(v287 + 64) = v290 + 1;
                  }

                  (v288)(&v421, 0);

                  sub_1AF635250(v441);
                }

                else
                {
LABEL_180:
                  v159 = *(v13 + 240) - *(v13 + 232);
                  v160 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v159, 8);
                  *v160 = v12;
                  sub_1AF63515C(v441, &v421);
                  *v424 = v160;
                  *&v424[8] = v159;
                  *&v424[16] = 1;
                  sub_1AFCEF4F8();
                  v161 = *(*(v9 + 104) + 16);
                  sub_1AFCEF5E0(v161);

                  sub_1AF635250(v441);
                  v162 = *(v9 + 104);
                  *(v162 + 16) = v161 + 1;
                  v163 = v162 + 72 * v161;
                  *(v163 + 32) = v421;
                  v165 = v423;
                  v164 = *v424;
                  v166 = v422;
                  *(v163 + 96) = *&v424[16];
                  *(v163 + 64) = v165;
                  *(v163 + 80) = v164;
                  *(v163 + 48) = v166;
                  *(v9 + 104) = v162;
                }
              }
            }

            if (++v12 == v362)
            {
              goto LABEL_178;
            }

            goto LABEL_182;
          }
        }

        goto LABEL_188;
      }

      sub_1AF8B9E30(v441, sub_1AF43A540);
      sub_1AF63515C(&v421, &v427);
      if (v424[40] != 4)
      {
        goto LABEL_188;
      }

      v175 = v427;
      v176 = v424[0];
      sub_1AF635250(&v421);
      if (v175 == v176)
      {
        goto LABEL_211;
      }

LABEL_189:
      ++v174;
      v173 += 72;
      if (v172 == v174)
      {
        goto LABEL_215;
      }
    }

    if (!BYTE8(v423))
    {
      sub_1AF8B9E30(v441, sub_1AF43A540);
      sub_1AF63515C(&v421, &v427);
      if (v424[40])
      {
        goto LABEL_188;
      }

      goto LABEL_201;
    }

    if (BYTE8(v423) == 1)
    {
      sub_1AF8B9E30(v441, sub_1AF43A540);
      sub_1AF63515C(&v421, &v427);
      if (v424[40] != 1)
      {
        goto LABEL_188;
      }

LABEL_201:
      v177 = v427;
      v178 = *v424;
      sub_1AF635250(&v421);
      if (v177 == v178)
      {
        goto LABEL_211;
      }

      goto LABEL_189;
    }

    sub_1AF63515C(&v421, &v427);
    if (v424[40] != 2)
    {
LABEL_187:
      sub_1AF8B9E30(v441, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
LABEL_188:
      sub_1AF8B9E30(&v421, sub_1AF635194);
      goto LABEL_189;
    }

    goto LABEL_206;
  }

LABEL_319:
  sub_1AF6B06C0(a2, v385, 0x200000000, v395);
  if (!*v395)
  {
    v294 = a1[3];
    if (v294)
    {
      v295 = *(a3 + 152);
      *v441 = *(a3 + 136);
      *&v441[16] = v295;
      *&v441[32] = *(a3 + 168);
      swift_unknownObjectRetain();
      sub_1AF6B06C0(a2, v441, 0x200000000, v412);
      v296 = *&v412[0];
      if (!*&v412[0])
      {
        return swift_unknownObjectRelease();
      }

      v297 = v412;
      goto LABEL_341;
    }

    return sub_1AF5D1564(v395);
  }

  v291 = v396;
  *&v441[8] = *&v395[8];
  *&v441[24] = *&v395[24];
  v442 = *&v395[40];
  v443 = *&v395[56];
  *v441 = *v395;
  v444 = *&v395[72];
  v445 = v396;
  v292 = a1[3];
  v423 = *&v395[32];
  *v424 = *&v395[48];
  *&v424[16] = *&v395[64];
  *&v424[32] = v396;
  v421 = *v395;
  v422 = *&v395[16];
  sub_1AF5DD298(&v421, &v434);
  if (v292)
  {
    v293 = [v292 arrayLength];
  }

  else
  {
    v293 = 0;
  }

  *&v413 = v293;
  sub_1AFD07018(v441, &v413);
  v354 = v5;
  v298 = v293 + v291;
  v299 = ((v293 + v291) << 9);
  v300 = *(a4 + 16);
  v301 = sub_1AF6F35A0(v299, 0, 0x736576727543, 0xE600000000000000);
  v303 = v302;
  v305 = v304;
  swift_unknownObjectRelease();
  *a1 = v301;
  a1[1] = v303;
  a1[2] = v305;
  CFXTextureDescriptorMakeDefault(&v421);
  sub_1AF466BDC(1, &v421);
  sub_1AF8B9F0C(&v421);
  sub_1AF8B9F18(&v421);
  sub_1AF7156F0(&v421);
  sub_1AF5C44D4(&v421);
  sub_1AF48F3EC(&v421);
  sub_1AF4674BC(&v421);
  if (v298 <= 1)
  {
    v306 = 1;
  }

  else
  {
    v306 = v298;
  }

  sub_1AF4674C8(v306, &v421);
  sub_1AF5F7474(2, &v421);
  sub_1AF4674E4(&v421);
  v307 = BYTE2(v421);
  v308 = BYTE3(v421);
  v309 = HIDWORD(v421);
  v310 = BYTE2(v422);
  v311 = v422;
  *(&v435 + 11) = *(&v422 + 3);
  v312 = v421;
  HIBYTE(v435) = BYTE7(v422);
  v434 = v421;
  v357 = BYTE1(v421);
  v360 = DWORD1(v421);
  v351 = DWORD2(v421);
  *&v435 = *(&v421 + 1);
  BYTE10(v435) = BYTE2(v422);
  WORD4(v435) = v422;
  Texture = CFXGPUDeviceCreateTexture(v300, &v434);
  swift_unknownObjectRelease();
  a1[3] = Texture;
  if (Texture)
  {
    v314 = sub_1AFDFCEC8();
    [Texture setLabel_];
  }

  v315 = *(a3 + 72);
  v383[0] = *(a3 + 56);
  v383[1] = v315;
  v384 = *(a3 + 88);
  sub_1AF6B06C0(a2, v383, 0x200000000, &v397);
  if (!v397)
  {
    v5 = v354;
    if (Texture)
    {
      goto LABEL_333;
    }

    goto LABEL_336;
  }

  v437 = v400;
  v438 = v401;
  v439 = v402;
  v435 = v398;
  v436 = v399;
  v440 = v403;
  v434 = v397;
  sub_1AFD072E0(&v434, a1, v312 | (v357 << 8) | (v307 << 16) | (v308 << 24) | (v360 << 32), v351 | (v309 << 32), (v311 | (v310 << 16)) & 0xFFFFFF);
  v5 = v354;
  sub_1AF5D1564(&v397);
  if (!Texture)
  {
LABEL_336:
    sub_1AF5D1564(v395);
    return sub_1AF5D1564(v395);
  }

LABEL_333:
  swift_unknownObjectRetain();
  sub_1AF6B06C0(a2, v383, 0x200000000, &v404);
  if (v404)
  {
    v430 = v407;
    v431 = v408;
    v432 = v409;
    v428 = v405;
    v429 = v406;
    v433 = v410;
    v427 = v404;
    swift_unknownObjectRetain();
    sub_1AFD24E1C(&v427, Texture);
    swift_unknownObjectRelease();
    sub_1AF5D1564(v395);
    swift_unknownObjectRelease();
    sub_1AF5D1564(&v404);
  }

  else
  {
    sub_1AF5D1564(v395);
    swift_unknownObjectRelease();
  }

  v294 = a1[3];
  if (!v294)
  {
    return sub_1AF5D1564(v395);
  }

  v316 = *(a3 + 112);
  v381[0] = *(a3 + 96);
  v381[1] = v316;
  v382 = *(a3 + 128);
  swift_unknownObjectRetain();
  sub_1AF6B06C0(a2, v381, 0x200000000, v411);
  v296 = *&v411[0];
  if (!*&v411[0])
  {
    goto LABEL_354;
  }

  v297 = v411;
LABEL_341:
  v317 = v297 + 8;
  v318 = *(v317 + 1);
  *&v365[8] = *v317;
  *&v365[24] = v318;
  *&v365[88] = *(v317 + 10);
  v319 = *(v317 + 4);
  *&v365[56] = *(v317 + 3);
  *&v365[72] = v319;
  *&v365[40] = *(v317 + 2);
  *v365 = v296;
  v413 = *v365;
  v414 = *&v365[16];
  v417 = *&v365[64];
  v418 = *&v365[80];
  v415 = *&v365[32];
  v416 = *&v365[48];
  v349 = *(&v319 + 1);
  if (*(&v319 + 1) >= 1)
  {
    v320 = *&v365[56];
    if (*&v365[56])
    {
      v343 = v294;
      v321 = *&v365[72];
      v322 = *(*&v365[72] + 32);
      v323 = *&v365[40];
      v347 = *&v365[64];
      v324 = *(*&v365[64] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      sub_1AF8B9F24(v365, &v421, sub_1AF8B9E90);
      v325 = (v323 + 24);
      v345 = v324;
      while (1)
      {
        v355 = v5;
        v327 = *(v325 - 6);
        v326 = *(v325 - 5);
        v328 = *(v325 - 4);
        v358 = *v325;
        v361 = *(v325 - 1);
        v329 = v325[2];
        v352 = v325[1];
        v364 = v320;
        if (v324)
        {
          v330 = *(v329 + 376);

          os_unfair_lock_lock(v330);
          os_unfair_lock_lock(*(v329 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v322);
        v331 = *(v321 + 64);
        v419[0] = *(v321 + 48);
        v419[1] = v331;
        v420 = *(v321 + 80);
        v332 = *(v321 + 32);
        v333 = *(*(*(*(v329 + 40) + 16) + 32) + 16) + 1;

        *(v321 + 48) = ecs_stack_allocator_allocate(v332, 48 * v333, 8);
        *(v321 + 56) = v333;
        *(v321 + 72) = 0;
        *(v321 + 80) = 0;
        *(v321 + 64) = 0;

        LOBYTE(v375) = 1;
        *&v421 = v347;
        *(&v421 + 1) = v329;
        *&v422 = v321;
        *(&v422 + 1) = v328;
        *&v423 = (v326 - v327 + v328);
        *(&v423 + 1) = v349;
        *v424 = v327;
        *&v424[8] = v326;
        *&v424[16] = 0;
        *&v424[24] = 0;
        v424[32] = 1;
        *&v424[40] = v361;
        v425 = v358;
        v426 = v352;
        sub_1AFD11BA8(&v421, a1);
        if (v355)
        {
          break;
        }

        v369 = *v365;
        v370 = *&v365[8];
        v371 = v365[12];
        v372 = *&v365[16];
        v373 = v365[24];
        v374 = *&v365[32];
        sub_1AF630994(v321, &v369, v419);
        v5 = 0;
        sub_1AF62D29C(v329);
        ecs_stack_allocator_pop_snapshot(v322);
        v324 = v345;
        if (v345)
        {
          os_unfair_lock_unlock(*(v329 + 344));
          os_unfair_lock_unlock(*(v329 + 376));
        }

        v325 += 6;
        --v320;
        if (v364 == 1)
        {
          sub_1AF8B9E30(v365, sub_1AF8B9E90);
          v294 = v343;
          goto LABEL_352;
        }
      }

      v375 = *v365;
      v376 = *&v365[8];
      v377 = v365[12];
      v378 = *&v365[16];
      v379 = v365[24];
      v380 = *&v365[32];
      sub_1AF630994(v321, &v375, v419);
      sub_1AF62D29C(v329);
      ecs_stack_allocator_pop_snapshot(v322);
      os_unfair_lock_unlock(*(v329 + 344));
      os_unfair_lock_unlock(*(v329 + 376));
      __break(1u);
      goto LABEL_358;
    }
  }

LABEL_352:

  v334 = sub_1AF6F3F0C();
  if (!v5)
  {
    v335 = v334;
    v336 = sub_1AFDFCEC8();
    [v335 pushDebugGroup_];

    sub_1AF6F3BD8();
    sub_1AF8B9ABC(v335, &v413, v294, a1);
    swift_unknownObjectRelease();
    [v335 popDebugGroup];

    swift_unknownObjectRelease();
    sub_1AF8B9E30(v365, sub_1AF8B9E90);
LABEL_354:
    swift_unknownObjectRelease();
    return sub_1AF5D1564(v395);
  }

LABEL_358:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF8B92C0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED73B840;
  v23 = 0;
  v24 = 2;
  v25 = 0;
  v26 = 2;
  v27 = 0;
  sub_1AF702FA0(1, v10);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for CurveRuntime;
  *(inited + 40) = &off_1F2541E48;
  sub_1AF5D1EC0(inited, v11);
  sub_1AF8B9FA4(v10);
  swift_setDeallocating();
  v2 = v11[1];
  *(v0 + 16) = v11[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v12;
  sub_1AF702FB4(1, v13);
  v3 = v13[1];
  *(v0 + 56) = v13[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v14;
  sub_1AFCC3744(1, 1, v15);
  v4 = v15[1];
  *(v0 + 96) = v15[0];
  *(v0 + 112) = v4;
  *(v0 + 128) = v16;
  sub_1AFCC3744(1, 1, &v17);
  v5 = v18;
  v6 = v19;
  v7 = v21;
  v8 = v20 | 4;
  *(v0 + 136) = v17;
  *(v0 + 144) = v5;
  *(v0 + 148) = v6;
  *(v0 + 152) = v8;
  *(v0 + 160) = 2;
  *(v0 + 168) = v7;
  return v0;
}

uint64_t sub_1AF8B947C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result, a2);
    v8 = *(v7 + 184);

    sub_1AF6D655C(&type metadata for CurvesState, &off_1F25420E0, v8, a6);
  }

  return result;
}

uint64_t sub_1AF8B954C()
{
  v0 = swift_allocObject();
  sub_1AF8B92C0();
  return v0;
}

void *sub_1AF8B959C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v28 = *MEMORY[0x1E69E9840];
  sub_1AFDFF288();
  sub_1AF8B4EA4(&v25, a1);
  sub_1AF8B4EA4(&v25, a2);
  sub_1AFDFF2A8();
  if (a3)
  {
    sub_1AF8B4FC8(&v25, a3);
  }

  sub_1AFDFF2A8();
  v9 = sub_1AFDFF2F8();
  v10 = v9;
  v11 = *(v4 + 16);
  if (*(v11 + 16))
  {
    v12 = sub_1AF449CB8(v9);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      swift_unknownObjectRetain();
      return v14;
    }
  }

  CFXTextureDescriptorMakeDefault(&v23);
  sub_1AF466BDC(0, &v23);
  sub_1AF8B9F0C(&v23);
  sub_1AF8B9F18(&v23);
  sub_1AF7156F0(&v23);
  sub_1AF5C44D4(&v23);
  sub_1AF48F3EC(&v23);
  sub_1AF4674BC(&v23);
  sub_1AF4674C8(1, &v23);
  sub_1AF5F7474(0, &v23);
  sub_1AF4674E4(&v23);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 16);

    v25 = v23;
    *&v26 = v24;
    v14 = CFXGPUDeviceCreateTexture(v16, &v25);

    v17 = *(a2 + 16);
    if (v17)
    {
LABEL_8:
      v18 = *(a2 + 4 * v17 + 28);
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    v17 = *(a2 + 16);
    if (v17)
    {
      goto LABEL_8;
    }
  }

  v18 = 1.0;
LABEL_11:
  v19 = 0;
  v20 = v18 / 127.0;
  do
  {
    v27[v19] = sub_1AFBFCB44(a1, a2, a3, a4, v20 * v19).u32[0];
    ++v19;
  }

  while (v19 != 128);
  if (v14)
  {
    sub_1AF8BA02C(&v25);
    [v14 replaceRegion:&v25 mipmapLevel:0 withBytes:v27 bytesPerRow:512];
  }

  v21 = swift_unknownObjectRetain();
  sub_1AF826180(v21, v10);
  return v14;
}

uint64_t sub_1AF8B9824()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *sub_1AF8B98A4(void *a1)
{
  sub_1AF8BA0F4(0, &qword_1ED721F30, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  sub_1AF9D3914(&unk_1F24FFC70);

  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF8BA04C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8BA0A0(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    sub_1AF8BA158(qword_1ED724010);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v9 = v11;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

void sub_1AF8B9ABC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1AF8B9F8C(&v50);
  if (*(a2 + 80) >= 1)
  {
    v35 = *(a2 + 56);
    if (v35)
    {
      v8 = v50;
      v42 = v51;
      v9 = *(a2 + 72);
      v10 = *(v9 + 32);
      v41 = *(*(a2 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = *(a2 + 16);
      v48[0] = *a2;
      v48[1] = v11;
      v33 = *(a2 + 40);
      v49 = *(a2 + 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = 0;
      v13 = 0;
      v34 = v10;
      do
      {
        v14 = v10;
        v39 = v13;
        v40 = v12;
        v15 = (v33 + 48 * v12);
        v37 = *v15;
        v36 = v15[1];
        v16 = *(v15 + 2);
        v38 = *(v15 + 3);
        v18 = *(v15 + 4);
        v17 = *(v15 + 5);
        if (v41)
        {
          v19 = *(v17 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v17 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v14);
        v20 = *(v9 + 64);
        v50 = *(v9 + 48);
        v51 = v20;
        v52 = *(v9 + 80);
        v21 = *(v9 + 32);
        v22 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

        *(v9 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
        *(v9 + 56) = v22;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF64B110(&type metadata for CurveComponent, &off_1F2541E18, v16, v38, v18, v9);
        v23 = sub_1AF64B110(&type metadata for CurveRuntime, &off_1F2541EC8, v16, v38, v18, v9);
        v24 = v23;
        if (v16)
        {
          for (; v18; --v18)
          {
            v25 = *a4;
            if (*a4)
            {
              v26 = *v24;
              v27 = a4[1] + (v26 << 9);
              v46 = v8;
              v47 = v42;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              [a1 copyFromBuffer:v25 sourceOffset:v27 sourceBytesPerRow:512 sourceBytesPerImage:512 sourceSize:&v46 toTexture:a3 destinationSlice:v26 destinationLevel:0 destinationOrigin:&v43];
            }

            ++v24;
          }
        }

        else if (v37 != v36)
        {
          v28 = (v23 + 4 * v37);
          v29 = v36 - v37;
          do
          {
            v30 = *a4;
            if (*a4)
            {
              v31 = *v28;
              v32 = a4[1] + (v31 << 9);
              v46 = v8;
              v47 = v42;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              [a1 copyFromBuffer:v30 sourceOffset:v32 sourceBytesPerRow:512 sourceBytesPerImage:512 sourceSize:&v46 toTexture:a3 destinationSlice:v31 destinationLevel:0 destinationOrigin:&v43];
            }

            ++v28;
            --v29;
          }

          while (v29);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v13 = v39;
        sub_1AF630994(v9, v48, &v50);
        sub_1AF62D29C(v17);
        v10 = v34;
        ecs_stack_allocator_pop_snapshot(v34);
        if (v41)
        {
          os_unfair_lock_unlock(*(v17 + 344));
          os_unfair_lock_unlock(*(v17 + 376));
        }

        v12 = v40 + 1;
      }

      while (v40 + 1 != v35);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AF8B9E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF8B9E90()
{
  if (!qword_1ED722B58)
  {
    Result2 = type metadata accessor for QueryResult2();
    if (!v1)
    {
      atomic_store(Result2, &qword_1ED722B58);
    }
  }
}

uint64_t sub_1AF8B9F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AF8B9F8C@<D0>(uint64_t a1@<X8>)
{
  *&result = 128;
  *a1 = xmmword_1AFE7F9A0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1AF8B9FA4(uint64_t a1)
{
  sub_1AF8BA0A0(0, &qword_1ED723DB8, &type metadata for CurveComponent, &off_1F2541E18, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AF8BA02C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 128;
  *(a1 + 24) = xmmword_1AFE7F9A0;
  *(a1 + 40) = 1;
  return result;
}

unint64_t sub_1AF8BA04C()
{
  result = qword_1ED722AE8;
  if (!qword_1ED722AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722AE8);
  }

  return result;
}

void sub_1AF8BA0A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF8BA0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF8BA04C();
    v7 = a3(a1, &type metadata for CurveComponent.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF8BA158(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF8BA0A0(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8BA1EC()
{
  result = qword_1EB63FF20;
  if (!qword_1EB63FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF20);
  }

  return result;
}

unint64_t sub_1AF8BA244()
{
  result = qword_1ED722AC8;
  if (!qword_1ED722AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722AC8);
  }

  return result;
}

unint64_t sub_1AF8BA29C()
{
  result = qword_1ED722AD0[0];
  if (!qword_1ED722AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED722AD0);
  }

  return result;
}

unint64_t sub_1AF8BA308(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = (v2[5] + 1) % v3[2];
  v2[5] = v4;
  if (a1 < 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AFC0DC24(v3);
    }

    v14 = &v3[3 * v4];
    v14[5] = 0;
    v14[6] = 0;
    v14[4] = 0;
    result = swift_unknownObjectRelease();
    v2[3] = v3;
  }

  else
  {
    v7 = &v3[3 * v4];
    v9 = v7[4];
    v8 = v7 + 4;
    if (!v9 || v8[2] != a1)
    {
      BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(a2 + 16), a1, 0);
      if (BufferWithLength)
      {
        v11 = BufferWithLength;
        v12 = sub_1AFDFCEC8();
        [v11 setLabel_];

        v13 = a1;
      }

      else
      {
        v16 = v2;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v25[1] = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
        MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
        MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
        v17 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v17);

        MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
        type metadata accessor for MTLResourceOptions(0);
        sub_1AFDFE458();
        v18 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v24 = v18;
          swift_once();
          v18 = v24;
        }

        v25[0] = 0;
        sub_1AF0D4F18(v18, v25, 0, 0xE000000000000000);

        v11 = 0;
        v13 = 0;
        v2 = v16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AFC0DC24(v3);
      }

      v19 = &v3[3 * v4];
      v19[4] = v11;
      v19[5] = 0;
      v19[6] = v13;
      swift_unknownObjectRelease();
      v2[3] = v3;
    }

    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 248), a1);
    v2[1] = v20;
    v2[2] = v21;
    result = CFXGPUDeviceGetMinConstantBufferAlignment(*(a2 + 16), v21, v22, v23);
    v2[4] = result;
  }

  return result;
}

void sub_1AF8BA608()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = v0[3] + 24 * v0[5];
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = v0[2];
      v5 = *(v2 + 40);
      if ([swift_unknownObjectRetain_n() storageMode] == 2)
      {
        swift_unknownObjectRelease();
        v6 = 0;
      }

      else
      {
        v7 = [v3 contents];
        v8 = v3;
        v6 = &v7[v5];
      }

      v9 = [swift_unknownObjectRetain() storageMode];
      swift_unknownObjectRelease();
      if (v9 == 2)
      {
        v10 = 0;
      }

      else
      {
        v11 = [swift_unknownObjectRetain() contents];
        v12 = v1;
        v10 = &v11[v4];
      }

      memcpy(v6, v10, HIDWORD(v4));
      swift_unknownObjectRelease();
      *v0 = 0;
      v0[1] = 0;
      v0[2] = 0;
    }
  }
}

uint64_t initializeWithCopy for DoubleBufferAllocator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for DoubleBufferAllocator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for DoubleBufferAllocator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for DoubleBufferAllocator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DoubleBufferAllocator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF8BA8F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = a1;
  if ((*(*(a2 + 72) + 112) & 1) == 0)
  {
    v9 = a1[29];
    v10 = a1[30];
    if (v10 != v9)
    {
      v11 = a1[24];
      if (v11)
      {
        v12 = a1[26];
        sub_1AF75D408(a1[29], a1[30], v11);
        sub_1AF75D364(v9, v10, v12);
      }

      sub_1AF705690(v9, v10);
    }
  }

  v13 = v8[2];
  v14 = *(v8 + 6);

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v15 = sub_1AF65A4B4(v14, 0, 0, a3, a4, &v45, v52);

  sub_1AF5DD41C(v52);
  sub_1AF5DD41C(&v45);
  if (sub_1AF649CEC())
  {
    return sub_1AF649D40(v15);
  }

  v17 = v8[29];
  v18 = v8[30];
  v41 = *(v8 + 120);
  v19 = *(v8 + 7);
  v20 = *(v8 + 32);
  v21 = v8[5];
  v22 = *(v21 + 200);
  v44 = *(*(v13 + 88) + 8 * v15 + 32);

  if ((v22 & 1) != 0 || *(v44 + 200) == 1)
  {
    *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v21 = v8[5];
  }

  v23 = v8[32];
  sub_1AF5B4FCC(v21, v17, v18, 0, v8);
  v43 = v8[32];
  v24 = v43 - v23;
  v42 = v23;
  if (v43 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  *&v52[0] = v25;
  v26 = *(v8[5] + 24);
  v27 = *(v26 + 16);
  if (v27)
  {
    v39 = a5;
    v40 = v8;
    v28 = v26 + 32;

    for (i = 0; i != v27; ++i)
    {
      v30 = v28 + 40 * i;
      if ((*(v30 + 32) & 1) == 0)
      {
        v31 = *(v44 + 24);
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = (v31 + 32);
          while (*v33 != *v30)
          {
            v33 += 5;
            if (!--v32)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          sub_1AF640BC8();
        }
      }
    }

    v8 = v40;
    a5 = v39;
  }

  if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v8[9] * v24);
  }

  if (*(v8 + 184))
  {
    v34 = 0;
  }

  else
  {
    v34 = v8[21];
  }

  v51 = 0;

  MEMORY[0x1EEE9AC00](v35, v36);
  DWORD2(v46) = -1;
  v47 = v42;
  v48 = v43;
  v49 = v42;
  v50 = v43;
  *&v45 = v42;
  *(&v45 + 1) = v43;
  *&v46 = v34;
  if (v24 >= 1)
  {
    do
    {
      sub_1AF6248A8(v15, v19 | (v20 << 32), v41, v13, &v45, a5);
    }

    while ((*(&v45 + 1) - v45) > 0);
  }

  v37 = v8[24];
  if (v37)
  {
    v38 = v8[26];
    sub_1AF75D364(v42, v43, v37);
    sub_1AF75D364(v42, v43, v38);
  }
}

double sub_1AF8BAD54@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF8BD7CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1AF8BAD98(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF5DE27C();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF8BAE54@<X0>(unint64_t a1@<X1>, void *a2@<X8>)
{
  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);

  MEMORY[0x1B2718AE0](v5, v6);

  v9 = 0xD000000000000020;
  v8 = 0x80000001AFF25E80;
  if (a1 >= 2)
  {
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB6C35A8;
    v11 = unk_1EB6C35B0;

    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF25E80);

    v9 = v10;
    v8 = v11;
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v9;
  a2[2] = v8;
  a2[3] = 11565;
  a2[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AF8BAF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ScriptIndex();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1AF8BB00C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8BB068()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8BB0B0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF8BB128@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF8BB180(uint64_t a1)
{
  v2 = sub_1AF8BD6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8BB1BC(uint64_t a1)
{
  v2 = sub_1AF8BD6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8BB1F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1AF8BD768(0, &qword_1EB63FF28, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for HeaderScript();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 2;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0xE000000000000000;
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *(v13 + 3) = v14;
  v16 = *(v15 + 40);
  v17 = type metadata accessor for ScriptIndex();
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  sub_1AF441150(a1, a1[3]);
  sub_1AF8BD6B0();
  sub_1AFDFF3B8();
  if (!v2)
  {
    v18 = v24;
    v19 = sub_1AFDFE708();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    *(v13 + 1) = v19;
    *(v13 + 2) = v21;
    sub_1AF8BD704(v13, v18);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF8BDC90(v13, type metadata accessor for HeaderScript);
}

uint64_t sub_1AF8BB468(void *a1)
{
  sub_1AF8BD768(0, &qword_1EB63FF38, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8BD6B0();
  sub_1AFDFF3F8();
  sub_1AFDFE8B8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF8BB5A8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;

  sub_1AF704D08(1, &v1);

  *&xmmword_1ED73B478 = v1;
  DWORD2(xmmword_1ED73B478) = v2;
  BYTE12(xmmword_1ED73B478) = v3;
  qword_1ED73B488 = v4 | 4;
  byte_1ED73B490 = 2;
  qword_1ED73B498 = v5;
  return result;
}

void sub_1AF8BB680(uint64_t a1)
{
  if (qword_1ED7255B0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v16[0] = xmmword_1ED73B478;
  v16[1] = *&qword_1ED73B488;
  v17 = qword_1ED73B498;
  sub_1AF6B06C0(a1, v16, 0x200000000, &v2);
  if (v2)
  {
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v10 = v3;
    v11 = v4;
    v9 = v2;
    sub_1AFD06C80(&v9);
    sub_1AF8BDC90(&v2, sub_1AF5C3C90);
  }
}

void sub_1AF8BB79C(uint64_t a1)
{
  if (qword_1ED7255B0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1ED73B478;
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v4 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v2);

  sub_1AF6B1B20(a1, v4, v2);
  v5 = *(v3 + 40);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1AF8BB88C()
{
  v1 = v0;
  sub_1AF0D4E74();
  v115 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v114 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1AFDFC298();
  v108 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v5);
  v112 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC128();
  v104 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v99 - v13;
  v134 = 0;
  v135 = 0xE000000000000000;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v163 = qword_1ED73B840;
  v164 = 0;
  v165 = 2;
  v166 = 0;
  v167 = 2;
  v168 = 0;
  sub_1AF703FE4(1, v136);
  v161[0] = v136[0];
  v161[1] = v136[1];
  v162 = v137;
  v15 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v0, v161, 0x200000000, &v138);
  v116 = v14;
  v117 = v7;
  if (v138)
  {
    v107 = v10;
    v109 = v15;
    v110 = v0;
    if (v145 >= 1 && (v121 = v142) != 0)
    {
      v120 = v141;
      v16 = v144;
      v17 = *(v143 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v123 = *(v144 + 32);
      v153 = v138;
      v154 = v139;
      v155 = v140;
      v18 = 0;
      v19 = 0;
      v118 = type metadata accessor for HeaderScript();
      *&v111 = v118 - 8;
      LODWORD(v119) = v17;
      do
      {
        v122 = v19;
        v20 = (v120 + 48 * v18);
        v21 = *v20;
        v22 = v20[1];
        v24 = *(v20 + 2);
        v23 = *(v20 + 3);
        v26 = *(v20 + 4);
        v25 = *(v20 + 5);
        if (v17)
        {
          v27 = *(v25 + 376);

          os_unfair_lock_lock(v27);
          os_unfair_lock_lock(*(v25 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v123);
        v28 = *(v16 + 64);
        v169[0] = *(v16 + 48);
        v169[1] = v28;
        v170 = *(v16 + 80);
        v29 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
        *(v16 + 48) = ecs_stack_allocator_allocate(*(v16 + 32), 48 * v29, 8);
        *(v16 + 56) = v29;
        *(v16 + 72) = 0;
        *(v16 + 80) = 0;
        *(v16 + 64) = 0;
        v30 = sub_1AF64B110(v118, &off_1F2542220, v24, v23, v26, v16);
        if (v24)
        {
          if (v26)
          {
            v31 = *(*v111 + 72);
            v32 = (v30 + 16);
            do
            {
              MEMORY[0x1B2718AE0](*(v32 - 1), *v32);
              v32 = (v32 + v31);
              --v26;
            }

            while (v26);
          }
        }

        else if (v21 != v22)
        {
          v33 = *(*v111 + 72);
          v34 = v22 - v21;
          v35 = (v30 + v33 * v21 + 16);
          do
          {
            MEMORY[0x1B2718AE0](*(v35 - 1), *v35);
            v35 = (v35 + v33);
            --v34;
          }

          while (v34);
        }

        v19 = v122;
        sub_1AF630994(v16, &v153, v169);
        sub_1AF62D29C(v25);
        ecs_stack_allocator_pop_snapshot(v123);
        v17 = v119;
        if (v119)
        {
          os_unfair_lock_unlock(*(v25 + 344));
          os_unfair_lock_unlock(*(v25 + 376));
        }

        ++v18;
      }

      while (v18 != v121);
    }

    else
    {
      v19 = 0;
    }

    v122 = v19;
    sub_1AF8BDC90(&v138, sub_1AF5C3C90);
    v14 = v116;
    v7 = v117;
    v10 = v107;
    v1 = v110;
  }

  else
  {
    v122 = 0;
  }

  sub_1AF704D08(1, v146);
  sub_1AF8BDBCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  v111 = xmmword_1AFE431C0;
  *(v36 + 16) = xmmword_1AFE431C0;
  *(v36 + 32) = type metadata accessor for HeaderScript();
  *(v36 + 40) = &off_1F25421A0;
  sub_1AF5D1EC0(v36, v147);
  sub_1AF8BDC90(v146, sub_1AF8BDB74);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v159[0] = v147[0];
  v159[1] = v147[1];
  v160 = v148;
  sub_1AF6B06C0(v1, v159, 0x200000000, v149);
  if (*&v149[0])
  {
    if (v152 <= 0)
    {
      v131 = v150;
      v132 = v151;
      v133 = v152;
      v128 = v149[0];
      v129 = v149[1];
      v130 = v149[2];
      sub_1AF5DD298(&v128, v126);
      sub_1AF8BDC90(v136, sub_1AF8BDC30);
      v96 = sub_1AF8BDB74;
      v97 = v147;
    }

    else
    {
      v102 = *(&v150 + 1);
      if (*(&v150 + 1))
      {
        v101 = *(&v149[2] + 1);
        v37 = *(&v151 + 1);
        v106 = *(*(&v151 + 1) + 32);
        v107 = v10;
        v105 = *(v151 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v157 = *(v149 + 8);
        v158 = *(&v149[1] + 8);
        v131 = v150;
        v132 = v151;
        v133 = v152;
        v128 = v149[0];
        v156 = *&v149[0];
        v129 = v149[1];
        v130 = v149[2];
        sub_1AF5DD298(&v128, v126);
        v38 = 0;
        v109 = "rl of an asset (";
        v110 = "_TtC3VFX19MeshReferenceSystem";
        v108 += 4;
        v123 = (v104 + 8);
        v100 = v37;
        while (1)
        {
          v104 = v38;
          v39 = (v101 + 48 * v38);
          v40 = *v39;
          v121 = v39[1];
          v42 = *(v39 + 2);
          v41 = *(v39 + 3);
          v44 = *(v39 + 4);
          v43 = *(v39 + 5);
          if (v105)
          {
            v45 = *(v43 + 376);

            os_unfair_lock_lock(v45);
            os_unfair_lock_lock(*(v43 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v106);
          v46 = *(v37 + 4);
          v126[0] = *(v37 + 3);
          v126[1] = v46;
          v127 = v37[10];
          v47 = *(*(*(*(v43 + 40) + 16) + 32) + 16) + 1;
          v37[6] = ecs_stack_allocator_allocate(v37[4], 48 * v47, 8);
          v37[7] = v47;
          v37[9] = 0;
          v37[10] = 0;
          v37[8] = 0;
          v103 = v43;
          v48 = sub_1AF64B110(&type metadata for HeaderFileAsset, &off_1F2542470, v42, v41, v44, v37);
          if (v42)
          {
            if (v44)
            {
              v49 = (v48 + 40);
              v50 = v122;
              do
              {
                v51 = *(v49 - 3);
                v52 = *(v49 - 2);
                if (*(v49 - 1))
                {
                  v53 = *v49;
                  ObjectType = swift_getObjectType();
                  (*(v53 + 8))(v51, v52, ObjectType, v53);
                }

                else
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v124 = 0;
                  v125 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000020, v110 | 0x8000000000000000);
                  MEMORY[0x1B2718AE0](v51, v52);
                  MEMORY[0x1B2718AE0](0xD000000000000016, v109 | 0x8000000000000000);
                  v56 = v124;
                  v55 = v125;
                  v57 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v119 = v44;
                  v120 = v52;
                  v121 = v51;
                  v122 = v50;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                  v58 = swift_allocObject();
                  *(v58 + 16) = v111;
                  *(v58 + 56) = MEMORY[0x1E69E6158];
                  *(v58 + 64) = sub_1AF0D544C();
                  *(v58 + 32) = v56;
                  *(v58 + 40) = v55;

                  sub_1AFDFC4C8();

                  LODWORD(v118) = v57;
                  v59 = v112;
                  sub_1AFDFC288();
                  v60 = v115[12];
                  v61 = v115[16];
                  v62 = v55;
                  v63 = v56;
                  v64 = v114;
                  v65 = &v114[v115[20]];
                  (*v108)(v114, v59, v113);
                  *(v64 + v60) = v118;
                  *(v64 + v61) = 0;
                  *v65 = v63;
                  *(v65 + 1) = v62;
                  sub_1AFDFC608();

                  sub_1AF8BDC90(v64, sub_1AF0D4E74);
                  v14 = v116;
                  sub_1AFDFC018();
                  v7 = v117;
                  v50 = v122;
                  v44 = v119;
                }

                v66 = sub_1AFDFCEA8();
                if (v50)
                {

                  v50 = 0;
                }

                else
                {
                  MEMORY[0x1B2718AE0](v66);
                }

                (*v123)(v14, v7);
                v49 += 6;
                --v44;
              }

              while (v44);
              goto LABEL_50;
            }
          }

          else if (v40 != v121)
          {
            v68 = v121 - v40;
            v69 = (v48 + 48 * v40 + 40);
            v50 = v122;
            do
            {
              v71 = *(v69 - 3);
              v70 = *(v69 - 2);
              if (*(v69 - 1))
              {
                v72 = v68;
                v73 = v14;
                v74 = v7;
                v75 = *(v69 - 2);
                v76 = *v69;
                v77 = swift_getObjectType();
                v78 = v71;
                v79 = v107;
                v80 = v75;
                v7 = v74;
                v14 = v73;
                v68 = v72;
                (*(v76 + 8))(v78, v80, v77, v76);
              }

              else
              {
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v124 = 0;
                v125 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000020, v110 | 0x8000000000000000);
                MEMORY[0x1B2718AE0](v71, v70);
                MEMORY[0x1B2718AE0](0xD000000000000016, v109 | 0x8000000000000000);
                v81 = v71;
                v83 = v124;
                v82 = v125;
                v84 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v120 = v70;
                v121 = v81;
                v122 = v50;
                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                v85 = swift_allocObject();
                *(v85 + 16) = v111;
                *(v85 + 56) = MEMORY[0x1E69E6158];
                *(v85 + 64) = sub_1AF0D544C();
                *(v85 + 32) = v83;
                *(v85 + 40) = v82;

                sub_1AFDFC4C8();

                v86 = v112;
                sub_1AFDFC288();
                v87 = v115[12];
                v118 = v115[16];
                v119 = v87;
                LOBYTE(v85) = v84;
                v88 = v114;
                v89 = v82;
                v90 = v83;
                v91 = &v114[v115[20]];
                (*v108)(v114, v86, v113);
                v92 = v118;
                *(v88 + v119) = v85;
                *(v88 + v92) = 0;
                *v91 = v90;
                *(v91 + 1) = v89;
                sub_1AFDFC608();

                sub_1AF8BDC90(v88, sub_1AF0D4E74);
                v79 = v107;
                sub_1AFDFC018();
                v14 = v116;
                v7 = v117;
                v50 = v122;
              }

              v93 = sub_1AFDFCEA8();
              if (v50)
              {

                v50 = 0;
              }

              else
              {
                MEMORY[0x1B2718AE0](v93);
              }

              (*v123)(v79, v7);
              v69 += 6;
              --v68;
            }

            while (v68);
            goto LABEL_50;
          }

          v50 = v122;
LABEL_50:
          v37 = v100;
          sub_1AF630994(v100, &v156, v126);
          v122 = v50;
          v67 = v103;
          sub_1AF62D29C(v103);
          ecs_stack_allocator_pop_snapshot(v106);
          if (v105)
          {
            os_unfair_lock_unlock(*(v67 + 43));
            os_unfair_lock_unlock(*(v67 + 47));
          }

          v38 = v104 + 1;
          if (v104 + 1 == v102)
          {
            goto LABEL_69;
          }
        }
      }

      v131 = v150;
      v132 = v151;
      v133 = v152;
      v128 = v149[0];
      v129 = v149[1];
      v130 = v149[2];
      sub_1AF5DD298(&v128, v126);
LABEL_69:
      sub_1AF8BDC90(v147, sub_1AF8BDB74);
      v96 = sub_1AF8BDC30;
      v97 = v136;
    }

    sub_1AF8BDC90(v97, v96);
    sub_1AF8BDC90(v149, sub_1AF5C3C90);
    v95 = v149;
    v94 = sub_1AF5C3C90;
  }

  else
  {
    sub_1AF8BDC90(v136, sub_1AF8BDC30);
    v94 = sub_1AF8BDB74;
    v95 = v147;
  }

  sub_1AF8BDC90(v95, v94);
  return v134;
}

void *sub_1AF8BC89C(_BYTE *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    v4[3] = a2[3];
    v9 = a2 + 4;
    v8 = a2[4];

    if (v8)
    {
      v10 = a2[5];
      v4[4] = v8;
      v4[5] = v10;
    }

    else
    {
      *(v4 + 2) = *v9;
    }

    v12 = *(a3 + 32);
    v13 = type metadata accessor for ScriptIndex();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
      memcpy(v4 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 16))(v4 + v12, a2 + v12, v16);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v4 + v12, a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }
  }

  return v4;
}

uint64_t sub_1AF8BCAD0(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 32))
  {
  }

  v4 = *(a2 + 32);
  v5 = type metadata accessor for ScriptIndex();
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(a1 + v4, v7);
    }
  }

  return result;
}

uint64_t sub_1AF8BCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v8 = (a2 + 32);
  v7 = *(a2 + 32);

  if (v7)
  {
    v9 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v9;
  }

  else
  {
    *(a1 + 32) = *v8;
  }

  v10 = *(a3 + 32);
  v11 = type metadata accessor for ScriptIndex();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1AFDFC318();
      (*(*(v14 - 8) + 16))(a1 + v10, a2 + v10, v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
    }

    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t sub_1AF8BCDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v6)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v6;
      *(a1 + 40) = v7;

      goto LABEL_8;
    }
  }

  else if (v6)
  {
    v8 = *(a2 + 40);
    *(a1 + 32) = v6;
    *(a1 + 40) = v8;

    goto LABEL_8;
  }

  *(a1 + 32) = *(a2 + 32);
LABEL_8:
  v9 = *(a3 + 32);
  v10 = type metadata accessor for ScriptIndex();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AF8BDC90(a1 + v9, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = sub_1AFDFC318();
        (*(*(v18 - 8) + 16))(a1 + v9, a2 + v9, v18);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v17 = *(v11 + 64);
      goto LABEL_15;
    }

    sub_1AF8BDC90(a1 + v9, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
    v17 = *(*(v16 - 8) + 64);
LABEL_15:
    memcpy((a1 + v9), (a2 + v9), v17);
    return a1;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1AFDFC318();
    (*(*(v15 - 8) + 16))(a1 + v9, a2 + v9, v15);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v9), (a2 + v9), *(v11 + 64));
  }

  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

uint64_t sub_1AF8BD0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for ScriptIndex();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1AFDFC318();
      (*(*(v9 - 8) + 32))(a1 + v5, a2 + v5, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1AF8BD268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);

  v7 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v7)
    {
      v8 = *(a2 + 40);
      *(a1 + 32) = v7;
      *(a1 + 40) = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v9;
    goto LABEL_8;
  }

  *(a1 + 32) = *(a2 + 32);
LABEL_8:
  v10 = *(a3 + 32);
  v11 = type metadata accessor for ScriptIndex();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AF8BDC90(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = sub_1AFDFC318();
        (*(*(v19 - 8) + 32))(a1 + v10, a2 + v10, v19);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v18 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AF8BDC90(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AF8BDBCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
    v18 = *(*(v17 - 8) + 64);
LABEL_15:
    memcpy((a1 + v10), (a2 + v10), v18);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1AFDFC318();
    (*(*(v16 - 8) + 32))(a1 + v10, a2 + v10, v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t type metadata accessor for HeaderScript()
{
  result = qword_1ED72E230;
  if (!qword_1ED72E230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF8BD5C8()
{
  sub_1AF8BDBCC(319, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_1AF8BD6B0()
{
  result = qword_1EB63FF30;
  if (!qword_1EB63FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF30);
  }

  return result;
}

uint64_t sub_1AF8BD704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderScript();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF8BD768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF8BD6B0();
    v7 = a3(a1, &type metadata for HeaderScript.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF8BD7CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v10, v10[3]);
  sub_1AF5DE134();
  sub_1AFDFEE88();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_1AF8BD8C0(uint64_t a1)
{
  if (qword_1ED7255B0 != -1)
  {
    swift_once();
  }

  v45[0] = xmmword_1ED73B478;
  v45[1] = *&qword_1ED73B488;
  v46 = qword_1ED73B498;
  sub_1AF6B06C0(a1, v45, 0x200000000, &v7);
  if (v7)
  {
    v41 = v10;
    v42 = v11;
    v43 = v12;
    v39 = v8;
    v40 = v9;
    v44 = v13;
    v38 = v7;
    sub_1AFD06C80(&v38);
    sub_1AF8BDC90(&v7, sub_1AF5C3C90);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v32 = qword_1ED73B840;
  v33 = 0;
  v34 = 2;
  v35 = 0;
  v36 = 2;
  v37 = 0;
  sub_1AF704D08(1, v14);
  v30[0] = v14[0];
  v30[1] = v14[1];
  v31 = v15;
  sub_1AF6B06C0(a1, v30, 0x200000000, &v16);
  if (v16)
  {
    v28 = v21;
    v26 = v19;
    v27 = v20;
    v23 = v16;
    v29 = v22;
    v24 = v17;
    v25 = v18;
    if (*(&v21 + 1) >= 1 && v27)
    {
      v2 = (v26 + 40);
      v3 = 48 * v27;
      do
      {
        v4 = *v2;
        v2 += 6;
        v5 = *(v4 + 376);

        os_unfair_lock_lock(v5);
        os_unfair_lock_lock(*(v4 + 344));
        sub_1AF8BA8F4(v4, &v23, &type metadata for HeaderFileAsset, &off_1F2542470, sub_1AF5C44B0);
        os_unfair_lock_unlock(*(v4 + 344));
        os_unfair_lock_unlock(*(v4 + 376));

        v3 -= 48;
      }

      while (v3);
    }

    sub_1AF8BDC90(&v16, sub_1AF5C3C90);
  }

  return sub_1AF8BDC90(v14, sub_1AF8BDB74);
}

void sub_1AF8BDB74()
{
  if (!qword_1EB633CF0)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633CF0);
    }
  }
}

void sub_1AF8BDBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF8BDC30()
{
  if (!qword_1ED723E70)
  {
    type metadata accessor for HeaderScript();
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723E70);
    }
  }
}

uint64_t sub_1AF8BDC90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for HeaderFileAsset(uint64_t a1)
{

  v2 = *(a1 + 32);
}

uint64_t initializeWithCopy for HeaderFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;

  v5 = v7;
  return a1;
}

void *assignWithCopy for HeaderFileAsset(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[4];
  a1[4] = v4;
  v7 = v4;

  a1[5] = v5;
  return a1;
}

uint64_t assignWithTake for HeaderFileAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = v5;
  return a1;
}

unint64_t sub_1AF8BDEA8()
{
  result = qword_1EB63FF40;
  if (!qword_1EB63FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF40);
  }

  return result;
}

unint64_t sub_1AF8BDF00()
{
  result = qword_1EB63FF48;
  if (!qword_1EB63FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF48);
  }

  return result;
}

unint64_t sub_1AF8BDF58()
{
  result = qword_1EB63FF50;
  if (!qword_1EB63FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF50);
  }

  return result;
}

char *sub_1AF8BDFB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(a2 + 4 * v10 + 28);
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v11 >= 0.0;
  if (a5 > 0.0)
  {
    v12 = v11 <= 0.0;
  }

  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v22 = 1;
    v13 = MEMORY[0x1E69E7CC0];
    v23 = 0.0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1AF41FDF8(0, *(v13 + 2) + 1, 1, v13);
      }

      v25 = *(v13 + 2);
      v24 = *(v13 + 3);
      if (v25 >= v24 >> 1)
      {
        v13 = sub_1AF41FDF8(v24 > 1, v25 + 1, 1, v13);
      }

      *(v13 + 2) = v25 + 1;
      *&v13[4 * v25 + 32] = v23;
      v26 = sub_1AFBFCB44(a1, a2, a3, a4, v23).u32[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1AF41FDF8(0, *(v14 + 2) + 1, 1, v14);
      }

      v28 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (v28 >= v27 >> 1)
      {
        v14 = sub_1AF41FDF8(v27 > 1, v28 + 1, 1, v14);
      }

      v23 = (v22 * a5) + 0.0;
      *(v14 + 2) = v28 + 1;
      *&v14[4 * v28 + 32] = v26;
      v29 = v23 <= v11;
      if (a5 > 0.0)
      {
        v29 = v11 <= v23;
      }

      ++v22;
    }

    while (!v29);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AF41FDF8(0, *(v13 + 2) + 1, 1, v13);
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1AF41FDF8(v15 > 1, v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  *&v13[4 * v16 + 32] = v11;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 4 * v17 + 28);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }
  }

  v14 = sub_1AF41FDF8(0, *(v14 + 2) + 1, 1, v14);
LABEL_14:
  v20 = *(v14 + 2);
  v19 = *(v14 + 3);
  if (v20 >= v19 >> 1)
  {
    v14 = sub_1AF41FDF8(v19 > 1, v20 + 1, 1, v14);
  }

  *(v14 + 2) = v20 + 1;
  *&v14[4 * v20 + 32] = v18;
  return v14;
}

uint64_t sub_1AF8BE284(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a1 + 16);
  if (v3 - 1 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3 - 1;
  }

  v5 = a1 + 32;
  do
  {
    while (1)
    {
      v6 = v4;
      if (*(v5 + 4 * v4) >= a3)
      {
        break;
      }

      ++v4;
      if (v6 + 1 >= v3)
      {
        return 0;
      }
    }

    --v4;
    v7 = *(v5 + 4 * ((v6 - 1) & ~((v6 - 1) >> 63)));
  }

  while (v6 - 1 >= 0 && v7 > a3);
  if (v7 > a3)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

float sub_1AF8BE2EC(float *a1, float *a2, float *a3, float *a4, float *a5, float a6)
{
  result = *a3 + ((((*a4 * 0.5) - (*a2 * 0.5)) * a6) + (((a6 * a6) * (((*a2 + (*a4 + *a4)) + (*a3 * -2.5)) - (*a5 * 0.5))) + (((a6 * a6) * a6) * (((*a3 * 1.5) + ((*a5 * 0.5) - (*a4 * 1.5))) - (*a2 * 0.5)))));
  *a1 = result;
  return result;
}

float32x2_t sub_1AF8BE368(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, int32x2_t *a4, int32x2_t *a5, float a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = vmul_f32(vzip2_s32(*a5, *a4), 0x3FC000003F000000);
  *&a12 = (0.5 * COERCE_FLOAT(*a5)) + (-1.5 * COERCE_FLOAT(*a4));
  v12.f32[0] = COERCE_FLOAT(*a2) + (COERCE_FLOAT(*a4) + COERCE_FLOAT(*a4));
  v14 = vmul_f32(*a3, 0x3FC0000040200000);
  v15 = vmul_f32(*a3, 0x402000003FC00000);
  v16.i32[0] = vsub_f32(v12, v14).u32[0];
  v16.i32[1] = vadd_f32(vdup_lane_s32(vsub_f32(v13, vdup_lane_s32(*&v13, 1)), 0), v14).i32[1];
  v17.i32[0] = vadd_f32(*&a12, v15).u32[0];
  *(&a12 + 1) = COERCE_FLOAT(HIDWORD(*a2)) + (COERCE_FLOAT(HIDWORD(*a4)) + COERCE_FLOAT(HIDWORD(*a4)));
  v18 = vmul_f32(*a2, 0x3F0000003F000000);
  v17.i32[1] = vsub_f32(*&a12, v15).i32[1];
  v19 = vzip1_s32(v18, v13);
  v20 = vsub_f32(vmul_f32(*a4, 0x3F0000003F000000), v18);
  v18.f32[0] = 0.5 * COERCE_FLOAT(*a5);
  v21 = vsub_f32(v16, v18);
  v22 = vsub_f32(v17, v19);
  v19.f32[0] = a6 * a6;
  v19.f32[1] = (a6 * a6) * a6;
  result = vadd_f32(*a3, vadd_f32(vmul_n_f32(v20, a6), vadd_f32(vmul_f32(vrev64_s32(v19), v22), vmul_f32(v19, v21))));
  *a1 = result;
  return result;
}

__n128 sub_1AF8BE444(__n128 *a1, float32x4_t *a2, int8x16_t *a3, int32x2_t *a4, int32x2_t *a5, float a6)
{
  v8 = vmul_f32(vzip2_s32(*a5, *a4), 0x3FC000003F000000);
  v6.f32[0] = (0.5 * COERCE_FLOAT(*a5->i8)) - (1.5 * COERCE_FLOAT(*a4->i8));
  v9 = vmuls_lane_f32(0.5, *a2, 2);
  v7.f32[0] = COERCE_FLOAT(*a2) + (COERCE_FLOAT(*a4->i8) + COERCE_FLOAT(*a4->i8));
  v10 = vmul_f32(vzip1_s32(*&vextq_s8(*a3, *a3, 8uLL), *&vextq_s8(*a5->i8, *a5->i8, 8uLL)), 0x3F00000040200000);
  v11 = ((COERCE_FLOAT(a2->i64[1]) + (COERCE_FLOAT(*&a4[1]) + COERCE_FLOAT(*&a4[1]))) - v10.f32[0]) - v10.f32[1];
  v10.f32[0] = (vmuls_lane_f32(0.5, *a4->i8, 2) - v9) * a6;
  v12 = vmul_f32(*a2->f32, 0x3F0000003F000000);
  v13 = vmul_f32(*a3->i8, 0x3FC0000040200000);
  v14 = vmul_f32(*a3->i8, 0x402000003FC00000);
  v15.i32[0] = vsub_f32(v7, v13).u32[0];
  v15.i32[1] = vadd_f32(vdup_lane_s32(vsub_f32(v8, vdup_lane_s32(*&v8, 1)), 0), v13).i32[1];
  v13.i32[0] = vadd_f32(v6, v14).u32[0];
  v6.f32[1] = COERCE_FLOAT(HIDWORD(a2->i64[0])) + (COERCE_FLOAT(HIDWORD(*a4)) + COERCE_FLOAT(HIDWORD(*a4)));
  v13.i32[1] = vsub_f32(v6, v14).i32[1];
  v16 = vzip1_s32(v12, v8);
  v17 = vsub_f32(vmul_f32(*a4, 0x3F0000003F000000), v12);
  v12.f32[0] = 0.5 * COERCE_FLOAT(*a5->i8);
  v18 = vsub_f32(v15, v12);
  v12.f32[0] = a6 * a6;
  v12.f32[1] = (a6 * a6) * a6;
  v19 = vadd_f32(vmul_f32(vrev64_s32(v12), vsub_f32(v13, v16)), vmul_f32(v12, v18));
  v16.f32[0] = ((a6 * a6) * v11) + (v12.f32[1] * ((vmuls_lane_f32(1.5, *a3, 2) + (v10.f32[1] - vmuls_lane_f32(1.5, *a4->i8, 2))) - v9));
  result.n128_u64[0] = vadd_f32(*a3->i8, vadd_f32(vmul_n_f32(v17, a6), v19));
  result.n128_f32[2] = COERCE_FLOAT(a3->i64[1]) + (v10.f32[0] + v16.f32[0]);
  result.n128_u32[3] = 0;
  *a1 = result;
  return result;
}

float32x4_t sub_1AF8BE598(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int8x16_t *a4, int32x4_t *a5, float a6)
{
  v6 = vextq_s8(*a4, *a4, 8uLL);
  __asm { FMOV            V6.2S, #1.5 }

  *v6.i8 = vmul_f32(vzip2_s32(*a4->i8, *v6.i8), _D6);
  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  v13 = vmulq_f32(*a2, v12);
  v14 = vmulq_f32(vtrn2q_s32(vrev64q_s32(*a4), *a5), xmmword_1AFE7FFC0);
  v15 = vmulq_f32(vtrn2q_s32(vrev64q_s32(*a5), *a4), xmmword_1AFE7FFD0);
  __asm { FMOV            V18.4S, #-1.5 }

  v17 = vmulq_f32(*a3, xmmword_1AFE7FFE0);
  v18 = vmulq_f32(*a3, xmmword_1AFE7FFF0);
  v19 = vtrn2q_s32(vrev64q_s32(vaddq_f32(vaddq_f32(v15, vmulq_f32(*a4, _Q18)), v18)), vsubq_f32(vaddq_f32(v15, *a2), v18));
  v20 = vsubq_f32(vtrn2q_s32(vrev64q_s32(vsubq_f32(vaddq_f32(v14, *a2), v17)), vaddq_f32(vsubq_f32(v14, vzip1q_s32(v6, v6)), v17)), vtrn2q_s32(vrev64q_s32(v15), v13));
  *v6.i32 = a6 * a6;
  *&v6.i32[1] = (a6 * a6) * a6;
  v6.i64[1] = v6.i64[0];
  result = vaddq_f32(*a3, vaddq_f32(vmulq_n_f32(vsubq_f32(vmulq_f32(*a4, v12), v13), a6), vaddq_f32(vmulq_f32(vrev64q_s32(v6), vsubq_f32(v19, vtrn2q_s32(vrev64q_s32(v13), v14))), vmulq_f32(vdupq_lane_s64(v6.i64[0], 0), v20))));
  *a1 = result;
  return result;
}

float sub_1AF8BE694(float *a1, float *a2, float *a3, float a4)
{
  result = *a2 + ((*a3 - *a2) * a4);
  *a1 = result;
  return result;
}

float32x2_t sub_1AF8BE6B0(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float a4)
{
  result = vadd_f32(*a2, vmul_n_f32(vsub_f32(*a3, *a2), a4));
  *a1 = result;
  return result;
}

__n128 sub_1AF8BE6CC(__n128 *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v4 = vsubq_f32(*a3, *a2);
  v5 = vmuls_lane_f32(a4, v4, 2);
  result.n128_u64[0] = vaddq_f32(*a2, vmulq_n_f32(v4, a4)).u64[0];
  result.n128_f32[2] = COERCE_FLOAT(a2->i64[1]) + v5;
  result.n128_u32[3] = 0;
  *a1 = result;
  return result;
}

float32x4_t sub_1AF8BE6FC(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  result = vaddq_f32(*a2, vmulq_n_f32(vsubq_f32(*a3, *a2), a4));
  *a1 = result;
  return result;
}

int8x16_t sub_1AF8BE718(int8x16_t *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = vmulq_f32(*a2, *a3);
  v57 = *a3;
  v59 = *a2;
  v9 = 1.0;
  v10 = 1.0 - a4;
  if (vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) >= 0.0)
  {
    v31 = vsubq_f32(v6, v7);
    v32 = vmulq_f32(v31, v31);
    v33 = vaddq_f32(v6, v7);
    v34 = vmulq_f32(v33, v33);
    v35 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)))));
    v36 = v35 + v35;
    v17 = (v35 + v35) == 0.0;
    v37 = 1.0;
    if (!v17)
    {
      v37 = sinf(v36) / v36;
    }

    v38 = v37;
    v39 = vrecpe_f32(LODWORD(v37));
    v40 = vmul_f32(v39, vrecps_f32(LODWORD(v38), v39));
    LODWORD(v41) = vmul_f32(v40, vrecps_f32(LODWORD(v38), v40)).u32[0];
    if ((v10 * v36) != 0.0)
    {
      v55 = v41;
      *v40.i32 = sinf(v10 * v36);
      v41 = v55;
      v9 = *v40.i32 / (v10 * v36);
    }

    *v40.i32 = v10 * (v41 * v9);
    v42 = vdupq_lane_s32(v40, 0);
    v43 = v36 * a4;
    v44 = 1.0;
    if (v43 != 0.0)
    {
      v52 = v42;
      v56 = v41;
      v45 = sinf(v43);
      v42 = v52;
      v41 = v56;
      v44 = v45 / v43;
    }

    v30 = vmlaq_f32(vmulq_n_f32(v57, (v41 * v44) * a4), v59, v42);
  }

  else
  {
    v11 = vaddq_f32(v6, v7);
    v12 = vmulq_f32(v11, v11);
    v13 = vsubq_f32(v6, v7);
    v14 = vmulq_f32(v13, v13);
    v15 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))));
    v16 = v15 + v15;
    v17 = (v15 + v15) == 0.0;
    v18 = 1.0;
    if (!v17)
    {
      v18 = sinf(v16) / v16;
    }

    v19 = v18;
    v20 = vrecpe_f32(LODWORD(v18));
    v21 = vmul_f32(v20, vrecps_f32(LODWORD(v19), v20));
    LODWORD(v22) = vmul_f32(v21, vrecps_f32(LODWORD(v19), v21)).u32[0];
    if ((v10 * v16) != 0.0)
    {
      v53 = v22;
      v23 = sinf(v10 * v16);
      v22 = v53;
      v9 = v23 / (v10 * v16);
    }

    v24.i32[1] = v57.i32[1];
    v25 = vnegq_f32(v57);
    *v24.i32 = v10 * (v22 * v9);
    v26 = vdupq_lane_s32(v24, 0);
    v27 = v16 * a4;
    v28 = 1.0;
    if (v27 != 0.0)
    {
      v54 = v22;
      v58 = v25;
      v51 = v26;
      v29 = sinf(v27);
      v26 = v51;
      v22 = v54;
      v25 = v58;
      v28 = v29 / v27;
    }

    v30 = vmlaq_f32(vmulq_n_f32(v25, (v22 * v28) * a4), v59, v26);
  }

  v46 = vmulq_f32(v30, v30);
  *v46.i8 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
  v47 = vdupq_lane_s32(vadd_f32(*v46.i8, vdup_lane_s32(*v46.i8, 1)), 0);
  v48 = vrsqrteq_f32(v47);
  v49 = vmulq_f32(v48, vrsqrtsq_f32(v47, vmulq_f32(v48, v48)));
  result = vbslq_s8(vceqzq_f32(v47), v30, vmulq_f32(vmulq_f32(v49, vrsqrtsq_f32(v47, vmulq_f32(v49, v49))), v30));
  *a1 = result;
  return result;
}

uint64_t sub_1AF8BE980()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

void *sub_1AF8BEA00(uint64_t *a1, void *a2, float a3)
{
  v7 = *(v3 + 40);
  v8 = sub_1AF8BE284(v7, *a1, a3);
  if (v10)
  {
    result = memmove(a2, (*(v3 + 16) + (*(v7 + 16) - 1) * *(v3 + 32)), *(v3 + 32));
    v12 = *(v7 + 16) - 1;
  }

  else if (v8)
  {
    v13 = v8 - 1;
    v14 = *(v7 + 32 + 4 * (v8 - 1));
    v9.n128_f32[0] = (a3 - v14) / (*(v7 + 32 + 4 * v8) - v14);
    v15 = *(v3 + 16);
    if (*(v3 + 80) == 1)
    {
      if (v13 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 - 2;
      }

      if (v8 + 1 >= *(v7 + 16))
      {
        v17 = v8;
      }

      else
      {
        v17 = v8 + 1;
      }

      v18 = v8;
      result = (*(v3 + 64))(a2, v15 + *(v3 + 32) * v16, v15 + *(v3 + 32) * v13, v15 + *(v3 + 32) * v8, v15 + *(v3 + 32) * v17, v9);
    }

    else
    {
      v18 = v8;
      result = (*(v3 + 48))(a2, v15 + *(v3 + 32) * v13, v15 + *(v3 + 32) * v8, v9.n128_f32[0]);
    }

    v12 = v18;
  }

  else
  {
    result = memmove(a2, *(v3 + 16), *(v3 + 32));
    v12 = 0;
  }

  *a1 = v12;
  return result;
}

uint64_t sub_1AF8BEB34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7365756C6176;
  if (v2 != 1)
  {
    v4 = 0x6576727563;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73656D6974;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7365756C6176;
  if (*a2 != 1)
  {
    v8 = 0x6576727563;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656D6974;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8BEC24()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8BECBC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8BED40()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8BEDD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8BF22C();
  *a1 = result;
  return result;
}

void sub_1AF8BEE04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7365756C6176;
  if (v2 != 1)
  {
    v5 = 0x6576727563;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF8BEE58()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6576727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D6974;
  }
}

uint64_t sub_1AF8BEEA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8BF22C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8BEED0(uint64_t a1)
{
  v2 = sub_1AF8C00BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8BEF0C(uint64_t a1)
{
  v2 = sub_1AF8C00BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8BEF48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  sub_1AF8C01B8(0, &qword_1EB63FF58, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v16 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8C00BC();
  sub_1AFDFF3F8();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v17 = v18;
  v19 = 2;
  sub_1AF8C0110();
  sub_1AF8C021C(&qword_1EB63F018);
  sub_1AFDFE918();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF8BF0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF8BFDE4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1AF8BF16C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = *(a1 + 16);
  if (v8 == *(a5 + 16))
  {
    if (v8)
    {
      v13 = a1 == a5;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = (a1 + 32);
      v15 = (a5 + 32);
      while (*v14 == *v15)
      {
        ++v15;
        ++v14;
        if (!--v8)
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_9:
    if (sub_1AFB7B128(a2, a6))
    {
      if (a3)
      {
        if (!a7 || (sub_1AFB7BBA4(a3, a7) & 1) == 0)
        {
          return 0;
        }
      }

      else if (a7)
      {
        return 0;
      }

      if (a4 == a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AF8BF22C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

char *sub_1AF8BF278(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v4 = (a3 + 49);
    v5 = *(a3 + 16) + 1;
    while (--v5)
    {
      v6 = *v4;
      v4 += 24;
      if (v6 != 1)
      {
        return sub_1AF8BDFB0(a1, a2, a3, a4, 0.033333);
      }
    }

    return a1;
  }

  else
  {

    return a1;
  }
}

char *sub_1AF8BF334(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v53 = *(a2 + 16);
  v56 = *(a6 + 16);
  v44 = a2 + 32;
  v55 = *(a10 + 16);
  v43 = a6 + 32;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v54 = *(a14 + 16);
  while (1)
  {
    if (v22 < v53)
    {
      v25 = *(v44 + 4 * v22);
      goto LABEL_12;
    }

    if (v21 >= v56)
    {
      break;
    }

    v25 = 3.4028e38;
LABEL_11:
    v18 = v21;
LABEL_12:
    if (v18 >= v56)
    {
      v26 = 3.4028e38;
    }

    else
    {
      v26 = *(v43 + 4 * v18);
    }

    if (v17 >= v55)
    {
      v27 = 3.4028e38;
    }

    else
    {
      v27 = *(a10 + 32 + 4 * v17);
    }

    if (v16 >= v54)
    {
      v28 = 3.4028e38;
    }

    else
    {
      v28 = *(a14 + 32 + 4 * v16);
    }

    if (v26 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v26;
    }

    if (v27 < v29)
    {
      v29 = v27;
    }

    if (v28 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    v60 = sub_1AFBFCB44(a1, a2, a3, a4, v30).u32[0];
    v59 = sub_1AFBFCB44(a5, a6, a7, a8, v30).u32[0];
    v58 = sub_1AFBFCB44(a9, a10, a11, a12, v30).u32[0];
    v57 = sub_1AFBFCB44(a13, a14, a15, a16, v30).u32[0];
    if (v25 == v30)
    {
      ++v22;
    }

    v61 = v22;
    if (v26 == v30)
    {
      v31 = v18 + 1;
    }

    else
    {
      v31 = v18;
    }

    if (v26 == v30)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v21;
    }

    if (v27 == v30)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v17;
    }

    if (v27 == v30)
    {
      v34 = v17 + 1;
    }

    else
    {
      v34 = v20;
    }

    if (v28 == v30)
    {
      v35 = v16 + 1;
    }

    else
    {
      v35 = v16;
    }

    if (v28 == v30)
    {
      v36 = v16 + 1;
    }

    else
    {
      v36 = v19;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1AF41FDF8(0, *(v24 + 2) + 1, 1, v24);
    }

    v38 = *(v24 + 2);
    v37 = *(v24 + 3);
    if (v38 >= v37 >> 1)
    {
      v24 = sub_1AF41FDF8(v37 > 1, v38 + 1, 1, v24);
    }

    *(v24 + 2) = v38 + 1;
    *&v24[4 * v38 + 32] = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1AF42053C(0, *(v23 + 2) + 1, 1, v23);
    }

    v40 = *(v23 + 2);
    v39 = *(v23 + 3);
    if (v40 >= v39 >> 1)
    {
      v23 = sub_1AF42053C(v39 > 1, v40 + 1, 1, v23);
    }

    *&v41 = __PAIR64__(v59, v60);
    *(&v41 + 1) = __PAIR64__(v57, v58);
    *(v23 + 2) = v40 + 1;
    *&v23[16 * v40 + 32] = v41;
    v16 = v35;
    v17 = v33;
    v18 = v31;
    v19 = v36;
    v20 = v34;
    v21 = v32;
    v22 = v61;
  }

  if (v20 < v55)
  {
    v25 = 3.4028e38;
LABEL_10:
    v17 = v20;
    goto LABEL_11;
  }

  if (v19 < v54)
  {
    v25 = 3.4028e38;
    v16 = v19;
    goto LABEL_10;
  }

  return v23;
}

uint64_t sub_1AF8BF6C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 80) = 1;
  *(v3 + 32) = 16;
  v6 = sub_1AF8BE6FC;
  if (a3 == 1)
  {
    v6 = sub_1AF8BE718;
  }

  *(v3 + 48) = v6;
  *(v3 + 56) = 0;
  *(v3 + 64) = sub_1AF8BE598;
  *(v3 + 72) = 0;
  if (a3 == 1)
  {
    *(v3 + 80) = 0;
  }

  v7 = 16 * *(a1 + 16);
  v8 = swift_slowAlloc();
  memcpy(v8, (a1 + 32), v7);
  *(v3 + 16) = v8;
  *(v3 + 24) = &v8[v7];
  *(v3 + 40) = a2;
  return v3;
}

char *sub_1AF8BF790(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *(a6 + 16);
  v43 = *(a2 + 16);
  v44 = *(a10 + 16);
  v34 = a2 + 32;
  v33 = a6 + 32;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v16 < v43)
    {
      v20 = *(v34 + 4 * v16);
      if (v13 < v17)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

    if (v15 < v17)
    {
      v20 = 3.4028e38;
      goto LABEL_9;
    }

    if (v14 >= v44)
    {
      return v18;
    }

    v20 = 3.4028e38;
    v12 = v14;
LABEL_9:
    v13 = v15;
    if (v15 < v17)
    {
LABEL_4:
      v21 = *(v33 + 4 * v13);
      goto LABEL_11;
    }

LABEL_10:
    v21 = 3.4028e38;
LABEL_11:
    if (v12 >= v44)
    {
      v22 = 3.4028e38;
    }

    else
    {
      v22 = *(a10 + 32 + 4 * v12);
    }

    if (v21 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    if (v22 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    v47 = sub_1AFBFCB44(a1, a2, a3, a4, v24).u32[0];
    v46 = sub_1AFBFCB44(a5, a6, a7, a8, v24).u32[0];
    v45 = sub_1AFBFCB44(a9, a10, a11, a12, v24).u32[0];
    if (v20 == v24)
    {
      ++v16;
    }

    if (v21 == v24)
    {
      v25 = v13 + 1;
    }

    else
    {
      v25 = v13;
    }

    if (v21 == v24)
    {
      v15 = v13 + 1;
    }

    if (v22 == v24)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v12;
    }

    if (v22 == v24)
    {
      v14 = v12 + 1;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AF41FDF8(0, *(v19 + 2) + 1, 1, v19);
    }

    v28 = *(v19 + 2);
    v27 = *(v19 + 3);
    if (v28 >= v27 >> 1)
    {
      v19 = sub_1AF41FDF8(v27 > 1, v28 + 1, 1, v19);
    }

    *(v19 + 2) = v28 + 1;
    *&v19[4 * v28 + 32] = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1AF42250C(0, *(v18 + 2) + 1, 1, v18);
    }

    v30 = *(v18 + 2);
    v29 = *(v18 + 3);
    if (v30 >= v29 >> 1)
    {
      v18 = sub_1AF42250C(v29 > 1, v30 + 1, 1, v18);
    }

    *&v31 = __PAIR64__(v46, v47);
    *(&v31 + 1) = v45;
    *(v18 + 2) = v30 + 1;
    *&v18[16 * v30 + 32] = v31;
    v12 = v26;
    v13 = v25;
  }
}

uint64_t sub_1AF8BFA5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = 1;
  *(v2 + 32) = 16;
  *(v2 + 48) = sub_1AF8BE6CC;
  *(v2 + 56) = 0;
  *(v2 + 64) = sub_1AF8BE444;
  *(v2 + 72) = 0;
  v5 = 16 * *(a1 + 16);
  v6 = swift_slowAlloc();
  memcpy(v6, (a1 + 32), v5);
  *(v2 + 16) = v6;
  *(v2 + 24) = &v6[v5];
  *(v2 + 40) = a2;
  return v2;
}

char *sub_1AF8BFAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __n128 a7)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a2 + 16);
  v10 = *(a4 + 16);
  v30 = a4 + 32;
  v31 = a2 + 32;
  v11 = a1 + 32;
  v12 = a3 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  if (v9 <= 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v15 = *(v31 + 4 * v8);
  if (v7 >= v10)
  {
    v16 = 3.4028e38;
    v17 = v15 < 3.4028e38;
    if (v15 == 3.4028e38)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  while (1)
  {
    v16 = *(v30 + 4 * v7);
    v17 = v15 < v16;
    if (v15 == v16)
    {
LABEL_10:
      a7.n128_u32[0] = *(v11 + 4 * v8);
      a7.n128_u32[1] = *(v12 + 4 * v7);
      v33 = a7;
      ++v8;
      ++v7;
      goto LABEL_11;
    }

LABEL_4:
    if (v17)
    {
      a7.n128_u32[0] = *(v11 + 4 * v8);
      v32 = a7;
      v18 = sub_1AFBFCB44(a3, a4, a5, a6, v15).u32[0];
      v19 = v32;
      v19.n128_u32[1] = v18;
      v33 = v19;
      ++v8;
    }

    else
    {
      v20.n128_u32[0] = sub_1AFBFCB44(a3, a4, a5, a6, v16).u32[0];
      v20.n128_u32[1] = *(v11 + 4 * v8);
      v33 = v20;
      ++v7;
      v15 = v16;
    }

LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AF41FDF8(0, *(v14 + 2) + 1, 1, v14);
    }

    v22 = *(v14 + 2);
    v21 = *(v14 + 3);
    if (v22 >= v21 >> 1)
    {
      v14 = sub_1AF41FDF8(v21 > 1, v22 + 1, 1, v14);
    }

    *(v14 + 2) = v22 + 1;
    *&v14[4 * v22 + 32] = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AF42242C(0, *(v13 + 2) + 1, 1, v13);
    }

    v24 = *(v13 + 2);
    v23 = *(v13 + 3);
    if (v24 >= v23 >> 1)
    {
      v13 = sub_1AF42242C(v23 > 1, v24 + 1, 1, v13);
    }

    *(v13 + 2) = v24 + 1;
    a7 = v33;
    *&v13[8 * v24 + 32] = v33.n128_u64[0];
    if (v8 < v9)
    {
      goto LABEL_2;
    }

LABEL_7:
    if (v7 >= v10)
    {
      return v13;
    }

    v15 = 3.4028e38;
  }
}

uint64_t sub_1AF8BFD34(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = 1;
  *(v2 + 32) = 8;
  *(v2 + 48) = sub_1AF8BE6B0;
  *(v2 + 56) = 0;
  *(v2 + 64) = sub_1AF8BE368;
  *(v2 + 72) = 0;
  v5 = 8 * *(a1 + 16);
  v6 = swift_slowAlloc();
  memcpy(v6, (a1 + 32), v5);
  *(v2 + 16) = v6;
  *(v2 + 24) = &v6[v5];
  *(v2 + 40) = a2;
  return v2;
}

uint64_t sub_1AF8BFDE4(void *a1)
{
  sub_1AF8C01B8(0, &qword_1EB633128, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF8C00BC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF695174(v10, v11) > 1093)
    {
      sub_1AF8C0110();
      v14 = 2;
      sub_1AF8C021C(qword_1ED724010);
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v9 = v13;
    }

    else
    {
      sub_1AF8C0168();
      v14 = 1;
      sub_1AF80A8D8();
      sub_1AFDFE768();
      v9 = v13;
      v14 = 0;
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF8C00BC()
{
  result = qword_1EB633758;
  if (!qword_1EB633758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633758);
  }

  return result;
}

void sub_1AF8C0110()
{
  if (!qword_1ED72F9E0[0])
  {
    v0 = type metadata accessor for Curve();
    if (!v1)
    {
      atomic_store(v0, qword_1ED72F9E0);
    }
  }
}

void sub_1AF8C0168()
{
  if (!qword_1ED723210)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723210);
    }
  }
}

void sub_1AF8C01B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF8C00BC();
    v7 = a3(a1, &type metadata for KeyframeTimeline.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF8C021C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF8C0110();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8C0274()
{
  result = qword_1EB63FF60;
  if (!qword_1EB63FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF60);
  }

  return result;
}

unint64_t sub_1AF8C02CC()
{
  result = qword_1EB633748;
  if (!qword_1EB633748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633748);
  }

  return result;
}

unint64_t sub_1AF8C0324()
{
  result = qword_1EB633750;
  if (!qword_1EB633750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633750);
  }

  return result;
}

void sub_1AF8C0378(id a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v82 = *(a3 + 100);
  v84 = *(a3 + 96);
  v78 = *(a3 + 104);
  v80 = *(a3 + 102);
  v74 = *(a3 + 110);
  v76 = *(a3 + 108);
  v70 = *(a3 + 116);
  v72 = *(a3 + 112);
  v66 = *(a3 + 120);
  v68 = *(a3 + 118);
  v62 = *(a3 + 126);
  v64 = *(a3 + 124);
  v58 = *(a3 + 132);
  v60 = *(a3 + 128);
  v54 = *(a3 + 136);
  v56 = *(a3 + 134);
  v50 = *(a3 + 142);
  v52 = *(a3 + 140);
  v46 = *(a3 + 148);
  v48 = *(a3 + 144);
  v42 = *(a3 + 152);
  v44 = *(a3 + 150);
  v38 = *(a3 + 158);
  v40 = *(a3 + 156);
  v34 = *(a3 + 164);
  v36 = *(a3 + 160);
  v5 = &v90;
  v30 = *(a3 + 168);
  v32 = *(a3 + 166);
  v26 = a3;
  v27 = *(a3 + 174);
  v28 = *(a3 + 172);
  do
  {
    v88 = v84;
    v89 = v82;
    v90 = v80;
    v91 = v78;
    v92 = v76;
    v93 = v74;
    v94 = v72;
    v95 = v70;
    v96 = v68;
    v97 = v66;
    v98 = v64;
    v99 = v62;
    v100 = v60;
    v101 = v58;
    v102 = v56;
    v103 = v54;
    v104 = v52;
    v105 = v50;
    v106 = v48;
    v107 = v46;
    v108 = v44;
    v109 = v42;
    v110 = v40;
    v111 = v38;
    v112 = v36;
    v113 = v34;
    v114 = v32;
    v115 = v30;
    v116 = v28;
    v117 = v27;
    v6 = *(v5 - 3);
    v86 = *(v5 - 1);
    v7 = *v5;
    v5 += 4;
    v8 = v4 + 1;
    v9 = [a1 attributes];
    v10 = [v9 objectAtIndexedSubscript_];

    [v10 setBufferIndex_];
    v11 = [a1 attributes];
    v12 = [v11 objectAtIndexedSubscript_];

    [v12 setOffset_];
    v13 = [a1 attributes];
    v14 = [v13 objectAtIndexedSubscript_];

    [v14 setFormat_];
    v4 = v8;
  }

  while (v8 != 10);
  v85 = *(v26 + 20);
  v87 = *(v26 + 16);
  v81 = *(v26 + 24);
  v83 = *(v26 + 22);
  v77 = *(v26 + 30);
  v79 = *(v26 + 28);
  v73 = *(v26 + 36);
  v75 = *(v26 + 32);
  v69 = *(v26 + 40);
  v71 = *(v26 + 38);
  v65 = *(v26 + 46);
  v67 = *(v26 + 44);
  v61 = *(v26 + 52);
  v63 = *(v26 + 48);
  v57 = *(v26 + 56);
  v59 = *(v26 + 54);
  v53 = *(v26 + 62);
  v55 = *(v26 + 60);
  v49 = *(v26 + 68);
  v51 = *(v26 + 64);
  v45 = *(v26 + 72);
  v47 = *(v26 + 70);
  v41 = *(v26 + 78);
  v43 = *(v26 + 76);
  v37 = *(v26 + 84);
  v39 = *(v26 + 80);
  v15 = &v90;
  v33 = *(v26 + 88);
  v35 = *(v26 + 86);
  v29 = *(v26 + 94);
  v31 = *(v26 + 92);
  for (i = 21; i != 31; ++i)
  {
    v88 = v87;
    v89 = v85;
    v90 = v83;
    v91 = v81;
    v92 = v79;
    v93 = v77;
    v94 = v75;
    v95 = v73;
    v96 = v71;
    v97 = v69;
    v98 = v67;
    v99 = v65;
    v100 = v63;
    v101 = v61;
    v102 = v59;
    v103 = v57;
    v104 = v55;
    v105 = v53;
    v106 = v51;
    v107 = v49;
    v108 = v47;
    v109 = v45;
    v110 = v43;
    v111 = v41;
    v112 = v39;
    v113 = v37;
    v114 = v35;
    v115 = v33;
    v116 = v31;
    v117 = v29;
    v17 = *(v15 - 3);
    v18 = *(v15 - 1);
    v19 = *v15;
    v15 += 4;
    v20 = [a1 layouts];
    v21 = [v20 objectAtIndexedSubscript_];

    [v21 setStepFunction_];
    v22 = [a1 layouts];
    v23 = [v22 objectAtIndexedSubscript_];

    [v23 setStepRate_];
    v24 = [a1 layouts];
    v25 = [v24 objectAtIndexedSubscript_];

    [v25 setStride_];
  }
}

uint64_t sub_1AF8C08C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  if (v2 != 1)
  {
    v4 = 0x656469727473;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74657366666FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x656469727473;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74657366666FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8C09AC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C0A40()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8C0AC0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C0B50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8C7908();
  *a1 = result;
  return result;
}

void sub_1AF8C0B80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x656469727473;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74657366666FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF8C0BD0()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x656469727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74657366666FLL;
  }
}

uint64_t sub_1AF8C0C1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8C7908();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8C0C44(uint64_t a1)
{
  v2 = sub_1AF8C965C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8C0C80(uint64_t a1)
{
  v2 = sub_1AF8C965C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8C0CBC(void *a1)
{
  sub_1AF8C8D34(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v31 - v4;
  v6 = sub_1AFDFE488();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF8CAEC4(0, &unk_1EB63FF90, sub_1AF8C965C, &type metadata for MeshBuffer.CodingKeys, MEMORY[0x1E69E6F58]);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v31 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8C965C();
  v33 = v14;
  sub_1AFDFF3F8();
  sub_1AF441150(a1, a1[3]);
  v15 = sub_1AFDFF3E8();
  sub_1AFDFE478();
  (*(v7 + 48))(v5, 1, v6);
  (*(v7 + 32))(v10, v5, v6);
  if (!*(v15 + 16) || (v16 = sub_1AF419DC8(v10), (v17 & 1) == 0))
  {

    (*(v7 + 8))(v10, v6);
    goto LABEL_6;
  }

  sub_1AF0D5A54(*(v15 + 56) + 32 * v16, &v36);
  (*(v7 + 8))(v10, v6);

  type metadata accessor for MeshBinaryData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v20 = v35;
    v21 = v33;
    sub_1AF8C96B0();
    swift_allocError();
    *v22 = 0xD000000000000018;
    v22[1] = 0x80000001AFF394F0;
    swift_willThrow();
    return (*(v34 + 8))(v21, v20);
  }

  v18 = v35;
  v19 = v32;
  v24 = *v32;
  [swift_unknownObjectRetain() contents];
  v25 = v24;
  v26 = *(v19 + 16);
  if (v26)
  {
    sub_1AFDFC198();
  }

  v27 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) - v26;
  if (v27 > 0)
  {
    v28 = sub_1AFDFD488();
    *(v28 + 16) = v27;
    bzero((v28 + 32), v27);
    sub_1AFDFC198();
  }

  LOBYTE(v36) = 0;
  v29 = v33;
  v30 = v31[1];
  sub_1AFDFE8F8();
  if (!v30)
  {
    LOBYTE(v36) = 1;
    sub_1AFDFE8F8();
    v36 = *(v32 + 24);
    v37 = *(v32 + 32);
    LOBYTE(v38) = 2;
    sub_1AF8CACDC(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1AF8C9704(&qword_1EB640200);
    sub_1AFDFE918();
  }

  (*(v34 + 8))(v29, v18);
}

unint64_t sub_1AF8C1234()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v1, v2);
  return 0xD000000000000010;
}

double sub_1AF8C12B0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8C90DC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF8C1310()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*v0);
  MEMORY[0x1B271ACB0](*(v0 + 8));
  MEMORY[0x1B271ACB0](*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    sub_1AFDFF2A8();
  }

  else
  {
    v1 = *(v0 + 24);
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v1);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C13AC()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x1B271ACB0](*v0);
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v3);
  if (v4 == 1)
  {
    return sub_1AFDFF2A8();
  }

  sub_1AFDFF2A8();
  return MEMORY[0x1B271ACB0](v2);
}

uint64_t sub_1AF8C1424()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v4);
  sub_1AFDFF2A8();
  if (v5 != 1)
  {
    MEMORY[0x1B271ACB0](v3);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C14C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AF8C76D8(v5, v7) & 1;
}

uint64_t sub_1AF8C1510()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x3A726566667562, 0xE700000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x3A74657366666F20, 0xE800000000000000);
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0x3A657A697320, 0xE600000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](0x3A65646972747320, 0xE800000000000000);
  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  return 0;
}

uint64_t sub_1AF8C16A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7235949;
    v6 = 7889261;
    if (a1 != 8)
    {
      v6 = 0x44664F6C6576656CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x756F437865646E69;
    if (a1 != 5)
    {
      v7 = 0x7479427865646E69;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x766974696D697270;
    v2 = 0x6F43786574726576;
    v3 = 0x6C6169726574616DLL;
    if (a1 != 3)
    {
      v3 = 0x73656369646E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7453786574726576;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

BOOL sub_1AF8C180C(__n128 *a1, __n128 *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_1AF8C7738(v13, v14);
}

uint64_t sub_1AF8C18A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AF8C16A4(*a1);
  v5 = v4;
  if (v3 == sub_1AF8C16A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8C1928()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF8C16A4(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C198C()
{
  sub_1AF8C16A4(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF8C19E0()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF8C16A4(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C1A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8C7BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8C1A70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF8C16A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF8C1AB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8C7BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8C1AE0(uint64_t a1)
{
  v2 = sub_1AF8CA744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8C1B1C(uint64_t a1)
{
  v2 = sub_1AF8CA744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8C1B58(void *a1)
{
  v3 = v1;
  sub_1AF8CAEC4(0, &unk_1EB63FFB0, sub_1AF8CA744, &type metadata for MeshPart.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8CA744();
  sub_1AFDFF3F8();
  v17[0] = 0;
  sub_1AFDFE908();
  if (!v2)
  {
    if (*(v3 + 32))
    {
      v12 = *(v3 + 64);
      v13 = *(v3 + 56);
      *v17 = *(v3 + 32);
      *&v17[8] = *(v3 + 40);
      v18 = v13;
      v19 = v12 & 1;
      v20 = 4;
      sub_1AF8CA9A0();
      swift_unknownObjectRetain();
      sub_1AFDFE918();
      v17[0] = 5;
      sub_1AFDFE8F8();
      v17[0] = 6;
      sub_1AFDFE8F8();
      swift_unknownObjectRelease();
    }

    if (*(v3 + 16))
    {
      v17[0] = 2;
      sub_1AFDFE8F8();
    }

    if (*(v3 + 8))
    {
      v17[0] = 1;
      sub_1AFDFE8F8();
    }

    v17[0] = 3;
    sub_1AFDFE8F8();
    v14 = *(v3 + 144);
    v15 = *(v3 + 160);
    v16 = v14;
    *v17 = vsubq_f32(v14, v15);
    v20 = 7;
    sub_1AF8CAEC4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF8CA888(&qword_1ED72F758);
    sub_1AFDFE918();
    *v17 = vaddq_f32(v16, v15);
    v20 = 8;
    sub_1AFDFE918();
    if (*(*(v3 + 88) + 16))
    {
      *v17 = *(v3 + 88);
      v20 = 9;
      sub_1AF8CACDC(0, &qword_1EB630DB8, &type metadata for MeshBuffer, MEMORY[0x1E69E62F8]);
      sub_1AF8CA904();
      sub_1AFDFE918();
    }
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1AF8C1F8C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8C9F08(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1AF8C2008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746152706574735FLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6E7546706574735FLL;
    v4 = 0xED00006E6F697463;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6564697274735FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x746152706574735FLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6E7546706574735FLL;
    v8 = 0xED00006E6F697463;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6564697274735FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8C212C()
{
  v1 = 0x746152706574735FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E7546706574735FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564697274735FLL;
  }
}

uint64_t sub_1AF8C2198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8C7954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8C21C0(uint64_t a1)
{
  v2 = sub_1AF8CAE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8C21FC(uint64_t a1)
{
  v2 = sub_1AF8CAE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8C22EC(void *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void))
{
  sub_1AF8CAEC4(0, a3, a4, a5, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v16 - v12;
  sub_1AF441150(a1, a1[3]);
  a6();
  sub_1AFDFF3F8();
  v19 = 0;
  v14 = v16[1];
  sub_1AFDFE988();
  if (!v14)
  {
    v18 = 1;
    sub_1AFDFE978();
    v17 = 2;
    sub_1AFDFE978();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1AF8C2490(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74616D726F665FLL;
  if (v2 != 1)
  {
    v5 = 0x497265666675625FLL;
    v4 = 0xEC0000007865646ELL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x74657366666F5FLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x74616D726F665FLL;
  if (*a2 != 1)
  {
    v8 = 0x497265666675625FLL;
    v3 = 0xEC0000007865646ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74657366666F5FLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8C25A0()
{
  v1 = 0x74616D726F665FLL;
  if (*v0 != 1)
  {
    v1 = 0x497265666675625FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74657366666F5FLL;
  }
}

uint64_t sub_1AF8C2604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8C7A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8C262C(uint64_t a1)
{
  v2 = sub_1AF8CAE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8C2668(uint64_t a1)
{
  v2 = sub_1AF8CAE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AF8C272C@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, unint64_t *a6@<X8>)
{
  result = sub_1AF8C9D10(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

double sub_1AF8C2800()
{
  *(v0 + 16) = 0x1000100000000;
  *(v0 + 24) = 0x1000100000000;
  *(v0 + 32) = 0x1000100000000;
  *(v0 + 40) = 0x1000100000000;
  *(v0 + 48) = 0x1000100000000;
  *(v0 + 56) = 0x1000100000000;
  *(v0 + 64) = 0x1000100000000;
  *(v0 + 72) = 0x1000100000000;
  *(v0 + 80) = 0x1000100000000;
  *(v0 + 88) = 0x1000100000000;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t sub_1AF8C2834()
{
  for (i = 0; i != 80; i += 8)
  {
    sub_1AFDFF2B8();
    sub_1AFDFF2C8();
    sub_1AFDFF2B8();
  }

  for (j = 0; j != 80; j += 8)
  {
    sub_1AFDFF2B8();
    sub_1AFDFF2B8();
    result = sub_1AFDFF2C8();
  }

  return result;
}

uint64_t sub_1AF8C2B98()
{
  sub_1AFDFF288();
  sub_1AF8C2834();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C2C00()
{
  sub_1AFDFF288();
  sub_1AF8C2834();
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8C2C40()
{
  v1 = 0;
  v93 = 0xD000000000000019;
  v94 = 0x80000001AFF39510;
  v65 = *(v0 + 100);
  v66 = *(v0 + 96);
  v63 = *(v0 + 104);
  v64 = *(v0 + 102);
  v61 = *(v0 + 110);
  v62 = *(v0 + 108);
  v57 = *(v0 + 116);
  v59 = *(v0 + 112);
  v53 = *(v0 + 120);
  v55 = *(v0 + 118);
  v49 = *(v0 + 126);
  v51 = *(v0 + 124);
  v45 = *(v0 + 132);
  v47 = *(v0 + 128);
  v41 = *(v0 + 136);
  v43 = *(v0 + 134);
  v37 = *(v0 + 142);
  v39 = *(v0 + 140);
  v33 = *(v0 + 148);
  v35 = *(v0 + 144);
  v29 = *(v0 + 152);
  v31 = *(v0 + 150);
  v25 = *(v0 + 158);
  v27 = *(v0 + 156);
  v21 = *(v0 + 164);
  v23 = *(v0 + 160);
  v2 = &v67 + 6;
  v17 = *(v0 + 168);
  v19 = *(v0 + 166);
  v15 = *(v0 + 172);
  v3 = *(v0 + 174);
  do
  {
    LODWORD(v67) = v66;
    WORD2(v67) = v65;
    HIWORD(v67) = v64;
    LODWORD(v68) = v63;
    WORD2(v68) = v62;
    HIWORD(v68) = v61;
    v69 = v59;
    v70 = v57;
    v71 = v55;
    v72 = v53;
    v73 = v51;
    v74 = v49;
    v75 = v47;
    v76 = v45;
    v77 = v43;
    v78 = v41;
    v79 = v39;
    v80 = v37;
    v81 = v35;
    v82 = v33;
    v83 = v31;
    v84 = v29;
    v85 = v27;
    v86 = v25;
    v87 = v23;
    v88 = v21;
    v89 = v19;
    v90 = v17;
    v91 = v15;
    v92 = v3;
    if (*(v2 - 1))
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x5B3A747461, 0xE500000000000000);
      type metadata accessor for vfx_vertex_attribute(0);
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0x726566667562205DLL, 0xEA00000000005B3ALL);
      v4 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v4);

      MEMORY[0x1B2718AE0](0x74657366666F205DLL, 0xE90000000000003ALL);
      v5 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v5);

      MEMORY[0x1B2718AE0](0x3A74616D726F6620, 0xE800000000000000);
      v6 = sub_1AF4715F0();
      MEMORY[0x1B2718AE0](v6);

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v67, v68);
    }

    ++v1;
    v2 += 8;
  }

  while (v1 != 10);
  MEMORY[0x1B2718AE0](0x3A73726566667542, 0xE90000000000000ALL);
  v7 = 0;
  v58 = *(v0 + 36);
  v60 = *(v0 + 32);
  v54 = *(v0 + 40);
  v56 = *(v0 + 38);
  v50 = *(v0 + 46);
  v52 = *(v0 + 44);
  v46 = *(v0 + 52);
  v48 = *(v0 + 48);
  v42 = *(v0 + 56);
  v44 = *(v0 + 54);
  v38 = *(v0 + 62);
  v40 = *(v0 + 60);
  v34 = *(v0 + 68);
  v36 = *(v0 + 64);
  v30 = *(v0 + 72);
  v32 = *(v0 + 70);
  v26 = *(v0 + 78);
  v28 = *(v0 + 76);
  v22 = *(v0 + 84);
  v24 = *(v0 + 80);
  v18 = *(v0 + 88);
  v20 = *(v0 + 86);
  v8 = &v67 + 6;
  v16 = *(v0 + 92);
  v9 = *(v0 + 94);
  do
  {
    v69 = v60;
    v70 = v58;
    v71 = v56;
    v72 = v54;
    v73 = v52;
    v74 = v50;
    v75 = v48;
    v76 = v46;
    v77 = v44;
    v78 = v42;
    v79 = v40;
    v80 = v38;
    v81 = v36;
    v82 = v34;
    v83 = v32;
    v84 = v30;
    v85 = v28;
    v86 = v26;
    v87 = v24;
    v88 = v22;
    v89 = v20;
    v90 = v18;
    v91 = v16;
    v92 = v9;
    v8 += 8;
    HIDWORD(v67) = 0;
    v68 = 0xE000000000000000;
    sub_1AFDFE218();

    v67 = 0x5B3A726566667562;
    v68 = 0xE800000000000000;
    v10 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0x656469727473205DLL, 0xE90000000000003ALL);
    v11 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](0x6E75467065747320, 0xEE003A6E6F697463);
    v12 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](0x7461527065747320, 0xEA00000000003A65);
    v13 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v13);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v67, v68);

    ++v7;
  }

  while (v7 != 10);
  return v93;
}

uint64_t sub_1AF8C32F8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 144);
  v19[2] = *(*a1 + 128);
  v19[3] = v4;
  v19[4] = v2[10];
  v5 = v2[7];
  v19[0] = v2[6];
  v19[1] = v5;
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[10];
  v20[3] = v3[9];
  v20[4] = v8;
  v9 = v3[8];
  v20[1] = v7;
  v20[2] = v9;
  v20[0] = v6;
  if (sub_1AF449D34(v19, v20))
  {
    v10 = v2[4];
    v17[2] = v2[3];
    v17[3] = v10;
    v11 = v2[5];
    v12 = v2[2];
    v17[0] = v2[1];
    v17[1] = v12;
    v13 = v3[4];
    v18[2] = v3[3];
    v18[3] = v13;
    v18[4] = v3[5];
    v14 = v3[1];
    v18[1] = v3[2];
    v17[4] = v11;
    v18[0] = v14;
    v15 = sub_1AF449D34(v17, v18);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_1AF8C33B4()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED722B20 = result;
  return result;
}

void *sub_1AF8C33E8()
{
  result = sub_1AF43BFAC(MEMORY[0x1E69E7CC0]);
  off_1ED722B08 = result;
  return result;
}

BOOL sub_1AF8C3410(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v3 = a3[54];
  v4 = a3[58];
  v5 = a3[62];
  v6 = a3[66];
  v7 = a3[70];
  v8 = a3[74];
  v9 = a3[78];
  v10 = a3[82];
  v11 = a3[86];
  v13[2] = a3[50];
  v13[6] = v3;
  v13[10] = v4;
  v13[14] = v5;
  v13[18] = v6;
  v13[22] = v7;
  v13[26] = v8;
  v13[30] = v9;
  v13[34] = v10;
  v13[38] = v11;
  return v13[4 * a1 + 2] != 0;
}

uint64_t sub_1AF8C3480(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7475626972747461;
  }

  else
  {
    v3 = 0x73726566667562;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v5 = 0x7475626972747461;
  }

  else
  {
    v5 = 0x73726566667562;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8C352C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C35B4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8C3628()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C36AC@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AF8C370C(uint64_t *a1@<X8>)
{
  v2 = 0x73726566667562;
  if (*v1)
  {
    v2 = 0x7475626972747461;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF8C3750()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x73726566667562;
  }
}

uint64_t sub_1AF8C3790@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AF8C37F4(uint64_t a1)
{
  v2 = sub_1AF8CA9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8C3830(uint64_t a1)
{
  v2 = sub_1AF8CA9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8C386C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AF8CAEC4(0, &qword_1EB63FFD0, sub_1AF8CA9F4, &type metadata for VertexLayout.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8CA9F4();
  sub_1AFDFF3F8();
  LOBYTE(v61) = 0;
  v30 = v7;
  v29 = v10;
  sub_1AFDFE838();
  v11 = 0;
  v12 = *(a3 + 16);
  v93 = *(a3 + 20);
  v94 = v12;
  v13 = *(a3 + 22);
  v57 = *(a3 + 24);
  v58 = v13;
  v56 = *(a3 + 28);
  v55 = *(a3 + 30);
  v54 = *(a3 + 32);
  v53 = *(a3 + 36);
  v52 = *(a3 + 38);
  v51 = *(a3 + 40);
  v50 = *(a3 + 44);
  v49 = *(a3 + 46);
  v48 = *(a3 + 48);
  v47 = *(a3 + 52);
  v46 = *(a3 + 54);
  v45 = *(a3 + 56);
  v44 = *(a3 + 60);
  v43 = *(a3 + 62);
  v42 = *(a3 + 64);
  v41 = *(a3 + 68);
  v40 = *(a3 + 70);
  v39 = *(a3 + 72);
  v38 = *(a3 + 76);
  v37 = *(a3 + 78);
  v36 = *(a3 + 80);
  v35 = *(a3 + 84);
  v34 = *(a3 + 86);
  v33 = *(a3 + 88);
  v32 = *(a3 + 92);
  v14 = &v63;
  v27 = a3;
  v31 = *(a3 + 94);
  while (1)
  {
    v61 = v94;
    v62 = v93;
    v63 = v58;
    v64 = v57;
    v65 = v56;
    v66 = v55;
    v67 = v54;
    v68 = v53;
    v69 = v52;
    v70 = v51;
    v71 = v50;
    v72 = v49;
    v73 = v48;
    v74 = v47;
    v75 = v46;
    v76 = v45;
    v77 = v44;
    v78 = v43;
    v79 = v42;
    v80 = v41;
    v81 = v40;
    v82 = v39;
    v83 = v38;
    v84 = v37;
    v85 = v36;
    v86 = v35;
    v87 = v34;
    v88 = v33;
    v89 = v32;
    v90 = v31;
    v15 = *(v14 - 3);
    if (v15)
    {
      break;
    }

LABEL_2:
    ++v11;
    v14 += 4;
    if (v11 == 10)
    {
      LOBYTE(v61) = 1;
      sub_1AFDFE838();
      v18 = 0;
      v19 = *(v27 + 96);
      v93 = *(v27 + 100);
      v94 = v19;
      v20 = *(v27 + 102);
      v57 = *(v27 + 104);
      v58 = v20;
      v56 = *(v27 + 108);
      v55 = *(v27 + 110);
      v54 = *(v27 + 112);
      v53 = *(v27 + 116);
      v52 = *(v27 + 118);
      v51 = *(v27 + 120);
      v50 = *(v27 + 124);
      v49 = *(v27 + 126);
      v48 = *(v27 + 128);
      v47 = *(v27 + 132);
      v46 = *(v27 + 134);
      v45 = *(v27 + 136);
      v44 = *(v27 + 140);
      v43 = *(v27 + 142);
      v42 = *(v27 + 144);
      v41 = *(v27 + 148);
      v40 = *(v27 + 150);
      v39 = *(v27 + 152);
      v38 = *(v27 + 156);
      v37 = *(v27 + 158);
      v36 = *(v27 + 160);
      v35 = *(v27 + 164);
      v34 = *(v27 + 166);
      v33 = *(v27 + 168);
      v21 = &v63;
      v32 = *(v27 + 172);
      v31 = *(v27 + 174);
      while (1)
      {
        v61 = v94;
        v62 = v93;
        v63 = v58;
        v64 = v57;
        v65 = v56;
        v66 = v55;
        v67 = v54;
        v68 = v53;
        v69 = v52;
        v70 = v51;
        v71 = v50;
        v72 = v49;
        v73 = v48;
        v74 = v47;
        v75 = v46;
        v76 = v45;
        v77 = v44;
        v78 = v43;
        v79 = v42;
        v80 = v41;
        v81 = v40;
        v82 = v39;
        v83 = v38;
        v84 = v37;
        v85 = v36;
        v86 = v35;
        v87 = v34;
        v88 = v33;
        v89 = v32;
        v90 = v31;
        v22 = *(v21 - 1);
        if (v22)
        {
          v23 = *(v21 - 3);
          v24 = *v21;
          sub_1AF448018(v59, v60);
          sub_1AFDFEC28();
          if (v3)
          {
LABEL_12:
            (*(v28 + 8))(v29, v30);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
            return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v91);
          }

          v61 = v23;
          v62 = v22;
          v63 = v24;
          sub_1AF448018(v59, v60);
          sub_1AF8CAB44();
          sub_1AFDFEC38();
        }

        ++v18;
        v21 += 4;
        if (v18 == 10)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v16 = *(v14 - 1);
  v17 = *v14;
  sub_1AF448018(v91, v92);
  sub_1AFDFEC28();
  if (!v3)
  {
    v61 = v15;
    v62 = v16;
    v63 = v17;
    sub_1AF448018(v91, v92);
    sub_1AF8CAAF0();
    sub_1AFDFEC38();
    goto LABEL_2;
  }

  (*(v28 + 8))(v29, v30);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v91);
}

uint64_t sub_1AF8C4100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF8C986C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AF8C4178()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C4260()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8C4334()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8C4418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8C7B98();
  *a1 = result;
  return result;
}

void sub_1AF8C4448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x74756F79616CLL;
  v5 = 0xE500000000000000;
  v6 = 0x7374726170;
  v7 = 0xEB00000000746E75;
  v8 = 0x6F43786574726576;
  if (v2 != 3)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73726566667562;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF8C44EC()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x7374726170;
  v4 = 0x6F43786574726576;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73726566667562;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF8C458C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8C7B98();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8C45B4(uint64_t a1)
{
  v2 = sub_1AF8CAB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8C45F0(uint64_t a1)
{
  v2 = sub_1AF8CAB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8C462C(void *a1)
{
  v3 = v1;
  sub_1AF8CAEC4(0, &qword_1EB63FFF8, sub_1AF8CAB98, &type metadata for Mesh.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8CAB98();
  sub_1AFDFF3F8();
  v12 = *(v3 + 16);
  v13 = 0;
  sub_1AF8CACDC(0, &qword_1EB633848, &type metadata for VertexLayout, MEMORY[0x1E69E6720]);
  sub_1AF8CAF2C();
  sub_1AFDFE918();
  if (!v2)
  {
    *&v12 = *(v3 + 32);
    v13 = 1;
    sub_1AF8CACDC(0, &qword_1EB630DB8, &type metadata for MeshBuffer, MEMORY[0x1E69E62F8]);
    sub_1AF8CA904();
    sub_1AFDFE918();
    *&v12 = *(v3 + 40);
    v13 = 2;
    sub_1AF8CACDC(0, &qword_1EB630D80, &type metadata for MeshPart, MEMORY[0x1E69E62F8]);
    sub_1AF8CB01C();
    sub_1AFDFE918();
    LOBYTE(v12) = 3;
    sub_1AFDFE8F8();
  }

  return (*(v7 + 8))(v10, v6);
}

void *sub_1AF8C48E0(void *a1)
{
  v3 = v1;
  sub_1AF8CAEC4(0, &unk_1EB630A68, sub_1AF8CAB98, &type metadata for Mesh.CodingKeys, MEMORY[0x1E69E6F48]);
  v15 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  v1[6] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = v10;
  v1[7] = 0;
  v1[8] = 0;
  v11 = a1[3];
  v16 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF8CAB98();
  sub_1AFDFF3B8();
  if (v2)
  {
  }

  else
  {
    sub_1AF8CACDC(0, &qword_1EB633848, &type metadata for VertexLayout, MEMORY[0x1E69E6720]);
    v18 = 0;
    sub_1AF8CABEC();
    v12 = v15;
    sub_1AFDFE768();
    *(v1 + 1) = v17;

    sub_1AF8CACDC(0, &qword_1EB630DB8, &type metadata for MeshBuffer, MEMORY[0x1E69E62F8]);
    v18 = 1;
    sub_1AF8CA7EC();
    sub_1AFDFE768();
    v1[4] = v17;

    sub_1AF8CACDC(0, &qword_1EB630D80, &type metadata for MeshPart, MEMORY[0x1E69E62F8]);
    v18 = 2;
    sub_1AF8CAD2C();
    sub_1AFDFE768();
    v1[5] = v17;

    LOBYTE(v17) = 3;
    v14 = sub_1AFDFE748();
    (*(v6 + 8))(v9, v12);
    v3[6] = v14;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  return v3;
}

uint64_t sub_1AF8C4C30()
{

  return swift_deallocClassInstance();
}

void *sub_1AF8C4CA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Mesh();
  v5 = swift_allocObject();
  result = sub_1AF8C48E0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF8C4D20(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 112);
  v4 = *(v2 + 128);
  v5 = *(v2 + 144);
  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  v8 = *(v2 + 172);
  v28 = *(v2 + 96);
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v9 = &v28 + 2 * a1;
  if (!*(v9 + 2))
  {
    return 0;
  }

  v10 = *v9;
  v11 = *(v9 + 3);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v16 = *(v2 + 56);
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  v19 = *(v2 + 80);
  v20 = *(v2 + 88);
  LODWORD(v28) = *(v2 + 16);
  DWORD2(v28) = v12;
  LODWORD(v29) = v13;
  DWORD2(v29) = v14;
  LODWORD(v30) = v15;
  DWORD2(v30) = v16;
  LODWORD(v31) = v17;
  DWORD2(v31) = v18;
  LODWORD(v32) = v19;
  v33 = v20;
  v21 = *(v1 + 32);
  if (*(v21 + 16) <= v11)
  {
    return 0;
  }

  v22 = v21 + 40 * v11;
  v23 = *(v22 + 32);
  v24 = *(v22 + 40);
  swift_unknownObjectRetain_n();

  if ([v23 storageMode] == 2)
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v25 = [v23 contents];

    v26 = v23;
    swift_unknownObjectRelease();
    return v25 + v24 + v10;
  }

  return result;
}

uint64_t sub_1AF8C4ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = 0uLL;
  if (v4 && (v6 = v4[50], v7 = v4[51], v8 = v4[54], v9 = v4[55], v10 = v4[58], v11 = v4[59], v12 = v4[62], v13 = v4[63], v14 = v4[66], v15 = v4[67], v16 = v4[70], v17 = v4[71], v18 = v4[74], v19 = v4[75], v20 = v4[78], v21 = v4[79], v22 = v4[82], v23 = v4[83], v24 = v4[86], v25 = v4[87], v33 = v6, v35 = v8, v37 = v10, v39 = v12, v41 = v14, v43 = v16, v45 = v18, v47 = v20, v49 = v22, v51 = v24, v26 = &v32[8 * a1], *(v26 + 2)))
  {
    v34 = v7;
    v36 = v9;
    v38 = v11;
    v40 = v13;
    v42 = v15;
    v44 = v17;
    v46 = v19;
    v48 = v21;
    v50 = v23;
    v52 = v25;
    v27 = *(v2 + 32) + 40 * *(v26 + 3);
    v31 = *(v27 + 40);
    v28 = *(v27 + 56);
    v29 = *(v27 + 64);
    result = swift_unknownObjectRetain();
    v5 = v31;
  }

  else
  {
    result = 0;
    v28 = 0;
    v29 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 24) = v28;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_1AF8C5010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 *a6, int a7)
{
  v7 = a5;
  v9 = *(a3 + 40);
  v10 = *(v9 + 16);
  if (v10)
  {
    v14 = v9 + 32;
    v92 = a5 + 32;

    v15 = 0;
    v87 = v10;
    v88 = (v7 + 64);
    v107 = v7;
    v86 = v14;
    while (1)
    {
      v16 = (v14 + 176 * v15);
      v17 = *v16;
      v18 = v16[2];
      v111[1] = v16[1];
      v112 = v18;
      v111[0] = v17;
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[6];
      v115 = v16[5];
      v116 = v21;
      v113 = v19;
      v114 = v20;
      v22 = v16[7];
      v23 = v16[8];
      v24 = v16[10];
      v119 = v16[9];
      v120 = v24;
      v117 = v22;
      v118 = v23;
      if (*&v111[0] == 3)
      {
        if (v112)
        {
          break;
        }
      }

LABEL_5:
      if (++v15 == v10)
      {
      }
    }

    v25 = *(&v112 + 1);
    v109 = *(&v114 + 1);
    v89 = v15;
    if (v115 == 4)
    {
      v26 = v112;
      swift_unknownObjectRetain_n();
      sub_1AF6E52F0(v111, v110);
      if ([v26 storageMode] == 2)
      {
        goto LABEL_69;
      }

      v27 = [v26 contents];
      v28 = v26;
      if (v109 >= 1)
      {
        v29 = 0;
        v90 = &v27[v25];
        while (1)
        {
          v32 = &v90[4 * v29];
          v33 = __OFADD__(v29, 3);
          v29 += 3;
          v34 = a1 + *v32 * a2;
          *&v35 = *v34;
          DWORD2(v35) = *(v34 + 8);
          HIDWORD(v35) = v105;
          v36 = a1 + *(v32 + 1) * a2;
          *&v37 = *v36;
          DWORD2(v37) = *(v36 + 8);
          HIDWORD(v37) = v103;
          v38 = a1 + *(v32 + 2) * a2;
          *&v39 = *v38;
          DWORD2(v39) = *(v38 + 8);
          v40 = v33;
          HIDWORD(v39) = v101;
          v97 = a6[1];
          v99 = *a6;
          v93 = a6[3];
          v95 = a6[2];
          v123[0] = v35;
          v123[1] = v37;
          v123[2] = v39;
          v124 = 1;
          ecs_stack_allocator_push_snapshot(*(a4 + 32));
          v41 = *(v7 + 16);
          v42 = 2 * v41;
          v43 = ecs_stack_allocator_allocate(*(a4 + 32), 16 * v41 + 64, 8);
          *v43 = &type metadata for DebugInfoWireframePrimitive;
          v43[1] = &off_1F25604A8;
          v43[2] = &type metadata for DebugInfoColor;
          v43[3] = &off_1F2560488;
          v43[4] = &type metadata for WorldTransform;
          v43[5] = &off_1F2529FC0;
          v43[6] = &type metadata for Beamed;
          v43[7] = &off_1F2529FA0;
          if (!v41)
          {
            v30 = 4;
            v7 = v107;
            goto LABEL_13;
          }

          if (v41 <= 0xF)
          {
            break;
          }

          v44 = 0;
          v48 = 2 * (v41 - 1);
          if (&v43[v48 + 8] < v43 + 8 || &v43[v48 + 9] < v43 + 9 || (v41 - 1) >> 60)
          {
            goto LABEL_23;
          }

          if ((v43 + 8) < v92 + v42 * 8 && v92 < &v43[v42 + 8])
          {
            break;
          }

          v44 = v41 & 0x1FFFFFFFFFFFFFFCLL;
          v30 = (v41 & 0x1FFFFFFFFFFFFFFCLL) + 4;
          v49 = v43 + 12;
          v50 = v41 & 0x1FFFFFFFFFFFFFFCLL;
          v51 = v88;
          do
          {
            v53 = *(v51 - 2);
            v52 = *(v51 - 1);
            v55 = *v51;
            v54 = v51[1];
            v51 += 4;
            *(v49 - 2) = v53;
            *(v49 - 1) = v52;
            *v49 = v55;
            v49[1] = v54;
            v49 += 4;
            v50 -= 4;
          }

          while (v50);
          v7 = v107;
          if (v41 != v44)
          {
            goto LABEL_24;
          }

LABEL_13:
          v110[0] = 1;
          sub_1AF63D8A8(v43, v30, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v123, a7, v99, v97, v95, v93);
          ecs_stack_allocator_pop_snapshot(*(a4 + 32));
          if (v29 >= v109)
          {
            v31 = 1;
          }

          else
          {
            v31 = v40;
          }

          if (v31)
          {
            goto LABEL_3;
          }
        }

        v44 = 0;
LABEL_23:
        v30 = 4;
        v7 = v107;
LABEL_24:
        v45 = v41 - v44;
        v46 = (v92 + 16 * v44);
        do
        {
          v47 = *v46++;
          *&v43[2 * v30++] = v47;
          --v45;
        }

        while (v45);
        goto LABEL_13;
      }

LABEL_64:
      v15 = v89;
      v10 = v87;
LABEL_4:
      swift_unknownObjectRelease();
      sub_1AF6E534C(v111);
      goto LABEL_5;
    }

    if (v115 != 2 || (v56 = v112, swift_unknownObjectRetain_n(), sub_1AF6E52F0(v111, v110), [v56 storageMode] == 2))
    {
LABEL_69:

      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v57 = [v56 contents];
    v58 = v56;
    if (v109 < 1)
    {
      goto LABEL_64;
    }

    v59 = 0;
    v91 = &v57[v25];
    while (1)
    {
      v62 = &v91[2 * v59];
      v33 = __OFADD__(v59, 3);
      v59 += 3;
      v63 = a1 + *v62 * a2;
      *&v64 = *v63;
      DWORD2(v64) = *(v63 + 8);
      HIDWORD(v64) = v106;
      v65 = a1 + *(v62 + 1) * a2;
      *&v66 = *v65;
      DWORD2(v66) = *(v65 + 8);
      HIDWORD(v66) = v104;
      v67 = a1 + *(v62 + 2) * a2;
      *&v68 = *v67;
      DWORD2(v68) = *(v67 + 8);
      v69 = v33;
      HIDWORD(v68) = v102;
      v98 = a6[1];
      v100 = *a6;
      v94 = a6[3];
      v96 = a6[2];
      v121[0] = v64;
      v121[1] = v66;
      v121[2] = v68;
      v122 = 1;
      ecs_stack_allocator_push_snapshot(*(a4 + 32));
      v70 = *(v7 + 16);
      v71 = 2 * v70;
      v72 = ecs_stack_allocator_allocate(*(a4 + 32), 16 * v70 + 64, 8);
      *v72 = &type metadata for DebugInfoWireframePrimitive;
      v72[1] = &off_1F25604A8;
      v72[2] = &type metadata for DebugInfoColor;
      v72[3] = &off_1F2560488;
      v72[4] = &type metadata for WorldTransform;
      v72[5] = &off_1F2529FC0;
      v72[6] = &type metadata for Beamed;
      v72[7] = &off_1F2529FA0;
      if (!v70)
      {
        v60 = 4;
        v7 = v107;
        goto LABEL_41;
      }

      if (v70 <= 0xF)
      {
        break;
      }

      v73 = 0;
      v77 = 2 * (v70 - 1);
      if (&v72[v77 + 8] < v72 + 8 || &v72[v77 + 9] < v72 + 9 || (v70 - 1) >> 60)
      {
        goto LABEL_51;
      }

      if ((v72 + 8) < v92 + v71 * 8 && v92 < &v72[v71 + 8])
      {
        break;
      }

      v73 = v70 & 0x1FFFFFFFFFFFFFFCLL;
      v60 = (v70 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v78 = v72 + 12;
      v79 = v70 & 0x1FFFFFFFFFFFFFFCLL;
      v80 = v88;
      do
      {
        v82 = *(v80 - 2);
        v81 = *(v80 - 1);
        v84 = *v80;
        v83 = v80[1];
        v80 += 4;
        *(v78 - 2) = v82;
        *(v78 - 1) = v81;
        *v78 = v84;
        v78[1] = v83;
        v78 += 4;
        v79 -= 4;
      }

      while (v79);
      v7 = v107;
      if (v70 != v73)
      {
        goto LABEL_52;
      }

LABEL_41:
      v110[0] = 1;
      sub_1AF63D8A8(v72, v60, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v121, a7, v100, v98, v96, v94);
      ecs_stack_allocator_pop_snapshot(*(a4 + 32));
      if (v59 >= v109)
      {
        v61 = 1;
      }

      else
      {
        v61 = v69;
      }

      if (v61)
      {
LABEL_3:
        v14 = v86;
        v10 = v87;
        v15 = v89;
        goto LABEL_4;
      }
    }

    v73 = 0;
LABEL_51:
    v60 = 4;
    v7 = v107;
LABEL_52:
    v74 = v70 - v73;
    v75 = (v92 + 16 * v73);
    do
    {
      v76 = *v75++;
      *&v72[2 * v60++] = v76;
      --v74;
    }

    while (v74);
    goto LABEL_41;
  }
}

uint64_t sub_1AF8C5760@<X0>(char a1@<W0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>)
{
  v7 = sub_1AF8C4D20(0);
  if (!v7)
  {
    while (1)
    {
LABEL_164:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  if (v8 != 30)
  {
    v18 = swift_slowAlloc();
    v19 = v18;
    v20 = *(v4 + 48);
    if (v20)
    {
      v21 = (v18 + 8);
      do
      {
        sub_1AF8CB7BC(v10, v11);
        *(v21 - 1) = v22;
        *v21 = v23;
        v10 = (v10 + v12);
        v21 += 3;
        --v20;
      }

      while (v20);
    }

    v24 = *(v4 + 40);
    v25 = *(v24 + 16);
    v387 = 0u;
    if (!v25)
    {
      v369 = 0.0;
      v370 = 1;
      v407 = 0uLL;
      goto LABEL_159;
    }

    v394 = a2;
    __asm { FMOV            V0.4S, #-1.5 }

    v385 = _Q0;
    v31 = v24 + 32;

    v32 = 0;
    v396 = v31;
    while (1)
    {
      v199 = (v31 + 176 * v32);
      v200 = *v199;
      v201 = v199[2];
      v414 = v199[1];
      v415 = v201;
      v413 = v200;
      v202 = v199[3];
      v203 = v199[4];
      v204 = v199[6];
      v418 = v199[5];
      v419 = v204;
      v416 = v202;
      v417 = v203;
      v205 = v199[7];
      v206 = v199[8];
      v207 = v199[10];
      v422 = v199[9];
      v423 = v207;
      v420 = v205;
      v421 = v206;
      if (v413 == 3)
      {
        v208 = v415;
        if (v415)
        {
          v209 = *(&v417 + 1);
          v210 = *(&v415 + 1);
          if (v418 == 4)
          {
            swift_unknownObjectRetain_n();
            sub_1AF6E52F0(&v413, v412);
            if ([v208 storageMode] == 2)
            {
              goto LABEL_164;
            }

            v211 = [v208 contents];
            v212 = v208;
            if (v209 >= 1)
            {
              v213 = 0;
              v214.i64[0] = 0x3F0000003F000000;
              v214.i64[1] = 0x3F0000003F000000;
              v215.i32[3] = v383;
              v216.i32[3] = v381;
              v217.i32[3] = v379.i32[3];
              v218 = v377;
              do
              {
                v222 = &v211[4 * v213 + v210];
                if (__OFADD__(v213, 3))
                {
                  v213 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v213 += 3;
                }

                v223 = v19 + 12 * *v222;
                v215.i64[0] = *v223;
                v215.i32[2] = *(v223 + 8);
                v224 = v19 + 12 * *(v222 + 1);
                v216.i64[0] = *v224;
                v216.i32[2] = *(v224 + 8);
                v225 = v19 + 12 * *(v222 + 2);
                v217.i64[0] = *v225;
                v217.i32[2] = *(v225 + 8);
                v226 = vsubq_f32(v216, v215);
                v227 = vsubq_f32(v217, v215);
                v228 = vnegq_f32(v226);
                v229 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v227, v227), v227, 0xCuLL), v228), v227, vextq_s8(vuzp1q_s32(v226, v226), v226, 0xCuLL));
                v230 = vextq_s8(vuzp1q_s32(v229, v229), v229, 0xCuLL);
                v231 = vmulq_f32(v229, v229);
                v231.f32[0] = v231.f32[1] + (v231.f32[2] + v231.f32[0]);
                v232 = vdupq_lane_s32(*v231.f32, 0);
                v232.i32[3] = 0;
                v233 = vrsqrteq_f32(v232);
                v234 = vmulq_f32(v233, vrsqrtsq_f32(v232, vmulq_f32(v233, v233)));
                v235 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v231.f32[0] != 0.0)), 0x1FuLL));
                v235.i32[3] = 0;
                v236 = vbslq_s8(vcltzq_s32(v235), vmulq_f32(v230, vmulq_f32(v234, vrsqrtsq_f32(v232, vmulq_f32(v234, v234)))), v230);
                if (a1)
                {
                  v237 = vmulq_f32(v236, a4);
                  v238 = v237.f32[2] + vaddv_f32(*v237.f32);
                  v239 = -1.0;
                  if (v238 < 0.0)
                  {
                    v240 = vmulq_f32(v215, v236);
                    v241 = vmulq_f32(v236, a3);
                    *v240.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v241, v241, 8uLL), *&vextq_s8(v240, v240, 8uLL)), vadd_f32(vzip1_s32(*v241.i8, *v240.i8), vzip2_s32(*v241.i8, *v240.i8)));
                    v239 = -vsub_f32(*v240.i8, vdup_lane_s32(*v240.i8, 1)).f32[0] / v238;
                  }

                  if (v239 <= 1.0)
                  {
                    v242 = v239;
                  }

                  else
                  {
                    v242 = -1.0;
                  }

                  if (v242 >= 0.0)
                  {
                    v243 = vaddq_f32(vmulq_n_f32(a4, v242), a3).u64[0];
                    v244.i64[0] = v243;
                    v244.f32[2] = a3.f32[2] + (a4.f32[2] * v242);
                    v244.i32[3] = 0;
                    v245 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v227, v227, 0xCuLL), v227, 8uLL), v228), vextq_s8(vextq_s8(v226, v226, 0xCuLL), v226, 8uLL), v227);
                    v246 = vmulq_f32(v245, v245);
                    v246.f32[0] = v246.f32[2] + vaddv_f32(*v246.f32);
                    if (fabsf(v246.f32[0]) >= 1.1755e-38)
                    {
                      v257 = vsubq_f32(v217, v244);
                      v258 = vsubq_f32(v216, v244);
                      v259 = vsubq_f32(v215, v244);
                      v260 = vextq_s8(vextq_s8(v258, v258, 0xCuLL), v258, 8uLL);
                      v261 = vextq_s8(vextq_s8(v257, v257, 0xCuLL), v257, 8uLL);
                      v262 = vmlaq_f32(vmulq_f32(v261, vnegq_f32(v258)), v260, v257);
                      v263 = vextq_s8(vextq_s8(v259, v259, 0xCuLL), v259, 8uLL);
                      v264 = vmlaq_f32(vmulq_f32(v263, vnegq_f32(v257)), v261, v259);
                      v265 = vmlaq_f32(vmulq_f32(v260, vnegq_f32(v259)), v263, v258);
                      v266 = vmulq_f32(v245, v262);
                      v267 = vmulq_f32(v245, v264);
                      v268 = vmulq_f32(v245, v265);
                      v269 = vdupq_laneq_s32(v267, 2);
                      v270 = vzip1q_s32(vzip1q_s32(v266, v268), v267);
                      v271 = vtrn2q_s32(v266, v267);
                      v271.i32[2] = v268.i32[1];
                      v272 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v266, v268), v269), vaddq_f32(v270, v271)), vdupq_lane_s32(*v246.f32, 0));
                      v268.i64[0] = 0xBF000000BF000000;
                      v268.i64[1] = 0xBF000000BF000000;
                      _Q3 = vaddq_f32(v272, v268);
                    }

                    else
                    {
                      __asm { FMOV            V3.4S, #-1.5 }
                    }

                    v273 = vcgeq_f32(v214, vabsq_f32(_Q3));
                    v273.i32[3] = v273.i32[2];
                    if ((vminvq_u32(v273) & 0x80000000) != 0)
                    {
                      v403 = v236;
                      v409 = v243;
                      v389 = v242;
                      v397 = v244;
                      goto LABEL_153;
                    }
                  }
                }

                else
                {
                  v219 = v236;
                  v219.i32[3] = v218.i32[3];
                  v220 = vmulq_f32(v236, a4);
                  v221 = v220.f32[2] + vaddv_f32(*v220.f32);
                  if (v221 != 0.0 && ((v248 = vmulq_f32(v215, v236), v249 = vmulq_f32(v219, a3), *v248.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v249, v249, 8uLL), *&vextq_s8(v248, v248, 8uLL)), vadd_f32(vzip1_s32(*v249.i8, *v248.i8), vzip2_s32(*v249.i8, *v248.i8))), v250 = -vsub_f32(*v248.i8, vdup_lane_s32(*v248.i8, 1)).f32[0] / v221, v250 >= 0.0) ? (v251 = v250 <= 1.0) : (v251 = 0), v251))
                  {
                    v252 = vaddq_f32(vmulq_n_f32(a4, v250), a3).u64[0];
                    v253.i64[0] = v252;
                    v253.f32[2] = a3.f32[2] + (a4.f32[2] * v250);
                    v253.i32[3] = 0;
                    v254 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v227, v227, 0xCuLL), v227, 8uLL), v228), vextq_s8(vextq_s8(v226, v226, 0xCuLL), v226, 8uLL), v227);
                    v255 = vmulq_f32(v254, v254);
                    v255.f32[0] = v255.f32[2] + vaddv_f32(*v255.f32);
                    if (fabsf(v255.f32[0]) >= 1.1755e-38)
                    {
                      v274 = vsubq_f32(v217, v253);
                      v275 = vsubq_f32(v216, v253);
                      v276 = vsubq_f32(v215, v253);
                      v277 = vextq_s8(vextq_s8(v275, v275, 0xCuLL), v275, 8uLL);
                      v278 = vextq_s8(vextq_s8(v274, v274, 0xCuLL), v274, 8uLL);
                      v279 = vmlaq_f32(vmulq_f32(v278, vnegq_f32(v275)), v277, v274);
                      v280 = vextq_s8(vextq_s8(v276, v276, 0xCuLL), v276, 8uLL);
                      v281 = vmlaq_f32(vmulq_f32(v280, vnegq_f32(v274)), v278, v276);
                      v282 = vmlaq_f32(vmulq_f32(v277, vnegq_f32(v276)), v280, v275);
                      v283 = vmulq_f32(v254, v279);
                      v284 = vmulq_f32(v254, v281);
                      v285 = vmulq_f32(v254, v282);
                      v286 = vdupq_laneq_s32(v284, 2);
                      v287 = vzip1q_s32(vzip1q_s32(v283, v285), v284);
                      v288 = vtrn2q_s32(v283, v284);
                      v288.i32[2] = v285.i32[1];
                      v289 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v283, v285), v286), vaddq_f32(v287, v288)), vdupq_lane_s32(*v255.f32, 0));
                      v285.i64[0] = 0xBF000000BF000000;
                      v285.i64[1] = 0xBF000000BF000000;
                      _Q3 = vaddq_f32(v289, v285);
                    }

                    else
                    {
                      __asm { FMOV            V3.4S, #-1.5 }
                    }

                    v290 = vcgeq_f32(v214, vabsq_f32(_Q3));
                    v290.i32[3] = v290.i32[2];
                    v218 = v219;
                    if ((vminvq_u32(v290) & 0x80000000) != 0)
                    {
                      v404 = v236;
                      v410 = v252;
                      v390 = v250;
                      v399 = v253;
                      goto LABEL_155;
                    }
                  }

                  else
                  {
                    v218 = v219;
                  }
                }
              }

              while (v213 < v209);
              v377 = v218;
            }
          }

          else
          {
            if (v418 != 2)
            {
              goto LABEL_164;
            }

            swift_unknownObjectRetain_n();
            sub_1AF6E52F0(&v413, v412);
            if ([v208 storageMode] == 2)
            {
              goto LABEL_164;
            }

            v291 = [v208 contents];
            v292 = v208;
            if (v209 >= 1)
            {
              v293 = 0;
              v294.i32[3] = v384;
              v295.i64[0] = 0x3F0000003F000000;
              v295.i64[1] = 0x3F0000003F000000;
              v296.i32[3] = v382;
              v297.i32[3] = v380.i32[3];
              v298 = v378;
              do
              {
                v300 = &v291[2 * v293 + v210];
                if (__OFADD__(v293, 3))
                {
                  v293 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v293 += 3;
                }

                v301 = v19 + 12 * *v300;
                v294.i64[0] = *v301;
                v294.i32[2] = *(v301 + 8);
                v302 = v19 + 12 * *(v300 + 1);
                v296.i64[0] = *v302;
                v296.i32[2] = *(v302 + 8);
                v303 = v19 + 12 * *(v300 + 2);
                v297.i64[0] = *v303;
                v297.i32[2] = *(v303 + 8);
                v304 = vsubq_f32(v296, v294);
                v305 = vsubq_f32(v297, v294);
                v306 = vnegq_f32(v304);
                v307 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v305, v305), v305, 0xCuLL), v306), v305, vextq_s8(vuzp1q_s32(v304, v304), v304, 0xCuLL));
                v308 = vextq_s8(vuzp1q_s32(v307, v307), v307, 0xCuLL);
                v309 = vmulq_f32(v307, v307);
                v309.f32[0] = v309.f32[1] + (v309.f32[2] + v309.f32[0]);
                v310 = vdupq_lane_s32(*v309.f32, 0);
                v310.i32[3] = 0;
                v311 = vrsqrteq_f32(v310);
                v312 = vmulq_f32(v311, vrsqrtsq_f32(v310, vmulq_f32(v311, v311)));
                v313 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v309.f32[0] != 0.0)), 0x1FuLL));
                v313.i32[3] = 0;
                v314 = vbslq_s8(vcltzq_s32(v313), vmulq_f32(v308, vmulq_f32(v312, vrsqrtsq_f32(v310, vmulq_f32(v312, v312)))), v308);
                v315 = vmulq_f32(v314, a4);
                if (a1)
                {
                  v316 = v315.f32[2] + vaddv_f32(*v315.f32);
                  v317 = -1.0;
                  if (v316 < 0.0)
                  {
                    v318 = vmulq_f32(v294, v314);
                    v319 = vmulq_f32(v314, a3);
                    *v318.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v319, v319, 8uLL), *&vextq_s8(v318, v318, 8uLL)), vadd_f32(vzip1_s32(*v319.i8, *v318.i8), vzip2_s32(*v319.i8, *v318.i8)));
                    v317 = -vsub_f32(*v318.i8, vdup_lane_s32(*v318.i8, 1)).f32[0] / v316;
                  }

                  if (v317 <= 1.0)
                  {
                    v320 = v317;
                  }

                  else
                  {
                    v320 = -1.0;
                  }

                  if (v320 >= 0.0)
                  {
                    v321 = vaddq_f32(vmulq_n_f32(a4, v320), a3).u64[0];
                    v322.i64[0] = v321;
                    v322.f32[2] = a3.f32[2] + (a4.f32[2] * v320);
                    v322.i32[3] = 0;
                    v323 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v305, v305, 0xCuLL), v305, 8uLL), v306), vextq_s8(vextq_s8(v304, v304, 0xCuLL), v304, 8uLL), v305);
                    v324 = vmulq_f32(v323, v323);
                    v324.f32[0] = v324.f32[2] + vaddv_f32(*v324.f32);
                    if (fabsf(v324.f32[0]) >= 1.1755e-38)
                    {
                      v352 = vsubq_f32(v297, v322);
                      v353 = vsubq_f32(v296, v322);
                      v354 = vsubq_f32(v294, v322);
                      v355 = vextq_s8(vextq_s8(v353, v353, 0xCuLL), v353, 8uLL);
                      v356 = vextq_s8(vextq_s8(v352, v352, 0xCuLL), v352, 8uLL);
                      v357 = vmlaq_f32(vmulq_f32(v356, vnegq_f32(v353)), v355, v352);
                      v358 = vextq_s8(vextq_s8(v354, v354, 0xCuLL), v354, 8uLL);
                      v359 = vmlaq_f32(vmulq_f32(v358, vnegq_f32(v352)), v356, v354);
                      v360 = vmlaq_f32(vmulq_f32(v355, vnegq_f32(v354)), v358, v353);
                      v361 = vmulq_f32(v323, v357);
                      v362 = vmulq_f32(v323, v359);
                      v363 = vmulq_f32(v323, v360);
                      v364 = vdupq_laneq_s32(v362, 2);
                      v365 = vzip1q_s32(vzip1q_s32(v361, v363), v362);
                      v366 = vtrn2q_s32(v361, v362);
                      v366.i32[2] = v363.i32[1];
                      v367 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v361, v363), v364), vaddq_f32(v365, v366)), vdupq_lane_s32(*v324.f32, 0));
                      v363.i64[0] = 0xBF000000BF000000;
                      v363.i64[1] = 0xBF000000BF000000;
                      _Q3 = vaddq_f32(v367, v363);
                    }

                    else
                    {
                      __asm { FMOV            V3.4S, #-1.5 }
                    }

                    v368 = vcgeq_f32(v295, vabsq_f32(_Q3));
                    v368.i32[3] = v368.i32[2];
                    if ((vminvq_u32(v368) & 0x80000000) != 0)
                    {
                      v403 = v314;
                      v409 = v321;
                      v389 = v320;
                      v397 = v322;
LABEL_153:
                      swift_unknownObjectRelease();

                      sub_1AF6E534C(&v413);
                      v370 = 0;
                      v369 = v389;
                      v387 = vextq_s8(v397, v403, 8uLL);
                      *&v372 = v409;
                      *(&v372 + 1) = v403.i64[1];
                      goto LABEL_158;
                    }
                  }
                }

                else
                {
                  v299 = v314;
                  v299.i32[3] = v298.i32[3];
                  v221 = v315.f32[2] + vaddv_f32(*v315.f32);
                  if (v221 != 0.0 && ((v326 = vmulq_f32(v294, v314), v327 = vmulq_f32(v299, a3), *v326.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v327, v327, 8uLL), *&vextq_s8(v326, v326, 8uLL)), vadd_f32(vzip1_s32(*v327.i8, *v326.i8), vzip2_s32(*v327.i8, *v326.i8))), v328 = -vsub_f32(*v326.i8, vdup_lane_s32(*v326.i8, 1)).f32[0] / v221, v328 >= 0.0) ? (v329 = v328 <= 1.0) : (v329 = 0), v329))
                  {
                    v330 = vaddq_f32(vmulq_n_f32(a4, v328), a3).u64[0];
                    v331.i64[0] = v330;
                    v331.f32[2] = a3.f32[2] + (a4.f32[2] * v328);
                    v331.i32[3] = 0;
                    v332 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v305, v305, 0xCuLL), v305, 8uLL), v306), vextq_s8(vextq_s8(v304, v304, 0xCuLL), v304, 8uLL), v305);
                    v333 = vmulq_f32(v332, v332);
                    v333.f32[0] = v333.f32[2] + vaddv_f32(*v333.f32);
                    v334 = v385;
                    if (fabsf(v333.f32[0]) >= 1.1755e-38)
                    {
                      v335 = vsubq_f32(v297, v331);
                      v336 = vsubq_f32(v296, v331);
                      v337 = vsubq_f32(v294, v331);
                      v338 = vextq_s8(vextq_s8(v336, v336, 0xCuLL), v336, 8uLL);
                      v339 = vextq_s8(vextq_s8(v335, v335, 0xCuLL), v335, 8uLL);
                      v340 = vmlaq_f32(vmulq_f32(v339, vnegq_f32(v336)), v338, v335);
                      v341 = vextq_s8(vextq_s8(v337, v337, 0xCuLL), v337, 8uLL);
                      v342 = vmlaq_f32(vmulq_f32(v341, vnegq_f32(v335)), v339, v337);
                      v343 = vmlaq_f32(vmulq_f32(v338, vnegq_f32(v337)), v341, v336);
                      v344 = vmulq_f32(v332, v340);
                      v345 = vmulq_f32(v332, v342);
                      v346 = vmulq_f32(v332, v343);
                      v347 = vdupq_laneq_s32(v345, 2);
                      v348 = vzip1q_s32(vzip1q_s32(v344, v346), v345);
                      v349 = vtrn2q_s32(v344, v345);
                      v349.i32[2] = v346.i32[1];
                      v350 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v344, v346), v347), vaddq_f32(v348, v349)), vdupq_lane_s32(*v333.f32, 0));
                      v346.i64[0] = 0xBF000000BF000000;
                      v346.i64[1] = 0xBF000000BF000000;
                      v334 = vaddq_f32(v350, v346);
                    }

                    v351 = vcgeq_f32(v295, vabsq_f32(v334));
                    v351.i32[3] = v351.i32[2];
                    v298 = v299;
                    if ((vminvq_u32(v351) & 0x80000000) != 0)
                    {
                      v404 = v314;
                      v410 = v330;
                      v390 = v328;
                      v399 = v331;
LABEL_155:
                      swift_unknownObjectRelease();

                      sub_1AF6E534C(&v413);
                      v370 = 0;
                      v373 = 1.0;
                      if (v221 > 0.0)
                      {
                        v373 = -1.0;
                      }

                      v374 = COERCE_UNSIGNED_INT(vmuls_lane_f32(v373, v404, 2));
                      v369 = v390;
                      v387 = vextq_s8(v399, vmulq_n_f32(v404, v373), 8uLL);
                      *&v372 = v410;
                      *(&v372 + 1) = v374;
LABEL_158:
                      v407 = v372;
                      a2 = v394;
LABEL_159:
                      result = MEMORY[0x1B271DEA0](v19, -1, -1);
                      v15 = v387;
                      v371 = v407;
                      goto LABEL_160;
                    }
                  }

                  else
                  {
                    v298 = v299;
                  }
                }
              }

              while (v293 < v209);
              v378 = v298;
            }
          }

          swift_unknownObjectRelease();
          sub_1AF6E534C(&v413);
          v31 = v396;
        }
      }

      if (++v32 == v25)
      {

        v369 = 0.0;
        v370 = 1;
        v372 = 0uLL;
        goto LABEL_158;
      }
    }
  }

  result = *(v4 + 40);
  v14 = *(result + 16);
  v15 = 0uLL;
  if (!v14)
  {
    v369 = 0.0;
    v370 = 1;
    v371 = 0uLL;
    goto LABEL_160;
  }

  v393 = a2;
  v16 = result + 32;

  v17 = 0;
  v395 = v16;
  while (1)
  {
    v33 = (v16 + 176 * v17);
    v34 = *v33;
    v35 = v33[2];
    v414 = v33[1];
    v415 = v35;
    v413 = v34;
    v36 = v33[3];
    v37 = v33[4];
    v38 = v33[6];
    v418 = v33[5];
    v419 = v38;
    v416 = v36;
    v417 = v37;
    v39 = v33[7];
    v40 = v33[8];
    v41 = v33[10];
    v422 = v33[9];
    v423 = v41;
    v420 = v39;
    v421 = v40;
    if (v413 != 3)
    {
      goto LABEL_12;
    }

    v42 = v415;
    if (!v415)
    {
      goto LABEL_12;
    }

    v43 = *(&v417 + 1);
    v44 = *(&v415 + 1);
    if (v418 != 4)
    {
      break;
    }

    swift_unknownObjectRetain_n();
    sub_1AF6E52F0(&v413, v412);
    if ([v42 storageMode] == 2)
    {
      goto LABEL_164;
    }

    v45 = [v42 contents];
    v46 = v42;
    if (v43 >= 1)
    {
      v47 = 0;
      v48.i64[0] = 0x3F0000003F000000;
      v48.i64[1] = 0x3F0000003F000000;
      v49.i32[3] = v392;
      v50.i32[3] = v384;
      v51.i32[3] = v382;
      v52 = v380;
      do
      {
        v56 = &v45[4 * v47 + v44];
        if (__OFADD__(v47, 3))
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 += 3;
        }

        v57 = v10 + v12 * *v56;
        v49.i64[0] = *v57;
        v49.i32[2] = *(v57 + 2);
        v58 = v10 + v12 * *(v56 + 1);
        v50.i64[0] = *v58;
        v50.i32[2] = *(v58 + 2);
        v59 = v10 + v12 * *(v56 + 2);
        v51.i64[0] = *v59;
        v51.i32[2] = *(v59 + 2);
        v60 = vsubq_f32(v50, v49);
        v61 = vsubq_f32(v51, v49);
        v62 = vnegq_f32(v60);
        v63 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), v62), v61, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
        v64 = vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL);
        v65 = vmulq_f32(v63, v63);
        v65.f32[0] = v65.f32[1] + (v65.f32[2] + v65.f32[0]);
        v66 = vdupq_lane_s32(*v65.f32, 0);
        v66.i32[3] = 0;
        v67 = vrsqrteq_f32(v66);
        v68 = vmulq_f32(v67, vrsqrtsq_f32(v66, vmulq_f32(v67, v67)));
        v69 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v65.f32[0] != 0.0)), 0x1FuLL));
        v69.i32[3] = 0;
        v70 = vbslq_s8(vcltzq_s32(v69), vmulq_f32(v64, vmulq_f32(v68, vrsqrtsq_f32(v66, vmulq_f32(v68, v68)))), v64);
        if (a1)
        {
          v71 = vmulq_f32(v70, a4);
          v72 = v71.f32[2] + vaddv_f32(*v71.f32);
          v73 = -1.0;
          if (v72 < 0.0)
          {
            v74 = vmulq_f32(v49, v70);
            v75 = vmulq_f32(v70, a3);
            *v74.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v75, v75, 8uLL), *&vextq_s8(v74, v74, 8uLL)), vadd_f32(vzip1_s32(*v75.i8, *v74.i8), vzip2_s32(*v75.i8, *v74.i8)));
            v73 = -vsub_f32(*v74.i8, vdup_lane_s32(*v74.i8, 1)).f32[0] / v72;
          }

          if (v73 <= 1.0)
          {
            v76 = v73;
          }

          else
          {
            v76 = -1.0;
          }

          if (v76 >= 0.0)
          {
            v77 = vaddq_f32(vmulq_n_f32(a4, v76), a3).u64[0];
            v78.i64[0] = v77;
            v78.f32[2] = a3.f32[2] + (a4.f32[2] * v76);
            v78.i32[3] = 0;
            v79 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL), v62), vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL), v61);
            v80 = vmulq_f32(v79, v79);
            v80.f32[0] = v80.f32[2] + vaddv_f32(*v80.f32);
            if (fabsf(v80.f32[0]) >= 1.1755e-38)
            {
              v91 = vsubq_f32(v51, v78);
              v92 = vsubq_f32(v50, v78);
              v93 = vsubq_f32(v49, v78);
              v94 = vextq_s8(vextq_s8(v92, v92, 0xCuLL), v92, 8uLL);
              v95 = vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL);
              v96 = vmlaq_f32(vmulq_f32(v95, vnegq_f32(v92)), v94, v91);
              v97 = vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL);
              v98 = vmlaq_f32(vmulq_f32(v97, vnegq_f32(v91)), v95, v93);
              v99 = vmlaq_f32(vmulq_f32(v94, vnegq_f32(v93)), v97, v92);
              v100 = vmulq_f32(v79, v96);
              v101 = vmulq_f32(v79, v98);
              v102 = vmulq_f32(v79, v99);
              v103 = vdupq_laneq_s32(v101, 2);
              v104 = vzip1q_s32(vzip1q_s32(v100, v102), v101);
              v105 = vtrn2q_s32(v100, v101);
              v105.i32[2] = v102.i32[1];
              v106 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v100, v102), v103), vaddq_f32(v104, v105)), vdupq_lane_s32(*v80.f32, 0));
              v102.i64[0] = 0xBF000000BF000000;
              v102.i64[1] = 0xBF000000BF000000;
              _Q3 = vaddq_f32(v106, v102);
            }

            else
            {
              __asm { FMOV            V3.4S, #-1.5 }
            }

            v107 = vcgeq_f32(v48, vabsq_f32(_Q3));
            v107.i32[3] = v107.i32[2];
            if ((vminvq_u32(v107) & 0x80000000) != 0)
            {
              v402 = v70;
              v408 = v77;
              v388 = v76;
              goto LABEL_154;
            }
          }
        }

        else
        {
          v53 = v70;
          v53.i32[3] = v52.i32[3];
          v54 = vmulq_f32(v70, a4);
          v55 = v54.f32[2] + vaddv_f32(*v54.f32);
          if (v55 != 0.0 && ((v82 = vmulq_f32(v49, v70), v83 = vmulq_f32(v53, a3), *v82.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *&vextq_s8(v82, v82, 8uLL)), vadd_f32(vzip1_s32(*v83.i8, *v82.i8), vzip2_s32(*v83.i8, *v82.i8))), v84 = -vsub_f32(*v82.i8, vdup_lane_s32(*v82.i8, 1)).f32[0] / v55, v84 >= 0.0) ? (v85 = v84 <= 1.0) : (v85 = 0), v85))
          {
            v86 = vaddq_f32(vmulq_n_f32(a4, v84), a3).u64[0];
            v87.i64[0] = v86;
            v87.f32[2] = a3.f32[2] + (a4.f32[2] * v84);
            v87.i32[3] = 0;
            v88 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL), v62), vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL), v61);
            v89 = vmulq_f32(v88, v88);
            v89.f32[0] = v89.f32[2] + vaddv_f32(*v89.f32);
            if (fabsf(v89.f32[0]) >= 1.1755e-38)
            {
              v108 = vsubq_f32(v51, v87);
              v109 = vsubq_f32(v50, v87);
              v110 = vsubq_f32(v49, v87);
              v111 = vextq_s8(vextq_s8(v109, v109, 0xCuLL), v109, 8uLL);
              v112 = vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL);
              v113 = vmlaq_f32(vmulq_f32(v112, vnegq_f32(v109)), v111, v108);
              v114 = vextq_s8(vextq_s8(v110, v110, 0xCuLL), v110, 8uLL);
              v115 = vmlaq_f32(vmulq_f32(v114, vnegq_f32(v108)), v112, v110);
              v116 = vmlaq_f32(vmulq_f32(v111, vnegq_f32(v110)), v114, v109);
              v117 = vmulq_f32(v88, v113);
              v118 = vmulq_f32(v88, v115);
              v119 = vmulq_f32(v88, v116);
              v120 = vdupq_laneq_s32(v118, 2);
              v121 = vzip1q_s32(vzip1q_s32(v117, v119), v118);
              v122 = vtrn2q_s32(v117, v118);
              v122.i32[2] = v119.i32[1];
              v123 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v117, v119), v120), vaddq_f32(v121, v122)), vdupq_lane_s32(*v89.f32, 0));
              v119.i64[0] = 0xBF000000BF000000;
              v119.i64[1] = 0xBF000000BF000000;
              _Q3 = vaddq_f32(v123, v119);
            }

            else
            {
              __asm { FMOV            V3.4S, #-1.5 }
            }

            v124 = vcgeq_f32(v48, vabsq_f32(_Q3));
            v124.i32[3] = v124.i32[2];
            v52 = v53;
            if ((vminvq_u32(v124) & 0x80000000) != 0)
            {
              v411 = v86;
              goto LABEL_161;
            }
          }

          else
          {
            v52 = v53;
          }
        }
      }

      while (v47 < v43);
      v380 = v52;
    }

LABEL_11:
    swift_unknownObjectRelease();
    sub_1AF6E534C(&v413);
    v16 = v395;
LABEL_12:
    if (++v17 == v14)
    {

      v369 = 0.0;
      v370 = 1;
      v371 = 0uLL;
      a2 = v393;
      v15 = 0uLL;
      goto LABEL_160;
    }
  }

  if (v418 != 2)
  {
    goto LABEL_164;
  }

  swift_unknownObjectRetain_n();
  sub_1AF6E52F0(&v413, v412);
  if ([v42 storageMode] == 2)
  {
    goto LABEL_164;
  }

  v125 = [v42 contents];
  v126 = v42;
  if (v43 < 1)
  {
    goto LABEL_11;
  }

  v127 = 0;
  v128.i64[0] = 0x3F0000003F000000;
  v128.i64[1] = 0x3F0000003F000000;
  v129.i32[3] = v386;
  v130.i32[3] = v383;
  v131.i32[3] = v381;
  v132 = v379;
  while (1)
  {
    v134 = &v125[2 * v127 + v44];
    if (__OFADD__(v127, 3))
    {
      v127 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v127 += 3;
    }

    v135 = v10 + v12 * *v134;
    v129.i64[0] = *v135;
    v129.i32[2] = *(v135 + 2);
    v136 = v10 + v12 * *(v134 + 1);
    v130.i64[0] = *v136;
    v130.i32[2] = *(v136 + 2);
    v137 = v10 + v12 * *(v134 + 2);
    v131.i64[0] = *v137;
    v131.i32[2] = *(v137 + 2);
    v138 = vsubq_f32(v130, v129);
    v139 = vsubq_f32(v131, v129);
    v140 = vnegq_f32(v138);
    v141 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL), v140), v139, vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL));
    v142 = vextq_s8(vuzp1q_s32(v141, v141), v141, 0xCuLL);
    v143 = vmulq_f32(v141, v141);
    v143.f32[0] = v143.f32[1] + (v143.f32[2] + v143.f32[0]);
    v144 = vdupq_lane_s32(*v143.f32, 0);
    v144.i32[3] = 0;
    v145 = vrsqrteq_f32(v144);
    v146 = vmulq_f32(v145, vrsqrtsq_f32(v144, vmulq_f32(v145, v145)));
    v147 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v143.f32[0] != 0.0)), 0x1FuLL));
    v147.i32[3] = 0;
    v70 = vbslq_s8(vcltzq_s32(v147), vmulq_f32(v142, vmulq_f32(v146, vrsqrtsq_f32(v144, vmulq_f32(v146, v146)))), v142);
    v148 = vmulq_f32(v70, a4);
    if (a1)
    {
      v149 = v148.f32[2] + vaddv_f32(*v148.f32);
      v150 = -1.0;
      if (v149 < 0.0)
      {
        v151 = vmulq_f32(v129, v70);
        v152 = vmulq_f32(v70, a3);
        *v151.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v152, v152, 8uLL), *&vextq_s8(v151, v151, 8uLL)), vadd_f32(vzip1_s32(*v152.i8, *v151.i8), vzip2_s32(*v152.i8, *v151.i8)));
        v150 = -vsub_f32(*v151.i8, vdup_lane_s32(*v151.i8, 1)).f32[0] / v149;
      }

      if (v150 <= 1.0)
      {
        v153 = v150;
      }

      else
      {
        v153 = -1.0;
      }

      if (v153 >= 0.0)
      {
        v154 = vaddq_f32(vmulq_n_f32(a4, v153), a3).u64[0];
        v78.i64[0] = v154;
        v78.f32[2] = a3.f32[2] + (a4.f32[2] * v153);
        v78.i32[3] = 0;
        v155 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v139, v139, 0xCuLL), v139, 8uLL), v140), vextq_s8(vextq_s8(v138, v138, 0xCuLL), v138, 8uLL), v139);
        v156 = vmulq_f32(v155, v155);
        v156.f32[0] = v156.f32[2] + vaddv_f32(*v156.f32);
        if (fabsf(v156.f32[0]) >= 1.1755e-38)
        {
          v165 = vsubq_f32(v131, v78);
          v166 = vsubq_f32(v130, v78);
          v167 = vsubq_f32(v129, v78);
          v168 = vextq_s8(vextq_s8(v166, v166, 0xCuLL), v166, 8uLL);
          v169 = vextq_s8(vextq_s8(v165, v165, 0xCuLL), v165, 8uLL);
          v170 = vmlaq_f32(vmulq_f32(v169, vnegq_f32(v166)), v168, v165);
          v171 = vextq_s8(vextq_s8(v167, v167, 0xCuLL), v167, 8uLL);
          v172 = vmlaq_f32(vmulq_f32(v171, vnegq_f32(v165)), v169, v167);
          v173 = vmlaq_f32(vmulq_f32(v168, vnegq_f32(v167)), v171, v166);
          v174 = vmulq_f32(v155, v170);
          v175 = vmulq_f32(v155, v172);
          v176 = vmulq_f32(v155, v173);
          v177 = vdupq_laneq_s32(v175, 2);
          v178 = vzip1q_s32(vzip1q_s32(v174, v176), v175);
          v179 = vtrn2q_s32(v174, v175);
          v179.i32[2] = v176.i32[1];
          v180 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v174, v176), v177), vaddq_f32(v178, v179)), vdupq_lane_s32(*v156.f32, 0));
          v176.i64[0] = 0xBF000000BF000000;
          v176.i64[1] = 0xBF000000BF000000;
          _Q3 = vaddq_f32(v180, v176);
        }

        else
        {
          __asm { FMOV            V3.4S, #-1.5 }
        }

        v181 = vcgeq_f32(v128, vabsq_f32(_Q3));
        v181.i32[3] = v181.i32[2];
        if ((vminvq_u32(v181) & 0x80000000) != 0)
        {
          v402 = v70;
          v408 = v154;
          v388 = v153;
LABEL_154:
          v398 = v78;
          swift_unknownObjectRelease();

          result = sub_1AF6E534C(&v413);
          *&v371 = v408;
          v370 = 0;
          v369 = v388;
          v15 = vextq_s8(v398, v402, 8uLL);
          *(&v371 + 1) = v402.i64[1];
          a2 = v393;
          goto LABEL_160;
        }
      }

      goto LABEL_53;
    }

    v133 = v70;
    v133.i32[3] = v132.i32[3];
    v55 = v148.f32[2] + vaddv_f32(*v148.f32);
    if (v55 != 0.0)
    {
      v158 = vmulq_f32(v129, v70);
      v159 = vmulq_f32(v133, a3);
      *v158.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v159, v159, 8uLL), *&vextq_s8(v158, v158, 8uLL)), vadd_f32(vzip1_s32(*v159.i8, *v158.i8), vzip2_s32(*v159.i8, *v158.i8)));
      v84 = -vsub_f32(*v158.i8, vdup_lane_s32(*v158.i8, 1)).f32[0] / v55;
      if (v84 >= 0.0 && v84 <= 1.0)
      {
        break;
      }
    }

    v132 = v133;
LABEL_53:
    if (v127 >= v43)
    {
      v379 = v132;
      goto LABEL_11;
    }
  }

  v161 = vaddq_f32(vmulq_n_f32(a4, v84), a3).u64[0];
  v87.i64[0] = v161;
  v87.f32[2] = a3.f32[2] + (a4.f32[2] * v84);
  v87.i32[3] = 0;
  v162 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v139, v139, 0xCuLL), v139, 8uLL), v140), vextq_s8(vextq_s8(v138, v138, 0xCuLL), v138, 8uLL), v139);
  v163 = vmulq_f32(v162, v162);
  v163.f32[0] = v163.f32[2] + vaddv_f32(*v163.f32);
  if (fabsf(v163.f32[0]) >= 1.1755e-38)
  {
    v182 = vsubq_f32(v131, v87);
    v183 = vsubq_f32(v130, v87);
    v184 = vsubq_f32(v129, v87);
    v185 = vextq_s8(vextq_s8(v183, v183, 0xCuLL), v183, 8uLL);
    v186 = vextq_s8(vextq_s8(v182, v182, 0xCuLL), v182, 8uLL);
    v187 = vmlaq_f32(vmulq_f32(v186, vnegq_f32(v183)), v185, v182);
    v188 = vextq_s8(vextq_s8(v184, v184, 0xCuLL), v184, 8uLL);
    v189 = vmlaq_f32(vmulq_f32(v188, vnegq_f32(v182)), v186, v184);
    v190 = vmlaq_f32(vmulq_f32(v185, vnegq_f32(v184)), v188, v183);
    v191 = vmulq_f32(v162, v187);
    v192 = vmulq_f32(v162, v189);
    v193 = vmulq_f32(v162, v190);
    v194 = vdupq_laneq_s32(v192, 2);
    v195 = vzip1q_s32(vzip1q_s32(v191, v193), v192);
    v196 = vtrn2q_s32(v191, v192);
    v196.i32[2] = v193.i32[1];
    v197 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v191, v193), v194), vaddq_f32(v195, v196)), vdupq_lane_s32(*v163.f32, 0));
    v193.i64[0] = 0xBF000000BF000000;
    v193.i64[1] = 0xBF000000BF000000;
    _Q3 = vaddq_f32(v197, v193);
  }

  else
  {
    __asm { FMOV            V3.4S, #-1.5 }
  }

  v198 = vcgeq_f32(v128, vabsq_f32(_Q3));
  v198.i32[3] = v198.i32[2];
  v132 = v133;
  if ((vminvq_u32(v198) & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

  v411 = v161;
LABEL_161:
  v400 = v87;
  v405 = v70;
  v391 = v84;
  swift_unknownObjectRelease();

  result = sub_1AF6E534C(&v413);
  *&v371 = v411;
  v370 = 0;
  v375 = 1.0;
  if (v55 > 0.0)
  {
    v375 = -1.0;
  }

  v376 = COERCE_UNSIGNED_INT(vmuls_lane_f32(v375, v405, 2));
  v369 = v391;
  v15 = vextq_s8(v400, vmulq_n_f32(v405, v375), 8uLL);
  *(&v371 + 1) = v376;
  a2 = v393;
LABEL_160:
  *a2 = LODWORD(v369);
  *(a2 + 8) = 0;
  *(a2 + 16) = v371;
  *(a2 + 24) = v15;
  *(a2 + 40) = *(&v371 + 1);
  *(a2 + 48) = v370;
  return result;
}

uint64_t sub_1AF8C6DEC()
{
  sub_1AF439ED8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t destroy for MeshPart()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for MeshPart(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v5;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for MeshPart(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v5;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for MeshPart(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);
  swift_unknownObjectRelease();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for MeshPart(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshPart(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for VertexLayout(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for VertexLayout(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t initializeWithCopy for MeshBuffer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for MeshBuffer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithTake for MeshBuffer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

unint64_t sub_1AF8C7334()
{
  result = qword_1EB63FF68;
  if (!qword_1EB63FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF68);
  }

  return result;
}

unint64_t sub_1AF8C73D4()
{
  result = qword_1EB63FF78;
  if (!qword_1EB63FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF78);
  }

  return result;
}

void sub_1AF8C7428(const void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v5 = (a2 - a1);
  }

  else
  {
    v5 = 0;
  }

  *a3 = CFXGPUDeviceCreateBufferWithBytes(*(a4 + 16), a1, v5, 0);
  swift_unknownObjectRelease();
  v6 = *a3;
  if (v6)
  {
    swift_unknownObjectRetain();
    sub_1AFDFC028();
    v7 = sub_1AFDFCEC8();

    v8 = [v7 stringByDeletingPathExtension];

    if (!v8)
    {
      sub_1AFDFCEF8();
      v8 = sub_1AFDFCEC8();
    }

    [v6 setLabel_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AF8C7514(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1AF8C7640(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    return sub_1AF8C7640(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1AF8C7640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AFDFBDB8();
  if (v6)
  {
    v6 = v6 + a1 - sub_1AFDFBDE8();
  }

  v7 = a2 - a1;
  v8 = sub_1AFDFBDD8();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v6;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return a3(v6, v11);
}

uint64_t sub_1AF8C76D8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a1 + 24) == *(a2 + 24)) & ~v2;
  }

  return v2;
}

BOOL sub_1AF8C7738(__n128 *a1, __n128 *a2)
{
  if (a1->n128_u64[0] != a2->n128_u64[0] || a1->n128_u64[1] != a2->n128_u64[1] || a1[1].n128_u64[0] != a2[1].n128_u64[0] || a1[1].n128_u64[1] != a2[1].n128_u64[1])
  {
    return 0;
  }

  v3 = a1[2].n128_i64[0];
  v2 = a1[2].n128_i64[1];
  v5 = a1[3].n128_i64[0];
  v4 = a1[3].n128_i64[1];
  v6 = a1[4].n128_i8[0];
  v7 = a2[2].n128_u64[0];
  v8 = a2[2].n128_u64[1];
  v10 = a2[3].n128_u64[0];
  v9 = a2[3].n128_u64[1];
  v11 = a2[4].n128_u8[0];
  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_14:
    v30 = a1[2].n128_i64[0];
    v31 = v2;
    v32 = v5;
    v33 = v4;
    v34 = v6;
    v35 = v7;
    v36 = v8;
    v37 = v10;
    v38 = v9;
    v39 = v11;
LABEL_15:
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF8C9788(&v30);
    return 0;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  if (v3 != v7 || v2 != v8 || v5 != v10)
  {
    return 0;
  }

  if (a1[4].n128_u8[0])
  {
    if ((a2[4].n128_u8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[4].n128_u8[0] & 1) != 0 || v4 != v9)
  {
    return 0;
  }

LABEL_19:
  if (a1[4].n128_u64[1] != a2[4].n128_u64[1] || a1[5].n128_u64[0] != a2[5].n128_u64[0] || (sub_1AFB7B184(a1[5].n128_i64[1], a2[5].n128_i64[1]) & 1) == 0)
  {
    return 0;
  }

  v15 = a1;
  v16 = a1[6].n128_i64[0];
  v18 = v15[6].n128_u64[1];
  v17 = v15[7].n128_u64[0];
  v19 = v15[7].n128_u64[1];
  v20 = v15[8].n128_u8[0];
  v21 = a2[6].n128_u64[0];
  v22 = a2[6].n128_u64[1];
  v24 = a2[7].n128_u64[0];
  v23 = a2[7].n128_u64[1];
  v25 = a2[8].n128_u8[0];
  if (!v16)
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (!v21)
  {
LABEL_31:
    v30 = v16;
    v31 = v18;
    v32 = v17;
    v33 = v19;
    v34 = v20;
    v35 = v21;
    v36 = v22;
    v37 = v24;
    v38 = v23;
    v39 = v25;
    goto LABEL_15;
  }

  if (v16 != v21 || v18 != v22 || v17 != v24)
  {
    return 0;
  }

  if (v15[8].n128_u8[0])
  {
    if (a2[8].n128_u8[0])
    {
      goto LABEL_34;
    }

    return 0;
  }

  if ((a2[8].n128_u8[0] & 1) != 0 || v19 != v23)
  {
    return 0;
  }

LABEL_34:
  v26 = v15[9];
  v27 = v15[10];
  v28 = a2[9];
  v29 = a2[10];

  return sub_1AF6DE1B4(v26, v27, v28, v29);
}