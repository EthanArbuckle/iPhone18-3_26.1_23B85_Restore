BOOL sub_26BE5CC90()
{
  v1 = *(v0 + *(type metadata accessor for MLS.GroupState() + 40));
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 12;
  }

  while (v4 != -4094);
  return v3 != 0;
}

uint64_t sub_26BE5CCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E730, &qword_26C011528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE5CD48(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 58) & 0xC | (*(a1 + 152) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_26BE5CDC8(uint64_t result)
{
  v1 = *(result + 176) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 152) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 176) = v1;
  return result;
}

uint64_t sub_26BE5CE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E730, &qword_26C011528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE5CF64(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v76 = MEMORY[0x277D84F90];
    sub_26BECBA94(0, v5, 0);
    v6 = v76;
    v9 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v11 = v9[9];
      v12 = v9[7];
      v72 = v9[8];
      v73 = v11;
      v13 = v9[9];
      v74 = v9[10];
      v14 = v9[5];
      v15 = v9[3];
      v68 = v9[4];
      v69 = v14;
      v16 = v9[5];
      v17 = v9[7];
      v70 = v9[6];
      v71 = v17;
      v18 = v9[1];
      v65[0] = *v9;
      v65[1] = v18;
      v19 = v9[3];
      v21 = *v9;
      v20 = v9[1];
      v66 = v9[2];
      v67 = v19;
      v59 = v72;
      v60 = v13;
      v61 = v9[10];
      v55 = v68;
      v56 = v16;
      v57 = v70;
      v58 = v12;
      v51 = v21;
      v52 = v20;
      v75 = *(v9 + 22);
      v62 = *(v9 + 22);
      v53 = v66;
      v54 = v15;
      sub_26BE71830(v65, &v37);
      a1(v63, &v51, &v50);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v35[8] = v59;
      v35[9] = v60;
      v35[10] = v61;
      v36 = v62;
      v35[4] = v55;
      v35[5] = v56;
      v35[6] = v57;
      v35[7] = v58;
      v35[0] = v51;
      v35[1] = v52;
      v35[2] = v53;
      v35[3] = v54;
      sub_26BE7188C(v35);
      v39 = v63[2];
      v40 = v63[3];
      v38 = v63[1];
      v43 = v63[6];
      v44 = v63[7];
      v41 = v63[4];
      v42 = v63[5];
      v47 = v63[10];
      v48 = v63[11];
      v45 = v63[8];
      v46 = v63[9];
      v49 = v64;
      v23 = *(v6 + 16);
      v22 = *(v6 + 24);
      v37 = v63[0];
      v76 = v6;
      if (v23 >= v22 >> 1)
      {
        sub_26BECBA94((v22 > 1), v23 + 1, 1);
        v6 = v76;
      }

      *(v6 + 16) = v23 + 1;
      v24 = v6 + 200 * v23;
      *(v24 + 32) = v37;
      v25 = v38;
      v26 = v39;
      v27 = v41;
      *(v24 + 80) = v40;
      *(v24 + 96) = v27;
      *(v24 + 48) = v25;
      *(v24 + 64) = v26;
      v28 = v42;
      v29 = v43;
      v30 = v45;
      *(v24 + 144) = v44;
      *(v24 + 160) = v30;
      *(v24 + 112) = v28;
      *(v24 + 128) = v29;
      v31 = v46;
      v32 = v47;
      v33 = v48;
      *(v24 + 224) = v49;
      *(v24 + 192) = v32;
      *(v24 + 208) = v33;
      *(v24 + 176) = v31;
      if (!i)
      {
        return v6;
      }

      v9 = (v9 + 184);
    }

    v45 = v59;
    v46 = v60;
    v47 = v61;
    *&v48 = v62;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    sub_26BE7188C(&v37);
  }

  return v6;
}

uint64_t sub_26BE5D1F0(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    sub_26BECBB34(0, v5, 0);
    v6 = v30;
    for (i = (a3 + 32); ; ++i)
    {
      v27 = *i;
      sub_26BE00608(v27, *(&v27 + 1));
      a1(v28, &v27, &v26);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_26BE00258(v27, *(&v27 + 1));
      v16 = v28[2];
      v17 = v28[3];
      v14 = v28[0];
      v15 = v28[1];
      v20 = v28[6];
      v21 = v28[7];
      v18 = v28[4];
      v19 = v28[5];
      v23 = v28[9];
      v24 = v28[10];
      v22 = v28[8];
      v25 = v29;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      v30 = v6;
      if (v11 >= v10 >> 1)
      {
        sub_26BECBB34((v10 > 1), v11 + 1, 1);
        v6 = v30;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 184 * v11;
      *(v12 + 64) = v16;
      *(v12 + 80) = v17;
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 128) = v20;
      *(v12 + 144) = v21;
      *(v12 + 96) = v18;
      *(v12 + 112) = v19;
      *(v12 + 208) = v25;
      *(v12 + 176) = v23;
      *(v12 + 192) = v24;
      *(v12 + 160) = v22;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_26BE00258(v27, *(&v27 + 1));
  }

  return v6;
}

uint64_t sub_26BE5D390(void (*a1)(_OWORD *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v49 = MEMORY[0x277D84F90];
    sub_26BECBB34(0, v5, 0);
    v7 = a3 + 64;
    v8 = -1 << *(a3 + 32);
    result = sub_26C00AB4C();
    v9 = a3;
    v10 = result;
    if (result < 0 || result >= 1 << *(a3 + 32))
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      result = v49;
      v29 = v5;
      v11 = *(a3 + 36);
      v12 = 1;
      while (1)
      {
        v13 = v10 >> 6;
        if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          break;
        }

        v32 = v12;
        v14 = result;
        v46 = *(*(v9 + 56) + 16 * v10);
        sub_26BE00608(v46, *(&v46 + 1));
        a1(v47, &v46, &v45);
        if (v4)
        {
          sub_26BE00258(v46, *(&v46 + 1));
        }

        sub_26BE00258(v46, *(&v46 + 1));
        v35 = v47[2];
        v36 = v47[3];
        v34 = v47[1];
        v39 = v47[6];
        v40 = v47[7];
        v37 = v47[4];
        v38 = v47[5];
        v42 = v47[9];
        v43 = v47[10];
        v41 = v47[8];
        v44 = v48;
        result = v14;
        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        v33 = v47[0];
        v49 = v14;
        if (v16 >= v15 >> 1)
        {
          sub_26BECBB34((v15 > 1), v16 + 1, 1);
          result = v49;
        }

        *(result + 16) = v16 + 1;
        v17 = result + 184 * v16;
        *(v17 + 64) = v35;
        *(v17 + 80) = v36;
        *(v17 + 32) = v33;
        *(v17 + 48) = v34;
        *(v17 + 128) = v39;
        *(v17 + 144) = v40;
        *(v17 + 96) = v37;
        *(v17 + 112) = v38;
        *(v17 + 208) = v44;
        *(v17 + 176) = v42;
        *(v17 + 192) = v43;
        *(v17 + 160) = v41;
        v9 = a3;
        v18 = 1 << *(a3 + 32);
        if (v10 >= v18)
        {
          goto LABEL_27;
        }

        v19 = *(v7 + 8 * v13);
        if ((v19 & (1 << v10)) == 0)
        {
          goto LABEL_28;
        }

        if (v11 != *(a3 + 36))
        {
          goto LABEL_29;
        }

        v20 = v19 & (-2 << (v10 & 0x3F));
        if (v20)
        {
          v10 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v21 = v29;
        }

        else
        {
          v22 = v13 << 6;
          v23 = v13 + 1;
          v21 = v29;
          v24 = (a3 + 72 + 8 * v13);
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              v27 = result;
              sub_26BE2E070(v10, v11, 0);
              v9 = a3;
              result = v27;
              v10 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          v28 = result;
          sub_26BE2E070(v10, v11, 0);
          v9 = a3;
          result = v28;
          v10 = v18;
        }

LABEL_19:
        v4 = 0;
        if (v32 == v21)
        {
          return result;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          v11 = *(v9 + 36);
          v12 = v32 + 1;
          if (v10 < 1 << *(v9 + 32))
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t MLS.GroupState.HandshakeMessageOptions.init(encrypt:authenticatedData:paddingSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

__n128 MLS.ResolvedProposal.init(proposal:sender:originalProposalType:)@<Q0>(uint64_t a1@<X0>, int *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *a3;
  v7 = *(a3 + 2);
  v8 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v8;
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v9;
  v10 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v10;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v13;
  *(a4 + 184) = v4;
  *(a4 + 188) = v5;
  *(a4 + 190) = v6;
  *(a4 + 192) = v7;
  return result;
}

uint64_t MLS.GroupState.processIncomingMessage(_:cachedStateAndCommitMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v175 = a2;
  v111 = a3;
  v5 = type metadata accessor for MLS.AuthenticatedContent();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v110 - v10;
  v12 = type metadata accessor for MLS.GroupState();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v110 - v17;
  v19 = type metadata accessor for MLS.ValidatedContent();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v112;
  result = MLS.GroupState.unwrapMessage(_:)(a1, v22);
  if (!v23)
  {
    v25 = v175;
    v110 = v19;
    *&v112 = 0;
    v26 = *(v22 + 200);
    v170 = *(v22 + 184);
    v171 = v26;
    v172[0] = *(v22 + 216);
    *(v172 + 9) = *(v22 + 225);
    v27 = *(v22 + 136);
    v166 = *(v22 + 120);
    v167 = v27;
    v28 = *(v22 + 168);
    v168 = *(v22 + 152);
    v169 = v28;
    v29 = *(v22 + 72);
    v162 = *(v22 + 56);
    v163 = v29;
    v30 = *(v22 + 104);
    v164 = *(v22 + 88);
    v165 = v30;
    v31 = *(v22 + 200);
    v173[8] = *(v22 + 184);
    v173[9] = v31;
    v174[0] = *(v22 + 216);
    *(v174 + 9) = *(v22 + 225);
    v32 = *(v22 + 136);
    v173[4] = *(v22 + 120);
    v173[5] = v32;
    v33 = *(v22 + 168);
    v173[6] = *(v22 + 152);
    v173[7] = v33;
    v34 = *(v22 + 72);
    v173[0] = *(v22 + 56);
    v173[1] = v34;
    v35 = *(v22 + 104);
    v173[2] = *(v22 + 88);
    v173[3] = v35;
    v36 = sub_26BE6917C(v173);
    if (v36)
    {
      if (v36 != 1)
      {
        nullsub_1(v173);
        sub_26BE6FEC8(v3, v18, type metadata accessor for MLS.GroupState);
        v54 = v112;
        sub_26BE5EF48(v16, &v151, v22, v25);
        if (v54)
        {
          sub_26BE69184(v18, type metadata accessor for MLS.GroupState);
          return sub_26BE69184(v22, type metadata accessor for MLS.ValidatedContent);
        }

        sub_26BE69184(v3, type metadata accessor for MLS.GroupState);
        v148 = v159;
        v149 = v160;
        v150[0] = v161[0];
        v144 = v155;
        v145 = v156;
        v146 = v157;
        v147 = v158;
        v140 = v151;
        v141 = v152;
        v142 = v153;
        v143 = v154;
        sub_26BE70034(v16, v3, type metadata accessor for MLS.GroupState);
        v137 = v148;
        v138 = v149;
        v139[0] = v150[0];
        v133 = v144;
        v134 = v145;
        v135 = v146;
        v136 = v147;
        v130 = v140;
        *v131 = v141;
        *&v131[16] = v142;
        v132 = v143;
        sub_26BE6FF30(&v140, &v113);
        sub_26BF91664(&v130, v3, &v124);
        v121 = v137;
        v122 = v138;
        v123 = v139[0];
        v117 = v133;
        v118 = v134;
        v119 = v135;
        v120 = v136;
        v113 = v130;
        v114 = *v131;
        v115 = *&v131[16];
        v116 = v132;
        sub_26BE6FF8C(&v113);
        sub_26BE6FF8C(&v140);
        sub_26BE69184(v22, type metadata accessor for MLS.ValidatedContent);
        v78 = v126;
        v79 = v127;
        v80 = v128;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E740, &unk_26C011540);
        v82 = v111 + *(v81 + 48);
        sub_26BE70034(v18, v111, type metadata accessor for MLS.GroupState);
        v83 = v125;
        *v82 = v124;
        *(v82 + 1) = v83;
        v82[32] = v78;
        *(v82 + 5) = v79;
        v82[48] = v80;
        type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
        return swift_storeEnumTagMultiPayload();
      }

      v37 = nullsub_1(v173);
      v38 = *(v37 + 48);
      v40 = *v37;
      v39 = *(v37 + 16);
      v142 = *(v37 + 32);
      v143 = v38;
      v140 = v40;
      v141 = v39;
      v41 = *(v37 + 112);
      v43 = *(v37 + 64);
      v42 = *(v37 + 80);
      v146 = *(v37 + 96);
      v147 = v41;
      v144 = v43;
      v145 = v42;
      v45 = *(v37 + 144);
      v44 = *(v37 + 160);
      v46 = *(v37 + 128);
      *&v150[1] = *(v37 + 176);
      v149 = v45;
      v150[0] = v44;
      v148 = v46;
      v47 = sub_26BE5CD48(&v140);
      if (v47 <= 4)
      {
        if (v47 != 2)
        {
LABEL_15:
          sub_26BE5CDC8(&v140);
          v159 = v170;
          v160 = v171;
          v161[0] = v172[0];
          *(v161 + 9) = *(v172 + 9);
          v155 = v166;
          v156 = v167;
          v157 = v168;
          v158 = v169;
          v151 = v162;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          v55 = nullsub_1(&v151);
          sub_26BE6FE6C(v55, &v130);
LABEL_25:
          v48 = v112;
LABEL_26:
          sub_26BE61440(v22);
          if (v48)
          {
            sub_26BE69184(v22, type metadata accessor for MLS.ValidatedContent);
            return sub_26BE6FD84(&v162);
          }

          sub_26BE6FD84(&v162);
          sub_26BE69184(v22, type metadata accessor for MLS.ValidatedContent);
          type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v48 = v112;
        if (v47 <= 7)
        {
          if (v47 != 5 && v47 != 6)
          {
            sub_26BE5CDC8(&v140);
            v49 = v22;
            v50 = v22;
            v51 = v11;
            sub_26BE6FEC8(v49, v11, type metadata accessor for MLS.AuthenticatedContent);
            if (v11[36])
            {
              sub_26BE01654();
              swift_allocError();
              *v52 = 8;
              v52[112] = 6;
              swift_willThrow();
LABEL_55:
              sub_26BE69184(v11, type metadata accessor for MLS.AuthenticatedContent);
              v69 = v50;
              return sub_26BE69184(v69, type metadata accessor for MLS.ValidatedContent);
            }

            v89 = 0;
            v90 = *(v11 + 8);
            v91 = *(v11 + 5);
            v92 = *(v11 + 6);
            v93 = v92 >> 62;
            if ((v92 >> 62) > 1)
            {
              v94 = v112;
              if (v93 == 2)
              {
                v89 = *(v91 + 16);
                goto LABEL_52;
              }
            }

            else
            {
              v94 = v112;
              if (v93)
              {
                v89 = v91;
LABEL_52:
                sub_26BE00608(*(v11 + 5), *(v11 + 6));
                v94 = v112;
              }
            }

            *&v130 = v91;
            *(&v130 + 1) = v92;
            *v131 = v89;
            sub_26BFF91C8(&v151);
            if (v94)
            {
              *&v113 = &type metadata for MLS.AuthenticatedData;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E738, &unk_26C011530);
              v102 = sub_26C00A4FC();
              sub_26BE826C4(v102, v103, v91, v92);

              swift_willThrow();
              sub_26BE00258(v130, *(&v130 + 1));
              goto LABEL_55;
            }

            sub_26BE00258(v130, *(&v130 + 1));
            sub_26BE2E1F0(&v153, &v113, &qword_28045E2A8, &qword_26C028DD0);
            if (*(&v114 + 1))
            {
              sub_26BE03890(&v113, &v130);
              v112 = *&v131[8];
              v104 = __swift_project_boxed_opaque_existential_1(&v130, *&v131[8]);
              v105 = MEMORY[0x28223BE20](v104);
              *(&v110 - 2) = v112;
              *(&v110 - 2) = sub_26BE61318;
              *(&v110 - 1) = 0;
              v106 = sub_26BE82550(v105, sub_26BE6FE4C);
              v108 = v107;
              sub_26BE6FDD8(&v151);
              sub_26BE69184(v51, type metadata accessor for MLS.AuthenticatedContent);
              sub_26BE69184(v50, type metadata accessor for MLS.ValidatedContent);
              __swift_destroy_boxed_opaque_existential_1(&v130);
            }

            else
            {
              sub_26BE6FDD8(&v151);
              sub_26BE69184(v11, type metadata accessor for MLS.AuthenticatedContent);
              sub_26BE69184(v50, type metadata accessor for MLS.ValidatedContent);
              sub_26BE2E258(&v113, &qword_28045E2A8, &qword_26C028DD0);
              v106 = 0;
              v108 = 0xC000000000000000;
            }

            v109 = v111;
            *v111 = v90;
            *(v109 + 1) = v106;
            *(v109 + 2) = v108;
            type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
            return swift_storeEnumTagMultiPayload();
          }

          goto LABEL_15;
        }

        if (v47 != 8)
        {
          if (v47 == 9)
          {
            sub_26BE5CDC8(&v140);
            v48 = v112;
          }

          goto LABEL_26;
        }
      }

      sub_26BE5CDC8(&v140);
      goto LABEL_25;
    }

    nullsub_1(v173);
    sub_26BE6FEC8(v22, v9, type metadata accessor for MLS.AuthenticatedContent);
    if (v9[36])
    {
      sub_26BE01654();
      swift_allocError();
      *v53 = 8;
      v53[112] = 6;
LABEL_18:
      swift_willThrow();
      sub_26BE69184(v9, type metadata accessor for MLS.AuthenticatedContent);
      v69 = v22;
      return sub_26BE69184(v69, type metadata accessor for MLS.ValidatedContent);
    }

    v56 = v22;
    v57 = *(v9 + 8);
    v58 = *(v9 + 200);
    v148 = *(v9 + 184);
    v149 = v58;
    v150[0] = *(v9 + 216);
    *(v150 + 9) = *(v9 + 225);
    v59 = *(v9 + 136);
    v144 = *(v9 + 120);
    v145 = v59;
    v60 = *(v9 + 168);
    v146 = *(v9 + 152);
    v147 = v60;
    v61 = *(v9 + 72);
    v140 = *(v9 + 56);
    v141 = v61;
    v62 = *(v9 + 104);
    v142 = *(v9 + 88);
    v143 = v62;
    v63 = *(v9 + 200);
    v159 = *(v9 + 184);
    v160 = v63;
    v161[0] = *(v9 + 216);
    *(v161 + 9) = *(v9 + 225);
    v64 = *(v9 + 136);
    v155 = *(v9 + 120);
    v156 = v64;
    v65 = *(v9 + 168);
    v157 = *(v9 + 152);
    v158 = v65;
    v66 = *(v9 + 72);
    v151 = *(v9 + 56);
    v152 = v66;
    v67 = *(v9 + 104);
    v153 = *(v9 + 88);
    v154 = v67;
    if (sub_26BE6917C(&v151))
    {
      sub_26BE01654();
      swift_allocError();
      *v68 = 4;
      v68[112] = 0;
      v22 = v56;
      goto LABEL_18;
    }

    v70 = nullsub_1(&v151);
    v71 = v70[1];
    v175 = *v70;
    v137 = v148;
    v138 = v149;
    v139[0] = v150[0];
    *(v139 + 9) = *(v150 + 9);
    v133 = v144;
    v134 = v145;
    v135 = v146;
    v136 = v147;
    v130 = v140;
    *v131 = v141;
    *&v131[16] = v142;
    v132 = v143;
    v72 = nullsub_1(&v130);
    sub_26BE00608(*v72, *(v72 + 8));
    sub_26BE69184(v9, type metadata accessor for MLS.AuthenticatedContent);
    v73 = *(v56 + 5);
    v74 = *(v56 + 6);
    v75 = v74 >> 62;
    if ((v74 >> 62) > 1)
    {
      if (v75 != 2)
      {
        goto LABEL_38;
      }

      v84 = *(v73 + 16);
      v85 = *(v73 + 24);
    }

    else
    {
      v76 = v112;
      if (!v75)
      {
        if ((v74 & 0xFF000000000000) != 0)
        {
          v77 = 0;
LABEL_46:
          *&v124 = v73;
          *(&v124 + 1) = v74;
          *&v125 = v77;
          sub_26BFF91C8(&v113);
          *&v112 = v76;
          if (v76)
          {
            v129 = &type metadata for MLS.AuthenticatedData;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E738, &unk_26C011530);
            v95 = sub_26C00A4FC();
            sub_26BE826C4(v95, v96, v73, v74);

            swift_willThrow();
            sub_26BE6FD84(&v140);
            sub_26BE00258(v124, *(&v124 + 1));
            v69 = v56;
            return sub_26BE69184(v69, type metadata accessor for MLS.ValidatedContent);
          }

          sub_26BE00258(v124, *(&v124 + 1));
          v86 = *(&v113 + 1);
          v88 = v114;
          sub_26BE00608(*(&v113 + 1), v114);
          sub_26BE6FDD8(&v113);
          v87 = 0xC000000000000000;
          goto LABEL_49;
        }

        goto LABEL_38;
      }

      v84 = v73;
      v85 = v73 >> 32;
    }

    if (v84 != v85)
    {
      if (v75 == 2)
      {
        v77 = *(v73 + 16);
      }

      else
      {
        v77 = v73;
      }

      sub_26BE00608(*(v56 + 5), *(v56 + 6));
      v76 = v112;
      goto LABEL_46;
    }

LABEL_38:
    v86 = 0;
    v87 = 0xF000000000000000;
    v88 = 0xF000000000000000;
LABEL_49:
    v97 = v56;
    v98 = &v56[*(v110 + 20)];
    v99 = *v98;
    v100 = v98[4];
    sub_26BE69184(v97, type metadata accessor for MLS.ValidatedContent);
    LOBYTE(v113) = v100;
    v101 = v111;
    *v111 = v57;
    *(v101 + 1) = v175;
    *(v101 + 2) = v71;
    *(v101 + 3) = v86;
    *(v101 + 4) = v88;
    *(v101 + 5) = 0;
    *(v101 + 6) = v87;
    v101[14] = v99;
    *(v101 + 60) = v100;
    type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t MLS.GroupState.unwrapMessage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v77[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E748, &qword_26C011550);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v81 = &v77[-v12];
  v83 = type metadata accessor for MLS.ValidatedContent();
  v82 = *(v83 - 8);
  v13 = *(v82 + 64);
  v14 = MEMORY[0x28223BE20](v83);
  v16 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v77[-v17];
  v19 = type metadata accessor for MLS.PublicMessage();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v77[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v29 = &v77[-v28];
  sub_26BE6FEC8(a1, &v77[-v28], type metadata accessor for MLS.MLSMessage.Inner);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v49 = v29[1];
    v95 = *v29;
    v50 = v29[2];
    v51 = v29[3];
    v96 = v49;
    v97 = v50;
    v52 = v29[4];
    v98 = v51;
    v99 = v52;
    if (sub_26BE02DEC(v95, *(&v95 + 1), *(v2 + 1), *(v2 + 2)))
    {
      if (v96 == *(v2 + 3))
      {
        v92 = v97;
        v93 = v98;
        v94 = v99;
        v90 = v95;
        v91 = v96;
        v85 = *v2;
        v53 = type metadata accessor for MLS.GroupState();
        v54 = v2 + *(v53 + 44);
        v55 = *(type metadata accessor for MLS.KeySchedule() + 28);
        v56 = *(v53 + 48);
        v79 = v2;
        v57 = v100;
        MLS.PrivateMessage.unprotect(ciphersuiteID:keys:senderDataSecret:)(&v85, v2 + v56, &v54[v55], v11);
        if (v57)
        {
          return sub_26BE6FFE0(&v95);
        }

        if ((*(v82 + 48))(v11, 1, v83) != 1)
        {
          sub_26BE6FFE0(&v95);
          sub_26BE70034(v11, v16, type metadata accessor for MLS.ValidatedContent);
          v75 = v80;
          sub_26BE70034(v16, v80, type metadata accessor for MLS.ValidatedContent);
          goto LABEL_38;
        }

        sub_26BE2E258(v11, &qword_28045E748, &qword_26C011550);
        sub_26BE01654();
        swift_allocError();
        v59 = 5;
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        v59 = 4;
      }
    }

    else
    {
      sub_26BE01654();
      swift_allocError();
      v59 = 3;
    }

    *v58 = v59;
    v58[112] = 6;
    swift_willThrow();
    return sub_26BE6FFE0(&v95);
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_26BE01654();
    swift_allocError();
    v61 = v60;
    sub_26BE6FEC8(a1, v27, type metadata accessor for MLS.MLSMessage.Inner);
    v62 = swift_getEnumCaseMultiPayload();
    if (v62 > 2)
    {
      if (v62 == 3)
      {
        sub_26BE69184(v27, type metadata accessor for MLS.MLSMessage.Inner);
        v63 = 1;
      }

      else if (v62 == 4)
      {
        sub_26BE69184(v27, type metadata accessor for MLS.MLSMessage.Inner);
        v63 = 2;
      }

      else
      {
        v63 = *v27;
        sub_26BE00258(*(v27 + 1), *(v27 + 2));
      }
    }

    else if (v62)
    {
      if (v62 == 1)
      {
        sub_26BE69184(v27, type metadata accessor for MLS.MLSMessage.Inner);
        v63 = 4;
      }

      else
      {
        sub_26BE69184(v27, type metadata accessor for MLS.MLSMessage.Inner);
        v63 = 5;
      }
    }

    else
    {
      sub_26BE69184(v27, type metadata accessor for MLS.MLSMessage.Inner);
      v63 = 3;
    }

    *v61 = v63;
    *(v61 + 2) = 0;
    *(v61 + 4) = 1;
    *(v61 + 112) = 17;
    swift_willThrow();
    v66 = type metadata accessor for MLS.MLSMessage.Inner;
    v67 = v29;
    return sub_26BE69184(v67, v66);
  }

  sub_26BE70034(v29, v22, type metadata accessor for MLS.PublicMessage);
  if ((sub_26BE02DEC(*v22, v22[1], *(v2 + 1), *(v2 + 2)) & 1) == 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v64 = 0;
LABEL_23:
    v64[112] = 6;
    swift_willThrow();
    v66 = type metadata accessor for MLS.PublicMessage;
    v67 = v22;
    return sub_26BE69184(v67, v66);
  }

  v31 = v22[2];
  if (v31 != *(v2 + 3))
  {
    sub_26BE01654();
    swift_allocError();
    v65 = 1;
LABEL_22:
    *v64 = v65;
    goto LABEL_23;
  }

  v89 = *v2;
  v32 = type metadata accessor for MLS.GroupState();
  v33 = v2 + v32[11];
  v34 = *(type metadata accessor for MLS.KeySchedule() + 52);
  v35 = sub_26C009C8C();
  v36 = *(v35 - 8);
  v37 = &v33[v34];
  v38 = v84;
  (*(v36 + 16))(v84, v37, v35);
  (*(v36 + 56))(v38, 0, 1, v35);
  v78 = *v2;
  v39 = *(v2 + 1);
  v40 = *(v2 + 2);
  v41 = v2[16];
  v42 = *(v2 + 5);
  v43 = *(v2 + 12);
  v79 = v2;
  v44 = *(v2 + 7);
  v85 = v41;
  v86 = v42;
  v87 = v43;
  v88 = v44;
  v45 = v100;
  v46 = sub_26BE592D0();
  if (v45)
  {
    sub_26BE2E258(v38, &qword_28045E708, &unk_26C011370);
    return sub_26BE69184(v22, type metadata accessor for MLS.PublicMessage);
  }

  v68 = v32[10];
  v69 = v79 + v32[9];
  v70 = *(v69 + 1);
  v71 = *(v69 + 2);
  v72 = *(v79 + v68);
  LOWORD(v95) = v78;
  *(&v95 + 1) = v39;
  *&v96 = v40;
  *(&v96 + 1) = v31;
  *&v97 = v46;
  *(&v97 + 1) = v47;
  *&v98 = v70;
  *(&v98 + 1) = v71;
  *&v99 = v72;
  sub_26BE00608(v46, v47);
  sub_26BE00608(v39, v40);
  sub_26BE00608(v70, v71);
  v73 = v84;

  v74 = v81;
  MLS.PublicMessage.unprotect(ciphersuiteID:membershipKey:context:)(&v89, v73, &v95, v81);
  v92 = v97;
  v93 = v98;
  *&v94 = v99;
  v90 = v95;
  v91 = v96;
  sub_26BE2E258(&v90, &qword_28045E750, &unk_26C011558);
  sub_26BE2E258(v73, &qword_28045E708, &unk_26C011370);
  if ((*(v82 + 48))(v74, 1, v83) == 1)
  {
    sub_26BE2E258(v74, &qword_28045E748, &qword_26C011550);
    sub_26BE01654();
    swift_allocError();
    v65 = 2;
    goto LABEL_22;
  }

  sub_26BE69184(v22, type metadata accessor for MLS.PublicMessage);
  sub_26BE70034(v74, v18, type metadata accessor for MLS.ValidatedContent);
  v75 = v80;
  sub_26BE70034(v18, v80, type metadata accessor for MLS.ValidatedContent);
LABEL_38:
  if (!*(v75 + 36))
  {
    return sub_26BEC6D24(v75);
  }

  if (*(v75 + 36) == 1 || !*(v75 + 32))
  {
    sub_26BE01654();
    swift_allocError();
    *v76 = 0xD000000000000024;
    *(v76 + 8) = 0x800000026C02B260;
    *(v76 + 112) = 2;
    swift_willThrow();
    v66 = type metadata accessor for MLS.ValidatedContent;
    v67 = v75;
    return sub_26BE69184(v67, v66);
  }

  return sub_26BEC7148(v75);
}

uint64_t sub_26BE5EF48(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v270 = a4;
  v266 = a1;
  v267 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v254 = &v245 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v255 = &v245 - v10;
  v11 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v252 = *(v11 - 8);
  v253 = v11;
  v12 = *(v252 + 64);
  MEMORY[0x28223BE20](v11);
  v250 = &v245 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C009C8C();
  v263 = *(v14 - 8);
  v264 = v14;
  v15 = *(v263 + 64);
  MEMORY[0x28223BE20](v14);
  v262 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v258 = &v245 - v22;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  *(&v269 + 1) = *(v271 - 8);
  v23 = *(*(&v269 + 1) + 64);
  v24 = MEMORY[0x28223BE20](v271);
  v26 = &v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v245 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v245 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  *&v269 = &v245 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v260 = &v245 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v261 = &v245 - v38;
  MEMORY[0x28223BE20](v37);
  v259 = &v245 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v256 = &v245 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v265 = &v245 - v44;
  v272 = type metadata accessor for MLS.GroupState();
  v45 = *(*(v272 - 1) + 64);
  v46 = MEMORY[0x28223BE20](v272);
  v48 = &v245 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v257 = &v245 - v50;
  MEMORY[0x28223BE20](v49);
  v268 = (&v245 - v51);
  v251 = type metadata accessor for MLS.AuthenticatedContent();
  v52 = *(*(v251 - 8) + 64);
  MEMORY[0x28223BE20](v251);
  v54 = &v245 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE6FEC8(a3, v54, type metadata accessor for MLS.AuthenticatedContent);
  v55 = *(v54 + 8);
  v56 = v54[36];
  v57 = *(v54 + 200);
  v367 = *(v54 + 184);
  v368 = v57;
  v369[0] = *(v54 + 216);
  *(v369 + 9) = *(v54 + 225);
  v58 = *(v54 + 136);
  v363 = *(v54 + 120);
  v364 = v58;
  v59 = *(v54 + 168);
  v365 = *(v54 + 152);
  v366 = v59;
  v60 = *(v54 + 72);
  v359 = *(v54 + 56);
  v360 = v60;
  v61 = *(v54 + 104);
  v361 = *(v54 + 88);
  v362 = v61;
  v62 = *(v54 + 200);
  v370[8] = *(v54 + 184);
  v370[9] = v62;
  v371[0] = *(v54 + 216);
  *(v371 + 9) = *(v54 + 225);
  v63 = *(v54 + 136);
  v370[4] = *(v54 + 120);
  v370[5] = v63;
  v64 = *(v54 + 168);
  v370[6] = *(v54 + 152);
  v370[7] = v64;
  v65 = *(v54 + 72);
  v370[0] = *(v54 + 56);
  v370[1] = v65;
  v66 = *(v54 + 104);
  v370[2] = *(v54 + 88);
  v370[3] = v66;
  if (sub_26BE6917C(v370) <= 1)
  {
    nullsub_1(v370);
    sub_26BE01654();
    swift_allocError();
    v68 = 5;
LABEL_3:
    *v67 = v68;
    v67[112] = 0;
LABEL_4:
    swift_willThrow();
LABEL_5:
    v69 = type metadata accessor for MLS.AuthenticatedContent;
    v70 = v54;
    return sub_26BE69184(v70, v69);
  }

  nullsub_1(v370);
  if (v56)
  {
    if (v56 == 1 || !v55)
    {
      sub_26BE01654();
      swift_allocError();
      *v73 = 10;
      v73[112] = 6;
      goto LABEL_4;
    }

    v55 = 0;
    LODWORD(v48) = 1;
    v72 = v273;
  }

  else
  {
    v72 = v273;
    if (v55 == *(v372 + v272[13]))
    {
      sub_26BE2E1F0(v270, v21, &qword_28045E8D8, &qword_26C012580);
      v74 = v271;
      if ((*(*(&v269 + 1) + 48))(v21, 1, v271) == 1)
      {
        sub_26BE2E258(v21, &qword_28045E8D8, &qword_26C012580);
        sub_26BE01654();
        swift_allocError();
        v68 = 16;
        goto LABEL_3;
      }

      sub_26BE33F30(v21, v32, &qword_28045E8E0, &unk_26C0204E0);
      sub_26BE2E1F0(v32, v29, &qword_28045E8E0, &unk_26C0204E0);
      v81 = &v29[*(v74 + 48)];
      v82 = *(v81 + 9);
      v345 = *(v81 + 8);
      v346 = v82;
      v347[0] = *(v81 + 10);
      v83 = *(v81 + 5);
      v341 = *(v81 + 4);
      v342 = v83;
      v84 = *(v81 + 6);
      v344 = *(v81 + 7);
      v343 = v84;
      v85 = *(v81 + 1);
      v337 = *v81;
      v338 = v85;
      v86 = *(v81 + 2);
      v340 = *(v81 + 3);
      v339 = v86;
      sub_26BE6FEC8(v29, v26, type metadata accessor for MLS.GroupState);
      v87 = &v26[*(v74 + 48)];
      v88 = v346;
      *(v87 + 8) = v345;
      *(v87 + 9) = v88;
      *(v87 + 10) = v347[0];
      v89 = v342;
      *(v87 + 4) = v341;
      *(v87 + 5) = v89;
      v90 = v344;
      *(v87 + 6) = v343;
      *(v87 + 7) = v90;
      v91 = v338;
      *v87 = v337;
      *(v87 + 1) = v91;
      v92 = v340;
      *(v87 + 2) = v339;
      *(v87 + 3) = v92;
      v93 = v269;
      v94 = v273;
      sub_26BE2E1F0(v26, v269, &qword_28045E8E0, &unk_26C0204E0);
      v95 = (v93 + *(v74 + 48));
      v96 = v95[9];
      v356 = v95[8];
      v357 = v96;
      v358[0] = v95[10];
      v97 = v95[5];
      v352 = v95[4];
      v353 = v97;
      v98 = v95[6];
      v355 = v95[7];
      v354 = v98;
      v99 = v95[1];
      v348 = *v95;
      v349 = v99;
      v100 = v95[2];
      v351 = v95[3];
      v350 = v100;
      sub_26BE70034(v93, v48, type metadata accessor for MLS.GroupState);
      v101 = v372;
      if (sub_26BE02DEC(*(v48 + 8), *(v48 + 16), *(v372 + 8), *(v372 + 16)))
      {
        v102 = v101[3];
        v103 = __OFADD__(v102, 1);
        v104 = v102 + 1;
        if (v103)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (*(v48 + 24) == v104)
        {
          sub_26BE2E258(v26, &qword_28045E8E0, &unk_26C0204E0);
          sub_26BE2E258(v32, &qword_28045E8E0, &unk_26C0204E0);
          sub_26BE70034(v48, v266, type metadata accessor for MLS.GroupState);
          v105 = v357;
          v106 = v267;
          v267[8] = v356;
          v106[9] = v105;
          v106[10] = v358[0];
          v107 = v353;
          v106[4] = v352;
          v106[5] = v107;
          v108 = v355;
          v106[6] = v354;
          v106[7] = v108;
          v109 = v349;
          *v106 = v348;
          v106[1] = v109;
          v110 = v351;
          v106[2] = v350;
          v106[3] = v110;
          sub_26BE69184(v54, type metadata accessor for MLS.AuthenticatedContent);
          v69 = type metadata accessor for MLS.GroupState;
          v70 = v29;
          return sub_26BE69184(v70, v69);
        }
      }

      sub_26BE01654();
      swift_allocError();
      *v111 = 17;
      v111[112] = 0;
      swift_willThrow();
      sub_26BE6FF8C(&v348);
      sub_26BE2E258(v26, &qword_28045E8E0, &unk_26C0204E0);
      sub_26BE2E258(v32, &qword_28045E8E0, &unk_26C0204E0);
      sub_26BE69184(v48, type metadata accessor for MLS.GroupState);
      sub_26BE69184(v54, type metadata accessor for MLS.AuthenticatedContent);
      v70 = v29;
      v69 = type metadata accessor for MLS.GroupState;
      return sub_26BE69184(v70, v69);
    }

    LODWORD(v48) = 0;
  }

  v345 = v367;
  v346 = v368;
  v347[0] = v369[0];
  *(v347 + 9) = *(v369 + 9);
  v341 = v363;
  v342 = v364;
  v343 = v365;
  v344 = v366;
  v337 = v359;
  v338 = v360;
  v339 = v361;
  v340 = v362;
  v75 = nullsub_1(&v337);
  v76 = *v75;
  LODWORD(v274) = v55;
  BYTE4(v274) = v48;
  v351 = v362;
  v350 = v361;
  v349 = v360;
  v348 = v359;
  v355 = v366;
  v354 = v365;
  v353 = v364;
  v352 = v363;
  *(v358 + 9) = *(v369 + 9);
  v358[0] = v369[0];
  v357 = v368;
  v356 = v367;
  v77 = nullsub_1(&v348);
  sub_26BE71588(v77, &v285);
  v78 = v372;
  v79 = MLS.GroupState.resolveByRefProposals(proposals:commitSender:)(v76, &v274);
  if (v72)
  {
    sub_26BE6FD84(&v359);
    goto LABEL_5;
  }

  if (v48)
  {
    v80 = v79;
    MLS.GroupState.validateForExternalCommit(proposals:)(v79, &v274);
  }

  else
  {
    LODWORD(v285) = v55;
    v80 = v79;
    MLS.GroupState.validateForNormalCommit(proposals:commitSender:)(v79, &v285, &v274);
  }

  v112 = v274;
  if (_s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(v80))
  {
    v285 = *(v75 + 8);
    v113 = *(v75 + 24);
    v114 = *(v75 + 40);
    v115 = *(v75 + 72);
    v288 = *(v75 + 56);
    v289 = v115;
    v286 = v113;
    v287 = v114;
    v116 = *(v75 + 88);
    v117 = *(v75 + 104);
    v118 = *(v75 + 136);
    v292 = *(v75 + 120);
    v293 = v118;
    v290 = v116;
    v291 = v117;
    if (sub_26BE59C80(&v285) == 1)
    {

      sub_26BE01654();
      swift_allocError();
      *v119 = 0;
      v119[112] = 7;
      swift_willThrow();
LABEL_29:
      sub_26BE69184(v54, type metadata accessor for MLS.AuthenticatedContent);
      return sub_26BE6FD84(&v359);
    }
  }

  LODWORD(v273) = v112;
  v249 = v55;
  v120 = v268;
  sub_26BE6FEC8(v78, v268, type metadata accessor for MLS.GroupState);
  v121 = v272[15];
  v122 = *(v120 + v121);

  *(v120 + v121) = MEMORY[0x277D84F90];
  v247 = sub_26BE5BDA4(v80);
  v248 = v80;
  v124 = *(v123 + 16);

  if (v124)
  {

    sub_26BE01654();
    swift_allocError();
    *v125 = 0xD000000000000029;
    *(v125 + 8) = 0x800000026C02B3B0;
    *(v125 + 112) = 2;
    swift_willThrow();
    sub_26BE6FD84(&v359);
LABEL_36:
    sub_26BE69184(v268, type metadata accessor for MLS.GroupState);
    goto LABEL_5;
  }

  v246 = v75;
  v127 = v263 + 56;
  v126 = *(v263 + 56);
  v128 = v265;
  result = v126(v265, 1, 1, v264);
  if ((v273 - 2) < 2)
  {

    sub_26BE01654();
    swift_allocError();
    *v129 = 0xD000000000000036;
    *(v129 + 8) = 0x800000026C02B370;
    v130 = 2;
LABEL_34:
    *(v129 + 112) = v130;
    swift_willThrow();
    sub_26BE6FD84(&v359);
    v131 = v128;
LABEL_35:
    sub_26BE2E258(v131, &qword_28045E708, &unk_26C011370);
    goto LABEL_36;
  }

  if (v273)
  {
    MEMORY[0x28223BE20](result);
    *(&v245 - 2) = v78;
    if (sub_26BEC23AC(sub_26BE71960, (&v245 - 4), v248))
    {

      v133 = v258;
      sub_26BE2E1F0(v270, v258, &qword_28045E8D8, &qword_26C012580);
      v134 = v271;
      if ((*(*(&v269 + 1) + 48))(v133, 1, v271) == 1)
      {
        sub_26BE2E258(v133, &qword_28045E8D8, &qword_26C012580);
        sub_26BE01654();
        swift_allocError();
        *v135 = 0u;
        *(v135 + 16) = 0u;
        *(v135 + 32) = 0u;
        *(v135 + 48) = 0u;
        *(v135 + 64) = 0u;
        *(v135 + 80) = 0u;
        *(v135 + 96) = 0u;
        v136 = 21;
LABEL_67:
        *(v135 + 112) = v136;
        swift_willThrow();
        sub_26BE6FD84(&v359);
        goto LABEL_68;
      }

      v144 = v133;
      v145 = v259;
      sub_26BE33F30(v144, v259, &qword_28045E8E0, &unk_26C0204E0);
      v146 = v145;
      v147 = v261;
      sub_26BE2E1F0(v146, v261, &qword_28045E8E0, &unk_26C0204E0);
      v148 = (v147 + *(v134 + 48));
      v149 = v148[9];
      v282 = v148[8];
      v283 = v149;
      v284 = v148[10];
      v150 = v148[5];
      v278 = v148[4];
      v279 = v150;
      v151 = v148[7];
      v280 = v148[6];
      v281 = v151;
      v152 = v148[1];
      v274 = *v148;
      v275 = v152;
      v153 = v148[3];
      v276 = v148[2];
      v277 = v153;
      v154 = v147;
      v155 = v260;
      sub_26BE6FEC8(v154, v260, type metadata accessor for MLS.GroupState);
      v156 = (v155 + *(v134 + 48));
      v157 = v283;
      v156[8] = v282;
      v156[9] = v157;
      v156[10] = v284;
      v158 = v279;
      v156[4] = v278;
      v156[5] = v158;
      v159 = v281;
      v156[6] = v280;
      v156[7] = v159;
      v160 = v275;
      *v156 = v274;
      v156[1] = v160;
      v161 = v277;
      v156[2] = v276;
      v156[3] = v161;
      v162 = v155;
      v163 = v269;
      sub_26BE2E1F0(v162, v269, &qword_28045E8E0, &unk_26C0204E0);
      v164 = (v163 + *(v134 + 48));
      v165 = v164[9];
      v293 = v164[8];
      v294 = v165;
      v295 = v164[10];
      v166 = v164[5];
      v289 = v164[4];
      v290 = v166;
      v167 = v164[7];
      v291 = v164[6];
      v292 = v167;
      v168 = v164[1];
      v285 = *v164;
      v286 = v168;
      v169 = v164[3];
      v287 = v164[2];
      v288 = v169;
      v170 = v163;
      v171 = v257;
      sub_26BE70034(v170, v257, type metadata accessor for MLS.GroupState);
      result = sub_26BE02DEC(*(v171 + 8), *(v171 + 16), v78[1], v78[2]);
      if ((result & 1) == 0)
      {
        goto LABEL_60;
      }

      v172 = v78[3];
      v103 = __OFADD__(v172, 1);
      v173 = v172 + 1;
      if (v103)
      {
        goto LABEL_108;
      }

      v171 = v257;
      if (*(v257 + 24) == v173)
      {
        sub_26BE6FD84(&v359);
        sub_26BE2E258(v260, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v259, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
        sub_26BE70034(v171, v266, type metadata accessor for MLS.GroupState);
        v174 = v294;
        v175 = v267;
        v267[8] = v293;
        v175[9] = v174;
        v175[10] = v295;
        v176 = v290;
        v175[4] = v289;
        v175[5] = v176;
        v177 = v292;
        v175[6] = v291;
        v175[7] = v177;
        v178 = v286;
        *v175 = v285;
        v175[1] = v178;
        v179 = v288;
        v175[2] = v287;
        v175[3] = v179;
        v180 = v268;
      }

      else
      {
LABEL_60:
        sub_26BE01654();
        swift_allocError();
        *v181 = 17;
        v181[112] = 0;
        swift_willThrow();
        sub_26BE6FF8C(&v285);
        sub_26BE6FD84(&v359);
        sub_26BE2E258(v260, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v259, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v171, type metadata accessor for MLS.GroupState);
        v180 = v268;
      }

      sub_26BE69184(v180, type metadata accessor for MLS.GroupState);
      sub_26BE69184(v54, type metadata accessor for MLS.AuthenticatedContent);
      v70 = v261;
      v69 = type metadata accessor for MLS.GroupState;
      return sub_26BE69184(v70, v69);
    }

    v137 = v268;
    v138 = *(v268 + 12);
    if (v138)
    {
      v273 = 0;
      v139 = 0;
      v140 = 0;
      v271 = v138;
      v141 = (v138 - 1);
      do
      {
        if (v140 == 0x80000000)
        {
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if ((v141 & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        if (v139 > 2 * v141)
        {

          sub_26BE01654();
          swift_allocError();
          *v135 = 30;
          *(v135 + 8) = 0u;
          *(v135 + 24) = 0u;
          *(v135 + 40) = 0u;
          *(v135 + 56) = 0u;
          *(v135 + 72) = 0u;
          *(v135 + 88) = 0u;
          *(v135 + 104) = 0;
          v136 = 23;
          goto LABEL_67;
        }

        v142 = *(v268 + 7);
        if (*(v142 + 16) <= v139 || (memmove(&v285, (v142 + 136 * v139 + 32), 0x88uLL), result = sub_26BE58C10(&v285), result == 1))
        {
          v271 = v140;
          v72 = v273;
          v137 = v268;
          goto LABEL_63;
        }

        ++v140;
        v139 += 2;
      }

      while (v271 != v140);
      if ((v271 & 0x80000000) != 0)
      {
        goto LABEL_109;
      }

      v143 = 2 * v271;
      *(v268 + 12) = 2 * v271;
      LODWORD(v138) = v143 - 1;
      if (v138 >= 0)
      {
        v72 = v273;
        v137 = v268;
        goto LABEL_59;
      }

      goto LABEL_107;
    }

    v271 = 0;
    *(v268 + 12) = 1;
LABEL_59:
    sub_26BECA280((2 * v138) | 1);
LABEL_63:
    v291 = *(v246 + 96);
    v292 = *(v246 + 112);
    v293 = *(v246 + 128);
    *&v294 = *(v246 + 144);
    v287 = *(v246 + 32);
    v288 = *(v246 + 48);
    v289 = *(v246 + 64);
    v290 = *(v246 + 80);
    v285 = *v246;
    v286 = *(v246 + 16);
    v182 = sub_26BE620A4();
    if (v72)
    {

      sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
      sub_26BE69184(v137, type metadata accessor for MLS.GroupState);
      goto LABEL_29;
    }

    v184 = v137 + v272[11];
    v185 = v182;
    v273 = v183;
    MLS.KeySchedule.receiveExternalInit(kemOutput:)(v182, v183, v256);
    v186 = v265;
    sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
    sub_26BE00258(v185, v273);
    v187 = v256;
    v126(v256, 0, 1, v264);
    result = sub_26BE33F30(v187, v186, &qword_28045E708, &unk_26C011370);
    v78 = v372;
    v132 = v271;
  }

  else
  {
    v132 = v249;
    if (v48)
    {

      sub_26BE01654();
      swift_allocError();
      *v129 = 2;
      v130 = 7;
      goto LABEL_34;
    }
  }

  v188 = *v78;
  v189 = v268;
  if ((v188 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  LOBYTE(v274) = v188 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v274, v335);
  v190 = v336;

  *&v274 = sub_26BE125AC(v190);
  *(&v274 + 1) = v191;
  sub_26C009C5C();
  v192 = v246;
  v285 = *(v246 + 8);
  v193 = *(v246 + 24);
  v194 = *(v246 + 40);
  v195 = *(v246 + 72);
  v288 = *(v246 + 56);
  v289 = v195;
  v286 = v193;
  v287 = v194;
  v196 = *(v246 + 88);
  v197 = *(v246 + 104);
  v198 = *(v246 + 136);
  v292 = *(v246 + 120);
  v293 = v198;
  v290 = v196;
  v291 = v197;
  if (sub_26BE59C80(&v285) == 1)
  {

    goto LABEL_72;
  }

  v331 = v291;
  v332 = v292;
  v333 = v293;
  v327 = v287;
  v328 = v288;
  v330 = v290;
  v329 = v289;
  v325 = v285;
  v326 = v286;
  v323 = v132;
  v324 = 1;
  sub_26BE2E1F0(v192 + 8, &v274, &qword_28045E8B0, &qword_26C012560);
  sub_26BE00758(&v285, &v274);
  MLS.GroupState.validateLeafNode(leafNode:validationContext:)(&v325, &v323);
  v321[6] = v331;
  v321[7] = v332;
  v322 = v333;
  v321[2] = v327;
  v321[3] = v328;
  v321[4] = v329;
  v321[5] = v330;
  v321[0] = v325;
  v321[1] = v326;
  sub_26BE00854(v321);
  v127 = v132;
  LODWORD(v310) = v132;
  v280 = v291;
  v281 = v292;
  v282 = v293;
  v276 = v287;
  v277 = v288;
  v278 = v289;
  v279 = v290;
  v274 = v285;
  v275 = v286;
  v199 = MLS.TreeKEMPublicKey.parentHashValid(from:path:)(&v310, &v274);
  if ((v199 & 1) == 0)
  {

    sub_26BE01654();
    swift_allocError();
    *v202 = 1;
    v202[112] = 7;
    swift_willThrow();
    sub_26BE2E258(v246 + 8, &qword_28045E8B0, &qword_26C012560);
LABEL_85:
    sub_26BE6FD84(&v359);
LABEL_86:
    (*(v263 + 8))(v262, v264);
LABEL_68:
    v131 = v265;
    goto LABEL_35;
  }

  LODWORD(v310) = v132;
  v280 = v291;
  v281 = v292;
  v282 = v293;
  v276 = v287;
  v277 = v288;
  v278 = v289;
  v279 = v290;
  v274 = v285;
  v275 = v286;
  MLS.TreeKEMPublicKey.merge(from:path:)(&v310, &v274);
  LODWORD(v270) = *v268;
  v209 = *(v268 + 2);
  v271 = *(v268 + 1);
  v372 = v209;
  v210 = *(v268 + 3);
  v211 = *(v268 + 5);
  v212 = *(v268 + 12);
  v213 = *(v268 + 7);
  v315 = v268[16];
  v316 = v211;
  v317 = v212;
  v318 = v213;
  result = sub_26BE592D0();
  *&v269 = result;
  *(&v269 + 1) = v214;
  v273 = 0;
  v261 = v210 + 1;
  if (__OFADD__(v210, 1))
  {
    goto LABEL_111;
  }

  v217 = v271;
  v218 = v268 + v272[9];
  v220 = *(v218 + 1);
  v219 = *(v218 + 2);
  v221 = *(v268 + v272[10]);
  LOWORD(v310) = v270;
  *(&v310 + 1) = v271;
  v222 = v372;
  *&v311 = v372;
  *(&v311 + 1) = v261;
  v312 = v269;
  *&v313 = v220;
  *(&v313 + 1) = v219;
  v314 = v221;
  v296 = xmmword_26C00BBD0;
  v297 = 0;
  v276 = v269;
  v277 = v313;
  *&v278 = v221;
  v274 = v310;
  v275 = v311;
  sub_26BE00608(v269, *(&v269 + 1));
  sub_26BE00608(v217, v222);
  v258 = v220;
  v259 = v219;
  sub_26BE00608(v220, v219);
  v260 = v221;

  sub_26BE001A8(&v310, &v300);
  v223 = v273;
  sub_26BFAF494(&v274);
  v141 = v223;
  if (v223)
  {

    sub_26BE2E258(v246 + 8, &qword_28045E8B0, &qword_26C012560);
    sub_26BE6FD84(&v359);

    v300 = v270;
    v301 = v319;
    v302 = v320;
    v303 = v271;
    v304 = v372;
    v305 = v261;
    v306 = v269;
    v307 = v258;
    v308 = v259;
    v309 = v260;
    sub_26BE00204(&v300);
    (*(v263 + 8))(v262, v264);
    sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
    sub_26BE00204(&v310);
    sub_26BE00258(v296, *(&v296 + 1));
    goto LABEL_36;
  }

LABEL_95:
  v231 = v296;
  v232 = *(&v296 + 1) >> 62;
  if ((*(&v296 + 1) >> 62) <= 1)
  {
    if (!v232)
    {
      goto LABEL_103;
    }

    v233 = v296 >> 32;
LABEL_101:
    if (v233 < 0)
    {
      __break(1u);
    }

    goto LABEL_103;
  }

  if (v232 == 2)
  {
    v233 = *(v296 + 24);
    goto LABEL_101;
  }

LABEL_103:
  v234 = sub_26C00909C();
  v236 = v235;
  sub_26BE00204(&v310);
  sub_26BE00258(v231, *(&v231 + 1));
  v299 = v127;
  v237 = *(v268 + 5);
  v238 = *(v268 + 12);
  v239 = *(v268 + 7);
  LOWORD(v296) = v268[16];
  *(&v296 + 1) = v237;
  LODWORD(v297) = v238;
  v298 = v239;
  v280 = v291;
  v281 = v292;
  v282 = v293;
  v276 = v287;
  v277 = v288;
  v278 = v289;
  v279 = v290;
  v240 = v268 + v272[8];
  v274 = v285;
  v275 = v286;

  MLS.TreeKEMPrivateKey.decap(from:pubKey:context:path:exceptLeaves:)(&v299, &v296, v234, v236, &v274, v247);
  if (v141)
  {

    sub_26BE00258(v234, v236);
    sub_26BE6FD84(&v359);

    v300 = v270;
    v301 = v319;
    v302 = v320;
    v303 = v271;
    v304 = v372;
    v305 = v261;
    v306 = v269;
    v307 = v258;
    v308 = v259;
    v309 = v260;
    sub_26BE00204(&v300);
    (*(v263 + 8))(v262, v264);
    sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
    sub_26BE69184(v268, type metadata accessor for MLS.GroupState);
    sub_26BE69184(v54, type metadata accessor for MLS.AuthenticatedContent);
    return sub_26BE2E258(v246 + 8, &qword_28045E8B0, &qword_26C012560);
  }

  sub_26BE00258(v234, v236);

  v300 = v270;
  v301 = v319;
  v302 = v320;
  v303 = v271;
  v304 = v372;
  v305 = v261;
  v306 = v269;
  v307 = v258;
  v308 = v259;
  v309 = v260;
  sub_26BE00204(&v300);
  v242 = v262;
  v241 = v263;
  v243 = v264;
  (*(v263 + 8))(v262, v264);
  sub_26BE2E258(v246 + 8, &qword_28045E8B0, &qword_26C012560);
  v244 = type metadata accessor for MLS.TreeKEMPrivateKey();
  (*(v241 + 16))(v242, &v240[*(v244 + 32)], v243);
  v189 = v268;
LABEL_72:
  v101 = (v189 + v272[9]);
  sub_26BE2E86C();
  result = sub_26BE2E9FC();
  v94 = 0;
  v200 = *(v268 + 3);
  v103 = __OFADD__(v200, 1);
  v201 = v200 + 1;
  if (v103)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    return result;
  }

  *(v268 + 3) = v201;
  sub_26BE6250C(v262, v265);
LABEL_80:
  v203 = v254;
  sub_26BE2E1F0(&v54[*(v251 + 24)], v254, &qword_28045E4E0, &qword_26C015A80);
  v204 = type metadata accessor for MLS.FramedContentAuthData();
  if ((*(*(v204 - 8) + 48))(v203, 1, v204) == 1)
  {

    sub_26BE2E258(v254, &qword_28045E4E0, &qword_26C015A80);
    (*(v252 + 56))(v255, 1, 1, v253);
LABEL_84:
    sub_26BE2E258(v255, &qword_28045E4E8, &qword_26C012550);
    sub_26BE01654();
    swift_allocError();
    *v208 = 7;
    v208[112] = 6;
    swift_willThrow();
    goto LABEL_85;
  }

  v205 = *(v204 + 20);
  v207 = v254;
  v206 = v255;
  sub_26BE2E1F0(v254 + v205, v255, &qword_28045E4E8, &qword_26C012550);
  sub_26BE69184(v207, type metadata accessor for MLS.FramedContentAuthData);
  if ((*(v252 + 48))(v206, 1, v253) == 1)
  {

    goto LABEL_84;
  }

  v215 = v250;
  sub_26BE70034(v255, v250, type metadata accessor for MLS.Cryptography.MACTag);
  v216 = v268 + v272[11];
  sub_26BEAFD54(v215, v101[1], v101[2]);
  if (v94)
  {

    sub_26BE6FD84(&v359);
    sub_26BE69184(v250, type metadata accessor for MLS.Cryptography.MACTag);
    goto LABEL_86;
  }

  sub_26BE69184(v250, type metadata accessor for MLS.Cryptography.MACTag);
  (*(v263 + 8))(v262, v264);
  sub_26BE2E258(v265, &qword_28045E708, &unk_26C011370);
  v224 = v246;
  sub_26BE2E1F0(v246 + 8, &v274, &qword_28045E8B0, &qword_26C012560);
  sub_26BE6FD84(&v359);
  LOBYTE(v274) = v48;
  *&v334[83] = *(v224 + 88);
  *&v334[99] = *(v224 + 104);
  *&v334[115] = *(v224 + 120);
  *&v334[131] = *(v224 + 136);
  *&v334[19] = *(v224 + 24);
  *&v334[35] = *(v224 + 40);
  *&v334[51] = *(v224 + 56);
  *&v334[67] = *(v224 + 72);
  *&v334[3] = *(v224 + 8);
  sub_26BE69184(v54, type metadata accessor for MLS.AuthenticatedContent);
  LOBYTE(v224) = v274;
  v225 = v268;
  sub_26BE6FEC8(v268, v266, type metadata accessor for MLS.GroupState);
  result = sub_26BE69184(v225, type metadata accessor for MLS.GroupState);
  v226 = *&v334[112];
  v227 = v267;
  *(v267 + 109) = *&v334[96];
  *(v227 + 125) = v226;
  *(v227 + 141) = *&v334[128];
  v228 = *&v334[48];
  *(v227 + 45) = *&v334[32];
  *(v227 + 61) = v228;
  v229 = *&v334[80];
  *(v227 + 77) = *&v334[64];
  *(v227 + 93) = v229;
  v230 = *&v334[16];
  *(v227 + 13) = *v334;
  *v227 = v248;
  *(v227 + 2) = v249;
  *(v227 + 12) = v224;
  *(v227 + 39) = *&v334[143];
  *(v227 + 29) = v230;
  v227[10] = xmmword_26C00DA60;
  return result;
}

uint64_t sub_26BE61318(uint64_t a1, uint64_t a2)
{
  sub_26BE038A8(a2, v4);
  v2 = sub_26BE0256C(v4);
  sub_26BE2E258(v4, &qword_28045E2A8, &qword_26C028DD0);
  return v2;
}

uint64_t sub_26BE61388(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  v11 = a3(a1, v13);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_26BE61440(uint64_t a1)
{
  v4 = *(a1 + 200);
  v68 = *(a1 + 184);
  v69 = v4;
  v70[0] = *(a1 + 216);
  *(v70 + 9) = *(a1 + 225);
  v5 = *(a1 + 136);
  v64 = *(a1 + 120);
  v65 = v5;
  v6 = *(a1 + 168);
  v66 = *(a1 + 152);
  v67 = v6;
  v7 = *(a1 + 72);
  v60 = *(a1 + 56);
  v61 = v7;
  v8 = *(a1 + 104);
  v62 = *(a1 + 88);
  v63 = v8;
  v9 = *(a1 + 200);
  v71[8] = *(a1 + 184);
  v71[9] = v9;
  v72[0] = *(a1 + 216);
  *(v72 + 9) = *(a1 + 225);
  v10 = *(a1 + 136);
  v71[4] = *(a1 + 120);
  v71[5] = v10;
  v11 = *(a1 + 168);
  v71[6] = *(a1 + 152);
  v71[7] = v11;
  v12 = *(a1 + 72);
  v71[0] = *(a1 + 56);
  v71[1] = v12;
  v13 = *(a1 + 104);
  v71[2] = *(a1 + 88);
  v71[3] = v13;
  if (sub_26BE6917C(v71) == 1 && (v14 = nullsub_1(v71), !*(a1 + 36)))
  {
    v17 = v14;
    v18 = *(a1 + 32);
    v19 = v1;
    v57 = *v1;
    v58[8] = v68;
    v58[9] = v69;
    v59[0] = v70[0];
    *(v59 + 9) = *(v70 + 9);
    v58[4] = v64;
    v58[5] = v65;
    v58[6] = v66;
    v58[7] = v67;
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    v58[3] = v63;
    v20 = nullsub_1(v58);
    sub_26BE6FE6C(v20, v44);
    v21 = sub_26BF2ED28(&v57);
    if (v2)
    {
      return sub_26BE6FD84(&v60);
    }

    else
    {
      v23 = v21;
      v24 = v22;
      v25 = *(v17 + 144);
      v53 = *(v17 + 128);
      v54 = v25;
      v55 = *(v17 + 160);
      v56 = *(v17 + 176);
      v26 = *(v17 + 80);
      v49 = *(v17 + 64);
      v50 = v26;
      v27 = *(v17 + 112);
      v51 = *(v17 + 96);
      v52 = v27;
      v28 = *(v17 + 16);
      v45 = *v17;
      v46 = v28;
      v29 = *(v17 + 48);
      v47 = *(v17 + 32);
      v48 = v29;
      v44[188] = 0;
      v30 = *(type metadata accessor for MLS.GroupState() + 60);
      v31 = *(v19 + v30);
      sub_26BE71438(&v60, v44);
      sub_26BE00608(v23, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_26BEEC910(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_26BEEC910((v32 > 1), v33 + 1, 1, v31);
      }

      sub_26BE00258(v23, v24);
      result = sub_26BE6FD84(&v60);
      *(v31 + 2) = v33 + 1;
      v34 = &v31[208 * v33];
      *(v34 + 4) = v23;
      *(v34 + 5) = v24;
      v35 = v56;
      v37 = v54;
      v36 = v55;
      *(v34 + 11) = v53;
      *(v34 + 12) = v37;
      *(v34 + 13) = v36;
      *(v34 + 28) = v35;
      v38 = v50;
      v39 = v51;
      v40 = v52;
      *(v34 + 7) = v49;
      *(v34 + 8) = v38;
      *(v34 + 9) = v39;
      *(v34 + 10) = v40;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      *(v34 + 3) = v45;
      *(v34 + 4) = v41;
      *(v34 + 5) = v42;
      *(v34 + 6) = v43;
      *(v34 + 58) = v18;
      v34[236] = 0;
      *(v19 + v30) = v31;
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v15 = 18;
    v15[112] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLS.GroupState.processIncomingCommit(_:cachedStateAndCommitMetadata:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for MLS.ValidatedContent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MLS.GroupState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE6FEC8(v4, v17, type metadata accessor for MLS.GroupState);
  MLS.GroupState.unwrapMessage(_:)(a3, v13);
  if (!v5)
  {
    sub_26BE5EF48(a1, a2, v13, a4);
    sub_26BE69184(v13, type metadata accessor for MLS.ValidatedContent);
  }

  return sub_26BE69184(v17, type metadata accessor for MLS.GroupState);
}

uint64_t MLS.GroupState.processIncomingProposal(_:)(uint64_t a1)
{
  v3 = type metadata accessor for MLS.ValidatedContent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MLS.GroupState.unwrapMessage(_:)(a1, v6);
  if (!v1)
  {
    sub_26BE61440(v6);
    return sub_26BE69184(v6, type metadata accessor for MLS.AuthenticatedContent);
  }

  return result;
}

uint64_t MLS.GroupState.processIncomingApplicationMessage(_:)(_DWORD *a1, uint64_t a2)
{
  v6 = type metadata accessor for MLS.AuthenticatedContent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.ValidatedContent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLS.GroupState.unwrapMessage(_:)(a2, v13);
  if (!v3)
  {
    sub_26BE6FEC8(v13, v9, type metadata accessor for MLS.AuthenticatedContent);
    if (v9[36])
    {
      sub_26BE01654();
      v2 = swift_allocError();
      *v14 = 8;
      v14[112] = 6;
    }

    else
    {
      v15 = *(v9 + 8);
      v16 = *(v9 + 200);
      v41 = *(v9 + 184);
      v42 = v16;
      v43[0] = *(v9 + 216);
      *(v43 + 9) = *(v9 + 225);
      v17 = *(v9 + 136);
      v37 = *(v9 + 120);
      v38 = v17;
      v18 = *(v9 + 168);
      v39 = *(v9 + 152);
      v40 = v18;
      v19 = *(v9 + 72);
      v33 = *(v9 + 56);
      v34 = v19;
      v20 = *(v9 + 104);
      v35 = *(v9 + 88);
      v36 = v20;
      v21 = *(v9 + 200);
      v44[8] = *(v9 + 184);
      v44[9] = v21;
      v45[0] = *(v9 + 216);
      *(v45 + 9) = *(v9 + 225);
      v22 = *(v9 + 136);
      v44[4] = *(v9 + 120);
      v44[5] = v22;
      v23 = *(v9 + 168);
      v44[6] = *(v9 + 152);
      v44[7] = v23;
      v24 = *(v9 + 72);
      v44[0] = *(v9 + 56);
      v44[1] = v24;
      v25 = *(v9 + 104);
      v44[2] = *(v9 + 88);
      v44[3] = v25;
      if (!sub_26BE6917C(v44))
      {
        v28 = nullsub_1(v44);
        v46 = v15;
        v2 = *v28;
        v29 = v28[1];
        v31[8] = v41;
        v31[9] = v42;
        v32[0] = v43[0];
        *(v32 + 9) = *(v43 + 9);
        v31[4] = v37;
        v31[5] = v38;
        v31[6] = v39;
        v31[7] = v40;
        v31[0] = v33;
        v31[1] = v34;
        v31[2] = v35;
        v31[3] = v36;
        v30 = nullsub_1(v31);
        sub_26BE00608(*v30, *(v30 + 8));
        sub_26BE69184(v9, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE00608(*(v13 + 5), *(v13 + 6));
        sub_26BE69184(v13, type metadata accessor for MLS.AuthenticatedContent);
        *a1 = v46;
        return v2;
      }

      sub_26BE01654();
      v2 = swift_allocError();
      *v26 = 4;
      v26[112] = 0;
    }

    swift_willThrow();
    sub_26BE69184(v9, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE69184(v13, type metadata accessor for MLS.ValidatedContent);
  }

  return v2;
}

uint64_t MLS.GroupState.resolveByRefProposals(proposals:commitSender:)(uint64_t a1, int *a2)
{
  v71 = a1;
  v3 = *a2;
  v68 = *(a2 + 4);
  v69 = v3;
  v95 = sub_26C0053B4(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for MLS.GroupState();
  v5 = *(v4 + 60);
  v70 = v2;
  v73 = *(v2 + v5);
  v6 = *(v73 + 16);
  if (!v6)
  {
LABEL_16:
    MEMORY[0x28223BE20](v4);
    v64[2] = v70;
    v65 = v69;
    v66 = v68;
    v67 = &v95;
    v62 = sub_26BE5CF64(sub_26BE7014C, v64, v71);

    return v62;
  }

  v7 = 0;
  v8 = (v73 + 48);
  v72 = v6 - 1;
  while (1)
  {
    v74 = v7;
    v80 = *(v8 - 1);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    v81[2] = v8[2];
    v81[3] = v11;
    v81[0] = v9;
    v81[1] = v10;
    v12 = v8[4];
    v13 = v8[5];
    v14 = v8[7];
    v81[6] = v8[6];
    v81[7] = v14;
    v81[4] = v12;
    v81[5] = v13;
    v15 = v8[8];
    v16 = v8[9];
    v17 = v8[10];
    *(v82 + 13) = *(v8 + 173);
    v81[9] = v16;
    v82[0] = v17;
    v81[8] = v15;
    v18 = DWORD2(v82[1]);
    v19 = v80;
    v20 = v8[9];
    v91 = v8[8];
    v92 = v20;
    v93 = v8[10];
    v94 = *(v8 + 22);
    v21 = v8[5];
    v87 = v8[4];
    v88 = v21;
    v22 = v8[7];
    v89 = v8[6];
    v90 = v22;
    v23 = v8[1];
    v83 = *v8;
    v84 = v23;
    v24 = v8[3];
    v85 = v8[2];
    v86 = v24;
    v25 = BYTE12(v82[1]);
    v79 = BYTE12(v82[1]);
    v78 = 1;
    sub_26BE7009C(&v80, v76);
    sub_26BE00608(v19, *(&v19 + 1));
    sub_26BE6FE6C(v81, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v95;
    v75 = v95;
    v96 = v19;
    v28 = sub_26BEBE840(v19, *(&v19 + 1));
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (*(v27 + 24) < v33)
    {
      sub_26BE6BDD0(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_26BEBE840(v96, *(&v19 + 1));
      if ((BYTE8(v19) & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

LABEL_8:
      if (v34)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v52 = v28;
    sub_26BE6F040();
    v28 = v52;
    if (v34)
    {
LABEL_9:
      v36 = v75;
      v37 = v75[7] + 200 * v28;
      v76[0] = *v37;
      v38 = *(v37 + 64);
      v40 = *(v37 + 16);
      v39 = *(v37 + 32);
      v76[3] = *(v37 + 48);
      v76[4] = v38;
      v76[1] = v40;
      v76[2] = v39;
      v41 = *(v37 + 112);
      v43 = *(v37 + 80);
      v42 = *(v37 + 96);
      v76[8] = *(v37 + 128);
      v76[6] = v42;
      v76[7] = v41;
      v76[5] = v43;
      v45 = *(v37 + 160);
      v44 = *(v37 + 176);
      v46 = *(v37 + 144);
      v77 = *(v37 + 192);
      v76[10] = v45;
      v76[11] = v44;
      v76[9] = v46;
      v47 = v92;
      *(v37 + 128) = v91;
      *(v37 + 144) = v47;
      *(v37 + 160) = v93;
      *(v37 + 176) = v94;
      v48 = v88;
      *(v37 + 64) = v87;
      *(v37 + 80) = v48;
      v49 = v90;
      *(v37 + 96) = v89;
      *(v37 + 112) = v49;
      v50 = v84;
      *v37 = v83;
      *(v37 + 16) = v50;
      v51 = v86;
      *(v37 + 32) = v85;
      *(v37 + 48) = v51;
      *(v37 + 184) = v18;
      *(v37 + 188) = v25;
      *(v37 + 190) = 0;
      *(v37 + 192) = 1;
      sub_26BE5CD74(v76);
      sub_26BE700F8(&v80);
      v4 = sub_26BE00258(v96, *(&v19 + 1));
      goto LABEL_13;
    }

LABEL_11:
    v36 = v75;
    v75[(v28 >> 6) + 8] |= 1 << v28;
    v53 = (v36[6] + 16 * v28);
    *v53 = v96;
    v53[1] = *(&v19 + 1);
    v54 = v36[7] + 200 * v28;
    v55 = v86;
    *(v54 + 32) = v85;
    *(v54 + 48) = v55;
    v56 = v84;
    *v54 = v83;
    *(v54 + 16) = v56;
    v57 = v90;
    *(v54 + 96) = v89;
    *(v54 + 112) = v57;
    v58 = v88;
    *(v54 + 64) = v87;
    *(v54 + 80) = v58;
    *(v54 + 176) = v94;
    v59 = v93;
    *(v54 + 144) = v92;
    *(v54 + 160) = v59;
    *(v54 + 128) = v91;
    *(v54 + 184) = v18;
    *(v54 + 188) = v25;
    *(v54 + 190) = 0;
    *(v54 + 192) = 1;
    v4 = sub_26BE700F8(&v80);
    v60 = v36[2];
    v32 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v32)
    {
      goto LABEL_18;
    }

    v36[2] = v61;
LABEL_13:
    v95 = v36;
    if (v72 == v74)
    {
      goto LABEL_16;
    }

    v7 = v74 + 1;
    v8 += 13;
    if ((v74 + 1) >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

uint64_t sub_26BE620A4()
{
  v1 = *v0;
  v64[5] = *(v0 + 88);
  v64[6] = *(v0 + 104);
  v64[7] = *(v0 + 120);
  v64[8] = *(v0 + 136);
  v64[1] = *(v0 + 24);
  v64[2] = *(v0 + 40);
  v64[3] = *(v0 + 56);
  v64[4] = *(v0 + 72);
  v64[0] = *(v0 + 8);
  v65[5] = *(v0 + 88);
  v65[6] = *(v0 + 104);
  v65[7] = *(v0 + 120);
  v65[8] = *(v0 + 136);
  v65[1] = *(v0 + 24);
  v65[2] = *(v0 + 40);
  v65[3] = *(v0 + 56);
  v65[4] = *(v0 + 72);
  v65[0] = *(v0 + 8);
  if (sub_26BE59C80(v65) != 1)
  {
    v3 = *(v1 + 16);
    if (!v3)
    {
      sub_26BE2E1F0(v64, __dst, &qword_28045E8B0, &qword_26C012560);
LABEL_25:
      sub_26BE01654();
      swift_allocError();
      *v28 = 30;
      v28[112] = 0;
      swift_willThrow();
      sub_26BE2E258(v64, &qword_28045E8B0, &qword_26C012560);
      return v0;
    }

    v0 = (v1 + 32);
    v4 = (v1 + 32);
    v5 = *(v1 + 16);
    do
    {
      memmove(__dst, v4, 0xB8uLL);
      if (sub_26BE592C4(__dst) == 1)
      {
        sub_26BE13A3C(__dst);
        sub_26BE01654();
        swift_allocError();
        *v2 = 3;
        goto LABEL_27;
      }

      sub_26BE13A3C(__dst);
      v4 += 184;
      --v5;
    }

    while (v5);
    result = sub_26BE2E1F0(v64, __dst, &qword_28045E8B0, &qword_26C012560);
    v7 = 0;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *v0;
      v9 = v0[1];
      v10 = v0[3];
      v53 = v0[2];
      v54 = v10;
      v51 = v8;
      v52 = v9;
      v11 = v0[4];
      v12 = v0[5];
      v13 = v0[7];
      v57 = v0[6];
      v58 = v13;
      v55 = v11;
      v56 = v12;
      v14 = v0[8];
      v15 = v0[9];
      v16 = v0[10];
      v62 = *(v0 + 22);
      v60 = v15;
      v61 = v16;
      v59 = v14;
      memmove(__dst, v0, 0xB8uLL);
      if (sub_26BE592C4(__dst) != 1)
      {
        break;
      }

      result = sub_26BE13A3C(__dst);
LABEL_9:
      ++v7;
      v0 = (v0 + 184);
      if (v3 == v7)
      {
        goto LABEL_25;
      }
    }

    v17 = sub_26BE13A3C(__dst);
    v18 = *(v17 + 48);
    v20 = *v17;
    v19 = *(v17 + 16);
    v49[2] = *(v17 + 32);
    v49[3] = v18;
    v49[0] = v20;
    v49[1] = v19;
    v21 = *(v17 + 112);
    v23 = *(v17 + 64);
    v22 = *(v17 + 80);
    v49[6] = *(v17 + 96);
    v49[7] = v21;
    v49[4] = v23;
    v49[5] = v22;
    v25 = *(v17 + 144);
    v24 = *(v17 + 160);
    v26 = *(v17 + 128);
    v50 = *(v17 + 176);
    v49[9] = v25;
    v49[10] = v24;
    v49[8] = v26;
    v27 = sub_26BE5CD48(v49);
    if (v27 <= 4)
    {
      if (v27 != 2)
      {
        goto LABEL_23;
      }
    }

    else if (v27 <= 7)
    {
      if (v27 == 6)
      {
LABEL_23:
        result = sub_26BE5CDC8(v49);
        goto LABEL_9;
      }

      if (v27 != 7)
      {
        sub_26BE5CDC8(v49);
        v45[8] = v59;
        v45[9] = v60;
        v45[10] = v61;
        v46 = v62;
        v45[4] = v55;
        v45[5] = v56;
        v45[6] = v57;
        v45[7] = v58;
        v45[0] = v51;
        v45[1] = v52;
        v45[2] = v53;
        v45[3] = v54;
        v29 = sub_26BE13A3C(v45);
        v30 = *(v29 + 48);
        v32 = *v29;
        v31 = *(v29 + 16);
        v47[2] = *(v29 + 32);
        v47[3] = v30;
        v47[0] = v32;
        v47[1] = v31;
        v33 = *(v29 + 112);
        v35 = *(v29 + 64);
        v34 = *(v29 + 80);
        v47[6] = *(v29 + 96);
        v47[7] = v33;
        v47[4] = v35;
        v47[5] = v34;
        v37 = *(v29 + 144);
        v36 = *(v29 + 160);
        v38 = *(v29 + 128);
        v48 = *(v29 + 176);
        v47[9] = v37;
        v47[10] = v36;
        v47[8] = v38;
        if (sub_26BE5CD48(v47) != 5)
        {
          goto LABEL_25;
        }

        v39 = sub_26BE5CDC8(v47);
        v0 = *v39;
        v40 = *(v39 + 8);
        v43[8] = v59;
        v43[9] = v60;
        v43[10] = v61;
        v44 = v62;
        v43[4] = v55;
        v43[5] = v56;
        v43[6] = v57;
        v43[7] = v58;
        v43[0] = v51;
        v43[1] = v52;
        v43[2] = v53;
        v43[3] = v54;
        v41 = sub_26BE13A3C(v43);
        sub_26BE6FE6C(v41, v42);
        sub_26BE2E258(v64, &qword_28045E8B0, &qword_26C012560);
        return v0;
      }
    }

    else if (v27 != 8 && v27 != 9)
    {
      goto LABEL_22;
    }

    sub_26BE5CDC8(v49);
LABEL_22:
    result = sub_26BE7188C(&v51);
    goto LABEL_9;
  }

  sub_26BE01654();
  swift_allocError();
  *v2 = 0;
LABEL_27:
  v2[112] = 7;
  swift_willThrow();
  return v0;
}

__n128 sub_26BE6250C(unsigned __int8 *a1, char *a2)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  v4 = sub_26C009C8C();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.KeySchedule();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v13;
  v14 = type metadata accessor for MLS.GroupState();
  v15 = v2 + v14[11];
  sub_26BE6FEC8(v15, v12, type metadata accessor for MLS.KeySchedule);
  v51 = *v2;
  v16 = *(v2 + 1);
  v52 = *(v2 + 2);
  v50 = *(v2 + 3);
  v17 = *(v2 + 5);
  v18 = *(v2 + 12);
  v19 = *(v2 + 7);
  v80 = v2[16];
  v81 = v17;
  v82 = v18;
  v83 = v19;
  v20 = v84;
  v21 = sub_26BE592D0();
  v84 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  v45 = v15;
  v46 = v8;
  v47 = v7;
  v23 = v2 + v14[9];
  v24 = *(v23 + 1);
  v25 = *(v23 + 2);
  v26 = *(v3 + v14[10]);
  LOWORD(v75) = v51;
  v27 = v52;
  *(&v75 + 1) = v16;
  *&v76 = v52;
  *(&v76 + 1) = v50;
  *&v77 = v21;
  *(&v77 + 1) = v22;
  *&v78 = v24;
  *(&v78 + 1) = v25;
  v79 = v26;
  sub_26BE00608(v21, v22);
  sub_26BE00608(v16, v27);
  sub_26BE00608(v24, v25);

  v28 = v53;
  v29 = v84;
  sub_26BEAFF90(v54, v55, &v75, v53);
  v84 = v29;
  if (v29)
  {
    v58 = v77;
    v59 = v78;
    *&v60 = v79;
    v56 = v75;
    v57 = v76;
    sub_26BE00204(&v56);
LABEL_4:
    sub_26BE69184(v12, type metadata accessor for MLS.KeySchedule);
    return result;
  }

  v73[2] = v77;
  v73[3] = v78;
  v74 = v79;
  v73[0] = v75;
  v73[1] = v76;
  sub_26BE00204(v73);
  sub_26BE69184(v12, type metadata accessor for MLS.KeySchedule);
  v31 = v45;
  sub_26BE71774(v28, v45, type metadata accessor for MLS.KeySchedule);
  v32 = *(v3 + 12);
  if (*v31)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  v65 = v33;
  v64 = v32;
  v34 = &v31[*(v46 + 32)];
  v35 = v47;
  (*(v48 + 16))(v47, v34, v49);
  v36 = v84;
  MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v65, &v64, v35, v66);
  v84 = v36;
  if (!v36)
  {
    v37 = v3 + v14[12];
    v38 = *(v37 + 5);
    v60 = *(v37 + 4);
    v61 = v38;
    v62 = *(v37 + 6);
    v63 = *(v37 + 14);
    v39 = *(v37 + 1);
    v56 = *v37;
    v57 = v39;
    v40 = *(v37 + 3);
    v58 = *(v37 + 2);
    v59 = v40;
    sub_26BE717DC(&v56);
    v41 = v70;
    *(v37 + 4) = v69;
    *(v37 + 5) = v41;
    *(v37 + 6) = v71;
    *(v37 + 14) = v72;
    v42 = v66[1];
    *v37 = v66[0];
    *(v37 + 1) = v42;
    result = v67;
    v43 = v68;
    *(v37 + 2) = v67;
    *(v37 + 3) = v43;
  }

  return result;
}

BOOL sub_26BE628B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v10[8] = *(a1 + 128);
  v10[9] = v3;
  v10[10] = *(a1 + 160);
  v11 = *(a1 + 176);
  v4 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v4;
  v5 = *(a1 + 112);
  v10[6] = *(a1 + 96);
  v10[7] = v5;
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  if (sub_26BE5CD48(v10) != 2)
  {
    return 0;
  }

  v8 = *sub_26BE5CDC8(v10);
  return v8 == *(a2 + *(type metadata accessor for MLS.GroupState() + 52));
}

void *sub_26BE62964@<X0>(__int128 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[9];
  v5 = a1[7];
  v56 = a1[8];
  v57 = v4;
  v6 = a1[9];
  v58 = a1[10];
  v7 = a1[5];
  v8 = a1[3];
  v52 = a1[4];
  v53 = v7;
  v9 = a1[5];
  v10 = a1[7];
  v54 = a1[6];
  v55 = v10;
  v11 = a1[1];
  v48 = *a1;
  v49 = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v50 = a1[2];
  v51 = v12;
  v60[8] = v56;
  v60[9] = v6;
  v60[10] = a1[10];
  v60[4] = v52;
  v60[5] = v9;
  v60[6] = v54;
  v60[7] = v5;
  v60[0] = v14;
  v60[1] = v13;
  v59 = *(a1 + 22);
  v15 = *a2;
  v16 = *(a2 + 4);
  v61 = *(a1 + 22);
  v60[2] = v50;
  v60[3] = v8;
  v17 = sub_26BE5CD48(v60);
  if (v17 == 9)
  {
    sub_26BE5CDC8(v60);
    if (v16)
    {
      sub_26BE01654();
      swift_allocError();
      *v25 = 8;
      v25[112] = 0;
      return swift_willThrow();
    }

    LODWORD(v36) = v15;
    result = sub_26BE71934(&v36);
    v31 = v45;
    *(a3 + 128) = v44;
    *(a3 + 144) = v31;
    *(a3 + 160) = v46;
    *(a3 + 176) = v47;
    v32 = v41;
    *(a3 + 64) = v40;
    *(a3 + 80) = v32;
    v33 = v43;
    *(a3 + 96) = v42;
    *(a3 + 112) = v33;
    v34 = v37;
    *a3 = v36;
    *(a3 + 16) = v34;
    v35 = v39;
    *(a3 + 32) = v38;
    *(a3 + 48) = v35;
    *(a3 + 184) = v15;
    *(a3 + 188) = 0;
    v24 = -4093;
  }

  else
  {
    if (v17 != 8)
    {
      v26 = v57;
      *(a3 + 128) = v56;
      *(a3 + 144) = v26;
      *(a3 + 160) = v58;
      *(a3 + 176) = v59;
      v27 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v27;
      v28 = v55;
      *(a3 + 96) = v54;
      *(a3 + 112) = v28;
      v29 = v49;
      *a3 = v48;
      *(a3 + 16) = v29;
      v30 = v51;
      *(a3 + 32) = v50;
      *(a3 + 48) = v30;
      *(a3 + 184) = v15;
      *(a3 + 188) = v16;
      *(a3 + 190) = 0;
      *(a3 + 192) = 1;
      return sub_26BE6FE6C(&v48, &v36);
    }

    LODWORD(v36) = *sub_26BE5CDC8(v60);
    result = sub_26BE71934(&v36);
    v19 = v45;
    *(a3 + 128) = v44;
    *(a3 + 144) = v19;
    *(a3 + 160) = v46;
    *(a3 + 176) = v47;
    v20 = v41;
    *(a3 + 64) = v40;
    *(a3 + 80) = v20;
    v21 = v43;
    *(a3 + 96) = v42;
    *(a3 + 112) = v21;
    v22 = v37;
    *a3 = v36;
    *(a3 + 16) = v22;
    v23 = v39;
    *(a3 + 32) = v38;
    *(a3 + 48) = v23;
    *(a3 + 184) = v15;
    *(a3 + 188) = v16;
    v24 = -4092;
  }

  *(a3 + 190) = v24;
  *(a3 + 192) = 0;
  return result;
}

uint64_t sub_26BE62BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 144);
  v79[8] = *(a1 + 128);
  v79[9] = v10;
  v79[10] = *(a1 + 160);
  v80 = *(a1 + 176);
  v11 = *(a1 + 80);
  v79[4] = *(a1 + 64);
  v79[5] = v11;
  v12 = *(a1 + 112);
  v79[6] = *(a1 + 96);
  v79[7] = v12;
  v13 = *(a1 + 16);
  v79[0] = *a1;
  v79[1] = v13;
  v14 = *(a1 + 48);
  v79[2] = *(a1 + 32);
  v79[3] = v14;
  if (sub_26BE592C4(v79) == 1)
  {
    v15 = sub_26BE13A3C(v79);
    v16 = *a3;
    if (*(*a3 + 16) && (v17 = sub_26BEBE840(*v15, v15[1]), (v18 & 1) != 0))
    {
      v19 = *(v16 + 56) + 200 * v17;
      v66 = *v19;
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      v22 = *(v19 + 32);
      v67 = *(v19 + 16);
      v68 = v22;
      v69 = v20;
      v70 = v21;
      v23 = *(v19 + 80);
      v24 = *(v19 + 96);
      v25 = *(v19 + 128);
      v73 = *(v19 + 112);
      v74 = v25;
      v71 = v23;
      v72 = v24;
      v26 = *(v19 + 144);
      v27 = *(v19 + 160);
      v28 = *(v19 + 176);
      v78 = *(v19 + 192);
      v76 = v27;
      v77 = v28;
      v75 = v26;
      v29 = *(v19 + 144);
      v62 = *(v19 + 128);
      v63 = v29;
      v64 = *(v19 + 160);
      v65 = *(v19 + 176);
      v30 = *(v19 + 80);
      v58 = *(v19 + 64);
      v59 = v30;
      v31 = *(v19 + 112);
      v60 = *(v19 + 96);
      v61 = v31;
      v32 = *(v19 + 16);
      v54 = *v19;
      v55 = v32;
      v33 = *(v19 + 48);
      v56 = *(v19 + 32);
      v57 = v33;
      v52 = DWORD2(v28);
      v53 = BYTE12(v28);
      sub_26BE62964(&v54, &v52, a5);
      v34 = v5;
      if (!v5)
      {
        v48 = v62;
        v49 = v63;
        v50 = v64;
        v51 = v65;
        v44 = v58;
        v45 = v59;
        v46 = v60;
        v47 = v61;
        v40 = v54;
        v41 = v55;
        v42 = v56;
        v43 = v57;
        sub_26BE5CDE4(&v66, &v38);
        return sub_26BE718E0(&v40);
      }

      v48 = v62;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      sub_26BE5CDE4(&v66, &v38);
      result = sub_26BE718E0(&v40);
    }

    else
    {
      sub_26BE01654();
      v34 = swift_allocError();
      *v37 = 14;
      v37[112] = 3;
      result = swift_willThrow();
    }

    *a4 = v34;
  }

  else
  {
    v36 = sub_26BE13A3C(v79);
    v74 = *(v36 + 128);
    v75 = *(v36 + 144);
    v76 = *(v36 + 160);
    *&v77 = *(v36 + 176);
    v70 = *(v36 + 64);
    v71 = *(v36 + 80);
    v72 = *(v36 + 96);
    v73 = *(v36 + 112);
    v66 = *v36;
    v67 = *(v36 + 16);
    v68 = *(v36 + 32);
    v69 = *(v36 + 48);
    v38 = a2;
    v39 = BYTE4(a2) & 1;
    result = sub_26BE62964(&v66, &v38, a5);
    if (v5)
    {
      *a4 = v5;
    }
  }

  return result;
}

unint64_t MLS.GroupState.CommitType.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BE62ED0()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1 + 1);
  return sub_26C00B0CC();
}

uint64_t sub_26BE62F48()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1 + 1);
  return sub_26C00B0CC();
}

uint64_t MLS.GroupState.CommitOptions.init(commitType:commitTypeOptions:forceIncludePath:skipInlineTree:generateIndividualWelcomes:extraGroupInfoExtensions:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  v13 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  result = sub_26BE70034(a2, &a7[v13[5]], type metadata accessor for MLS.GroupState.CommitTypeOptions);
  a7[v13[6]] = a3;
  a7[v13[7]] = a4;
  a7[v13[8]] = a5;
  *&a7[v13[9]] = a6;
  return result;
}

uint64_t MLS.GroupState.ApplicationMessageOptions.init(authenticatedData:paddingSize:secretPayloadType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 2);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 26) = v6;
  return result;
}

double MLS.GroupState.ApplicationMessageOptions.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26C00BBD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 1;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.welcomeMessages.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 20));
}

uint64_t MLS.GroupState.CommitOutput.welcomeMessages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.stateUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  v9 = v3[5];
  LOBYTE(v3) = *(v3 + 48);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v3;
}

__n128 MLS.GroupState.CommitOutput.stateUpdate.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 28));
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];

  result = *a1;
  v12 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v12;
  *(v6 + 32) = v3;
  v6[5] = v4;
  *(v6 + 48) = v5;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.commitMetadata.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 32));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_26BE6FF30(v20, &v19);
}

__n128 MLS.GroupState.CommitOutput.commitMetadata.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for MLS.GroupState.CommitOutput(0) + 32));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_26BE6FF8C(v14);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t MLS.GroupState.CommitOutput.newStateAndCommitMetadata.getter(uint64_t a1, _OWORD *a2)
{
  v5 = type metadata accessor for MLS.GroupState.CommitOutput(0);
  sub_26BE6FEC8(v2 + *(v5 + 24), a1, type metadata accessor for MLS.GroupState);
  v6 = (v2 + *(v5 + 32));
  v7 = v6[7];
  v8 = v6[9];
  v30 = v6[8];
  v31 = v8;
  v9 = v6[9];
  v32 = v6[10];
  v10 = v6[3];
  v11 = v6[5];
  v26 = v6[4];
  v12 = v26;
  v27 = v11;
  v13 = v6[5];
  v14 = v6[7];
  v28 = v6[6];
  v15 = v28;
  v29 = v14;
  v16 = v6[1];
  v17 = v6[3];
  v24 = v6[2];
  v18 = v24;
  v25 = v17;
  v19 = v6[1];
  v23[0] = *v6;
  v20 = v23[0];
  v23[1] = v19;
  a2[8] = v30;
  a2[9] = v9;
  a2[10] = v6[10];
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v15;
  a2[7] = v7;
  *a2 = v20;
  a2[1] = v16;
  a2[2] = v18;
  a2[3] = v10;
  return sub_26BE6FF30(v23, &v22);
}

__n128 MLS.LeafNodeUpdate.init(newCredential:newSignaturePrivateKey:newLeafNodeCapabilities:newLeafNodeExtensions:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a3 + 32);
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 16) = 0u;
  v12 = a5 + 16;
  sub_26BE7162C(0, 0x3000000000000000uLL);
  *a5 = v9;
  *(a5 + 8) = v10;
  sub_26BE7170C(a2, v12, &qword_28045E468, &qword_26C00ECA0);
  v13 = *(a5 + 64);
  v14 = *(a5 + 72);
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  sub_26BE701EC(*(a5 + 56));
  result = *a3;
  *(a5 + 72) = *(a3 + 16);
  *(a5 + 56) = result;
  *(a5 + 88) = v11;
  *(a5 + 96) = a4;
  return result;
}

uint64_t MLS.GroupState.commit(newProposals:commitOptions:messageOptions:leafNodeUpdate:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = sub_26C009C8C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v5;
  if ((v18 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v29 = a5;
    v30 = a1;
    v31 = a2;
    v32 = a4;
    v33 = v15;
    v19 = *a3;
    v21 = *(a3 + 1);
    v20 = *(a3 + 2);
    v27 = *(a3 + 3);
    v28 = v20;
    v22 = v18 != 1;
    v35[0] = v18 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v35, &v37);
    v34 = v22;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v34, v35);
    v23 = v36;

    v24 = sub_26BE1264C(v23);
    v26 = v25;

    if (!v6)
    {
      v37 = v24;
      v38 = v26;
      sub_26BE00608(v24, v26);
      sub_26C009C5C();
      LOBYTE(v37) = v19;
      v38 = v21;
      v39 = v28;
      v40 = v27;
      sub_26BE638EC(v30, v17, v31, &v37, v32, v29);
      (*(v33 + 8))(v17, v12);
      return sub_26BE00258(v24, v26);
    }
  }

  return result;
}

uint64_t sub_26BE638EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, unsigned __int8 *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v485 = a1;
  v477 = a5;
  v484 = a3;
  v471 = a2;
  v444 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A8, &qword_26C012558);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v446 = &v428 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v449 = &v428 - v12;
  v447 = type metadata accessor for MLS.GroupInfo();
  v13 = *(*(v447 - 8) + 64);
  MEMORY[0x28223BE20](v447);
  v450 = &v428 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MLS.MLSMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v451 = &v428 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v462 = *(v460 - 8);
  v18 = *(v462 + 64);
  MEMORY[0x28223BE20](v460);
  v455 = &v428 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MLS.FramedContentAuthData();
  v466 = *(v20 - 8);
  v467 = v20;
  v21 = *(v466 + 64);
  MEMORY[0x28223BE20](v20);
  v458 = &v428 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v469 = (&v428 - v25);
  v465 = type metadata accessor for MLS.AuthenticatedContent();
  v26 = *(*(v465 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v465 - 8);
  v452 = (&v428 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v453 = &v428 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v459 = &v428 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v468 = &v428 - v34;
  MEMORY[0x28223BE20](v33);
  v461 = &v428 - v35;
  v456 = type metadata accessor for MLS.TreeKEMPrivateKey();
  v36 = *(*(v456 - 8) + 64);
  MEMORY[0x28223BE20](v456);
  v470 = &v428 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = sub_26C009C8C();
  v479 = *(v482 - 8);
  v38 = *(v479 + 64);
  v39 = MEMORY[0x28223BE20](v482);
  v454 = &v428 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v457 = &v428 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v476 = &v428 - v44;
  MEMORY[0x28223BE20](v43);
  v478 = &v428 - v45;
  v46 = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v480 = (&v428 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v463 = *(v49 - 8);
  v50 = *(v463 + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v445 = &v428 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v448 = &v428 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v464 = (&v428 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v474 = &v428 - v58;
  MEMORY[0x28223BE20](v57);
  v481 = &v428 - v59;
  v60 = type metadata accessor for MLS.GroupState();
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60);
  v483 = (&v428 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v472) = *a4;
  v64 = *(a4 + 2);
  v475 = *(a4 + 1);
  v473 = v64;
  v487 = v62;
  v65 = *(v62 + 60);
  v571 = v6;
  v66 = *(v6 + v65);
  v67 = *(v66 + 16);
  if (v67)
  {
    v68 = (v66 + 32);
    v69 = MEMORY[0x277D84F90];
    do
    {
      v547[0] = *v68;
      v70 = v68[1];
      v71 = v68[2];
      v72 = v68[4];
      v547[3] = v68[3];
      v547[4] = v72;
      v547[1] = v70;
      v547[2] = v71;
      v73 = v68[5];
      v74 = v68[6];
      v75 = v68[8];
      v547[7] = v68[7];
      v547[8] = v75;
      v547[5] = v73;
      v547[6] = v74;
      v76 = v68[9];
      v77 = v68[10];
      v78 = v68[11];
      *(v549 + 13) = *(v68 + 189);
      v548 = v77;
      v549[0] = v78;
      v547[9] = v76;
      v79 = v547[0];
      sub_26BE7009C(v547, v569);
      sub_26BE00608(v79, *(&v79 + 1));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_26BEED63C(0, *(v69 + 2) + 1, 1, v69);
      }

      v80 = v69;
      v81 = *(v69 + 2);
      v82 = v80;
      v83 = *(v80 + 3);
      if (v81 >= v83 >> 1)
      {
        v82 = sub_26BEED63C((v83 > 1), v81 + 1, 1, v82);
      }

      sub_26BE700F8(v547);
      v569[0] = v79;
      sub_26BE714E8(v569);
      *(v82 + 2) = v81 + 1;
      v84 = &v82[184 * v81];
      v69 = v82;
      v85 = v569[0];
      v86 = v569[1];
      v87 = v569[3];
      *(v84 + 4) = v569[2];
      *(v84 + 5) = v87;
      *(v84 + 2) = v85;
      *(v84 + 3) = v86;
      v88 = v569[4];
      v89 = v569[5];
      v90 = v569[7];
      *(v84 + 8) = v569[6];
      *(v84 + 9) = v90;
      *(v84 + 6) = v88;
      *(v84 + 7) = v89;
      v91 = v569[8];
      v92 = v569[9];
      v93 = v570[0];
      *(v84 + 26) = *&v570[1];
      *(v84 + 11) = v92;
      *(v84 + 12) = v93;
      *(v84 + 10) = v91;
      v68 += 13;
      --v67;
    }

    while (v67);
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v94 = *(v485 + 16);
  if (v94)
  {
    v95 = v485 + 32;
    do
    {
      v96 = *(v95 + 144);
      v547[8] = *(v95 + 128);
      v547[9] = v96;
      v548 = *(v95 + 160);
      *&v549[0] = *(v95 + 176);
      v97 = *(v95 + 80);
      v547[4] = *(v95 + 64);
      v547[5] = v97;
      v98 = *(v95 + 112);
      v547[6] = *(v95 + 96);
      v547[7] = v98;
      v99 = *(v95 + 16);
      v547[0] = *v95;
      v547[1] = v99;
      v100 = *(v95 + 48);
      v547[2] = *(v95 + 32);
      v547[3] = v100;
      sub_26BE6FE6C(v547, v569);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_26BEED63C(0, *(v69 + 2) + 1, 1, v69);
      }

      v102 = *(v69 + 2);
      v101 = *(v69 + 3);
      if (v102 >= v101 >> 1)
      {
        v69 = sub_26BEED63C((v101 > 1), v102 + 1, 1, v69);
      }

      v569[8] = v547[8];
      v569[9] = v547[9];
      v570[0] = v548;
      *&v570[1] = *&v549[0];
      v569[4] = v547[4];
      v569[5] = v547[5];
      v569[6] = v547[6];
      v569[7] = v547[7];
      v569[0] = v547[0];
      v569[1] = v547[1];
      v569[2] = v547[2];
      v569[3] = v547[3];
      sub_26BE714FC(v569);
      *(v69 + 2) = v102 + 1;
      v103 = &v69[184 * v102];
      v104 = v569[0];
      v105 = v569[1];
      v106 = v569[3];
      *(v103 + 4) = v569[2];
      *(v103 + 5) = v106;
      *(v103 + 2) = v104;
      *(v103 + 3) = v105;
      v107 = v569[4];
      v108 = v569[5];
      v109 = v569[7];
      *(v103 + 8) = v569[6];
      *(v103 + 9) = v109;
      *(v103 + 6) = v107;
      *(v103 + 7) = v108;
      v110 = v569[8];
      v111 = v569[9];
      v112 = v570[0];
      *(v103 + 26) = *&v570[1];
      *(v103 + 11) = v111;
      *(v103 + 12) = v112;
      *(v103 + 10) = v110;
      v95 += 184;
      --v94;
    }

    while (v94);
  }

  v113 = v486;
  v114 = *(v487 + 13);
  LODWORD(v547[0]) = *(v571 + v114);
  BYTE4(v547[0]) = 0;
  v115 = MLS.GroupState.resolveByRefProposals(proposals:commitSender:)(v69, v547);
  if (v113)
  {
  }

  v443 = v114;
  v486 = 0;
  v117 = *(v115 + 16);
  v118 = MEMORY[0x277D84F90];
  v485 = v115;
  if (v117)
  {
    v119 = v115 + 32;
    do
    {
      v547[0] = *v119;
      v130 = *(v119 + 16);
      v131 = *(v119 + 32);
      v132 = *(v119 + 64);
      v547[3] = *(v119 + 48);
      v547[4] = v132;
      v547[1] = v130;
      v547[2] = v131;
      v133 = *(v119 + 80);
      v134 = *(v119 + 96);
      v135 = *(v119 + 128);
      v547[7] = *(v119 + 112);
      v547[8] = v135;
      v547[5] = v133;
      v547[6] = v134;
      v136 = *(v119 + 144);
      v137 = *(v119 + 160);
      v138 = *(v119 + 176);
      LOBYTE(v549[1]) = *(v119 + 192);
      v548 = v137;
      v549[0] = v138;
      v547[9] = v136;
      v139 = *v119;
      v140 = *(v119 + 16);
      v141 = *(v119 + 48);
      v490[2] = *(v119 + 32);
      v490[3] = v141;
      v490[0] = v139;
      v490[1] = v140;
      v142 = *(v119 + 64);
      v143 = *(v119 + 80);
      v144 = *(v119 + 112);
      v490[6] = *(v119 + 96);
      v490[7] = v144;
      v490[4] = v142;
      v490[5] = v143;
      v145 = *(v119 + 128);
      v146 = *(v119 + 144);
      v147 = *(v119 + 160);
      *&v491[1] = *(v119 + 176);
      v490[9] = v146;
      v491[0] = v147;
      v490[8] = v145;
      if (!sub_26BE5CD48(v490))
      {
        v148 = sub_26BE5CDC8(v490);
        sub_26BE5CDE4(v547, v569);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_26BEED510(0, *(v118 + 2) + 1, 1, v118);
        }

        v150 = *(v118 + 2);
        v149 = *(v118 + 3);
        v151 = v118;
        if (v150 >= v149 >> 1)
        {
          v151 = sub_26BEED510((v149 > 1), v150 + 1, 1, v118);
        }

        *(v151 + 2) = v150 + 1;
        v118 = v151;
        v120 = &v151[184 * v150];
        v121 = *v148;
        v122 = *(v148 + 16);
        v123 = *(v148 + 48);
        *(v120 + 4) = *(v148 + 32);
        *(v120 + 5) = v123;
        *(v120 + 2) = v121;
        *(v120 + 3) = v122;
        v124 = *(v148 + 64);
        v125 = *(v148 + 80);
        v126 = *(v148 + 112);
        *(v120 + 8) = *(v148 + 96);
        *(v120 + 9) = v126;
        *(v120 + 6) = v124;
        *(v120 + 7) = v125;
        v127 = *(v148 + 128);
        v128 = *(v148 + 144);
        v129 = *(v148 + 160);
        *(v120 + 26) = *(v148 + 176);
        *(v120 + 11) = v128;
        *(v120 + 12) = v129;
        *(v120 + 10) = v127;
      }

      v119 += 200;
      --v117;
    }

    while (v117);
  }

  if (*v484 == 1)
  {
    v155 = v486;
    MLS.GroupState.validateForExternalCommit(proposals:)(v485, v547);
    if (!v155)
    {
      if (LOBYTE(v547[0]) != 1)
      {

        sub_26BE01654();
        swift_allocError();
        v154 = 20;
        goto LABEL_47;
      }

      goto LABEL_36;
    }

LABEL_34:
  }

  v152 = v486;
  if (*v484)
  {
    goto LABEL_37;
  }

  LODWORD(v547[0]) = *(v571 + v443);
  MLS.GroupState.validateForNormalCommit(proposals:commitSender:)(v485, v547, v569);
  if (v152)
  {
    goto LABEL_34;
  }

  if (LOBYTE(v569[0]))
  {

    sub_26BE01654();
    swift_allocError();
    v154 = 12;
LABEL_47:
    *v153 = v154;
    v153[112] = 3;
    return swift_willThrow();
  }

LABEL_36:
  v486 = 0;
LABEL_37:
  sub_26BE7150C(&v560);
  v557 = v566;
  v558 = v567;
  v559 = v568;
  v553 = v562;
  v554 = v563;
  v555 = v564;
  v556 = v565;
  v551 = v560;
  v552 = v561;
  v156 = v571;
  v157 = v483;
  sub_26BE6FEC8(v571, v483, type metadata accessor for MLS.GroupState);
  v158 = *(v487 + 15);
  v159 = *(v157 + v158);

  *(v157 + v158) = MEMORY[0x277D84F90];
  v160 = v486;
  v161 = sub_26BE5BDA4(v485);
  v486 = v160;
  if (v160)
  {

LABEL_39:

    v162 = v157;
LABEL_40:
    sub_26BE69184(v162, type metadata accessor for MLS.GroupState);
    *(&v547[5] + 8) = v556;
    *(&v547[6] + 8) = v557;
    *(&v547[7] + 8) = v558;
    *(&v547[8] + 8) = v559;
    *(&v547[1] + 8) = v552;
    *(&v547[2] + 8) = v553;
    *(&v547[3] + 8) = v554;
    *(&v547[4] + 8) = v555;
    *&v547[0] = v69;
    *(v547 + 8) = v551;
    v163 = v547;
    return sub_26BE71528(v163);
  }

  v442 = v161;

  LODWORD(v441) = *(v156 + v443);
  v164 = v479;
  v439 = *(v479 + 56);
  v440 = v479 + 56;
  v439(v481, 1, 1, v482);
  v165 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v166 = v480;
  sub_26BE6FEC8(&v484[*(v165 + 20)], v480, type metadata accessor for MLS.GroupState.CommitTypeOptions);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  v168 = (*(*(v167 - 8) + 48))(v166, 3, v167);
  if (v168 == 1)
  {
    v437 = v165;
    v177 = 0;
    v178 = v482;
    v179 = v486;
    v180 = v441;
  }

  else
  {
    v169 = v486;
    if (v168)
    {

      sub_26BE01654();
      swift_allocError();
      *v181 = 0xD000000000000036;
      *(v181 + 8) = 0x800000026C02B370;
      *(v181 + 112) = 2;
      swift_willThrow();
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
      sub_26BE69184(v480, type metadata accessor for MLS.GroupState.CommitTypeOptions);
LABEL_56:
      v188 = v483;
      goto LABEL_57;
    }

    v437 = v165;
    v438 = v118;
    v170 = *(v480 + 7);
    v547[6] = *(v480 + 6);
    v547[7] = v170;
    v171 = *(v480 + 5);
    v547[4] = *(v480 + 4);
    v547[5] = v171;
    *&v549[0] = v480[22];
    v172 = *(v480 + 10);
    v547[9] = *(v480 + 9);
    v548 = v172;
    v547[8] = *(v480 + 8);
    v173 = *(v480 + 1);
    v547[0] = *v480;
    v547[1] = v173;
    v174 = *(v480 + 3);
    v547[2] = *(v480 + 2);
    v547[3] = v174;
    v175 = v480 + *(v167 + 48);
    v480 = *(v164 + 32);
    (v480)(v478, v175, v482);
    v490[6] = *(&v547[7] + 8);
    v490[7] = *(&v547[8] + 8);
    *&v490[8] = *(&v547[9] + 1);
    v490[2] = *(&v547[3] + 8);
    v490[3] = *(&v547[4] + 8);
    v490[4] = *(&v547[5] + 8);
    v490[5] = *(&v547[6] + 8);
    v490[0] = *(&v547[1] + 8);
    v490[1] = *(&v547[2] + 8);
    sub_26BE00758(&v547[1] + 8, v569);
    v176 = v483;
    MLS.TreeKEMPublicKey.addLeaf(_:)(v490, v492);
    if (v169)
    {

      sub_26BE2E01C(v547);

      (*(v164 + 8))(v478, v482);
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);

      sub_26BE00854(&v547[1] + 8);
      sub_26BE69184(v176, type metadata accessor for MLS.GroupState);
      *(&v569[5] + 8) = v556;
      *(&v569[6] + 8) = v557;
      *(&v569[7] + 8) = v558;
      *(&v569[8] + 8) = v559;
      *(&v569[1] + 8) = v552;
      *(&v569[2] + 8) = v553;
      *(&v569[3] + 8) = v554;
      *(&v569[4] + 8) = v555;
      *&v569[0] = v69;
      *(v569 + 8) = v551;
      return sub_26BE71528(v569);
    }

    v182 = v481;
    sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
    sub_26BE2E01C(v547);
    sub_26BE00854(&v547[1] + 8);
    *(v176 + *(v487 + 13)) = v492[0];
    v178 = v482;
    (v480)(v182, v478, v482);
    v439(v182, 0, 1, v178);
    v177 = 2;
    v179 = 0;
    v180 = 1;
    v118 = v438;
  }

  if (*(v118 + 2) != *(v442 + 16))
  {

    sub_26BE01654();
    swift_allocError();
    *v187 = 13;
    v187[112] = 0;
    swift_willThrow();
    sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
    goto LABEL_56;
  }

  LODWORD(v478) = v177;
  LODWORD(v441) = v180;
  v183 = _s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(v485);
  v184 = v474;
  v439(v474, 1, 1, v178);
  v185 = sub_26BE67C10(v184, *(v118 + 2));
  v438 = v118;
  v480 = v185;
  if ((v183 & 1) == 0)
  {

    v547[6] = v557;
    v547[7] = v558;
    v547[8] = v559;
    v547[2] = v553;
    v547[3] = v554;
    v547[4] = v555;
    v547[5] = v556;
    v547[0] = v551;
    v547[1] = v552;
    sub_26BE2E258(v547, &qword_28045E8B0, &qword_26C012560);
    v557 = v566;
    v558 = v567;
    v559 = v568;
    v553 = v562;
    v554 = v563;
    v555 = v564;
    v556 = v565;
    v190 = *v571;
    v551 = v560;
    v552 = v561;
    if ((v190 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
      goto LABEL_122;
    }

    v486 = v179;
    LOBYTE(v490[0]) = v190 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v490, v569);
    v191 = *(&v569[0] + 1);

    *&v569[0] = sub_26BE125AC(v191);
    *(&v569[0] + 1) = v192;
    sub_26C009C5C();
LABEL_61:
    *&v546[104] = v557;
    *&v546[88] = v556;
    *&v546[40] = v553;
    *&v546[24] = v552;
    *&v546[120] = v558;
    *&v546[136] = v559;
    *&v546[56] = v554;
    v474 = v69;
    *v546 = v69;
    *&v546[72] = v555;
    *&v546[8] = v551;
    v569[6] = *&v546[96];
    v569[7] = *&v546[112];
    v569[8] = *&v546[128];
    *&v569[9] = *(&v559 + 1);
    v569[2] = *&v546[32];
    v569[3] = *&v546[48];
    v569[4] = *&v546[64];
    v569[5] = *&v546[80];
    v569[0] = *v546;
    v569[1] = *&v546[16];
    sub_26BE7157C(v569);
    v193 = v571;
    v194 = *(v571 + 1);
    v195 = *(v571 + 2);
    v196 = *(v571 + 3);
    v547[9] = v569[6];
    v548 = v569[7];
    v547[7] = v569[4];
    v547[8] = v569[5];
    *(v550 + 9) = *(v570 + 9);
    v549[1] = v569[9];
    v550[0] = v570[0];
    v549[0] = v569[8];
    v547[3] = v569[0];
    v547[4] = v569[1];
    v547[5] = v569[2];
    v547[6] = v569[3];
    v470 = v196;
    v471 = v194;
    *&v547[0] = v194;
    *(&v547[0] + 1) = v195;
    *&v547[1] = v196;
    DWORD2(v547[1]) = v441;
    BYTE12(v547[1]) = v478;
    v197 = v473;
    *&v547[2] = v475;
    *(&v547[2] + 1) = v473;
    if (v472)
    {
      v198 = 2;
    }

    else
    {
      v198 = 1;
    }

    LODWORD(v463) = v198;
    v199 = v487;
    sub_26BE038A8(v571 + *(v487 + 14), v543);
    LODWORD(v464) = *v193;
    v200 = *(v193 + 1);
    v477 = *(v193 + 2);
    v478 = v200;
    v201 = *(v193 + 5);
    v202 = *(v193 + 12);
    v203 = *(v193 + 7);
    LOWORD(v538) = v193[16];
    v540 = v201;
    v541 = v202;
    v542 = v203;
    v204 = v486;
    v205 = sub_26BE592D0();
    if (v204)
    {
      sub_26BE71588(v546, v490);
      sub_26BE71588(v546, v490);
      sub_26BE00608(v471, v195);
      sub_26BE00608(v475, v197);
      v207 = v477;
      v208 = v478;
      sub_26BE00608(v478, v477);

      sub_26BE71494(v547);
      sub_26BE00258(v208, v207);
      sub_26BE71528(v546);
      (*(v479 + 8))(v476, v482);
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
LABEL_66:
      v209 = v483;
LABEL_90:
      __swift_destroy_boxed_opaque_existential_1(v543);
      v276 = v474;

      sub_26BE69184(v209, type metadata accessor for MLS.GroupState);
      *(&v490[5] + 8) = v556;
      *(&v490[6] + 8) = v557;
      *(&v490[7] + 8) = v558;
      *(&v490[8] + 8) = v559;
      *(&v490[1] + 8) = v552;
      *(&v490[2] + 8) = v553;
      *(&v490[3] + 8) = v554;
      *(&v490[4] + 8) = v555;
      *&v490[0] = v276;
      *(v490 + 8) = v551;
      return sub_26BE71528(v490);
    }

    v456 = v195;
    v210 = v193 + *(v199 + 9);
    v212 = *(v210 + 1);
    v211 = *(v210 + 2);
    v213 = *(v193 + *(v199 + 10));
    LOWORD(v528) = v464;
    *(&v528 + 1) = v478;
    *&v529 = v477;
    *(&v529 + 1) = v470;
    *&v530 = v205;
    v464 = v205;
    v470 = v206;
    *(&v530 + 1) = v206;
    *&v531 = v212;
    *(&v531 + 1) = v211;
    v532 = v213;
    v533 = v528;
    v535 = v530;
    v536 = v531;
    v537 = v213;
    v534 = v529;
    v214 = v466;
    v215 = v467;
    v216 = v465;
    v441 = v212;
    v442 = v211;
    if ((v472 & 1) == 0)
    {
      v217 = v478;
      v490[8] = v549[0];
      v490[9] = v549[1];
      v491[0] = v550[0];
      *(v491 + 9) = *(v550 + 9);
      v490[4] = v547[7];
      v490[5] = v547[8];
      v490[6] = v547[9];
      v490[7] = v548;
      v490[0] = v547[3];
      v490[1] = v547[4];
      v490[2] = v547[5];
      v490[3] = v547[6];
      if (!sub_26BE6917C(v490))
      {
        nullsub_1(v490);
        sub_26BE71588(v546, v492);
        sub_26BE71588(v546, v492);
        sub_26BE00608(v471, v456);
        sub_26BE00608(v475, v473);
        sub_26BE00608(v217, v477);
        sub_26BE00608(v464, v470);
        sub_26BE00608(v441, v442);

        sub_26BE01654();
        swift_allocError();
        *v254 = 7;
        *(v254 + 8) = 0u;
        *(v254 + 24) = 0u;
        *(v254 + 40) = 0u;
        *(v254 + 56) = 0u;
        *(v254 + 72) = 0u;
        *(v254 + 88) = 0u;
        *(v254 + 104) = 0;
        *(v254 + 112) = 23;
        swift_willThrow();
        sub_26BE71494(v547);
        sub_26BE00204(&v528);
        sub_26BE71528(v546);
        (*(v479 + 8))(v476, v482);
        sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
        goto LABEL_66;
      }

      nullsub_1(v490);
    }

    v486 = 0;
    v256 = *(v214 + 56);
    v255 = v214 + 56;
    v256(v469, 1, 1, v215);
    v257 = *(v216 + 24);
    v258 = v468;
    v472 = v256;
    v256(&v257[v468], 1, 1, v215);
    v259 = v548;
    *(v258 + 184) = v549[0];
    v260 = v550[0];
    *(v258 + 200) = v549[1];
    *(v258 + 216) = v260;
    *(v258 + 225) = *(v550 + 9);
    v261 = v547[6];
    *(v258 + 120) = v547[7];
    v262 = v547[9];
    *(v258 + 136) = v547[8];
    *(v258 + 152) = v262;
    *(v258 + 168) = v259;
    v263 = v547[2];
    *(v258 + 56) = v547[3];
    v264 = v547[5];
    *(v258 + 72) = v547[4];
    *(v258 + 88) = v264;
    *(v258 + 104) = v261;
    v265 = v547[1];
    *(v258 + 8) = v547[0];
    *(v258 + 24) = v265;
    *v258 = v463;
    *(v258 + 40) = v263;
    sub_26BE71588(v546, v490);
    sub_26BE71588(v546, v490);
    sub_26BE00608(v471, v456);
    sub_26BE00608(v475, v473);
    sub_26BE00608(v478, v477);
    sub_26BE00608(v464, v470);
    sub_26BE00608(v441, v442);

    v478 = v257;
    sub_26BE7170C(v469, &v257[v258], &qword_28045E4E0, &qword_26C015A80);
    v490[2] = v535;
    v490[3] = v536;
    *&v490[4] = v537;
    v490[0] = v533;
    v490[1] = v534;
    v266 = v486;
    v267 = sub_26BF9D0DC(v490);
    if (v266)
    {

      sub_26BE71528(v546);
      (*(v479 + 8))(v476, v482);
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
      sub_26BE00204(&v528);
      sub_26BE69184(v258, type metadata accessor for MLS.AuthenticatedContent);
      v209 = v483;
      goto LABEL_90;
    }

    v269 = v267;
    v270 = v268;
    v477 = v255;
    v271 = v544;
    v272 = v545;
    __swift_project_boxed_opaque_existential_1(v543, v544);
    v273 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0xD000000000000010, 0x800000026C02B350, v269, v270, v271, v272);
    v275 = v479;
    v486 = 0;
    v277 = v273;
    v278 = v274;
    sub_26BE71528(v546);
    sub_26BE00204(&v528);
    sub_26BE00258(v269, v270);
    v279 = v467;
    v280 = *(v462 + 56);
    v281 = v458;
    v282 = &v458[*(v467 + 20)];
    v462 += 56;
    v280(v282, 1, 1, v460);
    *v281 = v277;
    v281[1] = v278;
    v283 = v468;
    v284 = v478;
    sub_26BE2E258(&v478[v468], &qword_28045E4E0, &qword_26C015A80);
    sub_26BE70034(v281, &v284[v283], type metadata accessor for MLS.FramedContentAuthData);
    (v472)(&v284[v283], 0, 1, v279);
    v285 = v461;
    sub_26BE6FEC8(v283, v461, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE69184(v283, type metadata accessor for MLS.AuthenticatedContent);
    __swift_destroy_boxed_opaque_existential_1(v543);
    v286 = v459;
    sub_26BE6FEC8(v285, v459, type metadata accessor for MLS.AuthenticatedContent);
    v287 = v486;
    v288 = v483;
    v289 = v483 + *(v487 + 9);
    sub_26BE2E86C();
    if (v287)
    {

      sub_26BE69184(v286, type metadata accessor for MLS.AuthenticatedContent);
      (*(v275 + 8))(v476, v482);
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
      v290 = v474;

      sub_26BE69184(v285, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v288, type metadata accessor for MLS.GroupState);
      *(&v490[5] + 8) = v556;
      *(&v490[6] + 8) = v557;
      *(&v490[7] + 8) = v558;
      *(&v490[8] + 8) = v559;
      *(&v490[1] + 8) = v552;
      *(&v490[2] + 8) = v553;
      *(&v490[3] + 8) = v554;
      *(&v490[4] + 8) = v555;
      *&v490[0] = v290;
      *(v490 + 8) = v551;
      return sub_26BE71528(v490);
    }

    v486 = v280;
    v478 = v289;
    sub_26BE69184(v286, type metadata accessor for MLS.AuthenticatedContent);
    v294 = *(v288 + 3);
    v295 = __OFADD__(v294, 1);
    v296 = v294 + 1;
    if (v295)
    {
      __break(1u);
LABEL_144:
      if (*(v438 + 2))
      {
        LOWORD(v515) = v471;
        v378 = v472;
        *(&v515 + 1) = MEMORY[0x277D84F90];
        *&v516 = v472;
        v379 = v475;
        *(&v516 + 1) = v475;
        *v513 = v438;
        *&v513[8] = 0;
        *&v513[16] = v480;
        *&v513[24] = 0;
        v513[32] = 0;
        sub_26BE00608(v472, v475);

        sub_26BE00608(v378, v379);
        while (1)
        {
          v380 = v446;
          sub_26BE685D4(v446);
          v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
          if ((*(*(v381 - 8) + 48))(v380, 1, v381) == 1)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C8, &qword_26C012570);
            v400 = swift_allocObject();
            *(v400 + 16) = xmmword_26C011280;
            v401 = *(&v515 + 1);
            v402 = v516;
            *(v400 + 32) = v515;
            *(v400 + 40) = v401;
            *(v400 + 48) = v402;
            v487 = v400;
            *(v400 + 56) = *(&v402 + 1);

            sub_26BE00608(v402, *(&v402 + 1));

            sub_26BE00258(v402, *(&v402 + 1));
            goto LABEL_158;
          }

          v382 = *(v446 + 144);
          v490[8] = *(v446 + 128);
          v490[9] = v382;
          v491[0] = *(v446 + 160);
          *&v491[1] = *(v446 + 176);
          v383 = *(v446 + 80);
          v490[4] = *(v446 + 64);
          v490[5] = v383;
          v384 = *(v446 + 112);
          v490[6] = *(v446 + 96);
          v490[7] = v384;
          v385 = *(v446 + 16);
          v490[0] = *v446;
          v490[1] = v385;
          v386 = *(v446 + 48);
          v490[2] = *(v446 + 32);
          v490[3] = v386;
          v387 = v445;
          sub_26BE33F30(v446 + *(v381 + 48), v445, &qword_28045E708, &unk_26C011370);
          v499 = v490[8];
          v500 = v490[9];
          v501 = v491[0];
          v502 = *&v491[1];
          v495 = v490[4];
          v496 = v490[5];
          v497 = v490[6];
          v498 = v490[7];
          v492[0] = v490[0];
          v492[1] = v490[1];
          v493 = v490[2];
          v494 = v490[3];
          v388 = v486;
          sub_26BF2AA34(v492, &v478[v477], v387, MEMORY[0x277D84F90]);
          v486 = v388;
          if (v388)
          {
            break;
          }

          sub_26BE2E258(v445, &qword_28045E708, &unk_26C011370);
          sub_26BE2E01C(v490);
        }

        v409 = v472;
        v410 = v475;
        sub_26BE00258(v472, v475);
        sub_26BE00258(v409, v410);
        sub_26BE2E258(v445, &qword_28045E708, &unk_26C011370);

        v411 = v516;

        sub_26BE00258(v411, *(&v411 + 1));
        sub_26BE69184(v451, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
        v473(v476, v482);
        sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
        goto LABEL_162;
      }

      sub_26BE00608(v472, v475);

      v487 = MEMORY[0x277D84F90];
LABEL_158:
      v403 = *(v571 + v443);
      v521 = v557;
      v522 = v558;
      v523 = v559;
      v517 = v553;
      v518 = v554;
      v519 = v555;
      v520 = v556;
      v515 = v551;
      v516 = v552;
      LOWORD(v488) = *v571;
      sub_26BE2E1F0(&v515, v490, &qword_28045E8B0, &qword_26C012560);
      v404 = v486;
      v405 = sub_26BF2F140(&v488);
      if (!v404)
      {
        *&v513[35] = v517;
        *&v513[19] = v516;
        *&v513[99] = v521;
        *&v513[83] = v520;
        *&v513[115] = v522;
        *&v513[131] = v523;
        *&v513[51] = v518;
        v514 = 0;
        *&v513[67] = v519;
        *&v513[3] = v515;
        *&v490[0] = v485;
        DWORD2(v490[0]) = v403;
        BYTE12(v490[0]) = 0;
        *(&v490[7] + 13) = *&v513[112];
        *(&v490[6] + 13) = *&v513[96];
        *(&v490[8] + 13) = *&v513[128];
        HIDWORD(v490[9]) = HIDWORD(v523);
        *(&v490[2] + 13) = *&v513[32];
        *(&v490[3] + 13) = *&v513[48];
        *(&v490[4] + 13) = *&v513[64];
        *(&v490[5] + 13) = *&v513[80];
        *(v490 + 13) = *v513;
        *(&v490[1] + 13) = *&v513[16];
        *&v491[0] = v405;
        *(&v491[0] + 1) = v406;
        v499 = v490[8];
        v500 = v490[9];
        v501 = v491[0];
        v495 = v490[4];
        v496 = v490[5];
        v497 = v490[6];
        v498 = v490[7];
        v492[0] = v490[0];
        v492[1] = v490[1];
        v493 = v490[2];
        v494 = v490[3];
        sub_26BF91664(v492, v483, v509);
        v486 = 0;

        v413 = v472;
        v414 = v475;
        sub_26BE00258(v472, v475);
        sub_26BE00258(v413, v414);
        sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
        v473(v476, v482);
        sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v450, type metadata accessor for MLS.GroupInfo);
        LOBYTE(v413) = v510;
        v415 = v511;
        v416 = v512;
        v417 = v444;
        sub_26BE70034(v451, v444, type metadata accessor for MLS.MLSMessage);
        v418 = type metadata accessor for MLS.GroupState.CommitOutput(0);
        v419 = v483;
        sub_26BE6FEC8(v483, v417 + v418[6], type metadata accessor for MLS.GroupState);
        *(v417 + v418[5]) = v487;
        v420 = v417 + v418[7];
        v421 = *&v509[16];
        *v420 = *v509;
        *(v420 + 16) = v421;
        *(v420 + 32) = v413;
        *(v420 + 40) = v415;
        *(v420 + 48) = v416;
        v422 = (v417 + v418[8]);
        v423 = v490[9];
        v422[8] = v490[8];
        v422[9] = v423;
        v422[10] = v491[0];
        v424 = v490[5];
        v422[4] = v490[4];
        v422[5] = v424;
        v425 = v490[7];
        v422[6] = v490[6];
        v422[7] = v425;
        v426 = v490[1];
        *v422 = v490[0];
        v422[1] = v426;
        v427 = v490[3];
        v422[2] = v490[2];
        v422[3] = v427;
        sub_26BE69184(v461, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v419, type metadata accessor for MLS.GroupState);
        v505 = v556;
        v506 = v557;
        v507 = v558;
        v508 = v559;
        *&v503[24] = v552;
        *&v503[40] = v553;
        *&v503[56] = v554;
        v504 = v555;
        *v503 = v474;
        *&v503[8] = v551;
LABEL_163:
        v163 = v503;
        return sub_26BE71528(v163);
      }

      sub_26BE2E258(&v515, &qword_28045E8B0, &qword_26C012560);

      v407 = v472;
      v408 = v475;
      sub_26BE00258(v472, v475);
      sub_26BE00258(v407, v408);
      sub_26BE69184(v451, type metadata accessor for MLS.MLSMessage);
      sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
      v473(v476, v482);
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);

      sub_26BE69184(v450, type metadata accessor for MLS.GroupInfo);
      sub_26BE69184(v461, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v483, type metadata accessor for MLS.GroupState);
      *(&v490[5] + 8) = v556;
      *(&v490[6] + 8) = v557;
      *(&v490[7] + 8) = v558;
      *(&v490[8] + 8) = v559;
      *(&v490[1] + 8) = v552;
      *(&v490[2] + 8) = v553;
      *(&v490[3] + 8) = v554;
      *(&v490[4] + 8) = v555;
      *&v490[0] = v474;
      *(v490 + 8) = v551;
      return sub_26BE71528(v490);
    }

    *(v288 + 3) = v296;
    sub_26BE6250C(v476, v481);
    v312 = v288 + *(v487 + 11);
    v313 = *(v478 + 1);
    v314 = *(v478 + 2);
    v315 = *(v312 + 24);
    v316 = *(v312 + 32);
    LOBYTE(v492[0]) = *v312;
    *(v492 + 8) = *(v312 + 8);
    *(&v492[1] + 1) = v315;
    *&v493 = v316;
    v475 = type metadata accessor for MLS.KeySchedule();
    v317 = *(v475 + 48);
    v318 = *(v479 + 16);
    v477 = v312;
    v318(v454, v312 + v317, v482);
    sub_26BE715E4(&qword_28045E8B8, MEMORY[0x277CC5330]);

    v319 = v457;
    sub_26C009C5C();
    MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v319, v313, v314);
    v321 = *(v479 + 8);
    v479 += 8;
    v473 = v321;
    v321(v457, v482);

    v322 = v461 + *(v465 + 24);
    if (!(*(v466 + 48))(v322, 1, v467))
    {
      v323 = *(v467 + 20);
      sub_26BE2E258(v322 + v323, &qword_28045E4E8, &qword_26C012550);
      sub_26BE6FEC8(v455, v322 + v323, type metadata accessor for MLS.Cryptography.MACTag);
      v486((v322 + v323), 0, 1, v460);
    }

    sub_26BE6FEC8(v461, v453, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE2E9FC();
    sub_26BE69184(v453, type metadata accessor for MLS.AuthenticatedContent);
    v324 = v452;
    sub_26BE6FEC8(v461, v452, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE67D48(v324, v451);
    sub_26BE69184(v452, type metadata accessor for MLS.AuthenticatedContent);
    LODWORD(v468) = *v483;
    v325 = *(v483 + 2);
    v471 = *(v483 + 1);
    v472 = v325;
    v467 = *(v483 + 3);
    v326 = *(v483 + 5);
    v327 = *(v483 + 12);
    v328 = *(v483 + 7);
    LOWORD(v524) = v483[16];
    v525 = v326;
    v526 = v327;
    v527 = v328;
    v469 = sub_26BE592D0();
    v470 = v329;
    v486 = 0;
LABEL_122:
    v332 = *(v478 + 1);
    v331 = *(v478 + 2);
    v333 = *(v483 + *(v487 + 10));
    v334 = v437;
    v335 = *&v484[*(v437 + 36)];
    v336 = v447;
    v337 = v450;
    sub_26BE6FEC8(v455, v450 + *(v447 + 24), type metadata accessor for MLS.Cryptography.MACTag);
    v338 = *(v571 + v443);
    *v337 = v468;
    v339 = v472;
    *(v337 + 8) = v471;
    *(v337 + 16) = v339;
    v341 = v469;
    v340 = v470;
    *(v337 + 24) = v467;
    *(v337 + 32) = v341;
    *(v337 + 40) = v340;
    *(v337 + 48) = v332;
    v466 = v331;
    v467 = v332;
    *(v337 + 56) = v331;
    *(v337 + 64) = v333;
    v468 = v333;
    v478 = v335;
    *(v337 + 72) = v335;
    *(v337 + *(v336 + 28)) = v338;
    *(v337 + *(v336 + 32)) = xmmword_26C00BBD0;
    v69 = v334;
    if (v484[*(v334 + 28)])
    {
      sub_26BE00608(v469, v470);
      sub_26BE00608(v471, v472);
      sub_26BE00608(v467, v466);
    }

    else
    {
      v349 = *(v483 + 5);
      v350 = *(v483 + 12);
      v351 = *(v483 + 7);
      LOWORD(v492[0]) = v483[16];
      *(&v492[0] + 1) = v349;
      LODWORD(v492[1]) = v350;
      *(&v492[1] + 1) = v351;
      sub_26BE00608(v469, v470);
      sub_26BE00608(v471, v472);
      sub_26BE00608(v467, v466);

      v352 = v486;
      v353 = MLS.TreeKEMPublicKey.rawRepresentation.getter();
      if (v352)
      {

        sub_26BE69184(v451, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
        v473(v476, v482);
        sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v450, type metadata accessor for MLS.GroupInfo);
        v355 = v474;

        sub_26BE69184(v461, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v483, type metadata accessor for MLS.GroupState);
        *(&v490[5] + 8) = v556;
        *(&v490[6] + 8) = v557;
        *(&v490[7] + 8) = v558;
        *(&v490[8] + 8) = v559;
        *(&v490[1] + 8) = v552;
        *(&v490[2] + 8) = v553;
        *(&v490[3] + 8) = v554;
        *(&v490[4] + 8) = v555;
        *&v490[0] = v355;
        *(v490 + 8) = v551;
        return sub_26BE71528(v490);
      }

      MLS.RatchetTree.init(rawValue:)(v353, v354, v503);
      *&v492[0] = *v503;
      v377 = MLS.RatchetTree.rawValue.getter();
      v486 = 0;
      v389 = v377;
      v391 = v390;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v478 = sub_26BEEBD8C(0, *(v478 + 2) + 1, 1, v478);
      }

      v394 = *(v478 + 2);
      v393 = *(v478 + 3);
      if (v394 >= v393 >> 1)
      {
        v478 = sub_26BEEBD8C((v393 > 1), v394 + 1, 1, v478);
      }

      v395 = v478;
      *(v478 + 2) = v394 + 1;
      v396 = &v395[24 * v394];
      *(v396 + 16) = 2;
      *(v396 + 5) = v389;
      *(v396 + 6) = v391;
      *(v450 + 72) = v395;
    }

    v342 = v483;
    v343 = *(v483 + 5);
    v344 = *(v483 + 12);
    v345 = *(v483 + 7);
    LOWORD(v492[0]) = v483[16];
    *(&v492[0] + 1) = v343;
    LODWORD(v492[1]) = v344;
    *(&v492[1] + 1) = v345;
    v346 = *(v487 + 14);
    *v503 = *(v483 + *(v487 + 13));

    v347 = v486;
    MLS.GroupInfo.sign(tree:signer:signaturePrivateKey:)(v492, v503, (v342 + v346));
    v244 = v347;
    if (v347)
    {

      sub_26BE69184(v451, type metadata accessor for MLS.MLSMessage);
      sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
      v473(v476, v482);
      sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
      sub_26BE69184(v450, type metadata accessor for MLS.GroupInfo);
      v348 = v474;

      sub_26BE69184(v461, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v483, type metadata accessor for MLS.GroupState);
      *(&v490[5] + 8) = v556;
      *(&v490[6] + 8) = v557;
      *(&v490[7] + 8) = v558;
      *(&v490[8] + 8) = v559;
      *(&v490[1] + 8) = v552;
      *(&v490[2] + 8) = v553;
      *(&v490[3] + 8) = v554;
      *(&v490[4] + 8) = v555;
      *&v490[0] = v348;
      *(v490 + 8) = v551;
      return sub_26BE71528(v490);
    }

    goto LABEL_132;
  }

  sub_26BE2E1F0(v477 + 16, v547, &qword_28045E468, &qword_26C00ECA0);
  if (*(&v547[1] + 1))
  {
    sub_26BE03890(v547, &v515);
    v186 = v487;
  }

  else
  {
    v186 = v487;
    sub_26BE038A8(v571 + *(v487 + 14), &v515);
    if (*(&v547[1] + 1))
    {
      sub_26BE2E258(v547, &qword_28045E468, &qword_26C00ECA0);
    }
  }

  v218 = v483;
  v524 = *(v483 + *(v186 + 13));
  sub_26C009C3C();
  v474 = v543[0];
  v471 = v543[1];
  v219 = *(v218 + 1);
  *(&v435 + 1) = *(v218 + 2);
  v436 = v219;
  v220 = v477;
  v221 = *(v477 + 8);
  v222 = 0x3000000000000000;
  if ((~v221 & 0x3000000000000000) == 0)
  {
    v486 = v179;
    *&v435 = 0;
    goto LABEL_74;
  }

  *&v490[0] = *v477;
  v231 = *&v490[0];
  *(&v490[0] + 1) = v221;
  sub_26BE04890(*&v490[0], v221);
  v232 = MLS.Identity.Credential.serializedRepresentation.getter();
  if (v179)
  {

    sub_26BE00258(v474, v471);

    __swift_destroy_boxed_opaque_existential_1(&v515);
    sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
    sub_26BE7162C(v231, v221);

    goto LABEL_56;
  }

  MLS.Credential.init(rawValue:)(v232, v233, v569);
  v486 = 0;
  sub_26BE7162C(v231, v221);
  v222 = *(&v569[0] + 1);
  *&v435 = *&v569[0];
  v220 = v477;
LABEL_74:
  v223 = v220[7];
  v224 = v220[8];
  v225 = v220[10];
  v433 = v220[9];
  v434 = v225;
  v227 = v220[11];
  v226 = v220[12];
  sub_26BE59D48(v223);

  sub_26BE7162C(0, 0x3000000000000000uLL);
  sub_26BE701EC(0);
  *v503 = v435;
  *&v503[8] = v222;
  *&v503[16] = v223;
  *&v503[24] = v224;
  *&v503[32] = v433;
  *&v503[40] = v434;
  *&v503[48] = v227;
  *&v503[56] = v226;
  v157 = v483;
  v228 = v471;
  v229 = v474;
  v230 = v486;
  MLS.TreeKEMPublicKey.update(from:leafSecret:groupID:signaturePrivateKey:leafNodeOptions:)(&v524, v474, v471, v436, *(&v435 + 1), &v515, v503, v470);
  v486 = v230;
  if (v230)
  {

    sub_26BE00258(v229, v228);

    v569[0] = *v503;
    v569[1] = *&v503[16];
    v569[2] = *&v503[32];
    v569[3] = *&v503[48];
    sub_26BE71654(v569);
    __swift_destroy_boxed_opaque_existential_1(&v515);
    sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);

    goto LABEL_39;
  }

  *v513 = *v503;
  *&v513[16] = *&v503[16];
  *&v513[32] = *&v503[32];
  *&v513[48] = *&v503[48];
  sub_26BE71654(v513);
  sub_26BE00258(v229, v228);
  sub_26BE2E1F0(v477 + 16, v569, &qword_28045E468, &qword_26C00ECA0);
  if (*(&v569[1] + 1))
  {
    sub_26BE03890(v569, v547);
    v234 = *(v487 + 14);
    v235 = v483;
    __swift_destroy_boxed_opaque_existential_1((v483 + v234));
    sub_26BE03890(v547, v235 + v234);
  }

  else
  {
    sub_26BE2E258(v569, &qword_28045E468, &qword_26C00ECA0);
    v235 = v483;
  }

  v236 = v486;
  LODWORD(v471) = *v235;
  v237 = *(v235 + 2);
  v477 = *(v235 + 1);
  v238 = *(v235 + 3);
  v239 = *(v235 + 5);
  v240 = *(v235 + 12);
  v241 = *(v235 + 7);
  LOWORD(v533) = v235[16];
  *(&v533 + 1) = v239;
  LODWORD(v534) = v240;
  *(&v534 + 1) = v241;
  v242 = sub_26BE592D0();
  v244 = v236;
  if (!v236)
  {
    v245 = v238 + 1;
    if (__OFADD__(v238, 1))
    {
LABEL_131:
      __break(1u);
LABEL_132:

      v356 = *(v475 + 20);
      LOWORD(v492[0]) = *v450;
      v478 = v356;
      v472 = static MLS.Welcome.encryptGroupInfo(ciphersuiteID:groupInfo:joinerSecret:preSharedKeys:)(v492, v450, &v356[v477], MEMORY[0x277D84F90]);
      v475 = v357;
      v486 = v244;
      if (v244)
      {

        sub_26BE69184(v451, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
        v473(v476, v482);
        sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
        sub_26BE69184(v450, type metadata accessor for MLS.GroupInfo);
        v330 = v474;

        sub_26BE69184(v461, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v483, type metadata accessor for MLS.GroupState);
        *(&v490[5] + 8) = v556;
        *(&v490[6] + 8) = v557;
        *(&v490[7] + 8) = v558;
        *(&v490[8] + 8) = v559;
        *(&v490[1] + 8) = v552;
        *(&v490[2] + 8) = v553;
        *(&v490[3] + 8) = v554;
        *(&v490[4] + 8) = v555;
        *&v490[0] = v330;
        *(v490 + 8) = v551;
        v163 = v490;
        return sub_26BE71528(v163);
      }

      LODWORD(v471) = *v571;
      if (v484[*(v69 + 8)] == 1)
      {
        *v513 = v438;
        *&v513[8] = 0;
        *&v513[16] = v480;
        *&v513[24] = 0;
        v513[32] = 0;
        sub_26BE00608(v472, v475);

        v487 = MEMORY[0x277D84F90];
        while (1)
        {
          v358 = v449;
          sub_26BE685D4(v449);
          v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
          if ((*(*(v359 - 8) + 48))(v358, 1, v359) == 1)
          {

            goto LABEL_158;
          }

          v360 = *(v449 + 144);
          v490[8] = *(v449 + 128);
          v490[9] = v360;
          v491[0] = *(v449 + 160);
          *&v491[1] = *(v449 + 176);
          v361 = *(v449 + 80);
          v490[4] = *(v449 + 64);
          v490[5] = v361;
          v362 = *(v449 + 112);
          v490[6] = *(v449 + 96);
          v490[7] = v362;
          v363 = *(v449 + 16);
          v490[0] = *v449;
          v490[1] = v363;
          v364 = *(v449 + 48);
          v490[2] = *(v449 + 32);
          v490[3] = v364;
          v365 = v448;
          sub_26BE33F30(v449 + *(v359 + 48), v448, &qword_28045E708, &unk_26C011370);
          LOWORD(v515) = v471;
          v366 = MEMORY[0x277D84F90];
          v367 = v472;
          *(&v515 + 1) = MEMORY[0x277D84F90];
          *&v516 = v472;
          v368 = v475;
          *(&v516 + 1) = v475;
          v499 = v490[8];
          v500 = v490[9];
          v501 = v491[0];
          v502 = *&v491[1];
          v495 = v490[4];
          v496 = v490[5];
          v497 = v490[6];
          v498 = v490[7];
          v492[0] = v490[0];
          v492[1] = v490[1];
          v493 = v490[2];
          v494 = v490[3];

          sub_26BE00608(v367, v368);
          v369 = v486;
          sub_26BF2AA34(v492, &v478[v477], v365, v366);
          v486 = v369;
          if (v369)
          {
            break;
          }

          LODWORD(v484) = v515;
          v370 = v516;
          v371 = *(&v515 + 1);

          sub_26BE00608(v370, *(&v370 + 1));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v487 = sub_26BEED214(0, *(v487 + 2) + 1, 1, v487);
          }

          v373 = *(v487 + 2);
          v372 = *(v487 + 3);
          if (v373 >= v372 >> 1)
          {
            v487 = sub_26BEED214((v372 > 1), v373 + 1, 1, v487);
          }

          sub_26BE2E01C(v490);
          v374 = v516;

          sub_26BE00258(v374, *(&v374 + 1));
          sub_26BE2E258(v448, &qword_28045E708, &unk_26C011370);
          v375 = v487;
          *(v487 + 2) = v373 + 1;
          v376 = &v375[32 * v373];
          *(v376 + 16) = v484;
          *(v376 + 5) = v371;
          *(v376 + 3) = v370;
        }

        v397 = v472;
        v398 = v475;
        sub_26BE00258(v472, v475);
        sub_26BE00258(v397, v398);
        v399 = v516;

        sub_26BE00258(v399, *(&v399 + 1));
        sub_26BE2E258(v448, &qword_28045E708, &unk_26C011370);

        sub_26BE69184(v451, type metadata accessor for MLS.MLSMessage);
        sub_26BE69184(v455, type metadata accessor for MLS.Cryptography.MACTag);
        v473(v476, v482);
        sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);

LABEL_162:
        sub_26BE69184(v450, type metadata accessor for MLS.GroupInfo);
        v412 = v474;

        sub_26BE2E01C(v490);
        sub_26BE69184(v461, type metadata accessor for MLS.AuthenticatedContent);
        sub_26BE69184(v483, type metadata accessor for MLS.GroupState);
        v505 = v556;
        v506 = v557;
        v507 = v558;
        v508 = v559;
        *&v503[24] = v552;
        *&v503[40] = v553;
        *&v503[56] = v554;
        v504 = v555;
        *v503 = v412;
        *&v503[8] = v551;
        goto LABEL_163;
      }

      goto LABEL_144;
    }

    v246 = *(v487 + 10);
    v247 = v483 + *(v487 + 9);
    v248 = *(v247 + 2);
    v436 = *(v247 + 1);
    v249 = *(v483 + v246);
    LOWORD(v492[0]) = v471;
    v250 = v477;
    *(&v492[0] + 1) = v477;
    *&v492[1] = v237;
    *(&v492[1] + 1) = v245;
    *&v493 = v242;
    *(&v493 + 1) = v243;
    *&v494 = v436;
    *(&v494 + 1) = v248;
    *&v495 = v249;
    *v546 = xmmword_26C00BBD0;
    *&v546[16] = 0;
    v569[2] = v493;
    v569[3] = v494;
    *&v569[4] = v249;
    v569[0] = v492[0];
    v569[1] = v492[1];
    *&v435 = v242;
    *(&v435 + 1) = v243;
    v433 = v245;
    sub_26BE00608(v242, v243);
    v434 = v237;
    v251 = v237;
    v252 = v248;
    v253 = v436;
    sub_26BE00608(v250, v251);
    sub_26BE00608(v253, v252);

    sub_26BE001A8(v492, v547);
    sub_26BFAF494(v569);
    v431 = v252;
    v432 = v249;
    v291 = *v546;
    v292 = *&v546[8];
    v293 = *&v546[8] >> 62;
    v486 = 0;
    if ((*&v546[8] >> 62) > 1)
    {
      if (v293 != 2)
      {
LABEL_104:
        v298 = sub_26C00909C();
        v300 = v299;
        sub_26BE00204(v492);
        sub_26BE00258(v291, v292);
        v301 = *(v483 + 5);
        v302 = *(v483 + 12);
        v303 = *(v483 + 7);
        LOWORD(v528) = v483[16];
        *(&v528 + 1) = v301;
        LODWORD(v529) = v302;
        *(&v529 + 1) = v303;

        v304 = v486;
        MLS.TreeKEMPublicKey.encap(privateKey:context:exceptLeaves:)(v470, v298, v300, v442, v489);
        v486 = v304;
        if (v304)
        {

          sub_26BE00258(v298, v300);

          LOWORD(v569[0]) = v471;
          *(v569 + 2) = v538;
          WORD3(v569[0]) = v539;
          *(&v569[0] + 1) = v477;
          *&v569[1] = v434;
          *(&v569[1] + 1) = v433;
          v569[2] = v435;
          *&v569[3] = v436;
          *(&v569[3] + 1) = v431;
          *&v569[4] = v432;
          sub_26BE00204(v569);
          sub_26BE69184(v470, type metadata accessor for MLS.TreeKEMPrivateKey);
          __swift_destroy_boxed_opaque_existential_1(&v515);
          sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);

          v162 = v483;
          goto LABEL_40;
        }

        v429 = v298;
        v430 = v300;
        v474 = v69;

        v305 = v470;
        sub_26BE716A8(v470, v483 + *(v487 + 8));
        v490[6] = v489[6];
        v490[7] = v489[7];
        v490[8] = v489[8];
        v490[2] = v489[2];
        v490[3] = v489[3];
        v490[4] = v489[4];
        v490[5] = v489[5];
        v490[0] = v489[0];
        v490[1] = v489[1];
        nullsub_1(v490);
        v569[6] = v557;
        v569[7] = v558;
        v569[8] = v559;
        v569[2] = v553;
        v569[3] = v554;
        v569[4] = v555;
        v569[5] = v556;
        v569[0] = v551;
        v569[1] = v552;
        sub_26BE2E258(v569, &qword_28045E8B0, &qword_26C012560);
        v553 = v490[2];
        v554 = v490[3];
        v558 = v490[7];
        v559 = v490[8];
        v556 = v490[5];
        v557 = v490[6];
        v555 = v490[4];
        v551 = v490[0];
        v552 = v490[1];
        (*(v479 + 16))(v476, v305 + *(v456 + 32), v482);
        v306 = *(v442 + 16);
        if (v306)
        {
          v307 = 0;
          v69 = v503;
          v244 = v486;
          while (v307 < v306)
          {
            v488 = *(v442 + 4 * v307 + 32);
            MLS.TreeKEMPrivateKey.sharedPathSecret(to:)(&v488, v509);
            if (v244)
            {

              sub_26BE00258(v429, v430);

              *v546 = v471;
              *&v546[2] = v538;
              *&v546[6] = v539;
              *&v546[8] = v477;
              *&v546[16] = v434;
              *&v546[24] = v433;
              *&v546[32] = v435;
              *&v546[48] = v436;
              *&v546[56] = v431;
              *&v546[64] = v432;
              sub_26BE00204(v546);
              sub_26BE69184(v470, type metadata accessor for MLS.TreeKEMPrivateKey);
              __swift_destroy_boxed_opaque_existential_1(&v515);
              (*(v479 + 8))(v476, v482);
              sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);
              v320 = v474;

              sub_26BE69184(v483, type metadata accessor for MLS.GroupState);
              *(&v547[5] + 8) = v556;
              *(&v547[6] + 8) = v557;
              *(&v547[7] + 8) = v558;
              *(&v547[8] + 8) = v559;
              v189 = v551;
              *(&v547[1] + 8) = v552;
              *(&v547[2] + 8) = v553;
              *(&v547[3] + 8) = v554;
              *(&v547[4] + 8) = v555;
              *&v547[0] = v320;
              goto LABEL_58;
            }

            v308 = *&v509[8];
            v309 = *&v509[16];
            v547[0] = *&v509[8];
            sub_26BE00608(*&v509[8], *&v509[16]);
            v310 = v464;
            sub_26C009C5C();
            v439(v310, 0, 1, v482);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v480 = sub_26BE588AC(v480);
            }

            sub_26BE00258(v308, v309);
            if (v307 >= v480[2])
            {
              goto LABEL_130;
            }

            sub_26BE7170C(v464, v480 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v307, &qword_28045E708, &unk_26C011370);
            v306 = *(v442 + 16);
            ++v307;
            v311 = v470;
            if (v307 == v306)
            {
              goto LABEL_116;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v244 = v486;
        v311 = v470;
LABEL_116:
        v486 = v244;
        sub_26BE00258(v429, v430);

        LOWORD(v547[0]) = v471;
        *(v547 + 2) = v538;
        WORD3(v547[0]) = v539;
        *(&v547[0] + 1) = v477;
        *&v547[1] = v434;
        *(&v547[1] + 1) = v433;
        v547[2] = v435;
        *&v547[3] = v436;
        *(&v547[3] + 1) = v431;
        *&v547[4] = v432;
        sub_26BE00204(v547);
        sub_26BE69184(v311, type metadata accessor for MLS.TreeKEMPrivateKey);
        __swift_destroy_boxed_opaque_existential_1(&v515);
        v69 = v474;
        goto LABEL_61;
      }

      v297 = *(*v546 + 24);
    }

    else
    {
      if (!v293)
      {
        goto LABEL_104;
      }

      v297 = *v546 >> 32;
    }

    if (v297 < 0)
    {
      __break(1u);
    }

    goto LABEL_104;
  }

  sub_26BE69184(v470, type metadata accessor for MLS.TreeKEMPrivateKey);
  __swift_destroy_boxed_opaque_existential_1(&v515);
  sub_26BE2E258(v481, &qword_28045E708, &unk_26C011370);

  v188 = v235;
LABEL_57:
  sub_26BE69184(v188, type metadata accessor for MLS.GroupState);
  *(&v547[5] + 8) = v556;
  *(&v547[6] + 8) = v557;
  *(&v547[7] + 8) = v558;
  *(&v547[8] + 8) = v559;
  v189 = v551;
  *(&v547[1] + 8) = v552;
  *(&v547[2] + 8) = v553;
  *(&v547[3] + 8) = v554;
  *(&v547[4] + 8) = v555;
  *&v547[0] = v69;
LABEL_58:
  *(v547 + 8) = v189;
  return sub_26BE71528(v547);
}

uint64_t sub_26BE67C10(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
      v4 = sub_26C00A74C();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_26BE2E1F0(v3, v4 + v6, &qword_28045E708, &unk_26C011370);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_26BE2E1F0(v3, v9, &qword_28045E708, &unk_26C011370);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_26BE2E258(v3, &qword_28045E708, &unk_26C011370);
    return v4;
  }

  return result;
}

uint64_t sub_26BE67D48@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v70 - v7;
  v8 = sub_26C009C8C();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLS.AuthenticatedContent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for MLS.PublicMessage();
  v15 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v82 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v26);
  v84 = a1;
  v31 = *a1;
  if (v31 == 2)
  {
    v78 = a2;
    v105 = *v2;
    v52 = type metadata accessor for MLS.GroupState();
    v53 = *(v2 + v52[19]);
    if (v53)
    {
      swift_beginAccess();
      v54 = *(v53 + 49);
      swift_beginAccess();
      sub_26BE295A0(v53 + 40, &v97);
      LOBYTE(v53) = v102;
      if (v102 == 2)
      {
        *(&v89 + 1) = &type metadata for SwiftMLSFeatureFlags;
        *&v90 = sub_26BE295D8();
        LOBYTE(v88) = 3;
        v55 = sub_26C00929C();
        __swift_destroy_boxed_opaque_existential_1(&v88);
        if (v55)
        {
          LOBYTE(v53) = 1;
        }

        else
        {
          LOBYTE(v53) = os_variant_allows_internal_security_policies() ^ 1;
        }
      }

      sub_26BE29710(&v97);
    }

    else
    {
      v54 = 1;
    }

    v57 = v2 + v52[11];
    v58 = type metadata accessor for MLS.KeySchedule();
    v59 = v85;
    result = static MLS.PrivateMessage.protect(authenticatedContent:ciphersuiteID:keys:senderDataSecret:usePadding:validateKeyGeneration:)(v84, &v105, v2 + v52[12], &v57[*(v58 + 28)], v54, v53 & 1, v103);
    if (!v59)
    {
      v60 = v103[3];
      v28[2] = v103[2];
      v28[3] = v60;
      v28[4] = v103[4];
      v61 = v103[1];
      *v28 = v103[0];
      v28[1] = v61;
      swift_storeEnumTagMultiPayload();
      return sub_26BE70034(v28, v78, type metadata accessor for MLS.MLSMessage.Inner);
    }
  }

  else
  {
    if (v31 != 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v56 = 3;
      v56[112] = 0;
      return swift_willThrow();
    }

    v73 = &v70 - v30;
    v74 = v29;
    v78 = a2;
    v72 = *v2;
    v32 = type metadata accessor for MLS.GroupState();
    v33 = v2 + v32[11];
    v34 = type metadata accessor for MLS.KeySchedule();
    v35 = v83;
    (*(v83 + 16))(v23, &v33[*(v34 + 52)], v8);
    (*(v35 + 56))(v23, 0, 1, v8);
    v104 = *v2;
    v36 = *(v2 + 1);
    v76 = *(v2 + 2);
    v77 = v36;
    v75 = *(v2 + 3);
    v37 = *(v2 + 5);
    v38 = *(v2 + 12);
    v39 = *(v2 + 7);
    v93 = v2[16];
    v94 = v37;
    v95 = v38;
    v96 = v39;
    v40 = v85;
    v41 = sub_26BE592D0();
    if (v40)
    {
      return sub_26BE2E258(v23, &qword_28045E708, &unk_26C011370);
    }

    v43 = v32[10];
    v44 = v2 + v32[9];
    v46 = *(v44 + 1);
    v45 = *(v44 + 2);
    v85 = v46;
    v71 = v45;
    v47 = *(v2 + v43);
    LOWORD(v88) = v104;
    *(&v88 + 1) = v77;
    *&v89 = v76;
    *(&v89 + 1) = v75;
    *&v90 = v41;
    *(&v90 + 1) = v42;
    *&v91 = v46;
    *(&v91 + 1) = v45;
    v92 = v47;
    v101 = v47;
    v99 = v90;
    v100 = v91;
    v97 = v88;
    v98 = v89;
    v48 = v41;
    v49 = v42;
    sub_26BE6FEC8(v84, v14, type metadata accessor for MLS.AuthenticatedContent);
    sub_26BE00608(v48, v49);
    sub_26BE00608(v77, v76);
    sub_26BE00608(v85, v71);

    v50 = v82;
    sub_26BF9D400(v14, v82);
    if (*(v50 + 28))
    {
      sub_26BE00204(&v88);
      sub_26BE2E258(v23, &qword_28045E708, &unk_26C011370);
      v62 = v78;
LABEL_18:
      v63 = v73;
      sub_26BE70034(v50, v73, type metadata accessor for MLS.PublicMessage);
      swift_storeEnumTagMultiPayload();
      return sub_26BE70034(v63, v62, type metadata accessor for MLS.MLSMessage.Inner);
    }

    sub_26BE2E1F0(v23, v21, &qword_28045E708, &unk_26C011370);
    v64 = v83;
    v65 = (*(v83 + 48))(v21, 1, v8);
    v62 = v78;
    if (v65 != 1)
    {
      v67 = v80;
      (*(v64 + 32))(v80, v21, v8);
      v105 = v72;
      v86[2] = v99;
      v86[3] = v100;
      v87 = v101;
      v86[0] = v97;
      v86[1] = v98;
      sub_26BF9D7A8(&v105, v67, v86, v81);
      (*(v64 + 8))(v67, v8);
      sub_26BE2E258(v23, &qword_28045E708, &unk_26C011370);
      sub_26BE00204(&v88);
      v68 = type metadata accessor for MLS.Cryptography.MACTag(0);
      v69 = v81;
      (*(*(v68 - 8) + 56))(v81, 0, 1, v68);
      sub_26BE7170C(v69, v50 + *(v79 + 24), &qword_28045E4E8, &qword_26C012550);
      goto LABEL_18;
    }

    sub_26BE2E258(v21, &qword_28045E708, &unk_26C011370);
    sub_26BE01654();
    swift_allocError();
    *v66 = 27;
    v66[112] = 0;
    swift_willThrow();
    sub_26BE00204(&v88);
    sub_26BE2E258(v23, &qword_28045E708, &unk_26C011370);
    return sub_26BE69184(v50, type metadata accessor for MLS.PublicMessage);
  }

  return result;
}

void sub_26BE685D4(uint64_t a1@<X8>)
{
  if (*(v1 + 32) != 1)
  {
    v3 = *(v1 + 8);
    v4 = *(*v1 + 16);
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        __break(1u);
      }

      else
      {
        v5 = *v1 + 184 * v3;
        v6 = *(v5 + 32);
        v7 = *(v5 + 48);
        v8 = *(v5 + 80);
        v33 = *(v5 + 64);
        v34 = v8;
        v31 = v6;
        v32 = v7;
        v9 = *(v5 + 96);
        v10 = *(v5 + 112);
        v11 = *(v5 + 144);
        v37 = *(v5 + 128);
        v38 = v11;
        v35 = v9;
        v36 = v10;
        v12 = *(v5 + 160);
        v13 = *(v5 + 176);
        v14 = *(v5 + 192);
        v42 = *(v5 + 208);
        v40 = v13;
        v41 = v14;
        v39 = v12;
        *(v1 + 8) = v3 + 1;
        v16 = *(v1 + 16);
        v15 = *(v1 + 24);
        v17 = *(v16 + 16);
        if (v15 == v17)
        {
          goto LABEL_5;
        }

        if (v15 < v17)
        {
          v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
          v21 = v15 + 1;
          v22 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15;
          *(v1 + 24) = v21;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
          v24 = *(v23 + 48);
          v25 = v40;
          *(a1 + 128) = v39;
          *(a1 + 144) = v25;
          *(a1 + 160) = v41;
          *(a1 + 176) = v42;
          v26 = v36;
          *(a1 + 64) = v35;
          *(a1 + 80) = v26;
          v27 = v38;
          *(a1 + 96) = v37;
          *(a1 + 112) = v27;
          v28 = v32;
          *a1 = v31;
          *(a1 + 16) = v28;
          v29 = v34;
          *(a1 + 32) = v33;
          *(a1 + 48) = v29;
          sub_26BE2E1F0(v22, a1 + v24, &qword_28045E708, &unk_26C011370);
          (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
          sub_26BE2DFC0(&v31, v30);
          return;
        }
      }

      __break(1u);
      return;
    }

LABEL_5:
    *(v1 + 32) = 1;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C0, &qword_26C012568);
  v19 = *(*(v18 - 8) + 56);

  v19(a1, 1, 1, v18);
}

uint64_t sub_26BE68838@<X0>(_OWORD *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v91 = a3;
  v98 = type metadata accessor for MLS.FramedContentAuthData();
  v100 = *(v98 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  v93 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v84 - v11;
  v94 = type metadata accessor for MLS.AuthenticatedContent();
  v12 = *(*(v94 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v94);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = (&v84 - v15);
  v16 = a1[9];
  v134[8] = a1[8];
  v134[9] = v16;
  v135[0] = a1[10];
  *(v135 + 9) = *(a1 + 169);
  v17 = a1[5];
  v134[4] = a1[4];
  v134[5] = v17;
  v18 = a1[7];
  v134[6] = a1[6];
  v134[7] = v18;
  v19 = a1[1];
  v134[0] = *a1;
  v134[1] = v19;
  v20 = a1[3];
  v134[2] = a1[2];
  v134[3] = v20;
  v21 = *a2;
  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  v24 = type metadata accessor for MLS.GroupState();
  v25 = v24;
  v26 = *(v4 + *(v24 + 52));
  v27 = v4[1];
  v28 = v4[2];
  v29 = v4[3];
  v30 = a1[1];
  v139 = *a1;
  v140 = v30;
  v31 = a1[3];
  v141 = a1[2];
  v142 = v31;
  v32 = a1[7];
  v145 = a1[6];
  v146 = v32;
  v33 = a1[5];
  v143 = a1[4];
  v144 = v33;
  *(v149 + 9) = *(a1 + 169);
  v34 = a1[10];
  v148 = a1[9];
  v149[0] = v34;
  v147 = a1[8];
  v35 = v27;
  *&v136 = v27;
  *(&v136 + 1) = v28;
  v95 = v29;
  *&v137 = v29;
  DWORD2(v137) = v26;
  BYTE12(v137) = 0;
  v104 = v22;
  *&v138 = v22;
  v150 = v23;
  *(&v138 + 1) = v23;
  LODWORD(v96) = v21;
  v36 = v21 == 0;
  v37 = v4;
  if (v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  sub_26BE038A8(v37 + *(v24 + 56), v131);
  v39 = *v37;
  v40 = v37[2];
  v101 = v37[1];
  v102 = v40;
  v41 = v37[5];
  v42 = *(v37 + 12);
  v43 = v37[7];
  v127 = *(v37 + 16);
  v128 = v41;
  v129 = v42;
  v130 = v43;
  v44 = v103;
  v45 = sub_26BE592D0();
  v103 = v44;
  if (v44)
  {
    sub_26BE00608(v35, v28);
    sub_26BE71438(v134, &v116);
    sub_26BE00608(v104, v150);
    sub_26BE71494(&v136);
  }

  else
  {
    v85 = v38;
    v89 = v35;
    v90 = v28;
    v47 = v37 + *(v25 + 36);
    v48 = *(v47 + 1);
    v49 = *(v47 + 2);
    v50 = *(v37 + *(v25 + 40));
    LOWORD(v106) = v39;
    *(&v106 + 1) = v101;
    *&v107 = v102;
    *(&v107 + 1) = v95;
    *&v108 = v45;
    *(&v108 + 1) = v46;
    *&v109 = v48;
    *(&v109 + 1) = v49;
    v110 = v50;
    v115 = v50;
    v113 = v108;
    v114 = v109;
    v111 = v106;
    v112 = v107;
    v52 = v97;
    v51 = v98;
    v53 = v100;
    v87 = v45;
    v88 = v46;
    v86 = v48;
    if ((v96 & 1) == 0)
    {
      v124 = v147;
      v125 = v148;
      v126[0] = v149[0];
      *(v126 + 9) = *(v149 + 9);
      v120 = v143;
      v121 = v144;
      v122 = v145;
      v123 = v146;
      v116 = v139;
      v117 = v140;
      v118 = v141;
      v119 = v142;
      if (!sub_26BE6917C(&v116))
      {
        nullsub_1(&v116);
        sub_26BE01654();
        swift_allocError();
        *v54 = 7;
        *(v54 + 8) = 0u;
        *(v54 + 24) = 0u;
        *(v54 + 40) = 0u;
        *(v54 + 56) = 0u;
        *(v54 + 72) = 0u;
        *(v54 + 88) = 0u;
        *(v54 + 104) = 0;
        *(v54 + 112) = 23;
        swift_willThrow();
        sub_26BE00608(v89, v90);
        sub_26BE71438(v134, &v105);
        sub_26BE00608(v104, v150);
        sub_26BE00608(v87, v88);
        sub_26BE00608(v101, v102);
        sub_26BE00608(v86, v49);

        sub_26BE00204(&v106);
        sub_26BE71494(&v136);
        return __swift_destroy_boxed_opaque_existential_1(v131);
      }

      nullsub_1(&v116);
      v51 = v98;
    }

    v84 = v49;
    v55 = *(v53 + 56);
    v56 = v51;
    v55(v99, 1, 1, v51);
    v57 = v53 + 56;
    v58 = *(v94 + 24);
    v96 = v55;
    v100 = v57;
    v55(v52 + v58, 1, 1, v56);
    v59 = v146;
    *(v52 + 184) = v147;
    v60 = v149[0];
    *(v52 + 200) = v148;
    *(v52 + 216) = v60;
    *(v52 + 225) = *(v149 + 9);
    v61 = v142;
    *(v52 + 120) = v143;
    v62 = v145;
    *(v52 + 136) = v144;
    *(v52 + 152) = v62;
    *(v52 + 168) = v59;
    v63 = v138;
    *(v52 + 56) = v139;
    v64 = v141;
    *(v52 + 72) = v140;
    *(v52 + 88) = v64;
    *(v52 + 104) = v61;
    v65 = v137;
    *(v52 + 8) = v136;
    *(v52 + 24) = v65;
    *v52 = v85;
    *(v52 + 40) = v63;
    sub_26BE00608(v89, v90);
    sub_26BE71438(v134, &v116);
    sub_26BE00608(v104, v150);
    sub_26BE00608(v87, v88);
    sub_26BE00608(v101, v102);
    sub_26BE00608(v86, v84);

    sub_26BE7170C(v99, v52 + v58, &qword_28045E4E0, &qword_26C015A80);
    v118 = v113;
    v119 = v114;
    *&v120 = v115;
    v116 = v111;
    v117 = v112;
    v66 = v103;
    v67 = sub_26BF9D0DC(&v116);
    if (!v66)
    {
      v69 = v67;
      v70 = v68;
      v150 = v58;
      v71 = v98;
      v72 = v132;
      v73 = v133;
      __swift_project_boxed_opaque_existential_1(v131, v132);
      v74 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0xD000000000000010, 0x800000026C02B350, v69, v70, v72, v73);
      v76 = v75;
      sub_26BE00204(&v106);
      sub_26BE00258(v69, v70);
      v77 = v71;
      v78 = *(v71 + 20);
      v79 = type metadata accessor for MLS.Cryptography.MACTag(0);
      v80 = v93;
      (*(*(v79 - 8) + 56))(v93 + v78, 1, 1, v79);
      *v80 = v74;
      v80[1] = v76;
      v81 = v150;
      sub_26BE2E258(v52 + v150, &qword_28045E4E0, &qword_26C015A80);
      sub_26BE70034(v80, v52 + v81, type metadata accessor for MLS.FramedContentAuthData);
      v96(v52 + v81, 0, 1, v77);
      v82 = v92;
      sub_26BE6FEC8(v52, v92, type metadata accessor for MLS.AuthenticatedContent);
      sub_26BE69184(v52, type metadata accessor for MLS.AuthenticatedContent);
      __swift_destroy_boxed_opaque_existential_1(v131);
      sub_26BE67D48(v82, v91);
      return sub_26BE69184(v82, type metadata accessor for MLS.AuthenticatedContent);
    }

    sub_26BE00204(&v106);
    sub_26BE69184(v52, type metadata accessor for MLS.AuthenticatedContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v131);
}

uint64_t MLS.GroupState.evilProtectContentWithReusedSignature(priorAuthenticatedContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v20 = *v2;
  v10 = type metadata accessor for MLS.GroupState();
  v11 = *(v2 + v10[19]);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(v11 + 49);
  }

  else
  {
    v12 = 1;
  }

  v13 = v2 + v10[11];
  v14 = type metadata accessor for MLS.KeySchedule();
  result = static MLS.PrivateMessage.protect(authenticatedContent:ciphersuiteID:keys:senderDataSecret:usePadding:validateKeyGeneration:)(a1, &v20, v2 + v10[12], &v13[*(v14 + 28)], v12, 0, v19);
  if (!v3)
  {
    v16 = v19[3];
    v9[2] = v19[2];
    v9[3] = v16;
    v9[4] = v19[4];
    v17 = v19[1];
    *v9 = v19[0];
    v9[1] = v17;
    swift_storeEnumTagMultiPayload();
    return sub_26BE70034(v9, a2, type metadata accessor for MLS.MLSMessage.Inner);
  }

  return result;
}

uint64_t sub_26BE69184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE691E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26C00928C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E820, &qword_26C02A220);
  v47 = a2;
  result = sub_26C00AD9C();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_26BE00608(*v33, v31);
      }

      v34 = *(v13 + 40);
      sub_26BE715E4(&qword_28045E828, MEMORY[0x277CC95F0]);
      result = sub_26C00A3BC();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26BE695CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E850, &qword_26C0124F0);
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 56) + 80 * v25);
      v41 = *(*(v5 + 48) + 16 * v25);
      v27 = *(*(v5 + 48) + 16 * v25 + 8);
      if (a2)
      {
        v42 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        v30 = v26[3];
        v46 = v26[4];
        v44 = v29;
        v45 = v30;
        v43 = v28;
      }

      else
      {
        sub_26BE2E07C(v26, &v42);
        sub_26BE00608(v41, v27);
      }

      v31 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v17 = v41;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 80 * v16);
      *v18 = v42;
      v19 = v43;
      v20 = v44;
      v21 = v46;
      v18[3] = v45;
      v18[4] = v21;
      v18[1] = v19;
      v18[2] = v20;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26BE698BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E858, &qword_26C0124F8);
  v48 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v46 = v3;
    v47 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 184 * v22);
      if (v48)
      {
        v65 = *v27;
        v49 = *(v27 + 4);
        v50 = *(v27 + 12);
        v51 = *(v27 + 20);
        v52 = *(v27 + 28);
        v57 = *(v27 + 36);
        v55 = *(v27 + 44);
        v53 = *(v27 + 13);
        v54 = *(v27 + 14);
        v56 = *(v27 + 128);
        v58 = *(v27 + 15);
        v59 = *(v27 + 17);
        v61 = *(v27 + 18);
        v60 = *(v27 + 19);
        v64 = *(v27 + 21);
        v62 = *(v27 + 20);
        v63 = *(v27 + 22);
      }

      else
      {
        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        v30 = *v27;
        *&v67[16] = *(v27 + 1);
        *&v67[32] = v29;
        *v67 = v30;
        v31 = *(v27 + 7);
        v33 = *(v27 + 4);
        v32 = *(v27 + 5);
        *&v67[96] = *(v27 + 6);
        v68 = v31;
        *&v67[64] = v33;
        *&v67[80] = v32;
        v35 = *(v27 + 9);
        v34 = *(v27 + 10);
        v36 = *(v27 + 8);
        v72 = *(v27 + 22);
        v70 = v35;
        v71 = v34;
        v69 = v36;
        *&v67[48] = v28;
        v63 = v72;
        v64 = *(&v34 + 1);
        v65 = *v67;
        v61 = v35;
        v62 = v34;
        v59 = *(&v36 + 1);
        v60 = *(&v35 + 1);
        v58 = *(&v68 + 1);
        v56 = v36;
        v57 = *&v67[72];
        v55 = *&v67[88];
        v53 = *&v67[104];
        v54 = v68;
        v51 = *&v67[40];
        v52 = *&v67[56];
        v49 = *&v67[8];
        v50 = *&v67[24];
        sub_26BE00608(v25, v26);
        sub_26BE2DFC0(v67, v66);
      }

      v37 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v38 = -1 << *(v8 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v15 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v15 + 8 * v40);
          if (v44 != -1)
          {
            v16 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v39) & ~*(v15 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v8 + 56) + 184 * v16;
      *v18 = v65;
      *(v18 + 24) = v50;
      *(v18 + 8) = v49;
      *(v18 + 56) = v52;
      *(v18 + 40) = v51;
      *(v18 + 72) = v57;
      *(v18 + 88) = v55;
      *(v18 + 104) = v53;
      *(v18 + 112) = v54;
      *(v18 + 120) = v58;
      *(v18 + 128) = v56;
      *(v18 + 136) = v59;
      *(v18 + 144) = v61;
      *(v18 + 152) = v60;
      *(v18 + 160) = v62;
      *(v18 + 168) = v64;
      *(v18 + 176) = v63;
      ++*(v8 + 16);
      v5 = v47;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v10, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE69D04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A0, &unk_26C012540);
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_26BE00608(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE69F98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E898, &qword_26C012538);
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_26BE03890(v22, v33);
      }

      else
      {
        sub_26BE038A8(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      result = sub_26BE03890(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6A238(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_26C00921C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F8, &unk_26C0124A0);
  v46 = a2;
  result = sub_26C00AD9C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 16 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v29);
      result = sub_26C00B0CC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 16 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_26BE6A5B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E8, &qword_26C012490);
  v40 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6A878(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E838, &qword_26C0124D8);
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v34 = *(*(v5 + 56) + v22);
      v35 = v23;
      if ((a2 & 1) == 0)
      {
        sub_26BE00608(v23, *(&v23 + 1));
        sub_26BE00608(v34, *(&v34 + 1));
      }

      v24 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      *(*(v8 + 56) + v18) = v34;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26BE6AB30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E830, &qword_26C0124D0);
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 32 * v22);
      v35 = *v23;
      v36 = v23[1];
      v34 = *(*(v5 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
        sub_26BE00608(v35, *(v23 + 8) >> 64);
        sub_26BE00608(v34, *(&v34 + 1));
      }

      v24 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      MEMORY[0x26D699B60](v36);
      MEMORY[0x26D699B60](*(&v36 + 1));
      result = sub_26C00B0CC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = (*(v8 + 48) + 32 * v16);
      *v18 = v17;
      v18[1] = v36;
      *(*(v8 + 56) + 16 * v16) = v34;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26BE6AE10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E840, &unk_26C0124E0);
  v38 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v39 = *(v22 + 16 * v21);
      if ((v38 & 1) == 0)
      {
        sub_26BE00608(v24, v25);
        sub_26BE00608(v39, *(&v39 + 1));
      }

      v27 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      MEMORY[0x26D699B60](v26);
      result = sub_26C00B0CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6B0E8(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_26C009C8C();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E890, &qword_26C012530);
  v43 = a2;
  result = sub_26C00AD9C();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 4 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 4 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_26BE6B44C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s11HashRatchetVMa(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E888, &unk_26C02A1B0);
  v44 = a2;
  result = sub_26C00AD9C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 8 * v25;
      v28 = *v27;
      v29 = *(v27 + 4);
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_26BE70034(v31, v45, _s11HashRatchetVMa);
      }

      else
      {
        sub_26BE6FEC8(v31, v45, _s11HashRatchetVMa);
      }

      v32 = *(v12 + 40);
      sub_26C00B05C();
      sub_26C00B07C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 8 * v20;
      *v21 = v28;
      *(v21 + 4) = v29;
      result = sub_26BE70034(v45, *(v12 + 56) + v30 * v20, _s11HashRatchetVMa);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_26BE6B7CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E818, &unk_26C0124C0);
  v36 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26BE5B0F0(v25, v37);
      }

      else
      {
        sub_26BE2E2EC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26BE5B0F0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6BA84(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLS.KeyAndNonce(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E848, &qword_26C02A1A0);
  v40 = a2;
  result = sub_26C00AD9C();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 4 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        sub_26BE70034(v28, v9, type metadata accessor for MLS.KeyAndNonce);
      }

      else
      {
        sub_26BE6FEC8(v28, v9, type metadata accessor for MLS.KeyAndNonce);
      }

      result = MEMORY[0x26D699B00](*(v13 + 40), v26, 4);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 4 * v21) = v26;
      result = sub_26BE70034(v9, *(v13 + 56) + v27 * v21, type metadata accessor for MLS.KeyAndNonce);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26BE6BDD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D0, &qword_26C012578);
  v46 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 200 * v22;
      if (v46)
      {
        v69 = *(v26 + 144);
        v70 = *(v26 + 160);
        v71 = *(v26 + 176);
        v72 = *(v26 + 192);
        v65 = *(v26 + 80);
        v66 = *(v26 + 96);
        v67 = *(v26 + 112);
        v68 = *(v26 + 128);
        v61 = *(v26 + 16);
        v62 = *(v26 + 32);
        v63 = *(v26 + 48);
        v64 = *(v26 + 64);
        v60 = *v26;
      }

      else
      {
        v47 = *v26;
        v27 = *(v26 + 64);
        v29 = *(v26 + 16);
        v28 = *(v26 + 32);
        v50 = *(v26 + 48);
        v51 = v27;
        v48 = v29;
        v49 = v28;
        v30 = *(v26 + 128);
        v32 = *(v26 + 80);
        v31 = *(v26 + 96);
        v54 = *(v26 + 112);
        v55 = v30;
        v52 = v32;
        v53 = v31;
        v34 = *(v26 + 160);
        v33 = *(v26 + 176);
        v35 = *(v26 + 144);
        v59 = *(v26 + 192);
        v57 = v34;
        v58 = v33;
        v56 = v35;
        sub_26BE00608(v24, v25);
        sub_26BE5CDE4(&v47, &v60);
        v70 = v57;
        v71 = v58;
        v72 = v59;
        v66 = v53;
        v67 = v54;
        v68 = v55;
        v69 = v56;
        v62 = v49;
        v63 = v50;
        v64 = v51;
        v65 = v52;
        v60 = v47;
        v61 = v48;
      }

      v36 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 200 * v16;
      *(v18 + 144) = v69;
      *(v18 + 160) = v70;
      *(v18 + 176) = v71;
      *(v18 + 192) = v72;
      *(v18 + 80) = v65;
      *(v18 + 96) = v66;
      *(v18 + 112) = v67;
      *(v18 + 128) = v68;
      *(v18 + 16) = v61;
      *(v18 + 32) = v62;
      *(v18 + 48) = v63;
      *(v18 + 64) = v64;
      *v18 = v60;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6C21C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_26C00AD9C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_26BE6C4E4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_26C00AD9C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_26BE6C784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E880, &unk_26C012520);
  v48 = a2;
  v7 = sub_26C00AD9C();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v44 = v2;
    v45 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v46 = v5;
    v47 = v7;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v49 = (v12 - 1) & v12;
LABEL_17:
      v25 = v21 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v51 = *v26;
      v28 = (*(v5 + 56) + 48 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      v34 = v28[5];
      if ((v48 & 1) == 0)
      {

        sub_26BE00608(v29, v30);
        sub_26BE00608(v31, v32);
        sub_26BE00608(v33, v34);
      }

      v50 = v33;
      v8 = v47;
      v35 = *(v47 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v36 = -1 << *(v47 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v17 = v34;
        v16 = v32;
        v18 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v17 = v34;
      v16 = v32;
      v18 = v50;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v47 + 48) + 16 * v15);
      *v19 = v51;
      v19[1] = v27;
      v20 = (*(v47 + 56) + 48 * v15);
      *v20 = v29;
      v20[1] = v30;
      v20[2] = v31;
      v20[3] = v16;
      v20[4] = v18;
      v20[5] = v17;
      ++*(v47 + 16);
      v5 = v46;
      v12 = v49;
    }

    v22 = v9;
    result = v45;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v13)
      {
        break;
      }

      v24 = v45[v9];
      ++v22;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v45, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6CAA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E878, &qword_26C012518);
  v40 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6CD68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E868, &qword_26C02A180);
  v36 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_26BE00608(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6D024(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E0, &qword_26C012488);
  v36 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_26BE04890(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26BE6D2E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F0, &qword_26C012498);
  v43 = a2;
  result = sub_26C00AD9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v5 + 56) + 56 * v25;
      if (v43)
      {
        v30 = *v29;
        v31 = *(v29 + 16);
        v32 = *(v29 + 32);
        v47 = *(v29 + 48);
        v45 = v31;
        v46 = v32;
        v44 = v30;
      }

      else
      {
        sub_26BE2DA9C(v29, &v44);
      }

      v33 = *(v8 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v27;
      v17[1] = v28;
      v18 = *(v8 + 56) + 56 * v16;
      v19 = v44;
      v20 = v45;
      v21 = v46;
      *(v18 + 48) = v47;
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}