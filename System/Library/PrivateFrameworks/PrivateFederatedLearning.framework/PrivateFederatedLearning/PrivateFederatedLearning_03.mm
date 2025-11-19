uint64_t sub_21A4093E4(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

void *(*sub_21A4093F0(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_21A409348();
  return sub_21A409438;
}

void *sub_21A409438(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_21A409448()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  result = sub_21A409970();
  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_21A4094A0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_21A409A60();
    v2 = *(v0 + 64);
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t (*sub_21A409524(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A4094A0();
  return sub_21A404930;
}

uint64_t sub_21A40956C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21A409BC4();
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t (*sub_21A4095F0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A40956C();
  return sub_21A404A1C;
}

uint64_t sub_21A409638()
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 16);
    size = e5rt_tensor_desc_get_size();
    sub_21A3DCF54(size);
    result = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
  }

  else
  {
    result = *(v0 + 80);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A4096D4(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 88) = 0;
  return result;
}

void *(*sub_21A4096E0(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_21A409638();
  return sub_21A409728;
}

void *sub_21A409728(void *result)
{
  v1 = result[1];
  *(v1 + 80) = *result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_21A409738()
{
  v8 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 1;
  v2 = e5rt_io_port_retain_tensor_desc();
  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  type metadata accessor for TensorDescriptor();
  swift_deallocPartialClassInstance();
  v5 = *MEMORY[0x277D85DE8];
  return v0;
}

void *TensorDescriptor.deinit()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = v0[2];
  e5rt_tensor_desc_release();
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[9];

  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t TensorDescriptor.__deallocating_deinit()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = v0[2];
  e5rt_tensor_desc_release();
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[9];

  result = swift_deallocClassInstance();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A409970()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  v3 = e5rt_tensor_desc_retain_dtype();
  sub_21A3DCF54(v3);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v6 = 6;
    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_21A409A60()
{
  v2 = v1;
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  shape = e5rt_tensor_desc_get_shape();
  sub_21A3DCF54(shape);
  if (!v1)
  {
    sub_21A3DCAF8();
    v2 = swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21A409BC4()
{
  v2 = v1;
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  strides = e5rt_tensor_desc_get_strides();
  sub_21A3DCF54(strides);
  if (!v1)
  {
    sub_21A3DCAF8();
    v2 = swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21A409EB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A450D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  if (*(a1 + 16))
  {
    v9 = sub_21A3DCA2C(0xD000000000000016, 0x800000021A45C5B0);
    if (v10)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v9, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      if (swift_dynamicCast())
      {
        v11 = v59;
        if (*(a1 + 16) && (v12 = sub_21A3DCA2C(0x65527961736D6172, 0xEE00444965706963), (v13 & 1) != 0))
        {
          sub_21A3D3B94(*(a1 + 56) + 32 * v12, v61);

          if (swift_dynamicCast())
          {
            if (v11[2])
            {
              v57 = v59;
              v58 = v60;
              v14 = sub_21A3DCA2C(0xD000000000000013, 0x800000021A45C550);
              if (v15)
              {
                sub_21A3D3B94(v11[7] + 32 * v14, v61);
                v16 = sub_21A3D3CDC();
                if (swift_dynamicCast())
                {
                  v56 = v16;
                  v17 = v59;
                  if (v11[2])
                  {
                    v18 = v59;
                    v19 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45C4B0);
                    v17 = v18;
                    if (v20)
                    {
                      sub_21A3D3B94(v11[7] + 32 * v19, v61);
                      if (swift_dynamicCast())
                      {
                        v55 = v59;
                        if (!v11[2] || (v21 = sub_21A3DCA2C(0x73656E656C617473, 0xEE00656C61635373), v17 = v18, (v22 & 1) == 0))
                        {

                          goto LABEL_29;
                        }

                        sub_21A3D3B94(v11[7] + 32 * v21, v61);
                        if (swift_dynamicCast())
                        {
                          v54 = v59;
                          if (v11[2])
                          {
                            v23 = sub_21A3DCA2C(0x73656E656C617473, 0xED00007361694273);
                            if (v24)
                            {
                              sub_21A3D3B94(v11[7] + 32 * v23, v61);
                              if (swift_dynamicCast())
                              {
                                v53 = v59;
                                v25 = v58;
                                *(v2 + 72) = v57;
                                *(v2 + 80) = v25;
                                *(v2 + 56) = [v18 integerValue];
                                [v55 doubleValue];
                                *(v2 + 16) = v26;
                                if (v11[2] && (v27 = sub_21A3DCA2C(0xD000000000000010, 0x800000021A45C4F0), (v28 & 1) != 0) && (sub_21A3D3B94(v11[7] + 32 * v27, v61), (swift_dynamicCast() & 1) != 0))
                                {
                                  v29 = v59;
                                  [v59 floatValue];
                                  v31 = v30;

                                  v32 = 0;
                                }

                                else
                                {
                                  v32 = 1;
                                  v31 = 0;
                                }

                                *(v2 + 32) = v31;
                                *(v2 + 36) = v32;
                                [v54 floatValue];
                                *(v2 + 44) = v35;
                                [v53 floatValue];
                                *(v2 + 48) = v36;
                                sub_21A450D04();
                                sub_21A450CE4();
                                v38 = v37;
                                v58 = *(v5 + 8);
                                v58(v8, v4);
                                if (*(v2 + 16) >= v38)
                                {
                                  v43 = 28;
                                  goto LABEL_44;
                                }

                                if (*(v2 + 44) <= 0.0)
                                {
                                  v43 = 29;
                                  goto LABEL_44;
                                }

                                sub_21A450D04();
                                sub_21A450CE4();
                                v40 = v39;
                                v58(v8, v4);
                                v41 = v40 - *(v2 + 16);
                                v42 = *(v2 + 48) + (v41 / *(v2 + 44));
                                *(v2 + 40) = v42;
                                if ((LODWORD(v42) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                                {
                                  v43 = 30;
LABEL_44:

LABEL_45:
                                  sub_21A3EC940();
                                  swift_allocError();
                                  *v44 = v43;
                                  swift_willThrow();

                                  v45 = *(v2 + 80);

                                  goto LABEL_34;
                                }

                                if (v11[2] && (v46 = sub_21A3DCA2C(0xD000000000000010, 0x800000021A45C4D0), (v47 & 1) != 0))
                                {
                                  sub_21A3D3B94(v11[7] + 32 * v46, v61);

                                  if (swift_dynamicCast())
                                  {
                                    v48 = v59;
                                    [v59 floatValue];
                                    v50 = v49;

                                    if (*(v2 + 40) >= v50)
                                    {
                                      v43 = 31;
                                      goto LABEL_45;
                                    }
                                  }
                                }

                                else
                                {
                                }

                                if (*(v2 + 36))
                                {
                                  *(v2 + 64) = 1065353216;
                                  v51 = 1.0;
                                }

                                else
                                {
                                  v51 = powf(*(v2 + 40) + 1.0, *(v2 + 32));
                                  *(v2 + 64) = v51;
                                  if (v51 < 1.0)
                                  {
LABEL_56:
                                    sub_21A3EC940();
                                    swift_allocError();
                                    *v52 = 32;
                                    swift_willThrow();

                                    return v2;
                                  }
                                }

                                if ((LODWORD(v51) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                                {

                                  return v2;
                                }

                                goto LABEL_56;
                              }

                              goto LABEL_32;
                            }
                          }

LABEL_29:
LABEL_33:
                          sub_21A3EC940();
                          swift_allocError();
                          *v34 = 27;
                          swift_willThrow();
LABEL_34:
                          type metadata accessor for FederatedBuffer();
                          swift_deallocPartialClassInstance();
                          return v2;
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_32:

            goto LABEL_33;
          }
        }

        else
        {
        }
      }
    }
  }

  type metadata accessor for FederatedBuffer();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_21A40A680()
{
  v1 = *(v0 + 80);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21A40A6F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A40A738(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21A40A794(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
      sub_21A402B04();
      v13 = sub_21A450FD4();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21A3E48DC(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_21A3E48DC((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21A40A940()
{
  v0 = sub_21A450D44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0x3A656C6946;
  v9[1] = 0xE500000000000000;
  sub_21A450D34();
  v5 = sub_21A450D24();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x21CED98B0](v5, v7);

  return v9[0];
}

uint64_t sub_21A40AA48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3 >= *(v1 + 16))
  {
    v4 = 0;
    v6 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *(v1 + 24) = v3 + 1;
    v4 = type metadata accessor for FileRecipeDescriptor();
    result = swift_allocObject();
    v6 = &off_282B41030;
  }

  a1[3] = v4;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t sub_21A40AAE8()
{
  v1 = sub_21A41123C(*v0);

  return v1;
}

uint64_t sub_21A40ABD0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(type metadata accessor for PFLTaskPreferences(0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_21A450A64();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = sub_21A450AA4();
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v12 = sub_21A450BE4();
  v3[22] = v12;
  v13 = *(v12 - 8);
  v3[23] = v13;
  v14 = *(v13 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A40ADD4, 0, 0);
}

uint64_t sub_21A40ADD4()
{
  v82 = v0;
  v1 = v0[13];
  sub_21A3EC940();
  v2 = swift_allocError();
  *v3 = 9;

  sub_21A3FA920(v2, v1, v81);

  v4 = v81[0];
  v5 = v81[1];
  v6 = swift_allocError();
  *v7 = 15;
  sub_21A3E700C(v4, v5);
  v8 = sub_21A400D28(v6);
  sub_21A3E759C(v4, v5);
  v9 = v0[27];
  v10 = v0[13];

  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  sub_21A450B04();

  v13 = [objc_opt_self() defaultManager];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28938, &qword_21A457510);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21A455E00;
  v16 = *MEMORY[0x277CBE8A8];
  *(v15 + 32) = *MEMORY[0x277CBE8A8];
  v17 = v16;
  v18 = sub_21A451554();

  v79 = v4;
  v80 = v8;
  v78 = v5;
  if (v18)
  {
    v19 = v0[21];
    v73 = v18;
    sub_21A451544();
    sub_21A450A94();
    if (v0[10])
    {
      v66 = v17;
      v20 = v0[23];
      v21 = (v20 + 56);
      v62 = v20;
      v69 = (v20 + 32);
      v71 = (v20 + 8);
      v63 = (v0[16] + 8);
      v64 = (v20 + 16);
      v76 = MEMORY[0x277D84F90];
      while (1)
      {
        v22 = v0[22];
        v23 = v0[18];
        v24 = swift_dynamicCast();
        v25 = *v21;
        v26 = v0[18];
        if (v24)
        {
          v28 = v0[26];
          v29 = v0[22];
          v65 = v0[17];
          v25(v26, 0, 1, v29);
          v30 = *v69;
          (*v69)(v28, v26, v29);
          v67 = v14;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21A455E00;
          *(inited + 32) = v66;
          v32 = v66;
          sub_21A424F34(inited);
          swift_setDeallocating();
          sub_21A40BB40(inited + 32);
          sub_21A450AE4();
          v33 = v30;
          v34 = v0[17];

          result = sub_21A450A54();
          if (result == 2)
          {
            __break(1u);
            return result;
          }

          v36 = v0[26];
          if (result)
          {
            (*v64)(v0[25], v0[26], v0[22]);
            v37 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_21A408668(0, v76[2] + 1, 1, v76);
            }

            v39 = v37[2];
            v38 = v37[3];
            if (v39 >= v38 >> 1)
            {
              v76 = sub_21A408668(v38 > 1, v39 + 1, 1, v37);
            }

            else
            {
              v76 = v37;
            }

            v40 = v0[26];
            v61 = v0[25];
            v41 = v0[22];
            (*v63)(v0[17], v0[15]);
            (*(v62 + 8))(v40, v41);
            v76[2] = v39 + 1;
            v33(v76 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v39, v61, v41);
            v14 = v67;
          }

          else
          {
            v42 = v0[22];
            (*v63)(v0[17], v0[15]);
            (*v71)(v36, v42);
          }

          v43 = v0[21];
        }

        else
        {
          v27 = v0[21];
          v25(v0[18], 1, 1, v0[22]);
          sub_21A3D3BF0(v26, &qword_27CD287D8, &qword_21A456BD0);
        }

        sub_21A450A94();
        if (!v0[10])
        {
          goto LABEL_20;
        }
      }
    }

    v76 = MEMORY[0x277D84F90];
LABEL_20:
    (*(v0[20] + 8))(v0[21], v0[19]);

    v44 = v76;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v45 = v0[27];
  v68 = v0[26];
  v70 = v0[25];
  v46 = v0[22];
  v47 = v0[23];
  v72 = v0[24];
  v74 = v0[21];
  v75 = v0[18];
  v77 = v0[17];
  v48 = v0[14];
  v49 = v0[11];
  v50 = v0[12];
  v51 = v49[3];
  v52 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v51);
  v53 = (*(v52 + 48))(v51, v52);
  v55 = v54;
  sub_21A3E759C(v79, v78);
  (*(v47 + 8))(v45, v46);
  sub_21A3D83D8(v50, v48);
  v56 = type metadata accessor for PFLTask();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v59[5] = v44;
  v59[6] = 0;
  v59[2] = v53;
  v59[3] = v55;
  v59[4] = v80;
  sub_21A40BADC(v48, v59 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  v59[6] = 0;

  v60 = v0[1];

  return v60(v59);
}

uint64_t sub_21A40B798()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_21A40B81C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FileRecipeDescriptorIterator();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21A457390;
  v1[3] = v2;
  v1[4] = sub_21A40BB9C(&qword_27CD28930, v4, type metadata accessor for FileRecipeDescriptorIterator);
  *v1 = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21A40B8E8(uint64_t a1)
{
  sub_21A451754();

  MEMORY[0x21CED98B0](0xD000000000000017, 0x800000021A45C6D0);
  return a1;
}

uint64_t sub_21A40B968(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC774;

  return sub_21A40ABD0(a1, a2);
}

uint64_t sub_21A40BA58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_21A40BB9C(&qword_27CD28920, a2, type metadata accessor for FileRecipeDescriptorIterator);
  result = sub_21A40BB9C(&qword_27CD28928, v3, type metadata accessor for FileRecipeDescriptorIterator);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A40BADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLTaskPreferences(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A40BB40(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A40BB9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t E5Trainer.__allocating_init(learningRateName:weightFunctionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  E5Trainer.init(learningRateName:weightFunctionName:)(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_21A40BC4C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21A4516B4();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21A4116E4(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_21A40BCC8(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_21A40BCD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_21A4515F4();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_21A40BD84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_21A4515F4();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_21A40BE38(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BE5C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BE80(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BEA4(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BEC8(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BEEC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BF10(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_21A40BF34(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

char *E5Trainer.init(learningRateName:weightFunctionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  *(v4 + 6) = 0;
  (*(*(*(v9 + 80) - 8) + 56))(&v4[*(v9 + 120)], 1, 1);
  v10 = *(*v4 + 128);
  v11 = MEMORY[0x277D84F90];
  *&v4[v10] = sub_21A3E52B4(MEMORY[0x277D84F90]);
  v12 = *(*v4 + 136);
  *&v4[v12] = sub_21A3E52B4(v11);
  v13 = *(*v4 + 144);
  *&v4[v13] = sub_21A3E52B4(v11);
  v14 = *(*v4 + 152);
  *&v4[v14] = sub_21A3E52B4(v11);
  v15 = *(*v4 + 160);
  *&v4[v15] = sub_21A3E531C(v11);
  v16 = *(*v4 + 168);
  *&v4[v16] = sub_21A3E5330(v11);
  *&v4[*(*v4 + 176)] = 0;
  v17 = *(*v4 + 184);
  *&v4[v17] = sub_21A3E5344(v11);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  *(v4 + 5) = a4;
  return v4;
}

uint64_t sub_21A40C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_21A40C140(a1, a2, a3, a4, a5, a6);
  if (!v9)
  {
    return sub_21A40CBE8(a8, a9);
  }

  return result;
}

uint64_t sub_21A40C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v119 = *MEMORY[0x277D85DE8];
  type metadata accessor for E5Library();
  swift_allocObject();

  result = E5Library.init(modelPath:devices:cachePath:functions:)();
  if (v7)
  {
    goto LABEL_58;
  }

  v102 = a3;
  v113 = result;
  v115 = 0;
  v14 = *(*v6 + 128);
  v15 = *(v6 + v14);
  *(v6 + v14) = a4;

  v16 = *(*v6 + 136);
  v17 = *(v6 + v16);
  *(v6 + v16) = a5;

  v18 = *(*v6 + 144);
  v19 = *(v6 + v18);
  *(v6 + v18) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28558, &unk_21A4575A0);
  v20 = sub_21A451854();
  v21 = v20;
  v22 = 0;
  v23 = *(a6 + 64);
  v103 = a6 + 64;
  v24 = 1 << *(a6 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v106 = a6;
  v107 = v20 + 64;
  v114 = v8;
  v104 = v27;
  v105 = v20;
  if ((v25 & v23) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v22 >= v27)
    {
      break;
    }

    v30 = *(v103 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v26 = (v30 - 1) & v30;
      while (2)
      {
        v31 = v28 | (v22 << 6);
        v32 = (*(a6 + 48) + 16 * v31);
        v34 = *v32;
        v33 = v32[1];
        v35 = *(*(a6 + 56) + 8 * v31);
        v36 = *(v35 + 16);
        if (v36)
        {
          v110 = *v32;
          v111 = v31;
          v112 = v26;
          v116 = MEMORY[0x277D84F90];
          v109 = v33;

          sub_21A3E48DC(0, v36, 0);
          v37 = v35;
          v38 = v116;
          v108 = v37;
          v39 = (v37 + 40);
          do
          {
            v40 = *v39;
            v117 = *(v39 - 1);
            v118 = v40;
            swift_bridgeObjectRetain_n();
            MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);

            v41 = v117;
            v116 = v38;
            v43 = *(v38 + 16);
            v42 = *(v38 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_21A3E48DC((v42 > 1), v43 + 1, 1);
              v38 = v116;
            }

            *(v38 + 16) = v43 + 1;
            v44 = v38 + 16 * v43;
            *(v44 + 32) = v41;
            *(v44 + 40) = v40;
            v39 += 2;
            --v36;
          }

          while (v36);

          v8 = v114;
          v21 = v105;
          a6 = v106;
          v27 = v104;
          v31 = v111;
          v26 = v112;
          v45 = v109;
          v34 = v110;
        }

        else
        {

          v38 = MEMORY[0x277D84F90];
        }

        *(v107 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v46 = (v21[6] + 16 * v31);
        *v46 = v34;
        v46[1] = v45;
        *(v21[7] + 8 * v31) = v38;
        v47 = v21[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (!v48)
        {
          v21[2] = v49;
          if (!v26)
          {
            goto LABEL_6;
          }

LABEL_5:
          v28 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          continue;
        }

        break;
      }

LABEL_63:
      __break(1u);
      __break(1u);
LABEL_64:
      __break(1u);
    }
  }

  v50 = *(*v8 + 152);
  v51 = *(v8 + v50);
  *(v8 + v50) = v21;

  v52 = *(v102 + 16);
  if (v52)
  {
    v53 = (v102 + 40);
    v54 = MEMORY[0x277D84F90];
    do
    {
      v58 = *(v53 - 1);
      v59 = *v53;
      if (v58 != v8[4] || v59 != v8[5])
      {
        v61 = *(v53 - 1);
        v62 = *v53;
        if ((sub_21A4519B4() & 1) == 0)
        {

          v117 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21A3E48DC(0, v54[2] + 1, 1);
            v54 = v117;
          }

          v56 = v54[2];
          v55 = v54[3];
          if (v56 >= v55 >> 1)
          {
            sub_21A3E48DC((v55 > 1), v56 + 1, 1);
            v54 = v117;
          }

          v54[2] = v56 + 1;
          v57 = &v54[2 * v56];
          v57[4] = v58;
          v57[5] = v59;
        }
      }

      v53 += 2;
      --v52;
    }

    while (v52);
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v63 = sub_21A3E531C(MEMORY[0x277D84F90]);
  v111 = v54[2];
  if (v111)
  {
    v112 = v54;
    if (v54[2])
    {
      v65 = v54[4];
      v64 = v54[5];
      type metadata accessor for E5Function();
      swift_allocObject();
      v117 = 0;

      v66 = e5rt_execution_stream_create();
      sub_21A3DCF54(v66);

      if (v115)
      {
      }

      else
      {
        sub_21A3DCAF8();
        swift_allocError();
        *v95 = 6;
        swift_willThrow();
      }

      swift_deallocPartialClassInstance();
      goto LABEL_57;
    }

LABEL_62:
    __break(1u);
    __break(1u);
    goto LABEL_63;
  }

  v67 = *(*v8 + 160);
  v68 = *(v8 + v67);
  *(v8 + v67) = v63;

  v70 = v8[5];
  v117 = v8[4];
  v118 = v70;
  MEMORY[0x28223BE20](v69);
  v101[2] = &v117;
  v71 = v115;
  if (sub_21A4412B8(sub_21A4131E8, v101, v102))
  {
    v72 = v113;
    v73 = sub_21A44BF20();
    v74 = v71;
    if (v71)
    {
LABEL_52:

      goto LABEL_58;
    }

    v75 = *(*v8 + 176);
    v76 = *(v8 + v75);
    *(v8 + v75) = v73;
  }

  else
  {
    v74 = v71;
    v72 = v113;
  }

  v77 = v8[6];
  v8[6] = v72;

  v78 = *(*v8 + 176);
  v79 = *(v8 + v78);
  if (!v79)
  {
    goto LABEL_52;
  }

  v80 = *(v8 + v78);

  v81 = sub_21A404940();
  v82 = v81;
  v115 = v81[2];
  if (v115)
  {
    v83 = 0;
    v84 = v81 + 5;
    while (1)
    {
      if (v83 >= v82[2])
      {
        goto LABEL_64;
      }

      v85 = *(v84 - 1);
      v86 = *v84;
      v117 = 0;
      v87 = *(v79 + 40);
      sub_21A4510E4();

      v88 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v88);
      if (v74)
      {

        goto LABEL_57;
      }

      v89 = v117;
      if (!v117)
      {
        break;
      }

      LOBYTE(v117) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v90 = sub_21A425138(v89, &v117);
      ++v83;
      swift_beginAccess();

      v91 = *(v79 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = *(v79 + 56);
      *(v79 + 56) = 0x8000000000000000;
      sub_21A403158(v90, v85, v86, isUniquelyReferenced_nonNull_native);

      *(v79 + 56) = v116;
      swift_endAccess();

      v84 += 2;
      if (v115 == v83)
      {
        goto LABEL_50;
      }
    }

    sub_21A3DCAF8();
    swift_allocError();
    *v100 = 6;
    swift_willThrow();
  }

  else
  {
LABEL_50:

    v93 = sub_21A3E536C(MEMORY[0x277D84F90]);
    v94 = sub_21A40765C(v93);
    if (!v74)
    {
      v96 = v94;

      v97 = *(*v114 + 184);
      v98 = *(v114 + v97);
      *(v114 + v97) = v96;
    }
  }

LABEL_57:

LABEL_58:
  v99 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A40CBE8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *v2;
  v8 = *(*v2 + 80);
  v9 = sub_21A4515F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = *(v7 + 168);
  v15 = *(v2 + v14);
  *(v2 + v14) = a1;

  (*(v10 + 16))(v13, a2, v9);
  v56 = v2;
  sub_21A40BD84(v13);
  v16 = a1;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
LABEL_5:
  while (v20)
  {
LABEL_10:
    v25 = 0;
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = *(*(v16 + 56) + ((v23 << 9) | (8 * v26)));
    v28 = 1 << *(v27 + 32);
    v29 = (v28 + 63) >> 6;
    v30 = 64;
    while (1)
    {
      v31 = *(v27 + v30);
      if (v31)
      {
        break;
      }

      v25 -= 64;
      v30 += 8;
      if (!--v29)
      {
        goto LABEL_5;
      }
    }

    v32 = __clz(__rbit64(v31));
    if (v32 - v28 != v25)
    {
      v33 = *(v27 + 36);
      v57 = v4;
      result = sub_21A4116E4(v32 - v25, v33, 0, v27);
      v4 = v57;
      v34 = 0;
      if (v28 < 64)
      {
        v35 = ~(-1 << v28);
      }

      else
      {
        v35 = -1;
      }

      v36 = *(v27 + 64) & v35;
      while (v36)
      {
        v37 = v34;
LABEL_25:
        v38 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        if (*(*(v27 + 56) + ((v37 << 9) | (8 * v38))) != result)
        {
          sub_21A3DCAA4();
          swift_allocError();
          *v54 = 46;
          swift_willThrow();
        }
      }

      while (1)
      {
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v37 >= ((v28 + 63) >> 6))
        {
          goto LABEL_5;
        }

        v36 = *(v27 + 64 + 8 * v37);
        ++v34;
        if (v36)
        {
          v34 = v37;
          goto LABEL_25;
        }
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  v39 = v56;
  v40 = *v56;
  v41 = *(v39 + *(*v39 + 160));
  v42 = 1 << *(v41 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v41 + 64);
  v45 = (v42 + 63) >> 6;
  v46 = *(v56 + *(*v56 + 160));
  result = swift_bridgeObjectRetain_n();
  v47 = 0;
  if (!v44)
  {
LABEL_32:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v45)
      {

        return sub_21A4109F8();
      }

      v44 = *(v41 + 64 + 8 * v48);
      ++v47;
      if (v44)
      {
        goto LABEL_35;
      }
    }

LABEL_42:
    __break(1u);
    return result;
  }

  while (1)
  {
    v48 = v47;
LABEL_35:
    v49 = __clz(__rbit64(v44)) | (v48 << 6);
    v50 = (*(v41 + 48) + 16 * v49);
    v51 = *v50;
    v52 = v50[1];
    v53 = *(*(v41 + 56) + 8 * v49);

    sub_21A40D020(v51, v52, v53, v39);
    if (v4)
    {
      break;
    }

    v44 &= v44 - 1;

    v47 = v48;
    if (!v44)
    {
      goto LABEL_32;
    }
  }
}

uint64_t sub_21A40D020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + *(*a4 + 168));
  if (*(v5 + 16))
  {
    v8 = result;
    v9 = *(a4 + *(*a4 + 168));

    v10 = sub_21A3DCA2C(v8, a2);
    if (v11)
    {
      v12 = *(*(v5 + 56) + 8 * v10);

      v13 = sub_21A40FEB8(a3, v8, a2, v12);

      if (v4)
      {
        return result;
      }

      if (*(v13 + 16))
      {
        sub_21A404DB4();
      }
    }
  }

  return result;
}

uint64_t sub_21A40D12C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(*v2 + 144));
  v6 = *(v2 + *(*v2 + 184));
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 88);

  v9 = sub_21A412368(a1, a2, v5, v6, v7);

  return v9;
}

uint64_t sub_21A40D208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(v2 + *(*v2 + 160));
  if (*(v5 + 16))
  {

    v8 = sub_21A3DCA2C(a1, a2);
    if (v9)
    {
      v10 = *(*(v5 + 56) + 8 * v8);

      v11 = *(v3 + *(*v3 + 136));
      if (*(v11 + 16))
      {
        v12 = *(v3 + *(*v3 + 136));

        v13 = sub_21A3DCA2C(a1, a2);
        if (v14)
        {
          v15 = *(*(v11 + 56) + 8 * v13);

          v16 = *(v4 + 80);
          v17 = sub_21A4513B4();
          v18 = MEMORY[0x277D837D0];
          swift_getTupleTypeMetadata2();
          v19 = sub_21A451334();
          sub_21A411744(v19, v18, v17, MEMORY[0x277D837E0]);

          MEMORY[0x28223BE20](v20);
          v27 = *(v4 + 88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
          sub_21A450F94();
          sub_21A412968();
          sub_21A4512B4();

          return v28;
        }
      }
    }

    else
    {
    }
  }

  v22 = *(v4 + 80);
  v23 = sub_21A4513B4();
  v24 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v25 = sub_21A451334();
  v26 = sub_21A411744(v25, v24, v23, MEMORY[0x277D837E0]);

  return v26;
}

uint64_t sub_21A40D4CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  result = swift_beginAccess();
  v7 = *(a3 + 56);
  if (*(v7 + 16))
  {

    v8 = sub_21A3DCA2C(v4, v5);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = *(v10 + 32);

      sub_21A4397E8();

      sub_21A4513B4();
      sub_21A450F94();
      sub_21A450FB4();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21A40D5F4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = sub_21A451614();
  if (!v15)
  {
    sub_21A3DCAF8();
    v19 = swift_allocError();
    *v20 = 0;
    result = swift_willThrow();
    *a7 = v19;
    return result;
  }

  v16 = v15;
  v17 = *a3;

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    if (sub_21A451374())
    {
      sub_21A4517B4();
      swift_getWitnessTable();
      sub_21A4513C4();
      v22 = swift_unknownObjectRetain();
      v18 = MEMORY[0x21CEDA060](v22, a5);

      goto LABEL_14;
    }

    v18 = 0;
  }

  else
  {

    if (_swift_isClassOrObjCExistentialType())
    {
      v18 = ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80)) + (a2 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v18 = a2 + ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80));
    }
  }

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    swift_unknownObjectRetain();
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  _swift_isClassOrObjCExistentialType();

  if (!v18)
  {
LABEL_13:
    v18 = (~*(*(a5 - 8) + 80) | 0xFFFFFF00);
  }

LABEL_14:
  static PFLUtils.copy<A>(from:to:count:)(v18, v16 + *(*(a5 - 8) + 72) * v17, a4, a5, a6);
  return swift_unknownObjectRelease();
}

void *sub_21A40D894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, int a8)
{
  v10 = v8;
  v155 = a6;
  v156 = a8;
  v157 = a4;
  v16 = *v10;
  v154 = *(*(*v10 + 80) - 8);
  v17 = *(v154 + 64);
  v18 = MEMORY[0x28223BE20](a1);
  v151 = v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = v129 - v19;
  v158 = *(v16 + 88);
  v152 = *(v158 + 16);
  v159 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = *a7;
  v26 = *(v10 + *(v16 + 160));
  if (!*(v26 + 16))
  {
    goto LABEL_12;
  }

  v150 = v25;
  v148 = v129 - v24;
  v149 = v23;

  v27 = a1;
  v28 = sub_21A3DCA2C(a1, a2);
  if ((v29 & 1) == 0)
  {

LABEL_12:
    sub_21A3DCAA4();
    swift_allocError();
    *v47 = 18;
    return swift_willThrow();
  }

  v147 = a2;
  v30 = *(*(v26 + 56) + 8 * v28);

  v31 = *(v10 + *(*v10 + 168));
  if (!*(v31 + 16))
  {
LABEL_14:
    sub_21A3DCAA4();
    swift_allocError();
    v50 = 46;
LABEL_20:
    *v49 = v50;
    swift_willThrow();
  }

  v32 = *(v10 + *(*v10 + 168));

  v33 = v27;
  v34 = sub_21A3DCA2C(v27, v147);
  if ((v35 & 1) == 0)
  {

    goto LABEL_14;
  }

  v146 = *(*(v31 + 56) + 8 * v34);

  v36 = *(v10 + *(*v10 + 144));
  if (!*(v36 + 16))
  {
LABEL_19:

    sub_21A3DCAA4();
    swift_allocError();
    v50 = 44;
    goto LABEL_20;
  }

  v37 = *(v10 + *(*v10 + 144));

  v38 = sub_21A3DCA2C(v27, v147);
  if ((v39 & 1) == 0 || (v145 = a3, v40 = *(*(v36 + 56) + 8 * v38), , , v41 = *(v10 + *(*v10 + 152)), !*(v41 + 16)))
  {
LABEL_18:

    goto LABEL_19;
  }

  v144 = v40;

  v42 = sub_21A3DCA2C(v27, v147);
  if ((v43 & 1) == 0)
  {

    goto LABEL_18;
  }

  v44 = *(*(v41 + 56) + 8 * v42);

  v45 = v146;
  v46 = sub_21A3E70C8(v146);
  if (v9)
  {
  }

  v51 = v46;
  v143 = v44;
  result = sub_21A4129CC(v145, v157, a5, v45, v30, v46);
  if (!v51)
  {
    goto LABEL_108;
  }

  if (a5 == 0x8000000000000000 && v51 == -1)
  {
LABEL_110:
    __break(1u);
  }

  else
  {
    v138 = v51;
    v133 = a5 / v51;
    v166 = sub_21A4113F8(0, a5 / v51, 1);
    v52 = v159;
    v165 = sub_21A451334();
    result = sub_21A451334();
    v164 = result;
    if (v156)
    {

      v53 = *(v10 + *(*v10 + 144));
      v54 = *(v10 + *(*v10 + 184));

      v142 = v54;
      v55 = v52;
      v56 = v158;
      v57 = sub_21A412368(v33, v147, v53, v54, v55);

      v165 = v57;
    }

    else
    {
      v56 = v158;
    }

    v58 = v150;
    if (!v155)
    {
LABEL_92:

LABEL_93:
    }

    if ((v133 & 0x8000000000000000) == 0)
    {
      v130 = (v154 + 8);
      v139 = v145 + 64;
      v129[1] = v56 + 32;
      v59 = 0;
      v140 = v30;
      while (1)
      {
        v134 = v59;
        if (v156)
        {

          swift_getAssociatedConformanceWitness();
          sub_21A451A64();
          v60 = v153;
          v61 = v159;
          sub_21A451994();
          v62 = sub_21A451374();
          v63 = sub_21A3DCD0C(v60, v62, v61);
          v64 = v60;
          v59 = v134;
          (*v130)(v64, v61);
          v58 = v150;
          v164 = v63;
        }

        if (v58)
        {
          v142 = v166;
          v65 = v166[2];
          v66 = v65 - 2;
          if (v65 >= 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = sub_21A410FA4(v142);
            }

            v67 = 0;
            v68 = v142 + 4;
            while (1)
            {
              v161 = 0;
              result = MEMORY[0x21CEDB240](&v161, 8);
              v69 = (v161 * v65) >> 64;
              if (v65 > v161 * v65)
              {
                v70 = -v65 % v65;
                if (v70 > v161 * v65)
                {
                  do
                  {
                    v161 = 0;
                    result = MEMORY[0x21CEDB240](&v161, 8);
                  }

                  while (v70 > v161 * v65);
                  v69 = (v161 * v65) >> 64;
                }
              }

              v71 = __OFADD__(v67, v69);
              v72 = v67 + v69;
              if (v71)
              {
                break;
              }

              if (v67 != v72)
              {
                v73 = v142[2];
                if (v67 >= v73)
                {
                  goto LABEL_103;
                }

                if (v72 >= v73)
                {
                  goto LABEL_104;
                }

                v74 = v68[v67];
                v68[v67] = v68[v72];
                v68[v72] = v74;
              }

              --v65;
              v118 = v67++ == v66;
              if (v118)
              {
                v166 = v142;
                goto LABEL_50;
              }
            }

            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

LABEL_50:
          v59 = v134;
        }

        if (v133)
        {
          v135 = sub_21A4513B4();
          v75 = 0;
          do
          {
            v137 = v75;
            v132 = v75 + 1;
            v76 = 1 << *(v145 + 32);
            if (v76 < 64)
            {
              v77 = ~(-1 << v76);
            }

            else
            {
              v77 = -1;
            }

            v78 = v77 & *(v145 + 64);
            v79 = (v76 + 63) >> 6;

            v80 = 0;
            v136 = v79;
            while (v78)
            {
              v81 = v80;
LABEL_62:
              v82 = (*(v145 + 48) + ((v81 << 10) | (16 * __clz(__rbit64(v78)))));
              v84 = *v82;
              v83 = v82[1];
              v161 = *v82;
              v162 = v83;
              swift_bridgeObjectRetain_n();
              sub_21A450FA4();
              v85 = v83;

              if (!v163)
              {

                sub_21A3DCAA4();
                swift_allocError();
                *v127 = 10;
                swift_willThrow();

LABEL_100:
              }

              v87 = v163;
              v142 = v129;
              MEMORY[0x28223BE20](v86);
              v141 = &v129[-12];
              v88 = v158;
              v129[-10] = v159;
              v129[-9] = v88;
              v129[-8] = v140;
              v129[-7] = v84;
              v89 = v157;
              v129[-6] = v85;
              v129[-5] = v89;
              v129[-4] = v146;
              v129[-3] = &v166;
              v90 = v138;
              v129[-2] = v137;
              v129[-1] = v90;
              v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
              sub_21A3DA2A0(sub_21A412DFC, v141, v87, v159, MEMORY[0x277D84F78] + 8, v91, MEMORY[0x277D84950], &v161);
              v78 &= v78 - 1;

              v80 = v81;
              v79 = v136;
            }

            while (1)
            {
              v81 = v80 + 1;
              if (__OFADD__(v80, 1))
              {
                __break(1u);

                goto LABEL_93;
              }

              if (v81 >= v79)
              {
                break;
              }

              v78 = *(v139 + 8 * v81);
              ++v80;
              if (v78)
              {
                goto LABEL_62;
              }
            }

            v92 = sub_21A3E536C(MEMORY[0x277D84F90]);
            v142 = sub_21A40765C(v92);

            if (v156)
            {
              v93 = *(v10 + *(*v10 + 152));

              v95 = v158;
              v94 = v159;
              v96 = sub_21A412368(v33, v147, v93, v142, v159);

              v161 = v96;
              static PFLUtils.inplaceSub<A>(_:_:)(&v161, v165, v94, v95);
              static PFLUtils.inplaceAdd<A>(_:_:)(&v164, v161, v94, v95);

              v59 = v134;
            }

            else
            {
              v97 = v144;
              v59 = v134;
              v131 = *(v144 + 16);
              if (v131)
              {
                v98 = 0;
                v99 = 0;
                while (1)
                {
                  if (v99 >= *(v97 + 16))
                  {
                    goto LABEL_105;
                  }

                  v100 = *(v143 + 16);
                  if (v99 == v100)
                  {
                    goto LABEL_81;
                  }

                  if (v99 >= v100)
                  {
                    goto LABEL_106;
                  }

                  v141 = v99;
                  v101 = v97 + v98;
                  v102 = *(v97 + v98 + 40);
                  v103 = v142;
                  if (!v142[2])
                  {

                    goto LABEL_97;
                  }

                  v137 = *(v101 + 32);
                  v136 = v98;
                  v104 = *(v143 + v98 + 32);
                  v105 = *(v143 + v98 + 40);
                  v106 = v102;

                  v107 = sub_21A3DCA2C(v104, v105);
                  v109 = v108;

                  if ((v109 & 1) == 0)
                  {
                    break;
                  }

                  v110 = *(v103[7] + 8 * v107);
                  v111 = *(v10 + *(*v10 + 184));
                  if (!*(v111 + 16))
                  {
                    break;
                  }

                  v112 = *(v10 + *(*v10 + 184));

                  v113 = sub_21A3DCA2C(v137, v106);
                  v115 = v114;

                  if ((v115 & 1) == 0)
                  {

                    goto LABEL_99;
                  }

                  v116 = *(*(v111 + 56) + 8 * v113);

                  if (!v17)
                  {
                    goto LABEL_107;
                  }

                  v117 = *(v110 + 32);
                  v118 = v117 == 0x8000000000000000 && v17 == -1;
                  v97 = v144;
                  v59 = v134;
                  if (v118)
                  {
                    goto LABEL_109;
                  }

                  v99 = (v141 + 1);
                  static PFLUtils.copy<A>(from:to:count:)(*(v110 + 24), *(v116 + 24), v117 / v17, v159, v158);

                  v98 = v136 + 16;
                  if (v131 == v99)
                  {
                    goto LABEL_81;
                  }
                }

LABEL_97:

LABEL_99:

                sub_21A3DCAA4();
                swift_allocError();
                *v128 = 44;
                swift_willThrow();
                goto LABEL_100;
              }

LABEL_81:
            }

            v75 = v132;
          }

          while (v132 != v133);
        }

        if (v156)
        {
          v119 = v158;
          v120 = v159;
          v121 = v151;
          (*(v158 + 32))(v133, v159, v158);
          static PFLUtils.inplaceDiv<A>(_:_:)(&v164, v121, v120, v119);
          v142 = v164;
          static PFLUtils.inplaceAdd<A>(_:_:)(&v165, v164, v120, v119);
          v163 = 0;
          sub_21A4513B4();
          sub_21A451324();
          v122 = v165;
          if (_swift_isClassOrObjCExistentialType())
          {
            v123 = v122 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v123 = v122;
          }

          v124 = *(v123 + 16);
          if (_swift_isClassOrObjCExistentialType())
          {
            v125 = v122 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v125 = v122;
          }

          v161 = v125 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
          v126 = v161;
          v162 = v124;
          sub_21A40ED0C(&v161, v144, v10, &v163, &v160);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
          sub_21A3DC9D4(&v161, v126, v124);
          (*v130)(v121, v120);
          v59 = v134;
        }

        ++v59;
        v58 = v150;
        if (v59 == v155)
        {
          goto LABEL_92;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A40EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v19 = sub_21A451014();
  if (!v19)
  {
    sub_21A3DCAF8();
    v35 = swift_allocError();
    *v36 = 0;
LABEL_17:
    result = swift_willThrow();
    goto LABEL_18;
  }

  v20 = v19;
  swift_beginAccess();
  v21 = *(a3 + 48);
  if (!*(v21 + 16))
  {
LABEL_16:
    sub_21A3DCAA4();
    v35 = swift_allocError();
    *v37 = 10;
    goto LABEL_17;
  }

  v22 = sub_21A3DCA2C(a4, a5);
  if ((v23 & 1) == 0)
  {

    goto LABEL_16;
  }

  v40 = *(*(v21 + 56) + 8 * v22);

  if (*(a6 + 16))
  {
    result = sub_21A3DCA2C(a4, a5);
    if (v25)
    {
      v26 = a12;
      v27 = a9;
      v28 = *(*(a6 + 56) + 8 * result);
      if (*(a7 + 16))
      {
        result = sub_21A3DCA2C(a4, a5);
        v27 = a9;
        v26 = a12;
        if (v29)
        {
          if ((a9 & 0x8000000000000000) == 0)
          {
            if (*(*a8 + 16) > a9)
            {
              v30 = *(*a8 + 8 * a9 + 32);
              v31 = v28 * v30;
              if ((v28 * v30) >> 64 == (v28 * v30) >> 63)
              {
                if ((v31 * a10) >> 64 == (v31 * a10) >> 63)
                {
                  v32 = v28 * a10;
                  if ((v28 * a10) >> 64 == (v28 * a10) >> 63)
                  {
                    v33 = *(*(v40 + 32) + 24);
                    v34 = v20 + *(*(a11 - 8) + 72) * v31 * a10;
LABEL_25:
                    static PFLUtils.copy<A>(from:to:count:)(v34, v33, v32, a11, v26);
                  }

                  goto LABEL_33;
                }

LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                return result;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(*a8 + 16) > v27)
      {
        v39 = *(*a8 + 8 * v27 + 32);
        if ((v28 * v39) >> 64 == (v28 * v39) >> 63)
        {
          v34 = v20 + *(*(a11 - 8) + 72) * v28 * v39;
          v33 = *(*(v40 + 32) + 24);
          v32 = v28;
          goto LABEL_25;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  sub_21A3DCAA4();
  v35 = swift_allocError();
  *v38 = 10;
  swift_willThrow();

LABEL_18:
  *a13 = v35;
  return result;
}

uint64_t sub_21A40ED0C(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v10 = *a1;
  v9 = a1[1];
  v32 = *a3;
  v33 = *(*a3 + 80);
  result = sub_21A451614();
  v31 = result;
  if (result)
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v30 = a5;
      v13 = v33 - 8;
      for (i = (a2 + 40); ; i += 2)
      {
        v15 = *(a3 + *(*a3 + 184));
        if (!*(v15 + 16))
        {
          goto LABEL_16;
        }

        v17 = *(i - 1);
        v16 = *i;
        v18 = *(a3 + *(*a3 + 184));

        v19 = sub_21A3DCA2C(v17, v16);
        v21 = v20;

        if ((v21 & 1) == 0)
        {

LABEL_16:
          sub_21A3DCAA4();
          v28 = swift_allocError();
          v29 = 44;
          a5 = v30;
          goto LABEL_17;
        }

        v22 = *(*(v15 + 56) + 8 * v19);

        v23 = *(v22 + 32);
        v24 = *(*v13 + 64);
        if (!v24)
        {
          break;
        }

        if (v23 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_21;
        }

        v26 = v23 / v24;
        static PFLUtils.copy<A>(from:to:count:)(v31 + *(*v13 + 72) * *a4, *(v22 + 24), v23 / v24, v33, *(v32 + 88));

        if (__OFADD__(*a4, v26))
        {
          goto LABEL_20;
        }

        *a4 += v26;
        if (!--v12)
        {
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }
  }

  else
  {
    sub_21A3DCAF8();
    v28 = swift_allocError();
    v29 = 0;
LABEL_17:
    *v27 = v29;
    result = swift_willThrow();
    *a5 = v28;
  }

  return result;
}

uint64_t sub_21A40EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = *v5;
  v9 = *(v5 + *(*v5 + 160));
  if (!*(v9 + 16))
  {
    goto LABEL_8;
  }

  v15 = sub_21A3DCA2C(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_8:
    sub_21A3DCAA4();
    swift_allocError();
    *v26 = 19;
    return swift_willThrow();
  }

  v117 = *(*(v9 + 56) + 8 * v15);

  v17 = *(v7 + *(*v7 + 168));
  if (!*(v17 + 16))
  {
LABEL_10:
    sub_21A3DCAA4();
    swift_allocError();
    *v27 = 46;
    swift_willThrow();
  }

  v18 = *(v7 + *(*v7 + 168));

  v19 = sub_21A3DCA2C(a1, a2);
  if ((v20 & 1) == 0)
  {

    goto LABEL_10;
  }

  v111 = a5;
  v116 = a3;
  v114 = a4;
  v21 = *(*(v17 + 56) + 8 * v19);

  v115 = *(v8 + 80);
  v22 = sub_21A4513B4();
  v23 = sub_21A450F94();
  v24 = sub_21A450F44();
  v121 = v24;
  result = sub_21A3E70C8(v21);
  if (v6)
  {
  }

  v113 = v24;
  v109 = v22;
  v104 = v23;
  if (!result)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v28 = v111;
  v29 = v21;
  if (v111 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_66;
  }

  v30 = *(v8 + 88);
  v31 = result;
  result = sub_21A4129CC(v116, v114, v111, v29, v117, result);
  v32 = v116;
  v33 = v111 / v31;
  if (((v111 / v31) & 0x8000000000000000) == 0)
  {
    v106 = v30;
    v107 = v31;
    v110 = v29;
    if (v33)
    {
      v34 = 0;
      v35 = v116 + 64;
      v105 = v116 + 64;
      v100 = a2;
      v101 = v111 / v31;
      v102 = a1;
      while (2)
      {
        v108 = v34;
        v103 = v34 + 1;
        v36 = 1 << *(v32 + 32);
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v38 = v37 & *(v32 + 64);
        v39 = (v36 + 63) >> 6;

        v40 = 0;
        if (v38)
        {
          while (1)
          {
            v41 = v40;
LABEL_26:
            v42 = (*(v32 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v38)))));
            v44 = *v42;
            v43 = v42[1];
            v118 = *v42;
            v119 = v43;
            swift_bridgeObjectRetain_n();
            sub_21A450FA4();

            v46 = v120;
            if (!v120)
            {
              goto LABEL_58;
            }

            v112 = &v100;
            MEMORY[0x28223BE20](v45);
            v113 = 0;
            v47 = v115;
            v90 = v115;
            v91 = v106;
            v92 = v117;
            v93 = v44;
            v94 = v43;
            v95 = v114;
            v96 = v110;
            v97 = v108;
            v98 = v107;
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
            v49 = v113;
            sub_21A3DA2A0(sub_21A412E40, v89, v46, v47, MEMORY[0x277D84F78] + 8, v48, MEMORY[0x277D84950], &v118);
            if (v49)
            {
            }

            v38 &= v38 - 1;

            v40 = v41;
            v32 = v116;
            v35 = v105;
            if (!v38)
            {
              goto LABEL_23;
            }
          }
        }

        while (1)
        {
LABEL_23:
          v41 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_61:

            v87 = v102;
            v88 = v100;
            v118 = sub_21A40D208(v102, v100);
            sub_21A4513B4();
            sub_21A451384();
            sub_21A41099C(v35, v87, v88, v110);
            goto LABEL_46;
          }

          if (v41 >= v39)
          {
            break;
          }

          v38 = *(v35 + 8 * v41);
          ++v40;
          if (v38)
          {
            goto LABEL_26;
          }
        }

        v50 = sub_21A3E536C(MEMORY[0x277D84F90]);
        sub_21A40765C(v50);

        a1 = v102;
        a2 = v100;
        v118 = sub_21A40D208(v102, v100);
        sub_21A4513B4();
        sub_21A451384();
        v34 = v103;
        v33 = v101;
        v28 = v111;
        if (v103 != v101)
        {
          continue;
        }

        break;
      }
    }

    v112 = v28 - v33 * v107;
    if (v112 < 1)
    {
LABEL_46:

      return v121;
    }

    v101 = v33;
    v102 = a1;
    v100 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
    v51 = v110;
    result = sub_21A451854();
    v52 = result;
    v53 = 0;
    v54 = v51 + 8;
    v55 = 1 << *(v51 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & v51[8];
    v58 = (v55 + 63) >> 6;
    for (i = result + 64; v57; result = )
    {
      v60 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
LABEL_41:
      v63 = v60 | (v53 << 6);
      v64 = (v110[6] + 16 * v63);
      v65 = *v64;
      result = v64[1];
      *(i + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v66 = (v52[6] + 16 * v63);
      *v66 = v65;
      v66[1] = result;
      *(v52[7] + 8 * v63) = v112;
      v67 = v52[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_67;
      }

      v52[2] = v69;
    }

    v61 = v53;
    while (1)
    {
      v53 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v53 >= v58)
      {
        break;
      }

      v62 = v54[v53];
      ++v61;
      if (v62)
      {
        v60 = __clz(__rbit64(v62));
        v57 = (v62 - 1) & v62;
        goto LABEL_41;
      }
    }

    sub_21A41099C(v117, v102, v100, v52);

    v70 = v32 + 64;
    v71 = 1 << *(v32 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v32 + 64);
    v74 = (v71 + 63) >> 6;

    v75 = 0;
    v108 = v32 + 64;
    if (v73)
    {
      while (1)
      {
        v76 = v75;
LABEL_54:
        v77 = (*(v32 + 48) + ((v76 << 10) | (16 * __clz(__rbit64(v73)))));
        v79 = *v77;
        v78 = v77[1];
        v118 = *v77;
        v119 = v78;
        swift_bridgeObjectRetain_n();
        sub_21A450FA4();

        v81 = v120;
        if (!v120)
        {
          break;
        }

        v111 = &v100;
        MEMORY[0x28223BE20](v80);
        v113 = 0;
        v82 = v115;
        v90 = v115;
        v91 = v106;
        v92 = v117;
        v93 = v79;
        v94 = v78;
        v95 = v114;
        v96 = v110;
        v97 = v101;
        v98 = v107;
        v99 = v112;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        v84 = v113;
        sub_21A3DA2A0(sub_21A412E80, v89, v81, v82, MEMORY[0x277D84F78] + 8, v83, MEMORY[0x277D84950], &v118);
        if (v84)
        {
        }

        v73 &= v73 - 1;

        v75 = v76;
        v32 = v116;
        v70 = v108;
        if (!v73)
        {
          goto LABEL_51;
        }
      }

LABEL_58:

      sub_21A3DCAA4();
      swift_allocError();
      *v85 = 10;
      swift_willThrow();
    }

LABEL_51:
    while (1)
    {
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_65;
      }

      if (v76 >= v74)
      {

        v86 = sub_21A3E536C(MEMORY[0x277D84F90]);
        v35 = v117;
        sub_21A40765C(v86);
        goto LABEL_61;
      }

      v73 = *(v70 + 8 * v76);
      ++v75;
      if (v73)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

unint64_t sub_21A40F9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v18 = sub_21A451014();
  if (!v18)
  {
    sub_21A3DCAF8();
    v30 = swift_allocError();
    *v31 = 0;
LABEL_16:
    result = swift_willThrow();
    *a12 = v30;
    return result;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = *(a3 + 48);
  if (!*(v20 + 16))
  {
LABEL_15:
    sub_21A3DCAA4();
    v30 = swift_allocError();
    *v32 = 10;
    goto LABEL_16;
  }

  v21 = sub_21A3DCA2C(a4, a5);
  if ((v22 & 1) == 0)
  {

    goto LABEL_15;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  if (!*(a6 + 16) || (result = sub_21A3DCA2C(a4, a5), (v25 & 1) == 0))
  {

    goto LABEL_15;
  }

  v26 = a11;
  v27 = *(*(a6 + 56) + 8 * result);
  if (!*(a7 + 16) || (result = sub_21A3DCA2C(a4, a5), v26 = a11, (v28 & 1) == 0))
  {
    if ((v27 * a8) >> 64 == (v27 * a8) >> 63)
    {
      static PFLUtils.copy<A>(from:to:count:)(v19 + *(*(a10 - 8) + 72) * v27 * a8, *(*(v23 + 32) + 24), v27, a10, v26);
    }

    __break(1u);
    goto LABEL_21;
  }

  v29 = v27 * a8;
  if ((v27 * a8) >> 64 != (v27 * a8) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v29 * a9) >> 64 != (v29 * a9) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v27 * a9) >> 64 == (v27 * a9) >> 63)
  {
    static PFLUtils.copy<A>(from:to:count:)(v19 + *(*(a10 - 8) + 72) * v29 * a9, *(*(v23 + 32) + 24), v27 * a9, a10, a11);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_21A40FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v19 = sub_21A451014();
  if (!v19)
  {
    sub_21A3DCAF8();
    v31 = swift_allocError();
    *v32 = 0;
LABEL_16:
    result = swift_willThrow();
    *a13 = v31;
    return result;
  }

  v20 = v19;
  swift_beginAccess();
  v21 = *(a3 + 48);
  if (!*(v21 + 16))
  {
LABEL_15:
    sub_21A3DCAA4();
    v31 = swift_allocError();
    *v33 = 10;
    goto LABEL_16;
  }

  v22 = sub_21A3DCA2C(a4, a5);
  if ((v23 & 1) == 0)
  {

    goto LABEL_15;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  if (!*(a6 + 16) || (result = sub_21A3DCA2C(a4, a5), (v26 & 1) == 0))
  {

    goto LABEL_15;
  }

  v27 = a12;
  v28 = *(*(a6 + 56) + 8 * result);
  if (!*(a7 + 16) || (result = sub_21A3DCA2C(a4, a5), v27 = a12, (v29 & 1) == 0))
  {
    if ((v28 * a8) >> 64 == (v28 * a8) >> 63)
    {
      static PFLUtils.copy<A>(from:to:count:)(v20 + *(*(a11 - 8) + 72) * v28 * a8, *(*(v24 + 32) + 24), v28, a11, v27);
    }

    __break(1u);
    goto LABEL_21;
  }

  v30 = v28 * a8;
  if ((v28 * a8) >> 64 != (v28 * a8) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v30 * a9) >> 64 != (v30 * a9) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v28 * a10) >> 64 == (v28 * a10) >> 63)
  {
    static PFLUtils.copy<A>(from:to:count:)(v20 + *(*(a11 - 8) + 72) * v30 * a9, *(*(v24 + 32) + 24), v28 * a10, a11, a12);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21A40FEB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = *(v4 + *(*v4 + 128));
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v5 = a4;

  v10 = sub_21A3DCA2C(a2, a3);
  if ((v11 & 1) == 0)
  {

LABEL_7:
    sub_21A3DCAA4();
    swift_allocError();
    *v17 = 10;
    swift_willThrow();
LABEL_8:
    v18 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v64 = v5;
  v12 = *(*(v6 + 56) + 8 * v10);

  v13 = sub_21A3E5484(MEMORY[0x277D84F90]);
  if (v12[2])
  {
    v14 = v12[4];
    v15 = v12[5];
    v16 = *(a1 + 40);
    sub_21A4510E4();

    v5 = e5rt_execution_stream_operation_retain_input_port();

    if (!v5)
    {

      sub_21A3DCAF8();
      swift_allocError();
      *v63 = 6;
      swift_willThrow();

LABEL_47:

      goto LABEL_8;
    }

    EspressoError.init(rawValue:)(v5 + 9150);
    v57 = v69;
    if (v69 != 48)
    {
LABEL_46:
      sub_21A3DCAA4();
      swift_allocError();
      *v62 = v57;
      swift_willThrow();

      goto LABEL_47;
    }

    if (qword_27CD28170 == -1)
    {
LABEL_43:
      v58 = sub_21A450F24();
      __swift_project_value_buffer(v58, qword_27CD28C90);
      v59 = sub_21A450F04();
      v60 = sub_21A451584();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 67109120;
        *(v61 + 4) = v5;
        _os_log_impl(&dword_21A3C2000, v59, v60, "Unknown E5 code: %u", v61, 8u);
        MEMORY[0x21CEDB220](v61, -1, -1);
      }

      v57 = 27;
      goto LABEL_46;
    }

LABEL_50:
    swift_once();
    goto LABEL_43;
  }

  v20 = v13 + 64;
  v21 = 1 << *(v13 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v13;
  v24 = v22 & *(v13 + 64);
  v25 = (v21 + 63) >> 6;
  v68 = v23;

  v26 = 0;
  v5 = MEMORY[0x277D84F98];
  while (2)
  {
    v54 = v64;
LABEL_12:
    while (2)
    {
      if (v24)
      {
        v27 = v24;
        goto LABEL_18;
      }

      do
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v28 >= v25)
        {

          goto LABEL_8;
        }

        v27 = *(v20 + 8 * v28);
        ++v26;
      }

      while (!v27);
      v26 = v28;
LABEL_18:
      v24 = (v27 - 1) & v27;
      if (!v54[2])
      {
        continue;
      }

      break;
    }

    v29 = __clz(__rbit64(v27)) | (v26 << 6);
    v30 = (*(v68 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(*(v68 + 56) + 8 * v29);

    v34 = sub_21A3DCA2C(v31, v32);
    if ((v35 & 1) == 0)
    {
      goto LABEL_38;
    }

    v36 = *(v64[7] + 8 * v34);
    v37 = sub_21A4094A0();
    if (!*(v37 + 16))
    {
      goto LABEL_49;
    }

    v38 = *(v37 + 32);

    if (v38 == v36)
    {
LABEL_38:

      continue;
    }

    break;
  }

  v39 = *(v33 + 64);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (*(v39 + 2))
    {
      goto LABEL_24;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v39 = sub_21A410FA4(v39);
  if (!*(v39 + 2))
  {
    goto LABEL_51;
  }

LABEL_24:
  v67 = v39;
  *(v39 + 4) = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v5;
  v40 = sub_21A3DCA2C(v31, v32);
  v42 = v5[2];
  v43 = (v41 & 1) == 0;
  v44 = __OFADD__(v42, v43);
  v45 = v42 + v43;
  if (v44)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v5[3] >= v45)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v41)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v66 = v40;
      v55 = v41;
      sub_21A3E43FC();
      v56 = v55;
      v40 = v66;
      v5 = v70;
      if (v56)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v5[(v40 >> 6) + 8] |= 1 << v40;
    v49 = (v5[6] + 16 * v40);
    *v49 = v31;
    v49[1] = v32;
    *(v5[7] + 8 * v40) = v39;
    v50 = v5[2];
    v44 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (!v44)
    {
      v5[2] = v51;

      goto LABEL_33;
    }

LABEL_53:
    __break(1u);
  }

  v46 = v41;
  sub_21A3E3574(v45, isUniquelyReferenced_nonNull_native);
  v40 = sub_21A3DCA2C(v31, v32);
  if ((v46 & 1) == (v47 & 1))
  {
    v48 = v46;
    v5 = v70;
    if ((v48 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    v52 = v5[7];
    v53 = *(v52 + 8 * v40);
    *(v52 + 8 * v40) = v67;

    swift_bridgeObjectRelease_n();
LABEL_33:
    v54 = v64;

    goto LABEL_12;
  }

  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A41099C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_21A40FEB8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_21A404DB4();

    return sub_21A4109F8();
  }

  return result;
}

uint64_t sub_21A4109F8()
{
  v2 = v0;
  v3 = *(v0 + *(*v0 + 160));
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(v3 + 48) + 16 * v11 + 8);
      v13 = *(*(v3 + 56) + 8 * v11);

      sub_21A411A30(v14, v2);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

char *E5Trainer.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(*v0 + 120);
  v6 = *(v1 + 80);
  v7 = sub_21A4515F4();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  v8 = *&v0[*(*v0 + 128)];

  v9 = *&v0[*(*v0 + 136)];

  v10 = *&v0[*(*v0 + 144)];

  v11 = *&v0[*(*v0 + 152)];

  v12 = *&v0[*(*v0 + 160)];

  v13 = *&v0[*(*v0 + 168)];

  v14 = *&v0[*(*v0 + 176)];

  v15 = *&v0[*(*v0 + 184)];

  return v0;
}

uint64_t E5Trainer.__deallocating_deinit()
{
  E5Trainer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21A410D24(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B0, &qword_21A4564C0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

unint64_t sub_21A410D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_21A450FC4();

  return sub_21A410DF4(a1, v9, a2, a3);
}

unint64_t sub_21A410DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_21A451004();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_21A410FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21A451844();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_21A41101C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = MEMORY[0x277D84F90];
  if (v2 < *(v1 + 16))
  {
    v4 = result;
    v5 = 0;
    v6 = MEMORY[0x277D84F90] + 32;
    while ((v2 & 0x8000000000000000) == 0)
    {
      v7 = type metadata accessor for CKRecipeDescriptorRecord(0);
      v22 = v7;
      v23 = &off_282B40378;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_21A41310C(v1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v2, boxed_opaque_existential_1);
      *(v4 + 24) = v2 + 1;
      result = sub_21A3C50DC(&v21, v24);
      if (!v5)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD289C8, &qword_21A457598);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size(v12) - 32) / 40;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          v16 = v3 + 4;
          if (v12 != v3 || v14 >= v16 + 40 * v15)
          {
            memmove(v12 + 4, v16, 40 * v15);
          }

          v3[2] = 0;
        }

        v6 = v14 + 40 * v15;
        v5 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v12;
      }

      v17 = __OFSUB__(v5--, 1);
      if (v17)
      {
        goto LABEL_24;
      }

      result = sub_21A3C50DC(v24, v6);
      v6 += 40;
      v1 = *(v4 + 16);
      v2 = *(v4 + 24);
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = 0;
LABEL_19:
  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v5);
  v20 = v19 - v5;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21A41123C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = MEMORY[0x277D84F90];
  if (v1 < *(result + 16))
  {
    v3 = result;
    v4 = type metadata accessor for FileRecipeDescriptor();
    v5 = 0;
    v6 = (v2 + 4);
    while (1)
    {
      *(v3 + 24) = v1 + 1;
      v7 = swift_allocObject();
      v21 = v4;
      v22 = &off_282B41030;
      *&v20 = v7;
      result = sub_21A3C50DC(&v20, v23);
      if (!v5)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD289C8, &qword_21A457598);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 40;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[5 * v14 + 4])
          {
            memmove(v11 + 4, v2 + 4, 40 * v14);
          }

          v2[2] = 0;
        }

        v6 = v13 + 40 * v14;
        v5 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v11;
      }

      v16 = __OFSUB__(v5--, 1);
      if (v16)
      {
        break;
      }

      result = sub_21A3C50DC(v23, v6);
      v6 += 40;
      v1 = *(v3 + 24);
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = 0;
LABEL_21:
  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v5);
  v19 = v18 - v5;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21A4113F8(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_21A41168C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A4519B4() & 1;
  }
}

uint64_t sub_21A4116E4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21A411734(uint64_t result)
{
  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_21A411744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_21A451374())
  {
    sub_21A451884();
    v13 = sub_21A451874();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_21A451374();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_21A451354())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21A451784();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21A410D98(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_21A411A30(void *a1, void *a2)
{
  v95[3] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v92 = a2;
  v5 = *(v4 + 80);
  v6 = sub_21A4515F4();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v83 - v9;
  v89 = v5;
  v88 = *(v5 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v83 - v11;
  v12 = sub_21A404940();
  v13 = v12;
  v93 = v12[2];
  if (v93)
  {
    v14 = 0;
    v15 = v12 + 5;
    while (1)
    {
      if (v14 >= v13[2])
      {
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v17 = *(v15 - 1);
      v16 = *v15;
      v95[0] = 0;
      v18 = a1[5];
      sub_21A4510E4();

      v19 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v19);
      if (v2)
      {

        goto LABEL_38;
      }

      v20 = v95[0];
      if (!v95[0])
      {
        break;
      }

      LOBYTE(v95[0]) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v21 = sub_21A425138(v20, v95);
      ++v14;
      swift_beginAccess();

      v22 = a1[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = a1[7];
      a1[7] = 0x8000000000000000;
      sub_21A403158(v21, v17, v16, isUniquelyReferenced_nonNull_native);

      a1[7] = v94;
      swift_endAccess();

      v15 += 2;
      if (v93 == v14)
      {
        goto LABEL_7;
      }
    }

    sub_21A3DCAF8();
    swift_allocError();
    *v62 = 6;
    swift_willThrow();
LABEL_33:

    goto LABEL_38;
  }

LABEL_7:

  v24 = sub_21A404854();
  v25 = v24;
  v90 = v24[2];
  if (v90)
  {
    v26 = 0;
    v27 = v24 + 5;
    v91 = v24;
    while (1)
    {
      if (v26 >= v25[2])
      {
        goto LABEL_40;
      }

      v28 = *(v27 - 1);
      v29 = *v27;
      v30 = *(v92 + *(*v92 + 176));
      v93 = v28;
      if (!v30)
      {
        break;
      }

      swift_retain_n();

      v31 = sub_21A404940();

      v95[0] = v28;
      v95[1] = v29;
      MEMORY[0x28223BE20](v32);
      *(&v83 - 2) = v95;
      v33 = sub_21A4412B8(sub_21A413170, (&v83 - 4), v31);

      if ((v33 & 1) == 0 || (v34 = *(v92 + *(*v92 + 184)), !*(v34 + 16)))
      {

LABEL_20:
        v95[0] = 0;
        v45 = a1[5];
        sub_21A4510E4();
        v46 = e5rt_execution_stream_operation_retain_input_port();

        sub_21A3DCF54(v46);
        if (v2)
        {

          goto LABEL_33;
        }

        v47 = v95[0];
        v25 = v91;
        if (!v95[0])
        {

          sub_21A3DCAF8();
          swift_allocError();
          *v63 = 6;
          swift_willThrow();

          goto LABEL_38;
        }

        LOBYTE(v95[0]) = 0;
        type metadata accessor for IOPort();
        swift_allocObject();
        v48 = sub_21A425138(v47, v95);
        swift_beginAccess();

        v49 = a1[6];
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v94 = a1[6];
        a1[6] = 0x8000000000000000;
        sub_21A403158(v48, v93, v29, v50);

        a1[6] = v94;
        swift_endAccess();
        goto LABEL_23;
      }

      v35 = *(v92 + *(*v92 + 184));

      v36 = sub_21A3DCA2C(v93, v29);
      if ((v37 & 1) == 0)
      {

        goto LABEL_20;
      }

      v38 = *(*(v34 + 56) + 8 * v36);

      v95[0] = 0;
      v39 = a1[5];
      sub_21A4510E4();
      v40 = e5rt_execution_stream_operation_retain_input_port();

      sub_21A3DCF54(v40);
      if (v2)
      {
        goto LABEL_36;
      }

      v41 = v95[0];
      if (!v95[0])
      {
        sub_21A3DCAF8();
        swift_allocError();
        *v81 = 6;
        swift_willThrow();
LABEL_36:

LABEL_37:

        goto LABEL_38;
      }

      type metadata accessor for IOPort();
      swift_allocObject();

      v42 = sub_21A425434(v41, v38);
      swift_beginAccess();

      v43 = a1[6];
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v94 = a1[6];
      a1[6] = 0x8000000000000000;
      sub_21A403158(v42, v93, v29, v44);

      a1[6] = v94;
      swift_endAccess();

      v25 = v91;
LABEL_23:
      ++v26;

      v27 += 2;
      if (v90 == v26)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

LABEL_24:

  v51 = v92[2];
  v52 = v92[3];
  result = swift_beginAccess();
  v54 = a1[6];
  if (!*(v54 + 16))
  {
    goto LABEL_38;
  }

  v55 = a1[6];

  v56 = sub_21A3DCA2C(v51, v52);
  if ((v57 & 1) == 0)
  {
    goto LABEL_33;
  }

  v58 = *(*(v54 + 56) + 8 * v56);

  v59 = v87;
  sub_21A40BCD8(v87);
  v61 = v88;
  v60 = v89;
  if ((*(v88 + 48))(v59, 1, v89) != 1)
  {
    v64 = v86;
    (*(v61 + 32))(v86, v59, v60);
    v65 = *(v58 + 32);
    v66 = sub_21A410D24(v60, v60);
    v67 = *(v66 + 52);
    v68 = *(v61 + 72);
    v69 = (*(v61 + 80) + *(v66 + 48)) & ~*(v61 + 80);
    swift_allocObject();
    v70 = sub_21A4512F4();
    (*(v61 + 16))(v71, v64, v60);
    sub_21A4513B4();
    v78 = Array.toData()(v70, v60, v72, v73, v74, v75, v76, v77);
    v80 = v79;

    sub_21A439640(v78, v80);
    (*(v61 + 8))(v64, v60);
    sub_21A3E759C(v78, v80);
    goto LABEL_37;
  }

  result = (*(v84 + 8))(v59, v85);
LABEL_38:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A412368(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v55 = *(a5 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  v15 = *(v14 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = v50 - v17;
  if (!a3[2] || (v18 = sub_21A3DCA2C(a1, a2), (v19 & 1) == 0))
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v34 = 44;
    swift_willThrow();
    return a3;
  }

  v50[1] = v15;
  v51 = v13;
  v56 = v5;
  v20 = *(a3[7] + 8 * v18);
  v21 = sub_21A4513B4();

  v57 = v21;
  result = sub_21A450F34();
  v65 = result;
  v23 = *(v20 + 16);
  v58 = v20;
  v59 = v23;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = (v20 + 40);
    while (1)
    {
      if (v24 >= *(v20 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (!a4[2])
      {
        goto LABEL_29;
      }

      v27 = *(v26 - 1);
      v28 = *v26;

      a3 = a4;
      v29 = sub_21A3DCA2C(v27, v28);
      if ((v30 & 1) == 0)
      {
        break;
      }

      v31 = *(a4[7] + 8 * v29);

      v32 = sub_21A4397E8();
      result = sub_21A451374();
      v33 = __OFADD__(v25, result);
      v25 += result;
      if (v33)
      {
        goto LABEL_35;
      }

      ++v24;
      v62 = v28;
      v63 = v32;
      v61 = v27;
      sub_21A450F94();
      a3 = &v65;
      sub_21A450FB4();

      v26 += 2;
      v20 = v58;
      if (v59 == v24)
      {
        goto LABEL_13;
      }
    }

LABEL_29:

    sub_21A3DCAA4();
    swift_allocError();
    *v48 = 44;
    swift_willThrow();
LABEL_32:

    return a3;
  }

  v25 = 0;
LABEL_13:
  swift_getAssociatedConformanceWitness();
  sub_21A451A64();
  v35 = v51;
  sub_21A451994();
  a3 = sub_21A3DCD0C(v35, v25, a5);
  result = (*(v55 + 8))(v35, a5);
  v63 = a3;
  v64 = 0;
  if (!v59)
  {
LABEL_27:

    return a3;
  }

  v36 = 0;
  v37 = 0;
  v38 = (v20 + 40);
  while (v37 < *(v20 + 16))
  {
    a3 = *v38;
    v39 = v65;
    v61 = *(v38 - 1);
    v62 = a3;

    sub_21A450FA4();

    v40 = v60;
    if (!v60)
    {

      sub_21A3DCAA4();
      swift_allocError();
      *v49 = 44;
      swift_willThrow();
      goto LABEL_32;
    }

    AssociatedTypeWitness = v39;
    v41 = sub_21A451374();
    sub_21A451324();
    v42 = v63;
    if (_swift_isClassOrObjCExistentialType())
    {
      v43 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v43 = v42;
    }

    v44 = *(v43 + 16);
    if (_swift_isClassOrObjCExistentialType())
    {
      v45 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v45 = v42;
    }

    v46 = v45 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v61 = v46;
    v62 = v44;
    v47 = v56;
    sub_21A40D5F4(&v61, v40, &v64, v41, a5, v54, &v60);
    v56 = v47;
    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
      sub_21A3DC9D4(&v61, v46, v44);
      a3 = v63;

      goto LABEL_32;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
    sub_21A3DC9D4(&v61, v46, v44);

    v33 = __OFADD__(v36, v41);
    v36 += v41;
    if (v33)
    {
      goto LABEL_37;
    }

    ++v37;
    v64 = v36;
    v38 += 2;
    v20 = v58;
    if (v59 == v37)
    {
      a3 = v63;
      goto LABEL_27;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21A412948(uint64_t a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_21A40D4CC(a1, a2, v2[4]);
}

unint64_t sub_21A412968()
{
  result = qword_27CD28940[0];
  if (!qword_27CD28940[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284A0, &qword_21A4560F0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD28940);
  }

  return result;
}

uint64_t sub_21A4129CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21A4513B4();
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v48 = a3;
  v15 = a3 + a6;
  v16 = __OFADD__(a3, a6);
  v17 = v15 - 1;
  v18 = __OFSUB__(v15, 1);
  v52 = v18;
  v53 = v16;
  v20 = v17 == 0x8000000000000000 && a6 == -1;
  v50 = v20;

  v22 = 0;
  v51 = a6;
  v49 = v17 / a6;
  v54 = v14;
  v55 = a2;
  for (i = a1; v13; v14 = v54)
  {
LABEL_20:
    v24 = (*(a1 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v13)))));
    v25 = *v24;
    v26 = v24[1];
    swift_beginAccess();
    v27 = *(a5 + 48);
    if (!*(v27 + 16))
    {
      goto LABEL_56;
    }

    v28 = sub_21A3DCA2C(v25, v26);
    if ((v29 & 1) == 0)
    {

      goto LABEL_56;
    }

    v59 = *(*(v27 + 56) + 8 * v28);

    if (!*(a2 + 16) || (v30 = sub_21A3DCA2C(v25, v26), (v31 & 1) == 0) || (v32 = *(*(a2 + 56) + 8 * v30), , sub_21A450FA4(), , !v60))
    {

LABEL_56:
      sub_21A3DCAA4();
      swift_allocError();
      *v46 = 10;
      swift_willThrow();
    }

    v33 = *(v59 + 24);
    result = sub_21A4094A0();
    v34 = *(result + 16);
    if (v34)
    {
      v35 = (result + 32);
      v36 = 1;
      while (1)
      {
        v37 = *v35++;
        v38 = v36 * v37;
        if ((v36 * v37) >> 64 != (v36 * v37) >> 63)
        {
          break;
        }

        v36 = v38;
        if (!--v34)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

    v38 = 1;
LABEL_31:

    if (*(a4 + 16))
    {
      v39 = sub_21A3DCA2C(v25, v26);
      v41 = v40;

      if (v41)
      {
        if (v32 < 1)
        {
          goto LABEL_57;
        }

        if ((v32 * v48) >> 64 != (v32 * v48) >> 63)
        {
          goto LABEL_67;
        }

        v42 = *(*(a4 + 56) + 8 * v39);
        v43 = sub_21A451374();

        a2 = v55;
        if (v43 < v32 * v48)
        {
          goto LABEL_58;
        }

        if ((v42 * v32) >> 64 != (v42 * v32) >> 63)
        {
          goto LABEL_68;
        }

        if (v38 != v42 * v32)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }
    }

    else
    {
    }

    if (v53)
    {
      goto LABEL_62;
    }

    if (v52)
    {
      goto LABEL_63;
    }

    if (!v51)
    {
      goto LABEL_64;
    }

    if (v50)
    {
      goto LABEL_66;
    }

    if (v32 < 1)
    {
LABEL_57:

LABEL_58:
      sub_21A3DCAA4();
      swift_allocError();
      *v47 = 11;
      swift_willThrow();
    }

    if ((v32 * v49) >> 64 != (v32 * v49) >> 63)
    {
      goto LABEL_65;
    }

    v44 = sub_21A451374();

    v45 = v44 >= v32 * v49 && v38 == v32;
    a2 = v55;
    if (!v45)
    {
      goto LABEL_58;
    }

LABEL_51:
    v13 &= v13 - 1;

    a1 = i;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v14)
    {
    }

    v13 = *(v10 + 8 * v23);
    ++v22;
    if (v13)
    {
      v22 = v23;
      goto LABEL_20;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_21A412EC4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_21A4515F4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A41310C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKRecipeDescriptorRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A41318C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A4519B4() & 1;
  }
}

uint64_t sub_21A413204(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_21A451344();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t sub_21A413278(uint64_t result, int32x2_t a2)
{
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_21A451344();
  *(result + 16) = v2;
  v3 = (result + 32);
  if (v2 <= 7)
  {
    v4 = 0;
    v5 = a2.i32[0];
LABEL_9:
    v9 = v2 - v4;
    do
    {
      *v3++ = v5;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFF8;
  v3 += v2 & 0x7FFFFFFFFFFFFFF8;
  v5 = a2.i32[0];
  v6 = vdupq_lane_s32(a2, 0);
  v7 = (result + 48);
  v8 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t EspressoMILTrainer.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21A4195BC(a1);

  return v2;
}

uint64_t EspressoMILTrainer.init(_:)(uint64_t a1)
{
  v1 = sub_21A4195BC(a1);

  return v1;
}

void *EspressoMILTrainer.deinit()
{
  v1 = v0[12];
  if ((v1 & 2) != 0)
  {
    v2 = v0[6];
    espresso_plan_destroy();
    v1 = v0[12];
  }

  if (v1)
  {
    v3 = v0[9];
    espresso_plan_destroy();
  }

  v4 = v0[3];
  espresso_context_destroy();
  v5 = v0[2];

  v6 = v0[11];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[19];

  v12 = v0[20];

  v13 = v0[21];

  v14 = v0[43];

  v15 = v0[44];

  v16 = v0[45];

  return v0;
}

uint64_t EspressoMILTrainer.__deallocating_deinit()
{
  EspressoMILTrainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_21A41347C(uint64_t *result)
{
  v2 = *result;
  if (*result & 1) != 0 && (*(v1 + 96))
  {
    v3 = *(v1 + 72);
    result = espresso_plan_destroy();
  }

  if ((v2 & 2) != 0 && (*(v1 + 96) & 2) != 0)
  {
    v4 = *(v1 + 48);
    result = espresso_plan_destroy();
  }

  *(v1 + 96) &= ~v2;
  return result;
}

uint64_t sub_21A4134D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a3;
  if ((sub_21A451234() & 1) == 0)
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  v89 = a5;
  v90 = a4;
  v14 = *(v7 + 88);
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;

  *(v7 + 96) = v13;
  v15 = *(v7 + 16);

  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  v17 = *(v15 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = *(v15 + 16);
  *(v15 + 16) = 0x8000000000000000;
  sub_21A4033E8(0x6F4C2E6C65646F4DLL, 0xEA00000000006461, isUniquelyReferenced_nonNull_native, Current);
  *(v15 + 16) = v91;
  swift_endAccess();

  if ((v13 & 2) != 0)
  {
    *(v7 + 112) = 1;

    sub_21A451274();
    sub_21A451194();
    v25 = *(v7 + 48);
    swift_beginAccess();
    v26 = sub_21A4510E4();

    v27 = espresso_plan_add_network();

    if (v27)
    {
      v28 = 8;
LABEL_32:
      sub_21A3DCAA4();
      swift_allocError();
      *v68 = v28;
      swift_willThrow();
      return swift_endAccess();
    }

    v88 = v13;
    v32 = (v90 + 40);
    v33 = *(v90 + 16) + 1;
    while (--v33)
    {
      v34 = v32 + 2;
      v35 = *(v32 - 1);
      v36 = *v32;
      v37 = *(v7 + 32);
      v38 = *(v7 + 40);
      sub_21A4510E4();
      v26 = v26 & 0xFFFFFFFF00000000 | v38;
      LODWORD(v37) = espresso_network_declare_input();

      v32 = v34;
      if (v37)
      {
        v28 = 2;
        goto LABEL_32;
      }
    }

    v46 = (v89 + 40);
    v47 = *(v89 + 16) + 1;
    while (--v47)
    {
      v48 = v46 + 2;
      v49 = *(v46 - 1);
      v50 = *v46;
      v51 = *(v7 + 32);
      v52 = *(v7 + 40);
      sub_21A4510E4();
      v26 = v26 & 0xFFFFFFFF00000000 | v52;
      LODWORD(v51) = espresso_network_declare_output();

      v46 = v48;
      if (v51)
      {
        v28 = 3;
        goto LABEL_32;
      }
    }

    v60 = v88;
    if (*(v7 + 112))
    {
      v61 = (a6 + 40);
      v62 = *(a6 + 16) + 1;
      while (--v62)
      {
        v63 = v61 + 2;
        v64 = *(v61 - 1);
        v65 = *v61;
        v66 = *(v7 + 32);
        v67 = *(v7 + 40);
        sub_21A4510E4();
        v26 = v26 & 0xFFFFFFFF00000000 | v67;
        v60 = v88;
        LODWORD(v66) = espresso_network_declare_input();

        v28 = 17;
        v61 = v63;
        if (v66)
        {
          goto LABEL_32;
        }
      }
    }

    swift_endAccess();
    v69 = *(v7 + 32);
    v70 = *(v7 + 40);
    v71 = sub_21A4510E4();
    espresso_network_declare_input();

    v72 = (a6 + 40);
    v73 = *(a6 + 16) + 1;
    while (--v73)
    {
      v87 = v72 + 2;
      v74 = *(v7 + 32);
      v75 = a6;
      v76 = *(v7 + 40);
      v92 = *(v72 - 1);
      v93 = *v72;
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);

      sub_21A4510E4();

      v71 = v71 & 0xFFFFFFFF00000000 | v76;
      a6 = v75;
      v60 = v88;
      v77 = espresso_network_declare_output();

      v72 = v87;
      if (v77)
      {
        sub_21A3DCAA4();
        swift_allocError();
        *v78 = 3;
        return swift_willThrow();
      }
    }

    if ((v60 & 1) == 0)
    {
      goto LABEL_4;
    }

    *(v7 + 112) = 1;
  }

  else
  {
    if ((v13 & 1) == 0)
    {
LABEL_4:
      v19 = *(v7 + 344);
      *(v7 + 344) = v90;

      v20 = *(v7 + 352);
      *(v7 + 352) = v89;

      v21 = *(v7 + 360);
      *(v7 + 360) = a6;

      v22 = *(v7 + 16);

      sub_21A402C48(0x6F4C2E6C65646F4DLL, 0xEA00000000006461);
    }

    *(v7 + 112) = 0;
  }

  sub_21A451274();
  sub_21A451194();
  v29 = *(v7 + 72);
  swift_beginAccess();
  v30 = sub_21A4510E4();
  LODWORD(v29) = espresso_plan_add_network();

  if (!v29)
  {
    v39 = (v90 + 40);
    v40 = *(v90 + 16) + 1;
    while (--v40)
    {
      v41 = v39 + 2;
      v42 = *(v39 - 1);
      v43 = *v39;
      v44 = *(v7 + 56);
      v45 = *(v7 + 64);
      sub_21A4510E4();
      v30 = v30 & 0xFFFFFFFF00000000 | v45;
      LODWORD(v44) = espresso_network_declare_input();

      v39 = v41;
      if (v44)
      {
        v31 = 2;
        goto LABEL_41;
      }
    }

    v53 = (v89 + 40);
    v54 = *(v89 + 16) + 1;
    while (--v54)
    {
      v55 = v53 + 2;
      v56 = *(v53 - 1);
      v57 = *v53;
      v58 = *(v7 + 56);
      v59 = *(v7 + 64);
      sub_21A4510E4();
      v30 = v30 & 0xFFFFFFFF00000000 | v59;
      LODWORD(v58) = espresso_network_declare_output();

      v53 = v55;
      if (v58)
      {
        v31 = 3;
        goto LABEL_41;
      }
    }

    if (*(v7 + 112))
    {
      v79 = (a6 + 40);
      v80 = *(a6 + 16) + 1;
      while (--v80)
      {
        v81 = v79 + 2;
        v82 = *(v79 - 1);
        v83 = *v79;
        v84 = *(v7 + 56);
        v85 = *(v7 + 64);
        sub_21A4510E4();
        v30 = v30 & 0xFFFFFFFF00000000 | v85;
        LODWORD(v84) = espresso_network_declare_input();

        v31 = 17;
        v79 = v81;
        if (v84)
        {
          goto LABEL_41;
        }
      }
    }

    swift_endAccess();

    goto LABEL_4;
  }

  v31 = 8;
LABEL_41:
  sub_21A3DCAA4();
  swift_allocError();
  *v86 = v31;
  swift_willThrow();
  swift_endAccess();
}

uint64_t sub_21A413CE8(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  if (*(*(v4 + 344) + 16) >> 60)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v5 = swift_slowAlloc();
  v6 = v5;
  v7 = *(v4 + 344);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v36 = v4;
  if (v8)
  {
    __dst = v5;
    v40 = MEMORY[0x277D84F90];

    result = sub_21A3E48FC(0, v8, 0);
    v10 = 0;
    v9 = v40;
    v11 = (v7 + 40);
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v12 = *v11;
      if ((*v11 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v12 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v11 - 1);
        v39 = v12 & 0xFFFFFFFFFFFFFFLL;

        v14 = __s1;
      }

      else
      {
        if ((*(v11 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v13 = *v11;

        v14 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      result = strdup(v14);
      v15 = result;
      if (!result)
      {
        goto LABEL_45;
      }

LABEL_11:

      v40 = v9;
      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_21A3E48FC((v16 > 1), v17 + 1, 1);
        v9 = v40;
      }

      ++v10;
      v9[2] = v17 + 1;
      v9[v17 + 4] = v15;
      v11 += 2;
      if (v8 == v10)
      {

        v19 = 8 * *(*(v4 + 344) + 16);
        v6 = __dst;
        goto LABEL_18;
      }
    }

    v18 = *v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288C0, &unk_21A4570D0);
    result = sub_21A451724();
    v15 = *__s1;
    if (!*__s1)
    {
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  v19 = 0;
LABEL_18:
  memcpy(v6, v9 + 4, v19);

  if (*(*(v4 + 344) + 16) >> 31)
  {
    goto LABEL_44;
  }

  v20 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_21A408BB4(0, *(v20 + 2), 0, v20);
  }

  *a4 = v20;
  v21 = a4[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_21A408BB4(0, *(v21 + 2), 0, v21);
  }

  a4[1] = v21;
  v22 = a4[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_21A408BB4(0, *(v22 + 2), 0, v22);
  }

  a4[2] = v22;
  v23 = a4[3];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_21A408BB4(0, *(v23 + 2), 0, v23);
  }

  a4[3] = v23;
  v24 = a4[4];

  v25 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_21A408BB4(0, *(v24 + 2), 0, v24);
  }

  a4[4] = v24;
  v26 = a4[5];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_21A408BB4(0, *(v26 + 2), 0, v26);
  }

  a4[5] = v26;
  v27 = v25;
  v28 = espresso_network_change_input_blob_shapes_seq_rank();

  if (v28)
  {
    v29 = 1;
LABEL_40:
    sub_21A3DCAA4();
    swift_allocError();
    *v34 = v29;
    return swift_willThrow();
  }

  v30 = *(*(v36 + 344) + 16);
  if (v30)
  {
    v31 = v27;
    do
    {
      v33 = *v31++;
      v32 = v33;
      if (v33)
      {
        MEMORY[0x21CEDB220](v32, -1, -1);
      }

      --v30;
    }

    while (v30);
  }

  MEMORY[0x21CEDB220](v27, -1, -1);
  result = espresso_plan_build();
  if (result)
  {
    v29 = 9;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_21A41415C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v143 = *MEMORY[0x277D85DE8];
  *(v2 + 104) = a1;
  v6 = *(v2 + 96);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v2 + 56);
    v8 = *(v2 + 64);
    sub_21A418880(&__dst);
    v122 = __dst;
    v123 = v113;
    v124 = v114;
    sub_21A413CE8(*(v2 + 72), *(v2 + 56), *(v2 + 64), &v122);
    if (v3)
    {

LABEL_55:
      v90 = *MEMORY[0x277D85DE8];
      return result;
    }

    v6 = *(v2 + 96);
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 1) == 0)
    {
LABEL_7:
      v10 = (v4 + 32);
      swift_beginAccess();
      v11 = 40;
      goto LABEL_53;
    }

LABEL_52:
    v10 = (v4 + 56);
    swift_beginAccess();
    v11 = 64;
LABEL_53:
    v85 = *(v4 + v11);
    v86 = *v10;
    v87 = *(v4 + 344);
    swift_beginAccess();
    swift_beginAccess();

    sub_21A4197C8(v86, v85, v87, (v4 + 120), (v4 + 128));
    swift_endAccess();
    swift_endAccess();

    v88 = *(v4 + 352);
    swift_beginAccess();
    swift_beginAccess();

    sub_21A4197C8(v86, v85, v88, (v4 + 136), (v4 + 144));
    swift_endAccess();
    swift_endAccess();

    v89 = *(v4 + 360);
    swift_beginAccess();
    swift_beginAccess();

    sub_21A4197C8(v86, v85, v89, (v4 + 152), (v4 + 160));
    swift_endAccess();
    swift_endAccess();

    if (*(v4 + 112) == 1)
    {
      result = sub_21A417C90();
    }

    goto LABEL_55;
  }

  if ((a2 & 0x100000000) != 0)
  {
    sub_21A3DCAA4();
    swift_allocError();
    v15 = 21;
LABEL_12:
    *v14 = v15;
    result = swift_willThrow();
    goto LABEL_55;
  }

  swift_beginAccess();
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  sub_21A418880(&v122);
  v99[0] = v122;
  v99[1] = v123;
  v99[2] = v124;
  sub_21A413CE8(*(v2 + 48), *(v2 + 32), *(v2 + 40), v99);
  if (v3)
  {

    goto LABEL_55;
  }

  v91 = a2;
  v16 = *(v2 + 32);
  v17 = *(v4 + 40);
  sub_21A4510E4();
  swift_beginAccess();
  LODWORD(v16) = espresso_network_bind_buffer();
  swift_endAccess();

  if (v16)
  {

    sub_21A3DCAA4();
    swift_allocError();
    v15 = 16;
    goto LABEL_12;
  }

  v18 = *(*(v4 + 360) + 16);
  if (v18)
  {
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;

    v95 = 0;
    v20 = (v19 + 40);
    v92 = v18 - 1;
    v93 = v19;
    while (1)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v94 = v20;
      swift_beginAccess();

      v23 = *(v4 + 168);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__dst = *(v4 + 168);
      v25 = __dst;
      *(v4 + 168) = 0x8000000000000000;
      v26 = sub_21A3DCA2C(v21, v22);
      v28 = *(v25 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v32 = v27;
      if (*(v25 + 24) < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v41 = v26;
      sub_21A3E4570();
      v26 = v41;
      v34 = __dst;
      if (v32)
      {
LABEL_23:
        v35 = v34[7] + 168 * v26;
        v36 = v141;
        *(v35 + 128) = v140;
        *(v35 + 144) = v36;
        *(v35 + 160) = v142;
        v37 = v137;
        *(v35 + 64) = v136;
        *(v35 + 80) = v37;
        v38 = v139;
        *(v35 + 96) = v138;
        *(v35 + 112) = v38;
        v39 = v133;
        *v35 = v132;
        *(v35 + 16) = v39;
        v40 = v135;
        *(v35 + 32) = v134;
        *(v35 + 48) = v40;
        goto LABEL_27;
      }

LABEL_25:
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v42 = (v34[6] + 16 * v26);
      *v42 = v21;
      v42[1] = v22;
      v43 = v34[7] + 168 * v26;
      v44 = v137;
      *(v43 + 64) = v136;
      *(v43 + 80) = v44;
      *(v43 + 160) = v142;
      v45 = v141;
      *(v43 + 128) = v140;
      *(v43 + 144) = v45;
      v46 = v139;
      *(v43 + 96) = v138;
      *(v43 + 112) = v46;
      v47 = v133;
      *v43 = v132;
      *(v43 + 16) = v47;
      v48 = v135;
      *(v43 + 32) = v134;
      *(v43 + 48) = v48;
      v49 = v34[2];
      v30 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v30)
      {
        goto LABEL_59;
      }

      v34[2] = v50;

LABEL_27:
      *(v4 + 168) = v34;
      swift_endAccess();
      v97 = *(v4 + 32);
      v51 = *(v4 + 40);
      *&v122 = v21;
      *(&v122 + 1) = v22;

      MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);
      sub_21A4510E4();
      swift_beginAccess();
      v52 = *(v4 + 168);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v4 + 168);
      v98 = v54;
      *(v4 + 168) = 0x8000000000000000;
      v56 = sub_21A3DCA2C(v21, v22);
      v57 = v54[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_57;
      }

      v60 = v55;
      if (v54[3] >= v59)
      {
        if ((v53 & 1) == 0)
        {
          sub_21A3E4570();
        }
      }

      else
      {
        sub_21A3E3828(v59, v53);
        v61 = sub_21A3DCA2C(v21, v22);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_63;
        }

        v56 = v61;
      }

      if (v60)
      {
        memmove(&__dst, (v54[7] + 168 * v56), 0xA8uLL);
        sub_21A419F0C(&__dst);
        v129 = v119;
        v130 = v120;
        v131[0] = v121[0];
        *(v131 + 9) = *(v121 + 9);
        v126 = v116;
        v127 = v117;
        v128 = v118;
      }

      else
      {
        sub_21A419E74(&__dst);
        v130 = v120;
        v131[0] = v121[0];
        *(v131 + 9) = *(v121 + 9);
        v126 = v116;
        v127 = v117;
        v128 = v118;
        v129 = v119;
      }

      v122 = __dst;
      v123 = v113;
      v124 = v114;
      v125 = v115;
      v120 = v130;
      v121[0] = v131[0];
      *(v121 + 9) = *(v131 + 9);
      v116 = v126;
      v117 = v127;
      v118 = v128;
      v119 = v129;
      if (sub_21A419E9C(&__dst) == 1)
      {
        __break(1u);
        goto LABEL_62;
      }

      v63 = espresso_network_bind_buffer();
      v107 = v129;
      v108 = v130;
      *v109 = v131[0];
      *&v109[9] = *(v131 + 9);
      v103 = v125;
      v104 = v126;
      v105 = v127;
      v106 = v128;
      v100 = v122;
      v101 = v123;
      v102 = v124;
      v110[7] = v129;
      v110[8] = v130;
      v111[0] = v131[0];
      *(v111 + 9) = *(v131 + 9);
      v110[4] = v126;
      v110[5] = v127;
      v110[6] = v128;
      v110[0] = v122;
      v110[1] = v123;
      v110[2] = v124;
      v110[3] = v125;
      v96 = v96 & 0xFFFFFFFF00000000 | v51;
      if (sub_21A419E9C(v110) == 1)
      {

        v64 = v98;
        if (v60)
        {
          sub_21A419EB8(v98[6] + 16 * v56);
          sub_21A419290(v56, v98);
        }
      }

      else if (v60)
      {

        v64 = v98;
        v65 = v98[7] + 168 * v56;
        v66 = v107;
        v67 = *v109;
        *(v65 + 128) = v108;
        *(v65 + 144) = v67;
        v68 = v103;
        v69 = v105;
        v70 = v106;
        *(v65 + 64) = v104;
        *(v65 + 80) = v69;
        *(v65 + 160) = *&v109[16];
        *(v65 + 96) = v70;
        *(v65 + 112) = v66;
        v71 = v101;
        *v65 = v100;
        *(v65 + 16) = v71;
        *(v65 + 32) = v102;
        *(v65 + 48) = v68;
      }

      else
      {
        v64 = v98;
        v98[(v56 >> 6) + 8] |= 1 << v56;
        v72 = (v98[6] + 16 * v56);
        *v72 = v21;
        v72[1] = v22;
        v73 = v98[7] + 168 * v56;
        v74 = v101;
        *v73 = v100;
        *(v73 + 16) = v74;
        v75 = v102;
        v77 = v105;
        v76 = v106;
        v78 = v103;
        *(v73 + 64) = v104;
        *(v73 + 80) = v77;
        *(v73 + 32) = v75;
        *(v73 + 48) = v78;
        v79 = *v109;
        v80 = v107;
        *(v73 + 128) = v108;
        *(v73 + 144) = v79;
        *(v73 + 160) = *&v109[16];
        *(v73 + 96) = v76;
        *(v73 + 112) = v80;
        v81 = v98[2];
        v30 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v30)
        {
          goto LABEL_60;
        }

        v98[2] = v82;
      }

      *(v4 + 168) = v64;
      swift_endAccess();

      if (v63)
      {

        sub_21A3DCAA4();
        swift_allocError();
        v15 = 6;
        goto LABEL_12;
      }

      v83 = v95;
      if (v92 == v95)
      {

        goto LABEL_50;
      }

      v20 = v94 + 2;
      ++v95;
      if ((v83 + 1) >= *(v93 + 16))
      {
        goto LABEL_58;
      }
    }

    sub_21A3E3828(v31, isUniquelyReferenced_nonNull_native);
    v26 = sub_21A3DCA2C(v21, v22);
    if ((v32 & 1) != (v33 & 1))
    {
      goto LABEL_63;
    }

LABEL_22:
    v34 = __dst;
    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_50:
  v84 = *(v4 + 176);
  if (v84)
  {

    *v84 = v91;
    if ((*(v4 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A414C78()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = sub_21A451344();
  *(v0 + 32) = 0u;
  *(v0 + 16) = 10;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  sub_21A4510E4();
  espresso_network_query_blob_shape();

  *(v0 + 16);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_21A414D84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *a3;
  v12 = v73;
  *a3 = 0x8000000000000000;
  v14 = sub_21A3DCA2C(a4, a5);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v13;
  if (v12[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v13)
      {
        goto LABEL_9;
      }

LABEL_12:
      sub_21A419E74(&__dst);
      goto LABEL_13;
    }

LABEL_11:
    sub_21A3E4570();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_21A3E3828(v17, isUniquelyReferenced_nonNull_native);
  v18 = sub_21A3DCA2C(a4, a5);
  if ((v5 & 1) == (v19 & 1))
  {
    v14 = v18;
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    memmove(&__dst, (v73[7] + 168 * v14), 0xA8uLL);
    sub_21A419F0C(&__dst);
LABEL_13:
    v70 = v59;
    v71 = v60;
    v72 = v61;
    v66 = v55;
    v67 = v56;
    v68 = v57;
    v69 = v58;
    v62 = v51;
    v63 = v52;
    v64 = v53;
    v65 = v54;
    if (sub_21A419E9C(&__dst) == 1)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v46 = v69;
    v47 = v70;
    v48 = v71;
    v42 = v65;
    v43 = v66;
    v44 = v67;
    v45 = v68;
    v39 = v62;
    v40 = v63;
    v49 = v72;
    v41 = v64;
    v38 = a1;
    result = sub_21A419E9C(&v38);
    v21 = v73;
    if (result == 1)
    {
      if (v5)
      {
        sub_21A419EB8(v73[6] + 16 * v14);
        result = sub_21A419290(v14, v21);
      }

      goto LABEL_21;
    }

    if (v5)
    {
      v22 = v73[7] + 168 * v14;
      v23 = v69;
      *(v22 + 104) = v68;
      *(v22 + 120) = v23;
      v24 = v71;
      *(v22 + 136) = v70;
      *(v22 + 152) = v24;
      v25 = v65;
      *(v22 + 40) = v64;
      *(v22 + 56) = v25;
      v26 = v67;
      *(v22 + 72) = v66;
      *(v22 + 88) = v26;
      v27 = v63;
      *(v22 + 8) = v62;
      *v22 = a1;
      *(v22 + 24) = v27;
LABEL_21:
      *a3 = v21;
      return result;
    }

    v73[(v14 >> 6) + 8] |= 1 << v14;
    v28 = (v21[6] + 16 * v14);
    *v28 = a4;
    v28[1] = a5;
    v29 = v21[7] + 168 * v14;
    v30 = v66;
    *(v29 + 88) = v67;
    *(v29 + 72) = v30;
    v31 = v64;
    *(v29 + 56) = v65;
    *(v29 + 40) = v31;
    v32 = v70;
    *(v29 + 152) = v71;
    *(v29 + 136) = v32;
    v33 = v68;
    *(v29 + 120) = v69;
    *(v29 + 104) = v33;
    v34 = v63;
    *(v29 + 8) = v62;
    *v29 = a1;
    *(v29 + 24) = v34;
    v35 = v21[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      v21[2] = v37;

      goto LABEL_21;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

unint64_t sub_21A4150E0(uint64_t *a1)
{
  v4 = *a1;
  swift_beginAccess();
  v2 = sub_21A415150(&v4, (v1 + 152));
  swift_endAccess();
  return v2;
}

unint64_t sub_21A415150(void *a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = v2 + 7;
    swift_beginAccess();
    v5 = 8;
  }

  else
  {
    v4 = v2 + 4;
    swift_beginAccess();
    v5 = 5;
  }

  v41 = v2[v5];
  v40 = *v4;
  v6 = v2[45];
  v7 = *(v6 + 16);
  if (v7)
  {
    v39 = a2;

    v9 = 0;
    for (i = 0; i != v7; ++i)
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_42;
      }

      v11 = (v6 + 32 + 16 * i);
      v12 = *v11;
      v13 = v11[1];

      sub_21A414C78();
      v15 = v14;
      v17 = v16;

      if (v17 >= 2)
      {
        v19 = v17 >> 1;
        v20 = 1;
        while (1)
        {
          v21 = *v15++;
          v18 = v20 * v21;
          if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
          {
            break;
          }

          v20 = v18;
          if (!--v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v18 = 1;
LABEL_12:
      result = swift_unknownObjectRelease();
      v22 = __OFADD__(v9, v18);
      v9 += v18;
      if (v22)
      {
        goto LABEL_43;
      }
    }

    if (v9 < 0)
    {
      goto LABEL_50;
    }

    if (v9)
    {
      v23 = sub_21A451344();
      *(v23 + 16) = v9;
      memset_pattern16((v23 + 32), &unk_21A456140, 4 * v9);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    a2 = v39;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = v2[45];
  v25 = *(v24 + 16);
  if (!v25)
  {
    return v23;
  }

  v26 = *a2;

  v27 = 0;
  v28 = 0;
  while (v27 < *(v24 + 16))
  {
    v29 = (v24 + 32 + 16 * v27);
    v31 = *v29;
    v30 = v29[1];

    result = sub_21A414C78();
    if (v33 >= 2)
    {
      v35 = v33 >> 1;
      v34 = 1;
      while (1)
      {
        v36 = *v32++;
        v37 = v34 * v36;
        if ((v34 * v36) >> 64 != (v34 * v36) >> 63)
        {
          goto LABEL_41;
        }

        v34 = v37;
        if (!--v35)
        {
          swift_unknownObjectRelease();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_30;
        }
      }
    }

    swift_unknownObjectRelease();
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = 1;
    if (result)
    {
      v34 = 1;
    }

    else
    {
LABEL_38:
      result = sub_21A410F90(v23);
      v23 = result;
LABEL_30:
      if (v34 < 0xFFFFFFFF80000000)
      {
        goto LABEL_45;
      }

      if (v34 > 0x7FFFFFFF)
      {
        goto LABEL_46;
      }
    }

    if (!*(v26 + 16))
    {
      goto LABEL_47;
    }

    result = sub_21A3DCA2C(v31, v30);
    if ((v38 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!*(*(v26 + 56) + 168 * result))
    {
      goto LABEL_51;
    }

    cblas_scopy_NEWLAPACK();

    v22 = __OFADD__(v28, v34);
    v28 += v34;
    if (v22)
    {
      goto LABEL_49;
    }

    if (++v27 == v25)
    {

      return v23;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_21A415494(_BYTE *a1)
{
  v2 = v1;
  if (*a1)
  {
    v3 = (v1 + 56);
    swift_beginAccess();
    v4 = 64;
  }

  else
  {
    v3 = (v1 + 32);
    swift_beginAccess();
    v4 = 40;
  }

  v5 = *(v2 + 352);
  v40 = *(v5 + 16);
  if (v40)
  {
    v39 = *(v2 + v4);
    v37 = v5 + 32;
    v38 = *v3;

    swift_beginAccess();
    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    v36 = v5;
    while (v6 < *(v5 + 16))
    {
      v8 = (v37 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];

      sub_21A414C78();
      if (v12 >= 2)
      {
        v14 = v12 >> 1;
        v13 = 1;
        do
        {
          v15 = *v11++;
          v16 = v13 * v15;
          if ((v13 * v15) >> 64 != (v13 * v15) >> 63)
          {
            __break(1u);
            goto LABEL_39;
          }

          v13 = v16;
          --v14;
        }

        while (v14);
        swift_unknownObjectRelease();
        if (v13 < 0)
        {
          goto LABEL_40;
        }

        if (!v13)
        {

          v17 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v13 = 1;
      }

      v17 = sub_21A451344();
      *(v17 + 16) = v13;
      bzero((v17 + 32), 4 * v13);
LABEL_17:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v7;
      sub_21A4032A0(v17, v10, v9, isUniquelyReferenced_nonNull_native);

      if (v13 >> 31)
      {
        goto LABEL_41;
      }

      v19 = *(v2 + 136);
      if (!*(v19 + 16))
      {
        goto LABEL_42;
      }

      v20 = v42;
      v21 = *(v2 + 136);

      v22 = sub_21A3DCA2C(v10, v9);
      if ((v23 & 1) == 0)
      {
        goto LABEL_43;
      }

      v41 = v6;
      if (!*(*(v19 + 56) + 168 * v22))
      {
        goto LABEL_45;
      }

      v24 = v2;

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v20;
      v7 = v20;
      v27 = sub_21A3DCA2C(v10, v9);
      v28 = v20[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_44;
      }

      v31 = v26;
      if (v20[3] >= v30)
      {
        if (v25)
        {
          if ((v26 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v7 = &v42;
          sub_21A3E4280();
          if ((v31 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        sub_21A3E32BC(v30, v25);
        v7 = v42;
        v32 = sub_21A3DCA2C(v10, v9);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_46;
        }

        v27 = v32;
        if ((v31 & 1) == 0)
        {
LABEL_34:
          __break(1u);
LABEL_35:

          return v7;
        }
      }

      v34 = *(v42[7] + 8 * v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_21A407D80(0, *(v34 + 2), 0, v34);
      }

      v2 = v24;

      cblas_scopy_NEWLAPACK();
      v5 = v36;
      if (v34)
      {

        v7 = v42;
        *(v42[7] + 8 * v27) = v34;
      }

      else
      {

        v7 = v42;
        sub_21A419EB8(v42[6] + 16 * v27);
        sub_21A4190E0(v27, v7);
      }

      v6 = v41 + 1;

      if (v41 + 1 == v40)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_21A451A94();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A415854(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 *a5, char a6)
{
  v8 = v6;
  v147[9] = *MEMORY[0x277D85DE8];
  v140 = *a5;
  sub_21A3DCAA4();
  v14 = swift_allocError();
  *v15 = 18;
  if ((*(v6 + 96) & 2) == 0)
  {
    result = swift_willThrow();
    goto LABEL_5;
  }

  v17 = *(v6 + 104);
  swift_beginAccess();
  v18 = *(v8 + 32);
  v19 = *(v8 + 40);
  result = sub_21A416D3C(a1, a2, a3, v17);
  if (v7)
  {
LABEL_5:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v135 = a1;
  v136 = a2;
  sub_21A417004(*(v8 + 32), *(v8 + 40));
  v143 = sub_21A4113F8(0, a3, 1);
  if ((a6 & 1) == 0)
  {
    v131 = MEMORY[0x277D84F90];
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_134:

    goto LABEL_135;
  }

  v147[0] = 2;
  swift_beginAccess();
  v131 = sub_21A415150(v147, (v8 + 152));
  swift_endAccess();
  if (!a4)
  {
    goto LABEL_134;
  }

LABEL_8:
  v21 = 0;
  v22 = a1 + 64;
  v23 = MEMORY[0x277D84F90];
  v144 = v8;
  v133 = a1 + 64;
  v126 = a6;
  v122 = a4;
  v125 = a3;
LABEL_9:
  v123 = v21;
  if (a6)
  {

    v24 = *(v131 + 16);
    if (v24)
    {
      v25 = *(v131 + 16);
      v26 = sub_21A451344();
      *(v26 + 16) = v24;
      v129 = v26;
      bzero((v26 + 32), 4 * v24);
      if (!v140)
      {
        goto LABEL_32;
      }

LABEL_15:
      v27 = *(v143 + 16);
      v28 = v27 - 2;
      if (v27 >= 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_21A410FA4(v143);
        }

        v29 = 0;
        v30 = v143 + 32;
        do
        {
          v146[0] = 0;
          MEMORY[0x21CEDB240](v146, 8);
          v33 = (v146[0] * v27) >> 64;
          if (v27 > v146[0] * v27)
          {
            v34 = -v27 % v27;
            if (v34 > v146[0] * v27)
            {
              do
              {
                v146[0] = 0;
                MEMORY[0x21CEDB240](v146, 8);
              }

              while (v34 > v146[0] * v27);
              v33 = (v146[0] * v27) >> 64;
            }
          }

          v35 = __OFADD__(v29, v33);
          v36 = v29 + v33;
          if (v35)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v29 != v36)
          {
            v37 = *(v143 + 16);
            if (v29 >= v37)
            {
              goto LABEL_165;
            }

            if (v36 >= v37)
            {
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
              goto LABEL_171;
            }

            v31 = *(v30 + 8 * v29);
            *(v30 + 8 * v29) = *(v30 + 8 * v36);
            *(v30 + 8 * v36) = v31;
          }

          --v27;
        }

        while (v29++ != v28);
        v8 = v144;
      }

      v22 = v133;
      goto LABEL_32;
    }

    v23 = MEMORY[0x277D84F90];
  }

  v129 = v23;
  if (v140)
  {
    goto LABEL_15;
  }

LABEL_32:
  v38 = *(v8 + 104);
  if (!v38)
  {
    goto LABEL_175;
  }

  if (a3 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_178;
  }

  if (a3 / v38 < 0)
  {
    goto LABEL_176;
  }

  if (!(a3 / v38))
  {
    goto LABEL_100;
  }

  v39 = 0;
  v124 = a3 / v38;
LABEL_38:
  v127 = v39 + 1;
  v40 = v135;
  v41 = 1 << *(v135 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v135 + 64);

  swift_beginAccess();
  v44 = 0;
  v45 = (v41 + 63) >> 6;
  v134 = v45;
LABEL_43:
  if (v43)
  {
    if (!v40[2])
    {
      goto LABEL_158;
    }

    goto LABEL_45;
  }

  while (1)
  {
    v63 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_147;
    }

    if (v63 >= v45)
    {
      break;
    }

    v43 = *(v22 + 8 * v63);
    ++v44;
    if (v43)
    {
      v44 = v63;
      if (!v40[2])
      {
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

LABEL_45:
      v46 = (v40[6] + ((v44 << 10) | (16 * __clz(__rbit64(v43)))));
      v48 = *v46;
      v47 = v46[1];

      v49 = sub_21A3DCA2C(v48, v47);
      if ((v50 & 1) == 0)
      {
        goto LABEL_159;
      }

      v51 = *(v8 + 120);
      if (!*(v51 + 16))
      {
        goto LABEL_160;
      }

      v137 = *(v40[7] + 8 * v49);

      v52 = sub_21A3DCA2C(v48, v47);
      if ((v53 & 1) == 0)
      {
        goto LABEL_161;
      }

      v54 = *(*(v51 + 56) + 168 * v52);

      if (!*(v136 + 16))
      {
        goto LABEL_162;
      }

      v55 = sub_21A3DCA2C(v48, v47);
      if ((v56 & 1) == 0)
      {
        goto LABEL_163;
      }

      v57 = *(v144 + 104);
      if (v57 < 0)
      {
        goto LABEL_164;
      }

      if (v57)
      {
        v58 = 0;
        v59 = *(*(v136 + 56) + 8 * v55);
        while (1)
        {
          v60 = *(v144 + 104);
          v61 = v39 * v60;
          if ((v39 * v60) >> 64 != (v39 * v60) >> 63)
          {
            break;
          }

          v35 = __OFADD__(v61, v58);
          v62 = v61 + v58;
          if (v35)
          {
            goto LABEL_138;
          }

          if (v59 < 0xFFFFFFFF80000000)
          {
            goto LABEL_139;
          }

          if (v59 > 0x7FFFFFFF)
          {
            goto LABEL_140;
          }

          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_141;
          }

          if (v62 >= *(v143 + 16))
          {
            goto LABEL_142;
          }

          if ((v59 * *(v143 + 32 + 8 * v62)) >> 64 != (v59 * *(v143 + 32 + 8 * v62)) >> 63)
          {
            goto LABEL_143;
          }

          if (!v54)
          {
            goto LABEL_180;
          }

          if ((v59 * v58) >> 64 != (v59 * v58) >> 63)
          {
            goto LABEL_144;
          }

          ++v58;
          cblas_scopy_NEWLAPACK();
          if (v57 == v58)
          {
            goto LABEL_42;
          }
        }

LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:

        swift_allocError();
        *v121 = 15;
        swift_willThrow();

        goto LABEL_5;
      }

LABEL_42:
      v43 &= v43 - 1;

      v8 = v144;
      v45 = v134;
      v40 = v135;
      v22 = v133;
      goto LABEL_43;
    }
  }

  v64 = *(v8 + 48);
  if (espresso_plan_execute_sync())
  {
    goto LABEL_145;
  }

  a6 = v126;
  if (v126)
  {
    __B = 2;
    swift_beginAccess();
    v65 = sub_21A415150(&__B, (v8 + 168));
    swift_endAccess();
    v66 = *(v65 + 16);
    if (v66 >> 31)
    {
      goto LABEL_177;
    }

    a3 = v125;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_21A407D80(0, v66, 0, v65);
    }

    cblas_saxpy_NEWLAPACK();
    v67 = v129;
    v68 = *(v129 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v129;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_21A407D80(0, v68, 0, v129);
      v70 = v129;
      v67 = v71;
    }

    MEMORY[0x21CEDB360](v65 + 32, 1, v70 + 32, 1, v67 + 32, 1, v68);

    v129 = v67;
    goto LABEL_99;
  }

  v72 = *(v8 + 360);
  v138 = *(v72 + 16);
  if (!v138)
  {
    goto LABEL_98;
  }

  swift_beginAccess();
  swift_beginAccess();
  v73 = 0;
  while (1)
  {
    if (v73 >= *(v72 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v74 = (v72 + 32 + 16 * v73);
    v75 = *v74;
    v76 = v74[1];
    v77 = *(v8 + 32);
    v78 = *(v8 + 40);

    v79 = sub_21A451344();
    *(v79 + 16) = 10;
    *(v79 + 48) = 0u;
    *(v79 + 64) = 0u;
    *(v79 + 80) = 0u;
    *(v79 + 96) = 0u;
    *(v79 + 32) = 0u;
    v146[0] = 0;
    sub_21A4510E4();
    v80 = v141 & 0xFFFFFFFF00000000 | v78;
    espresso_network_query_blob_shape();

    v81 = v146[0];
    if ((v146[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_149;
    }

    if (*(v79 + 16) < v146[0])
    {
      goto LABEL_150;
    }

    v141 = v80;
    if (!v146[0])
    {

      v8 = v144;
      goto LABEL_90;
    }

    v82 = 32;
    v83 = 1;
    v8 = v144;
    do
    {
      v84 = *(v79 + v82);
      v85 = (v83 * v84) >> 64;
      v83 *= v84;
      if (v85 != v83 >> 63)
      {
        __break(1u);
        goto LABEL_137;
      }

      v82 += 8;
      --v81;
    }

    while (v81);

    if (v83 < 0xFFFFFFFF80000000)
    {
      goto LABEL_151;
    }

    if (v83 > 0x7FFFFFFF)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

LABEL_90:
    v86 = *(v8 + 168);
    if (!*(v86 + 16))
    {
      goto LABEL_153;
    }

    v87 = *(v8 + 168);

    result = sub_21A3DCA2C(v75, v76);
    if ((v88 & 1) == 0)
    {
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    if (!*(*(v86 + 56) + 168 * result))
    {
      break;
    }

    v89 = *(v8 + 152);
    if (!*(v89 + 16))
    {
      goto LABEL_155;
    }

    v90 = *(v8 + 152);

    result = sub_21A3DCA2C(v75, v76);
    if ((v91 & 1) == 0)
    {
      goto LABEL_156;
    }

    if (!*(*(v89 + 56) + 168 * result))
    {
      goto LABEL_183;
    }

    ++v73;

    cblas_scopy_NEWLAPACK();
    if (v73 == v138)
    {

      a6 = v126;
LABEL_98:
      a3 = v125;
LABEL_99:
      v39 = v127;
      v22 = v133;
      if (v127 != v124)
      {
        goto LABEL_38;
      }

LABEL_100:
      if (a6)
      {
        v92 = *(v8 + 104);
        if (!v92)
        {
          goto LABEL_179;
        }

        if (a3 == 0x8000000000000000 && v92 == -1)
        {
LABEL_181:
          __break(1u);
        }

        *&__B = (a3 / v92);
        v93 = v129;
        v94 = *(v129 + 16);

        v95 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = v129;
          v95 = sub_21A407D80(0, v94, 0, v129);
        }

        vDSP_vsdiv((v93 + 32), 1, &__B, v95 + 8, 1, v94);

        v96 = *(v95 + 2);
        v97 = v131;

        v128 = v95;

        v98 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v131;
        if ((v98 & 1) == 0)
        {
          v100 = sub_21A407D80(0, *(v131 + 16), 0, v131);
          v99 = v131;
          v97 = v100;
        }

        MEMORY[0x21CEDB360](v99 + 32, 1, v95 + 32, 1, v97 + 32, 1, v96);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_21A410F90(v97);
        }

        v101 = v123;
        v102 = *(v8 + 360);
        v142 = *(v102 + 16);
        v131 = v97;
        if (v142)
        {
          v139 = v102 + 32;

          swift_beginAccess();
          v103 = 0;
          v104 = 0;
          v130 = v102;
LABEL_112:
          if (v103 >= *(v102 + 16))
          {
            goto LABEL_167;
          }

          v105 = (v139 + 16 * v103);
          v107 = *v105;
          v106 = v105[1];
          v108 = *(v8 + 32);
          v109 = *(v8 + 40);

          v110 = sub_21A451344();
          *(v110 + 16) = 10;
          *(v110 + 48) = 0u;
          *(v110 + 64) = 0u;
          *(v110 + 80) = 0u;
          *(v110 + 96) = 0u;
          *(v110 + 32) = 0u;
          v146[0] = 0;
          sub_21A4510E4();
          v111 = v132 & 0xFFFFFFFF00000000 | v109;
          espresso_network_query_blob_shape();

          v112 = v146[0];
          if ((v146[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_168;
          }

          v132 = v111;
          if (*(v110 + 16) < v146[0])
          {
            goto LABEL_169;
          }

          v8 = v144;
          if (!v146[0])
          {

            v114 = 1;
            goto LABEL_123;
          }

          v113 = 32;
          v114 = 1;
          while (1)
          {
            v115 = *(v110 + v113);
            v116 = (v114 * v115) >> 64;
            v114 *= v115;
            if (v116 != v114 >> 63)
            {
              break;
            }

            v113 += 8;
            if (!--v112)
            {

              if (v114 < 0xFFFFFFFF80000000)
              {
                goto LABEL_170;
              }

              if (v114 > 0x7FFFFFFF)
              {
LABEL_171:
                __break(1u);
LABEL_172:
                __break(1u);
                goto LABEL_173;
              }

LABEL_123:
              v117 = *(v144 + 152);
              if (!*(v117 + 16))
              {
                goto LABEL_172;
              }

              v118 = *(v144 + 152);

              result = sub_21A3DCA2C(v107, v106);
              if ((v119 & 1) == 0)
              {
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
                goto LABEL_181;
              }

              if (!*(*(v117 + 56) + 168 * result))
              {
                goto LABEL_184;
              }

              cblas_scopy_NEWLAPACK();
              v35 = __OFADD__(v104, v114);
              v104 += v114;
              if (v35)
              {
                goto LABEL_174;
              }

              ++v103;
              v102 = v130;
              if (v103 == v142)
              {

                a6 = v126;
                a3 = v125;
                v101 = v123;
                v22 = v133;
                goto LABEL_129;
              }

              goto LABEL_112;
            }
          }

          __break(1u);
LABEL_147:
          __break(1u);
          swift_endAccess();

LABEL_135:

          goto LABEL_5;
        }

LABEL_129:
        v120 = v122;
        v23 = v128;
      }

      else
      {
        v23 = v129;
        v120 = v122;
        v101 = v123;
      }

      v21 = v101 + 1;
      if (v21 == v120)
      {

        goto LABEL_135;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
  return result;
}

unint64_t sub_21A4165CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_21A3DCAA4();
  v9 = swift_allocError();
  *v10 = 19;
  if ((*(v5 + 96) & 1) == 0)
  {
LABEL_2:
    swift_willThrow();
    return a3;
  }

  v11 = *(v5 + 104);
  if (!v11)
  {
    goto LABEL_86;
  }

  if (a3 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_88;
  }

  swift_beginAccess();
  v12 = *(v5 + 56);
  v13 = *(v5 + 64);
  sub_21A416D3C(a1, a2, a3, v11);
  if (v4)
  {
    return a3;
  }

  v68 = a2;
  a2 = v5;
  sub_21A417004(*(v5 + 56), *(v5 + 64));
  v59 = v11;
  v11 = a3 / v11;
  if (v11 < 0)
  {
    goto LABEL_89;
  }

  v58 = a3;
  v61 = 0;
  v62 = v11;
  v70 = v5;
  if (v11)
  {
    v15 = 0;
    a3 = MEMORY[0x277D84F90];
    v16 = a1 + 64;
    v66 = a1 + 64;
    while (2)
    {
      v69 = v15;
      v63 = v15 + 1;
      v65 = a3;
      a2 = 1 << *(a1 + 32);
      if (a2 < 64)
      {
        v17 = ~(-1 << a2);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(a1 + 64);

      swift_beginAccess();
      v19 = 0;
      a3 = (a2 + 63) >> 6;
      if (v18)
      {
        while (1)
        {
          v11 = v19;
LABEL_20:
          if (!*(a1 + 16))
          {
            break;
          }

          v20 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v18)))));
          v22 = *v20;
          v21 = v20[1];

          a2 = a1;
          v23 = sub_21A3DCA2C(v22, v21);
          if ((v24 & 1) == 0)
          {
            goto LABEL_76;
          }

          a2 = *(v5 + 120);
          if (!*(a2 + 16))
          {
            goto LABEL_77;
          }

          v25 = a1;
          v26 = *(*(a1 + 56) + 8 * v23);

          v27 = sub_21A3DCA2C(v22, v21);
          if ((v28 & 1) == 0)
          {
            goto LABEL_78;
          }

          v5 = *(*(a2 + 56) + 168 * v27);

          a2 = v68;
          if (!*(v68 + 16))
          {
            goto LABEL_79;
          }

          v29 = sub_21A3DCA2C(v22, v21);
          if ((v30 & 1) == 0)
          {
            goto LABEL_80;
          }

          v31 = *(*(v68 + 56) + 8 * v29);
          v32 = *(v70 + 104);
          a2 = v31 * v32;
          if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
          {
            goto LABEL_81;
          }

          if (a2 < 0xFFFFFFFF80000000)
          {
            goto LABEL_82;
          }

          if (a2 > 0x7FFFFFFF)
          {
            goto LABEL_83;
          }

          if ((v31 * v69) >> 64 != (v31 * v69) >> 63)
          {
            goto LABEL_84;
          }

          if ((v31 * v69 * v32) >> 64 != (v31 * v69 * v32) >> 63)
          {
            goto LABEL_85;
          }

          if (!v5)
          {
            goto LABEL_101;
          }

          v18 &= v18 - 1;

          cblas_scopy_NEWLAPACK();

          v19 = v11;
          v5 = v70;
          a1 = v25;
          v16 = v66;
          if (!v18)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      while (1)
      {
LABEL_17:
        v11 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_70:
          v72 = 1;
          a2 = sub_21A415494(&v72);
          a3 = v65;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_71;
        }

        if (v11 >= a3)
        {
          break;
        }

        v18 = *(v16 + 8 * v11);
        ++v19;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v33 = *(v5 + 72);
      if (espresso_plan_execute_sync())
      {
LABEL_68:

        swift_allocError();
        *v55 = 20;
        goto LABEL_2;
      }

      v71[0] = 1;
      v34 = sub_21A415494(v71);
      a3 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_21A4082B4(0, v65[2] + 1, 1, v65);
      }

      v11 = v62;
      v36 = *(a3 + 16);
      v35 = *(a3 + 24);
      if (v36 >= v35 >> 1)
      {
        a3 = sub_21A4082B4((v35 > 1), v36 + 1, 1, a3);
      }

      *(a3 + 16) = v36 + 1;
      *(a3 + 8 * v36 + 32) = v34;
      v15 = v63;
      if (v63 != v62)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    a3 = MEMORY[0x277D84F90];
  }

  if (v58 - v11 * v59 < 1)
  {
    return a3;
  }

  v37 = *(v5 + 104);
  v38 = *(v5 + 72);
  a2 = v5;
  sub_21A41868C(v58 - v11 * v59, v38, *(v5 + 56), *(v5 + 64));
  v65 = a3;
  v67 = v58 - v11 * v59;
  v69 = v37;
  v60 = v38;
  v61 = 0;
  v39 = a1 + 64;
  v40 = 1 << *(a1 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v11 = v41 & *(a1 + 64);

  swift_beginAccess();
  v42 = 0;
  v43 = (v40 + 63) >> 6;
  v64 = a1 + 64;
  if (!v11)
  {
LABEL_50:
    while (1)
    {
      a3 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_87;
      }

      if (a3 >= v43)
      {

        v11 = v60;
        if (!espresso_plan_execute_sync())
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      v11 = *(v39 + 8 * a3);
      ++v42;
      if (v11)
      {
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
    a3 = v42;
LABEL_53:
    if (!*(a1 + 16))
    {
      break;
    }

    v44 = (*(a1 + 48) + ((a3 << 10) | (16 * __clz(__rbit64(v11)))));
    v46 = *v44;
    v45 = v44[1];

    a2 = a1;
    v47 = sub_21A3DCA2C(v46, v45);
    if ((v48 & 1) == 0)
    {
      goto LABEL_91;
    }

    a2 = *(v5 + 120);
    if (!*(a2 + 16))
    {
      goto LABEL_92;
    }

    v49 = a1;
    v50 = *(*(a1 + 56) + 8 * v47);

    v51 = sub_21A3DCA2C(v46, v45);
    if ((v52 & 1) == 0)
    {
      goto LABEL_93;
    }

    v5 = *(*(a2 + 56) + 168 * v51);

    a2 = v68;
    if (!*(v68 + 16))
    {
      goto LABEL_94;
    }

    result = sub_21A3DCA2C(v46, v45);
    if ((v53 & 1) == 0)
    {
      goto LABEL_95;
    }

    v54 = *(*(v68 + 56) + 8 * result);
    a2 = v54 * v67;
    if ((v54 * v67) >> 64 != (v54 * v67) >> 63)
    {
      goto LABEL_96;
    }

    if (a2 < 0xFFFFFFFF80000000)
    {
      goto LABEL_97;
    }

    if (a2 > 0x7FFFFFFF)
    {
      goto LABEL_98;
    }

    if ((v54 * v62) >> 64 != (v54 * v62) >> 63)
    {
      goto LABEL_99;
    }

    if ((v54 * v62 * v69) >> 64 != (v54 * v62 * v69) >> 63)
    {
      goto LABEL_100;
    }

    if (!v5)
    {
      __break(1u);
      return result;
    }

    v11 &= v11 - 1;

    cblas_scopy_NEWLAPACK();

    v42 = a3;
    v5 = v70;
    a1 = v49;
    v39 = v64;
    if (!v11)
    {
      goto LABEL_50;
    }
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  a3 = sub_21A4082B4(0, *(a3 + 16) + 1, 1, a3);
LABEL_71:
  v57 = *(a3 + 16);
  v56 = *(a3 + 24);
  if (v57 >= v56 >> 1)
  {
    a3 = sub_21A4082B4((v56 > 1), v57 + 1, 1, a3);
  }

  *(a3 + 16) = v57 + 1;
  *(a3 + 8 * v57 + 32) = a2;
  sub_21A41868C(v69, v11, *(v5 + 56), *(v5 + 64));
  if (v61)
  {
  }

  return a3;
}

uint64_t sub_21A416D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v33 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);

  v37 = v4;
  result = swift_beginAccess();
  v11 = 0;
  v12 = (v7 + 63) >> 6;
  v38 = v6;
  v34 = v12;
  while (v9)
  {
LABEL_9:
    if (!*(*(v37 + 120) + 16))
    {
      v31 = 10;
      goto LABEL_32;
    }

    v14 = (*(v6 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
    v16 = *v14;
    v15 = v14[1];

    sub_21A3DCA2C(v16, v15);
    v18 = v17;

    if ((v18 & 1) == 0 || !*(a2 + 16) || (v19 = sub_21A3DCA2C(v16, v15), (v20 & 1) == 0))
    {
      v31 = 10;
LABEL_31:

      goto LABEL_32;
    }

    v21 = *(*(a2 + 56) + 8 * v19);
    result = sub_21A414C78();
    if (v23 >= 2)
    {
      v25 = v23 >> 1;
      v24 = 1;
      do
      {
        v26 = *v22++;
        v27 = v24 * v26;
        if ((v24 * v26) >> 64 != (v24 * v26) >> 63)
        {
          __break(1u);
          goto LABEL_34;
        }

        v24 = v27;
        --v25;
      }

      while (v25);
      result = swift_unknownObjectRelease();
      if (v21 <= 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
      if (v21 <= 0)
      {
LABEL_30:
        v31 = 11;
        goto LABEL_31;
      }

      v24 = 1;
    }

    if ((v21 * a3) >> 64 != (v21 * a3) >> 63)
    {
      goto LABEL_35;
    }

    if (!*(v38 + 16))
    {
      goto LABEL_36;
    }

    v28 = v16;
    v6 = v38;
    v29 = sub_21A3DCA2C(v28, v15);
    v39 = v30;

    if ((v39 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (v21 * a3 == *(*(*(v38 + 56) + 8 * v29) + 16))
    {
      if ((a4 * v21) >> 64 != (a4 * v21) >> 63)
      {
        goto LABEL_38;
      }

      v9 &= v9 - 1;
      v12 = v34;
      if (v24 == a4 * v21)
      {
        continue;
      }
    }

    v31 = 11;
LABEL_32:
    sub_21A3DCAA4();
    swift_allocError();
    *v32 = v31;
    swift_willThrow();
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
    }

    v9 = *(v33 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21A417004(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v159 = *MEMORY[0x277D85DE8];
  v4 = *(v2[43] + 16);
  v87 = a2;
  if (v4)
  {
    v91 = a2;

    v6 = 0;
    v7 = (v5 + 40);
    v88 = v5;
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_21A4510E4();
      swift_beginAccess();

      v10 = v3[15];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v3[15];
      v96 = v12;
      v3[15] = 0x8000000000000000;
      v14 = sub_21A3DCA2C(v8, v9);
      v15 = v12[2];
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
      }

      v18 = v13;
      if (v12[3] >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v94;
          if (v13)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_21A3E4570();
          v21 = v94;
          if (v18)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_21A3E3828(v17, isUniquelyReferenced_nonNull_native);
        v19 = sub_21A3DCA2C(v8, v9);
        if ((v18 & 1) != (v20 & 1))
        {
LABEL_91:
          result = sub_21A451A94();
          __break(1u);
          return result;
        }

        v14 = v19;
        v21 = v94;
        if (v18)
        {
LABEL_10:
          memmove(&__dst, (v96[7] + 168 * v14), 0xA8uLL);
          sub_21A419F0C(&__dst);
          v156 = v146;
          v157 = v147;
          v158[0] = v148[0];
          *(v158 + 9) = *(v148 + 9);
          v153 = v143;
          v154 = v144;
          v155 = v145;
          goto LABEL_13;
        }
      }

      sub_21A419E74(&__dst);
      v157 = v147;
      v158[0] = v148[0];
      *(v158 + 9) = *(v148 + 9);
      v153 = v143;
      v154 = v144;
      v155 = v145;
      v156 = v146;
LABEL_13:
      v149 = __dst;
      v150 = v140;
      v151 = v141;
      v152 = v142;
      v147 = v157;
      v148[0] = v158[0];
      *(v148 + 9) = *(v158 + 9);
      v143 = v153;
      v144 = v154;
      v145 = v155;
      v146 = v156;
      if (sub_21A419E9C(&__dst) == 1)
      {
        goto LABEL_88;
      }

      v22 = v21 & 0xFFFFFFFF00000000 | v91;
      v23 = espresso_network_bind_buffer();
      v126 = v156;
      v127 = v157;
      *v128 = v158[0];
      *&v128[9] = *(v158 + 9);
      v123 = v153;
      v124 = v154;
      v125 = v155;
      v119 = v149;
      v120 = v150;
      v121 = v151;
      v122 = v152;
      v136 = v156;
      v137 = v157;
      v138[0] = v158[0];
      *(v138 + 9) = *(v158 + 9);
      v133 = v153;
      v134 = v154;
      v135 = v155;
      v129 = v149;
      v130 = v150;
      v131 = v151;
      v132 = v152;
      v94 = v22;
      if (sub_21A419E9C(&v129) == 1)
      {

        v24 = v96;
        if (v18)
        {
          sub_21A419EB8(v96[6] + 16 * v14);
          sub_21A419290(v14, v96);
        }
      }

      else if (v18)
      {

        v24 = v96;
        v25 = v96[7] + 168 * v14;
        *(v25 + 128) = v127;
        *(v25 + 144) = *v128;
        *(v25 + 160) = *&v128[16];
        *(v25 + 64) = v123;
        *(v25 + 80) = v124;
        *(v25 + 96) = v125;
        *(v25 + 112) = v126;
        *v25 = v119;
        *(v25 + 16) = v120;
        *(v25 + 32) = v121;
        *(v25 + 48) = v122;
      }

      else
      {
        v24 = v96;
        v96[(v14 >> 6) + 8] |= 1 << v14;
        v26 = (v96[6] + 16 * v14);
        *v26 = v8;
        v26[1] = v9;
        v27 = v96[7] + 168 * v14;
        *v27 = v119;
        *(v27 + 16) = v120;
        *(v27 + 64) = v123;
        *(v27 + 80) = v124;
        *(v27 + 32) = v121;
        *(v27 + 48) = v122;
        *(v27 + 160) = *&v128[16];
        *(v27 + 128) = v127;
        *(v27 + 144) = *v128;
        *(v27 + 96) = v125;
        *(v27 + 112) = v126;
        v28 = v96[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_84;
        }

        v96[2] = v30;
      }

      v3 = v95;
      v95[15] = v24;
      swift_endAccess();

      if (v23)
      {
        goto LABEL_25;
      }

      if (v4 - 1 == v6)
      {

        a2 = v87;
        break;
      }

      ++v6;
      v7 += 2;
      if (v6 >= *(v88 + 16))
      {
        __break(1u);
LABEL_25:

        sub_21A3DCAA4();
        swift_allocError();
        v32 = 4;
        goto LABEL_79;
      }
    }
  }

  result = v3[44];
  v34 = *(result + 16);
  if (v34)
  {
    v92 = a2;

    v36 = 0;
    v37 = (v35 + 40);
    v89 = v35;
    while (1)
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      sub_21A4510E4();
      swift_beginAccess();

      v40 = v3[17];
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v3[17];
      v97 = v42;
      v3[17] = 0x8000000000000000;
      v44 = sub_21A3DCA2C(v38, v39);
      v45 = v42[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_83;
      }

      v48 = v43;
      if (v42[3] >= v47)
      {
        if (v41)
        {
          v51 = v94;
          if (v43)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_21A3E4570();
          v51 = v94;
          if (v48)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_21A3E3828(v47, v41);
        v49 = sub_21A3DCA2C(v38, v39);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_91;
        }

        v44 = v49;
        v51 = v94;
        if (v48)
        {
LABEL_36:
          memmove(&__dst, (v97[7] + 168 * v44), 0xA8uLL);
          sub_21A419F0C(&__dst);
          goto LABEL_39;
        }
      }

      sub_21A419E74(&__dst);
LABEL_39:
      v157 = v147;
      v158[0] = v148[0];
      *(v158 + 9) = *(v148 + 9);
      v153 = v143;
      v154 = v144;
      v155 = v145;
      v156 = v146;
      v149 = __dst;
      v150 = v140;
      v151 = v141;
      v152 = v142;
      v148[0] = v158[0];
      *(v148 + 9) = *(v158 + 9);
      if (sub_21A419E9C(&__dst) == 1)
      {
        goto LABEL_89;
      }

      v52 = v51 & 0xFFFFFFFF00000000 | v92;
      v53 = espresso_network_bind_buffer();
      v116 = v156;
      v117 = v157;
      *v118 = v158[0];
      *&v118[9] = *(v158 + 9);
      v113 = v153;
      v114 = v154;
      v115 = v155;
      v109 = v149;
      v110 = v150;
      v111 = v151;
      v112 = v152;
      v137 = v157;
      v138[0] = v158[0];
      *(v138 + 9) = *(v158 + 9);
      v133 = v153;
      v134 = v154;
      v135 = v155;
      v136 = v156;
      v129 = v149;
      v130 = v150;
      v131 = v151;
      v132 = v152;
      v94 = v52;
      if (sub_21A419E9C(&v129) == 1)
      {

        v54 = v97;
        if (v48)
        {
          sub_21A419EB8(v97[6] + 16 * v44);
          sub_21A419290(v44, v97);
        }
      }

      else if (v48)
      {

        v54 = v97;
        v55 = v97[7] + 168 * v44;
        *(v55 + 128) = v117;
        *(v55 + 144) = *v118;
        *(v55 + 160) = *&v118[16];
        *(v55 + 64) = v113;
        *(v55 + 80) = v114;
        *(v55 + 96) = v115;
        *(v55 + 112) = v116;
        *v55 = v109;
        *(v55 + 16) = v110;
        *(v55 + 32) = v111;
        *(v55 + 48) = v112;
      }

      else
      {
        v54 = v97;
        v97[(v44 >> 6) + 8] |= 1 << v44;
        v56 = (v97[6] + 16 * v44);
        *v56 = v38;
        v56[1] = v39;
        v57 = v97[7] + 168 * v44;
        *v57 = v109;
        *(v57 + 16) = v110;
        *(v57 + 64) = v113;
        *(v57 + 80) = v114;
        *(v57 + 32) = v111;
        *(v57 + 48) = v112;
        *(v57 + 160) = *&v118[16];
        *(v57 + 128) = v117;
        *(v57 + 144) = *v118;
        *(v57 + 96) = v115;
        *(v57 + 112) = v116;
        v58 = v97[2];
        v29 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v29)
        {
          goto LABEL_86;
        }

        v97[2] = v59;
      }

      v3 = v95;
      v95[17] = v54;
      swift_endAccess();

      if (v53)
      {
        goto LABEL_51;
      }

      if (v34 - 1 == v36)
      {

        a2 = v87;
        break;
      }

      ++v36;
      v37 += 2;
      if (v36 >= *(v89 + 16))
      {
        __break(1u);
LABEL_51:

        sub_21A3DCAA4();
        swift_allocError();
        v32 = 5;
        goto LABEL_79;
      }
    }
  }

  if (*(v3 + 112) != 1)
  {
    goto LABEL_81;
  }

  result = v3[45];
  v60 = *(result + 16);
  if (!v60)
  {
    goto LABEL_81;
  }

  v93 = a2;

  v62 = 0;
  v63 = (v61 + 40);
  v90 = v61;
  do
  {
    v64 = *(v63 - 1);
    v65 = *v63;
    sub_21A4510E4();
    swift_beginAccess();

    v66 = v3[19];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v3[19];
    v98 = v68;
    v3[19] = 0x8000000000000000;
    v70 = sub_21A3DCA2C(v64, v65);
    v71 = v68[2];
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_85;
    }

    v74 = v69;
    if (v68[3] >= v73)
    {
      if (v67)
      {
        v77 = v94;
        if (v69)
        {
          goto LABEL_63;
        }
      }

      else
      {
        sub_21A3E4570();
        v77 = v94;
        if (v74)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      sub_21A3E3828(v73, v67);
      v75 = sub_21A3DCA2C(v64, v65);
      if ((v74 & 1) != (v76 & 1))
      {
        goto LABEL_91;
      }

      v70 = v75;
      v77 = v94;
      if (v74)
      {
LABEL_63:
        memmove(&__dst, (v98[7] + 168 * v70), 0xA8uLL);
        sub_21A419F0C(&__dst);
        goto LABEL_66;
      }
    }

    sub_21A419E74(&__dst);
LABEL_66:
    v157 = v147;
    v158[0] = v148[0];
    *(v158 + 9) = *(v148 + 9);
    v153 = v143;
    v154 = v144;
    v155 = v145;
    v156 = v146;
    v149 = __dst;
    v150 = v140;
    v151 = v141;
    v152 = v142;
    v148[0] = v158[0];
    *(v148 + 9) = *(v158 + 9);
    if (sub_21A419E9C(&__dst) == 1)
    {
      goto LABEL_90;
    }

    v78 = v77 & 0xFFFFFFFF00000000 | v93;
    v79 = espresso_network_bind_buffer();
    v107 = v157;
    *v108 = v158[0];
    *&v108[9] = *(v158 + 9);
    v103 = v153;
    v104 = v154;
    v105 = v155;
    v106 = v156;
    v99 = v149;
    v100 = v150;
    v101 = v151;
    v102 = v152;
    v137 = v157;
    v138[0] = v158[0];
    *(v138 + 9) = *(v158 + 9);
    v133 = v153;
    v134 = v154;
    v135 = v155;
    v136 = v156;
    v129 = v149;
    v130 = v150;
    v131 = v151;
    v132 = v152;
    v94 = v78;
    if (sub_21A419E9C(&v129) == 1)
    {

      v80 = v98;
      if (v74)
      {
        sub_21A419EB8(v98[6] + 16 * v70);
        sub_21A419290(v70, v98);
      }
    }

    else if (v74)
    {

      v80 = v98;
      v81 = v98[7] + 168 * v70;
      *(v81 + 128) = v107;
      *(v81 + 144) = *v108;
      *(v81 + 160) = *&v108[16];
      *(v81 + 64) = v103;
      *(v81 + 80) = v104;
      *(v81 + 96) = v105;
      *(v81 + 112) = v106;
      *v81 = v99;
      *(v81 + 16) = v100;
      *(v81 + 32) = v101;
      *(v81 + 48) = v102;
    }

    else
    {
      v80 = v98;
      v98[(v70 >> 6) + 8] |= 1 << v70;
      v82 = (v98[6] + 16 * v70);
      *v82 = v64;
      v82[1] = v65;
      v83 = v98[7] + 168 * v70;
      *v83 = v99;
      *(v83 + 16) = v100;
      *(v83 + 64) = v103;
      *(v83 + 80) = v104;
      *(v83 + 32) = v101;
      *(v83 + 48) = v102;
      *(v83 + 160) = *&v108[16];
      *(v83 + 128) = v107;
      *(v83 + 144) = *v108;
      *(v83 + 96) = v105;
      *(v83 + 112) = v106;
      v84 = v98[2];
      v29 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v29)
      {
        goto LABEL_87;
      }

      v98[2] = v85;
    }

    v3 = v95;
    v95[19] = v80;
    swift_endAccess();

    if (v79)
    {
      goto LABEL_78;
    }

    if (v60 - 1 == v62)
    {

      goto LABEL_81;
    }

    ++v62;
    v63 += 2;
  }

  while (v62 < *(v90 + 16));
  __break(1u);
LABEL_78:

  sub_21A3DCAA4();
  swift_allocError();
  v32 = 6;
LABEL_79:
  *v31 = v32;
  result = swift_willThrow();
LABEL_81:
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A417C90()
{
  v2 = v1;
  v3 = v0;
  v136 = *MEMORY[0x277D85DE8];
  v134 = 0;
  v135 = 0;
  espresso_create_context();
  espresso_create_plan();
  v4 = v0[11];
  *&v113 = v0[10];
  *(&v113 + 1) = v4;
  swift_bridgeObjectRetain_n();
  MEMORY[0x21CED98B0](0x74696E693ALL, 0xE500000000000000);

  sub_21A4510E4();

  LODWORD(v4) = espresso_plan_add_network();

  if (v4)
  {
    sub_21A3DCAA4();
    swift_allocError();
    v6 = 8;
    goto LABEL_10;
  }

  v87 = v0;
  v7 = v0[45];
  v8 = *(v7 + 16);

  v9 = (v7 + 40);
  v10 = -1;
  while (v10 - v8 != -1)
  {
    if (++v10 >= *(v7 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v11 = v9 + 2;
    v12 = *(v9 - 1);
    v13 = *v9;
    sub_21A4510E4();
    v2 = v2 & 0xFFFFFFFF00000000 | v135;
    v14 = espresso_network_declare_output();

    v9 = v11;
    if (v14)
    {

      sub_21A3DCAA4();
      swift_allocError();
      v6 = 3;
      goto LABEL_10;
    }
  }

  if (!espresso_plan_build())
  {
    v17 = sub_21A3E58A4(MEMORY[0x277D84F90]);
    v18 = *(v3[45] + 16);
    if (!v18)
    {
LABEL_48:
      if (espresso_plan_execute_sync())
      {
        sub_21A3DCAA4();
        swift_allocError();
        *v69 = 12;
        swift_willThrow();
      }

      else
      {
        v70 = v87[45];
        v92 = *(v70 + 16);
        if (v92)
        {

          swift_beginAccess();
          v71 = 0;
          do
          {
            if (v71 >= *(v70 + 16))
            {
              goto LABEL_74;
            }

            v72 = (v70 + 32 + 16 * v71);
            v74 = *v72;
            v73 = v72[1];

            sub_21A414C78();
            if (v76 >= 2)
            {
              v77 = v76 >> 1;
              v78 = 1;
              do
              {
                v79 = *v75++;
                v80 = (v78 * v79) >> 64;
                v78 *= v79;
                if (v80 != v78 >> 63)
                {
                  goto LABEL_70;
                }

                --v77;
              }

              while (v77);
              swift_unknownObjectRelease();
              if (v78 < 0xFFFFFFFF80000000)
              {
                goto LABEL_75;
              }

              if (v78 > 0x7FFFFFFF)
              {
                goto LABEL_76;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }

            if (!v17[2])
            {
              goto LABEL_77;
            }

            v81 = sub_21A3DCA2C(v74, v73);
            if ((v82 & 1) == 0)
            {
              goto LABEL_78;
            }

            if (!*(v17[7] + 168 * v81))
            {
              goto LABEL_83;
            }

            v83 = v87[19];
            if (!*(v83 + 16))
            {
              goto LABEL_79;
            }

            v84 = v87[19];

            v85 = sub_21A3DCA2C(v74, v73);
            if ((v86 & 1) == 0)
            {
              goto LABEL_80;
            }

            if (!*(*(v83 + 56) + 168 * v85))
            {
              goto LABEL_84;
            }

            ++v71;

            cblas_scopy_NEWLAPACK();
          }

          while (v71 != v92);
        }

        espresso_plan_destroy();
        espresso_context_destroy();
      }

      goto LABEL_11;
    }

    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;

    v20 = 0;
    v21 = (v19 + 40);
    v88 = v19;
    while (1)
    {
      v91 = v20;
      v22 = *(v21 - 1);
      v23 = *v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v113 = v17;
      v25 = sub_21A3DCA2C(v22, v23);
      v27 = v17[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_71;
      }

      v31 = v26;
      if (v17[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = v21;
          v60 = v25;
          sub_21A3E4570();
          v25 = v60;
          v21 = v59;
        }
      }

      else
      {
        sub_21A3E3828(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_21A3DCA2C(v22, v23);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_85;
        }
      }

      v33 = v113;
      v90 = v21;
      if (v31)
      {
        v34 = *(v113 + 56) + 168 * v25;
        v35 = v132;
        *(v34 + 128) = v131;
        *(v34 + 144) = v35;
        *(v34 + 160) = v133;
        v36 = v128;
        *(v34 + 64) = v127;
        *(v34 + 80) = v36;
        v37 = v130;
        *(v34 + 96) = v129;
        *(v34 + 112) = v37;
        v38 = v124;
        *v34 = v123;
        *(v34 + 16) = v38;
        v39 = v126;
        *(v34 + 32) = v125;
        *(v34 + 48) = v39;
      }

      else
      {
        *(v113 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v40 = (v33[6] + 16 * v25);
        *v40 = v22;
        v40[1] = v23;
        v41 = v33[7] + 168 * v25;
        v42 = v128;
        *(v41 + 64) = v127;
        *(v41 + 80) = v42;
        *(v41 + 160) = v133;
        v43 = v132;
        *(v41 + 128) = v131;
        *(v41 + 144) = v43;
        v44 = v130;
        *(v41 + 96) = v129;
        *(v41 + 112) = v44;
        v45 = v124;
        *v41 = v123;
        *(v41 + 16) = v45;
        v46 = v126;
        *(v41 + 32) = v125;
        *(v41 + 48) = v46;
        v47 = v33[2];
        v29 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v29)
        {
          goto LABEL_73;
        }

        v33[2] = v48;
      }

      v49 = v135;
      sub_21A4510E4();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v33;
      v52 = sub_21A3DCA2C(v22, v23);
      v53 = v33[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_72;
      }

      v56 = v51;
      if (v33[3] >= v55)
      {
        if (v50)
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_21A3E4570();
          if ((v56 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_21A3E3828(v55, v50);
        v57 = sub_21A3DCA2C(v22, v23);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_85;
        }

        v52 = v57;
        if ((v56 & 1) == 0)
        {
LABEL_33:
          sub_21A419E74(__dst);
          v121 = v111;
          v122[0] = v112[0];
          *(v122 + 9) = *(v112 + 9);
          v117 = v107;
          v118 = v108;
          v119 = v109;
          v120 = v110;
          goto LABEL_34;
        }
      }

      memmove(__dst, (v33[7] + 168 * v52), 0xA8uLL);
      sub_21A419F0C(__dst);
      v120 = v110;
      v121 = v111;
      v122[0] = v112[0];
      *(v122 + 9) = *(v112 + 9);
      v117 = v107;
      v118 = v108;
      v119 = v109;
LABEL_34:
      v113 = __dst[0];
      v114 = __dst[1];
      v115 = __dst[2];
      v116 = __dst[3];
      v111 = v121;
      v112[0] = v122[0];
      *(v112 + 9) = *(v122 + 9);
      v107 = v117;
      v108 = v118;
      v109 = v119;
      v110 = v120;
      if (sub_21A419E9C(__dst) == 1)
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        result = sub_21A451A94();
        __break(1u);
        return result;
      }

      v61 = v89 & 0xFFFFFFFF00000000 | v49;
      v62 = espresso_network_bind_buffer();
      v102 = v121;
      *v103 = v122[0];
      *&v103[9] = *(v122 + 9);
      v98 = v117;
      v99 = v118;
      v100 = v119;
      v101 = v120;
      v94 = v113;
      v95 = v114;
      v96 = v115;
      v97 = v116;
      v104[7] = v120;
      v104[8] = v121;
      v105[0] = v122[0];
      *(v105 + 9) = *(v122 + 9);
      v104[4] = v117;
      v104[5] = v118;
      v104[6] = v119;
      v104[0] = v113;
      v104[1] = v114;
      v104[2] = v115;
      v104[3] = v116;
      if (sub_21A419E9C(v104) == 1)
      {

        v17 = v93;
        if (v56)
        {
          sub_21A419EB8(v93[6] + 16 * v52);
          sub_21A419290(v52, v93);
        }
      }

      else if (v56)
      {

        v17 = v93;
        v63 = v93[7] + 168 * v52;
        *(v63 + 128) = v102;
        *(v63 + 144) = *v103;
        *(v63 + 160) = *&v103[16];
        *(v63 + 64) = v98;
        *(v63 + 80) = v99;
        *(v63 + 96) = v100;
        *(v63 + 112) = v101;
        *v63 = v94;
        *(v63 + 16) = v95;
        *(v63 + 32) = v96;
        *(v63 + 48) = v97;
      }

      else
      {
        v17 = v93;
        v93[(v52 >> 6) + 8] |= 1 << v52;
        v64 = (v93[6] + 16 * v52);
        *v64 = v22;
        v64[1] = v23;
        v65 = v93[7] + 168 * v52;
        *v65 = v94;
        *(v65 + 16) = v95;
        *(v65 + 64) = v98;
        *(v65 + 80) = v99;
        *(v65 + 32) = v96;
        *(v65 + 48) = v97;
        *(v65 + 160) = *&v103[16];
        *(v65 + 128) = v102;
        *(v65 + 144) = *v103;
        *(v65 + 96) = v100;
        *(v65 + 112) = v101;
        v66 = v93[2];
        v29 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v29)
        {
          goto LABEL_81;
        }

        v93[2] = v67;
      }

      if (v62)
      {
        goto LABEL_46;
      }

      if (v18 - 1 == v91)
      {

        goto LABEL_48;
      }

      v89 = v61;
      v20 = v91 + 1;
      v21 = v90 + 2;
      if ((v91 + 1) >= *(v88 + 16))
      {
        __break(1u);
LABEL_46:

        sub_21A3DCAA4();
        swift_allocError();
        *v68 = 5;
        swift_willThrow();

        goto LABEL_11;
      }
    }
  }

  sub_21A3DCAA4();
  swift_allocError();
  v6 = 9;
LABEL_10:
  *v5 = v6;
  result = swift_willThrow();
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A41868C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *(v4 + 104) = a1;
  swift_beginAccess();
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);
  sub_21A418880(v15);
  v16[0] = v15[0];
  v16[1] = v15[1];
  v16[2] = v15[2];
  v16[3] = v15[3];
  v16[4] = v15[4];
  v16[5] = v15[5];
  if (espresso_plan_build_clean())
  {

    sub_21A3DCAA4();
    swift_allocError();
    *v9 = 22;
    return swift_willThrow();
  }

  else
  {
    sub_21A413CE8(a2, a3, a4, v16);

    if (!v13)
    {
      v11 = *(v4 + 344);
      swift_beginAccess();

      sub_21A41A150(a3, a4, v11, (v4 + 120));
      swift_endAccess();

      v12 = *(v4 + 352);
      swift_beginAccess();

      sub_21A41A150(a3, a4, v12, (v4 + 136));
      swift_endAccess();

      return sub_21A417004(a3, a4);
    }
  }

  return result;
}

uint64_t sub_21A418880@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 344);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v22 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
LABEL_39:
    v10 = v22;
LABEL_40:
    v18 = v22;
    goto LABEL_41;
  }

  v5 = *(v3 + 16);
  v6 = sub_21A451344();
  *(v6 + 16) = v4;
  bzero((v6 + 32), 4 * v4);
  v7 = *(v1 + 344);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v22 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v9 = *(v7 + 16);
  v10 = sub_21A451344();
  *(v10 + 16) = v8;
  v57 = v10 + 32;
  bzero((v10 + 32), 4 * v8);
  v11 = *(v1 + 344);
  v12 = *(v11 + 16);
  if (!v12)
  {
    v22 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v13 = *(v11 + 16);
  v14 = sub_21A451344();
  *(v14 + 16) = v12;
  v56 = v14 + 32;
  bzero((v14 + 32), 4 * v12);
  v15 = *(v1 + 344);
  v16 = *(v15 + 16);
  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v17 = *(v15 + 16);
  v18 = sub_21A451344();
  *(v18 + 16) = v16;
  bzero((v18 + 32), 4 * v16);
  v19 = *(v1 + 344);
  v20 = *(v19 + 16);
  if (!v20)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v21 = *(v19 + 16);
  v22 = sub_21A451344();
  *(v22 + 16) = v20;
  v54 = v22 + 32;
  bzero((v22 + 32), 4 * v20);
  v23 = *(v1 + 344);
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_41:

    v47 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v25 = *(v23 + 16);
  v55 = sub_21A451344();
  *(v55 + 16) = v24;
  bzero((v55 + 32), 4 * v24);
  v26 = *(v1 + 344);
  v27 = *(v26 + 16);

  v53 = v27;
  if (!v27)
  {
LABEL_36:
    v47 = v55;
LABEL_42:

    *a1 = v6;
    a1[1] = v10;
    a1[2] = v14;
    a1[3] = v18;
    a1[4] = v22;
    a1[5] = v47;
    return result;
  }

  v52 = v1;
  v48 = a1;
  v49 = v22;
  v29 = 0;
  v30 = (v26 + 40);
  v50 = v14;
  v51 = v10;
  while (v29 < *(v26 + 16))
  {
    v32 = *(v30 - 1);
    v31 = *v30;

    sub_21A414C78();
    v34 = v33;
    v36 = v35;

    v37 = *(v52 + 104);
    if (v36 & 1) != 0 && (result = swift_isUniquelyReferenced_nonNull(), (result))
    {
      v38 = 0;
    }

    else
    {
      sub_21A41F9F0(v34, 0, v36);
      v34 = v39;
      v38 = v40;
      v36 = v41;
      result = swift_unknownObjectRelease();
    }

    if (v36 < 2 || v38 > 0)
    {
      goto LABEL_47;
    }

    *v34 = v37;
    result = sub_21A4196D8(v34, v38, v36, v58);
    if (v58[0] < 0xFFFFFFFF80000000)
    {
      goto LABEL_48;
    }

    if (v58[0] > 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

    if (v29 >= *(v6 + 16))
    {
      goto LABEL_50;
    }

    v43 = v58[1];
    v42 = v58[2];
    v45 = v58[3];
    v44 = v58[4];
    v46 = v58[5];
    *(v6 + 32 + 4 * v29) = v58[0];
    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_51;
    }

    if (v43 > 0x7FFFFFFF)
    {
      goto LABEL_52;
    }

    v10 = v51;
    if (v29 >= *(v51 + 16))
    {
      goto LABEL_53;
    }

    *(v57 + 4 * v29) = v43;
    if (v42 < 0xFFFFFFFF80000000)
    {
      goto LABEL_54;
    }

    if (v42 > 0x7FFFFFFF)
    {
      goto LABEL_55;
    }

    v14 = v50;
    if (v29 >= *(v50 + 16))
    {
      goto LABEL_56;
    }

    *(v56 + 4 * v29) = v42;
    if (v45 < 0xFFFFFFFF80000000)
    {
      goto LABEL_57;
    }

    if (v45 > 0x7FFFFFFF)
    {
      goto LABEL_58;
    }

    if (v29 >= *(v18 + 16))
    {
      goto LABEL_59;
    }

    *(v18 + 32 + 4 * v29) = v45;
    if (v44 < 0xFFFFFFFF80000000)
    {
      goto LABEL_60;
    }

    if (v44 > 0x7FFFFFFF)
    {
      goto LABEL_61;
    }

    v22 = v49;
    if (v29 >= *(v49 + 16))
    {
      goto LABEL_62;
    }

    *(v54 + 4 * v29) = v44;
    if (v46 < 0xFFFFFFFF80000000)
    {
      goto LABEL_63;
    }

    if (v46 > 0x7FFFFFFF)
    {
      goto LABEL_64;
    }

    if (v29 >= *(v55 + 16))
    {
      goto LABEL_65;
    }

    *(v55 + 32 + 4 * v29) = v46;
    result = swift_unknownObjectRelease();
    v30 += 2;
    if (v53 == ++v29)
    {
      a1 = v48;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}