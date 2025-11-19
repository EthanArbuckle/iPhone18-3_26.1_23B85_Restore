uint64_t sub_222C10C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  result = sub_222C94CFC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 56 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 16);
    v19 = *(v16 + 32);
    v38 = *(v16 + 48);
    v36 = v17;
    v37 = v19;
    v35 = v18;
    v20 = *(v6 + 40);
    sub_222C952FC();
    sub_222B554C0(&v35, &v34);
    sub_222C9452C();
    result = sub_222C9534C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v6 + 48) + 56 * v24;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    *(v29 + 48) = v38;
    *(v29 + 16) = v31;
    *(v29 + 32) = v32;
    *v29 = v30;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10EB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v32 = v16[2];
    v20 = *(v9 + 40);
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 32 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v32;
    v29[3] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C110F0(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v82[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v82[0] = a1;
    v73 = *(a1 + 16);
    if (v73)
    {
      v81 = (a2 + 56);
      v3 = a1 + 32;
      v74 = a1;

      v4 = 0;
      v79 = 0x8000000222CA9400;
      v80 = v2;
      v75 = v3;
      v78 = 0x8000000222CA93E0;
      while (1)
      {
        v5 = *(v4 + v3);
        v77 = (v4 + 1);
        v6 = *(v2 + 40);
        sub_222C952FC();
        sub_222C9452C();

        v7 = sub_222C9534C();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v81[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        v4 = v77;
        v2 = v80;
        v3 = v75;
        if (v77 == v73)
        {
LABEL_73:

          goto LABEL_74;
        }
      }

      v76 = ~v8;
      while (1)
      {
        v12 = *(*(v80 + 48) + v9);
        if (v12 > 3)
        {
          if (*(*(v80 + 48) + v9) > 5u)
          {
            if (v12 == 6)
            {
              v17 = 0xD000000000000013;
              v18 = v78;
              if (v5 > 3)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v17 = 0xD000000000000012;
              v18 = v79;
              if (v5 > 3)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            if (v12 == 4)
            {
              v17 = 0x7972617262696CLL;
            }

            else
            {
              v17 = 0xD000000000000011;
            }

            if (v12 == 4)
            {
              v18 = 0xE700000000000000;
            }

            else
            {
              v18 = 0x8000000222CA93C0;
            }

            if (v5 > 3)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v13 = 0x6974636572726F63;
          if (v12 == 2)
          {
            v13 = 0x6574616E696D6F6ELL;
          }

          v14 = 0xEA00000000006E6FLL;
          if (v12 == 2)
          {
            v14 = 0xE900000000000064;
          }

          v15 = 0x656D7269666E6F63;
          if (!*(*(v80 + 48) + v9))
          {
            v15 = 0x754D6E69616D6F64;
          }

          v16 = 0xEB00000000636973;
          if (*(*(v80 + 48) + v9))
          {
            v16 = 0xE900000000000064;
          }

          if (*(*(v80 + 48) + v9) <= 1u)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (*(*(v80 + 48) + v9) <= 1u)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (v5 > 3)
          {
LABEL_35:
            v19 = 0xD000000000000013;
            if (v5 != 6)
            {
              v19 = 0xD000000000000012;
            }

            v20 = v79;
            if (v5 == 6)
            {
              v20 = v78;
            }

            v21 = 0x7972617262696CLL;
            if (v5 == 4)
            {
              v22 = 0xE700000000000000;
            }

            else
            {
              v21 = 0xD000000000000011;
              v22 = 0x8000000222CA93C0;
            }

            if (v5 <= 5)
            {
              v23 = v21;
            }

            else
            {
              v23 = v19;
            }

            if (v5 <= 5)
            {
              v24 = v22;
            }

            else
            {
              v24 = v20;
            }

            if (v17 != v23)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }
        }

        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v28 = 0x6574616E696D6F6ELL;
          }

          else
          {
            v28 = 0x6974636572726F63;
          }

          if (v5 == 2)
          {
            v24 = 0xE900000000000064;
          }

          else
          {
            v24 = 0xEA00000000006E6FLL;
          }

          if (v17 != v28)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v25 = 0x754D6E69616D6F64;
          v24 = 0xEB00000000636973;
          if (v5)
          {
            v25 = 0x656D7269666E6F63;
            v24 = 0xE900000000000064;
          }

          if (v17 != v25)
          {
            goto LABEL_56;
          }
        }

LABEL_55:
        if (v18 == v24)
        {

LABEL_69:
          v29 = v77;
          v82[1] = v77;
          v30 = v80;
          v31 = *(v80 + 32);
          v71 = ((1 << v31) + 63) >> 6;
          v32 = 8 * v71;
          v33 = v75;
          if ((v31 & 0x3Fu) > 0xD)
          {
            goto LABEL_152;
          }

          while (1)
          {
            v72 = &v70;
            MEMORY[0x28223BE20](v27);
            v35 = &v70 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
            memcpy(v35, v81, v34);
            v36 = *(v30 + 16);
            v37 = *&v35[8 * v10] & ~v11;
            v73 = v35;
            *&v35[8 * v10] = v37;
            v76 = v36 - 1;
            v9 = v74;
            v38 = *(v74 + 16);
            if (v29 == v38)
            {
              v10 = v80;
LABEL_72:
              v2 = sub_222C10660(v73, v71, v76, v10);
              goto LABEL_73;
            }

            v10 = v80;
LABEL_79:
            if (v29 < v38)
            {
              break;
            }

            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            v66 = v32;

            v67 = v66;
            if (!swift_stdlib_isStackAllocationSafe())
            {
              v68 = swift_slowAlloc();
              memcpy(v68, v81, v67);
              v69 = sub_222C1242C(v68, v71, v30, v9, v82);

              MEMORY[0x223DCA8C0](v68, -1, -1);

              v2 = v69;
              goto LABEL_74;
            }

            v29 = v77;
          }

          v41 = *(v29 + v33);
          v77 = (v29 + 1);
          v42 = *(v10 + 40);
          sub_222C952FC();
          v30 = 0xD000000000000011;
          sub_222C9452C();

          v43 = sub_222C9534C();
          v44 = -1 << *(v10 + 32);
          v45 = v43 & ~v44;
          v46 = v45 >> 6;
          v47 = 1 << v45;
          if (((1 << v45) & v81[v45 >> 6]) == 0)
          {
LABEL_76:
            v9 = v74;
            v33 = v75;
            goto LABEL_77;
          }

          v48 = ~v44;
          while (2)
          {
            v49 = *(*(v10 + 48) + v45);
            if (v49 > 3)
            {
              if (*(*(v10 + 48) + v45) > 5u)
              {
                if (v49 == 6)
                {
                  v54 = 0xD000000000000013;
                  v55 = v78;
                  if (v41 <= 3)
                  {
                    goto LABEL_127;
                  }
                }

                else
                {
                  v54 = 0xD000000000000012;
                  v55 = v79;
                  if (v41 <= 3)
                  {
                    goto LABEL_127;
                  }
                }
              }

              else
              {
                if (v49 == 4)
                {
                  v54 = 0x7972617262696CLL;
                }

                else
                {
                  v54 = 0xD000000000000011;
                }

                if (v49 == 4)
                {
                  v55 = 0xE700000000000000;
                }

                else
                {
                  v55 = 0x8000000222CA93C0;
                }

                if (v41 <= 3)
                {
                  goto LABEL_127;
                }
              }
            }

            else
            {
              v50 = 0x6974636572726F63;
              if (v49 == 2)
              {
                v50 = 0x6574616E696D6F6ELL;
              }

              v51 = 0xEA00000000006E6FLL;
              if (v49 == 2)
              {
                v51 = 0xE900000000000064;
              }

              v52 = 0x754D6E69616D6F64;
              if (*(*(v10 + 48) + v45))
              {
                v52 = 0x656D7269666E6F63;
              }

              v53 = 0xEB00000000636973;
              if (*(*(v10 + 48) + v45))
              {
                v53 = 0xE900000000000064;
              }

              if (*(*(v10 + 48) + v45) <= 1u)
              {
                v54 = v52;
              }

              else
              {
                v54 = v50;
              }

              if (*(*(v10 + 48) + v45) <= 1u)
              {
                v55 = v53;
              }

              else
              {
                v55 = v51;
              }

              if (v41 <= 3)
              {
LABEL_127:
                if (v41 > 1)
                {
                  if (v41 == 2)
                  {
                    v63 = 0x6574616E696D6F6ELL;
                  }

                  else
                  {
                    v63 = 0x6974636572726F63;
                  }

                  if (v41 == 2)
                  {
                    v61 = 0xE900000000000064;
                  }

                  else
                  {
                    v61 = 0xEA00000000006E6FLL;
                  }

                  if (v54 == v63)
                  {
LABEL_131:
                    if (v55 == v61)
                    {

LABEL_144:
                      v64 = v73[v46];
                      v73[v46] = v64 & ~v47;
                      v9 = v74;
                      v33 = v75;
                      if ((v64 & v47) != 0)
                      {
                        v29 = v77;
                        v65 = v76 - 1;
                        v10 = v80;
                        if (__OFSUB__(v76, 1))
                        {
                          goto LABEL_151;
                        }

                        --v76;
                        if (!v65)
                        {

                          v2 = MEMORY[0x277D84FA0];
                          goto LABEL_73;
                        }

LABEL_78:
                        v38 = *(v9 + 16);
                        if (v29 == v38)
                        {
                          goto LABEL_72;
                        }

                        goto LABEL_79;
                      }

                      v10 = v80;
LABEL_77:
                      v29 = v77;
                      goto LABEL_78;
                    }
                  }
                }

                else
                {
                  v62 = 0x754D6E69616D6F64;
                  v61 = 0xEB00000000636973;
                  if (v41)
                  {
                    v62 = 0x656D7269666E6F63;
                    v61 = 0xE900000000000064;
                  }

                  if (v54 == v62)
                  {
                    goto LABEL_131;
                  }
                }

LABEL_132:
                v11 = sub_222C951FC();

                if (v11)
                {
                  goto LABEL_144;
                }

                v45 = (v45 + 1) & v48;
                v46 = v45 >> 6;
                v10 = v80;
                v47 = 1 << v45;
                if ((v81[v45 >> 6] & (1 << v45)) == 0)
                {
                  goto LABEL_76;
                }

                continue;
              }
            }

            break;
          }

          v56 = 0xD000000000000011;
          v57 = 0xD000000000000013;
          if (v41 != 6)
          {
            v57 = 0xD000000000000012;
          }

          v58 = v79;
          if (v41 == 6)
          {
            v58 = v78;
          }

          v30 = 0xD000000000000011;
          if (v41 == 4)
          {
            v56 = 0x7972617262696CLL;
          }

          v59 = 0xE700000000000000;
          if (v41 != 4)
          {
            v59 = 0x8000000222CA93C0;
          }

          if (v41 <= 5)
          {
            v60 = v56;
          }

          else
          {
            v60 = v57;
          }

          if (v41 <= 5)
          {
            v61 = v59;
          }

          else
          {
            v61 = v58;
          }

          if (v54 == v60)
          {
            goto LABEL_131;
          }

          goto LABEL_132;
        }

LABEL_56:
        v26 = sub_222C951FC();

        if (v26)
        {
          goto LABEL_69;
        }

        v9 = (v9 + 1) & v76;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if ((v81[v9 >> 6] & (1 << v9)) == 0)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_74:
  v39 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_222C11B7C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v66[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_49;
  }

  v66[0] = a1;
  v60 = *(a1 + 16);
  if (v60)
  {
    v3 = 0x6574616E696D6F6ELL;
    v65 = (a2 + 56);
    v4 = a1 + 32;
    v61 = a1;

    v5 = 0;
    v64 = v2;
    v62 = v4;
    while (1)
    {
      v6 = *(v4 + v5);
      v63 = v5 + 1;
      v7 = *(v2 + 40);
      sub_222C952FC();
      v8 = v3;
      sub_222C9452C();

      v9 = sub_222C9534C();
      v10 = -1 << *(v2 + 32);
      v11 = v9 & ~v10;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      if (((1 << v11) & v65[v11 >> 6]) != 0)
      {
        break;
      }

LABEL_4:
      v5 = v63;
      v3 = v8;
      v4 = v62;
      if (v63 == v60)
      {
        goto LABEL_48;
      }
    }

    v14 = ~v10;
    while (1)
    {
      v15 = *(*(v2 + 48) + v11);
      if (v15 <= 1)
      {
        if (*(*(v2 + 48) + v11))
        {
          v16 = 0x68506E69616D6F64;
        }

        else
        {
          v16 = 0x654D6E69616D6F64;
        }

        if (*(*(v2 + 48) + v11))
        {
          v17 = 0xEF6C6C6143656E6FLL;
        }

        else
        {
          v17 = 0xEE00736567617373;
        }

        if (v6 <= 1)
        {
LABEL_36:
          v20 = 0x654D6E69616D6F64;
          v21 = 0xEE00736567617373;
          if (v6)
          {
            v20 = 0x68506E69616D6F64;
            v21 = 0xEF6C6C6143656E6FLL;
          }

          goto LABEL_38;
        }
      }

      else if (v15 == 2)
      {
        v16 = 0x656D7269666E6F63;
        v17 = 0xE900000000000064;
        if (v6 <= 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = v8;
        }

        else
        {
          v16 = 0x6974636572726F63;
        }

        if (v15 == 3)
        {
          v17 = 0xE900000000000064;
        }

        else
        {
          v17 = 0xEA00000000006E6FLL;
        }

        if (v6 <= 1)
        {
          goto LABEL_36;
        }
      }

      if (v6 == 3)
      {
        v18 = v8;
      }

      else
      {
        v18 = 0x6974636572726F63;
      }

      v19 = 0xEA00000000006E6FLL;
      if (v6 == 3)
      {
        v19 = 0xE900000000000064;
      }

      if (v6 == 2)
      {
        v20 = 0x656D7269666E6F63;
      }

      else
      {
        v20 = v18;
      }

      if (v6 == 2)
      {
        v21 = 0xE900000000000064;
      }

      else
      {
        v21 = v19;
      }

LABEL_38:
      if (v16 == v20 && v17 == v21)
      {

LABEL_45:
        v25 = v63;
        v24 = v64;
        v66[1] = v63;
        v26 = *(v64 + 32);
        v57 = ((1 << v26) + 63) >> 6;
        v27 = 8 * v57;
        v28 = v61;
        if ((v26 & 0x3Fu) > 0xD)
        {
          goto LABEL_104;
        }

LABEL_46:
        v58 = &v56;
        MEMORY[0x28223BE20](v23);
        v30 = &v56 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v30, v65, v29);
        v31 = *(v24 + 16);
        *&v30[8 * v12] &= ~v13;
        v59 = v30;
        v60 = v31 - 1;
        v32 = *(v28 + 16);
        if (v25 == v32)
        {
LABEL_47:
          v2 = sub_222C10994(v59, v57, v60, v24);
LABEL_48:

          break;
        }

        v13 = 0xEA00000000006E6FLL;
        v12 = 0xE900000000000064;
        v11 = 0x6974636572726F63;
LABEL_54:
        if (v25 >= v32)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          v52 = v27;

          v53 = v52;
          if (swift_stdlib_isStackAllocationSafe())
          {

            v25 = v63;
            goto LABEL_46;
          }

          v54 = swift_slowAlloc();
          memcpy(v54, v65, v53);
          v55 = sub_222C12930(v54, v57, v24, v11, v66);

          MEMORY[0x223DCA8C0](v54, -1, -1);

          v2 = v55;
          break;
        }

        v35 = *(v62 + v25);
        v63 = v25 + 1;
        v36 = *(v24 + 40);
        sub_222C952FC();
        sub_222C9452C();

        v37 = sub_222C9534C();
        v38 = -1 << *(v24 + 32);
        v39 = v37 & ~v38;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & v65[v39 >> 6]) == 0)
        {
          v28 = v61;
          v11 = 0x6974636572726F63;
LABEL_52:
          v25 = v63;
          goto LABEL_53;
        }

        v42 = ~v38;
        while (1)
        {
          v43 = *(*(v64 + 48) + v39);
          if (v43 <= 1)
          {
            if (*(*(v64 + 48) + v39))
            {
              v44 = 0x68506E69616D6F64;
            }

            else
            {
              v44 = 0x654D6E69616D6F64;
            }

            if (*(*(v64 + 48) + v39))
            {
              v11 = 0xEF6C6C6143656E6FLL;
            }

            else
            {
              v11 = 0xEE00736567617373;
            }

            if (v35 <= 1)
            {
LABEL_87:
              v47 = 0x654D6E69616D6F64;
              v48 = 0xEE00736567617373;
              if (v35)
              {
                v47 = 0x68506E69616D6F64;
                v48 = 0xEF6C6C6143656E6FLL;
              }

              goto LABEL_89;
            }
          }

          else if (v43 == 2)
          {
            v44 = 0x656D7269666E6F63;
            v11 = 0xE900000000000064;
            if (v35 <= 1)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v43 == 3)
            {
              v44 = v8;
            }

            else
            {
              v44 = 0x6974636572726F63;
            }

            if (v43 == 3)
            {
              v11 = 0xE900000000000064;
            }

            else
            {
              v11 = 0xEA00000000006E6FLL;
            }

            if (v35 <= 1)
            {
              goto LABEL_87;
            }
          }

          if (v35 == 3)
          {
            v45 = v8;
          }

          else
          {
            v45 = 0x6974636572726F63;
          }

          if (v35 == 3)
          {
            v46 = 0xE900000000000064;
          }

          else
          {
            v46 = 0xEA00000000006E6FLL;
          }

          if (v35 == 2)
          {
            v47 = 0x656D7269666E6F63;
          }

          else
          {
            v47 = v45;
          }

          if (v35 == 2)
          {
            v48 = 0xE900000000000064;
          }

          else
          {
            v48 = v46;
          }

LABEL_89:
          if (v44 == v47 && v11 == v48)
          {

LABEL_95:
            v50 = v59[v40];
            v59[v40] = v50 & ~v41;
            v28 = v61;
            v13 = 0xEA00000000006E6FLL;
            if ((v50 & v41) == 0)
            {
              v12 = 0xE900000000000064;
              goto LABEL_100;
            }

            v51 = v60 - 1;
            v12 = 0xE900000000000064;
            v25 = v63;
            v24 = v64;
            if (__OFSUB__(v60, 1))
            {
              goto LABEL_103;
            }

            v11 = 0x6974636572726F63;
            --v60;
            if (!v51)
            {

              v2 = MEMORY[0x277D84FA0];
              goto LABEL_48;
            }

LABEL_53:
            v32 = *(v28 + 16);
            if (v25 == v32)
            {
              goto LABEL_47;
            }

            goto LABEL_54;
          }

          v49 = sub_222C951FC();

          if (v49)
          {
            goto LABEL_95;
          }

          v39 = (v39 + 1) & v42;
          v40 = v39 >> 6;
          v41 = 1 << v39;
          v13 = 0xEA00000000006E6FLL;
          v12 = 0xE900000000000064;
          if ((v65[v39 >> 6] & (1 << v39)) == 0)
          {
            v28 = v61;
LABEL_100:
            v11 = 0x6974636572726F63;
            v24 = v64;
            goto LABEL_52;
          }
        }
      }

      v22 = sub_222C951FC();

      if (v22)
      {
        goto LABEL_45;
      }

      v11 = (v11 + 1) & v14;
      v12 = v11 >> 6;
      v2 = v64;
      v13 = 1 << v11;
      if ((v65[v11 >> 6] & (1 << v11)) == 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_49:
  v33 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_222C1242C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v37 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v39 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_222C10660(v37, a2, v39, a3);
  }

  v10 = a5;
  v40 = a3 + 56;
  while (2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      break;
    }

    if (v8 >= v9)
    {
      goto LABEL_76;
    }

    v11 = *(v7 + v8 + 32);
    v10[1] = v8 + 1;
    v12 = *(a3 + 40);
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v13 = -1 << *(a3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v40 + 8 * (v14 >> 6))) == 0)
    {
      goto LABEL_4;
    }

    v17 = ~v13;
    while (1)
    {
      v18 = *(*(a3 + 48) + v14);
      if (v18 <= 3)
      {
        break;
      }

      if (*(*(a3 + 48) + v14) > 5u)
      {
        if (v18 == 6)
        {
          v23 = 0xD000000000000013;
          v24 = 0x8000000222CA93E0;
          if (v11 > 3)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v23 = 0xD000000000000012;
          v24 = 0x8000000222CA9400;
          if (v11 > 3)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        if (v18 == 4)
        {
          v23 = 0x7972617262696CLL;
        }

        else
        {
          v23 = 0xD000000000000011;
        }

        if (v18 == 4)
        {
          v24 = 0xE700000000000000;
        }

        else
        {
          v24 = 0x8000000222CA93C0;
        }

        if (v11 > 3)
        {
          goto LABEL_37;
        }
      }

LABEL_54:
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v33 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v33 = 0x6974636572726F63;
        }

        if (v11 == 2)
        {
          v30 = 0xE900000000000064;
        }

        else
        {
          v30 = 0xEA00000000006E6FLL;
        }

        if (v23 == v33)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v31 = 0x754D6E69616D6F64;
        v30 = 0xEB00000000636973;
        if (v11)
        {
          v31 = 0x656D7269666E6F63;
          v30 = 0xE900000000000064;
        }

        if (v23 == v31)
        {
          goto LABEL_58;
        }
      }

LABEL_59:
      v32 = sub_222C951FC();

      if (v32)
      {
        goto LABEL_71;
      }

      v14 = (v14 + 1) & v17;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if ((*(v40 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        v10 = a5;
        goto LABEL_4;
      }
    }

    v19 = 0x6974636572726F63;
    if (v18 == 2)
    {
      v19 = 0x6574616E696D6F6ELL;
    }

    v20 = 0xEA00000000006E6FLL;
    if (v18 == 2)
    {
      v20 = 0xE900000000000064;
    }

    v21 = 0x754D6E69616D6F64;
    if (*(*(a3 + 48) + v14))
    {
      v21 = 0x656D7269666E6F63;
    }

    v22 = 0xEB00000000636973;
    if (*(*(a3 + 48) + v14))
    {
      v22 = 0xE900000000000064;
    }

    if (*(*(a3 + 48) + v14) <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    if (*(*(a3 + 48) + v14) <= 1u)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (v11 <= 3)
    {
      goto LABEL_54;
    }

LABEL_37:
    v25 = 0xD000000000000011;
    v26 = 0xD000000000000013;
    if (v11 != 6)
    {
      v26 = 0xD000000000000012;
    }

    v27 = 0x8000000222CA9400;
    if (v11 == 6)
    {
      v27 = 0x8000000222CA93E0;
    }

    if (v11 == 4)
    {
      v25 = 0x7972617262696CLL;
    }

    v28 = 0x8000000222CA93C0;
    if (v11 == 4)
    {
      v28 = 0xE700000000000000;
    }

    if (v11 <= 5)
    {
      v29 = v25;
    }

    else
    {
      v29 = v26;
    }

    if (v11 <= 5)
    {
      v30 = v28;
    }

    else
    {
      v30 = v27;
    }

    if (v23 != v29)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (v24 != v30)
    {
      goto LABEL_59;
    }

LABEL_71:
    v10 = a5;
    v34 = v37[v15];
    v37[v15] = v34 & ~v16;
    if ((v34 & v16) == 0)
    {
      goto LABEL_4;
    }

    v35 = v39 - 1;
    if (!__OFSUB__(v39, 1))
    {
      --v39;
      if (!v35)
      {
        return MEMORY[0x277D84FA0];
      }

LABEL_4:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C12930(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v34 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_222C10994(v32, a2, v34, a3);
  }

  v10 = a5;
  v35 = a3 + 56;
  while (2)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }

    if (v8 >= v9)
    {
      goto LABEL_47;
    }

    v11 = *(v7 + v8 + 32);
    v10[1] = v8 + 1;
    v12 = *(a3 + 40);
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v13 = -1 << *(a3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v35 + 8 * (v14 >> 6))) == 0)
    {
      goto LABEL_4;
    }

    v17 = ~v13;
    while (1)
    {
      v18 = *(*(a3 + 48) + v14);
      if (v18 <= 1)
      {
        v19 = v18 == 0;
        v20 = *(*(a3 + 48) + v14) ? 0x68506E69616D6F64 : 0x654D6E69616D6F64;
        v21 = 0xEF6C6C6143656E6FLL;
        v22 = 0xEE00736567617373;
      }

      else
      {
        if (v18 == 2)
        {
          v20 = 0x656D7269666E6F63;
          v23 = 0xE900000000000064;
          if (v11 > 1)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        v19 = v18 == 3;
        v20 = v18 == 3 ? 0x6574616E696D6F6ELL : 0x6974636572726F63;
        v21 = 0xEA00000000006E6FLL;
        v22 = 0xE900000000000064;
      }

      if (v19)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      if (v11 > 1)
      {
LABEL_23:
        v24 = 0x6974636572726F63;
        if (v11 == 3)
        {
          v24 = 0x6574616E696D6F6ELL;
        }

        v25 = 0xEA00000000006E6FLL;
        if (v11 == 3)
        {
          v25 = 0xE900000000000064;
        }

        if (v11 == 2)
        {
          v26 = 0x656D7269666E6F63;
        }

        else
        {
          v26 = v24;
        }

        if (v11 == 2)
        {
          v27 = 0xE900000000000064;
        }

        else
        {
          v27 = v25;
        }

        goto LABEL_36;
      }

LABEL_34:
      v26 = 0x654D6E69616D6F64;
      v27 = 0xEE00736567617373;
      if (v11)
      {
        v26 = 0x68506E69616D6F64;
        v27 = 0xEF6C6C6143656E6FLL;
      }

LABEL_36:
      if (v20 == v26 && v23 == v27)
      {
        break;
      }

      v28 = sub_222C951FC();

      if (v28)
      {
        goto LABEL_42;
      }

      v14 = (v14 + 1) & v17;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if ((*(v35 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        v10 = a5;
        goto LABEL_4;
      }
    }

LABEL_42:
    v10 = a5;
    v29 = v32[v15];
    v32[v15] = v29 & ~v16;
    if ((v29 & v16) == 0)
    {
      goto LABEL_4;
    }

    v30 = v34 - 1;
    if (!__OFSUB__(v34, 1))
    {
      --v34;
      if (!v30)
      {
        return MEMORY[0x277D84FA0];
      }

LABEL_4:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C12DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C12E38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C12EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_222C12F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CommonContactFeature.RecipientContactReferences.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonContactFeature.RecipientContactReferences.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t CommonContactFeature.RecipientContactReferences.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C1307C(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for CommonContactFeature.RecipientContactReferences();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C130C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for CommonContactFeature.RecipientContactReferences();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonContactReference.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommonContactReference.contactIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CommonContactReference.handleLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t _s28SiriPrivateLearningInference22CommonContactReferenceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for CommonContactFeature.RecipientContactReferences()
{
  result = qword_27D026DA8;
  if (!qword_27D026DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C13354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DC8, &qword_222CA0AD8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222C96900;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DD0, &qword_222CA0AE0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0x3FB999999999999ALL;
  v16 = v2;
  v4 = sub_222B61940(&qword_27D026DD8, &qword_27D026DD0, &qword_222CA0AE0);
  v17 = v4;
  *&v15 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3FD999999999999ALL;
  v13 = v2;
  v14 = v4;
  *&v12 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DE0, &qword_222CA0AE8);
  v7 = swift_allocObject();
  sub_222B405A0(&v15, v7 + 16);
  sub_222B405A0(&v12, v7 + 56);
  *(v7 + 96) = sub_222C13600;
  *(v7 + 104) = 0;
  *(v1 + 56) = v6;
  *(v1 + 64) = sub_222B61940(&qword_27D026DE8, &qword_27D026DE0, &qword_222CA0AE8);
  *(v1 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DF0, &qword_222CA0AF0);
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_283607AC8;
  *(v1 + 96) = v8;
  *(v1 + 104) = sub_222B61940(&qword_27D026DF8, &qword_27D026DF0, &qword_222CA0AF0);
  *(v1 + 72) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E00, &qword_222CA0AF8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C96900;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E08, &unk_222CA0B00);
  *(v10 + 64) = sub_222B61940(&qword_27D026E10, &qword_27D026E08, &unk_222CA0B00);
  *(v10 + 32) = 0x3FC999999999999ALL;
  *(v10 + 96) = &type metadata for OneMediaNominationGlobalFilter;
  *(v10 + 104) = sub_222C13674();
  *(v0 + 16) = v1;
  *(v0 + 24) = v10;
  return v0;
}

uint64_t type metadata accessor for MediaSuggestionCandidateNominator()
{
  result = qword_27D026DB8;
  if (!qword_27D026DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222C13674()
{
  result = qword_27D026E18;
  if (!qword_27D026E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E18);
  }

  return result;
}

uint64_t SessionGroundTruths.init(sessionId:groundTruth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_222C9367C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SessionGroundTruths();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for SessionGroundTruths()
{
  result = qword_280FDF2B8;
  if (!qword_280FDF2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionGroundTruths.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionGroundTruths.groundTruth.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionGroundTruths() + 20));
}

void sub_222C13854()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C138D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222C138D8()
{
  if (!qword_280FDB7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024E28, &unk_222C995F0);
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7C0);
    }
  }
}

uint64_t isMediaPlayIntentEvent(_:)(uint64_t a1)
{
  if (*(a1 + 24) == 0xD000000000000011 && 0x8000000222CA87C0 == *(a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC();
  }
}

BOOL isSiriPlayMedia(_:)(uint64_t a1)
{
  v2 = sub_222B72040(&unk_283607140);
  swift_arrayDestroy();
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = sub_222B41648(*(a1 + *(v3 + 24)));
  if (v4)
  {
    v5 = v4;
    v11[0] = 0xD000000000000024;
    v11[1] = 0x8000000222CA8650;
    MEMORY[0x28223BE20](v4);
    v10[2] = v11;
    if (sub_222B42F4C(sub_222B77BA0, v10, v5))
    {
      v6 = sub_222B72040(v5);

      v7 = sub_222B860E8(v6, v2);

      v8 = v7[2];

      return v8 == 1;
    }
  }

  return 0;
}

uint64_t sub_222C13AC0(uint64_t a1)
{
  result = type metadata accessor for FeaturisedTurn(0);
  v3 = 0;
  v4 = *(a1 + *(result + 28));
  v29 = v4;
  v5 = v4 + 64;
  v6 = -*(v4 + 16);
  v27 = v4 + 64;
  v28 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = v3 + 1;
  v8 = (v5 + 40 * v3);
  while (v6 + v7 != 1)
  {
    v3 = v7;
    if ((v7 - 1) >= *(v29 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = *(v8 - 4);
    v10 = *(v8 - 3);
    v12 = *(v8 - 2);
    v11 = *(v8 - 1);
    v13 = *v8;
    if (v11 != 0xD000000000000011 || 0x8000000222CA87C0 != v13)
    {
      ++v7;
      v8 += 5;
      result = sub_222C951FC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v15 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v28;
    if ((result & 1) == 0)
    {
      result = sub_222B4C374(0, *(v28 + 16) + 1, 1);
      v15 = v30;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_222B4C374((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
      v15 = v30;
    }

    *(v15 + 16) = v18;
    v28 = v15;
    v19 = (v15 + 40 * v17);
    v19[4] = v9;
    v19[5] = v10;
    v19[6] = v12;
    v19[7] = v11;
    v19[8] = v13;
    v5 = v27;
    goto LABEL_2;
  }

  v20 = *(v28 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = (v28 + 64);
    while (v21 < *(v28 + 16))
    {
      v23 = *v22;
      v25 = *(v22 - 3);
      v24 = *(v22 - 2);
      swift_bridgeObjectRetain_n();

      sub_222B419B8(v24, &v30);

      swift_bridgeObjectRelease_n();

      if ((v31 & 0xFF00) != 0x300 && HIBYTE(v31) != 2 && (v31 & 0x100) != 0)
      {
        v26 = 1;
        goto LABEL_24;
      }

      ++v21;
      v22 += 5;
      if (v20 == v21)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_26;
  }

LABEL_23:
  v26 = 0;
LABEL_24:

  return v26;
}

uint64_t isMediaNowPlayingEvent(_:)(uint64_t a1)
{
  if (*(a1 + 24) == 0xD000000000000011 && 0x8000000222CA87E0 == *(a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC();
  }
}

uint64_t sub_222C13D6C()
{
  type metadata accessor for QuickHangupClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E20, &unk_222CA0BD0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDED70 = 91;
  *algn_280FDED78 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C13DF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = type metadata accessor for RuleResult();
  v6 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222C935EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = a2[1];
  v29 = *a2;
  v17 = a2[2];
  v18 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  sub_222B41F58(v18);
  v20 = v19;
  sub_222B41494(v18);
  if (v20 & 1) != 0 && (v21)
  {
    sub_222C9415C();
  }

  else
  {
    sub_222B41F70(v17);
    if ((v22 & 1) == 0)
    {
      sub_222C935AC();
      sub_222C935AC();
      sub_222C9354C();
      v25 = *(v9 + 8);
      v25(v13, v8);
      v25(v15, v8);
      v26 = v28;
      swift_storeEnumTagMultiPayload();
      return sub_222B99D5C(v26, a3);
    }

    type metadata accessor for PhoneCallEventFeature.CallEndTimestamp(0);
  }

  *a3 = sub_222C93ECC();
  a3[1] = v23;
  a3[2] = v29;
  a3[3] = v16;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_222C14074(uint64_t a1, uint64_t *a2)
{
  v45 = a1;
  v3 = type metadata accessor for RuleResult();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v41 = a2[4];
  v42 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_222C98AE0;
  v43 = v18;
  v19 = (v18 + v17);
  v20 = (v19 + *(v15 + 48));
  *v19 = 0xD000000000000011;
  v19[1] = 0x8000000222CAC680;
  v47 = v14;
  if (sub_222B41CFC(v14) == 2)
  {
    type metadata accessor for CommonFeature.DonatedBySiri(0);
    *v20 = sub_222C93ECC();
    v20[1] = v21;
    v22 = v12;
    v20[2] = v12;
    v20[3] = v11;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v22 = v12;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v10, v20);
  }

  v23 = (v19 + v16);
  v24 = (v19 + v16 + *(v15 + 48));
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000011, 0x8000000222CAC6A0);
  sub_222C948DC();
  v25 = v49;
  *v23 = v48;
  v23[1] = v25;
  sub_222B41F40(v47);
  v44 = v3;
  if (v26)
  {
    type metadata accessor for PhoneCallEventFeature.CallDuration(0);
    *v24 = sub_222C93ECC();
    v24[1] = v27;
    v24[2] = v22;
    v24[3] = v11;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v28 = v40;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v28, v24);
  }

  v29 = (v19 + 2 * v16);
  v30 = *(v15 + 48);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000012, 0x8000000222CAC6C0);
  sub_222C948DC();
  v31 = v49;
  *v29 = v48;
  v29[1] = v31;
  v48 = v22;
  v49 = v11;
  v50 = v47;
  v51 = v42;
  v52 = v41;
  v32 = v45;
  sub_222C13DF8(v45, &v48, (v29 + v30));
  v33 = (v19 + 3 * v16);
  *v33 = 0xD000000000000011;
  v33[1] = 0x8000000222CAC6E0;
  v34 = type metadata accessor for FeaturisedTurn(0);
  v35 = sub_222B41B30(*(v32 + *(v34 + 24)));
  if (v35)
  {
    if (v35 >> 62)
    {
      sub_222C94C6C();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v37 = v46;
  swift_storeEnumTagMultiPayload();
  sub_222B99D5C(v37, v33 + *(v15 + 48));
  return v43;
}

unint64_t sub_222C144F4(unint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v77 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v81 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v81);
  v78 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v72[-v10];
  if (qword_280FDFE78 != -1)
  {
LABEL_39:
    swift_once();
  }

  v12 = sub_222C9431C();
  v13 = __swift_project_value_buffer(v12, qword_280FE2340);

  *&v80 = v13;
  v14 = sub_222C942FC();
  v15 = sub_222C94A3C();
  if (!os_log_type_enabled(v14, v15))
  {

    v18 = *(a1 + 16);
    if (v18)
    {
      goto LABEL_6;
    }

    return MEMORY[0x277D84F90];
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v83[0] = v17;
  *v16 = 136315394;
  if (qword_280FDED68 != -1)
  {
    swift_once();
  }

  *(v16 + 4) = sub_222B437C0(qword_280FDED70, *algn_280FDED78, v83);
  *(v16 + 12) = 2048;
  *(v16 + 14) = *(a1 + 16);

  _os_log_impl(&dword_222B39000, v14, v15, "%s Identifying quick hangups in %ld turn(s)", v16, 0x16u);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  MEMORY[0x223DCA8C0](v17, -1, -1);
  MEMORY[0x223DCA8C0](v16, -1, -1);

  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v75 = v3;
  v76 = v2;
  sub_222B78534(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v18 - 1), v11);
  v19 = *(v81 + 28);
  v79 = v11;
  v11 = *&v11[v19];
  v3 = *(v11 + 2);
  if (!v3)
  {
LABEL_18:
    v27 = sub_222C942FC();
    v28 = sub_222C94A3C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v83[0] = v30;
      *v29 = 136315138;
      v31 = v79;
      if (qword_280FDED68 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_222B437C0(qword_280FDED70, *algn_280FDED78, v83);
      _os_log_impl(&dword_222B39000, v27, v28, "%s No attached phone call events - skipping quick hangup detection", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x223DCA8C0](v30, -1, -1);
      MEMORY[0x223DCA8C0](v29, -1, -1);

LABEL_37:
      v26 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_44:
    v31 = v79;
LABEL_45:
    sub_222B73DD0(v31);
    return v26;
  }

  v20 = 0;
  v21 = (v11 + 64);
  while (1)
  {
    if (v20 >= *(v11 + 2))
    {
      __break(1u);
      goto LABEL_39;
    }

    a1 = *(v21 - 3);
    v82 = *(v21 - 4);
    v6 = *(v21 - 2);
    v22 = *(v21 - 1);
    v23 = *v21;

    v24 = sub_222B41F28(v6);
    if ((v25 & 1) == 0)
    {
      if (v2 = v24, v22 == 0xD000000000000011) && 0x8000000222CA8780 == v23 || (sub_222C951FC())
      {
        if (v2 == 1)
        {
          break;
        }
      }
    }

    ++v20;

    v21 += 5;
    if (v3 == v20)
    {
      goto LABEL_18;
    }
  }

  v83[0] = v82;
  v83[1] = a1;
  v83[2] = v6;
  v83[3] = v22;
  v83[4] = v23;
  v31 = v79;
  v32 = sub_222C14074(v79, v83);
  v33 = v78;
  sub_222B78534(v31, v78);

  v34 = sub_222C942FC();
  v35 = sub_222C94A3C();

  if (os_log_type_enabled(v34, v35))
  {
    v73 = v35;
    v74 = v34;
    *&v80 = v32;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v83[0] = v37;
    *v36 = 136315650;
    if (qword_280FDED68 != -1)
    {
      swift_once();
    }

    *(v36 + 4) = sub_222B437C0(qword_280FDED70, *algn_280FDED78, v83);
    *(v36 + 12) = 2080;
    v38 = v78;
    v39 = FeaturisedTurn.friendlyName.getter();
    v41 = v40;
    sub_222B73DD0(v38);
    v42 = sub_222B437C0(v39, v41, v83);

    *(v36 + 14) = v42;
    *(v36 + 22) = 2080;

    v43 = sub_222B437C0(v82, a1, v83);

    *(v36 + 24) = v43;
    v44 = v74;
    _os_log_impl(&dword_222B39000, v74, v73, "%s Rule matrix for [Turn ID: %s, Event ID: %s]:", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v37, -1, -1);
    MEMORY[0x223DCA8C0](v36, -1, -1);

    v32 = v80;
  }

  else
  {

    sub_222B73DD0(v33);
  }

  v46 = v75;
  v45 = v76;
  sub_222C8A24C(8224, 0xE200000000000000, v32);
  v47 = sub_222C1EC00(v32);

  if (!v47)
  {

    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v26 = swift_allocObject();
  v80 = xmmword_222C97C40;
  *(v26 + 16) = xmmword_222C97C40;
  v48 = *(v46 + 16);
  (v48)(v77, v31, v45);
  v49 = *(v31 + *(v81 + 24));

  result = sub_222B41B30(v49);
  v78 = (v46 + 16);
  v74 = v48;
  if (!result)
  {
    goto LABEL_42;
  }

  v51 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  v53 = result;
  v54 = sub_222C94C6C();
  result = v53;
  if (!v54)
  {
LABEL_41:

LABEL_42:
    v81 = 0;
    goto LABEL_43;
  }

LABEL_32:
  if ((result & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x223DC9B30](0);
    goto LABEL_35;
  }

  if (*(v51 + 16))
  {
    v52 = *(result + 32);

LABEL_35:
    v81 = v52;

LABEL_43:

    v56 = sub_222B41F70(v55);
    v58 = v57;

    v59 = type metadata accessor for QuickHangupClassification();
    *(v26 + 56) = v59;
    *(v26 + 64) = &protocol witness table for QuickHangupClassification;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    v61 = v77;
    (v74)(boxed_opaque_existential_1, v77, v76);
    v62 = (boxed_opaque_existential_1 + v59[5]);
    *v62 = v82;
    v62[1] = a1;
    v63 = boxed_opaque_existential_1 + v59[7];
    *v63 = v56;
    v63[8] = v58 & 1;
    *(boxed_opaque_existential_1 + v59[6]) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v64 = v75;
    v65 = *(v75 + 72);
    v66 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v80;
    v68 = v61;
    v69 = v76;
    (v74)(v67 + v66, v68, v76);
    *(boxed_opaque_existential_1 + v59[8]) = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
    v70 = swift_allocObject();
    *(v70 + 16) = v80;
    *(v70 + 32) = v82;
    *(v70 + 40) = a1;
    v71 = *(v64 + 8);

    v71(v77, v69);

    *(boxed_opaque_existential_1 + v59[9]) = v70;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

double sub_222C14F14(double a1, double a2)
{
  if (*v2 >= a2)
  {
    return a2;
  }

  else
  {
    return *v2;
  }
}

uint64_t PlayMediaSELFFeatures.MediaItemResults.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaSELFFeatures.MediaItemResults.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C15020(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PlayMediaSELFFeatures.MediaItemResults(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C1506C(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PlayMediaSELFFeatures.MediaItemResults(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaSELFFeatures.RequestedMediaItem.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  v3 = sub_222C93EDC();

  if (v3)
  {
  }

  return v3;
}

uint64_t PlayMediaSELFFeatures.RequestedMediaItem.init(value:)()
{
  return sub_222C93EEC();
}

{

  v0 = sub_222C93EDC();

  if (v0)
  {
  }

  return v0;
}

uint64_t PlayMediaSELFFeatures.RequestedMediaItem.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C15234(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C15280(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_222C93EDC();

  if (v5)
  {
  }

  return v5;
}

uint64_t FlowMediaItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FlowMediaItem.artist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FlowMediaItem.mediaType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FlowMediaItem.entityId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall FlowMediaItem.init(title:artist:mediaType:entityId:isAlternative:)(SiriPrivateLearningInference::FlowMediaItem *__return_ptr retstr, Swift::String_optional title, Swift::String_optional artist, Swift::String_optional mediaType, Swift::String_optional entityId, Swift::Bool isAlternative)
{
  retstr->title = title;
  retstr->artist = artist;
  retstr->mediaType = mediaType;
  retstr->entityId = entityId;
  retstr->isAlternative = isAlternative;
}

uint64_t _s28SiriPrivateLearningInference13FlowMediaItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = *(a2 + 24);
  v13 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v11)
    {
      v39 = *(a2 + 48);
      v40 = *(a1 + 40);
      v37 = *(a1 + 56);
      v38 = *(a2 + 56);
      v19 = *(a1 + 48);
      v20 = *(a2 + 64);
      v21 = *(a1 + 64);
      v22 = *(a1 + 32);
      v23 = *(a2 + 40);
      v24 = *(a2 + 32);
      v25 = *(a1 + 16);
      v26 = sub_222C951FC();
      v4 = v25;
      v13 = v24;
      v15 = v23;
      v5 = v22;
      v10 = v21;
      v18 = v20;
      v7 = v19;
      v9 = v37;
      v17 = v38;
      v16 = v39;
      v8 = v40;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    if (v4 != v12 || v6 != v14)
    {
      v27 = v10;
      v28 = v5;
      v29 = v15;
      v30 = v13;
      v31 = sub_222C951FC();
      v13 = v30;
      v15 = v29;
      v5 = v28;
      v10 = v27;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v13 || v8 != v15)
    {
      v32 = v10;
      v33 = sub_222C951FC();
      v10 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v17)
    {
      if (v7 == v16 && v9 == v17)
      {
        return v10 ^ v18 ^ 1u;
      }

      v34 = v10;
      v35 = sub_222C951FC();
      v10 = v34;
      if (v35)
      {
        return v10 ^ v18 ^ 1u;
      }
    }
  }

  else if (!v17)
  {
    return v10 ^ v18 ^ 1u;
  }

  return 0;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C15660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222C156BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

BOOL sub_222C15748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return v2 <= v1;
  }

  if (v2 <= v1)
  {
    return v1 < 1.0;
  }

  return 0;
}

uint64_t sub_222C15784()
{
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x223DCA0E0](*&v1);
  v2 = *(v0 + 24);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x223DCA0E0](*&v2);
}

BOOL sub_222C15804()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  if (*(*v0 + 32) == 1)
  {
    return v2 <= v1;
  }

  if (v2 <= v1)
  {
    return v1 < 1.0;
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference25ThresholdedTurnComparisonC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 32) ^ *(a2 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_222C15890(uint64_t a1)
{
  result = sub_222C158B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222C158B8()
{
  result = qword_27D026E48;
  if (!qword_27D026E48)
  {
    type metadata accessor for ThresholdedTurnComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E48);
  }

  return result;
}

uint64_t type metadata accessor for MediaEvaluationSummary()
{
  result = qword_280FDEA18;
  if (!qword_280FDEA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222C15A04()
{
  sub_222B56160();
  if (v0 <= 0x3F)
  {
    sub_222C15B3C(319, &qword_280FDB820, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_222C15B3C(319, qword_280FDE3B8, &type metadata for MediaSuggestionEvaluation, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_222C15B3C(319, &qword_280FDB7B0, &type metadata for MediaGroundTruthSummary, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222C15B3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t FullEntityUtteranceComparator.__allocating_init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:useTrimmedUtterance:)(uint64_t a1, char a2, char a3, double a4)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a4;
  *(result + 24) = a2;
  *(result + 25) = a3;
  return result;
}

uint64_t FullEntityUtteranceComparator.init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:useTrimmedUtterance:)(uint64_t a1, char a2, char a3, double a4)
{
  *(v4 + 32) = a1;
  *(v4 + 16) = a4;
  *(v4 + 24) = a2;
  *(v4 + 25) = a3;
  return v4;
}

uint64_t sub_222C15C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 25);
  v11 = type metadata accessor for FeaturisedTurn(0);
  *&result = COERCE_DOUBLE(sub_222B41648(*(a1 + *(v11 + 24))));
  if (*&result == 0.0)
  {
    goto LABEL_10;
  }

  v13 = result;
  v14 = sub_222B41648(*(a2 + *(v11 + 24)));
  if (!v14)
  {
    *&result = COERCE_DOUBLE();
LABEL_10:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v15 = v14;
  v16 = sub_222B72040(v13);

  v17 = sub_222B860E8(v16, v7);

  v18 = sub_222B72040(v15);

  v19 = sub_222B860E8(v18, v17);

  v20 = v19[2];
  *&result = COERCE_DOUBLE();
  if (v20 != 1)
  {
    goto LABEL_10;
  }

  *&result = COERCE_DOUBLE(sub_222C16144(a1, a2, v10));
  if (v21)
  {
    goto LABEL_10;
  }

  v22 = result;
  if (*&result >= 0.3)
  {
    if (*&result >= 0.5)
    {
      if (*&result >= 0.7)
      {
        if (*&result >= 0.85)
        {
          if (*&result >= 1.0)
          {
            if (*&result == 1.0)
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v29 = &type metadata for PIMSConstraintMismatch;
              v30 = sub_222B77B4C();
              v26 = 0xD000000000000016;
              v27 = 0x8000000222CA9C80;
              v23 = 9;
            }

            else
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v29 = &type metadata for PIMSConstraintMismatch;
              v30 = sub_222B77B4C();
              v26 = 0xD000000000000016;
              v27 = 0x8000000222CA9C80;
              v23 = 10;
            }
          }

          else
          {
            if (qword_280FDF1F0 != -1)
            {
              swift_once();
            }

            v29 = &type metadata for PIMSConstraintMismatch;
            v30 = sub_222B77B4C();
            v26 = 0xD000000000000016;
            v27 = 0x8000000222CA9C80;
            v23 = 8;
          }
        }

        else
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          v29 = &type metadata for PIMSConstraintMismatch;
          v30 = sub_222B77B4C();
          v26 = 0xD000000000000016;
          v27 = 0x8000000222CA9C80;
          v23 = 7;
        }
      }

      else
      {
        if (qword_280FDF1F0 != -1)
        {
          swift_once();
        }

        v29 = &type metadata for PIMSConstraintMismatch;
        v30 = sub_222B77B4C();
        v26 = 0xD000000000000016;
        v27 = 0x8000000222CA9C80;
        v23 = 6;
      }
    }

    else
    {
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v29 = &type metadata for PIMSConstraintMismatch;
      v30 = sub_222B77B4C();
      v26 = 0xD000000000000016;
      v27 = 0x8000000222CA9C80;
      v23 = 5;
    }
  }

  else
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v29 = &type metadata for PIMSConstraintMismatch;
    v30 = sub_222B77B4C();
    v26 = 0xD000000000000016;
    v27 = 0x8000000222CA9C80;
    v23 = 4;
  }

  v28 = v23;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  v24 = type metadata accessor for EntityUtteranceComparison();
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v8;
  *(v25 + 32) = v9;
  *(a3 + 24) = v24;
  *&result = COERCE_DOUBLE(sub_222BB23C8());
  *(a3 + 32) = *&result;
  *a3 = v25;
  return result;
}

uint64_t FullEntityUtteranceComparator.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t FullEntityUtteranceComparator.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t PlusContactSuggestion.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion() + 36));
}

uint64_t type metadata accessor for PlusContactSuggestion()
{
  result = qword_280FDEE18;
  if (!qword_280FDEE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlusContactSuggestion.init(id:leftHandKey:rightHandValue:fromGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v50 = a5;
  v51 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for ThinContactGroundTruth();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_222C9367C();
  v48 = *(v49 - 8);
  v20 = *(v48 + 64);
  v21 = MEMORY[0x28223BE20](v49);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v46 = &v44 - v23;
  v24 = a3[1];
  v56 = *a3;
  v25 = a3[3];
  v26 = *(a4 + 16);
  v52 = a1;
  if (v26)
  {
    v45 = a6;
    v27 = a3[2];
    v44 = a4;
    v28 = a4 + 32;
    v53 = v17;
    v29 = (v17 + 48);
    v30 = MEMORY[0x277D84F90];
    v54 = v16;
    do
    {
      sub_222B43E3C(v28, v59);
      sub_222B43E3C(v59, v58);
      v57[0] = v56;
      v57[1] = v24;
      v57[2] = v27;
      v57[3] = v25;

      ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)(v58, v57, v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      if ((*v29)(v15, 1, v16) == 1)
      {
        sub_222B4FCD4(v15, &qword_27D025AA8, &qword_222C9A1E0);
      }

      else
      {
        sub_222C1BF74(v15, v55, type metadata accessor for ThinContactGroundTruth);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_222B4A984(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        if (v32 >= v31 >> 1)
        {
          v30 = sub_222B4A984(v31 > 1, v32 + 1, 1, v30);
        }

        v30[2] = v32 + 1;
        sub_222C1BF74(v55, v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v32, type metadata accessor for ThinContactGroundTruth);
        v16 = v54;
      }

      v28 += 40;
      --v26;
    }

    while (v26);

    a6 = v45;
    v33 = v52;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v33 = a1;
  }

  v34 = v48;
  v35 = *(v48 + 16);
  v36 = v46;
  v37 = v49;
  v35(v46, v33, v49);
  v38 = v47;
  v35(v47, v36, v37);
  v35(a6, v38, v37);
  v39 = type metadata accessor for PlusContactSuggestion();
  *&a6[v39[5]] = v51;

  v40 = &a6[v39[6]];
  *v40 = v56;
  v40[1] = v24;
  v40[2] = 0;
  v40[3] = 0;
  *&a6[v39[7]] = sub_222C17488(50, v30);
  *&a6[v39[8]] = a7;
  *&a6[v39[9]] = v50;
  *&a6[v39[10]] = 0;
  v41 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);

  v42 = *(v34 + 8);
  v42(v52, v37);
  v42(v38, v37);
  result = (v42)(v36, v37);
  *&a6[v39[11]] = v41;
  return result;
}

uint64_t sub_222C16CD8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_222B4C3D4(0, v10, 0);
  v11 = v24;
  v12 = *(a2 + 16);
  if (!v12)
  {

    return v11;
  }

  v13 = 0;
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22[1] = a2;
  v15 = a2 + v14;
  v16 = *(v5 + 72);
  do
  {
    result = sub_222C1BFDC(v15, v9, type metadata accessor for FeaturisedTurn);
    v18 = *(v11 + 16);
    if (v18 < a1)
    {
      v24 = v11;
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_222B4C3D4(v17 > 1, v18 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v18 + 1;
      sub_222C1BF74(v9, v11 + v14 + v18 * v16, type metadata accessor for FeaturisedTurn);
    }

    else
    {
      if (v13 >= v18)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_222C1C044(v9, v11 + v14 + v16 * v13, type metadata accessor for FeaturisedTurn);
      if ((v13 + 1) < a1)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    v15 += v16;
    --v12;
  }

  while (v12);

  if (!v13)
  {
    return v11;
  }

  v19 = *(v11 + 16);
  v23 = MEMORY[0x277D84F90];
  result = sub_222B4C3D4(0, v19, 0);
  if (v19 >= v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v20 = *(v11 + 16);
    if (v20 >= v13 && v20 >= v19)
    {

      sub_222C1A100(v21, v11 + v14, v13, (2 * v19) | 1);
      sub_222C1A100(v11, v11 + v14, 0, (2 * v13) | 1);
      return v23;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C16F98(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_222B4C6A4(0, v10, 0);
  v11 = v24;
  v12 = *(a2 + 16);
  if (!v12)
  {

    return v11;
  }

  v13 = 0;
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22[1] = a2;
  v15 = a2 + v14;
  v16 = *(v5 + 72);
  do
  {
    result = sub_222C1BFDC(v15, v9, type metadata accessor for ThinMediaGroundTruth);
    v18 = *(v11 + 16);
    if (v18 < a1)
    {
      v24 = v11;
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_222B4C6A4(v17 > 1, v18 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v18 + 1;
      sub_222C1BF74(v9, v11 + v14 + v18 * v16, type metadata accessor for ThinMediaGroundTruth);
    }

    else
    {
      if (v13 >= v18)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_222C1C044(v9, v11 + v14 + v16 * v13, type metadata accessor for ThinMediaGroundTruth);
      if ((v13 + 1) < a1)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    v15 += v16;
    --v12;
  }

  while (v12);

  if (!v13)
  {
    return v11;
  }

  v19 = *(v11 + 16);
  v23 = MEMORY[0x277D84F90];
  result = sub_222B4C6A4(0, v19, 0);
  if (v19 >= v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v20 = *(v11 + 16);
    if (v20 >= v13 && v20 >= v19)
    {

      sub_222C1A688(v21, v11 + v14, v13, (2 * v19) | 1);
      sub_222C1A688(v11, v11 + v14, 0, (2 * v13) | 1);
      return v23;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_222C17258(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_222B4C674(0, v4, 0);
  v5 = v22;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v8 = (a2 + 57);
  do
  {
    v11 = *(v8 - 25);
    v12 = *(v8 - 17);
    v13 = *(v8 - 9);
    v14 = *(v8 - 1);
    v15 = *v8;
    v16 = *(v22 + 16);
    if (v16 < v3)
    {
      v9 = *(v22 + 24);
      if (v16 >= v9 >> 1)
      {
        result = sub_222B4C674((v9 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v10 = v22 + 32 * v16;
      *(v10 + 32) = v11;
      *(v10 + 40) = v12;
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;
      *(v10 + 57) = v15;
    }

    else
    {
      if (v7 >= v16)
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = v22 + 32 * v7;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      *(v17 + 48) = v13;
      *(v17 + 56) = v14;
      *(v17 + 57) = v15;
      if ((v7 + 1) < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 += 32;
    --v6;
  }

  while (v6);

  if (!v7)
  {
    return v5;
  }

  v18 = *(v22 + 16);
  v21 = MEMORY[0x277D84F90];
  result = sub_222B4C674(0, v18, 0);
  if (v18 >= v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v19 = *(v22 + 16);
    if (v19 >= v7 && v19 >= v18)
    {

      sub_222C1AC10(v20, v22 + 32, v7, (2 * v18) | 1, sub_222B4C674);
      sub_222C1AC10(v22, v22 + 32, 0, (2 * v7) | 1, sub_222B4C674);
      return v21;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C17488(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_222B4C75C(0, v10, 0);
  v11 = v24;
  v12 = *(a2 + 16);
  if (!v12)
  {

    return v11;
  }

  v13 = 0;
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22[1] = a2;
  v15 = a2 + v14;
  v16 = *(v5 + 72);
  do
  {
    result = sub_222C1BFDC(v15, v9, type metadata accessor for ThinContactGroundTruth);
    v18 = *(v11 + 16);
    if (v18 < a1)
    {
      v24 = v11;
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_222B4C75C(v17 > 1, v18 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v18 + 1;
      sub_222C1BF74(v9, v11 + v14 + v18 * v16, type metadata accessor for ThinContactGroundTruth);
    }

    else
    {
      if (v13 >= v18)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_222C1C044(v9, v11 + v14 + v16 * v13, type metadata accessor for ThinContactGroundTruth);
      if ((v13 + 1) < a1)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    v15 += v16;
    --v12;
  }

  while (v12);

  if (!v13)
  {
    return v11;
  }

  v19 = *(v11 + 16);
  v23 = MEMORY[0x277D84F90];
  result = sub_222B4C75C(0, v19, 0);
  if (v19 >= v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v20 = *(v11 + 16);
    if (v20 >= v13 && v20 >= v19)
    {

      sub_222C1AD38(v21, v11 + v14, v13, (2 * v19) | 1);
      sub_222C1AD38(v11, v11 + v14, 0, (2 * v13) | 1);
      return v23;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_222C17748(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_222B4C72C(0, v4, 0);
  v5 = v22;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v8 = (a2 + 57);
  do
  {
    v11 = *(v8 - 25);
    v12 = *(v8 - 17);
    v13 = *(v8 - 9);
    v14 = *(v8 - 1);
    v15 = *v8 | (*(v8 + 2) << 16);
    v16 = *(v22 + 16);
    if (v16 < v3)
    {
      v9 = *(v22 + 24);
      if (v16 >= v9 >> 1)
      {
        result = sub_222B4C72C((v9 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v10 = v22 + 32 * v16;
      *(v10 + 32) = v11;
      *(v10 + 40) = v12;
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;
      *(v10 + 59) = BYTE2(v15);
      *(v10 + 57) = v15;
    }

    else
    {
      if (v7 >= v16)
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = v22 + 32 * v7;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      *(v17 + 48) = v13;
      *(v17 + 56) = v14;
      *(v17 + 59) = BYTE2(v15);
      *(v17 + 57) = v15;
      if ((v7 + 1) < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 += 16;
    --v6;
  }

  while (v6);

  if (!v7)
  {
    return v5;
  }

  v18 = *(v22 + 16);
  v21 = MEMORY[0x277D84F90];
  result = sub_222B4C72C(0, v18, 0);
  if (v18 >= v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v19 = *(v22 + 16);
    if (v19 >= v7 && v19 >= v18)
    {

      sub_222C1AC10(v20, v22 + 32, v7, (2 * v18) | 1, sub_222B4C72C);
      sub_222C1AC10(v22, v22 + 32, 0, (2 * v7) | 1, sub_222B4C72C);
      return v21;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C17990(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v29 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_222C952FC();
    sub_222C9452C();

    v17 = sub_222C9534C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v32 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 1)
      {
        if (*(*(a2 + 48) + v19))
        {
          v22 = 0x68506E69616D6F64;
        }

        else
        {
          v22 = 0x654D6E69616D6F64;
        }

        if (*(*(a2 + 48) + v19))
        {
          v23 = 0xEF6C6C6143656E6FLL;
        }

        else
        {
          v23 = 0xEE00736567617373;
        }

        if (v15 > 1)
        {
LABEL_24:
          v24 = 0x6974636572726F63;
          if (v15 == 3)
          {
            v24 = 0x6574616E696D6F6ELL;
          }

          v25 = 0xEA00000000006E6FLL;
          if (v15 == 3)
          {
            v25 = 0xE900000000000064;
          }

          if (v15 == 2)
          {
            v26 = 0x656D7269666E6F63;
          }

          else
          {
            v26 = v24;
          }

          if (v15 == 2)
          {
            v27 = 0xE900000000000064;
          }

          else
          {
            v27 = v25;
          }

          goto LABEL_43;
        }
      }

      else if (v21 == 2)
      {
        v22 = 0x656D7269666E6F63;
        v23 = 0xE900000000000064;
        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v22 = 0x6974636572726F63;
        }

        if (v21 == 3)
        {
          v23 = 0xE900000000000064;
        }

        else
        {
          v23 = 0xEA00000000006E6FLL;
        }

        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      v26 = 0x654D6E69616D6F64;
      v27 = 0xEE00736567617373;
      if (v15)
      {
        v26 = 0x68506E69616D6F64;
        v27 = 0xEF6C6C6143656E6FLL;
      }

LABEL_43:
      if (v22 == v26 && v23 == v27)
      {
        break;
      }

      v28 = sub_222C951FC();

      if (v28)
      {
        goto LABEL_51;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_51:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v29 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C17D8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    v15 = sub_222BBF5A4();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = *(*(a2 + 48) + v17);
      if (v19 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v17) > 5u)
      {
        if (v19 == 6)
        {
          v24 = 0xD000000000000013;
          v25 = 0x8000000222CA93E0;
          if (v13 > 3)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v24 = 0xD000000000000012;
          v25 = 0x8000000222CA9400;
          if (v13 > 3)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v19 == 4)
        {
          v24 = 0x7972617262696CLL;
        }

        else
        {
          v24 = 0xD000000000000011;
        }

        if (v19 == 4)
        {
          v25 = 0xE700000000000000;
        }

        else
        {
          v25 = 0x8000000222CA93C0;
        }

        if (v13 > 3)
        {
          goto LABEL_44;
        }
      }

LABEL_31:
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v33 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v33 = 0x6974636572726F63;
        }

        if (v13 == 2)
        {
          v27 = 0xE900000000000064;
        }

        else
        {
          v27 = 0xEA00000000006E6FLL;
        }

        if (v24 == v33)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v26 = 0x754D6E69616D6F64;
        v27 = 0xEB00000000636973;
        if (v13)
        {
          v26 = 0x656D7269666E6F63;
          v27 = 0xE900000000000064;
        }

        if (v24 == v26)
        {
          goto LABEL_67;
        }
      }

LABEL_68:
      v34 = sub_222C951FC();

      if (v34)
      {
        goto LABEL_77;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }

    v20 = 0x6974636572726F63;
    if (v19 == 2)
    {
      v20 = 0x6574616E696D6F6ELL;
    }

    v21 = 0xEA00000000006E6FLL;
    if (v19 == 2)
    {
      v21 = 0xE900000000000064;
    }

    v22 = 0x754D6E69616D6F64;
    if (*(*(a2 + 48) + v17))
    {
      v22 = 0x656D7269666E6F63;
    }

    v23 = 0xEB00000000636973;
    if (*(*(a2 + 48) + v17))
    {
      v23 = 0xE900000000000064;
    }

    if (*(*(a2 + 48) + v17) <= 1u)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (*(*(a2 + 48) + v17) <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (v13 <= 3)
    {
      goto LABEL_31;
    }

LABEL_44:
    v28 = 0xD000000000000013;
    if (v13 != 6)
    {
      v28 = 0xD000000000000012;
    }

    v29 = 0x8000000222CA9400;
    if (v13 == 6)
    {
      v29 = 0x8000000222CA93E0;
    }

    v30 = 0x7972617262696CLL;
    if (v13 != 4)
    {
      v30 = 0xD000000000000011;
    }

    v31 = 0x8000000222CA93C0;
    if (v13 == 4)
    {
      v31 = 0xE700000000000000;
    }

    if (v13 <= 5)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    if (v13 <= 5)
    {
      v27 = v31;
    }

    else
    {
      v27 = v29;
    }

    if (v24 != v32)
    {
      goto LABEL_68;
    }

LABEL_67:
    if (v25 != v27)
    {
      goto LABEL_68;
    }

LABEL_77:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t PlusContactSuggestion.isNominated.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion() + 36));
  if (*(v1 + 16) && (v2 = *(v1 + 40), sub_222C952FC(), sub_222C9452C(), v3 = sub_222C9534C(), v4 = -1 << *(v1 + 32), v5 = v3 & ~v4, ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(*(v1 + 48) + v5);
      if (v7 > 2 && v7 != 4)
      {
        break;
      }

      v8 = sub_222C951FC();

      if ((v8 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v8 & 1;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t PlusContactSuggestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_222C18398@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PlusContactSuggestion() + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t PlusContactSuggestion.contributingGroundTruth.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion() + 28));
}

uint64_t PlusContactSuggestion.scoreHistory.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion() + 44));
}

uint64_t PlusContactSuggestion.init(id:leftHandKey:rightHandValue:fromThinGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v27 = a4;
  v28 = a5;
  v26 = a1;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[1];
  v25 = *a3;
  v18 = a3[3];
  v19 = v13[2];
  v19(v16, a1, v12);
  v19(a6, v16, v12);
  v20 = type metadata accessor for PlusContactSuggestion();
  *&a6[v20[5]] = a2;

  v21 = &a6[v20[6]];
  *v21 = v25;
  *(v21 + 1) = v17;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *&a6[v20[7]] = sub_222C17488(50, v27);
  *&a6[v20[8]] = a7;
  *&a6[v20[9]] = v28;
  *&a6[v20[10]] = 0;
  v22 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);

  v23 = v13[1];
  v23(v26, v12);
  result = (v23)(v16, v12);
  *&a6[v20[11]] = v22;
  return result;
}

uint64_t PlusContactSuggestion.hasSameContent(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusContactSuggestion();
  v4 = v3[5];
  v5 = *(v1 + v4);
  v6 = *(a1 + v4);
  if (!_s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0())
  {
    return 0;
  }

  v7 = v3[6];
  v8 = *(v1 + v7);
  v9 = *(v1 + v7 + 8);
  v11 = *(v1 + v7 + 16);
  v10 = *(v1 + v7 + 24);
  v12 = (a1 + v7);
  v14 = v12[2];
  v13 = v12[3];
  v15 = v8 == *v12 && v9 == v12[1];
  if (!v15 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    if (v13)
    {
      v16 = v11 == v14 && v10 == v13;
      if (v16 || (sub_222C951FC() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_14:
  v17 = v3[7];
  v18 = *(v1 + v17);
  v19 = *(a1 + v17);

  return sub_222BBCCA4(v18, v19);
}

uint64_t PlusContactSuggestion.hasSameMapping(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusContactSuggestion();
  v4 = *(v3 + 20);
  v5 = *(v1 + v4);
  v6 = *(a1 + v4);
  if (_s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0())
  {
    v7 = *(v3 + 24);
    v8 = v1 + v7;
    v9 = *(v1 + v7);
    v10 = *(v1 + v7 + 8);
    v12 = *(v1 + v7 + 16);
    v11 = *(v8 + 24);
    v13 = (a1 + v7);
    v15 = v13[2];
    v14 = v13[3];
    v16 = v9 == *v13 && v10 == v13[1];
    if (v16 || (sub_222C951FC() & 1) != 0)
    {
      if (v11)
      {
        if (v14)
        {
          v17 = v12 == v15 && v11 == v14;
          if (v17 || (sub_222C951FC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t PlusContactSuggestion.updateWith(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v30 = *(v6 - 8);
  v7 = v30;
  v8 = *(v30 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = *(v7 + 16);
  v13(&v28 - v11, v3, v6);
  v14 = type metadata accessor for PlusContactSuggestion();
  v15 = *(a1 + v14[5]);
  v16 = (a1 + v14[6]);
  v17 = *(a1 + v14[7]);
  v18 = *v16;
  v19 = v16[1];
  v20 = *(v28 + v14[8]);
  v28 = *(a1 + v14[9]);
  v29 = v17;
  v21 = v31;
  v13(v31, v12, v6);
  v13(a2, v21, v6);
  *&a2[v14[5]] = v15;
  v22 = &a2[v14[6]];
  *v22 = v18;
  *(v22 + 1) = v19;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v29;

  v24 = v28;

  *&a2[v14[7]] = sub_222C17488(50, v23);
  *&a2[v14[8]] = v20;
  *&a2[v14[9]] = v24;
  *&a2[v14[10]] = 0;
  v25 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);
  v26 = *(v30 + 8);
  v26(v31, v6);
  result = (v26)(v12, v6);
  *&a2[v14[11]] = v25;
  return result;
}

uint64_t sub_222C18A6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65726F6373;
  if (v1 != 6)
  {
    v3 = 0x73694865726F6373;
  }

  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 1936154996;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E61487468676972;
  if (v1 != 2)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0x646E61487466656CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222C18B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C1BCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C18B9C(uint64_t a1)
{
  v2 = sub_222C1B4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C18BD8(uint64_t a1)
{
  v2 = sub_222C1B4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlusContactSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E50, &qword_222CA0EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1B4E4();
  sub_222C9536C();
  LOBYTE(v20) = 0;
  sub_222C9367C();
  sub_222C1B950(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for PlusContactSuggestion();
    v20 = *(v3 + v11[5]);
    v24 = 1;
    sub_222C9378C();
    sub_222C1B950(&qword_27D025A98, MEMORY[0x277D5E850]);
    sub_222C9512C();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v20 = *v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 2;
    sub_222BFD70C();

    sub_222C9512C();

    v20 = *(v3 + v11[7]);
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E60, &unk_222CA0F00);
    sub_222C1B68C(&qword_27D026E68, &qword_27D026E70);
    sub_222C9512C();
    v16 = *(v3 + v11[8]);
    LOBYTE(v20) = 4;
    sub_222C9510C();
    v20 = *(v3 + v11[9]);
    v24 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F90, &qword_222C96D48);
    sub_222C1B538(&qword_27D026E78, sub_222C1B5B0);
    sub_222C9512C();
    v17 = *(v3 + v11[10]);
    LOBYTE(v20) = 6;
    sub_222C9510C();
    v20 = *(v3 + v11[11]);
    v24 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222C1B604(&qword_27D026E88, &qword_27D026E90);
    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PlusContactSuggestion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_222C9367C();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E98, &unk_222CA0F20);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PlusContactSuggestion();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1B4E4();
  v27 = v9;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v24;
  LOBYTE(v28) = 0;
  sub_222C1B950(&qword_27D025178, MEMORY[0x277CC95F0]);
  v16 = v25;
  sub_222C9507C();
  (*(v23 + 32))(v13, v16, v4);
  sub_222C9378C();
  v31 = 1;
  sub_222C1B950(&qword_27D026C98, MEMORY[0x277D5E850]);
  sub_222C9507C();
  *&v13[v10[5]] = v28;
  v31 = 2;
  sub_222BFD7B4();
  sub_222C9507C();
  v17 = v29;
  v18 = &v13[v10[6]];
  *v18 = v28;
  *(v18 + 1) = v17;
  *(v18 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E60, &unk_222CA0F00);
  v31 = 3;
  sub_222C1B68C(&qword_27D026EA0, &qword_27D026EA8);
  sub_222C9507C();
  *&v13[v10[7]] = v28;
  LOBYTE(v28) = 4;
  sub_222C9505C();
  *&v13[v10[8]] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F90, &qword_222C96D48);
  v31 = 5;
  sub_222C1B538(&qword_27D026EB0, sub_222C1B728);
  sub_222C9507C();
  *&v13[v10[9]] = v28;
  LOBYTE(v28) = 6;
  sub_222C9505C();
  *&v13[v10[10]] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B98, &unk_222CA0F10);
  v31 = 7;
  sub_222C1B604(&qword_27D026BA0, &qword_27D026BA8);
  sub_222C9507C();
  (*(v15 + 8))(v27, v26);
  *&v13[v10[11]] = v28;
  sub_222C1BFDC(v13, v22, type metadata accessor for PlusContactSuggestion);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222C1C0AC(v13, type metadata accessor for PlusContactSuggestion);
}

uint64_t ContactReference.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_222C9452C();
}

uint64_t ContactReference.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference21PlusContactSuggestionV11leftHandKey0A8Ontology23UsoEntity_common_PersonCvg_0()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion() + 20));
}

uint64_t PlusContactSuggestion.init(query:entity:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v33 = a1;
  v5 = sub_222C935EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = *a2;
  v31 = a2[1];
  v32 = v18;
  v19 = a2[3];
  sub_222C9366C();
  sub_222C935DC();
  sub_222C935BC();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  v22 = v11[2];
  v22(v15, v17, v10);
  v22(a3, v15, v10);
  v23 = type metadata accessor for PlusContactSuggestion();
  *&a3[v23[5]] = v33;

  v24 = &a3[v23[6]];
  v25 = v31;
  *v24 = v32;
  *(v24 + 1) = v25;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v26 = MEMORY[0x277D84F90];
  *&a3[v23[7]] = sub_222C17488(50, MEMORY[0x277D84F90]);
  *&a3[v23[8]] = v21;
  *&a3[v23[9]] = MEMORY[0x277D84FA0];
  *&a3[v23[10]] = 0;
  v27 = sub_222C17748(0x32uLL, v26);

  v28 = v11[1];
  v28(v15, v10);
  result = (v28)(v17, v10);
  *&a3[v23[11]] = v27;
  return result;
}

uint64_t PlusContactSuggestion.updateScore(with:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 24);
  v19 = *(a1 + 25);
  LOBYTE(a1) = *(a1 + 27);
  v20 = type metadata accessor for PlusContactSuggestion();
  v21 = v20[11];
  v46 = v2;
  v22 = *(v2 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E58, &qword_222CA0F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = v16;
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *(inited + 59) = a1;
  *(inited + 57) = v19;
  v50 = v22;

  sub_222B494EC(inited);
  v45 = v50;
  (*(v5 + 56))(v14, 1, 1, v4);
  v47 = v14;
  sub_222B4FC6C(v14, v12, &unk_27D026290, &qword_222C96B40);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v4) == 1)
  {
    v43 = v5;
    v25 = *(v5 + 16);
    v26 = v46;
    v25(v49, v46, v4);
    v27 = v4;
    v28 = v24(v12, 1, v4);
    v29 = v26;
    if (v28 != 1)
    {
      sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
    }

    v30 = v27;
    v5 = v43;
  }

  else
  {
    (*(v5 + 32))(v49, v12, v4);
    v25 = *(v5 + 16);
    v30 = v4;
    v29 = v46;
  }

  v31 = *(v29 + v20[5]);
  v32 = (v29 + v20[6]);
  v33 = *(v29 + v20[7]);
  v34 = *v32;
  v35 = v32[1];
  v36 = *(v29 + v20[8]);
  v37 = *(v29 + v20[9]);
  v38 = v48;
  v44 = v30;
  v25(v48, v49, v30);
  *&v38[v20[5]] = v31;
  v39 = &v38[v20[6]];
  *v39 = v34;
  *(v39 + 1) = v35;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  swift_retain_n();

  *&v38[v20[7]] = sub_222C17488(50, v33);
  *&v38[v20[8]] = v36;
  *&v38[v20[9]] = v37;
  *&v38[v20[10]] = v15;
  v40 = sub_222C17748(0x32uLL, v45);

  (*(v5 + 8))(v49, v44);
  result = sub_222B4FCD4(v47, &unk_27D026290, &qword_222C96B40);
  *&v38[v20[11]] = v40;
  return result;
}

uint64_t PlusContactSuggestion.isCorrection.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion() + 36));
  if (*(v1 + 16) && (v2 = *(v1 + 40), sub_222C952FC(), sub_222C9452C(), v3 = sub_222C9534C(), v4 = -1 << *(v1 + 32), v5 = v3 & ~v4, ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(*(v1 + 48) + v5);
      if (v7 >= 4)
      {
        break;
      }

      v8 = sub_222C951FC();

      if ((v8 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v8 & 1;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_222C1A09C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_222C1A100(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v67 = type metadata accessor for FeaturisedTurn(0);
  v64 = *(v67 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = a4 >> 1;
  v59 = a3;
  v22 = v21 - a3;
  if (__OFSUB__(v21, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = v18;
  v23 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v22;
  if (__OFADD__(v24, v22))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v23;
  if (result)
  {
    v27 = *(v23 + 24) >> 1;
    if (v27 >= v25)
    {
      goto LABEL_12;
    }

    if (v24 <= v25)
    {
      v28 = v24 + v22;
    }

    else
    {
      v28 = v24;
    }
  }

  else if (v24 <= v25)
  {
    v28 = v24 + v22;
  }

  else
  {
    v28 = v24;
  }

  result = sub_222B4C3D4(result, v28, 1);
  v23 = *v4;
  v27 = *(*v4 + 24) >> 1;
LABEL_12:
  v63 = v10;
  v29 = v23;
  v30 = *(v23 + 16);
  v31 = v27 - v30;
  if (v21 == v59)
  {
    if (v22 <= 0)
    {
      v32 = v59;
      if (v31)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v29;
        return result;
      }

LABEL_21:
      v54 = a1;
      v37 = *(v23 + 16);
      v38 = v64;
      v39 = *(v64 + 56);
      v40 = v67;
      v61 = v64 + 56;
      v62 = v21;
      v60 = v39;
      v39(v20, 1, 1, v67);
      v41 = v56;
      sub_222B4FC6C(v20, v56, &qword_27D0253C8, &unk_222C98400);
      v65 = *(v38 + 48);
      v66 = v38 + 48;
      if (v65(v41, 1, v40) != 1)
      {
        v55 = v4;
        do
        {
          sub_222B4FCD4(v41, &qword_27D0253C8, &unk_222C98400);
          v44 = *(v29 + 24);
          if (v37 + 1 > (v44 >> 1))
          {
            sub_222B4C3D4(v44 > 1, v37 + 1, 1);
          }

          v45 = *v4;
          v46 = *(*v4 + 24);
          v47 = *(v64 + 80);
          sub_222B4FC6C(v20, v15, &qword_27D0253C8, &unk_222C98400);
          v48 = v65(v15, 1, v67);
          v57 = v45;
          if (v48 != 1)
          {
            v49 = v45 + ((v47 + 32) & ~v47);
            if (v37 <= (v46 >> 1))
            {
              v42 = v46 >> 1;
            }

            else
            {
              v42 = v37;
            }

            do
            {
              v52 = v63;
              sub_222C1BF74(v15, v63, type metadata accessor for FeaturisedTurn);
              if (v42 == v37)
              {
                sub_222C1C0AC(v52, type metadata accessor for FeaturisedTurn);
                v37 = v42;
                goto LABEL_26;
              }

              sub_222B4FCD4(v20, &qword_27D0253C8, &unk_222C98400);
              v53 = *(v64 + 72);
              result = sub_222C1BF74(v52, v49 + v53 * v37, type metadata accessor for FeaturisedTurn);
              if (v32 == v62)
              {
                v50 = 1;
                v32 = v62;
              }

              else
              {
                if (v32 < v59 || v32 >= v62)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_222C1BFDC(v58 + v53 * v32, v20, type metadata accessor for FeaturisedTurn);
                v50 = 0;
                ++v32;
              }

              v51 = v67;
              v60(v20, v50, 1, v67);
              sub_222B4FC6C(v20, v15, &qword_27D0253C8, &unk_222C98400);
              ++v37;
            }

            while (v65(v15, 1, v51) != 1);
          }

          sub_222B4FCD4(v15, &qword_27D0253C8, &unk_222C98400);
          v42 = v37;
LABEL_26:
          v41 = v56;
          v29 = v57;
          *(v57 + 16) = v42;
          sub_222B4FC6C(v20, v41, &qword_27D0253C8, &unk_222C98400);
          v43 = v65(v41, 1, v67);
          v4 = v55;
        }

        while (v43 != 1);
      }

      sub_222B4FCD4(v20, &qword_27D0253C8, &unk_222C98400);
      swift_unknownObjectRelease();
      result = sub_222B4FCD4(v41, &qword_27D0253C8, &unk_222C98400);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v31 < v22)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v33 = v23 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_20:
    v32 = v21;
    if (v22 != v31)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v34 = *(v23 + 16);
  v35 = __OFADD__(v34, v22);
  v36 = v34 + v22;
  if (!v35)
  {
    *(v23 + 16) = v36;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_222C1A688(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v67 = type metadata accessor for ThinMediaGroundTruth();
  v64 = *(v67 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = a4 >> 1;
  v59 = a3;
  v22 = v21 - a3;
  if (__OFSUB__(v21, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = v18;
  v23 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v22;
  if (__OFADD__(v24, v22))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v23;
  if (result)
  {
    v27 = *(v23 + 24) >> 1;
    if (v27 >= v25)
    {
      goto LABEL_12;
    }

    if (v24 <= v25)
    {
      v28 = v24 + v22;
    }

    else
    {
      v28 = v24;
    }
  }

  else if (v24 <= v25)
  {
    v28 = v24 + v22;
  }

  else
  {
    v28 = v24;
  }

  result = sub_222B4C6A4(result, v28, 1);
  v23 = *v4;
  v27 = *(*v4 + 24) >> 1;
LABEL_12:
  v63 = v10;
  v29 = v23;
  v30 = *(v23 + 16);
  v31 = v27 - v30;
  if (v21 == v59)
  {
    if (v22 <= 0)
    {
      v32 = v59;
      if (v31)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v29;
        return result;
      }

LABEL_21:
      v54 = a1;
      v37 = *(v23 + 16);
      v38 = v64;
      v39 = *(v64 + 56);
      v40 = v67;
      v61 = v64 + 56;
      v62 = v21;
      v60 = v39;
      v39(v20, 1, 1, v67);
      v41 = v56;
      sub_222B4FC6C(v20, v56, &qword_27D025890, &unk_222C9C7B0);
      v65 = *(v38 + 48);
      v66 = v38 + 48;
      if (v65(v41, 1, v40) != 1)
      {
        v55 = v4;
        do
        {
          sub_222B4FCD4(v41, &qword_27D025890, &unk_222C9C7B0);
          v44 = *(v29 + 24);
          if (v37 + 1 > (v44 >> 1))
          {
            sub_222B4C6A4(v44 > 1, v37 + 1, 1);
          }

          v45 = *v4;
          v46 = *(*v4 + 24);
          v47 = *(v64 + 80);
          sub_222B4FC6C(v20, v15, &qword_27D025890, &unk_222C9C7B0);
          v48 = v65(v15, 1, v67);
          v57 = v45;
          if (v48 != 1)
          {
            v49 = v45 + ((v47 + 32) & ~v47);
            if (v37 <= (v46 >> 1))
            {
              v42 = v46 >> 1;
            }

            else
            {
              v42 = v37;
            }

            do
            {
              v52 = v63;
              sub_222C1BF74(v15, v63, type metadata accessor for ThinMediaGroundTruth);
              if (v42 == v37)
              {
                sub_222C1C0AC(v52, type metadata accessor for ThinMediaGroundTruth);
                v37 = v42;
                goto LABEL_26;
              }

              sub_222B4FCD4(v20, &qword_27D025890, &unk_222C9C7B0);
              v53 = *(v64 + 72);
              result = sub_222C1BF74(v52, v49 + v53 * v37, type metadata accessor for ThinMediaGroundTruth);
              if (v32 == v62)
              {
                v50 = 1;
                v32 = v62;
              }

              else
              {
                if (v32 < v59 || v32 >= v62)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_222C1BFDC(v58 + v53 * v32, v20, type metadata accessor for ThinMediaGroundTruth);
                v50 = 0;
                ++v32;
              }

              v51 = v67;
              v60(v20, v50, 1, v67);
              sub_222B4FC6C(v20, v15, &qword_27D025890, &unk_222C9C7B0);
              ++v37;
            }

            while (v65(v15, 1, v51) != 1);
          }

          sub_222B4FCD4(v15, &qword_27D025890, &unk_222C9C7B0);
          v42 = v37;
LABEL_26:
          v41 = v56;
          v29 = v57;
          *(v57 + 16) = v42;
          sub_222B4FC6C(v20, v41, &qword_27D025890, &unk_222C9C7B0);
          v43 = v65(v41, 1, v67);
          v4 = v55;
        }

        while (v43 != 1);
      }

      sub_222B4FCD4(v20, &qword_27D025890, &unk_222C9C7B0);
      swift_unknownObjectRelease();
      result = sub_222B4FCD4(v41, &qword_27D025890, &unk_222C9C7B0);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v31 < v22)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v33 = v23 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_20:
    v32 = v21;
    if (v22 != v31)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v34 = *(v23 + 16);
  v35 = __OFADD__(v34, v22);
  v36 = v34 + v22;
  if (!v35)
  {
    *(v23 + 16) = v36;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_222C1AC10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = *(*v5 + 16);
  if (__OFADD__(v12, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_8;
  }

  v8 = a5;
  v6 = a3;
  v7 = a2;
  v13 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v15 = *(v11 + 24) >> 1;
  if (v15 < v12 + v10)
  {
    goto LABEL_8;
  }

  if (v9 == v6)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      result = v8();
      v11 = *v5;
      v15 = *(*v5 + 24) >> 1;
      if (v9 != v6)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  v16 = *(v11 + 16);
  if (v15 - v16 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 32 * v16 + 32), (v7 + 32 * v6), 32 * v10);
    if (v10 <= 0)
    {
LABEL_13:
      result = swift_unknownObjectRelease();
      *v5 = v11;
      return result;
    }

    v17 = *(v11 + 16);
    v18 = __OFADD__(v17, v10);
    v19 = v17 + v10;
    if (!v18)
    {
      *(v11 + 16) = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C1AD38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v67 = type metadata accessor for ThinContactGroundTruth();
  v64 = *(v67 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = a4 >> 1;
  v59 = a3;
  v22 = v21 - a3;
  if (__OFSUB__(v21, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = v18;
  v23 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v22;
  if (__OFADD__(v24, v22))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v23;
  if (result)
  {
    v27 = *(v23 + 24) >> 1;
    if (v27 >= v25)
    {
      goto LABEL_12;
    }

    if (v24 <= v25)
    {
      v28 = v24 + v22;
    }

    else
    {
      v28 = v24;
    }
  }

  else if (v24 <= v25)
  {
    v28 = v24 + v22;
  }

  else
  {
    v28 = v24;
  }

  result = sub_222B4C75C(result, v28, 1);
  v23 = *v4;
  v27 = *(*v4 + 24) >> 1;
LABEL_12:
  v63 = v10;
  v29 = v23;
  v30 = *(v23 + 16);
  v31 = v27 - v30;
  if (v21 == v59)
  {
    if (v22 <= 0)
    {
      v32 = v59;
      if (v31)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v29;
        return result;
      }

LABEL_21:
      v54 = a1;
      v37 = *(v23 + 16);
      v38 = v64;
      v39 = *(v64 + 56);
      v40 = v67;
      v61 = v64 + 56;
      v62 = v21;
      v60 = v39;
      v39(v20, 1, 1, v67);
      v41 = v56;
      sub_222B4FC6C(v20, v56, &qword_27D025AA8, &qword_222C9A1E0);
      v65 = *(v38 + 48);
      v66 = v38 + 48;
      if (v65(v41, 1, v40) != 1)
      {
        v55 = v4;
        do
        {
          sub_222B4FCD4(v41, &qword_27D025AA8, &qword_222C9A1E0);
          v44 = *(v29 + 24);
          if (v37 + 1 > (v44 >> 1))
          {
            sub_222B4C75C(v44 > 1, v37 + 1, 1);
          }

          v45 = *v4;
          v46 = *(*v4 + 24);
          v47 = *(v64 + 80);
          sub_222B4FC6C(v20, v15, &qword_27D025AA8, &qword_222C9A1E0);
          v48 = v65(v15, 1, v67);
          v57 = v45;
          if (v48 != 1)
          {
            v49 = v45 + ((v47 + 32) & ~v47);
            if (v37 <= (v46 >> 1))
            {
              v42 = v46 >> 1;
            }

            else
            {
              v42 = v37;
            }

            do
            {
              v52 = v63;
              sub_222C1BF74(v15, v63, type metadata accessor for ThinContactGroundTruth);
              if (v42 == v37)
              {
                sub_222C1C0AC(v52, type metadata accessor for ThinContactGroundTruth);
                v37 = v42;
                goto LABEL_26;
              }

              sub_222B4FCD4(v20, &qword_27D025AA8, &qword_222C9A1E0);
              v53 = *(v64 + 72);
              result = sub_222C1BF74(v52, v49 + v53 * v37, type metadata accessor for ThinContactGroundTruth);
              if (v32 == v62)
              {
                v50 = 1;
                v32 = v62;
              }

              else
              {
                if (v32 < v59 || v32 >= v62)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_222C1BFDC(v58 + v53 * v32, v20, type metadata accessor for ThinContactGroundTruth);
                v50 = 0;
                ++v32;
              }

              v51 = v67;
              v60(v20, v50, 1, v67);
              sub_222B4FC6C(v20, v15, &qword_27D025AA8, &qword_222C9A1E0);
              ++v37;
            }

            while (v65(v15, 1, v51) != 1);
          }

          sub_222B4FCD4(v15, &qword_27D025AA8, &qword_222C9A1E0);
          v42 = v37;
LABEL_26:
          v41 = v56;
          v29 = v57;
          *(v57 + 16) = v42;
          sub_222B4FC6C(v20, v41, &qword_27D025AA8, &qword_222C9A1E0);
          v43 = v65(v41, 1, v67);
          v4 = v55;
        }

        while (v43 != 1);
      }

      sub_222B4FCD4(v20, &qword_27D025AA8, &qword_222C9A1E0);
      swift_unknownObjectRelease();
      result = sub_222B4FCD4(v41, &qword_27D025AA8, &qword_222C9A1E0);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v31 < v22)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v33 = v23 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_20:
    v32 = v21;
    if (v22 != v31)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v34 = *(v23 + 16);
  v35 = __OFADD__(v34, v22);
  v36 = v34 + v22;
  if (!v35)
  {
    *(v23 + 16) = v36;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t _s28SiriPrivateLearningInference21PlusContactSuggestionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PlusContactSuggestion();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v8 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v8 != sub_222C9534C())
  {
    return 0;
  }

  v9 = v4[6];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v13 = *(a1 + v9 + 16);
  v12 = *(a1 + v9 + 24);
  v14 = (a2 + v9);
  v16 = v14[2];
  v15 = v14[3];
  if ((v10 != *v14 || v11 != v14[1]) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v12)
  {
    if (!v15 || (v13 != v16 || v12 != v15) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_222BBCCA4(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]) || (sub_222C17990(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v17 = v4[11];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);

  return sub_222BBD2D4(v18, v19);
}

unint64_t sub_222C1B4E4()
{
  result = qword_27D026E58;
  if (!qword_27D026E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E58);
  }

  return result;
}

uint64_t sub_222C1B538(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F90, &qword_222C96D48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C1B5B0()
{
  result = qword_27D026E80;
  if (!qword_27D026E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E80);
  }

  return result;
}

uint64_t sub_222C1B604(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222C1B77C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222C1B68C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026E60, &unk_222CA0F00);
    sub_222C1B950(a2, type metadata accessor for ThinContactGroundTruth);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C1B728()
{
  result = qword_27D026EB8;
  if (!qword_27D026EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EB8);
  }

  return result;
}

uint64_t sub_222C1B77C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026BB0, &unk_222CA62E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C1B7CC(uint64_t a1)
{
  result = sub_222B72D24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222C1B7F8()
{
  result = qword_27D026EC0;
  if (!qword_27D026EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EC0);
  }

  return result;
}

unint64_t sub_222C1B850()
{
  result = qword_27D026EC8;
  if (!qword_27D026EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EC8);
  }

  return result;
}

uint64_t sub_222C1B8F8(uint64_t a1)
{
  result = sub_222C1B950(&qword_27D026ED0, type metadata accessor for PlusContactSuggestion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222C1B950(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_222C1B9C0()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9378C();
    if (v1 <= 0x3F)
    {
      sub_222C1BA9C();
      if (v2 <= 0x3F)
      {
        sub_222C1BAF4();
        if (v3 <= 0x3F)
        {
          sub_222C1BB50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222C1BA9C()
{
  if (!qword_280FDB7B8)
  {
    type metadata accessor for ThinContactGroundTruth();
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7B8);
    }
  }
}

void sub_222C1BAF4()
{
  if (!qword_280FDB790)
  {
    sub_222B65518();
    v0 = sub_222C9497C();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB790);
    }
  }
}

void sub_222C1BB50()
{
  if (!qword_280FDB7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026BB0, &unk_222CA62E0);
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7A0);
    }
  }
}

unint64_t sub_222C1BBC8()
{
  result = qword_27D026ED8;
  if (!qword_27D026ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026ED8);
  }

  return result;
}

unint64_t sub_222C1BC20()
{
  result = qword_27D026EE0;
  if (!qword_27D026EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EE0);
  }

  return result;
}

unint64_t sub_222C1BC78()
{
  result = qword_27D026EE8;
  if (!qword_27D026EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EE8);
  }

  return result;
}

uint64_t sub_222C1BCCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E61487466656CLL && a2 == 0xEB0000000079654BLL || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61487468676972 && a2 == 0xEE0065756C615664 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CAAED0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73694865726F6373 && a2 == 0xEC00000079726F74)
  {

    return 7;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_222C1BF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C1BFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C1C044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C1C0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C1C114(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v10 = *(v7 - 1);
      v9 = *v7;
      v11 = *(v7 - 2);
      v12[0] = *(v7 - 3);
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = v9;

      v5(v12);

      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 4;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_222C1C1BC()
{
  v1 = sub_222C1C270();
  v2 = sub_222B62E40(MEMORY[0x277D84F90]);
  v3 = type metadata accessor for PhoneCallGroundTruth();
  v4 = (v0 + *(v3 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v0 + *(v3 + 20));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_222BAA538(v1 | (v7 << 8), v5, v6, 0, 0, isUniquelyReferenced_nonNull_native);

  return v2;
}

uint64_t sub_222C1C270()
{
  v1 = type metadata accessor for PhoneCallGroundTruth();
  v2 = (v0 + v1[7]);
  v3 = v2[1];
  if (v3)
  {
    v4 = (v0 + v1[8]);
    if (*v4 == *v2 && v3 == v4[1])
    {
      return 4;
    }

    v6 = v1;
    v7 = *v4;
    v8 = sub_222C951FC();
    v1 = v6;
    if (v8)
    {
      return 4;
    }
  }

  if (*(v0 + v1[5]) > 2u)
  {

    return 4;
  }

  v9 = sub_222C951FC();

  if (v9)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_222C1C394()
{
  v1 = type metadata accessor for PhoneCallGroundTruth();
  v2 = (v0 + v1[8]);
  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + v1[7]);
  v6 = v5[1];
  if (!v6 || (v4 == *v5 ? (v7 = v6 == v3) : (v7 = 0), !v7 && (v8 = v1, v9 = sub_222C951FC(), v1 = v8, (v9 & 1) == 0)))
  {
    if (*(v0 + v1[5]) > 2u)
    {
    }

    else
    {
      v10 = sub_222C951FC();

      if ((v10 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222C97C40;
        *(inited + 32) = v4;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        *(inited + 40) = v3;

        *(inited + 64) = sub_222BAF9C8(&unk_283607448);
        v12 = sub_222B62F90(inited);
        swift_setDeallocating();
        sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
        return v12;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];

  return sub_222B62F90(v14);
}

uint64_t sub_222C1C56C(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026EF0, type metadata accessor for PhoneCallGroundTruth);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_222C1C5D4()
{
  v1 = type metadata accessor for MessagesGroundTruth();
  v2 = (v0 + v1[8]);
  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + v1[7]);
  v6 = v5[1];
  if (v6)
  {
    v7 = v4 == *v5 && v6 == v3;
    if (v7 || (sub_222C951FC() & 1) != 0)
    {
      goto LABEL_14;
    }
  }

  v8 = *(v0 + v1[5]);
  if (v8 == 2)
  {
    v9 = "successfulOneShot";
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_13;
    }

    v9 = "partialRepetition";
  }

  if (((v9 - 32) | 0x8000000000000000) == 0x8000000222CA9460)
  {

    goto LABEL_14;
  }

LABEL_13:
  v10 = sub_222C951FC();

  if ((v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    *(inited + 32) = v4;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 40) = v3;

    *(inited + 64) = sub_222BAF9C8(&unk_283607420);
    v14 = sub_222B62F90(inited);
    swift_setDeallocating();
    sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
    return v14;
  }

LABEL_14:
  v11 = MEMORY[0x277D84F90];

  return sub_222B62F90(v11);
}

unint64_t sub_222C1C7A0()
{
  v1 = sub_222C1C858();
  v2 = sub_222B62E40(MEMORY[0x277D84F90]);
  v3 = type metadata accessor for MessagesGroundTruth();
  v4 = (v0 + *(v3 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v0 + *(v3 + 20));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_222BAA538(v1 | (v7 << 8) | 0x1000000, v5, v6, 0, 0, isUniquelyReferenced_nonNull_native);

  return v2;
}

uint64_t sub_222C1C858()
{
  v1 = type metadata accessor for MessagesGroundTruth();
  v2 = v1;
  v3 = (v0 + *(v1 + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = (v0 + *(v1 + 32));
    v6 = *v5 == *v3 && v4 == v5[1];
    if (v6 || (sub_222C951FC() & 1) != 0)
    {
      return 4;
    }
  }

  v8 = *(v0 + *(v2 + 20));
  if (v8 == 2)
  {
    v9 = "successfulOneShot";
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    v9 = "partialRepetition";
  }

  if (((v9 - 32) | 0x8000000000000000) == 0x8000000222CA9460)
  {

    return 4;
  }

LABEL_14:
  v10 = sub_222C951FC();

  if (v10)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_222C1C978(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026EF8, type metadata accessor for MessagesGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C1C9E0()
{
  v1 = (v0 + *(type metadata accessor for ContactPromptGroundTruth() + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = 0x8000000222CA85F0;
  }

  v4 = v2 == 0xD000000000000023 && 0x8000000222CA85F0 == v3;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {
    v5 = &unk_283607868;
LABEL_10:

    goto LABEL_11;
  }

  if (v2 == 0xD000000000000029 && 0x8000000222CA8620 == v3)
  {
    v5 = &unk_283607890;
    goto LABEL_10;
  }

  v8 = sub_222C951FC();

  if ((v8 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = &unk_283607890;
LABEL_11:

  return sub_222BAF9C8(v5);
}

unint64_t sub_222C1CB28()
{
  v1 = (v0 + *(type metadata accessor for ContactPromptGroundTruth() + 32));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    *(inited + 32) = v3;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 40) = v2;

    *(inited + 64) = sub_222BAF9C8(&unk_283607470);
    v5 = sub_222B62F90(inited);
    swift_setDeallocating();
    sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_222B62F90(v7);
  }
}

uint64_t sub_222C1CC20()
{
  v15 = sub_222B62E40(MEMORY[0x277D84F90]);
  if (sub_222C1CD40())
  {
    v1 = 6;
  }

  else
  {
    v1 = 5;
  }

  v2 = type metadata accessor for ContactPromptGroundTruth();
  v3 = *(v0 + *(v2 + 28));
  v10[2] = v0;
  v10[3] = &v15;
  v11 = v1;
  sub_222C1C114(sub_222C1D2C4, v10, v3);
  v4 = v0 + *(v2 + 32);
  v5 = *(v4 + 8);
  if (!v5)
  {
    return v15;
  }

  v12[0] = *v4;
  v6 = v12[0];
  v12[1] = v5;
  v13 = *(v4 + 16);
  sub_222C2C904(v12, v14);
  v7 = v14[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = v15;
  sub_222BAA538((v7 << 8) | 0x2000004, v6, v5, 0, 0, isUniquelyReferenced_nonNull_native);

  return v12[0];
}

uint64_t sub_222C1CD40()
{
  v1 = type metadata accessor for ContactPromptGroundTruth();
  v2 = *(v0 + *(v1 + 36));
  if (v2 == 2)
  {
    return *(v0 + *(v1 + 32) + 8) != 0;
  }

  if (v2)
  {
    v4 = v1;
    v5 = sub_222C951FC();

    v1 = v4;
    if ((v5 & 1) == 0)
    {
      return *(v0 + *(v1 + 32) + 8) != 0;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return 1;
}

uint64_t sub_222C1CE28(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 a4)
{
  v7 = *(a1 + 8);
  v13[0] = *a1;
  v6 = v13[0];
  v13[1] = v7;
  v14 = *(a1 + 16);
  sub_222C2C904(v13, &v15);
  v8 = v15;

  v9 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *a3;
  *a3 = 0x8000000000000000;
  sub_222BAA538(a4 | (v8 << 8) | 0x2000000, v6, v7, 0, 0, isUniquelyReferenced_nonNull_native);

  v11 = *a3;
  *a3 = v13[0];
}

uint64_t sub_222C1CEFC(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026F00, type metadata accessor for ContactPromptGroundTruth);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_222C1CF5C()
{
  v1 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v2 = *(v0 + *(v1 + 32));
  if ((v2 - 2) >= 6u)
  {
    v3 = 0x6050603u >> ((v2 >> 5) & 0xF8);
  }

  else
  {
    v3 = 0x60505030505uLL >> (8 * ((v2 - 2) & 0x1F));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F20, &qword_222CA1338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  v5 = (v0 + *(v1 + 28));
  v6 = v5[1];
  *(inited + 32) = *v5;
  *(inited + 40) = v6;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 67) = 3;
  *(inited + 65) = v2;
  *(inited + 64) = v3;

  v7 = sub_222B62E40(inited);
  swift_setDeallocating();
  sub_222B4FCD4(inited + 32, &qword_27D026F28, &unk_222CA1340);
  return v7;
}

unint64_t sub_222C1D068()
{
  v1 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v2 = *(v0 + *(v1 + 32));
  if (v2 > 7)
  {
LABEL_7:
    if (*(v0 + *(v1 + 32)) > 0xFFu)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    v7 = (v0 + *(v5 + 28));
    v8 = v7[1];
    *(inited + 32) = *v7;
    *(inited + 40) = v8;
    *(inited + 48) = 0;
    *(inited + 56) = 0;

    *(inited + 64) = sub_222BAF9C8(&unk_283607498);
    v9 = sub_222B62F90(inited);
    swift_setDeallocating();
    sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
    return v9;
  }

  if (((1 << v2) & 0xEC) == 0)
  {
    if (v2 == 4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_3:
  v3 = MEMORY[0x277D84F90];

  return sub_222B62F90(v3);
}

uint64_t sub_222C1D198(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026F08, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C1D1F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222C1D23C(uint64_t a1)
{
  if (!*(v1 + *(a1 + 36)))
  {
    return sub_222BAF9C8(&unk_2836078B8);
  }

  if (*(v1 + *(a1 + 36)) == 1)
  {
    return sub_222BAF9C8(&unk_2836078E0);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t PhoneCallGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

SiriPrivateLearningInference::PhoneCallGroundTruthSource_optional __swiftcall PhoneCallGroundTruthSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PhoneCallGroundTruthSource.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000019;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_222C1D434()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C1D4F0()
{
  *v0;
  *v0;
  *v0;
  sub_222C9452C();
}

uint64_t sub_222C1D598()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222C1D65C(unint64_t *a1@<X8>)
{
  v2 = "dismissalAndInAppFollowup";
  v3 = 0xD000000000000021;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000011;
    v2 = "partialRepetition";
  }

  v4 = 0xD000000000000019;
  if (*v1)
  {
    v5 = "quickHangupAndInAppFollowup";
  }

  else
  {
    v4 = 0xD00000000000001BLL;
    v5 = "successfulOneShot";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t PhoneCallGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PhoneCallGroundTruth();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PhoneCallGroundTruth()
{
  result = qword_280FDF0F0;
  if (!qword_280FDF0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallGroundTruth.contactUSOPerson.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhoneCallGroundTruth() + 24));
}

uint64_t PhoneCallGroundTruth.originalContactReference.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PhoneCallGroundTruth() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_222B98D00(v4, v5);
}

uint64_t PhoneCallGroundTruth.correctedContactReference.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PhoneCallGroundTruth() + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t sub_222C1D904(uint64_t a1)
{
  v2 = sub_222C1E710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C1D940(uint64_t a1)
{
  v2 = sub_222C1E710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneCallGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F30, &qword_222CA1350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1E710();
  sub_222C9536C();
  LOBYTE(v22) = 0;
  sub_222C9367C();
  sub_222C1E968(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for PhoneCallGroundTruth();
    LOBYTE(v22) = *(v3 + v11[5]);
    v26 = 1;
    sub_222BBBB80();
    sub_222C9512C();
    v22 = *(v3 + v11[6]);
    v26 = 2;
    sub_222C9378C();
    sub_222C1E968(&qword_27D025A98, MEMORY[0x277D5E850]);
    sub_222C9512C();
    v12 = (v3 + v11[7]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v22 = *v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = 3;
    sub_222B98D00(v22, v13);
    sub_222BFD70C();
    sub_222C950DC();
    sub_222B450E8(v22, v23);
    v16 = (v3 + v11[8]);
    v17 = v16[1];
    v19 = v16[2];
    v18 = v16[3];
    v22 = *v16;
    v23 = v17;
    v24 = v19;
    v25 = v18;
    v26 = 4;

    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PhoneCallGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_222C9367C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F40, &qword_222CA1358);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PhoneCallGroundTruth();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1E710();
  v33 = v11;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = a1;
  v17 = v15;
  v18 = v29;
  LOBYTE(v34) = 0;
  sub_222C1E968(&qword_27D025178, MEMORY[0x277CC95F0]);
  v19 = v30;
  v20 = v31;
  sub_222C9507C();
  (*(v18 + 32))(v17, v19, v4);
  v36 = 1;
  sub_222BBBCD0();
  sub_222C9507C();
  *(v17 + v12[5]) = v34;
  sub_222C9378C();
  v36 = 2;
  sub_222C1E968(&qword_27D026C98, MEMORY[0x277D5E850]);
  sub_222C9507C();
  *(v17 + v12[6]) = v34;
  v36 = 3;
  sub_222BFD7B4();
  sub_222C9502C();
  v21 = (v17 + v12[7]);
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  v36 = 4;
  sub_222C9507C();
  (*(v32 + 8))(v33, v20);
  v23 = *(&v34 + 1);
  v24 = v17 + v12[8];
  *v24 = v34;
  *(v24 + 8) = v23;
  *(v24 + 16) = v35;
  sub_222C1E764(v17, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return sub_222C1E7C8(v17);
}

uint64_t _s28SiriPrivateLearningInference20PhoneCallGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PhoneCallGroundTruth();
  if ((sub_222BBDEAC(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v8 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v8 != sub_222C9534C())
  {
    return 0;
  }

  v9 = v4[7];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = *(a1 + v9 + 16);
  v13 = *(a1 + v9 + 24);
  v14 = (a2 + v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  if (!v11)
  {
    v41 = v10;
    sub_222B98D00(v10, 0);
    if (!v16)
    {
      sub_222B98D00(v15, 0);
      v11 = 0;
      goto LABEL_37;
    }

    v26 = v15;
    sub_222B98D00(v15, v16);
    v27 = v10;
    goto LABEL_23;
  }

  if (!v16)
  {
    v26 = *v14;
    v27 = v10;
    sub_222B98D00(v10, v11);
    sub_222B98D00(v26, 0);
    sub_222B98D00(v10, v11);

LABEL_23:
    sub_222B450E8(v27, v11);
    v28 = v26;
    v29 = v16;
LABEL_29:
    sub_222B450E8(v28, v29);
    return 0;
  }

  if (v10 != v15 || v11 != v16)
  {
    v40 = v14[3];
    v19 = v13;
    v20 = *v14;
    v21 = v10;
    v22 = v12;
    v23 = sub_222C951FC();
    v12 = v22;
    v10 = v21;
    v15 = v20;
    v13 = v19;
    v18 = v40;
    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v13)
  {
    sub_222B98D00(v10, v11);
    if (!v18)
    {
      sub_222B98D00(v15, v16);
      sub_222B98D00(v10, v11);
      v24 = v15;
      v25 = v16;
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  if (!v18)
  {
LABEL_24:
    sub_222B98D00(v10, v11);
LABEL_27:
    sub_222B98D00(v15, v16);
    sub_222B98D00(v10, v11);
    sub_222B450E8(v15, v16);
LABEL_28:

    v28 = v10;
    v29 = v11;
    goto LABEL_29;
  }

  if (v12 != v17 || v13 != v18)
  {
    v42 = sub_222C951FC();
    sub_222B98D00(v10, v11);
    sub_222B98D00(v15, v16);
    sub_222B98D00(v10, v11);
    sub_222B450E8(v15, v16);
    if (v42)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  sub_222B98D00(v10, v11);
  sub_222B98D00(v15, v16);
  sub_222B98D00(v10, v11);
  v24 = v15;
  v25 = v16;
LABEL_35:
  sub_222B450E8(v24, v25);
LABEL_36:
  v41 = v10;

LABEL_37:
  sub_222B450E8(v41, v11);
  v31 = v4[8];
  v32 = a1 + v31;
  v33 = *(a1 + v31);
  v34 = *(a1 + v31 + 8);
  v36 = *(a1 + v31 + 16);
  v35 = *(v32 + 24);
  v37 = (a2 + v31);
  v39 = v37[2];
  v38 = v37[3];
  if (v33 == *v37 && v34 == v37[1] || (sub_222C951FC() & 1) != 0)
  {
    if (v35)
    {
      if (v38 && (v36 == v39 && v35 == v38 || (sub_222C951FC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v38)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_222C1E710()
{
  result = qword_27D026F38;
  if (!qword_27D026F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F38);
  }

  return result;
}

uint64_t sub_222C1E764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneCallGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C1E7C8(uint64_t a1)
{
  v2 = type metadata accessor for PhoneCallGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C1E828()
{
  result = qword_27D026F48;
  if (!qword_27D026F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F48);
  }

  return result;
}

unint64_t sub_222C1E880()
{
  result = qword_27D026F50;
  if (!qword_27D026F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026F58, &qword_222CA1450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F50);
  }

  return result;
}

uint64_t sub_222C1E8E4(uint64_t a1)
{
  *(a1 + 8) = sub_222C1E968(&qword_280FDF108, type metadata accessor for PhoneCallGroundTruth);
  result = sub_222C1E968(qword_280FDF110, type metadata accessor for PhoneCallGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C1E968(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_222C1E9E8()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9378C();
    if (v1 <= 0x3F)
    {
      sub_222C027D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_222C1EAA8()
{
  result = qword_27D026F60;
  if (!qword_27D026F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F60);
  }

  return result;
}

unint64_t sub_222C1EB00()
{
  result = qword_27D026F68;
  if (!qword_27D026F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F68);
  }

  return result;
}

unint64_t sub_222C1EB58()
{
  result = qword_27D026F70;
  if (!qword_27D026F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F70);
  }

  return result;
}

unint64_t sub_222C1EBAC()
{
  result = qword_27D026F78;
  if (!qword_27D026F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F78);
  }

  return result;
}

BOOL sub_222C1EC00(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = 0;
  v12 = *(a1 + 16);
  do
  {
    v13 = v11;
    if (v12 == v11)
    {
      break;
    }

    sub_222C1F2E0(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v10);
    v14 = *(v6 + 48);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v14) = sub_222C1F350(&v10[v14], v5);
    sub_222C1F910(v5, type metadata accessor for RuleResult);
    sub_222B4FCD4(v10, &qword_27D024CC8, &unk_222C96AA0);
  }

  while ((v14 & 1) != 0);
  return v12 == v13;
}

uint64_t sub_222C1EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1);
  a5[3] = a3(0, a1, a2);
  a5[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return (*(v11 + 32))(boxed_opaque_existential_1, v14, a1);
}

uint64_t sub_222C1EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F80, &qword_222CA48B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for FeaturisedSession(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  FeaturisedSession.init(_:)(v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_222B4FCD4(v8, &qword_27D026F80, &qword_222CA48B0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = sub_222C9431C();
    __swift_project_value_buffer(v15, qword_280FE2340);
    v16 = sub_222C942FC();
    v17 = sub_222C94A4C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222B39000, v16, v17, "Error classifying empty session", v18, 2u);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_222C1F230(v8, v13);
    v20 = (*(*(a3 + 24) + 8))(v13, a2, *(a3 + 16));
    sub_222C1F910(v13, type metadata accessor for FeaturisedSession);
    return v20;
  }
}

uint64_t sub_222C1F230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RuleResult()
{
  result = qword_280FDFF18;
  if (!qword_280FDFF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C1F2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C1F350(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = type metadata accessor for RuleResult();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v62 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F88, &qword_222CA17B8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v62 + *(v23 + 56) - v24);
  v26 = a1;
  v27 = &v62 - v24;
  sub_222C1F970(v26, &v62 - v24);
  sub_222C1F970(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v29 = v27;
      sub_222C1F970(v27, v20);
      v31 = *v20;
      v30 = v20[1];
      v33 = v20[2];
      v32 = v20[3];
      if (swift_getEnumCaseMultiPayload())
      {

        v27 = v29;
        goto LABEL_26;
      }

      v51 = v25[2];
      v50 = v25[3];
      if (v31 == *v25 && v30 == v25[1])
      {
        v59 = v25[1];
      }

      else
      {
        v53 = v25[1];
        v54 = sub_222C951FC();

        if ((v54 & 1) == 0)
        {

          goto LABEL_47;
        }
      }

      if (v33 == v51 && v32 == v50)
      {
      }

      else
      {
        v61 = sub_222C951FC();

        if ((v61 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v56 = v29;
      goto LABEL_37;
    }

    sub_222C1F970(v27, v18);
    v39 = *v18;
    v40 = *(v18 + 1);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F90, &qword_222CA17C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v65 + 8))(&v18[v41], v4);
      goto LABEL_26;
    }

    v63 = v39;
    v64 = v27;
    v42 = v25[1];
    v62 = *v25;
    v43 = *(v65 + 32);
    v43(v10, &v18[v41], v4);
    v44 = v25 + v41;
    v45 = v8;
    v43(v8, v44, v4);
    if (v63 == v62 && v40 == v42)
    {

      v29 = v64;
    }

    else
    {
      v47 = sub_222C951FC();

      v29 = v64;
      if ((v47 & 1) == 0)
      {
        v48 = *(v65 + 8);
        v48(v45, v4);
        v48(v10, v4);
LABEL_47:
        sub_222C1F910(v29, type metadata accessor for RuleResult);
        goto LABEL_28;
      }
    }

    v49 = sub_222C9362C();
    v58 = *(v65 + 8);
    v58(v45, v4);
    v58(v10, v4);
    sub_222C1F910(v29, type metadata accessor for RuleResult);
    return v49 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  sub_222C1F970(v27, v15);
  v34 = *v15;
  v35 = v15[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_26:

LABEL_27:
    sub_222B4FCD4(v27, &qword_27D026F88, &qword_222CA17B8);
    goto LABEL_28;
  }

  if (v34 == *v25 && v35 == v25[1])
  {
    v55 = v25[1];

    goto LABEL_36;
  }

  v37 = v25[1];
  v38 = sub_222C951FC();

  if (v38)
  {
LABEL_36:
    v56 = v27;
LABEL_37:
    sub_222C1F910(v56, type metadata accessor for RuleResult);
    v49 = 1;
    return v49 & 1;
  }

  sub_222C1F910(v27, type metadata accessor for RuleResult);
LABEL_28:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_222C1F910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C1F970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuleResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_222C1FA24()
{
  sub_222C1FAA0();
  if (v0 <= 0x3F)
  {
    sub_222C1FB00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_222C1FAA0()
{
  if (!qword_280FDB810)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FDB810);
    }
  }
}

void sub_222C1FB00()
{
  if (!qword_280FDB818)
  {
    sub_222C9367C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FDB818);
    }
  }
}

uint64_t PhoneCallEventCoalescer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t PhoneCallEventCoalescer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222C1FBB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = v7 == 0xD000000000000011 && 0x8000000222CA8780 == v8;
  if (v9 || (v10 = a1[3], (sub_222C951FC() & 1) != 0))
  {
    result = sub_222B41CFC(v6);
    if (result != 2)
    {
      v12 = *(v2 + 16);
      if (result)
      {
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 16) = v14;
          *a2 = 0u;
          *(a2 + 16) = 0u;
          *(a2 + 32) = 0;
        }

        return result;
      }

      if (v12 == 2)
      {
        *(v2 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222C97C40;
        v16 = type metadata accessor for CommonFeature.DonatedBySiri(0);
        v17 = *(v16 + 48);
        v18 = *(v16 + 52);
        swift_allocObject();
        LOBYTE(v23) = 1;
        v19 = sub_222C93EEC();
        *(inited + 56) = v16;
        *(inited + 64) = sub_222C1FDBC();
        *(inited + 32) = v19;
        CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)(0, 0, MEMORY[0x277D84F90], inited, 0, 0, &v23);
        swift_setDeallocating();
        v20 = *(inited + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        result = swift_arrayDestroy();
        v21 = v25;
        v22 = v26;
        *a2 = v23;
        *(a2 + 8) = v24;
        *(a2 + 24) = v21;
        *(a2 + 32) = v22;
        return result;
      }
    }
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
}

unint64_t sub_222C1FDBC()
{
  result = qword_27D026F98;
  if (!qword_27D026F98)
  {
    type metadata accessor for CommonFeature.DonatedBySiri(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F98);
  }

  return result;
}

uint64_t sub_222C1FE68(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a2;
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_222C94B5C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v32 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v32 = *(v22 - 8);
  v23 = *(v32 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v32 - v24;
  v41 = sub_222C9477C();
  v40 = sub_222C9477C();
  (*(v18 + 16))(v21, v39, a3);
  sub_222C9464C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v25;
  v39 = v22;
  v34 = AssociatedConformanceWitness;
  sub_222C94B9C();
  v27 = v7;
  v28 = *(v7 + 48);
  if (v28(v17, 1, AssociatedTypeWitness) != 1)
  {
    v30 = *(v27 + 32);
    v29 = v27 + 32;
    v33 = v30;
    do
    {
      v33(v12, v17, AssociatedTypeWitness);
      v36(v12);
      (*(v29 - 16))(v35, v12, AssociatedTypeWitness);
      sub_222C947FC();
      sub_222C947CC();
      (*(v29 - 24))(v12, AssociatedTypeWitness);
      sub_222C94B9C();
    }

    while (v28(v17, 1, AssociatedTypeWitness) != 1);
  }

  (*(v32 + 8))(v38, v39);
  return v41;
}

double sub_222C20264(double a1, double a2)
{
  result = *v2;
  if (*v2 >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t ThinContactGroundTruth.init(id:groundTruthType:groundTruthSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(a4 + 2);
  v11 = sub_222C9367C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  result = type metadata accessor for ThinContactGroundTruth();
  v13 = (a5 + *(result + 20));
  *v13 = a2;
  v13[1] = a3;
  v14 = a5 + *(result + 24);
  *v14 = v9;
  *(v14 + 2) = v10;
  return result;
}

uint64_t type metadata accessor for ThinContactGroundTruth()
{
  result = qword_280FDE940;
  if (!qword_280FDE940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v63 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v5 = *(*(v63 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v58 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v58 - v8;
  v66 = type metadata accessor for ContactPromptGroundTruth();
  v9 = *(*(v66 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v58 - v12;
  v68 = type metadata accessor for MessagesGroundTruth();
  v13 = *(*(v68 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v68);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v58 - v16;
  v17 = type metadata accessor for PhoneCallGroundTruth();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = type metadata accessor for ThinContactGroundTruth();
  v71 = *(v24 - 8);
  v25 = *(v71 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2[1];
  v60 = *a2;
  v29 = a2[3];
  v59 = a2[2];
  v69 = v29;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v31 + 24))(v30, v31);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v34 = *(v33 + 40);
  v35 = v33;
  v36 = v24;
  v37 = v34(v32, v35);
  v38 = *(v24 + 20);
  v70 = v27;
  v39 = &v27[v38];
  v40 = a1;
  *v39 = v37;
  v39[1] = v41;
  sub_222B43E3C(a1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
  if (swift_dynamicCast())
  {

    sub_222C209D8(v23, v21, type metadata accessor for PhoneCallGroundTruth);
    v42 = v21[*(v17 + 20)];
    sub_222C20A40(v21, type metadata accessor for PhoneCallGroundTruth);
    v43 = 0;
  }

  else
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    if (swift_dynamicCast())
    {

      v47 = v64;
      sub_222C209D8(v46, v64, type metadata accessor for MessagesGroundTruth);
      v42 = *(v47 + *(v44 + 20));
      sub_222C20A40(v47, type metadata accessor for MessagesGroundTruth);
      v43 = 1;
    }

    else
    {
      v48 = v65;
      if (swift_dynamicCast())
      {
        v49 = v61;
        sub_222C209D8(v48, v61, type metadata accessor for ContactPromptGroundTruth);
        v73[0] = v60;
        v73[1] = v28;
        v73[2] = v59;
        v73[3] = v45;
        sub_222C2C904(v73, &v74);
        sub_222C20A40(v49, type metadata accessor for ContactPromptGroundTruth);

        v42 = v74;
        v43 = 2;
      }

      else
      {

        v51 = v62;
        v50 = v63;
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v75);
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          v57 = sub_222C9367C();
          (*(*(v57 - 8) + 8))(v70, v57);

          return (*(v71 + 56))(v72, 1, 1, v36);
        }

        v52 = v58;
        sub_222C209D8(v51, v58, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
        v42 = *(v52 + *(v50 + 32));
        sub_222C20A40(v52, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
        v43 = 3;
      }
    }
  }

  v53 = v70;
  v54 = &v70[*(v36 + 24)];
  *v54 = v42;
  v54[2] = v43;
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  v55 = v72;
  sub_222BFC730(v53, v72);
  (*(v71 + 56))(v55, 0, 1, v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  return sub_222C20A40(v53, type metadata accessor for ThinContactGroundTruth);
}

uint64_t sub_222C209D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C20A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ThinContactGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThinContactGroundTruth.groundTruthType.getter()
{
  v1 = (v0 + *(type metadata accessor for ThinContactGroundTruth() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThinContactGroundTruth.groundTruthSource.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ThinContactGroundTruth();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t sub_222C20B8C()
{
  v1 = 0x7254646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_222C20BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C21E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C20C14(uint64_t a1)
{
  v2 = sub_222C21BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C20C50(uint64_t a1)
{
  v2 = sub_222C21BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThinContactGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FA0, &qword_222CA18D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C21BCC();
  sub_222C9536C();
  v22 = 0;
  sub_222C9367C();
  sub_222C21C68(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for ThinContactGroundTruth();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v21 = 1;
    sub_222C950EC();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 2);
    v19 = v16;
    v20 = v15;
    v18[9] = 2;
    sub_222BFC6DC();
    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ThinContactGroundTruth.hash(into:)()
{
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v1 = type metadata accessor for ThinContactGroundTruth();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_222C9452C();
  v5 = (v0 + *(v1 + 24));
  v7 = *v5;
  v8 = *(v5 + 2);
  return GroundTruthSource.hash(into:)();
}

uint64_t ThinContactGroundTruth.hashValue.getter()
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v1 = type metadata accessor for ThinContactGroundTruth();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_222C9452C();
  v5 = (v0 + *(v1 + 24));
  v7 = *v5;
  v8 = *(v5 + 2);
  GroundTruthSource.hash(into:)();
  return sub_222C9534C();
}

uint64_t ThinContactGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_222C9367C();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FB0, &qword_222CA18E0);
  v29 = *(v32 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ThinContactGroundTruth();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C21BCC();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v29;
  v15 = v30;
  v27 = v10;
  v37 = 0;
  sub_222C21C68(&qword_27D025178, MEMORY[0x277CC95F0]);
  sub_222C9507C();
  v17 = *(v15 + 32);
  v26 = v13;
  v17(v13, v31, v4);
  v36 = 1;
  v18 = sub_222C9503C();
  v19 = &v26[*(v27 + 20)];
  *v19 = v18;
  v19[1] = v20;
  v35 = 2;
  sub_222BFC688();
  sub_222C9507C();
  (*(v16 + 8))(v9, v32);
  v21 = v34;
  v22 = v26;
  v23 = &v26[*(v27 + 24)];
  *v23 = v33;
  v23[2] = v21;
  sub_222BFC730(v22, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222C20A40(v22, type metadata accessor for ThinContactGroundTruth);
}

uint64_t sub_222C2143C(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_222C9452C();
  v6 = (v1 + *(a1 + 24));
  v8 = *v6;
  v9 = *(v6 + 2);
  GroundTruthSource.hash(into:)();
  return sub_222C9534C();
}

uint64_t sub_222C21508(uint64_t a1, uint64_t a2)
{
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_222C9452C();
  v7 = (v2 + *(a2 + 24));
  v9 = *v7;
  v10 = *(v7 + 2);
  return GroundTruthSource.hash(into:)();
}

uint64_t sub_222C215C4(uint64_t a1, uint64_t a2)
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_222C9452C();
  v7 = (v2 + *(a2 + 24));
  v9 = *v7;
  v10 = *(v7 + 2);
  GroundTruthSource.hash(into:)();
  return sub_222C9534C();
}

uint64_t sub_222C2168C(uint64_t a1)
{
  v2 = type metadata accessor for ThinContactGroundTruth();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = &v7[*(v4 + 24)];
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_222BFC730(v10, v7);
      LOWORD(v13) = *v9;
      if (v9[2] > 1u)
      {
        break;
      }

      if (!v9[2])
      {
        v13 = v13;
        v14 = &unk_222CA1B30;
LABEL_9:
        v15 = v14[v13];
        goto LABEL_11;
      }

      v15 = 12 - v13;
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v12;
      v17 = sub_222B8CF60(v15);
      v19 = *(v12 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_44;
      }

      v23 = v18;
      if (*(v12 + 24) < v22)
      {
        sub_222B91240(v22, isUniquelyReferenced_nonNull_native);
        type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource(0);
        v17 = sub_222B8CF60(v15);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_47;
        }

LABEL_16:
        v12 = v54;
        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v31 = v17;
      sub_222B94498();
      v17 = v31;
      v12 = v54;
      if ((v23 & 1) == 0)
      {
LABEL_17:
        *(v12 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        *(*(v12 + 48) + 4 * v17) = v15;
        *(*(v12 + 56) + 8 * v17) = 0;
        v25 = *(v12 + 16);
        v21 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v21)
        {
          goto LABEL_46;
        }

        *(v12 + 16) = v26;
      }

LABEL_19:
      v27 = *(v12 + 56);
      v28 = *(v27 + 8 * v17);
      v29 = __CFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_45;
      }

      *(v27 + 8 * v17) = v30;
LABEL_3:
      sub_222C20A40(v7, type metadata accessor for ThinContactGroundTruth);
      v10 += v11;
      if (!--v8)
      {
        goto LABEL_24;
      }
    }

    if (v9[2] != 2)
    {
      goto LABEL_3;
    }

    v13 = v13;
    v14 = &unk_222CA1B10;
    goto LABEL_9;
  }

  v12 = MEMORY[0x277D84F98];
LABEL_24:
  v32 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v33 = 1 << *(v12 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v12 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  for (i = 0x277D59000uLL; v35; i = 0x277D59000)
  {
LABEL_33:
    while (1)
    {
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v41 = v40 | (v37 << 6);
      v42 = *(*(v12 + 48) + 4 * v41);
      v43 = *(*(v12 + 56) + 8 * v41);
      v44 = [objc_allocWithZone(*(i + 3184)) init];
      if (v44)
      {
        break;
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v45 = sub_222C9431C();
      __swift_project_value_buffer(v45, qword_280FE2340);
      v46 = sub_222C942FC();
      v47 = sub_222C94A4C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_222B39000, v46, v47, "Failed to create ground truth summary", v48, 2u);
        v49 = v48;
        i = 0x277D59000;
        MEMORY[0x223DCA8C0](v49, -1, -1);
      }

      if (!v35)
      {
        goto LABEL_29;
      }
    }

    v50 = v44;
    [v44 setSource_];
    MEMORY[0x223DC94A0]([v50 setCount_]);
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v51 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222C9475C();
    }

    sub_222C947AC();
    v32 = v54;
  }

LABEL_29:
  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      return v32;
    }

    v35 = *(v12 + 64 + 8 * v39);
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t _s28SiriPrivateLearningInference22ThinContactGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_222C9362C() & 1) != 0 && ((v4 = type metadata accessor for ThinContactGroundTruth(), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_222C951FC()))
  {
    v10 = *(v4 + 24);
    v11 = *(a1 + v10 + 2);
    v18 = *(a1 + v10);
    v19 = v11;
    v12 = a2 + v10;
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 2);
    v16 = v13;
    v17 = v12;
    v14 = _s28SiriPrivateLearningInference17GroundTruthSourceO2eeoiySbAC_ACtFZ_0(&v18, &v16);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_222C21BCC()
{
  result = qword_27D026FA8;
  if (!qword_27D026FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FA8);
  }

  return result;
}

uint64_t sub_222C21C68(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222C21CD8()
{
  result = sub_222C9367C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_222C21D70()
{
  result = qword_27D026FC0;
  if (!qword_27D026FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FC0);
  }

  return result;
}

unint64_t sub_222C21DC8()
{
  result = qword_27D026FC8;
  if (!qword_27D026FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FC8);
  }

  return result;
}

unint64_t sub_222C21E20()
{
  result = qword_27D026FD0;
  if (!qword_27D026FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FD0);
  }

  return result;
}

uint64_t sub_222C21E74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7254646E756F7267 && a2 == 0xEF65707954687475 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9E80 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_222C21FA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C21FC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

double sub_222C22008(double a1, double a2)
{
  result = *v2;
  v4 = *(v2 + 16);
  if (*v2 >= a2)
  {
    result = a2;
  }

  if (*(v2 + 8))
  {
    result = a2;
  }

  if (result > v4)
  {
    v4 = result;
  }

  if (!*(v2 + 24))
  {
    return v4;
  }

  return result;
}

void *sub_222C22080(uint64_t a1)
{
  v24 = type metadata accessor for PhoneCallAbandonmentClassifier();
  v25 = &protocol witness table for PhoneCallAbandonmentClassifier;
  v23 = swift_allocObject();
  v2 = type metadata accessor for QuickHangupClassifier();
  v3 = 32;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222CA1BB0;
  v27 = v2;
  v28 = &protocol witness table for QuickHangupClassifier;
  v26 = v4;
  v30 = type metadata accessor for PhoneCallInAppFollowupClassifier();
  v31 = &protocol witness table for PhoneCallInAppFollowupClassifier;
  v29 = swift_allocObject();
  v5 = type metadata accessor for SuccessfulPhoneCallClassifier();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x4014000000000000;
  v34 = &protocol witness table for SuccessfulPhoneCallClassifier;
  v7 = MEMORY[0x277D84F90];
  v33 = v5;
  v32 = v6;
  while (1)
  {
    sub_222B43E3C(&v22[v3], v19);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = (*(v10 + 8))(a1, v7, v9, v10);
    v11 = result[2];
    v12 = v7[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    v14 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= v7[3] >> 1)
    {
      if (v14[2])
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      result = sub_222B4A314(result, v15, 1, v7);
      v7 = result;
      if (v14[2])
      {
LABEL_13:
        if ((v7[3] >> 1) - v7[2] < v11)
        {
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v16 = v7[2];
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_21;
          }

          v7[2] = v18;
        }

        goto LABEL_3;
      }
    }

    if (v11)
    {
      goto LABEL_19;
    }

LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v3 += 40;
    if (v3 == 192)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D00, &unk_222C9ABC0);
      swift_arrayDestroy();
      return v7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_222C2236C()
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
LABEL_6:
    v10 = v2;
    return;
  }

  v4 = objc_opt_self();
  v5 = [v4 bagSubProfile];
  if (v5)
  {
    v0 = v5;
    v6 = [v4 bagSubProfileVersion];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() bagForProfile:v0 profileVersion:v6];

      v9 = *(v1 + 16);
      *(v1 + 16) = v8;
      v8;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_222C2244C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_222C22470, 0, 0);
}

uint64_t sub_222C22470()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_222C2236C();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CEE570]);
  v7 = sub_222C9448C();
  v8 = sub_222C9448C();
  v9 = [v6 initWithType:v1 clientIdentifier:v7 clientVersion:v8 bag:v5];
  v0[5] = v9;

  v10 = sub_222C9470C();
  [v9 setItemIdentifiers_];

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_222C225C0;

  return sub_222C227B4();
}

uint64_t sub_222C225C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_222C22750;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_222C226E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_222C226E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_222C22750()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_222C227D4()
{
  v1 = [*(v0 + 24) perform];
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = sub_222C23A88();
  *v4 = v0;
  v4[1] = sub_222C228E0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x2928746C75736572, 0xE800000000000000, sub_222C23A80, v2, v5);
}

uint64_t sub_222C228E0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_222C22A68;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_222C229FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222C229FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_222C22A68()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_222C22AD0()
{

  return swift_deallocClassInstance();
}

void sub_222C22B08()
{
  v1 = [v0 responseDataItems];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FE0, &qword_222CA1CB0);
    v3 = sub_222C9471C();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (v5 < *(v3 + 16))
      {
        v23[0] = *(v3 + 32 + 8 * v5);
        sub_222C22D08(v23, &v19);
        if (*(&v19 + 1))
        {
          v15 = v19;
          v16 = v20;
          v17 = v21;
          v18 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_222B4B568(0, *(v6 + 2) + 1, 1, v6);
          }

          v8 = *(v6 + 2);
          v7 = *(v6 + 3);
          if (v8 >= v7 >> 1)
          {
            v6 = sub_222B4B568((v7 > 1), v8 + 1, 1, v6);
          }

          v13 = v17;
          v14 = v18;
          v9 = v15;
          v12 = v16;
          *(v6 + 2) = v8 + 1;
          v10 = &v6[64 * v8];
          *(v10 + 4) = v13;
          *(v10 + 5) = v14;
          *(v10 + 2) = v9;
          *(v10 + 3) = v12;
        }

        else
        {
          v15 = v19;
          v16 = v20;
          v17 = v21;
          v18 = v22;
          sub_222C23618(&v15);
        }

        if (v4 == ++v5)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
    sub_222C235C4();
    swift_allocError();
    *v11 = 0xD000000000000027;
    v11[1] = 0x8000000222CAC9B0;
    swift_willThrow();
  }
}

uint64_t sub_222C22D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_222C94CBC();
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v4 = sub_222B8D080(v23);
  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_222B4420C(*(v3 + 56) + 32 * v4, &v24);
  sub_222B958A0(v23);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_222C94CBC();
  if (!*(v3 + 16) || (v7 = sub_222B8D080(v23), (v8 & 1) == 0))
  {

LABEL_15:
    result = sub_222B958A0(v23);
    goto LABEL_16;
  }

  sub_222B4420C(*(v3 + 56) + 32 * v7, &v24);
  sub_222B958A0(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FE0, &qword_222CA1CB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v24 = 1701667182;
  v25 = 0xE400000000000000;
  sub_222C94CBC();
  if (MEMORY[0x7475626972747471] && (v9 = sub_222B8D080(v23), (v10 & 1) != 0))
  {
    sub_222B4420C(MEMORY[0x7475626972747499] + 32 * v9, &v24);
    sub_222B958A0(v23);
    v11 = swift_dynamicCast();
    v12 = 0x7475626972747461;
    if (!v11)
    {
      v12 = 0;
    }

    v26 = v12;
    if (v11)
    {
      v13 = 0xEA00000000007365;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_222B958A0(v23);
    v26 = 0;
    v13 = 0;
  }

  v24 = 0x614E747369747261;
  v25 = 0xEA0000000000656DLL;
  sub_222C94CBC();
  if (MEMORY[0x7475626972747471] && (v14 = sub_222B8D080(v23), (v15 & 1) != 0))
  {
    sub_222B4420C(MEMORY[0x7475626972747499] + 32 * v14, &v24);
    sub_222B958A0(v23);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = 0x7475626972747461;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = 0xEA00000000007365;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_222B958A0(v23);
    v17 = 0;
    v18 = 0;
  }

  v24 = 0x6D614E6D75626C61;
  v25 = 0xE900000000000065;
  sub_222C94CBC();
  if (MEMORY[0x7475626972747471] && (v19 = sub_222B8D080(v23), (v20 & 1) != 0))
  {
    sub_222B4420C(MEMORY[0x7475626972747499] + 32 * v19, &v24);
    sub_222B958A0(v23);

    result = swift_dynamicCast();
    v21 = 0x7475626972747461;
    v22 = 0xEA00000000007365;
    if (!result)
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {

    result = sub_222B958A0(v23);
    v21 = 0;
    v22 = 0;
  }

  *a2 = 25705;
  *(a2 + 8) = 0xE200000000000000;
  *(a2 + 16) = v26;
  *(a2 + 24) = v13;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  return result;
}