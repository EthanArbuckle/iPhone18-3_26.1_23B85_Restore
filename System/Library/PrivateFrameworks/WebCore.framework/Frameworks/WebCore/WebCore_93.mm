void DES_decrypt3(unsigned int *data, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3)
{
  v7 = data[1];
  v8 = (*data ^ (v7 >> 4)) & 0xF0F0F0F;
  v9 = v8 ^ *data;
  v10 = v7 ^ (16 * v8);
  v11 = v10 ^ HIWORD(v9);
  v12 = v11 ^ v10;
  v13 = v9 ^ (v11 << 16);
  v14 = (v13 ^ (v12 >> 2)) & 0x33333333;
  v15 = v14 ^ v13;
  v16 = v12 ^ (4 * v14);
  v17 = (v16 ^ (v15 >> 8)) & 0xFF00FF;
  v18 = v17 ^ v16;
  v19 = v15 ^ (v17 << 8);
  v20 = (v19 ^ (v18 >> 1)) & 0x55555555;
  *data = v20 ^ v19;
  data[1] = v18 ^ (2 * v20);
  DES_encrypt2(data, ks3, 0);
  DES_encrypt2(data, ks2, 1);
  DES_encrypt2(data, ks1, 0);
  v21 = data[1];
  v22 = (*data ^ (v21 >> 1)) & 0x55555555;
  v23 = v22 ^ *data;
  v24 = v21 ^ (2 * v22);
  v25 = (v24 ^ (v23 >> 8)) & 0xFF00FF;
  v26 = v25 ^ v24;
  v27 = v23 ^ (v25 << 8);
  v28 = (v27 ^ (v26 >> 2)) & 0x33333333;
  v29 = v28 ^ v27;
  v30 = v26 ^ (4 * v28);
  v31 = v30 ^ HIWORD(v29);
  v32 = v31 ^ v30;
  v33 = v29 ^ (v31 << 16);
  v34 = (v33 ^ (v32 >> 4)) & 0xF0F0F0F;
  *data = v34 ^ v33;
  data[1] = v32 ^ (16 * v34);
}

int *DES_encrypt1(int *result, const DES_ks *a2, int a3)
{
  v3 = result[1];
  v4 = (*result ^ (v3 >> 4)) & 0xF0F0F0F;
  v5 = v4 ^ *result;
  v6 = v3 ^ (16 * v4);
  v7 = v6 ^ HIWORD(v5);
  v8 = v7 ^ v6;
  v9 = v5 ^ (v7 << 16);
  v10 = (v9 ^ (v8 >> 2)) & 0x33333333;
  v11 = v10 ^ v9;
  v12 = v8 ^ (4 * v10);
  v13 = (v12 ^ (v11 >> 8)) & 0xFF00FF;
  v14 = v13 ^ v12;
  v15 = v11 ^ (v13 << 8);
  v16 = (v15 ^ (v14 >> 1)) & 0x55555555;
  HIDWORD(v18) = v16 ^ v15;
  LODWORD(v18) = v16 ^ v15;
  v17 = v18 >> 29;
  HIDWORD(v18) = v14 ^ (2 * v16);
  LODWORD(v18) = HIDWORD(v18);
  v19 = v18 >> 29;
  if (a3)
  {
    v20 = a2->ks[0].deslong[0] ^ v17;
    HIDWORD(v22) = a2->ks[0].deslong[1] ^ v17;
    LODWORD(v22) = HIDWORD(v22);
    v21 = v22 >> 4;
    v23 = DES_SPtrans[v20 >> 2] ^ DES_SPtrans[(v20 >> 10) + 128] ^ DES_SPtrans[((v20 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v20 >> 26) + 384] ^ DES_SPtrans[(v21 >> 2) + 64] ^ DES_SPtrans[(v21 >> 10) + 192] ^ DES_SPtrans[((v21 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v21 >> 26) + 448] ^ v19;
    v24 = v23 ^ a2->ks[1].deslong[0];
    HIDWORD(v22) = v23 ^ a2->ks[1].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v25 = v22 >> 4;
    v26 = DES_SPtrans[v24 >> 2] ^ DES_SPtrans[(v24 >> 10) + 128] ^ DES_SPtrans[((v24 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v24 >> 26) + 384] ^ DES_SPtrans[(v25 >> 2) + 64] ^ DES_SPtrans[(v25 >> 10) + 192] ^ DES_SPtrans[((v25 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v25 >> 26) + 448] ^ v17;
    v27 = v26 ^ a2->ks[2].deslong[0];
    HIDWORD(v22) = v26 ^ a2->ks[2].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v28 = v22 >> 4;
    v29 = DES_SPtrans[v27 >> 2] ^ DES_SPtrans[(v27 >> 10) + 128] ^ DES_SPtrans[((v27 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v27 >> 26) + 384] ^ DES_SPtrans[(v28 >> 2) + 64] ^ DES_SPtrans[(v28 >> 10) + 192] ^ DES_SPtrans[((v28 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v28 >> 26) + 448] ^ v23;
    v30 = v29 ^ a2->ks[3].deslong[0];
    HIDWORD(v22) = v29 ^ a2->ks[3].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v31 = v22 >> 4;
    v32 = DES_SPtrans[v30 >> 2] ^ DES_SPtrans[(v30 >> 10) + 128] ^ DES_SPtrans[((v30 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v30 >> 26) + 384] ^ DES_SPtrans[(v31 >> 2) + 64] ^ DES_SPtrans[(v31 >> 10) + 192] ^ DES_SPtrans[((v31 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v31 >> 26) + 448] ^ v26;
    v33 = v32 ^ a2->ks[4].deslong[0];
    HIDWORD(v22) = v32 ^ a2->ks[4].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v34 = v22 >> 4;
    v35 = DES_SPtrans[v33 >> 2] ^ DES_SPtrans[(v33 >> 10) + 128] ^ DES_SPtrans[((v33 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v33 >> 26) + 384] ^ DES_SPtrans[(v34 >> 2) + 64] ^ DES_SPtrans[(v34 >> 10) + 192] ^ DES_SPtrans[((v34 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v34 >> 26) + 448] ^ v29;
    v36 = v35 ^ a2->ks[5].deslong[0];
    HIDWORD(v22) = v35 ^ a2->ks[5].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v37 = v22 >> 4;
    v38 = DES_SPtrans[v36 >> 2] ^ DES_SPtrans[(v36 >> 10) + 128] ^ DES_SPtrans[((v36 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v36 >> 26) + 384] ^ DES_SPtrans[(v37 >> 2) + 64] ^ DES_SPtrans[(v37 >> 10) + 192] ^ DES_SPtrans[((v37 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v37 >> 26) + 448] ^ v32;
    v39 = v38 ^ a2->ks[6].deslong[0];
    HIDWORD(v22) = v38 ^ a2->ks[6].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v40 = v22 >> 4;
    v41 = DES_SPtrans[v39 >> 2] ^ DES_SPtrans[(v39 >> 10) + 128] ^ DES_SPtrans[((v39 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v39 >> 26) + 384] ^ DES_SPtrans[(v40 >> 2) + 64] ^ DES_SPtrans[(v40 >> 10) + 192] ^ DES_SPtrans[((v40 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v40 >> 26) + 448] ^ v35;
    v42 = v41 ^ a2->ks[7].deslong[0];
    HIDWORD(v22) = v41 ^ a2->ks[7].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v43 = v22 >> 4;
    v44 = DES_SPtrans[v42 >> 2] ^ DES_SPtrans[(v42 >> 10) + 128] ^ DES_SPtrans[((v42 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v42 >> 26) + 384] ^ DES_SPtrans[(v43 >> 2) + 64] ^ DES_SPtrans[(v43 >> 10) + 192] ^ DES_SPtrans[((v43 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v43 >> 26) + 448] ^ v38;
    v45 = v44 ^ a2->ks[8].deslong[0];
    HIDWORD(v22) = v44 ^ a2->ks[8].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v46 = v22 >> 4;
    v47 = DES_SPtrans[v45 >> 2] ^ DES_SPtrans[(v45 >> 10) + 128] ^ DES_SPtrans[((v45 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v45 >> 26) + 384] ^ DES_SPtrans[(v46 >> 2) + 64] ^ DES_SPtrans[(v46 >> 10) + 192] ^ DES_SPtrans[((v46 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v46 >> 26) + 448] ^ v41;
    v48 = v47 ^ a2->ks[9].deslong[0];
    HIDWORD(v22) = v47 ^ a2->ks[9].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v49 = v22 >> 4;
    v50 = DES_SPtrans[v48 >> 2] ^ DES_SPtrans[(v48 >> 10) + 128] ^ DES_SPtrans[((v48 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v48 >> 26) + 384] ^ DES_SPtrans[(v49 >> 2) + 64] ^ DES_SPtrans[(v49 >> 10) + 192] ^ DES_SPtrans[((v49 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v49 >> 26) + 448] ^ v44;
    v51 = v50 ^ a2->ks[10].deslong[0];
    HIDWORD(v22) = v50 ^ a2->ks[10].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v52 = v22 >> 4;
    v53 = DES_SPtrans[v51 >> 2] ^ DES_SPtrans[(v51 >> 10) + 128] ^ DES_SPtrans[((v51 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v51 >> 26) + 384] ^ DES_SPtrans[(v52 >> 2) + 64] ^ DES_SPtrans[(v52 >> 10) + 192] ^ DES_SPtrans[((v52 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v52 >> 26) + 448] ^ v47;
    v54 = v53 ^ a2->ks[11].deslong[0];
    HIDWORD(v22) = v53 ^ a2->ks[11].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v55 = v22 >> 4;
    v56 = DES_SPtrans[v54 >> 2] ^ DES_SPtrans[(v54 >> 10) + 128] ^ DES_SPtrans[((v54 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v54 >> 26) + 384] ^ DES_SPtrans[(v55 >> 2) + 64] ^ DES_SPtrans[(v55 >> 10) + 192] ^ DES_SPtrans[((v55 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v55 >> 26) + 448] ^ v50;
    v57 = v56 ^ a2->ks[12].deslong[0];
    HIDWORD(v22) = v56 ^ a2->ks[12].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v58 = v22 >> 4;
    v59 = DES_SPtrans[v57 >> 2] ^ DES_SPtrans[(v57 >> 10) + 128] ^ DES_SPtrans[((v57 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v57 >> 26) + 384] ^ DES_SPtrans[(v58 >> 2) + 64] ^ DES_SPtrans[(v58 >> 10) + 192] ^ DES_SPtrans[((v58 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v58 >> 26) + 448] ^ v53;
    v60 = v59 ^ a2->ks[13].deslong[0];
    HIDWORD(v22) = v59 ^ a2->ks[13].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v61 = v22 >> 4;
    v62 = DES_SPtrans[v60 >> 2] ^ DES_SPtrans[(v60 >> 10) + 128] ^ DES_SPtrans[((v60 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v60 >> 26) + 384] ^ DES_SPtrans[(v61 >> 2) + 64] ^ DES_SPtrans[(v61 >> 10) + 192] ^ DES_SPtrans[((v61 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v61 >> 26) + 448] ^ v56;
    v63 = v62 ^ a2->ks[14].deslong[0];
    HIDWORD(v22) = v62 ^ a2->ks[14].deslong[1];
    LODWORD(v22) = HIDWORD(v22);
    v64 = DES_SPtrans[v63 >> 2] ^ DES_SPtrans[(v63 >> 10) + 128] ^ DES_SPtrans[((v63 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v63 >> 26) + 384] ^ DES_SPtrans[((v22 >> 4) >> 2) + 64] ^ DES_SPtrans[((v22 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v22 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v22 >> 4) >> 26) + 448] ^ v59;
    v65 = &a2->ks[15];
    v66 = 31;
  }

  else
  {
    v67 = a2->ks[15].deslong[0] ^ v17;
    HIDWORD(v69) = a2->ks[15].deslong[1] ^ v17;
    LODWORD(v69) = HIDWORD(v69);
    v68 = v69 >> 4;
    v70 = DES_SPtrans[v67 >> 2] ^ DES_SPtrans[(v67 >> 10) + 128] ^ DES_SPtrans[((v67 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v67 >> 26) + 384] ^ DES_SPtrans[(v68 >> 2) + 64] ^ DES_SPtrans[(v68 >> 10) + 192] ^ DES_SPtrans[((v68 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v68 >> 26) + 448] ^ v19;
    v71 = v70 ^ a2->ks[14].deslong[0];
    HIDWORD(v69) = v70 ^ a2->ks[14].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v72 = v69 >> 4;
    v73 = DES_SPtrans[v71 >> 2] ^ DES_SPtrans[(v71 >> 10) + 128] ^ DES_SPtrans[((v71 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v71 >> 26) + 384] ^ DES_SPtrans[(v72 >> 2) + 64] ^ DES_SPtrans[(v72 >> 10) + 192] ^ DES_SPtrans[((v72 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v72 >> 26) + 448] ^ v17;
    v74 = v73 ^ a2->ks[13].deslong[0];
    HIDWORD(v69) = v73 ^ a2->ks[13].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v75 = v69 >> 4;
    v76 = DES_SPtrans[v74 >> 2] ^ DES_SPtrans[(v74 >> 10) + 128] ^ DES_SPtrans[((v74 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v74 >> 26) + 384] ^ DES_SPtrans[(v75 >> 2) + 64] ^ DES_SPtrans[(v75 >> 10) + 192] ^ DES_SPtrans[((v75 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v75 >> 26) + 448] ^ v70;
    v77 = v76 ^ a2->ks[12].deslong[0];
    HIDWORD(v69) = v76 ^ a2->ks[12].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v78 = v69 >> 4;
    v79 = DES_SPtrans[v77 >> 2] ^ DES_SPtrans[(v77 >> 10) + 128] ^ DES_SPtrans[((v77 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v77 >> 26) + 384] ^ DES_SPtrans[(v78 >> 2) + 64] ^ DES_SPtrans[(v78 >> 10) + 192] ^ DES_SPtrans[((v78 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v78 >> 26) + 448] ^ v73;
    v80 = v79 ^ a2->ks[11].deslong[0];
    HIDWORD(v69) = v79 ^ a2->ks[11].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v81 = v69 >> 4;
    v82 = DES_SPtrans[v80 >> 2] ^ DES_SPtrans[(v80 >> 10) + 128] ^ DES_SPtrans[((v80 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v80 >> 26) + 384] ^ DES_SPtrans[(v81 >> 2) + 64] ^ DES_SPtrans[(v81 >> 10) + 192] ^ DES_SPtrans[((v81 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v81 >> 26) + 448] ^ v76;
    v83 = v82 ^ a2->ks[10].deslong[0];
    HIDWORD(v69) = v82 ^ a2->ks[10].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v84 = v69 >> 4;
    v85 = DES_SPtrans[v83 >> 2] ^ DES_SPtrans[(v83 >> 10) + 128] ^ DES_SPtrans[((v83 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v83 >> 26) + 384] ^ DES_SPtrans[(v84 >> 2) + 64] ^ DES_SPtrans[(v84 >> 10) + 192] ^ DES_SPtrans[((v84 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v84 >> 26) + 448] ^ v79;
    v86 = v85 ^ a2->ks[9].deslong[0];
    HIDWORD(v69) = v85 ^ a2->ks[9].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v87 = v69 >> 4;
    v88 = DES_SPtrans[v86 >> 2] ^ DES_SPtrans[(v86 >> 10) + 128] ^ DES_SPtrans[((v86 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v86 >> 26) + 384] ^ DES_SPtrans[(v87 >> 2) + 64] ^ DES_SPtrans[(v87 >> 10) + 192] ^ DES_SPtrans[((v87 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v87 >> 26) + 448] ^ v82;
    v89 = v88 ^ a2->ks[8].deslong[0];
    HIDWORD(v69) = v88 ^ a2->ks[8].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v90 = v69 >> 4;
    v91 = DES_SPtrans[v89 >> 2] ^ DES_SPtrans[(v89 >> 10) + 128] ^ DES_SPtrans[((v89 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v89 >> 26) + 384] ^ DES_SPtrans[(v90 >> 2) + 64] ^ DES_SPtrans[(v90 >> 10) + 192] ^ DES_SPtrans[((v90 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v90 >> 26) + 448] ^ v85;
    v92 = v91 ^ a2->ks[7].deslong[0];
    HIDWORD(v69) = v91 ^ a2->ks[7].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v93 = v69 >> 4;
    v94 = DES_SPtrans[v92 >> 2] ^ DES_SPtrans[(v92 >> 10) + 128] ^ DES_SPtrans[((v92 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v92 >> 26) + 384] ^ DES_SPtrans[(v93 >> 2) + 64] ^ DES_SPtrans[(v93 >> 10) + 192] ^ DES_SPtrans[((v93 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v93 >> 26) + 448] ^ v88;
    v95 = v94 ^ a2->ks[6].deslong[0];
    HIDWORD(v69) = v94 ^ a2->ks[6].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v96 = v69 >> 4;
    v97 = DES_SPtrans[v95 >> 2] ^ DES_SPtrans[(v95 >> 10) + 128] ^ DES_SPtrans[((v95 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v95 >> 26) + 384] ^ DES_SPtrans[(v96 >> 2) + 64] ^ DES_SPtrans[(v96 >> 10) + 192] ^ DES_SPtrans[((v96 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v96 >> 26) + 448] ^ v91;
    v98 = v97 ^ a2->ks[5].deslong[0];
    HIDWORD(v69) = v97 ^ a2->ks[5].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v99 = v69 >> 4;
    v100 = DES_SPtrans[v98 >> 2] ^ DES_SPtrans[(v98 >> 10) + 128] ^ DES_SPtrans[((v98 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v98 >> 26) + 384] ^ DES_SPtrans[(v99 >> 2) + 64] ^ DES_SPtrans[(v99 >> 10) + 192] ^ DES_SPtrans[((v99 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v99 >> 26) + 448] ^ v94;
    v101 = v100 ^ a2->ks[4].deslong[0];
    HIDWORD(v69) = v100 ^ a2->ks[4].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v102 = v69 >> 4;
    v103 = DES_SPtrans[v101 >> 2] ^ DES_SPtrans[(v101 >> 10) + 128] ^ DES_SPtrans[((v101 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v101 >> 26) + 384] ^ DES_SPtrans[(v102 >> 2) + 64] ^ DES_SPtrans[(v102 >> 10) + 192] ^ DES_SPtrans[((v102 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v102 >> 26) + 448] ^ v97;
    v104 = v103 ^ a2->ks[3].deslong[0];
    HIDWORD(v69) = v103 ^ a2->ks[3].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v105 = v69 >> 4;
    v106 = DES_SPtrans[v104 >> 2] ^ DES_SPtrans[(v104 >> 10) + 128] ^ DES_SPtrans[((v104 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v104 >> 26) + 384] ^ DES_SPtrans[(v105 >> 2) + 64] ^ DES_SPtrans[(v105 >> 10) + 192] ^ DES_SPtrans[((v105 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v105 >> 26) + 448] ^ v100;
    v107 = v106 ^ a2->ks[2].deslong[0];
    HIDWORD(v69) = v106 ^ a2->ks[2].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v108 = v69 >> 4;
    v62 = DES_SPtrans[v107 >> 2] ^ DES_SPtrans[(v107 >> 10) + 128] ^ DES_SPtrans[((v107 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v107 >> 26) + 384] ^ DES_SPtrans[(v108 >> 2) + 64] ^ DES_SPtrans[(v108 >> 10) + 192] ^ DES_SPtrans[((v108 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v108 >> 26) + 448] ^ v103;
    v109 = v62 ^ a2->ks[1].deslong[0];
    HIDWORD(v69) = v62 ^ a2->ks[1].deslong[1];
    LODWORD(v69) = HIDWORD(v69);
    v64 = DES_SPtrans[v109 >> 2] ^ DES_SPtrans[(v109 >> 10) + 128] ^ DES_SPtrans[((v109 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v109 >> 26) + 384] ^ DES_SPtrans[((v69 >> 4) >> 2) + 64] ^ DES_SPtrans[((v69 >> 4) >> 10) + 192] ^ DES_SPtrans[(((v69 >> 4) >> 18) & 0x3F) + 320] ^ DES_SPtrans[((v69 >> 4) >> 26) + 448] ^ v106;
    v66 = 1;
    v65 = a2;
  }

  v110 = v65->ks[0].deslong[0] ^ v64;
  HIDWORD(v112) = a2->ks[0].deslong[v66] ^ v64;
  LODWORD(v112) = HIDWORD(v112);
  v111 = v112 >> 4;
  HIDWORD(v112) = v64;
  LODWORD(v112) = v64;
  v113 = v112 >> 3;
  HIDWORD(v112) = DES_SPtrans[v110 >> 2] ^ v62 ^ DES_SPtrans[(v110 >> 10) + 128] ^ DES_SPtrans[((v110 >> 18) & 0x3F) + 256] ^ DES_SPtrans[(v110 >> 26) + 384] ^ DES_SPtrans[(v111 >> 2) + 64] ^ DES_SPtrans[(v111 >> 10) + 192] ^ DES_SPtrans[((v111 >> 18) & 0x3F) + 320] ^ DES_SPtrans[(v111 >> 26) + 448];
  LODWORD(v112) = HIDWORD(v112);
  v114 = v112 >> 3;
  v115 = (v113 ^ (v114 >> 1)) & 0x55555555;
  v116 = v115 ^ v113;
  v117 = v114 ^ (2 * v115);
  v118 = (v117 ^ (v116 >> 8)) & 0xFF00FF;
  v119 = v118 ^ v117;
  v120 = v116 ^ (v118 << 8);
  v121 = (v120 ^ (v119 >> 2)) & 0x33333333;
  v122 = v121 ^ v120;
  v123 = v119 ^ (4 * v121);
  v124 = v123 ^ HIWORD(v122);
  v125 = v124 ^ v123;
  v126 = v122 ^ (v124 << 16);
  v127 = (v126 ^ (v125 >> 4)) & 0xF0F0F0F;
  *result = v127 ^ v126;
  result[1] = v125 ^ (16 * v127);
  return result;
}

int *DES_ncbc_encrypt_ex(int *result, uint64_t a2, unint64_t a3, DES_ks *a4, int8x8_t *a5, int a6)
{
  v8 = a3;
  v10 = result;
  v42[1] = *MEMORY[0x277D85DE8];
  v11 = *a5;
  v12 = *a5;
  v13 = HIDWORD(*a5);
  if (!a6)
  {
    if (a3 >= 8)
    {
      do
      {
        v18 = a2;
        v19 = v12;
        v20 = v13;
        v12 = *v10;
        v13 = v10[1];
        v21 = v10 + 2;
        LODWORD(v42[0]) = *v10;
        HIDWORD(v42[0]) = v13;
        result = DES_encrypt1(v42, a4, 0);
        v22 = WORD1(v42[0]) ^ HIWORD(v19);
        v23 = HIDWORD(v42[0]) ^ v20;
        *v18 = LOWORD(v42[0]) ^ v19;
        *(v18 + 2) = v22;
        *(v18 + 4) = v23;
        a2 = v18 + 8;
        v8 -= 8;
        v10 += 2;
      }

      while (v8 > 7);
      v10 = v21;
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    v25 = *v10;
    v24 = v10[1];
    v42[0] = __PAIR64__(v24, v25);
    result = DES_encrypt1(v42, a4, 0);
    v26 = LODWORD(v42[0]) ^ v12;
    v27 = a2 + v8;
    if (v8 <= 3)
    {
      if (v8 == 1)
      {
LABEL_40:
        *(v27 - 1) = v26;
        v12 = v25;
        v13 = v24;
LABEL_41:
        a5->i32[0] = v12;
        a5->i16[2] = v13;
        v34 = HIBYTE(v13);
        a5->i8[6] = BYTE2(v13);
        goto LABEL_42;
      }

      if (v8 == 2)
      {
LABEL_39:
        *--v27 = BYTE1(v26);
        goto LABEL_40;
      }

LABEL_38:
      *--v27 = BYTE2(v26);
      goto LABEL_39;
    }

    v28 = HIDWORD(v42[0]) ^ v13;
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *--v27 = BYTE2(v28);
      }

      *--v27 = BYTE1(v28);
    }

    else if (v8 == 4)
    {
      goto LABEL_37;
    }

    *--v27 = v28;
LABEL_37:
    *--v27 = HIBYTE(v26);
    goto LABEL_38;
  }

  if (a3 >= 8)
  {
    do
    {
      v14 = a2;
      v15 = *v10;
      v10 += 2;
      v42[0] = veor_s8(v15, v11);
      result = DES_encrypt1(v42, a4, 1);
      v11 = v42[0];
      v12 = v42[0];
      *a2 = v42[0];
      *(a2 + 2) = BYTE2(v12);
      *(a2 + 3) = HIBYTE(v12);
      v13 = v11.u32[1];
      *(a2 + 4) = v11.i16[2];
      *(a2 + 6) = v11.i8[6];
      a2 += 8;
      *(v14 + 7) = v11.i8[7];
      v8 -= 8;
    }

    while (v8 > 7);
  }

  if (v8)
  {
    v16 = 0;
    v17 = v10 + v8;
    if (v8 <= 3)
    {
      v35 = 0;
      if (v8 == 1)
      {
LABEL_28:
        LODWORD(v42[0]) = (v16 | *(v17 - 1)) ^ v12;
        HIDWORD(v42[0]) = v35 ^ v13;
        result = DES_encrypt1(v42, a4, 1);
        LOBYTE(v12) = v42[0];
        v13 = HIDWORD(v42[0]);
        v29 = LODWORD(v42[0]) >> 8;
        v30 = HIWORD(LODWORD(v42[0]));
        v31 = HIBYTE(LODWORD(v42[0]));
        v32 = HIDWORD(v42[0]) >> 8;
        v33 = HIWORD(HIDWORD(v42[0]));
        v34 = HIBYTE(HIDWORD(v42[0]));
        *a2 = v42[0];
        *(a2 + 4) = v13;
        goto LABEL_29;
      }

      if (v8 == 2)
      {
LABEL_27:
        v41 = *--v17;
        v16 |= v41 << 8;
        goto LABEL_28;
      }

LABEL_26:
      v40 = *--v17;
      v16 |= v40 << 16;
      goto LABEL_27;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v36 = *--v17;
        v16 = v36 << 16;
      }

      v37 = *--v17;
      v16 |= v37 << 8;
    }

    else if (v8 == 4)
    {
      goto LABEL_25;
    }

    v38 = *--v17;
    v16 |= v38;
LABEL_25:
    v35 = v16;
    v39 = *--v17;
    v16 = v39 << 24;
    goto LABEL_26;
  }

  v29 = v12 >> 8;
  v30 = HIWORD(v12);
  v31 = HIBYTE(v12);
  v32 = v13 >> 8;
  v33 = HIWORD(v13);
  v34 = HIBYTE(v13);
LABEL_29:
  a5->i8[0] = v12;
  a5->i8[1] = v29;
  a5->i8[2] = v30;
  a5->i8[3] = v31;
  a5->i8[4] = v13;
  a5->i8[5] = v32;
  a5->i8[6] = v33;
LABEL_42:
  a5->i8[7] = v34;
  return result;
}

void DES_ede3_cbc_encrypt_ex(unsigned int *a1, uint64_t a2, unint64_t a3, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3, int8x8_t *a7, int a8)
{
  v8 = a7;
  v9 = ks3;
  v10 = ks2;
  v11 = ks1;
  v12 = a3;
  v51 = *MEMORY[0x277D85DE8];
  v15 = *a7;
  v16 = *a7;
  v17 = HIDWORD(*a7);
  if (!a8)
  {
    if (a3 >= 8)
    {
      do
      {
        v24 = a2;
        v25 = v16;
        v26 = v17;
        v16 = *a1;
        v17 = a1[1];
        v27 = a1 + 2;
        data[0] = *a1;
        data[1] = v17;
        DES_decrypt3(data, ks1, ks2, ks3);
        v28 = HIWORD(data[0]) ^ HIWORD(v25);
        v29 = data[1] ^ v26;
        *v24 = LOWORD(data[0]) ^ v25;
        *(v24 + 2) = v28;
        *(v24 + 4) = v29;
        a2 = v24 + 8;
        v12 -= 8;
        a1 += 2;
      }

      while (v12 > 7);
      a1 = v27;
      v9 = ks3;
      v10 = ks2;
      v8 = a7;
      v11 = ks1;
    }

    if (!v12)
    {
      goto LABEL_41;
    }

    v31 = *a1;
    v30 = a1[1];
    data[0] = v31;
    data[1] = v30;
    DES_decrypt3(data, v11, v10, v9);
    v32 = data[0] ^ v16;
    v33 = a2 + v12;
    if (v12 <= 3)
    {
      if (v12 == 1)
      {
LABEL_40:
        *(v33 - 1) = v32;
        v16 = v31;
        v17 = v30;
LABEL_41:
        v8->i32[0] = v16;
        v8->i16[2] = v17;
        v40 = HIBYTE(v17);
        v8->i8[6] = BYTE2(v17);
        goto LABEL_42;
      }

      if (v12 == 2)
      {
LABEL_39:
        *--v33 = BYTE1(v32);
        goto LABEL_40;
      }

LABEL_38:
      *--v33 = BYTE2(v32);
      goto LABEL_39;
    }

    v34 = data[1] ^ v17;
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        *--v33 = BYTE2(v34);
      }

      *--v33 = BYTE1(v34);
    }

    else if (v12 == 4)
    {
      goto LABEL_37;
    }

    *--v33 = v34;
LABEL_37:
    *--v33 = HIBYTE(v32);
    goto LABEL_38;
  }

  if (a3 >= 8)
  {
    do
    {
      v18 = a2;
      v19 = *a1;
      a1 += 2;
      *data = veor_s8(v19, v15);
      DES_encrypt3(data, v11, v10, v9);
      v15 = *data;
      v16 = data[0];
      *a2 = data[0];
      *(a2 + 2) = BYTE2(v16);
      *(a2 + 3) = HIBYTE(v16);
      v17 = v15.u32[1];
      *(a2 + 4) = v15.i16[2];
      *(a2 + 6) = v15.i8[6];
      a2 += 8;
      *(v18 + 7) = v15.i8[7];
      v12 -= 8;
    }

    while (v12 > 7);
  }

  if (v12)
  {
    v20 = 0;
    v21 = a1 + v12;
    if (v12 <= 3)
    {
      v41 = 0;
      if (v12 == 1)
      {
LABEL_28:
        data[0] = (v20 | *(v21 - 1)) ^ v16;
        data[1] = v41 ^ v17;
        DES_encrypt3(data, v11, v10, v9);
        v16 = data[0];
        v17 = data[1];
        *a2 = data[0];
        v35 = v16 >> 8;
        *(a2 + 1) = BYTE1(v16);
        v36 = HIWORD(v16);
        *(a2 + 2) = BYTE2(v16);
        v37 = HIBYTE(v16);
        *(a2 + 3) = HIBYTE(v16);
        *(a2 + 4) = v17;
        v38 = v17 >> 8;
        v39 = HIWORD(v17);
        v40 = HIBYTE(v17);
        goto LABEL_29;
      }

      if (v12 == 2)
      {
LABEL_27:
        v47 = *--v21;
        v20 |= v47 << 8;
        goto LABEL_28;
      }

LABEL_26:
      v46 = *--v21;
      v20 |= v46 << 16;
      goto LABEL_27;
    }

    if (v12 > 5)
    {
      if (v12 != 6)
      {
        v42 = *--v21;
        v20 = v42 << 16;
      }

      v43 = *--v21;
      v20 |= v43 << 8;
    }

    else if (v12 == 4)
    {
      goto LABEL_25;
    }

    v44 = *--v21;
    v20 |= v44;
LABEL_25:
    v41 = v20;
    v45 = *--v21;
    v20 = v45 << 24;
    goto LABEL_26;
  }

  v35 = v16 >> 8;
  v36 = HIWORD(v16);
  v37 = HIBYTE(v16);
  v38 = v17 >> 8;
  v39 = HIWORD(v17);
  v40 = HIBYTE(v17);
LABEL_29:
  v8->i8[0] = v16;
  v8->i8[1] = v35;
  v8->i8[2] = v36;
  v8->i8[3] = v37;
  v8->i8[4] = v17;
  v8->i8[5] = v38;
  v8->i8[6] = v39;
LABEL_42:
  v8->i8[7] = v40;
}

const EVP_MD *EVP_get_digestbyobj(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 671)
  {
    if (v1 <= 63)
    {
      if (!v1)
      {
        return cbs_to_md(*(a1 + 24), *(a1 + 20) & ~(*(a1 + 20) >> 31));
      }

      if (v1 == 4)
      {
        return off_2882A4BC8();
      }
    }

    else
    {
      switch(v1)
      {
        case 64:
          return off_2882A4BE8();
        case 114:
          return off_2882A4CA8();
        case 257:
          return off_2882A4BA8();
      }
    }

    return 0;
  }

  if (v1 > 673)
  {
    switch(v1)
    {
      case 674:
        return off_2882A4C68();
      case 675:
        return off_2882A4C08();
      case 962:
        return off_2882A4C88();
    }

    return 0;
  }

  if (v1 == 672)
  {
    return off_2882A4C28();
  }

  else
  {
    return off_2882A4C48();
  }
}

const EVP_MD *cbs_to_md(uint64_t a1, uint64_t a2)
{
  if (a2 == 5)
  {
    if (*a1 != 33754667 || *(a1 + 4) != 26)
    {
      return 0;
    }

    v2 = 64;
    goto LABEL_42;
  }

  if (a2 != 9)
  {
    if (a2 != 8)
    {
      return 0;
    }

    if (*a1 != 0x4020DF78648862ALL)
    {
      if (*a1 == 0x5020DF78648862ALL)
      {
        v2 = 4;
        goto LABEL_42;
      }

      return 0;
    }

    v2 = 257;
LABEL_42:
    if (v2 > 113)
    {
      return off_2882A4BA8();
    }

    if (v2 == 4)
    {
      return off_2882A4BC8();
    }

    return off_2882A4BE8();
  }

  if (*a1 == 0x204036501488660 && *(a1 + 8) == 1)
  {
    v7 = 672;
  }

  else if (*a1 == 0x204036501488660 && *(a1 + 8) == 2)
  {
    v7 = 673;
  }

  else if (*a1 == 0x204036501488660 && *(a1 + 8) == 3)
  {
    v7 = 674;
  }

  else
  {
    if (*a1 != 0x204036501488660 || *(a1 + 8) != 4)
    {
      return 0;
    }

    v7 = 675;
  }

  if (v7 <= 673)
  {
    if (v7 == 672)
    {
      return off_2882A4C28();
    }

    else
    {
      return off_2882A4C48();
    }
  }

  else if (v7 == 674)
  {
    return off_2882A4C68();
  }

  else
  {
    return off_2882A4C08();
  }
}

double md4_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  result = 0.0;
  *(engine + 76) = 0u;
  *(engine + 3) = 0u;
  *(engine + 4) = 0u;
  *(engine + 1) = 0u;
  *(engine + 2) = 0u;
  *engine = xmmword_273BA7120;
  return result;
}

uint64_t md4_update(env_md_ctx_st *a1, const void *a2, size_t a3)
{
  result = MD4_Update(a1->engine, a2, a3);
  if (!result)
  {
    abort();
  }

  return result;
}

double md4_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = *(engine + 22);
  v5 = (engine + 24);
  *(engine + v4 + 24) = 0x80;
  v6 = v4 + 1;
  if (v4 >= 0x38)
  {
    if (v4 != 63)
    {
      bzero(v5 + v6, 63 - v4);
    }

    md4_block_data_order(engine, engine + 24, 1);
    v6 = 0;
    goto LABEL_6;
  }

  if (v4 != 55)
  {
LABEL_6:
    bzero(v5 + v6, 56 - v6);
  }

  *(engine + 10) = *(engine + 2);
  md4_block_data_order(engine, engine + 24, 1);
  *(engine + 22) = 0;
  result = 0.0;
  *(engine + 56) = 0u;
  *(engine + 72) = 0u;
  *v5 = 0u;
  *(engine + 40) = 0u;
  *a2 = *engine;
  *(a2 + 1) = *(engine + 1);
  *(a2 + 2) = *(engine + 2);
  *(a2 + 3) = *(engine + 3);
  return result;
}

double md5_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  result = 0.0;
  *(engine + 76) = 0u;
  *(engine + 3) = 0u;
  *(engine + 4) = 0u;
  *(engine + 1) = 0u;
  *(engine + 2) = 0u;
  *engine = xmmword_273BA7120;
  return result;
}

uint64_t md5_update(env_md_ctx_st *a1, const void *a2, size_t a3)
{
  result = MD5_Update(a1->engine, a2, a3);
  if (!result)
  {
    abort();
  }

  return result;
}

double md5_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = *(engine + 22);
  v5 = (engine + 24);
  *(engine + v4 + 24) = 0x80;
  v6 = v4 + 1;
  if (v4 >= 0x38)
  {
    if (v4 != 63)
    {
      bzero(v5 + v6, 63 - v4);
    }

    md5_block_data_order(engine, engine + 24, 1);
    v6 = 0;
    goto LABEL_6;
  }

  if (v4 != 55)
  {
LABEL_6:
    bzero(v5 + v6, 56 - v6);
  }

  *(engine + 10) = *(engine + 2);
  md5_block_data_order(engine, engine + 24, 1);
  *(engine + 22) = 0;
  result = 0.0;
  *(engine + 56) = 0u;
  *(engine + 72) = 0u;
  *v5 = 0u;
  *(engine + 40) = 0u;
  *a2 = *engine;
  *(a2 + 1) = *(engine + 1);
  *(a2 + 2) = *(engine + 2);
  *(a2 + 3) = *(engine + 3);
  return result;
}

double md5_sha1_init(env_md_ctx_st *a1)
{
  engine = a1->engine;
  result = 0.0;
  *(engine + 76) = 0u;
  *(engine + 3) = 0u;
  *(engine + 4) = 0u;
  *(engine + 1) = 0u;
  *(engine + 2) = 0u;
  *engine = xmmword_273BA7120;
  *(engine + 7) = 0u;
  *(engine + 8) = 0u;
  *(engine + 9) = 0u;
  *(engine + 10) = 0u;
  *(engine + 172) = 0u;
  *(engine + 92) = xmmword_273BA7120;
  *(engine + 27) = -1009589776;
  return result;
}

uint64_t md5_sha1_update(env_md_ctx_st *a1, void *a2, size_t a3)
{
  engine = a1->engine;
  if (!MD5_Update(engine, a2, a3))
  {
    abort();
  }

  return BCM_sha1_update(&engine[1].A, a2, a3);
}

double md5_sha1_final(env_md_ctx_st *a1, unsigned __int8 *a2)
{
  engine = a1->engine;
  v4 = *(engine + 22);
  v5 = (engine + 24);
  *(engine + v4 + 24) = 0x80;
  v6 = v4 + 1;
  if (v4 < 0x38)
  {
    if (v4 == 55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v4 != 63)
    {
      bzero(v5 + v6, 63 - v4);
    }

    md5_block_data_order(engine, engine + 24, 1);
    v6 = 0;
  }

  bzero(v5 + v6, 56 - v6);
LABEL_7:
  *(engine + 10) = *(engine + 2);
  md5_block_data_order(engine, engine + 24, 1);
  *(engine + 22) = 0;
  *(engine + 56) = 0u;
  *(engine + 72) = 0u;
  *v5 = 0u;
  *(engine + 40) = 0u;
  *a2 = *engine;
  *(a2 + 1) = *(engine + 1);
  *(a2 + 2) = *(engine + 2);
  *(a2 + 3) = *(engine + 3);
  v7 = *(engine + 46);
  v8 = (engine + 120);
  *(engine + v7 + 120) = 0x80;
  v9 = v7 + 1;
  if (v7 >= 0x38)
  {
    if (v7 != 63)
    {
      bzero(v8 + v9, 63 - v7);
    }

    sha1_block_data_order(engine + 23, engine + 120, 1);
    v9 = 0;
    goto LABEL_12;
  }

  if (v7 != 55)
  {
LABEL_12:
    bzero(v8 + v9, 56 - v9);
  }

  *(engine + 22) = vrev64_s32(vrev32_s8(*(engine + 112)));
  sha1_block_data_order(engine + 23, engine + 120, 1);
  *(engine + 46) = 0;
  result = 0.0;
  *(engine + 152) = 0u;
  *(engine + 168) = 0u;
  *v8 = 0u;
  *(engine + 136) = 0u;
  *(a2 + 4) = bswap32(*(engine + 23));
  *(a2 + 5) = bswap32(*(engine + 24));
  *(a2 + 6) = bswap32(*(engine + 25));
  *(a2 + 7) = bswap32(*(engine + 26));
  *(a2 + 8) = bswap32(*(engine + 27));
  return result;
}

void DSA_free(DSA *r)
{
  if (r)
  {
    v2 = atomic_load(&r[1].meth);
    if (v2 != -1)
    {
      while (1)
      {
        if (!v2)
        {
          abort();
        }

        v3 = v2;
        atomic_compare_exchange_strong(&r[1].meth, &v3, v2 - 1);
        if (v3 == v2)
        {
          break;
        }

        v2 = v3;
        if (v3 == -1)
        {
          return;
        }
      }

      if (v2 == 1)
      {
        CRYPTO_free_ex_data(&g_ex_data_class, r, &r[1].engine);
        v4 = *&r->pad;
        if (*&r->pad)
        {
          v5 = *(v4 + 5);
          if ((v5 & 2) == 0)
          {
            v6 = *v4;
            if (*v4)
            {
              v8 = *(v6 - 8);
              v7 = (v6 - 8);
              v9 = v8 + 8;
              if (v8 != -8)
              {
                bzero(v7, v9);
              }

              free(v7);
              v5 = *(v4 + 5);
            }
          }

          if (v5)
          {
            v11 = *(v4 - 1);
            v10 = v4 - 1;
            v12 = v11 + 8;
            if (v11 != -8)
            {
              bzero(v10, v12);
            }

            free(v10);
          }

          else
          {
            *v4 = 0;
          }
        }

        version = r->version;
        if (version)
        {
          v14 = *(version + 20);
          if ((v14 & 2) == 0)
          {
            v15 = *version;
            if (*version)
            {
              v17 = *(v15 - 8);
              v16 = (v15 - 8);
              v18 = v17 + 8;
              if (v17 != -8)
              {
                bzero(v16, v18);
              }

              free(v16);
              v14 = *(version + 20);
            }
          }

          if (v14)
          {
            v20 = *(version - 8);
            v19 = (version - 8);
            v21 = v20 + 8;
            if (v20 != -8)
            {
              bzero(v19, v21);
            }

            free(v19);
          }

          else
          {
            *version = 0;
          }
        }

        v22 = *&r->write_params;
        if (v22)
        {
          v23 = *(v22 + 5);
          if ((v23 & 2) == 0)
          {
            v24 = *v22;
            if (*v22)
            {
              v26 = *(v24 - 8);
              v25 = (v24 - 8);
              v27 = v26 + 8;
              if (v26 != -8)
              {
                bzero(v25, v27);
              }

              free(v25);
              v23 = *(v22 + 5);
            }
          }

          if (v23)
          {
            v29 = *(v22 - 1);
            v28 = v22 - 1;
            v30 = v29 + 8;
            if (v29 != -8)
            {
              bzero(v28, v30);
            }

            free(v28);
          }

          else
          {
            *v22 = 0;
          }
        }

        p = r->p;
        if (p)
        {
          flags = p->flags;
          if ((flags & 2) == 0)
          {
            d = p->d;
            if (p->d)
            {
              v35 = *(d - 1);
              v34 = d - 1;
              v36 = v35 + 8;
              if (v35 != -8)
              {
                bzero(v34, v36);
              }

              free(v34);
              flags = p->flags;
            }
          }

          if (flags)
          {
            v38 = *&p[-1].neg;
            p_neg = &p[-1].neg;
            v39 = v38 + 8;
            if (v38 != -8)
            {
              bzero(p_neg, v39);
            }

            free(p_neg);
          }

          else
          {
            p->d = 0;
          }
        }

        q = r->q;
        if (q)
        {
          v41 = q->flags;
          if ((v41 & 2) == 0)
          {
            v42 = q->d;
            if (q->d)
            {
              v44 = *(v42 - 1);
              v43 = v42 - 1;
              v45 = v44 + 8;
              if (v44 != -8)
              {
                bzero(v43, v45);
              }

              free(v43);
              v41 = q->flags;
            }
          }

          if (v41)
          {
            v47 = *&q[-1].neg;
            v46 = &q[-1].neg;
            v48 = v47 + 8;
            if (v47 != -8)
            {
              bzero(v46, v48);
            }

            free(v46);
          }

          else
          {
            q->d = 0;
          }
        }

        BN_MONT_CTX_free(r[1].ex_data.sk);
        BN_MONT_CTX_free(*&r[1].ex_data.dummy);
        pthread_rwlock_destroy(&r->g);
        engine = r[-1].engine;
        p_engine = &r[-1].engine;
        v51 = engine + 8;
        if (engine != -8)
        {
          bzero(p_engine, v51);
        }

        free(p_engine);
      }
    }
  }
}

int DSA_size(const DSA *a1)
{
  version = a1->version;
  if (!version)
  {
    return 0;
  }

  v2 = *(version + 8);
  if (v2 < 1)
  {
    if (!v2)
    {
      result = 0;
      v6 = 3;
      goto LABEL_29;
    }

    v3 = *version;
  }

  else
  {
    v3 = *version;
    while (!*(*version - 8 + 8 * v2))
    {
      v4 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        result = 0;
        v6 = 3;
        goto LABEL_29;
      }
    }
  }

  v7 = v2 - 1;
  v8 = *(v3 + 8 * (v2 - 1));
  v9 = v8 != 0;
  v10 = HIDWORD(v8) != 0;
  if (HIDWORD(v8))
  {
    v8 >>= 32;
  }

  v11 = v8 >> 16 != 0;
  if (v8 >> 16)
  {
    v8 >>= 16;
  }

  v12 = v8 > 0xFF;
  if (v8 > 0xFF)
  {
    v8 >>= 8;
  }

  v13 = v8 > 0xF;
  if (v8 > 0xF)
  {
    v8 >>= 4;
  }

  v14 = v8 > 3;
  if (v8 > 3)
  {
    v8 >>= 2;
  }

  v15 = v9 | (v7 << 6) | (32 * v10) | (16 * v11) | (8 * v12) | (4 * v13) | (2 * v14);
  if (v8 > 1)
  {
    ++v15;
  }

  v16 = v15 + 7;
  v17 = v16 >> 3;
  if (v16 >= 0x3F8)
  {
    v18 = v17 + 1;
    v19 = 1;
    do
    {
      ++v19;
      v20 = v18 > 0xFF;
      v18 >>= 8;
    }

    while (v20);
    result = 0;
    v6 = v17 + v19 + 2;
    if (v6 < v17)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v6 = v17 + 3;
    if (v17 + 3 < v17)
    {
      return result;
    }
  }

LABEL_29:
  if ((v6 & 0x8000000000000000) == 0)
  {
    v21 = 2 * v6;
    v22 = 1;
    if (v6 >= 0x40)
    {
      v23 = 2 * v6;
      do
      {
        ++v22;
        v20 = v23 > 0xFF;
        v23 >>= 8;
      }

      while (v20);
    }

    v24 = v22 + v21 + 1;
    if (v24 >= v21)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dsa_check_key(const BIGNUM **a1)
{
  v1 = *a1;
  if (!*a1 || (v2 = a1[1]) == 0 || (v3 = a1[2]) == 0)
  {
    ERR_put_error(10, 0, 101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 33);
    return 0;
  }

  if (v1->neg || v2->neg || (top = v1->top, !top))
  {
LABEL_6:
    ERR_put_error(10, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 50);
    return 0;
  }

  d = v1->d;
  if (top < 4)
  {
    v7 = 0;
    v8 = 0;
LABEL_14:
    v14 = top - v7;
    v15 = &d->i64[v7];
    do
    {
      v16 = *v15++;
      *&v8 |= v16;
      --v14;
    }

    while (v14);
    goto LABEL_16;
  }

  v7 = top & 0xFFFFFFFFFFFFFFFCLL;
  v9 = d + 1;
  v10 = 0uLL;
  v11 = top & 0xFFFFFFFFFFFFFFFCLL;
  v12 = 0uLL;
  do
  {
    v10 = vorrq_s8(v9[-1], v10);
    v12 = vorrq_s8(*v9, v12);
    v9 += 2;
    v11 -= 4;
  }

  while (v11);
  v13 = vorrq_s8(v12, v10);
  v8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  if (v7 != top)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (!*&v8)
  {
    goto LABEL_6;
  }

  v17 = v2->top;
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = v2->d;
  if (v17 < 4)
  {
    v19 = 0;
    v20 = 0;
LABEL_23:
    v26 = v17 - v19;
    v27 = &v18->i64[v19];
    do
    {
      v28 = *v27++;
      *&v20 |= v28;
      --v26;
    }

    while (v26);
    goto LABEL_25;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = v18 + 1;
  v22 = 0uLL;
  v23 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = 0uLL;
  do
  {
    v22 = vorrq_s8(v21[-1], v22);
    v24 = vorrq_s8(*v21, v24);
    v21 += 2;
    v23 -= 4;
  }

  while (v23);
  v25 = vorrq_s8(v24, v22);
  v20 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
  if (v19 != v17)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (top < 1)
  {
    goto LABEL_6;
  }

  if (!*&v20)
  {
    goto LABEL_6;
  }

  if (v17 < 1)
  {
    goto LABEL_6;
  }

  if ((d->i64[0] & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v18->i8[0] & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((BN_cmp(a1[1], v1) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  if (v3->neg)
  {
    goto LABEL_6;
  }

  v30 = v3->top;
  if (!v30)
  {
    goto LABEL_6;
  }

  v31 = v3->d;
  if (v30 < 4)
  {
    v32 = 0;
    v33 = 0;
LABEL_38:
    v39 = v30 - v32;
    v40 = &v31->i64[v32];
    do
    {
      v41 = *v40++;
      *&v33 |= v41;
      --v39;
    }

    while (v39);
    goto LABEL_40;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = v31 + 1;
  v35 = 0uLL;
  v36 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = 0uLL;
  do
  {
    v35 = vorrq_s8(v34[-1], v35);
    v37 = vorrq_s8(*v34, v37);
    v34 += 2;
    v36 -= 4;
  }

  while (v36);
  v38 = vorrq_s8(v37, v35);
  v33 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  if (v32 != v30)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (!*&v33 || (BN_cmp(v3, v1) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v42 = BN_num_bits(v2);
  if (v42 != 160 && v42 != 224 && v42 != 256)
  {
    ERR_put_error(10, 0, 100, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 57);
    return 0;
  }

  if (BN_num_bits(v1) >= 0x2711)
  {
    ERR_put_error(10, 0, 102, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 64);
    return 0;
  }

  v43 = a1[3];
  if (v43)
  {
    if (v43->neg)
    {
      goto LABEL_49;
    }

    v44 = v43->top;
    if (!v44)
    {
      goto LABEL_49;
    }

    v45 = v43->d;
    if (v44 >= 4)
    {
      v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      v48 = v45 + 1;
      v49 = 0uLL;
      v50 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      v51 = 0uLL;
      do
      {
        v49 = vorrq_s8(v48[-1], v49);
        v51 = vorrq_s8(*v48, v51);
        v48 += 2;
        v50 -= 4;
      }

      while (v50);
      v52 = vorrq_s8(v51, v49);
      v47 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
      if (v46 == v44)
      {
LABEL_59:
        if (*&v47 && BN_cmp(v43, v1) < 0)
        {
          goto LABEL_61;
        }

LABEL_49:
        ERR_put_error(10, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 72);
        return 0;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v53 = v44 - v46;
    v54 = &v45->i64[v46];
    do
    {
      v55 = *v54++;
      *&v47 |= v55;
      --v53;
    }

    while (v53);
    goto LABEL_59;
  }

LABEL_61:
  v56 = a1[4];
  if (!v56)
  {
    return 1;
  }

  if (v56->neg)
  {
LABEL_75:
    ERR_put_error(10, 0, 107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 83);
    return 0;
  }

  v57 = v56->top;
  if (v57)
  {
    v58 = v56->d;
    if (v57 > 3)
    {
      v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      v62 = v58 + 1;
      v63 = 0uLL;
      v64 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      v65 = 0uLL;
      do
      {
        v63 = vorrq_s8(v62[-1], v63);
        v65 = vorrq_s8(*v62, v65);
        v62 += 2;
        v64 -= 4;
      }

      while (v64);
      v66 = vorrq_s8(v65, v63);
      v60 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
      if (v59 == v57)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    v67 = v57 - v59;
    v68 = &v58->i64[v59];
    do
    {
      v69 = *v68++;
      *&v60 |= v69;
      --v67;
    }

    while (v67);
LABEL_72:
    v61 = *&v60 == 0;
    goto LABEL_73;
  }

  v61 = 1;
LABEL_73:
  if (v61 || BN_cmp(v56, v2) >= 0)
  {
    goto LABEL_75;
  }

  return 1;
}

BOOL parse_integer(unsigned __int8 **a1, void *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (v4)
  {
    *v4 = 24;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0x100000000;
    *(v4 + 1) = 0;
    *a2 = v4 + 8;

    return BN_parse_asn1_unsigned(a1, (v4 + 8));
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *a2 = 0;
    return 0;
  }
}

DSA *DSA_parse_parameters(unsigned __int8 **a1)
{
  v2 = malloc_type_malloc(0x118uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *v2 = 272;
  *(v2 + 8) = 0u;
  v4 = (v2 + 8);
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 66) = 1;
  if (pthread_rwlock_init((v2 + 48), 0))
  {
    abort();
  }

  v3[34] = 0;
  v12 = 0;
  v11 = 0;
  if (!cbs_get_any_asn1_element(a1, &v9, &v11, &v12, 0, 0, 0) || v11 != 536870928 || v10 < v12)
  {
    goto LABEL_19;
  }

  v9 += v12;
  v10 -= v12;
  v5 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v5)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *&v4->pad = 0;
    goto LABEL_19;
  }

  *v5 = 24;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0x100000000;
  *(v5 + 1) = 0;
  *&v4->pad = v5 + 8;
  if (!BN_parse_asn1_unsigned(&v9, (v5 + 8)))
  {
    goto LABEL_19;
  }

  v6 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v6)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v3[2] = 0;
    goto LABEL_19;
  }

  *v6 = 24;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0x100000000;
  *(v6 + 1) = 0;
  v3[2] = v6 + 8;
  if (!BN_parse_asn1_unsigned(&v9, (v6 + 8)))
  {
LABEL_19:
    ERR_put_error(10, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 184);
LABEL_20:
    DSA_free(v4);
    return 0;
  }

  v7 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
  if (!v7)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v3[3] = 0;
    goto LABEL_19;
  }

  *v7 = 24;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0x100000000;
  *(v7 + 1) = 0;
  v3[3] = v7 + 8;
  if (!BN_parse_asn1_unsigned(&v9, (v7 + 8)) || v10)
  {
    goto LABEL_19;
  }

  if (!dsa_check_key(v4))
  {
    goto LABEL_20;
  }

  return v4;
}

uint64_t DSA_marshal_parameters(uint64_t *a1, uint64_t *a2)
{
  if (!CBB_add_asn1(a1, v7, 536870928))
  {
    goto LABEL_11;
  }

  if (!*a2)
  {
    goto LABEL_10;
  }

  if (!BN_marshal_asn1(v7, *a2))
  {
    goto LABEL_11;
  }

  v4 = a2[1];
  if (!v4)
  {
    goto LABEL_10;
  }

  if (!BN_marshal_asn1(v7, v4))
  {
    goto LABEL_11;
  }

  v5 = a2[2];
  if (!v5)
  {
LABEL_10:
    ERR_put_error(10, 0, 67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 103);
    goto LABEL_11;
  }

  if (BN_marshal_asn1(v7, v5) && CBB_flush(a1))
  {
    return 1;
  }

LABEL_11:
  ERR_put_error(10, 0, 106, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", 200);
  return 0;
}

const BIGNUM **DSA_parse_private_key(unsigned __int8 **a1)
{
  v2 = malloc_type_malloc(0x118uLL, 0xB4E622C9uLL);
  if (!v2)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    return 0;
  }

  v3 = v2;
  *v2 = 272;
  *(v2 + 8) = 0u;
  v4 = (v2 + 8);
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 66) = 1;
  if (pthread_rwlock_init((v2 + 48), 0))
  {
    abort();
  }

  v3[34] = 0;
  v12 = 0;
  v16 = 0;
  v15 = 0;
  if (!cbs_get_any_asn1_element(a1, &v13, &v15, &v16, 0, 0, 0) || v15 != 536870928 || v14 < v16 || (v13 += v16, v14 -= v16, !CBS_get_asn1_uint64_with_tag(&v13, &v12, 2)))
  {
    v5 = 105;
    v6 = 216;
    goto LABEL_10;
  }

  if (!v12)
  {
    v8 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    v9 = v4;
    if (v8)
    {
      *v8 = 24;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0x100000000;
      *(v8 + 1) = 0;
      *v4 = (v8 + 8);
      if (!BN_parse_asn1_unsigned(&v13, (v8 + 8)))
      {
LABEL_27:
        v5 = 105;
        v6 = 231;
        goto LABEL_10;
      }

      v9 = (v3 + 2);
      v10 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
      if (v10)
      {
        *v10 = 24;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0x100000000;
        *(v10 + 1) = 0;
        *v9 = (v10 + 8);
        if (BN_parse_asn1_unsigned(&v13, (v10 + 8)))
        {
          v11 = BN_new();
          v3[3] = v11;
          if (v11)
          {
            if (BN_parse_asn1_unsigned(&v13, v11) && parse_integer(&v13, v3 + 4) && parse_integer(&v13, v3 + 5) && !v14)
            {
              if (dsa_check_key(v4))
              {
                return v4;
              }

              goto LABEL_11;
            }
          }
        }

        goto LABEL_27;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *v9 = 0;
    goto LABEL_27;
  }

  v5 = 104;
  v6 = 221;
LABEL_10:
  ERR_put_error(10, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/dsa/dsa_asn1.cc", v6);
LABEL_11:
  DSA_free(v4);
  return 0;
}

void dtls1_on_handshake_complete(bssl *this, ssl_st *a2)
{
  v2 = *(*(this + 6) + 208);
  if (v2 - 769 >= 4)
  {
    if (v2 == 65276)
    {
      return;
    }
  }

  else if (v2 > 0x303)
  {
    return;
  }

  v3 = *(this + 7);
  *(v3 + 940) = 0u;
  *(v3 + 976) = *(this + 20);
  if ((**(this + 7) & 4) != 0)
  {
    bssl::dtls_clear_outgoing_messages(this, a2);
  }
}

uint64_t dtls1_set_read_state(bssl *a1, const ssl_st *a2, void **a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v16 = a2;
  __n[1] = *MEMORY[0x277D85DE8];
  if (bssl::dtls_has_unprocessed_handshake_data(a1, a2))
  {
    ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_method.cc", 76);
    bssl::ssl_send_alert(a1, 2, 10);
    return 0;
  }

  v100[0] = 0;
  memset(v102, 0, sizeof(v102));
  v19 = *a3;
  *a3 = 0;
  v101 = v19;
  if (a5 > 0x30)
  {
    abort();
  }

  LOBYTE(__n[0]) = 0;
  if (!a5)
  {
    LOBYTE(__n[0]) = 0;
    v23 = *(a1 + 7);
    v24 = v16 == 3;
    if (v16 < 3)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  if (a5 < 4 || (v100 - a4 + 64) < 0x10)
  {
    v20 = &v103;
    v21 = a4;
    goto LABEL_8;
  }

  if (a5 >= 0x10)
  {
    v58 = a5 & 0x30;
    v103 = *a4;
    if (v58 != 16)
    {
      v104 = *(a4 + 1);
      if (v58 != 32)
      {
        v105 = *(a4 + 2);
      }
    }

    if (a5 == v58)
    {
      goto LABEL_9;
    }

    if ((a5 & 0xC) == 0)
    {
      v21 = &a4[v58];
      v20 = &v103 + v58;
      do
      {
LABEL_8:
        v22 = *v21++;
        *v20++ = v22;
      }

      while (v21 != &a4[a5]);
      goto LABEL_9;
    }
  }

  else
  {
    v58 = 0;
  }

  v20 = &v103 + (a5 & 0x3C);
  v21 = &a4[a5 & 0x3C];
  v75 = &a4[v58];
  v76 = (&v100[32] + v58);
  v77 = v58 - (a5 & 0x3C);
  do
  {
    v78 = *v75++;
    *v76++ = v78;
    v77 += 4;
  }

  while (v77);
  if (a5 != (a5 & 0x3C))
  {
    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(__n[0]) = a5;
  v23 = *(a1 + 7);
  v24 = v16 == 3;
  if (v16 < 3)
  {
LABEL_10:
    v25 = v16;
    v100[0] = v16;
    goto LABEL_11;
  }

LABEL_24:
  if (!v24)
  {
LABEL_56:
    bssl::ssl_send_alert(a1, 2, 10);
    v18 = 0;
    v61 = LOBYTE(__n[0]);
    if (!LOBYTE(__n[0]))
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v40 = *(v23 + 8);
  if (v40 > 2)
  {
    if (v40 == 0xFFFF)
    {
      ERR_put_error(16, 0, 260, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_method.cc", 60);
      goto LABEL_56;
    }

    goto LABEL_90;
  }

  v41 = *(*(a1 + 6) + 208);
  if (v41 - 769 < 4)
  {
    if (v41 < 0x304)
    {
      goto LABEL_90;
    }

LABEL_89:
    v25 = 3;
    v100[0] = 3;
    goto LABEL_11;
  }

  if (v41 == 65276)
  {
    goto LABEL_89;
  }

LABEL_90:
  v25 = v40 + 1;
  v100[0] = v25;
LABEL_11:
  v26 = *(*(a1 + 6) + 208);
  if (v26 - 769 >= 4)
  {
    if (v26 == 65276)
    {
LABEL_13:
      bssl::RecordNumberEncrypter::Create(*v101, a4, a5, &v99);
      v27 = v99;
      v28 = *&v102[0];
      *&v102[0] = v99;
      if (v28)
      {
        (**v28)(v28);
        v30 = *(v28 - 1);
        v29 = v28 - 1;
        v31 = v30 + 8;
        if (v30 != -8)
        {
          bzero(v29, v31);
        }

        free(v29);
      }

      if (!v27)
      {
LABEL_77:
        v18 = 0;
        v61 = LOBYTE(__n[0]);
        if (!LOBYTE(__n[0]))
        {
          goto LABEL_112;
        }

        goto LABEL_111;
      }

      v32 = malloc_type_malloc(0x80uLL, 0xB4E622C9uLL);
      if (v32)
      {
        v33 = v32;
        *v32 = 120;
        v32[4] = v100[0];
        v34 = (v32 + 4);
        v35 = v101;
        v101 = 0;
        *&v102[0] = 0;
        *(v32 + 2) = v35;
        *(v32 + 3) = v27;
        v36 = *(&v102[1] + 8);
        *(v32 + 2) = *(v102 + 8);
        *(v32 + 3) = v36;
        *(v32 + 8) = *(&v102[2] + 1);
        v37 = __n[0];
        if (LOBYTE(__n[0]))
        {
          memcpy(v32 + 36, &v103, LOBYTE(__n[0]));
        }

        *(v33 + 120) = v37;
        v38 = *(a1 + 7);
        v39 = *(v38 + 128);
        *(v38 + 128) = v34;
        if (!v39)
        {
          goto LABEL_76;
        }
      }

      else
      {
        ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
        v34 = 0;
        v62 = *(a1 + 7);
        v39 = *(v62 + 128);
        *(v62 + 128) = 0;
        if (!v39)
        {
          goto LABEL_76;
        }
      }

      if (*(v39 + 112) && v39 + 63 >= -*(v39 + 112))
      {
        goto LABEL_125;
      }

      *(v39 + 112) = 0;
      v63 = *(v39 + 16);
      *(v39 + 16) = 0;
      if (v63)
      {
        (**v63)(v63);
        v65 = *(v63 - 1);
        v64 = v63 - 1;
        v66 = v65 + 8;
        if (v65 != -8)
        {
          bzero(v64, v66);
        }

        free(v64);
      }

      v67 = *(v39 + 8);
      *(v39 + 8) = 0;
      if (v67)
      {
        if (*(v67 + 596) && v67 + 583 >= -*(v67 + 596))
        {
          goto LABEL_125;
        }

        v68 = *(v67 + 8);
        *(v67 + 596) = 0;
        if (v68)
        {
          (*(v68 + 24))(v67 + 8);
          *(v67 + 8) = 0;
        }

        v70 = *(v67 - 8);
        v69 = (v67 - 8);
        v71 = v70 + 8;
        if (v70 != -8)
        {
          bzero(v69, v71);
        }

        free(v69);
      }

      v73 = *(v39 - 8);
      v72 = (v39 - 8);
      v74 = v73 + 8;
      if (v73 != -8)
      {
        bzero(v72, v74);
      }

      free(v72);
      v34 = *(*(a1 + 7) + 128);
LABEL_76:
      if (!v34)
      {
        goto LABEL_77;
      }

      goto LABEL_110;
    }
  }

  else if (v26 >= 0x304)
  {
    goto LABEL_13;
  }

  *(v23 + 8) = v25;
  v42 = v101;
  v101 = 0;
  v43 = *(v23 + 16);
  *(v23 + 16) = v42;
  if (v43)
  {
    if (*(v43 + 596) && v43 + 583 >= -*(v43 + 596))
    {
      goto LABEL_125;
    }

    v44 = *(v43 + 8);
    *(v43 + 596) = 0;
    if (v44)
    {
      (*(v44 + 24))(v43 + 8);
      *(v43 + 8) = 0;
    }

    v46 = *(v43 - 8);
    v45 = (v43 - 8);
    v47 = v46 + 8;
    if (v46 != -8)
    {
      bzero(v45, v47);
    }

    free(v45);
  }

  v48 = *&v102[0];
  *&v102[0] = 0;
  v49 = *(v23 + 24);
  *(v23 + 24) = v48;
  if (v49)
  {
    (**v49)(v49);
    v51 = *(v49 - 1);
    v50 = v49 - 1;
    v52 = v51 + 8;
    if (v51 != -8)
    {
      bzero(v50, v52);
    }

    free(v50);
  }

  v53 = *(v102 + 8);
  v54 = *(&v102[1] + 8);
  *(v23 + 64) = *(&v102[2] + 1);
  *(v23 + 32) = v53;
  *(v23 + 48) = v54;
  v55 = (v23 + 72);
  if (*(v23 + 120) && v23 + 71 >= -*(v23 + 120))
  {
LABEL_125:
    __break(1u);
  }

  *(v23 + 120) = 0;
  v56 = LOBYTE(__n[0]);
  if (LOBYTE(__n[0]))
  {
    if (LOBYTE(__n[0]) < 8u)
    {
      v57 = &v103;
      goto LABEL_106;
    }

    v57 = &v103;
    if ((v23 - v100 + 8) >= 0x20)
    {
      if (LOBYTE(__n[0]) < 0x20u)
      {
        v60 = 0;
        goto LABEL_100;
      }

      v60 = __n[0] & 0xE0;
      v79 = v104;
      *(v23 + 72) = v103;
      *(v23 + 88) = v79;
      if ((v56 & 0xE0) != 0x20)
      {
        v80 = *__n;
        *(v23 + 104) = v105;
        *(v23 + 120) = v80;
        if (v60 != 64)
        {
          v81 = v108;
          *(v23 + 136) = v107;
          *(v23 + 152) = v81;
          if (v60 != 96)
          {
            v82 = v110;
            *(v23 + 168) = v109;
            *(v23 + 184) = v82;
            if (v60 != 128)
            {
              *(v23 + 200) = vars0;
              *(v23 + 216) = a9;
              if (v60 != 160)
              {
                *(v23 + 232) = a10;
                *(v23 + 248) = a11;
                if (v60 != 192)
                {
                  *(v23 + 264) = a12;
                  *(v23 + 280) = a13;
                }
              }
            }
          }
        }
      }

      if (v60 == v56)
      {
        goto LABEL_108;
      }

      if ((v56 & 0x18) != 0)
      {
LABEL_100:
        v55 += v56 & 0xF8;
        v57 = &v103 + (v56 & 0xF8);
        v83 = (&v100[32] + v60);
        v84 = (v60 + v23 + 72);
        v85 = v60 - (v56 & 0xF8);
        do
        {
          v86 = *v83++;
          *v84++ = v86;
          v85 += 8;
        }

        while (v85);
        if ((v56 & 0xF8) == v56)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      v57 = &v103 + v60;
      v55 += v60;
    }

LABEL_106:
    v87 = &v103 + v56;
    do
    {
      v88 = *v57++;
      *v55++ = v88;
    }

    while (v57 != v87);
LABEL_108:
    v59 = __n[0];
    goto LABEL_109;
  }

  v59 = 0;
LABEL_109:
  *(v23 + 120) = v59;
  **(a1 + 7) &= ~1u;
LABEL_110:
  v18 = 1;
  v61 = LOBYTE(__n[0]);
  if (!LOBYTE(__n[0]))
  {
    goto LABEL_112;
  }

LABEL_111:
  if (&v102[2] + 15 >= -v61)
  {
    goto LABEL_125;
  }

LABEL_112:
  LOBYTE(__n[0]) = 0;
  v89 = *&v102[0];
  *&v102[0] = 0;
  if (v89)
  {
    (**v89)(v89);
    v91 = *(v89 - 1);
    v90 = v89 - 1;
    v92 = v91 + 8;
    if (v91 != -8)
    {
      bzero(v90, v92);
    }

    free(v90);
  }

  v93 = v101;
  v101 = 0;
  if (v93)
  {
    if (!*(v93 + 596) || v93 + 583 < -*(v93 + 596))
    {
      v94 = v93[1];
      *(v93 + 596) = 0;
      if (v94)
      {
        (*(v94 + 24))(v93 + 1);
        v93[1] = 0;
      }

      v96 = *(v93 - 1);
      v95 = (v93 - 1);
      v97 = v96 + 8;
      if (v96 != -8)
      {
        bzero(v95, v97);
      }

      free(v95);
      return v18;
    }

    goto LABEL_125;
  }

  return v18;
}

uint64_t dtls1_set_write_state(bssl *a1, unsigned int a2, void **a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  *(&v105 + 1) = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 7);
  if (a2 < 3)
  {
    v16 = a2;
    goto LABEL_3;
  }

  if (a2 != 3)
  {
    return 0;
  }

  v31 = HIWORD(*(v15 + 144));
  if (v31 > 2)
  {
    if (v31 == 0xFFFF)
    {
      ERR_put_error(16, 0, 260, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_method.cc", 60);
      return 0;
    }

    goto LABEL_52;
  }

  v32 = *(*(a1 + 6) + 208);
  if (v32 - 769 < 4)
  {
    if (v32 <= 0x303)
    {
      goto LABEL_52;
    }

LABEL_51:
    v16 = 3;
    goto LABEL_3;
  }

  if (v32 == 65276)
  {
    goto LABEL_51;
  }

LABEL_52:
  v16 = v31 + 1;
LABEL_3:
  v17 = *a3;
  *a3 = 0;
  v100 = v17;
  v101 = 0;
  v99 = v16 << 48;
  if (a5 > 0x30)
  {
    abort();
  }

  LOBYTE(v105) = 0;
  if (a5)
  {
    if (a5 < 4 || (&v99 - a4 + 24) < 0x10)
    {
      v18 = &v102;
      v19 = a4;
      goto LABEL_8;
    }

    if (a5 >= 0x10)
    {
      v41 = a5 & 0x30;
      v102 = *a4;
      if (v41 != 16)
      {
        v103 = *(a4 + 1);
        if (v41 != 32)
        {
          v104 = *(a4 + 2);
        }
      }

      if (a5 == v41)
      {
        goto LABEL_9;
      }

      if ((a5 & 0xC) == 0)
      {
        v19 = &a4[v41];
        v18 = &v102 + v41;
        do
        {
LABEL_8:
          v20 = *v19++;
          *v18++ = v20;
        }

        while (v19 != &a4[a5]);
        goto LABEL_9;
      }
    }

    else
    {
      v41 = 0;
    }

    v18 = &v102 + (a5 & 0x3C);
    v19 = &a4[a5 & 0x3C];
    v42 = &a4[v41];
    v43 = (&v99 + v41 + 24);
    v44 = v41 - (a5 & 0x3C);
    do
    {
      v45 = *v42++;
      *v43++ = v45;
      v44 += 4;
    }

    while (v44);
    if (a5 != (a5 & 0x3C))
    {
      goto LABEL_8;
    }

LABEL_9:
    LOBYTE(v105) = a5;
    v21 = *(*(a1 + 6) + 208);
    if (v21 - 769 < 4)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  LOBYTE(v105) = 0;
  v21 = *(*(a1 + 6) + 208);
  if (v21 - 769 < 4)
  {
LABEL_10:
    if (v21 >= 0x304)
    {
      goto LABEL_11;
    }

LABEL_27:
    v27 = malloc_type_malloc(0x58uLL, 0xB4E622C9uLL);
    if (!v27)
    {
      goto LABEL_17;
    }

LABEL_28:
    *v27 = 80;
    *(v27 + 1) = *(v15 + 144);
    v33 = v27 + 8;
    v34 = *(v15 + 152);
    *(v15 + 152) = 0;
    *(v15 + 160) = 0;
    *(v27 + 1) = v34;
    v27[80] = 0;
    v35 = *(v15 + 216);
    if (!*(v15 + 216))
    {
      v39 = 0;
      goto LABEL_71;
    }

    v36 = v15 + 168;
    v37 = v27 + 32;
    if (v35 < 8)
    {
      v38 = (v15 + 168);
      goto LABEL_68;
    }

    v38 = (v15 + 168);
    if (&v27[-v15 - 136] >= 0x20)
    {
      if (v35 < 0x20)
      {
        v40 = 0;
        goto LABEL_62;
      }

      v40 = v35 & 0xE0;
      v46 = *(v15 + 184);
      *(v27 + 2) = *(v15 + 168);
      *(v27 + 3) = v46;
      if (v40 != 32)
      {
        v47 = *(v15 + 216);
        *(v27 + 4) = *(v15 + 200);
        *(v27 + 5) = v47;
        if (v40 != 64)
        {
          v48 = *(v15 + 248);
          *(v27 + 6) = *(v15 + 232);
          *(v27 + 7) = v48;
          if (v40 != 96)
          {
            v49 = *(v15 + 280);
            *(v27 + 8) = *(v15 + 264);
            *(v27 + 9) = v49;
            if (v40 != 128)
            {
              v50 = *(v15 + 312);
              *(v27 + 10) = *(v15 + 296);
              *(v27 + 11) = v50;
              if (v40 != 160)
              {
                v51 = *(v15 + 344);
                *(v27 + 12) = *(v15 + 328);
                *(v27 + 13) = v51;
                if (v40 != 192)
                {
                  v52 = *(v15 + 376);
                  *(v27 + 14) = *(v15 + 360);
                  *(v27 + 15) = v52;
                }
              }
            }
          }
        }
      }

      if (v40 == v35)
      {
        goto LABEL_70;
      }

      if ((v35 & 0x18) != 0)
      {
LABEL_62:
        v37 += v35 & 0xF8;
        v38 = (v36 + (v35 & 0xF8));
        v53 = (v40 + v15 + 168);
        v54 = &v27[v40 + 32];
        v55 = v40 - (v35 & 0xF8);
        do
        {
          v56 = *v53++;
          *v54 = v56;
          v54 += 8;
          v55 += 8;
        }

        while (v55);
        if ((v35 & 0xF8) == v35)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      v38 = (v36 + v40);
      v37 += v40;
    }

LABEL_68:
    v57 = (v36 + v35);
    do
    {
      v58 = *v38++;
      *v37++ = v58;
    }

    while (v38 != v57);
LABEL_70:
    v39 = *(v15 + 216);
LABEL_71:
    v27[80] = v39;
    v59 = *(a1 + 7);
    v60 = v100;
    v100 = 0;
    v61 = *(v59 + 152);
    *(v59 + 144) = v99;
    *(v59 + 152) = v60;
    if (v61)
    {
      if (*(v61 + 596) && v61 + 583 >= -*(v61 + 596))
      {
        goto LABEL_125;
      }

      v62 = *(v61 + 8);
      *(v61 + 596) = 0;
      if (v62)
      {
        (*(v62 + 24))(v61 + 8);
        *(v61 + 8) = 0;
      }

      v64 = *(v61 - 8);
      v63 = (v61 - 8);
      v65 = v64 + 8;
      if (v64 != -8)
      {
        bzero(v63, v65);
      }

      free(v63);
    }

    v66 = v101;
    v101 = 0;
    v67 = *(v59 + 160);
    *(v59 + 160) = v66;
    if (v67)
    {
      (**v67)(v67);
      v69 = *(v67 - 1);
      v68 = v67 - 1;
      v70 = v69 + 8;
      if (v69 != -8)
      {
        bzero(v68, v70);
      }

      free(v68);
    }

    v71 = (v59 + 168);
    if (*(v59 + 216) && v59 + 167 >= -*(v59 + 216))
    {
LABEL_125:
      __break(1u);
    }

    *(v59 + 216) = 0;
    v72 = v105;
    if (!v105)
    {
      v74 = 0;
      goto LABEL_109;
    }

    if (v105 < 8u)
    {
      v73 = &v102;
      goto LABEL_106;
    }

    v73 = &v102;
    if ((v59 - &v99 + 144) >= 0x20)
    {
      if (v105 < 0x20u)
      {
        v75 = 0;
        goto LABEL_101;
      }

      v75 = v105 & 0xE0;
      v76 = v103;
      *(v59 + 168) = v102;
      *(v59 + 184) = v76;
      if ((v72 & 0xE0) != 0x20)
      {
        v77 = v105;
        *(v59 + 200) = v104;
        *(v59 + 216) = v77;
        if (v75 != 64)
        {
          v78 = v107;
          *(v59 + 232) = v106;
          *(v59 + 248) = v78;
          if (v75 != 96)
          {
            v79 = vars0;
            *(v59 + 264) = v108;
            *(v59 + 280) = v79;
            if (v75 != 128)
            {
              *(v59 + 296) = a9;
              *(v59 + 312) = a10;
              if (v75 != 160)
              {
                *(v59 + 328) = a11;
                *(v59 + 344) = a12;
                if (v75 != 192)
                {
                  *(v59 + 360) = a13;
                  *(v59 + 376) = a14;
                }
              }
            }
          }
        }
      }

      if (v75 == v72)
      {
        goto LABEL_108;
      }

      if ((v72 & 0x18) != 0)
      {
LABEL_101:
        v71 += v72 & 0xF8;
        v73 = &v102 + (v72 & 0xF8);
        v80 = (&v99 + v75 + 24);
        v81 = (v75 + v59 + 168);
        v82 = v75 - (v72 & 0xF8);
        do
        {
          v83 = *v80++;
          *v81++ = v83;
          v82 += 8;
        }

        while (v82);
        if ((v72 & 0xF8) == v72)
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      v73 = &v102 + v75;
      v71 += v75;
    }

LABEL_106:
    v84 = &v102 + v72;
    do
    {
      v85 = *v73++;
      *v71++ = v85;
    }

    while (v73 != v84);
LABEL_108:
    v74 = v105;
LABEL_109:
    *(v59 + 216) = v74;
    v86 = *(a1 + 7);
    v98 = v33;
    v87 = *(v86 + 240);
    if (v87 >= 2)
    {
      std::unique_ptr<bssl::DTLSWriteEpoch,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v98);
      abort();
    }

    *(v86 + 8 * v87 + 224) = v33;
    *(v86 + 240) = v87 + 1;
    bssl::dtls_clear_unused_write_epochs(a1, v28);
    v29 = 1;
    v30 = v105;
    if (!v105)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_26:
  if (v21 != 65276)
  {
    goto LABEL_27;
  }

LABEL_11:
  bssl::RecordNumberEncrypter::Create(*v100, a4, a5, &v98);
  v22 = v98;
  v23 = v101;
  v101 = v98;
  if (v23)
  {
    (**v23)(v23);
    v25 = *(v23 - 1);
    v24 = v23 - 8;
    v26 = v25 + 8;
    if (v25 != -8)
    {
      bzero(v24, v26);
    }

    free(v24);
  }

  if (!v22)
  {
    v29 = 0;
    v30 = v105;
    if (!v105)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v15 = *(a1 + 7);
  v27 = malloc_type_malloc(0x58uLL, 0xB4E622C9uLL);
  if (v27)
  {
    goto LABEL_28;
  }

LABEL_17:
  ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
  v29 = 0;
  v30 = v105;
  if (!v105)
  {
    goto LABEL_112;
  }

LABEL_111:
  if (&v101 + 7 >= -v30)
  {
    goto LABEL_125;
  }

LABEL_112:
  LOBYTE(v105) = 0;
  v88 = v101;
  v101 = 0;
  if (v88)
  {
    (**v88)(v88);
    v90 = *(v88 - 1);
    v89 = v88 - 8;
    v91 = v90 + 8;
    if (v90 != -8)
    {
      bzero(v89, v91);
    }

    free(v89);
  }

  v92 = v100;
  v100 = 0;
  if (v92)
  {
    if (!*(v92 + 596) || v92 + 583 < -*(v92 + 596))
    {
      v93 = v92[1];
      *(v92 + 596) = 0;
      if (v93)
      {
        (*(v93 + 24))(v92 + 1);
        v92[1] = 0;
      }

      v95 = *(v92 - 1);
      v94 = (v92 - 1);
      v96 = v95 + 8;
      if (v95 != -8)
      {
        bzero(v94, v96);
      }

      free(v94);
      return v29;
    }

    goto LABEL_125;
  }

  return v29;
}

void std::unique_ptr<bssl::DTLSWriteEpoch,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (!v1)
  {
    return;
  }

  if (*(v1 + 72) && v1 + 23 >= -*(v1 + 72))
  {
    goto LABEL_20;
  }

  *(v1 + 72) = 0;
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v2)
  {
    (**v2)(v2);
    v4 = *(v2 - 1);
    v3 = v2 - 1;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }

  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

  if (*(v6 + 596) && v6 + 583 >= -*(v6 + 596))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v7 = *(v6 + 8);
  *(v6 + 596) = 0;
  if (v7)
  {
    (*(v7 + 24))(v6 + 8);
    *(v6 + 8) = 0;
  }

  v9 = *(v6 - 8);
  v8 = (v6 - 8);
  v10 = v9 + 8;
  if (v9 != -8)
  {
    bzero(v8, v10);
  }

  free(v8);
LABEL_16:
  v12 = *(v1 - 8);
  v11 = (v1 - 8);
  v13 = v12 + 8;
  if (v12 != -8)
  {
    bzero(v11, v13);
  }

  free(v11);
}

unint64_t *bssl::DTLSReplayBitmap::Record(unint64_t *this, unint64_t a2)
{
  v3 = this + 4;
  v2 = this[4];
  v4 = a2 - v2;
  if (a2 > v2)
  {
    if (v4 >= 0x100)
    {
      *this = 0u;
      *(this + 1) = 0u;
LABEL_37:
      *v3 = a2;
      v5 = 0;
      goto LABEL_38;
    }

    v6 = (256 - v4) >> 6;
    if (((256 - v4) & 0x3F) == 0)
    {
      v36 = &v3[-v6];
      if (v4 <= 0xC0)
      {
        v37 = this;
        v38 = a2;
        memmove(&v3[-v6], this, 8 * v6);
        a2 = v38;
        this = v37;
      }

      if ((-v4 & 0x3F) != 0)
      {
        *(v36 - 1) = *(v36 - 1) & ~(-1 << -(-v4 & 0x3F)) | *(this - 1) & (-1 << -(-v4 & 0x3F));
      }

      goto LABEL_33;
    }

    v7 = &this[v6];
    v8 = (256 - v4) & 0x1C0;
    v9 = this + 3;
    v10 = ((*v7 & (0xFFFFFFFFFFFFFFFFLL >> -(-v4 & 0x3F))) << v4) | this[3] & ~(-1 << v4);
    this[3] = v10;
    v11 = 64 - (v4 & 0x3F);
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F);
    if (v4 <= 0xC0)
    {
      v13 = *(v7 - 1);
      v14 = v10 & ~v12 | (v13 >> v11);
      v9 = this + 2;
      v15 = v13 << (v4 & 0x3F);
      v10 = this[2] & v12 | v15;
      this[2] = v10;
      this[3] = v14;
      v16 = v8 - 64;
      if (v4 > 0x80)
      {
        --v7;
        v8 -= 64;
        if (v16 < 1)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      v17 = ~v12;
      v18 = v7 - 2;
      v19 = *(v7 - 2);
      v20 = v15 & ~v12 | (v19 >> v11);
      v9 = this + 1;
      v21 = v19 << (v4 & 0x3F);
      v10 = this[1] & v12 | v21;
      this[1] = v10;
      this[2] = v20;
      v22 = v8 - 128;
      if (v16 < 0x80)
      {
        goto LABEL_22;
      }

      v23 = *(v7 - 3);
      v24 = v21 & v17 | (v23 >> v11);
      v25 = v23 << (v4 & 0x3F);
      v10 = *this & v12 | v25;
      *this = v10;
      this[1] = v24;
      v26 = v8 - 192;
      if (v22 < 0x80)
      {
        v9 = this;
        v7 -= 3;
        v8 -= 192;
        if (v26 < 1)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      v27 = *(v7 - 4);
      *this = v25 & v17 | (v27 >> v11);
      v9 = this - 1;
      v28 = v27 << (v4 & 0x3F);
      v10 = *(this - 1) & v12 | v28;
      *(this - 1) = v10;
      if (v26 >= 0x80)
      {
        v18 = v7 - 5;
        v29 = *(v7 - 5);
        v30 = v28 & v17 | (v29 >> v11);
        v9 = this - 2;
        v31 = v29 << (v4 & 0x3F);
        v10 = *(this - 2) & v12 | v31;
        *v9 = v10;
        v9[1] = v30;
        v22 = v8 - 320;
        if ((v8 - 256) >= 0x80)
        {
          v32 = *(v7 - 6);
          v33 = v31 & v17 | (v32 >> v11);
          v9 = this - 3;
          v34 = v32 << (v4 & 0x3F);
          v10 = *(this - 3) & v12 | v34;
          *v9 = v10;
          v9[1] = v33;
          if (v22 < 0x80)
          {
            v8 -= 384;
            v7 -= 6;
            if (v8 < 1)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v35 = *(v7 - 7);
            v7 -= 7;
            v9 = this - 4;
            v10 = *(this - 4) & v12 | (v35 << (v4 & 0x3F));
            *v9 = v10;
            v9[1] = v34 & v17 | (v35 >> v11);
            v8 -= 448;
            if (v8 < 1)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_28;
        }

LABEL_22:
        v7 = v18;
        v8 = v22;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      v7 -= 4;
      v8 -= 256;
    }

    if (v8 < 1)
    {
LABEL_33:
      v41 = v4 >> 6;
      if (v4 >= 0x40)
      {
        v42 = this;
        v43 = a2;
        bzero(this, 8 * v41);
        a2 = v43;
        this = v42;
      }

      if ((v4 & 0x3F) != 0)
      {
        this[v41] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
      }

      goto LABEL_37;
    }

LABEL_28:
    v39 = *(v7 - 1) & (-1 << -v8);
    if (v8 >= ((v4 - 256) & 0x3F))
    {
      v40 = (v4 - 256) & 0x3F;
    }

    else
    {
      v40 = v8;
    }

    *v9 = v10 & ~((-1 << ((v4 & 0x3Fu) - v40)) & v12) | (v39 >> v11);
    if (v8 - v40 >= 1)
    {
      *(v9 - 1) = *(v9 - 1) & ~(-1 << (v40 - v8)) | (v39 << (v8 + ((v40 - v8) & 0x3F)));
    }

    goto LABEL_33;
  }

  v5 = v2 - a2;
  if (v5 <= 0xFF)
  {
LABEL_38:
    *(this + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  }

  return this;
}

uint64_t bssl::dtls_open_record(bssl *a1, const ssl_st *a2, void *a3, char **a4, unint64_t *a5, char *a6, unsigned __int8 *a7, unint64_t a8)
{
  *a5 = 0;
  v8 = *(a1 + 6);
  if (*(v8 + 172) == 1)
  {
    return 3;
  }

  if (!a8)
  {
    return 2;
  }

  v11 = a7 + 1;
  v10 = *a7;
  if ((v10 & 0xE0) != 0x20)
  {
    if (a8 < 3)
    {
      goto LABEL_84;
    }

    if (a8 - 3 < 8)
    {
      goto LABEL_84;
    }

    if (a8 - 11 < 2)
    {
      goto LABEL_84;
    }

    v21 = __rev16(*(a7 + 11));
    v23 = a8 - 13 - v21;
    if (a8 - 13 < v21)
    {
      goto LABEL_84;
    }

    v41 = a7[1];
    v42 = a7[2] | (v41 << 8);
    v43 = (a7[3] << 16) | (a7[4] << 8);
    v44 = a7[5];
    v45 = a7[6];
    v46 = a7[7];
    v47 = a7[8];
    v48 = a7[9];
    v49 = a7[10];
    if (v43)
    {
      v50 = *(v8 + 208);
      if (v50)
      {
        v51 = a1;
        v138 = a6;
        v52 = a3;
        v160 = a2;
        v148 = a7;
        v150 = a8 - 13 - v21;
        v53 = a4;
        v156 = a5;
        v143 = v21;
        v54 = a8;
        v55 = a7[2] | (v41 << 8);
        v129 = a7[9];
        v133 = a7[8];
        v127 = a7[7];
        v128 = a7[6];
        v126 = a7[5];
        v56 = bssl::ssl_protocol_version(a1, a2);
        v44 = v126;
        v46 = v127;
        v45 = v128;
        v48 = v129;
        v47 = v133;
        v42 = v55;
        a8 = v54;
        v21 = v143;
        a7 = v148;
        a5 = v156;
        a4 = v53;
        v23 = v150;
        a2 = v160;
        a3 = v52;
        a6 = v138;
        v57 = v56;
        a1 = v51;
        if (v57 <= 0x303)
        {
          v58 = v50;
        }

        else
        {
          v58 = -259;
        }
      }

      else
      {
        v58 = -257;
      }

      if (v42 != v58)
      {
        goto LABEL_84;
      }
    }

    else if (v41 != 254)
    {
      goto LABEL_84;
    }

    v65 = (((v45 << 24) | (v46 << 16) | ((v43 | v44) << 32) | v48) << 8) | (v47 << 16) | v49;
    v75 = a7 + 13;
    v76 = *(a1 + 7);
    v77 = *(v76 + 8);
    v60 = (v76 + 8);
    if (v77 != (v43 >> 8) || *(v8 + 208) && (v78 = a1, v140 = a6, v79 = a3, v161 = a2, v80 = a4, v144 = v21, v157 = a5, v151 = v23, v81 = a8, v82 = a7, v134 = v60, v83 = v65, v84 = v42, v85 = bssl::ssl_protocol_version(a1, a2), LOWORD(v42) = v84, v65 = v83, v60 = v134, a7 = v82, a8 = v81, v23 = v151, a5 = v157, a6 = v140, v21 = v144, a4 = v80, a2 = v161, a3 = v79, v86 = v85, a1 = v78, v43) && v86 > 0x303)
    {
      v60 = 0;
    }

    v22 = v75;
    goto LABEL_83;
  }

  if ((v10 & 0x10) != 0)
  {
    goto LABEL_84;
  }

  v12 = a8 - 1;
  v13 = *(a1 + 7);
  v14 = *(v13 + 8);
  v15 = *(v13 + 128);
  if (v15)
  {
    v16 = *v15;
    if (v14 <= v16)
    {
      v14 = v16;
    }
  }

  v17 = v14 & 0xFFFC | v10 & 3;
  v18 = v17 <= v14 || (v14 & 0xFFFC) == 0;
  v19 = v18 ? v17 : v17 - 4;
  v20 = (v10 & 8) != 0 ? 2 : 1;
  v21 = v12 - v20;
  if (v12 < v20)
  {
    goto LABEL_84;
  }

  v22 = &v11[v20];
  if ((v10 & 4) != 0)
  {
    v59 = v21 - 2;
    if (v21 < 2)
    {
      goto LABEL_84;
    }

    v21 = __rev16(*v22);
    v23 = v59 - v21;
    if (v59 < v21)
    {
      goto LABEL_84;
    }

    v22 += 2;
    v159 = a2;
    v147 = a7;
    v153 = a4;
    if (!*(v13 + 136))
    {
      goto LABEL_50;
    }
  }

  else
  {
    v23 = 0;
    v159 = a2;
    v147 = a7;
    v153 = a4;
    if (!*(v13 + 136))
    {
      goto LABEL_50;
    }
  }

  v149 = v23;
  v24 = v21;
  v142 = a8;
  v155 = a5;
  v25 = a3;
  v26 = a6;
  v27 = a1;
  current_time = bssl::ssl_ctx_get_current_time(*(a1 + 13), a2);
  v13 = *(v27 + 7);
  v29 = *(v13 + 136);
  if (current_time <= *(v29 + 120))
  {
    a1 = v27;
    a6 = v26;
    a3 = v25;
    a2 = v159;
    a4 = v153;
    a5 = v155;
    a8 = v142;
    a7 = v147;
    v21 = v24;
    v23 = v149;
  }

  else
  {
    v132 = v22;
    *(v13 + 136) = 0;
    if (*(v29 + 112) && v29 + 63 >= -*(v29 + 112))
    {
      __break(1u);
      goto LABEL_134;
    }

    *(v29 + 112) = 0;
    v30 = *(v29 + 16);
    *(v29 + 16) = 0;
    if (v30)
    {
      (**v30)(v30);
      v32 = *(v30 - 1);
      v31 = v30 - 1;
      v33 = v32 + 8;
      if (v32 != -8)
      {
        bzero(v31, v33);
      }

      free(v31);
    }

    v34 = *(v29 + 8);
    *(v29 + 8) = 0;
    if (v34)
    {
      bssl::SSLAEADContext::~SSLAEADContext(v34);
      v36 = *(v34 - 1);
      v35 = v34 - 8;
      v37 = v36 + 8;
      if (v36 != -8)
      {
        bzero(v35, v37);
      }

      free(v35);
    }

    v39 = *(v29 - 8);
    v38 = (v29 - 8);
    v40 = v39 + 8;
    if (v39 != -8)
    {
      bzero(v38, v40);
    }

    free(v38);
    a1 = v27;
    v13 = *(v27 + 7);
    a6 = v26;
    a3 = v25;
    a2 = v159;
    a4 = v153;
    a5 = v155;
    a8 = v142;
    a7 = v147;
    v21 = v24;
    v23 = v149;
    v22 = v132;
  }

LABEL_50:
  v60 = (v13 + 8);
  if (*(v13 + 8) != v19)
  {
    v60 = *(v13 + 128);
    if (!v60 || *v60 != v19)
    {
      v60 = *(v13 + 136);
      if (!v60)
      {
LABEL_70:
        LOWORD(v42) = 0;
        v65 = 0;
        goto LABEL_83;
      }

      if (*v60 != v19)
      {
        goto LABEL_69;
      }
    }
  }

  if (!*(*(a1 + 6) + 208))
  {
LABEL_69:
    v60 = 0;
    goto LABEL_70;
  }

  v61 = v22;
  v62 = a8;
  v63 = a5;
  v136 = a3;
  v139 = a6;
  v130 = a1;
  v64 = bssl::ssl_protocol_version(a1, a2);
  v65 = 0;
  LOWORD(v42) = 0;
  if (v19 && v64 >= 0x304)
  {
    if (!(*(**(v60 + 2) + 32))(*(v60 + 2), v164, 2, v61))
    {
      a5 = v63;
      a8 = v62;
LABEL_84:
      *a5 = a8;
      return 1;
    }

    v66 = 0;
    v67 = 0;
    a5 = v63;
    a8 = v62;
    do
    {
      v68 = v11[v66] ^ v164[v66];
      v11[v66] = v68;
      v67 = v68 | (v67 << 8);
      ++v66;
    }

    while (v20 != v66);
    v69 = ~(-1 << (8 * v20));
    v70 = *(v60 + 7) + 1;
    v71 = (v67 - v70) & v69;
    v72 = v69 + 1;
    v73 = v71 + v70;
    a3 = v136;
    a6 = v139;
    a2 = v159;
    a1 = v130;
    a4 = v153;
    a7 = v147;
    v22 = v61;
    if ((v71 + v70) >> 48 || (v71 > v72 >> 1 ? (v74 = v73 > v69) : (v74 = 0), v74))
    {
      v73 -= v72;
      if (HIWORD(v73))
      {
LABEL_134:
        abort();
      }
    }

    LOWORD(v42) = 0;
    v65 = v73 | (v19 << 48);
  }

  else
  {
    v60 = 0;
    a3 = v136;
    a6 = v139;
    a2 = v159;
    a1 = v130;
    a4 = v153;
    a5 = v63;
    a8 = v62;
    a7 = v147;
    v22 = v61;
  }

LABEL_83:
  if (v21 > 0x4140)
  {
    goto LABEL_84;
  }

  v87 = v22 - a7;
  if (a8 < v22 - a7)
  {
    goto LABEL_134;
  }

  v88 = *(a1 + 8);
  v162 = a2;
  v135 = v22;
  v137 = a3;
  v158 = a5;
  if (v88)
  {
    v89 = a1;
    v145 = v21;
    v154 = a4;
    v90 = a6;
    v91 = v23;
    v92 = a7;
    v93 = a8;
    v94 = v60;
    v95 = v65;
    v96 = v42;
    v88(0, 0, 256, a7, v87, a1, *(a1 + 9));
    LOWORD(v42) = v96;
    v65 = v95;
    v60 = v94;
    a7 = v92;
    v23 = v91;
    a8 = v93;
    a4 = v154;
    a5 = v158;
    a1 = v89;
    v21 = v145;
    a6 = v90;
  }

  if (!v60 || (v97 = v65 & 0xFFFFFFFFFFFFLL, v98 = *(v60 + 7), v99 = v98 >= (v65 & 0xFFFFFFFFFFFFLL), v100 = v98 - (v65 & 0xFFFFFFFFFFFFLL), v99) && (v100 > 0xFF || ((*(v60 + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8) + 24) >> v100) & 1) != 0))
  {
    *a5 = a8 - v23;
    return 1;
  }

  v131 = a1;
  v152 = v23;
  v141 = a6;
  v146 = a8;
  v101 = *(v60 + 1);
  v102 = v65;
  v103 = v65;
  if (*(*(a1 + 6) + 208))
  {
    v104 = a4;
    v105 = a7;
    v106 = v42;
    v107 = bssl::ssl_protocol_version(a1, a2);
    LOWORD(v42) = v106;
    a7 = v105;
    a4 = v104;
    if (v107 <= 0x303)
    {
      v102 = v103;
    }

    else
    {
      v102 = v97;
    }
  }

  *&v125 = v135;
  *(&v125 + 1) = v21;
  v108 = a4;
  if (!bssl::SSLAEADContext::Open(v101, a4, v10, v42, v102, a7, v87, a8, v125))
  {
    ERR_clear_error();
    *v158 = v146 - v152;
    return 1;
  }

  *v158 = v146 - v152;
  if (!**(v60 + 1))
  {
    if (v108[1] <= 0x4000)
    {
      goto LABEL_113;
    }

LABEL_111:
    ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_record.cc", 349);
    v114 = 22;
LABEL_112:
    *v141 = v114;
    return 4;
  }

  v110 = bssl::ssl_protocol_version(v131, v109);
  if (v110 <= 0x303)
  {
    v111 = 0x4000;
  }

  else
  {
    v111 = 16385;
  }

  v112 = v108[1];
  if (v112 > v111)
  {
    goto LABEL_111;
  }

  if (v110 >= 0x304)
  {
    v113 = (v112 - 1);
    while (v113 != -1)
    {
      v10 = v113[*v108];
      v108[1] = v113--;
      if (v10)
      {
        goto LABEL_113;
      }
    }

    ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_record.cc", 357);
    v114 = 51;
    goto LABEL_112;
  }

LABEL_113:
  bssl::DTLSReplayBitmap::Record(v60 + 3, v97);
  v116 = v131;
  if (v60 != *(*(v131 + 7) + 128))
  {
    goto LABEL_118;
  }

  v117 = OPENSSL_malloc(0x80uLL);
  if (v117)
  {
    v117[6] = 0u;
    v117[7] = 0u;
    v117[4] = 0u;
    v117[5] = 0u;
    v117[2] = 0u;
    v117[3] = 0u;
    *v117 = 0u;
    v117[1] = 0u;
    v163 = v117;
    v119 = bssl::ssl_ctx_get_current_time(*(v131 + 13), v118);
    v120 = v163;
    v121 = v119 + 240;
    if (v119 > 0xFFFFFFFFFFFFFF0ELL)
    {
      v121 = -1;
    }

    *(v163 + 15) = v121;
    bssl::DTLSReadEpoch::operator=(v120, *(v131 + 7) + 8);
    std::unique_ptr<bssl::DTLSPrevReadEpoch,bssl::internal::Deleter>::operator=[abi:sn200100]((*(v131 + 7) + 136), &v163);
    bssl::DTLSReadEpoch::operator=(*(v131 + 7) + 8, *(*(v131 + 7) + 128));
    std::unique_ptr<bssl::DTLSReadEpoch,bssl::internal::Deleter>::reset[abi:sn200100]((*(v131 + 7) + 128));
    std::unique_ptr<bssl::DTLSPrevReadEpoch,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v163);
    v116 = v131;
LABEL_118:
    if (v10 == 21)
    {
      return bssl::ssl_process_alert(v116, v141, *v108, v108[1]);
    }

    if (v10 == 23)
    {
      v122 = *(v116 + 6);
      if (!*(v122 + 208) || bssl::ssl_protocol_version(v116, v115) < 0x304)
      {
        v123 = v137;
        v124 = v162;
        if (!HIWORD(v103))
        {
LABEL_129:
          ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_record.cc", 414);
          v114 = 10;
          goto LABEL_112;
        }

LABEL_130:
        result = 0;
        *(v122 + 213) = 0;
        LOBYTE(v124->version) = v10;
        *v123 = v103;
        return result;
      }

      if (HIWORD(v103) <= 2u)
      {
        v123 = v137;
        v124 = v162;
        if ((v103 & 0xFFFF000000000000) == 0x1000000000000)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }
    }

    else
    {
      v122 = *(v116 + 6);
    }

    v123 = v137;
    v124 = v162;
    goto LABEL_130;
  }

  v163 = 0;
  *v141 = 80;
  std::unique_ptr<bssl::DTLSPrevReadEpoch,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](&v163);
  return 4;
}

void bssl::DTLSReadEpoch::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    if (*(v5 + 596) && v5 + 583 >= -*(v5 + 596))
    {
      goto LABEL_39;
    }

    v6 = *(v5 + 8);
    *(v5 + 596) = 0;
    if (v6)
    {
      (*(v6 + 24))(v5 + 8);
      *(v5 + 8) = 0;
    }

    v8 = *(v5 - 8);
    v7 = (v5 - 8);
    v9 = v8 + 8;
    if (v8 != -8)
    {
      bzero(v7, v9);
    }

    free(v7);
  }

  v10 = *(a2 + 16);
  *(a2 + 16) = 0;
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  if (v11)
  {
    (**v11)(v11);
    v13 = *(v11 - 1);
    v12 = v11 - 1;
    v14 = v13 + 8;
    if (v13 != -8)
    {
      bzero(v12, v14);
    }

    free(v12);
  }

  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v16;
  *(a1 + 24) = v15;
  v17 = (a1 + 64);
  if (!*(a1 + 112) || a1 + 63 < -*(a1 + 112))
  {
    *(a1 + 112) = 0;
    v18 = *(a2 + 112);
    if (!*(a2 + 112))
    {
      *(a1 + 112) = 0;
      return;
    }

    v19 = a2 + 64;
    if (v18 < 8)
    {
      v20 = (a2 + 64);
    }

    else
    {
      v20 = (a2 + 64);
      if ((a1 - a2) >= 0x20)
      {
        if (v18 < 0x20)
        {
          v21 = 0;
          goto LABEL_31;
        }

        v21 = v18 & 0xE0;
        v22 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v22;
        if (v21 != 32)
        {
          v23 = *(a2 + 112);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 112) = v23;
          if (v21 != 64)
          {
            v24 = *(a2 + 144);
            *(a1 + 128) = *(a2 + 128);
            *(a1 + 144) = v24;
            if (v21 != 96)
            {
              v25 = *(a2 + 176);
              *(a1 + 160) = *(a2 + 160);
              *(a1 + 176) = v25;
              if (v21 != 128)
              {
                v26 = *(a2 + 208);
                *(a1 + 192) = *(a2 + 192);
                *(a1 + 208) = v26;
                if (v21 != 160)
                {
                  v27 = *(a2 + 240);
                  *(a1 + 224) = *(a2 + 224);
                  *(a1 + 240) = v27;
                  if (v21 != 192)
                  {
                    v28 = *(a2 + 272);
                    *(a1 + 256) = *(a2 + 256);
                    *(a1 + 272) = v28;
                  }
                }
              }
            }
          }
        }

        if (v21 == v18)
        {
          goto LABEL_38;
        }

        if ((v18 & 0x18) != 0)
        {
LABEL_31:
          v17 += v18 & 0xF8;
          v20 = (v19 + (v18 & 0xF8));
          v29 = (a2 + v21 + 64);
          v30 = (a1 + v21 + 64);
          v31 = v21 - (v18 & 0xF8);
          do
          {
            v32 = *v29++;
            *v30++ = v32;
            v31 += 8;
          }

          while (v31);
          if ((v18 & 0xF8) == v18)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v20 = (v19 + v21);
        v17 += v21;
      }
    }

LABEL_36:
    v33 = (v19 + v18);
    do
    {
      v34 = *v20++;
      *v17++ = v34;
    }

    while (v20 != v33);
LABEL_38:
    *(a1 + 112) = *(a2 + 112);
    return;
  }

LABEL_39:
  __break(1u);
}

void std::unique_ptr<bssl::DTLSPrevReadEpoch,bssl::internal::Deleter>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *a1;
  *a1 = v2;
  if (!v3)
  {
    return;
  }

  if (*(v3 + 112) && v3 + 63 >= -*(v3 + 112))
  {
    goto LABEL_20;
  }

  *(v3 + 112) = 0;
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
  if (v4)
  {
    (**v4)(v4);
    v6 = *(v4 - 1);
    v5 = v4 - 1;
    v7 = v6 + 8;
    if (v6 != -8)
    {
      bzero(v5, v7);
    }

    free(v5);
  }

  v8 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (!v8)
  {
    goto LABEL_16;
  }

  if (*(v8 + 596) && v8 + 583 >= -*(v8 + 596))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v9 = *(v8 + 8);
  *(v8 + 596) = 0;
  if (v9)
  {
    (*(v9 + 24))(v8 + 8);
    *(v8 + 8) = 0;
  }

  v11 = *(v8 - 8);
  v10 = (v8 - 8);
  v12 = v11 + 8;
  if (v11 != -8)
  {
    bzero(v10, v12);
  }

  free(v10);
LABEL_16:
  v14 = *(v3 - 8);
  v13 = (v3 - 8);
  v15 = v14 + 8;
  if (v14 != -8)
  {
    bzero(v13, v15);
  }

  free(v13);
}

uint64_t bssl::dtls_max_seal_overhead(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 7);
  if (*(v2 + 150) == a2)
  {
    v3 = v2 + 144;
  }

  else
  {
    if (!*(v2 + 240))
    {
      return 0;
    }

    v14 = 8 * *(v2 + 240);
    for (i = (v2 + 224); ; ++i)
    {
      v3 = *i;
      if (*(*i + 6) == a2)
      {
        break;
      }

      v14 -= 8;
      if (!v14)
      {
        return 0;
      }
    }
  }

  v4 = *(*(this + 6) + 208);
  if (!*(*(this + 6) + 208))
  {
    v8 = 13;
    v9 = *(v3 + 8);
    if (*(v9 + 598))
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v5 = 0;
  if (*(*(this + 6) + 208) <= 0xFEFBu)
  {
    v6 = *(*(this + 6) + 208);
    if ((v4 - 769) >= 4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  switch(v4)
  {
    case 65276:
      v6 = 772;
      goto LABEL_6;
    case 65277:
      v6 = 771;
      goto LABEL_6;
    case 65279:
      v6 = 770;
LABEL_6:
      v5 = v6 > 0x303;
      break;
  }

LABEL_7:
  v7 = a2 == 0 || !v5;
  v8 = 13;
  if (!v7)
  {
    v8 = 5;
  }

  v9 = *(v3 + 8);
  if (*(v9 + 598))
  {
LABEL_10:
    v10 = *(v9 + 597);
    if (*v9)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
  if (*v9)
  {
LABEL_11:
    result = v10 + v8 + *(*(v9 + 8) + 2);
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_26:
  result = v10 + v8;
  if (!v4)
  {
    return result;
  }

LABEL_12:
  v12 = 0;
  if (v4 > 65275)
  {
    switch(v4)
    {
      case 65276:
        v4 = 772;
        break;
      case 65277:
        v4 = 771;
        break;
      case 65279:
        v4 = 770;
        break;
      default:
        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v4 - 769) < 4)
  {
LABEL_14:
    v12 = v4 > 0x303;
  }

LABEL_15:
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result += v13;
  return result;
}

unint64_t bssl::dtls_seal_max_input_len(bssl *this, const ssl_st *a2, unint64_t a3)
{
  v3 = *(this + 7);
  if (*(v3 + 150) == a2)
  {
    v4 = v3 + 144;
  }

  else
  {
    if (!*(v3 + 240))
    {
      return 0;
    }

    v11 = 8 * *(v3 + 240);
    for (i = (v3 + 224); ; ++i)
    {
      v4 = *i;
      if (*(*i + 6) == a2)
      {
        break;
      }

      v11 -= 8;
      if (!v11)
      {
        return 0;
      }
    }
  }

  v5 = *(*(this + 6) + 208);
  if (!*(*(this + 6) + 208))
  {
    v10 = a3 - 13;
    if (a3 > 0xD)
    {
      goto LABEL_18;
    }

    return 0;
  }

  v6 = 0;
  if (*(*(this + 6) + 208) <= 0xFEFBu)
  {
    v7 = *(*(this + 6) + 208);
    if ((v5 - 769) >= 4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  switch(v5)
  {
    case 65276:
      v7 = 772;
      goto LABEL_6;
    case 65277:
      v7 = 771;
      goto LABEL_6;
    case 65279:
      v7 = 770;
LABEL_6:
      v6 = v7 > 0x303;
      break;
  }

LABEL_7:
  v19 = a2 == 0 || !v6;
  v8 = 13;
  if (!v19)
  {
    v8 = 5;
  }

  v9 = a3 >= v8;
  v10 = a3 - v8;
  if (v10 == 0 || !v9)
  {
    return 0;
  }

LABEL_18:
  v14 = *(v4 + 8);
  if (*(v14 + 598))
  {
    v15 = *(v14 + 597);
    result = v10 - v15;
    if (v10 <= v15)
    {
      return 0;
    }
  }

  else
  {
    result = v10;
    if (!v10)
    {
      return 0;
    }
  }

  v16 = *v14;
  if (*v14)
  {
    v17 = *(v14[1] + 2);
    if (*(v16 + 32) != 4)
    {
      v18 = *(v16 + 28);
      v19 = v18 == 4 || v18 == 2;
      if (v19)
      {
        v20 = 15;
      }

      else
      {
        if (v18 != 1)
        {
          abort();
        }

        v20 = 7;
      }

      result &= ~v20;
      v17 -= v20;
    }

    v9 = result >= v17;
    v21 = result - v17;
    if (v9)
    {
      result = v21;
    }

    else
    {
      result = 0;
    }
  }

  if (v5)
  {
    v22 = result == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = 0;
    if (v5 > 65275)
    {
      switch(v5)
      {
        case 65276:
          v5 = 772;
          break;
        case 65277:
          v5 = 771;
          break;
        case 65279:
          v5 = 770;
          break;
        default:
          goto LABEL_49;
      }
    }

    else if ((v5 - 769) >= 4)
    {
LABEL_49:
      if (a2)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      result -= v24;
      return result;
    }

    v23 = v5 > 0x303;
    goto LABEL_49;
  }

  return result;
}

uint64_t bssl::dtls_seal_record(uint64_t a1, unint64_t *a2, __int128 a3, unint64_t a4, __int8 a5, char *__len, size_t a7, unsigned __int16 a8)
{
  v67 = a5;
  v8 = *(a1 + 56);
  v9 = (v8 + 144);
  v10 = *(v8 + 144);
  v11 = v8 + 144;
  if (HIWORD(v10) != a8)
  {
    if (!*(v8 + 240))
    {
LABEL_11:
      v19 = 0;
      if (a3 + a4 <= __len)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v17 = 8 * *(v8 + 240);
    v18 = (v8 + 224);
    while (1)
    {
      v11 = *v18;
      if (*(*v18 + 6) == a8)
      {
        break;
      }

      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_11;
      }
    }
  }

  v12 = 0;
  v13 = *(*(a1 + 48) + 208);
  if (v13 > 0xFEFB)
  {
    switch(v13)
    {
      case 0xFEFCu:
        v13 = 772;
        break;
      case 0xFEFDu:
        v13 = 771;
        break;
      case 0xFEFFu:
        v13 = 770;
        break;
      default:
        goto LABEL_20;
    }

LABEL_19:
    v12 = v13 > 0x303;
LABEL_20:
    v14 = 13;
    if (a8 != 0 && v12)
    {
      v14 = 5;
    }

    v15 = *(v11 + 8);
    if ((*(v15 + 598) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (v13 - 769 < 4)
  {
    goto LABEL_19;
  }

  if (*(*(a1 + 48) + 208))
  {
    goto LABEL_20;
  }

  v14 = 13;
  v15 = *(v11 + 8);
  if ((*(v15 + 598) & 1) == 0)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v16 = *(v15 + 597);
LABEL_24:
  v19 = v16 + v14;
  if (a3 + a4 <= __len)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (&__len[a7] > a3 && (v19 > a4 || (a3 + v19) != __len))
  {
    v32 = 189;
    v33 = 486;
    goto LABEL_75;
  }

LABEL_28:
  if (HIWORD(v10) == a8)
  {
    goto LABEL_29;
  }

  if (!*(v8 + 240))
  {
LABEL_39:
    v32 = 68;
    v33 = 493;
LABEL_75:
    ERR_put_error(16, 0, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/dtls_record.cc", v33);
    return 0;
  }

  v30 = 8 * *(v8 + 240);
  v31 = (v8 + 224);
  while (1)
  {
    v9 = *v31;
    v10 = **v31;
    if (HIWORD(v10) == a8)
    {
      break;
    }

    ++v31;
    v30 -= 8;
    if (!v30)
    {
      goto LABEL_39;
    }
  }

LABEL_29:
  v20 = 0;
  v21 = *(*(a1 + 48) + 208);
  if (v21 > 0xFEFB)
  {
    switch(v21)
    {
      case 0xFEFCu:
        v22 = 772;
        break;
      case 0xFEFDu:
        v22 = 771;
        break;
      case 0xFEFFu:
        v22 = 770;
        break;
      default:
        goto LABEL_48;
    }

    goto LABEL_47;
  }

  v22 = *(*(a1 + 48) + 208);
  if (v21 - 769 < 4)
  {
LABEL_47:
    v20 = v22 > 0x303;
    goto LABEL_48;
  }

  if (!*(*(a1 + 48) + 208))
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0xFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFLL)
    {
      v24 = 0;
      v25 = 0;
      __src = 0;
      v27 = 13;
      v28 = v9[1];
      v29 = 0;
      if (!*v28)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    goto LABEL_52;
  }

LABEL_48:
  if (a8 != 0 && v20)
  {
    v27 = 5;
  }

  else
  {
    v27 = 13;
  }

  v23 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0xFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFLL)
  {
LABEL_52:
    v32 = 69;
    v33 = 502;
    goto LABEL_75;
  }

  v34 = 0;
  if (*(*(a1 + 48) + 208) <= 0xFEFBu)
  {
    if (v21 - 769 >= 4)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  switch(v21)
  {
    case 0xFEFCu:
      v21 = 772;
      goto LABEL_55;
    case 0xFEFDu:
      v21 = 771;
      goto LABEL_55;
    case 0xFEFFu:
      v21 = 770;
LABEL_55:
      v34 = v21 > 0x303;
      break;
  }

LABEL_56:
  v35 = a8 != 0;
  v24 = v35 & v34;
  if (v35 && v34)
  {
    __src = &v67;
  }

  else
  {
    __src = 0;
  }

  v25 = v35 && v34;
  v28 = v9[1];
  v29 = v35 & v34;
  if (!*v28)
  {
LABEL_62:
    if (*(v28 + 598))
    {
      goto LABEL_63;
    }

    goto LABEL_70;
  }

LABEL_60:
  v36 = *(*(v28 + 8) + 64);
  if (v36)
  {
    v64 = a1;
    v62 = a3;
    v63 = a2;
    v37 = *(&a3 + 1);
    v38 = a5;
    v59 = v25;
    *(&v57 + 1) = __len;
    v58 = v24;
    v39 = a7;
    v60 = a4;
    v61 = v27;
    v40 = v19;
    v41 = __src;
    v42 = v36(v28 + 8, a7, v24);
    __src = v41;
    __len = *(&v57 + 1);
    v24 = v58;
    v19 = v40;
    a4 = v60;
    v27 = v61;
    a7 = v39;
    v25 = v59;
    a5 = v38;
    *&a3 = v62;
    a2 = v63;
    *(&a3 + 1) = v37;
    v29 = v42;
    a1 = v64;
    goto LABEL_62;
  }

  v29 = v24 + *(v28 + 576);
  if (*(v28 + 598))
  {
LABEL_63:
    v43 = v29 + a7 + *(v28 + 597);
    if (v43 < a7)
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

LABEL_70:
  v43 = v29 + a7;
  if (v29 + a7 < a7)
  {
LABEL_74:
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/ssl/ssl_aead_ctx.cc", 156);
    v32 = 200;
    v33 = 517;
    goto LABEL_75;
  }

LABEL_71:
  if (v43 >= 0xFFFF)
  {
    goto LABEL_74;
  }

  if (v43 + v27 > a4)
  {
    v32 = 121;
    v33 = 521;
    goto LABEL_75;
  }

  v45 = *(*(a1 + 48) + 208);
  if (v45 - 769 < 4)
  {
    if (v45 <= 0x303)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if (!*(*(a1 + 48) + 208))
  {
    v45 = 65279;
    if (v25)
    {
      goto LABEL_81;
    }

    goto LABEL_88;
  }

  if (v45 == 65276)
  {
LABEL_79:
    v45 = 65277;
  }

LABEL_80:
  if (v25)
  {
LABEL_81:
    *a3 = a8 & 3 | 0x2C;
    v46 = bswap32(*v9) >> 16;
    v47 = 3;
    goto LABEL_89;
  }

LABEL_88:
  *a3 = a5;
  LOWORD(v46) = __rev16(v45);
  *(a3 + 3) = bswap64(v10);
  v47 = 11;
LABEL_89:
  *(a3 + v47) = bswap32(v43) >> 16;
  *(a3 + 1) = v46;
  v48 = (a3 + v19);
  v49 = *(*(a1 + 48) + 208);
  v65 = a1;
  v50 = a2;
  v51 = *(&a3 + 1);
  if (v49 - 769 < 4)
  {
    v52 = v10;
    if (v49 < 0x304)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v52 = v10;
  if (v49 == 65276)
  {
LABEL_91:
    v52 = v23;
  }

LABEL_92:
  *&v56 = a3;
  *(&v56 + 1) = v27;
  v53 = a3;
  result = bssl::SSLAEADContext::SealScatter(v9[1], (a3 + v27), v48, &v48[a7], a5, v45, v52, a7, v56, __len, a7, __src, v24, v57);
  if (!result)
  {
    return result;
  }

  v54 = v53;
  if (v25)
  {
    result = (*(*v9[2] + 32))(v9[2], v66, 2, v53 + v27, v43);
    if (!result)
    {
      return result;
    }

    v54 = v53;
    *(v53 + 1) ^= v66[0];
    *(v53 + 2) ^= v66[1];
  }

  *v50 = v10;
  *v9 = v10 + 1;
  *v51 = v43 + v27;
  v55 = *(v65 + 64);
  if (v55)
  {
    v55(1, 0, 256, v54, v27, v65, *(v65 + 72));
  }

  return 1;
}

void std::unique_ptr<bssl::DTLSReadEpoch,bssl::internal::Deleter>::reset[abi:sn200100](uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (!v1)
  {
    return;
  }

  if (*(v1 + 112) && v1 + 63 >= -*(v1 + 112))
  {
    goto LABEL_22;
  }

  *(v1 + 112) = 0;
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v2)
  {
    (**v2)(v2);
    v4 = *(v2 - 1);
    v3 = v2 - 1;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }

  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

  if (*(v6 + 596) && v6 + 583 >= -*(v6 + 596))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v7 = *(v6 + 8);
  *(v6 + 596) = 0;
  if (v7)
  {
    (*(v7 + 24))(v6 + 8);
    *(v6 + 8) = 0;
  }

  v9 = *(v6 - 8);
  v8 = (v6 - 8);
  v10 = v9 + 8;
  if (v9 != -8)
  {
    bzero(v8, v10);
  }

  free(v8);
LABEL_16:
  v12 = *(v1 - 8);
  v11 = (v1 - 8);
  v13 = v12 + 8;
  if (v12 != -8)
  {
    bzero(v11, v13);
  }

  free(v11);
}

void std::unique_ptr<bssl::DTLSPrevReadEpoch,bssl::internal::Deleter>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (!v1)
  {
    return;
  }

  if (*(v1 + 112) && v1 + 63 >= -*(v1 + 112))
  {
    goto LABEL_20;
  }

  *(v1 + 112) = 0;
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v2)
  {
    (**v2)(v2);
    v4 = *(v2 - 1);
    v3 = v2 - 1;
    v5 = v4 + 8;
    if (v4 != -8)
    {
      bzero(v3, v5);
    }

    free(v3);
  }

  v6 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

  if (*(v6 + 596) && v6 + 583 >= -*(v6 + 596))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v7 = *(v6 + 8);
  *(v6 + 596) = 0;
  if (v7)
  {
    (*(v7 + 24))(v6 + 8);
    *(v6 + 8) = 0;
  }

  v9 = *(v6 - 8);
  v8 = (v6 - 8);
  v10 = v9 + 8;
  if (v9 != -8)
  {
    bzero(v8, v10);
  }

  free(v8);
LABEL_16:
  v12 = *(v1 - 8);
  v11 = (v1 - 8);
  v13 = v12 + 8;
  if (v12 != -8)
  {
    bzero(v11, v13);
  }

  free(v11);
}

uint64_t aead_chacha20_poly1305_init(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v4 = 16;
  if (a4)
  {
    v4 = a4;
  }

  if (v4 < 0x11)
  {
    if (a3 == 32)
    {
      v6 = *a2;
      *(a1 + 24) = a2[1];
      *(a1 + 8) = v6;
      *(a1 + 568) = v4;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ERR_put_error(30, 0, 117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_chacha20poly1305.cc", 52);
    return 0;
  }
}

uint64_t aead_chacha20_poly1305_seal_scatter(uint64_t a1, int8x16_t *a2, unsigned int *a3, size_t *a4, size_t a5, int *a6, uint64_t a7, int8x16_t *a8, unint64_t a9, uint64_t a10, unint64_t a11, unsigned int *a12, unint64_t a13)
{
  v42 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 568);
  v14 = v13 + a11;
  if (__CFADD__(v13, a11))
  {
    v15 = 117;
    v16 = 115;
LABEL_10:
    ERR_put_error(30, 0, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_chacha20poly1305.cc", v16);
    return 0;
  }

  if (v14 > a5)
  {
    v15 = 103;
    v16 = 119;
    goto LABEL_10;
  }

  if (a7 != 12)
  {
    v15 = 121;
    v16 = 123;
    goto LABEL_10;
  }

  if (a9 >= 0x3FFFFFFFC0)
  {
    v15 = 117;
    v16 = 135;
    goto LABEL_10;
  }

  v22 = a12;
  v21 = a13;
  if (!a11)
  {
    goto LABEL_40;
  }

  v37 = a8;
  v38 = a2;
  v23 = 0;
  v24 = a9 >> 6;
  v25 = a9 & 0x3F;
  v40 = a3 - a10;
  do
  {
    LODWORD(v24) = v24 + 1;
    memset(__src, 0, sizeof(__src));
    CRYPTO_chacha_20(__src, __src, 0x40uLL, (a1 + 8), a6, v24);
    if (a11 <= v23 + 1)
    {
      v26 = v23 + 1;
    }

    else
    {
      v26 = a11;
    }

    v27 = v26 + ~v23;
    if (v27 >= (v25 ^ 0x3F))
    {
      v27 = v25 ^ 0x3F;
    }

    if (v27 >= 0xF && v40 >= 0x10)
    {
      v29 = v27 + 1;
      v30 = (v27 + 1) & 0x70;
      *(a3 + v23) = veorq_s8(*(__src + v25), *(a10 + v23));
      if (v30 == 16)
      {
        v31 = v23 + 15;
        v23 += 16;
        v32 = v31 + 1 < a11;
        if (v29 == 16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *(a3 + v23 + 16) = veorq_s8(*(&__src[1] + v25), *(a10 + v23 + 16));
        if (v30 == 32)
        {
          v33 = v23 + 31;
          v23 += 32;
          v32 = v33 + 1 < a11;
          if (v29 == 32)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *(a3 + v23 + 32) = veorq_s8(*(&__src[2] + v25), *(a10 + v23 + 32));
          if (v30 == 48)
          {
            v34 = v23 + 47;
            v23 += 48;
            v32 = v34 + 1 < a11;
            if (v29 == 48)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v35 = v23 + 63;
            *(a3 + v23 + 48) = veorq_s8(*(&__src[3] + v25), *(a10 + v23 + 48));
            v23 += v30;
            v32 = v35 + 1 < a11;
            if (v29 == v30)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v25 += v30;
    }

    do
    {
      *(a3 + v23) = __src[0].i8[v25] ^ *(a10 + v23);
      v32 = ++v23 < a11;
      if (v25 > 0x3E)
      {
        break;
      }

      ++v25;
    }

    while (v23 < a11);
LABEL_14:
    v25 = 0;
  }

  while (v32);
  a2 = v38;
  v14 = v13 + a11;
  a8 = v37;
  v22 = a12;
  v21 = a13;
LABEL_40:
  v36 = a2;
  CRYPTO_chacha_20(a2, a8, a9, (a1 + 8), a6, 1);
  calc_tag(__src, (a1 + 8), a6, v22, v21, v36, a9, a3, a11);
  if (v13)
  {
    memcpy(a3 + a11, __src, v13);
  }

  *a4 = v14;
  return 1;
}

uint64_t aead_chacha20_poly1305_open_gather(uint64_t a1, int8x16_t *a2, unsigned __int8 *a3, uint64_t a4, int8x16_t *a5, unint64_t a6, int8x16_t *a7, unint64_t a8, unsigned int *a9, unint64_t a10)
{
  v46[5] = *MEMORY[0x277D85DE8];
  if (a4 != 12)
  {
    v10 = 121;
    v11 = 226;
    goto LABEL_7;
  }

  if (*(a1 + 568) != a8)
  {
    v10 = 101;
    v11 = 231;
    goto LABEL_7;
  }

  if (a6 >= 0x3FFFFFFFC0)
  {
    v10 = 117;
    v11 = 243;
LABEL_7:
    ERR_put_error(30, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_chacha20poly1305.cc", v11);
    return 0;
  }

  calc_tag(v45, (a1 + 8), a3, a9, a10, a5, a6, 0, 0);
  CRYPTO_chacha_20(a2, a5, a6, (a1 + 8), a3, 1);
  if (a8)
  {
    if (a8 < 8)
    {
      v20 = 0;
      v21 = 0;
      v22 = a7;
      goto LABEL_20;
    }

    v22 = a7;
    if (a8 >= 0x20)
    {
      v20 = a8 & 0xFFFFFFFFFFFFFFE0;
      v23 = v46;
      v24 = a7 + 1;
      v25 = 0uLL;
      v26 = a8 & 0xFFFFFFFFFFFFFFE0;
      v27 = 0uLL;
      do
      {
        v25 = vorrq_s8(veorq_s8(v24[-1], v23[-1]), v25);
        v27 = vorrq_s8(veorq_s8(*v24, *v23), v27);
        v23 += 2;
        v24 += 2;
        v26 -= 32;
      }

      while (v26);
      v28 = vorrq_s8(v27, v25);
      *v28.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
      v29 = v28.i64[0] | HIDWORD(v28.i64[0]) | ((v28.i64[0] | HIDWORD(v28.i64[0])) >> 16);
      v21 = v29 | BYTE1(v29);
      if (v20 == a8)
      {
        goto LABEL_22;
      }

      if ((a8 & 0x18) == 0)
      {
LABEL_20:
        v39 = a8 - v20;
        v40 = &v22->i8[v20];
        v41 = &v45[v20];
        do
        {
          v43 = *v41++;
          v42 = v43;
          v44 = *v40++;
          v21 |= v44 ^ v42;
          --v39;
        }

        while (v39);
        goto LABEL_22;
      }
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v30 = v20;
    v20 = a8 & 0xFFFFFFFFFFFFFFF8;
    v31 = v21;
    v32 = &v45[v30];
    v33 = &a7->i8[v30];
    v34 = v30 - (a8 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v35 = *v32;
      v32 += 8;
      v36 = v35;
      v37 = *v33++;
      v31 = vorr_s8(veor_s8(v37, v36), v31);
      v34 += 8;
    }

    while (v34);
    v38 = *&v31 | HIDWORD(*&v31) | ((*&v31 | HIDWORD(*&v31)) >> 16);
    v21 = v38 | BYTE1(v38);
    if (v20 != a8)
    {
      goto LABEL_20;
    }

LABEL_22:
    if (v21)
    {
      v10 = 101;
      v11 = 259;
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t calc_tag(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int *a4, unint64_t a5, unsigned int *a6, unint64_t a7, unsigned int *a8, unint64_t a9)
{
  v15 = a9;
  __src[1] = *MEMORY[0x277D85DE8];
  v81 = 0u;
  v82 = 0u;
  CRYPTO_chacha_20(&v81, &v81, 0x20uLL, a2, a3, 0);
  memset(v80, 0, sizeof(v80));
  v78 = -v80 & 0x30;
  v16 = v80 + v78;
  v18 = v81.i32[2];
  v17 = v81.i32[1];
  v19 = v81.u32[3];
  v20 = (v81.i64[0] >> 26) & 0x3FFFF03;
  *v16 = v81.i32[0] & 0x3FFFFFF;
  *(v16 + 1) = v20;
  v21 = (__PAIR64__(v18, v17) >> 20) & 0x3FFC0FF;
  v22 = (__PAIR64__(v19, v18) >> 14) & 0x3F03FFF;
  *(v16 + 2) = v21;
  *(v16 + 3) = v22;
  v23 = (v19 >> 8) & 0xFFFFF;
  *(v16 + 4) = v23;
  *(v16 + 5) = 5 * v20;
  *(v16 + 6) = 5 * v21;
  *(v16 + 7) = 5 * v22;
  *(v16 + 8) = 5 * v23;
  *(v16 + 9) = 0;
  *(v16 + 44) = 0;
  *(v16 + 36) = 0;
  *(v16 + 13) = 0;
  *(v16 + 5) = v82;
  v79 = a5;
  if (!a5)
  {
    v28 = a7;
    if (!a7)
    {
      v29 = 0;
      if (!a9)
      {
        v30 = 0;
        __src[0] = 0;
        goto LABEL_99;
      }

LABEL_46:
      if (v15 < 0x10)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

LABEL_27:
    if (v28 < 0x10)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v24 = a1;
  if (a5 < 0x10)
  {
    v27 = a5;
  }

  else
  {
    v25 = a5;
    v26 = a5 & 0xFFFFFFFFFFFFFFF0;
    poly1305_update(v16, a4, v26);
    v27 = v25 & 0xF;
    if (!v27)
    {
      goto LABEL_14;
    }

    a4 = (a4 + v26);
  }

  memcpy(v16 + 56, a4, v27);
  *(v16 + 9) = v27;
  v31 = v27 - 16;
  v32 = v16 + 56;
  do
  {
    v32[*(v16 + 9)] = 0;
    ++v32;
  }

  while (!__CFADD__(v31++, 1));
  v34 = *(v16 + 9) + 16 - v27;
  *(v16 + 9) = v34;
  if (v34 == 16)
  {
    poly1305_update(v16, v16 + 14, 0x10uLL);
    *(v16 + 9) = 0;
  }

LABEL_14:
  v28 = *(v16 + 9);
  a1 = v24;
  if (!a7)
  {
    goto LABEL_33;
  }

  if (v28)
  {
    v35 = 16;
    v36 = 16 - v28;
    if (16 - v28 >= a7)
    {
      v36 = a7;
    }

    if (v28 != 16)
    {
      v37 = v16 + 56;
      if (v36 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v36;
      }

      v39 = a6;
      do
      {
        v40 = *v39;
        v39 = (v39 + 1);
        v37[*(v16 + 9)] = v40;
        ++v37;
        --v38;
      }

      while (v38);
      v35 = *(v16 + 9);
    }

    v41 = v35 + v36;
    *(v16 + 9) = v41;
    v28 = a7 - v36;
    a6 = (a6 + v36);
    if (v41 == 16)
    {
      poly1305_update(v16, v16 + 14, 0x10uLL);
      *(v16 + 9) = 0;
    }

    goto LABEL_27;
  }

  v28 = a7;
  if (a7 >= 0x10)
  {
LABEL_28:
    poly1305_update(v16, a6, v28 & 0xFFFFFFFFFFFFFFF0);
    a6 = (a6 + (v28 & 0xFFFFFFFFFFFFFFF0));
    v28 &= 0xFu;
  }

LABEL_29:
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v16[i + 56] = *(a6 + i);
    }

    *(v16 + 9) = v28;
LABEL_33:
    if (a9)
    {
      goto LABEL_34;
    }

LABEL_82:
    v15 = v28;
    v29 = v79;
    v30 = a9 + a7;
    v51 = (a9 + a7) & 0xF;
    if (!v51)
    {
      goto LABEL_52;
    }

    goto LABEL_85;
  }

  v28 = *(v16 + 9);
  if (!a9)
  {
    goto LABEL_82;
  }

LABEL_34:
  if (v28)
  {
    v43 = 16;
    v44 = 16 - v28;
    if (16 - v28 >= a9)
    {
      v44 = a9;
    }

    if (v28 != 16)
    {
      v45 = v16 + 56;
      if (v44 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v44;
      }

      v47 = a8;
      do
      {
        v48 = *v47;
        v47 = (v47 + 1);
        v45[*(v16 + 9)] = v48;
        ++v45;
        --v46;
      }

      while (v46);
      v43 = *(v16 + 9);
    }

    v49 = v43 + v44;
    *(v16 + 9) = v49;
    v15 = a9 - v44;
    a8 = (a8 + v44);
    v29 = v79;
    if (v49 == 16)
    {
      poly1305_update(v16, v16 + 14, 0x10uLL);
      *(v16 + 9) = 0;
    }

    goto LABEL_46;
  }

  v29 = v79;
  if (a9 >= 0x10)
  {
LABEL_47:
    poly1305_update(v16, a8, v15 & 0xFFFFFFFFFFFFFFF0);
    a8 = (a8 + (v15 & 0xFFFFFFFFFFFFFFF0));
    v15 &= 0xFu;
  }

LABEL_48:
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v16[j + 56] = *(a8 + j);
    }

    *(v16 + 9) = v15;
    v30 = a9 + a7;
    v51 = (a9 + a7) & 0xF;
    if (!v51)
    {
LABEL_52:
      __src[0] = v29;
      if (v15)
      {
        goto LABEL_53;
      }

LABEL_99:
      v54 = 8;
      memcpy(v16 + 56, __src, 8uLL);
      *(v16 + 9) = 8;
      __src[0] = v30;
      goto LABEL_72;
    }
  }

  else
  {
    v15 = *(v16 + 9);
    v30 = a9 + a7;
    v51 = (a9 + a7) & 0xF;
    if (!v51)
    {
      goto LABEL_52;
    }
  }

LABEL_85:
  v65 = 16 - v51;
  v66 = &calc_tag(unsigned char *,unsigned char const*,unsigned char const*,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long)::padding;
  if (v15)
  {
    v67 = 16 - v15;
    if (16 - v15 >= v65)
    {
      v67 = v65;
    }

    if (v15 == 16)
    {
      *(v16 + 9) = v67 + 16;
      v15 = v65 - v67;
      v66 = (&calc_tag(unsigned char *,unsigned char const*,unsigned char const*,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long)::padding + v67);
      if (!v67)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v74 = v16 + 56;
      if (v67 <= 1)
      {
        v75 = 1;
      }

      else
      {
        v75 = v67;
      }

      do
      {
        v74[*(v16 + 9)] = 0;
        ++v74;
        --v75;
      }

      while (v75);
      v76 = *(v16 + 9) + v67;
      *(v16 + 9) = v76;
      v15 = v65 - v67;
      v66 = (&calc_tag(unsigned char *,unsigned char const*,unsigned char const*,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long)::padding + v67);
      if (v76 == 16)
      {
LABEL_90:
        poly1305_update(v16, v16 + 14, 0x10uLL);
        *(v16 + 9) = 0;
        if (v15 < 0x10)
        {
          goto LABEL_91;
        }

        goto LABEL_111;
      }
    }

    if (v15 < 0x10)
    {
LABEL_91:
      if (v15)
      {
        goto LABEL_95;
      }

LABEL_112:
      v15 = *(v16 + 9);
      __src[0] = v29;
      if (!v15)
      {
        goto LABEL_99;
      }

      goto LABEL_53;
    }

LABEL_111:
    poly1305_update(v16, v66, v15 & 0xFFFFFFFFFFFFFFF0);
    v66 = (v66 + (v15 & 0xFFFFFFFFFFFFFFF0));
    v15 &= 0xFu;
    if (v15)
    {
      goto LABEL_95;
    }

    goto LABEL_112;
  }

  v15 = v65;
  if (v65 >= 0x10 && (v80 + v78 - &calc_tag(unsigned char *,unsigned char const*,unsigned char const*,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long)::padding + 56) >= 0x20)
  {
    if (v65 >= 0x20)
    {
      v68 = v65 & 0xFFFFFFFFFFFFFFE0;
      *(v16 + 56) = calc_tag(unsigned char *,unsigned char const*,unsigned char const*,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long)::padding;
      *(v16 + 72) = *key_table;
      if (v15 == (v15 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_98;
      }

      v77 = v15 & 0xFFFFFFFFFFFFFFE0;
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v77 = 0;
    }

    v68 = v15 & 0xFFFFFFFFFFFFFFF0;
    *&v16[v77 + 56] = *(&calc_tag(unsigned char *,unsigned char const*,unsigned char const*,unsigned char const*,unsigned long,unsigned char const*,unsigned long,unsigned char const*,unsigned long)::padding + v77);
    if (v15 == (v15 & 0xFFFFFFFFFFFFFFF0))
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

LABEL_95:
  v68 = 0;
LABEL_96:
  v69 = v15 - v68;
  v70 = &v80[3] + v68 + v78 + 8;
  v71 = v66 + v68;
  do
  {
    v72 = *v71++;
    *v70++ = v72;
    --v69;
  }

  while (v69);
LABEL_98:
  *(v16 + 9) = v15;
  __src[0] = v29;
  if (!v15)
  {
    goto LABEL_99;
  }

LABEL_53:
  v52 = 16 - v15;
  if (16 - v15 >= 8)
  {
    v53 = 8;
  }

  else
  {
    v53 = 16 - v15;
  }

  if (v15 == 16)
  {
    v54 = v53 + 16;
    *(v16 + 9) = v53 + 16;
    if (!v53)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v55 = v16 + 56;
    v16[*(v16 + 9) + 56] = __src[0];
    if (v52 > 1)
    {
      v55[*(v16 + 9) + 1] = BYTE1(__src[0]);
      if (v15 != 14)
      {
        v55[*(v16 + 9) + 2] = BYTE2(__src[0]);
        if (v15 != 13)
        {
          v55[*(v16 + 9) + 3] = BYTE3(__src[0]);
          if (v15 != 12)
          {
            v55[*(v16 + 9) + 4] = BYTE4(__src[0]);
            if (v15 != 11)
            {
              v55[*(v16 + 9) + 5] = BYTE5(__src[0]);
              if (v15 != 10)
              {
                v55[*(v16 + 9) + 6] = BYTE6(__src[0]);
                if (v15 != 9)
                {
                  v55[*(v16 + 9) + 7] = HIBYTE(__src[0]);
                }
              }
            }
          }
        }
      }
    }

    v54 = *(v16 + 9) + v53;
    *(v16 + 9) = v54;
    if (v54 == 16)
    {
LABEL_58:
      poly1305_update(v16, v16 + 14, 0x10uLL);
      v54 = 0;
      *(v16 + 9) = 0;
      if (v52 <= 7)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }
  }

  if (v52 <= 7)
  {
LABEL_59:
    v54 = 8 - v53;
    memcpy(v16 + 56, __src + v53, 8 - v53);
    *(v16 + 9) = 8 - v53;
    __src[0] = v30;
    if (8 == v53)
    {
      goto LABEL_100;
    }

    goto LABEL_72;
  }

LABEL_71:
  __src[0] = v30;
  if (!v54)
  {
LABEL_100:
    v64 = __src;
    v63 = 8;
    goto LABEL_101;
  }

LABEL_72:
  v56 = 16 - v54;
  if (v56 >= 8)
  {
    v57 = 8;
  }

  else
  {
    v57 = v56;
  }

  v58 = __src;
  v59 = v16 + 56;
  v60 = v57;
  do
  {
    v61 = *v58++;
    v59[*(v16 + 9)] = v61;
    ++v59;
    --v60;
  }

  while (v60);
  v62 = *(v16 + 9) + v57;
  *(v16 + 9) = v62;
  if (v62 == 16)
  {
    poly1305_update(v16, v16 + 14, 0x10uLL);
    *(v16 + 9) = 0;
  }

  if (v56 <= 7)
  {
    v63 = 8 - v57;
    v64 = __src + v57;
LABEL_101:
    memcpy(v16 + 56, v64, v63);
    *(v16 + 9) = v63;
  }

  return CRYPTO_poly1305_finish(v80, a1);
}

uint64_t des_ede3_init_key(evp_cipher_ctx_st *a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v4 = *&a1->encrypt;
  DES_set_key_ex(a2, v4);
  DES_set_key_ex(a2 + 2, v4 + 128);
  DES_set_key_ex(a2 + 4, v4 + 256);
  return 1;
}

uint64_t rc2_init_key(evp_cipher_ctx_st *a1, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = *&a1->encrypt;
  v4 = *a1->oiv;
  *(v3 + 4) = 0;
  v5 = v3 + 4;
  v6 = *v3;
  if (v4 >= 128)
  {
    v7 = 128;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0x400)
  {
    v8 = 1024;
  }

  else
  {
    v8 = *v3;
  }

  if (v6 >= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1024;
  }

  if (v4 >= 1)
  {
    if (v4 < 8 || (v3 - a2 + 4) < 0x20)
    {
      v10 = 0;
      goto LABEL_14;
    }

    if (v4 >= 32)
    {
      v10 = v7 & 0xE0;
      v26 = *(a2 + 1);
      *(v3 + 4) = *a2;
      *(v3 + 20) = v26;
      if (v10 != 32)
      {
        v27 = *(a2 + 3);
        *(v3 + 36) = *(a2 + 2);
        *(v3 + 52) = v27;
        if (v10 != 64)
        {
          v28 = *(a2 + 5);
          *(v3 + 68) = *(a2 + 4);
          *(v3 + 84) = v28;
          if (v10 != 96)
          {
            v29 = *(a2 + 7);
            *(v3 + 100) = *(a2 + 6);
            *(v3 + 116) = v29;
          }
        }
      }

      if (v10 == v7)
      {
        goto LABEL_16;
      }

      if ((v7 & 0x18) == 0)
      {
LABEL_14:
        v11 = v7 - v10;
        v12 = (v10 + v3 + 4);
        v13 = &a2[v10];
        do
        {
          v14 = *v13++;
          *v12++ = v14;
          --v11;
        }

        while (v11);
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
    }

    v30 = v10;
    v10 = v7 & 0xF8;
    v31 = &a2[v30];
    v32 = (v30 + v3 + 4);
    v33 = v30 - v10;
    do
    {
      v34 = *v31;
      v31 += 8;
      *v32++ = v34;
      v33 += 8;
    }

    while (v33);
    if (v10 != v7)
    {
      goto LABEL_14;
    }

LABEL_16:
    if (v4 > 127)
    {
      goto LABEL_19;
    }
  }

  v15 = *(v5 + v7 - 1);
  v16 = (128 - v7);
  v17 = (v3 + 4);
  do
  {
    v15 = key_table[(*v17 + v15)];
    v17[v4] = v15;
    ++v17;
    --v16;
  }

  while (v16);
LABEL_19:
  v18 = (v9 + 7) >> 3;
  v19 = key_table[(0xFFu >> (-v9 & 7)) & *(v5 + 128 - v18)];
  *(v5 + 128 - v18) = v19;
  if (v18 != 128)
  {
    v20 = v18 - 128;
    v21 = (128 - v18 + v3 + 3);
    do
    {
      v19 = key_table[(v21[v18] ^ v19)];
      *v21-- = v19;
    }

    while (!__CFADD__(v20++, 1));
  }

  v23 = 0;
  do
  {
    v24 = v23 + 127;
    v23 -= 2;
  }

  while (v24 > 1);
  return 1;
}

uint64_t rc2_cbc_cipher(evp_cipher_ctx_st *a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = a4;
  v8 = *&a1->encrypt;
  if (a4 >= 0x10000)
  {
    do
    {
      RC2_cbc_encrypt(a3, a2, 0x10000, (v8 + 4), &a1->iv[12], *&a1->oiv[4]);
      v4 -= 0x10000;
      a3 += 0x10000;
      a2 += 0x10000;
    }

    while (v4 >> 16);
  }

  if (v4)
  {
    RC2_cbc_encrypt(a3, a2, v4, (v8 + 4), &a1->iv[12], *&a1->oiv[4]);
  }

  return 1;
}

uint64_t rc2_ctrl(evp_cipher_ctx_st *a1, int a2, int a3, void *a4)
{
  if (a2 == 3)
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    a3 = 8 * *a1->oiv;
LABEL_4:
    **&a1->encrypt = a3;
    return 1;
  }

  return 0xFFFFFFFFLL;
}

int *RC2_cbc_encrypt(int *result, unsigned __int8 *a2, uint64_t a3, rc2_key_st *a4, unsigned __int8 *a5, int a6)
{
  v6 = a5;
  v8 = a3;
  v10 = result;
  v46 = *MEMORY[0x277D85DE8];
  v11 = *a5;
  v12 = *a5;
  v13 = HIDWORD(*a5);
  if (!a6)
  {
    if (a3 >= 8)
    {
      do
      {
        v19 = a2;
        v20 = v12;
        v21 = v13;
        v12 = *v10;
        v13 = v10[1];
        v22 = v8;
        v8 -= 8;
        v23 = v10 + 2;
        v45[0] = *v10;
        v45[1] = v13;
        result = RC2_decrypt(v45, a4);
        v24 = HIWORD(v45[0]) ^ HIWORD(v20);
        v25 = v45[1] ^ v21;
        *v19 = LOWORD(v45[0]) ^ v20;
        *(v19 + 1) = v24;
        *(v19 + 1) = v25;
        a2 = v19 + 8;
        v10 += 2;
      }

      while (v22 > 0xF);
      v10 = v23;
      v6 = a5;
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    v27 = *v10;
    v26 = v10[1];
    v45[0] = v27;
    v45[1] = v26;
    result = RC2_decrypt(v45, a4);
    v28 = v45[0] ^ v12;
    v29 = &a2[v8];
    if (v8 <= 3)
    {
      if (v8 == 1)
      {
LABEL_40:
        *(v29 - 1) = v28;
        v12 = v27;
        v13 = v26;
LABEL_41:
        *v6 = v12;
        *(v6 + 2) = v13;
        v36 = HIBYTE(v13);
        v6[6] = BYTE2(v13);
        goto LABEL_42;
      }

      if (v8 == 2)
      {
LABEL_39:
        *--v29 = BYTE1(v28);
        goto LABEL_40;
      }

LABEL_38:
      *--v29 = BYTE2(v28);
      goto LABEL_39;
    }

    v30 = v45[1] ^ v13;
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *--v29 = BYTE2(v30);
      }

      *--v29 = BYTE1(v30);
    }

    else if (v8 == 4)
    {
      goto LABEL_37;
    }

    *--v29 = v30;
LABEL_37:
    *--v29 = HIBYTE(v28);
    goto LABEL_38;
  }

  if (a3 >= 8)
  {
    do
    {
      v14 = a2;
      v15 = v8;
      v8 -= 8;
      v16 = *v10;
      v10 += 2;
      *v45 = veor_s8(v16, v11);
      result = RC2_encrypt(v45, a4);
      v11 = *v45;
      v12 = v45[0];
      *a2 = v45[0];
      a2[2] = BYTE2(v12);
      a2[3] = HIBYTE(v12);
      v13 = v11.u32[1];
      *(a2 + 2) = v11.i16[2];
      a2[6] = v11.u8[6];
      a2 += 8;
      v14[7] = v11.u8[7];
    }

    while (v15 > 0xF);
  }

  if (v8)
  {
    v17 = 0;
    v18 = v10 + v8;
    if (v8 <= 3)
    {
      v37 = 0;
      if (v8 == 1)
      {
LABEL_28:
        v45[0] = (v17 | *(v18 - 1)) ^ v12;
        v45[1] = v37 ^ v13;
        result = RC2_encrypt(v45, a4);
        LOBYTE(v12) = v45[0];
        v13 = v45[1];
        v31 = v45[0] >> 8;
        v32 = HIWORD(v45[0]);
        v33 = HIBYTE(v45[0]);
        v34 = v45[1] >> 8;
        v35 = HIWORD(v45[1]);
        v36 = HIBYTE(v45[1]);
        *a2 = v45[0];
        *(a2 + 1) = v13;
        goto LABEL_29;
      }

      if (v8 == 2)
      {
LABEL_27:
        v43 = *--v18;
        v17 |= v43 << 8;
        goto LABEL_28;
      }

LABEL_26:
      v42 = *--v18;
      v17 |= v42 << 16;
      goto LABEL_27;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v38 = *--v18;
        v17 = v38 << 16;
      }

      v39 = *--v18;
      v17 |= v39 << 8;
    }

    else if (v8 == 4)
    {
      goto LABEL_25;
    }

    v40 = *--v18;
    v17 |= v40;
LABEL_25:
    v37 = v17;
    v41 = *--v18;
    v17 = v41 << 24;
    goto LABEL_26;
  }

  v31 = v12 >> 8;
  v32 = HIWORD(v12);
  v33 = HIBYTE(v12);
  v34 = v13 >> 8;
  v35 = HIWORD(v13);
  v36 = HIBYTE(v13);
LABEL_29:
  *v6 = v12;
  v6[1] = v31;
  v6[2] = v32;
  v6[3] = v33;
  v6[4] = v13;
  v6[5] = v34;
  v6[6] = v35;
LABEL_42:
  v6[7] = v36;
  return result;
}

int *RC2_encrypt(int *result, rc2_key_st *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = HIWORD(v2);
  v5 = HIWORD(*result);
  v6 = -5;
  v7 = a2;
  do
  {
    v8 = LOWORD(v7->data[0]) + (v5 & ~v4) + v3 + (v4 & v2);
    v3 = (v8 >> 15) & 1 | (2 * v8);
    LOWORD(v8) = HIWORD(v7->data[0]) + (v3 & v4) + (v2 & ~v3) + v5;
    v5 = (v8 >> 14) & 0xFFFC0003 | (4 * v8);
    LOWORD(v8) = LOWORD(v7->data[1]) + (v5 & v3) + (v4 & ~v5) + v2;
    v2 = (v8 >> 13) & 0xFFF80007 | (8 * v8);
    v9 = &v7->data[2];
    v10 = HIWORD(v7->data[1]) + (v2 & v5) + (v3 & ~v2) + v4;
    v4 = (v10 >> 11) & 0xFFE0001F | (32 * v10);
    v7 = v9;
    v11 = __CFADD__(v6++, 1);
  }

  while (!v11);
  v12 = 0;
  v13 = *(a2->data + (v4 & 0x3F)) + v3;
  v14 = *(a2->data + (v13 & 0x3F)) + v5;
  v15 = *(a2->data + (v14 & 0x3F)) + v2;
  v16 = v4 + *(a2->data + (v15 & 0x3F));
  do
  {
    v17 = LOWORD(v9->data[v12]) + (v14 & ~v16) + v13 + (v16 & v15);
    v13 = (v17 >> 15) & 1 | (2 * v17);
    LOWORD(v17) = HIWORD(v9->data[v12]) + (v13 & v16) + (v15 & ~v13) + v14;
    v14 = (v17 >> 14) & 0xFFFC0003 | (4 * v17);
    v18 = LOWORD(v9->data[v12 + 1]) + (v14 & v13) + (v16 & ~v14) + v15;
    v15 = (v18 >> 13) & 0xFFF80007 | (8 * v18);
    v16 = ((HIWORD(v9->data[v12 + 1]) + (v15 & v14) + (v13 & ~v15) + v16) >> 11) & 0xFFE0001F | (32 * (HIWORD(v9->data[v12 + 1]) + (v15 & v14) + (v13 & ~v15) + v16));
    v12 += 2;
  }

  while ((v12 * 4) != 48);
  v19 = *(a2->data + (v16 & 0x3F)) + v13;
  v20 = *(a2->data + (v19 & 0x3F)) + v14;
  v21 = *(a2->data + (v20 & 0x3F)) + ((v18 >> 13) | (8 * v18));
  v22 = v16 + *(a2->data + (v21 & 0x3F));
  v23 = (v9 + v12 * 4);
  v24 = -5;
  do
  {
    v25 = *v23 + (v20 & ~v22) + v19 + (v22 & v21);
    v19 = (v25 >> 15) & 1 | (2 * v25);
    LOWORD(v25) = v23[1] + (v19 & v22) + (v21 & ~v19) + v20;
    v20 = (v25 >> 14) & 0xFFFC0003 | (4 * v25);
    v26 = v23[2] + (v20 & v19) + (v22 & ~v20) + v21;
    v21 = (v26 >> 13) & 0xFFF80007 | (8 * v26);
    v22 = ((v23[3] + (v21 & v20) + (v19 & ~v21) + v22) >> 11) & 0xFFE0001F | (32 * (v23[3] + (v21 & v20) + (v19 & ~v21) + v22));
    v23 += 4;
    v11 = __CFADD__(v24++, 1);
  }

  while (!v11);
  *result = v19 | (v20 << 16);
  result[1] = ((v26 >> 13) | (8 * v26)) | (v22 << 16);
  return result;
}

int *RC2_decrypt(int *result, rc2_key_st *a2)
{
  v2 = &a2->data[31] + 1;
  v3 = *result;
  v4 = result[1];
  v5 = HIWORD(v4);
  v6 = HIWORD(*result);
  v7 = -5;
  do
  {
    v8 = ((v5 << 11) | (v5 >> 5)) - ((v4 & v6) + (v3 & ~v4)) - *v2;
    v5 = (((v5 << 11) | (v5 >> 5)) - ((v4 & v6) + (v3 & ~v4)) - *v2);
    v9 = ((v4 >> 3) | (v4 << 13)) - ((v6 & v3) + *(v2 - 1)) - (v8 & ~v6);
    v4 = (((v4 >> 3) | (v4 << 13)) - ((v6 & v3) + *(v2 - 1)) - (v8 & ~v6));
    v10 = ((v6 << 14) | (v6 >> 2)) - ((v8 & v3) + *(v2 - 2)) - (v9 & ~v3);
    v6 = (((v6 << 14) | (v6 >> 2)) - ((v8 & v3) + *(v2 - 2)) - (v9 & ~v3));
    v11 = v2 - 4;
    v3 = ((v3 >> 1) | (v3 << 15)) - ((v9 & v8) + *(v2 - 3)) - (v10 & ~v5);
    v2 -= 4;
    v12 = __CFADD__(v7++, 1);
  }

  while (!v12);
  v13 = (v8 - *(a2->data + (v9 & 0x3F)));
  v14 = v4 - *(a2->data + (v10 & 0x3F));
  v15 = v3 - *(a2->data + (v13 & 0x3F));
  v16 = (v10 - *(a2->data + (v3 & 0x3F)));
  v17 = -6;
  do
  {
    v18 = ((v13 << 11) | (v13 >> 5)) - ((v14 & v16) + (v15 & ~v14)) - *v11;
    v13 = (((v13 << 11) | (v13 >> 5)) - ((v14 & v16) + (v15 & ~v14)) - *v11);
    v19 = ((v14 >> 3) | (v14 << 13)) - ((v16 & v15) + *(v11 - 1)) - (v18 & ~v16);
    v14 = (((v14 >> 3) | (v14 << 13)) - ((v16 & v15) + *(v11 - 1)) - (v18 & ~v16));
    v20 = ((v16 << 14) | (v16 >> 2)) - ((v18 & v15) + *(v11 - 2)) - (v19 & ~v15);
    v16 = (((v16 << 14) | (v16 >> 2)) - ((v18 & v15) + *(v11 - 2)) - (v19 & ~v15));
    v21 = v11 - 4;
    v15 = ((v15 >> 1) | (v15 << 15)) - ((v19 & v18) + *(v11 - 3)) - (v20 & ~v13);
    v11 -= 4;
    v12 = __CFADD__(v17++, 1);
  }

  while (!v12);
  v22 = (v18 - *(a2->data + (v19 & 0x3F)));
  v23 = v14 - *(a2->data + (v20 & 0x3F));
  v24 = *(a2->data + (v15 & 0x3F));
  v25 = v15 - *(a2->data + (v22 & 0x3F));
  v26 = (v20 - v24);
  v27 = -5;
  do
  {
    v28 = ((v22 << 11) | (v22 >> 5)) - ((v23 & v26) + (v25 & ~v23)) - *v21;
    v22 = (((v22 << 11) | (v22 >> 5)) - ((v23 & v26) + (v25 & ~v23)) - *v21);
    v29 = ((v23 >> 3) | (v23 << 13)) - ((v26 & v25) + *(v21 - 1)) - (v28 & ~v26);
    v23 = (((v23 >> 3) | (v23 << 13)) - ((v26 & v25) + *(v21 - 1)) - (v28 & ~v26));
    v30 = *(v21 - 2);
    v31 = ((v26 << 14) | (v26 >> 2)) - ((v28 & v25) + v30) - (v29 & ~v25);
    v26 = (((v26 << 14) | (v26 >> 2)) - ((v28 & v25) + v30) - (v29 & ~v25));
    v25 = ((v25 >> 1) | (v25 << 15)) - ((v29 & v28) + *(v21 - 3)) - (v31 & ~v22);
    v21 -= 4;
    v12 = __CFADD__(v27++, 1);
  }

  while (!v12);
  *result = v25 | (v26 << 16);
  result[1] = v23 | (v22 << 16);
  return result;
}

uint64_t rc4_init_key(evp_cipher_ctx_st *a1, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *&a1->encrypt;
  v7 = *a1->oiv;
  *(v6 + 24) = xmmword_273B92360;
  *(v6 + 40) = xmmword_273BB1440;
  *(v6 + 56) = xmmword_273BB1450;
  *(v6 + 72) = xmmword_273BB1460;
  *(v6 + 88) = xmmword_273BB1470;
  *(v6 + 104) = xmmword_273BB1480;
  *(v6 + 120) = xmmword_273BB1490;
  *(v6 + 136) = xmmword_273BB14A0;
  *(v6 + 152) = xmmword_273BB14B0;
  *(v6 + 168) = xmmword_273BB14C0;
  *(v6 + 184) = xmmword_273BB14D0;
  *(v6 + 200) = xmmword_273BB14E0;
  *(v6 + 216) = xmmword_273BB14F0;
  *(v6 + 232) = xmmword_273BB1500;
  *(v6 + 264) = xmmword_273BB1520;
  *(v6 + 280) = xmmword_273BB1530;
  *(v6 + 296) = xmmword_273BB1540;
  *(v6 + 312) = xmmword_273BB1550;
  *(v6 + 328) = xmmword_273BB1560;
  *(v6 + 344) = xmmword_273BB1570;
  *(v6 + 360) = xmmword_273BB1580;
  *(v6 + 376) = xmmword_273BB1590;
  *(v6 + 392) = xmmword_273BB15A0;
  *(v6 + 408) = xmmword_273BB15B0;
  *(v6 + 424) = xmmword_273BB15C0;
  *(v6 + 440) = xmmword_273BB15D0;
  *(v6 + 456) = xmmword_273BB15E0;
  *(v6 + 472) = xmmword_273BB15F0;
  *(v6 + 488) = xmmword_273BB1600;
  *(v6 + 504) = xmmword_273BB1610;
  *(v6 + 520) = xmmword_273BB1620;
  *(v6 + 536) = xmmword_273BB1630;
  *(v6 + 552) = xmmword_273BB1640;
  *(v6 + 568) = xmmword_273BB1650;
  *(v6 + 584) = xmmword_273BB1660;
  *(v6 + 600) = xmmword_273BB1670;
  *(v6 + 616) = xmmword_273BB1680;
  *(v6 + 632) = xmmword_273BB1690;
  *(v6 + 648) = xmmword_273BB16A0;
  *(v6 + 664) = xmmword_273BB16B0;
  *(v6 + 680) = xmmword_273BB16C0;
  *(v6 + 696) = xmmword_273BB16D0;
  *(v6 + 712) = xmmword_273BB16E0;
  *(v6 + 728) = xmmword_273BB16F0;
  *(v6 + 744) = xmmword_273BB1700;
  *(v6 + 760) = xmmword_273BB1710;
  *(v6 + 776) = xmmword_273BB1720;
  *(v6 + 792) = xmmword_273BB1730;
  *(v6 + 808) = xmmword_273BB1740;
  *(v6 + 824) = xmmword_273BB1750;
  *(v6 + 840) = xmmword_273BB1760;
  *(v6 + 856) = xmmword_273BB1770;
  *(v6 + 872) = xmmword_273BB1780;
  *(v6 + 888) = xmmword_273BB1790;
  *(v6 + 904) = xmmword_273BB17A0;
  *(v6 + 920) = xmmword_273BB17B0;
  *(v6 + 936) = xmmword_273BB17C0;
  *(v6 + 952) = xmmword_273BB17D0;
  *(v6 + 968) = xmmword_273BB17E0;
  *(v6 + 984) = xmmword_273BB17F0;
  *(v6 + 1000) = xmmword_273BB1800;
  *(v6 + 1016) = xmmword_273BB1810;
  *(v6 + 248) = xmmword_273BB1510;
  *v6 = 0;
  *(v6 + 8) = xmmword_273B90830;
  v8 = v6 + 8;
  do
  {
    v9 = *(v8 + v3);
    v10 = a2[v5] + v9 + v4;
    v4 = v10;
    if (v5 + 1 == v7)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }

    *(v8 + v3) = *(v8 + 4 * v10);
    *(v8 + 4 * v10) = v9;
    v3 += 4;
  }

  while (v3 != 1024);
  return 1;
}

uint64_t rc4_cipher(evp_cipher_ctx_st *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v4 = *&a1->encrypt;
  v5 = *v4;
  v6 = v4[1];
  if (a4)
  {
    v7 = v4 + 2;
    do
    {
      v5 = (v5 + 1);
      v8 = v7[v5];
      v6 = (v8 + v6);
      v9 = v7[v6];
      v7[v5] = v9;
      v7[v6] = v8;
      v10 = *a3++;
      *a2++ = v10 ^ v7[(v9 + v8)];
      --a4;
    }

    while (a4);
  }

  *v4 = v5;
  v4[1] = v6;
  return 1;
}

uint64_t aead_aes_128_cbc_sha1_tls_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_128_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

void aead_tls_cleanup(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *(v2 + 40);
    if (v4)
    {
      v4(a1 + 8);
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    v8 = v7 + 8;
    if (v7 != -8)
    {
      bzero(v6, v8);
    }

    free(v6);
  }

  *(v3 + 144) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;

  HMAC_CTX_cleanup((a1 + 160));
}

uint64_t aead_tls_open(uint64_t a1, unsigned __int8 *a2, ENGINE *a3, unint64_t a4, const unsigned __int8 *a5, uint64_t a6, unsigned __int8 *in, unint64_t inl, uint64_t a9, uint64_t a10)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v10 = 112;
    v11 = 244;
LABEL_13:
    ERR_put_error(30, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_tls.cc", v11);
    return 0;
  }

  v12 = (a1 + 160);
  if (*(*(a1 + 160) + 4) > inl)
  {
    v10 = 101;
    v11 = 249;
    goto LABEL_13;
  }

  if (a4 < inl)
  {
    v10 = 103;
    v11 = 256;
    goto LABEL_13;
  }

  if (*(*a1 + 1) != a6)
  {
    v10 = 111;
    v11 = 261;
    goto LABEL_13;
  }

  if (a10 != 11)
  {
    v10 = 109;
    v11 = 266;
    goto LABEL_13;
  }

  if (inl >> 31)
  {
    v10 = 117;
    v11 = 272;
    goto LABEL_13;
  }

  v15 = a1;
  if ((*(*(a1 + 8) + 20) & 0x3F) == 2 && !*(a1 + 329))
  {
    v16 = a2;
    v17 = inl;
    v18 = in;
    v19 = EVP_CipherInit_ex((a1 + 8), 0, a3, 0, a5, 0);
    in = v18;
    LODWORD(inl) = v17;
    a2 = v16;
    v20 = v19;
    a1 = v15;
    if (!v20)
    {
      return 0;
    }
  }

  outl = 0;
  v21 = a2;
  result = EVP_DecryptUpdate((a1 + 8), a2, &outl, in, inl);
  if (result)
  {
    v22 = outl;
    result = EVP_DecryptFinal_ex((v15 + 8), &v21->u8[outl], &outl);
    if (result)
    {
      v23 = outl + v22;
      v62 = 0;
      v63 = 0;
      v24 = *(v15 + 8);
      v25 = *(v24 + 20) & 0x3F;
      if (v25 == 2)
      {
        v26 = v12->md;
        pkey_type = v12->md->pkey_type;
        if (!EVP_tls_cbc_remove_padding(&v62, &v63, v21, v23, *(v24 + 4), pkey_type))
        {
          v10 = 101;
          v11 = 308;
          goto LABEL_13;
        }

        v28 = v63;
        v29 = v15;
      }

      else
      {
        v29 = v15;
        v62 = -1;
        v26 = v12->md;
        pkey_type = v12->md->pkey_type;
        v28 = v23;
      }

      v30 = v28 - pkey_type;
      v68.i64[0] = *a9;
      *(&v68.i32[1] + 3) = *(a9 + 7);
      *(&v68.i16[5] + 1) = bswap32(v30) >> 16;
      __n = 0;
      if (v25 == 2 && (v26->type == 672 || v26->type == 64))
      {
        LODWORD(v60) = *(v29 + 328);
        if (!EVP_tls_cbc_digest_record(v26, &md, &__n, &v68, v21, v30, v23, (v29 + 264), v60))
        {
          v10 = 101;
          v11 = 342;
          goto LABEL_13;
        }

        v31 = __n;
        v32 = len;
        EVP_tls_cbc_copy_mac(len, __n, v21, v28, v23);
      }

      else
      {
        len[0] = 0;
        HMAC_Init_ex(v12, 0, 0, 0, 0);
        if (!v33)
        {
          return 0;
        }

        (*(*(v15 + 168) + 24))(v15 + 168, &v68, 13);
        (*(*(v15 + 168) + 24))(v15 + 168, v21, v30);
        HMAC_Final(v12, &md, len);
        if (!v34)
        {
          return 0;
        }

        v31 = len[0];
        __n = len[0];
        v32 = (v21->u32 + v30);
      }

      if (!v31)
      {
        v37 = 0;
        goto LABEL_51;
      }

      if (v31 < 8)
      {
        v35 = 0;
        v36 = 0;
LABEL_48:
        v54 = v31 - v35;
        v55 = &md.i8[v35];
        v56 = v32 + v35;
        do
        {
          v58 = *v56++;
          v57 = v58;
          v59 = *v55++;
          v36 |= v59 ^ v57;
          --v54;
        }

        while (v54);
LABEL_50:
        v37 = v36 != 0;
LABEL_51:
        if (!v37 && v62)
        {
          *a3 = v30;
          return 1;
        }

        v10 = 101;
        v11 = 376;
        goto LABEL_13;
      }

      if (v31 >= 0x20)
      {
        v35 = v31 & 0xFFFFFFFFFFFFFFE0;
        v38 = (v32 + 4);
        v39 = &v67;
        v40 = 0uLL;
        v41 = v31 & 0xFFFFFFFFFFFFFFE0;
        v42 = 0uLL;
        do
        {
          v40 = vorrq_s8(veorq_s8(v39[-1], v38[-1]), v40);
          v42 = vorrq_s8(veorq_s8(*v39, *v38), v42);
          v38 += 2;
          v39 += 2;
          v41 -= 32;
        }

        while (v41);
        v43 = vorrq_s8(v42, v40);
        *v43.i8 = vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
        v44 = v43.i64[0] | HIDWORD(v43.i64[0]) | ((v43.i64[0] | HIDWORD(v43.i64[0])) >> 16);
        v36 = v44 | BYTE1(v44);
        if (v31 == v35)
        {
          goto LABEL_50;
        }

        if ((v31 & 0x18) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }

      v45 = v35;
      v35 = v31 & 0xFFFFFFFFFFFFFFF8;
      v46 = v36;
      v47 = (v32 + v45);
      v48 = &md.i8[v45];
      v49 = v45 - (v31 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v50 = *v47++;
        v51 = v50;
        v52 = *v48++;
        v46 = vorr_s8(veor_s8(v52, v51), v46);
        v49 += 8;
      }

      while (v49);
      v53 = *&v46 | HIDWORD(*&v46) | ((*&v46 | HIDWORD(*&v46)) >> 16);
      v36 = v53 | BYTE1(v53);
      if (v31 == v35)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  return result;
}

void aead_tls_seal_scatter(HMAC_CTX *ctx, unsigned __int8 *a2, void *a3, size_t *a4, unint64_t a5, const unsigned __int8 *a6, uint64_t a7, const unsigned __int8 *a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!HIDWORD(ctx->md_ctx.md_data))
  {
    v13 = 112;
    v14 = 128;
    goto LABEL_22;
  }

  if (a9 >> 31)
  {
    v13 = 117;
    v14 = 134;
LABEL_22:
    ERR_put_error(30, 0, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_tls.cc", v14);
    return;
  }

  v15 = &ctx->key[52];
  v16 = *(*&ctx->key[52] + 4);
  digest = ctx->md_ctx.digest;
  if ((HIDWORD(digest->flags) & 0x3F) == 2)
  {
    v16 = (v16 + a9) / digest->pkey_type * digest->pkey_type - a9 + digest->pkey_type;
  }

  if (v16 > a5)
  {
    v13 = 103;
    v14 = 139;
    goto LABEL_22;
  }

  if (BYTE1(ctx->md->type) != a7)
  {
    v13 = 111;
    v14 = 144;
    goto LABEL_22;
  }

  if (a13 != 11)
  {
    v13 = 109;
    v14 = 149;
    goto LABEL_22;
  }

  v40 = bswap32(a9) >> 16;
  len = 0;
  HMAC_Init_ex(&ctx->key[52], 0, 0, 0, 0);
  if (v24)
  {
    (*(*&ctx->key[60] + 24))(&ctx->key[60], a12, 11);
    (*(*&ctx->key[60] + 24))(&ctx->key[60], &v40, 2);
    (*(*&ctx->key[60] + 24))(&ctx->key[60], a8, a9);
    HMAC_Final(v15, md, &len);
    if (v26)
    {
      v27 = ctx;
      if ((HIDWORD(ctx->md_ctx.digest->flags) & 0x3F) != 2 || BYTE1(ctx[1].o_ctx.flags) || (v28 = EVP_CipherInit_ex(&ctx->md_ctx, 0, v25, 0, a6, 1), v27 = ctx, v28))
      {
        outl = 0;
        if (EVP_EncryptUpdate(&v27->md_ctx, a2, &outl, a8, a9))
        {
          v29 = ctx;
          pkey_type = ctx->md_ctx.digest->pkey_type;
          v31 = pkey_type - a9 % pkey_type;
          v32 = v31 % pkey_type;
          if (v31 % pkey_type)
          {
            v37 = 0;
            if (!EVP_EncryptUpdate(&ctx->md_ctx, out, &v37, md, v31 % pkey_type))
            {
              return;
            }

            memcpy(&a2[outl], out, pkey_type - v32);
            memcpy(a3, &out[pkey_type - v32], v32);
            v33 = v32;
            v29 = ctx;
          }

          else
          {
            v33 = 0;
          }

          if (EVP_EncryptUpdate(&v29->md_ctx, a3 + v32, &outl, &md[v32], len - v33))
          {
            v34 = v32 + outl;
            if (pkey_type < 2)
            {
              goto LABEL_31;
            }

            v35 = (len + a9) % pkey_type;
            v36 = pkey_type - v35;
            if (pkey_type != v35)
            {
              memset(out, v36 - 1, (pkey_type - v35));
            }

            if (EVP_EncryptUpdate(&ctx->md_ctx, a3 + v34, &outl, out, v36))
            {
              v34 += outl;
LABEL_31:
              if (EVP_EncryptFinal_ex(&ctx->md_ctx, a3 + v34, &outl))
              {
                *a4 = v34;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t aead_tls_tag_len(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 160) + 4);
  v4 = *(a1 + 8);
  if ((*(v4 + 20) & 0x3F) == 2)
  {
    return (result + a2) / *(v4 + 4) * *(v4 + 4) - a2 + *(v4 + 4);
  }

  return result;
}

uint64_t aead_tls_init(unsigned __int8 **a1, char *__src, uint64_t a3, uint64_t a4, int a5, EVP_CIPHER *cipher, const EVP_MD *a7, int a8)
{
  if (a4 && a7->pkey_type != a4)
  {
    v20 = 122;
    v21 = 63;
    goto LABEL_13;
  }

  if (**a1 != a3)
  {
    v20 = 102;
    v21 = 68;
LABEL_13:
    ERR_put_error(30, 0, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_tls.cc", v21);
    return 0;
  }

  pkey_type = a7->pkey_type;
  key_len = cipher->key_len;
  *(a1 + 1) = 0u;
  v13 = a1 + 1;
  *(a1 + 29) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 3) = 0u;
  if (pkey_type)
  {
    v14 = cipher;
    v15 = a5;
    v16 = a8;
    memcpy(a1 + 33, __src, pkey_type);
    a8 = v16;
    a5 = v15;
    cipher = v14;
  }

  *(a1 + 328) = pkey_type;
  *(a1 + 329) = a8;
  v17 = &__src[pkey_type + key_len];
  if (!a8)
  {
    v17 = 0;
  }

  if (EVP_CipherInit_ex((a1 + 1), cipher, 0, &__src[pkey_type], v17, a5 == 1))
  {
    HMAC_Init_ex((a1 + 20), __src, pkey_type, a7, 0);
    if (v18)
    {
      *(a1 + 10) |= 0x800u;
      return 1;
    }
  }

  if (*v13)
  {
    v22 = *(*v13 + 5);
    if (v22)
    {
      v22(a1 + 1);
    }
  }

  v23 = a1[3];
  if (v23)
  {
    v25 = *(v23 - 1);
    v24 = v23 - 8;
    v26 = v25 + 8;
    if (v25 != -8)
    {
      bzero(v24, v26);
    }

    free(v24);
  }

  v13[18] = 0;
  *(v13 + 7) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *v13 = 0u;
  HMAC_CTX_cleanup((v13 + 19));
  return 0;
}

uint64_t aead_aes_128_cbc_sha1_tls_implicit_iv_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_128_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 1);
}

uint64_t aead_tls_get_iv(uint64_t a1, void *a2, void *a3)
{
  v7 = a1 + 8;
  v6 = *(a1 + 8);
  if ((*(v6 + 20) & 0x3F) != 6)
  {
LABEL_10:
    v10 = *(*v7 + 12);
    if (v10 > 1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v14 = 0;
  v8 = *(v6 + 48);
  if (!v8)
  {
    v12 = 104;
    v13 = 582;
LABEL_9:
    ERR_put_error(30, 0, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", v13);
    goto LABEL_10;
  }

  v9 = v8(a1 + 8, 25, 0, &v14);
  if (v9 == -1)
  {
    v12 = 105;
    v13 = 588;
    goto LABEL_9;
  }

  if (v9 != 1)
  {
    goto LABEL_10;
  }

  v10 = v14;
  if (v14 > 1)
  {
LABEL_6:
    *a2 = a1 + 60;
    *a3 = v10;
    return 1;
  }

LABEL_11:
  ERR_put_error(30, 0, 66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/cipher/e_tls.cc", 445);
  return 0;
}

uint64_t aead_aes_128_cbc_sha256_tls_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_128_cbc();
  v11 = EVP_sha256();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_aes_256_cbc_sha1_tls_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_256_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_aes_256_cbc_sha1_tls_implicit_iv_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_256_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 1);
}

uint64_t aead_des_ede3_cbc_sha1_tls_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, &evp_des_ede3_cbc, v10, 0);
}

uint64_t aead_des_ede3_cbc_sha1_tls_implicit_iv_init(unsigned __int8 **a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, &evp_des_ede3_cbc, v10, 1);
}

EC_KEY *EC_KEY_parse_private_key(unsigned __int8 **a1, uint64_t a2)
{
  v34 = 0;
  LODWORD(v31) = 0;
  if (!cbs_get_any_asn1_element(a1, &v36, &v31, &v34, 0, 0, 0) || v31 != 536870928 || v37 < v34 || (v33 = 0, v36 = &v34[v36], v37 -= v34, !CBS_get_asn1_uint64_with_tag(&v36, &v33, 2)) || v33 != 1 || (v31 = 0, LODWORD(v29) = 0, !cbs_get_any_asn1_element(&v36, &v34, &v29, &v31, 0, 0, 0)) || v29 != 4 || v35 < v31)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc";
    v4 = 15;
    v5 = 128;
    v6 = 54;
    goto LABEL_5;
  }

  v34 += v31;
  v35 -= v31;
  if (!v37)
  {
    goto LABEL_27;
  }

  v8 = *v36;
  LODWORD(v9) = v8 & 0x1F;
  if (v9 == 31)
  {
    v10 = 0;
    v11 = v36 + 1;
    v12 = v37 - 1;
    while (v12)
    {
      if (v10 >> 57)
      {
        break;
      }

      v13 = *v11;
      if (!v10 && v13 == 128)
      {
        break;
      }

      v9 = v13 & 0x7F | (v10 << 7);
      ++v11;
      --v12;
      v10 = v9;
      if ((v13 & 0x80) == 0)
      {
        if (v9 - 31 > 0x1FFFFFE0)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_27;
  }

LABEL_22:
  if ((v9 | (v8 << 24) & 0xE0000000) != 0xA0000000)
  {
LABEL_27:
    if (a2)
    {
      goto LABEL_28;
    }

    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc";
    v4 = 15;
    v5 = 114;
    v6 = 87;
LABEL_5:
    ERR_put_error(v4, 0, v5, v3, v6);
    return 0;
  }

  v29 = 0;
  v38 = 0;
  if (!cbs_get_any_asn1_element(&v36, &v31, &v38, &v29, 0, 0, 0) || v38 != -1610612736 || v32 < v29)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc";
    v4 = 15;
    v5 = 128;
    v6 = 66;
    goto LABEL_5;
  }

  v31 += v29;
  v32 -= v29;
  v27 = EC_KEY_parse_parameters(&v31);
  if (!v27)
  {
    return 0;
  }

  if (a2)
  {
    if (EC_GROUP_cmp(a2, v27, 0))
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc";
      v4 = 15;
      v5 = 130;
      v6 = 77;
      goto LABEL_5;
    }
  }

  else
  {
    a2 = v27;
  }

  if (v32)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc";
    v4 = 15;
    v5 = 128;
    v6 = 81;
    goto LABEL_5;
  }

LABEL_28:
  v14 = malloc_type_malloc(0x40uLL, 0xB4E622C9uLL);
  if (!v14)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
    v4 = 14;
    v5 = 65;
    v6 = 217;
    goto LABEL_5;
  }

  v15 = v14;
  *v14 = 56;
  *(v14 + 8) = 0u;
  v16 = (v14 + 8);
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 7) = 0;
  *(v14 + 36) = 0x100000004;
  if (*(a2 + 512) || (v23 = atomic_load((a2 + 540)), v23 == -1))
  {
    v17 = (v14 + 8);
    *v16 = a2;
  }

  else
  {
    for (i = v23; i != -1; v23 = i)
    {
      atomic_compare_exchange_strong((a2 + 540), &i, v23 + 1);
      if (i == v23)
      {
        break;
      }
    }

    v17 = (v14 + 8);
    *v16 = a2;
  }

  v18 = BN_bin2bn(v34, v35, 0);
  v19 = malloc_type_malloc(0xE8uLL, 0xB4E622C9uLL);
  if (!v19)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *(v15 + 2) = 0;
    if (!v18)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  *v19 = 224;
  if (!*(a2 + 512))
  {
    v25 = atomic_load((a2 + 540));
    if (v25 != -1)
    {
      for (j = v25; j != -1; v25 = j)
      {
        atomic_compare_exchange_strong((a2 + 540), &j, v25 + 1);
        if (j == v25)
        {
          break;
        }
      }
    }
  }

  v19[1] = a2;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 5) = 0u;
  *(v19 + 6) = 0u;
  *(v19 + 7) = 0u;
  *(v19 + 8) = 0u;
  *(v19 + 9) = 0u;
  *(v19 + 10) = 0u;
  *(v19 + 11) = 0u;
  *(v19 + 12) = 0u;
  *(v19 + 13) = 0u;
  v19[28] = 0;
  *(v15 + 2) = v19 + 1;
  if (!v18)
  {
    goto LABEL_69;
  }

  if (!EC_KEY_set_private_key(v17, v18))
  {
    goto LABEL_68;
  }

  if (!CBS_peek_asn1_tag(&v36, -1610612735))
  {
    if (ec_point_mul_scalar_base(a2, (*(v15 + 2) + 8), *(v15 + 3) + 24))
    {
      *(v15 + 8) |= 2u;
      goto LABEL_65;
    }

LABEL_68:
    BN_free(v18);
LABEL_69:
    EC_KEY_free(v17);
    return 0;
  }

  if (!CBS_get_asn1(&v36, &v31, -1610612735) || !CBS_get_asn1(&v31, &v29, 3) || !v30 || (v20 = v29, v21 = (v29 + 1), v22 = v30 - 1, ++v29, --v30, *v20) || !v22 || !EC_POINT_oct2point(a2, *(v15 + 2), v21, v22, 0) || v32)
  {
    v28 = 122;
LABEL_67:
    ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc", v28);
    goto LABEL_68;
  }

  *(v15 + 9) = *v29 & 0xFE;
LABEL_65:
  if (v37)
  {
    v28 = 142;
    goto LABEL_67;
  }

  if (!EC_KEY_check_key(v17))
  {
    goto LABEL_68;
  }

  BN_free(v18);
  return v17;
}

uint64_t *EC_KEY_parse_parameters(unsigned __int8 **a1)
{
  v221 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = **a1;
  LODWORD(v3) = v2 & 0x1F;
  if (v3 == 31)
  {
    v4 = 0;
    v5 = *a1 + 1;
    v6 = v1 - 1;
    while (v6)
    {
      if (v4 >> 57)
      {
        break;
      }

      v7 = *v5;
      if (!v4 && v7 == 128)
      {
        break;
      }

      v3 = v7 & 0x7F | (v4 << 7);
      ++v5;
      --v6;
      v4 = v3;
      if ((v7 & 0x80) == 0)
      {
        if (v3 - 31 > 0x1FFFFFE0)
        {
          goto LABEL_17;
        }

        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  if ((v3 | (v2 << 24) & 0xE0000000) != 0x20000010)
  {
LABEL_17:

    return EC_KEY_parse_curve_name(a1);
  }

  v201 = 0;
  v200 = 0;
  v190 = 0;
  LODWORD(v211) = 0;
  if (!cbs_get_any_asn1_element(a1, &v212, &v211, &v190, 0, 0, 0) || v211 != 536870928 || *&v213 < v190 || (*&v212 += v190, *&v213 -= v190, !CBS_get_asn1_uint64_with_tag(&v212, &v200, 2)) || v200 != 1 || (v190 = 0, LODWORD(v211) = 0, !cbs_get_any_asn1_element(&v212, &v208, &v211, &v190, 0, 0, 0)) || v211 != 536870928 || v209 < v190 || (v208 += v190, v209 -= v190, v190 = 0, LODWORD(v211) = 0, !cbs_get_any_asn1_element(&v208, &v206, &v211, &v190, 0, 0, 0)) || v211 != 6 || (v11 = v207 - v190, v207 < v190) || (v12 = (v206 + v190), v206 += v190, v207 -= v190, v11 != 7) || ((v13 = *v12, v14 = *(v12 + 3), v13 == -834107862) ? (v15 = v14 == 16858574) : (v15 = 0), !v15 || (v211 = 0, v210 = 0, !cbs_get_any_asn1_element(&v208, &v190, &v210, &v211, 0, 0, 0)) || v210 != 2 || v191 < v211 || (v190 += v211, v191 -= v211, !CBS_is_unsigned_asn1_integer(&v190)) || v209 || !CBS_get_asn1(&v212, v205, 536870928) || !CBS_get_asn1(v205, &v192, 4) || !CBS_get_asn1(v205, &v194, 4) || !CBS_get_optional_asn1(v205, 0, 0, 3) || v205[1] || !CBS_get_asn1(&v212, &v203, 4) || !CBS_get_asn1(&v212, &v198, 2) || !CBS_is_unsigned_asn1_integer(&v198) || !CBS_get_optional_asn1(&v212, v202, &v201, 2) || *&v213))
  {
    v8 = 128;
    v9 = 245;
LABEL_16:
    ERR_put_error(15, 0, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc", v9);
    return 0;
  }

  if (v201 && (v202[1] != 1 || *v202[0] != 1))
  {
    v8 = 123;
    v9 = 253;
    goto LABEL_16;
  }

  if (!v204 || (v16 = v203, v17 = v203 + 1, v18 = v204 - 1, ++v203, --v204, *v16 != 4))
  {
    v8 = 111;
    v9 = 261;
    goto LABEL_16;
  }

  if (v18)
  {
    v8 = 128;
    v9 = 266;
    goto LABEL_16;
  }

  v196[0] = v17;
  v196[1] = v18 >> 1;
  v197[0] = &v17[v18 >> 1];
  v197[1] = v18 >> 1;
  v19 = BN_new();
  v20 = BN_new();
  v21 = BN_new();
  v22 = BN_new();
  v23 = BN_new();
  v24 = v23;
  v25 = 0;
  if (!v19 || !v20 || !v21 || !v22)
  {
    goto LABEL_250;
  }

  if (v23)
  {
    v25 = EC_group_p224();
    v27 = v198;
    v26 = v199;
    if (v199)
    {
      if (v198->i8[0])
      {
LABEL_64:
        if (v26 > 0x42)
        {
          goto LABEL_93;
        }
      }

      else
      {
        while (--v26)
        {
          v28 = v27->u8[1];
          v27 = (v27 + 1);
          if (v28)
          {
            goto LABEL_64;
          }
        }

        v27 = (v198 + v199);
      }
    }

    if (!BN_bn2bin_padded(&v212, v26, (v25 + 32)))
    {
      ERR_clear_error();
      goto LABEL_93;
    }

    if (!v26)
    {
      goto LABEL_179;
    }

    if (v26 < 4)
    {
      v31 = 0;
      LOBYTE(v32) = 0;
      goto LABEL_90;
    }

    if (v26 >= 0x10)
    {
      v31 = v26 & 0x70;
      v30.i32[1] = v212.i32[1];
      v33 = veor_s8(v212, *v27);
      v29 = veor_s8(v213, v27[1]);
      if (v31 != 16)
      {
        v30 = veor_s8(v214, v27[2]);
        v33 = vorr_s8(v30, v33);
        v29 = vorr_s8(veor_s8(v215, v27[3]), v29);
        if (v31 != 32)
        {
          v30 = veor_s8(v216, v27[4]);
          v33 = vorr_s8(v30, v33);
          v29 = vorr_s8(veor_s8(v217, v27[5]), v29);
          if (v31 != 48)
          {
            v30 = veor_s8(v218, v27[6]);
            v33 = vorr_s8(v30, v33);
            v29 = vorr_s8(veor_s8(v219, v27[7]), v29);
            if (v31 != 64)
            {
              v30 = veor_s8(v220, v27[8]);
              v33 = vorr_s8(v30, v33);
              v29 = vorr_s8(veor_s8(v221, v27[9]), v29);
              if (v31 != 80)
              {
                v30 = veor_s8(v222, v27[10]);
                v33 = vorr_s8(v30, v33);
                v29 = vorr_s8(veor_s8(v223, v27[11]), v29);
                if (v31 != 96)
                {
                  v30 = veor_s8(v224, v27[12]);
                  v33 = vorr_s8(v30, v33);
                  v29 = vorr_s8(veor_s8(v225, v27[13]), v29);
                }
              }
            }
          }
        }
      }

      v34 = vorr_s8(v29, v33);
      v35 = *&v34 | HIDWORD(*&v34) | ((*&v34 | HIDWORD(*&v34)) >> 16);
      v32 = v35 | (v35 >> 8);
      if (v26 == v31)
      {
        goto LABEL_92;
      }

      if ((v26 & 0xC) == 0)
      {
LABEL_90:
        v43 = v26 - v31;
        v44 = &v212 + v31;
        v45 = v27 + v31;
        do
        {
          v47 = *v45++;
          v46 = v47;
          v48 = *v44++;
          LOBYTE(v32) = v48 ^ v46 | v32;
          --v43;
        }

        while (v43);
        goto LABEL_92;
      }
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v36 = v31;
    v31 = v26 & 0x7C;
    v37 = v32;
    v38 = (v27 + v36);
    v39 = (&v212 + v36);
    v40 = v36 - v31;
    do
    {
      v41 = v38->i32[0];
      v38 = (v38 + 4);
      v29.i32[0] = v41;
      v42 = v39->i32[0];
      v39 = (v39 + 4);
      v30.i32[0] = v42;
      v30 = vmovl_u8(v30).u64[0];
      v29 = veor_s8(v30, *&vmovl_u8(v29));
      v37 = vorr_s8(v29, v37);
      v40 += 4;
    }

    while (v40);
    v32 = v37.i16[0] | v37.i16[2] | ((v37.i32[0] | v37.i32[1]) >> 16);
    if (v26 != v31)
    {
      goto LABEL_90;
    }

LABEL_92:
    if (!v32)
    {
      goto LABEL_179;
    }

LABEL_93:
    v25 = EC_group_p256();
    v50 = v198;
    v49 = v199;
    if (v199)
    {
      if (v198->i8[0])
      {
LABEL_97:
        if (v49 > 0x42)
        {
          goto LABEL_122;
        }
      }

      else
      {
        while (--v49)
        {
          v51 = v50->u8[1];
          v50 = (v50 + 1);
          if (v51)
          {
            goto LABEL_97;
          }
        }

        v50 = (v198 + v199);
      }
    }

    if (!BN_bn2bin_padded(&v212, v49, (v25 + 32)))
    {
      ERR_clear_error();
      goto LABEL_122;
    }

    if (!v49)
    {
      goto LABEL_179;
    }

    if (v49 < 4)
    {
      v54 = 0;
      LOBYTE(v55) = 0;
      goto LABEL_119;
    }

    if (v49 >= 0x10)
    {
      v54 = v49 & 0x70;
      v53.i32[1] = v212.i32[1];
      v56 = veor_s8(v212, *v50);
      v52 = veor_s8(v213, v50[1]);
      if (v54 != 16)
      {
        v53 = veor_s8(v214, v50[2]);
        v56 = vorr_s8(v53, v56);
        v52 = vorr_s8(veor_s8(v215, v50[3]), v52);
        if (v54 != 32)
        {
          v53 = veor_s8(v216, v50[4]);
          v56 = vorr_s8(v53, v56);
          v52 = vorr_s8(veor_s8(v217, v50[5]), v52);
          if (v54 != 48)
          {
            v53 = veor_s8(v218, v50[6]);
            v56 = vorr_s8(v53, v56);
            v52 = vorr_s8(veor_s8(v219, v50[7]), v52);
            if (v54 != 64)
            {
              v53 = veor_s8(v220, v50[8]);
              v56 = vorr_s8(v53, v56);
              v52 = vorr_s8(veor_s8(v221, v50[9]), v52);
              if (v54 != 80)
              {
                v53 = veor_s8(v222, v50[10]);
                v56 = vorr_s8(v53, v56);
                v52 = vorr_s8(veor_s8(v223, v50[11]), v52);
                if (v54 != 96)
                {
                  v53 = veor_s8(v224, v50[12]);
                  v56 = vorr_s8(v53, v56);
                  v52 = vorr_s8(veor_s8(v225, v50[13]), v52);
                }
              }
            }
          }
        }
      }

      v57 = vorr_s8(v52, v56);
      v58 = *&v57 | HIDWORD(*&v57) | ((*&v57 | HIDWORD(*&v57)) >> 16);
      v55 = v58 | (v58 >> 8);
      if (v49 == v54)
      {
        goto LABEL_121;
      }

      if ((v49 & 0xC) == 0)
      {
LABEL_119:
        v66 = v49 - v54;
        v67 = &v212 + v54;
        v68 = v50 + v54;
        do
        {
          v70 = *v68++;
          v69 = v70;
          v71 = *v67++;
          LOBYTE(v55) = v71 ^ v69 | v55;
          --v66;
        }

        while (v66);
        goto LABEL_121;
      }
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    v59 = v54;
    v54 = v49 & 0x7C;
    v60 = v55;
    v61 = (v50 + v59);
    v62 = (&v212 + v59);
    v63 = v59 - v54;
    do
    {
      v64 = v61->i32[0];
      v61 = (v61 + 4);
      v52.i32[0] = v64;
      v65 = v62->i32[0];
      v62 = (v62 + 4);
      v53.i32[0] = v65;
      v53 = vmovl_u8(v53).u64[0];
      v52 = veor_s8(v53, *&vmovl_u8(v52));
      v60 = vorr_s8(v52, v60);
      v63 += 4;
    }

    while (v63);
    v55 = v60.i16[0] | v60.i16[2] | ((v60.i32[0] | v60.i32[1]) >> 16);
    if (v49 != v54)
    {
      goto LABEL_119;
    }

LABEL_121:
    if (!v55)
    {
      goto LABEL_179;
    }

LABEL_122:
    v25 = EC_group_p384();
    v73 = v198;
    v72 = v199;
    if (v199)
    {
      if (v198->i8[0])
      {
LABEL_126:
        if (v72 > 0x42)
        {
          goto LABEL_151;
        }
      }

      else
      {
        while (--v72)
        {
          v74 = v73->u8[1];
          v73 = (v73 + 1);
          if (v74)
          {
            goto LABEL_126;
          }
        }

        v73 = (v198 + v199);
      }
    }

    if (!BN_bn2bin_padded(&v212, v72, (v25 + 32)))
    {
      ERR_clear_error();
      goto LABEL_151;
    }

    if (!v72)
    {
      goto LABEL_179;
    }

    if (v72 < 4)
    {
      v77 = 0;
      LOBYTE(v78) = 0;
      goto LABEL_148;
    }

    if (v72 >= 0x10)
    {
      v77 = v72 & 0x70;
      v76.i32[1] = v212.i32[1];
      v79 = veor_s8(v212, *v73);
      v75 = veor_s8(v213, v73[1]);
      if (v77 != 16)
      {
        v76 = veor_s8(v214, v73[2]);
        v79 = vorr_s8(v76, v79);
        v75 = vorr_s8(veor_s8(v215, v73[3]), v75);
        if (v77 != 32)
        {
          v76 = veor_s8(v216, v73[4]);
          v79 = vorr_s8(v76, v79);
          v75 = vorr_s8(veor_s8(v217, v73[5]), v75);
          if (v77 != 48)
          {
            v76 = veor_s8(v218, v73[6]);
            v79 = vorr_s8(v76, v79);
            v75 = vorr_s8(veor_s8(v219, v73[7]), v75);
            if (v77 != 64)
            {
              v76 = veor_s8(v220, v73[8]);
              v79 = vorr_s8(v76, v79);
              v75 = vorr_s8(veor_s8(v221, v73[9]), v75);
              if (v77 != 80)
              {
                v76 = veor_s8(v222, v73[10]);
                v79 = vorr_s8(v76, v79);
                v75 = vorr_s8(veor_s8(v223, v73[11]), v75);
                if (v77 != 96)
                {
                  v76 = veor_s8(v224, v73[12]);
                  v79 = vorr_s8(v76, v79);
                  v75 = vorr_s8(veor_s8(v225, v73[13]), v75);
                }
              }
            }
          }
        }
      }

      v80 = vorr_s8(v75, v79);
      v81 = *&v80 | HIDWORD(*&v80) | ((*&v80 | HIDWORD(*&v80)) >> 16);
      v78 = v81 | (v81 >> 8);
      if (v72 == v77)
      {
        goto LABEL_150;
      }

      if ((v72 & 0xC) == 0)
      {
LABEL_148:
        v89 = v72 - v77;
        v90 = &v212 + v77;
        v91 = v73 + v77;
        do
        {
          v93 = *v91++;
          v92 = v93;
          v94 = *v90++;
          LOBYTE(v78) = v94 ^ v92 | v78;
          --v89;
        }

        while (v89);
        goto LABEL_150;
      }
    }

    else
    {
      v78 = 0;
      v77 = 0;
    }

    v82 = v77;
    v77 = v72 & 0x7C;
    v83 = v78;
    v84 = (v73 + v82);
    v85 = (&v212 + v82);
    v86 = v82 - v77;
    do
    {
      v87 = v84->i32[0];
      v84 = (v84 + 4);
      v75.i32[0] = v87;
      v88 = v85->i32[0];
      v85 = (v85 + 4);
      v76.i32[0] = v88;
      v76 = vmovl_u8(v76).u64[0];
      v75 = veor_s8(v76, *&vmovl_u8(v75));
      v83 = vorr_s8(v75, v83);
      v86 += 4;
    }

    while (v86);
    v78 = v83.i16[0] | v83.i16[2] | ((v83.i32[0] | v83.i32[1]) >> 16);
    if (v72 != v77)
    {
      goto LABEL_148;
    }

LABEL_150:
    if (!v78)
    {
      goto LABEL_179;
    }

LABEL_151:
    v25 = EC_group_p521();
    v96 = v198;
    v95 = v199;
    if (v199)
    {
      if (v198->i8[0])
      {
LABEL_155:
        if (v95 > 0x42)
        {
          goto LABEL_248;
        }
      }

      else
      {
        while (--v95)
        {
          v97 = v96->u8[1];
          v96 = (v96 + 1);
          if (v97)
          {
            goto LABEL_155;
          }
        }

        v96 = (v198 + v199);
      }
    }

    if (!BN_bn2bin_padded(&v212, v95, (v25 + 32)))
    {
      goto LABEL_247;
    }

    if (!v95)
    {
LABEL_179:
      if (!ec_GFp_simple_group_get_curve(v25, v19, v20, v21))
      {
LABEL_249:
        v25 = 0;
        goto LABEL_250;
      }

      v119 = v190;
      v118 = v191;
      if (v191)
      {
        if (*v190)
        {
LABEL_184:
          if (v118 > 0x42)
          {
            goto LABEL_248;
          }
        }

        else
        {
          while (--v118)
          {
            v120 = v119->u8[1];
            v119 = (v119 + 1);
            if (v120)
            {
              goto LABEL_184;
            }
          }

          v119 = (v190 + v191);
        }
      }

      if (!BN_bn2bin_padded(&v212, v118, v19))
      {
        goto LABEL_247;
      }

      if (!v118)
      {
LABEL_208:
        v142 = v192;
        v141 = v193;
        if (v193)
        {
          if (v192->i8[0])
          {
LABEL_212:
            if (v141 > 0x42)
            {
              goto LABEL_248;
            }
          }

          else
          {
            while (--v141)
            {
              v143 = v142->u8[1];
              v142 = (v142 + 1);
              if (v143)
              {
                goto LABEL_212;
              }
            }

            v142 = (v192 + v193);
          }
        }

        if (!BN_bn2bin_padded(&v212, v141, v20))
        {
          goto LABEL_247;
        }

        if (!v141)
        {
LABEL_236:
          v165 = v194;
          v164 = v195;
          if (v195)
          {
            if (v194->i8[0])
            {
LABEL_240:
              if (v164 > 0x42)
              {
                goto LABEL_248;
              }
            }

            else
            {
              while (--v164)
              {
                v166 = v165->u8[1];
                v165 = (v165 + 1);
                if (v166)
                {
                  goto LABEL_240;
                }
              }

              v165 = (v194 + v195);
            }
          }

          if (BN_bn2bin_padded(&v212, v164, v21))
          {
            if (!v164)
            {
              goto LABEL_278;
            }

            if (v164 < 4)
            {
              v169 = 0;
              LOBYTE(v170) = 0;
              goto LABEL_275;
            }

            if (v164 >= 0x10)
            {
              v169 = v164 & 0x70;
              v168.i32[1] = v212.i32[1];
              v171 = veor_s8(v212, *v165);
              v167 = veor_s8(v213, v165[1]);
              if (v169 != 16)
              {
                v168 = veor_s8(v214, v165[2]);
                v171 = vorr_s8(v168, v171);
                v167 = vorr_s8(veor_s8(v215, v165[3]), v167);
                if (v169 != 32)
                {
                  v168 = veor_s8(v216, v165[4]);
                  v171 = vorr_s8(v168, v171);
                  v167 = vorr_s8(veor_s8(v217, v165[5]), v167);
                  if (v169 != 48)
                  {
                    v168 = veor_s8(v218, v165[6]);
                    v171 = vorr_s8(v168, v171);
                    v167 = vorr_s8(veor_s8(v219, v165[7]), v167);
                    if (v169 != 64)
                    {
                      v168 = veor_s8(v220, v165[8]);
                      v171 = vorr_s8(v168, v171);
                      v167 = vorr_s8(veor_s8(v221, v165[9]), v167);
                      if (v169 != 80)
                      {
                        v168 = veor_s8(v222, v165[10]);
                        v171 = vorr_s8(v168, v171);
                        v167 = vorr_s8(veor_s8(v223, v165[11]), v167);
                        if (v169 != 96)
                        {
                          v168 = veor_s8(v224, v165[12]);
                          v171 = vorr_s8(v168, v171);
                          v167 = vorr_s8(veor_s8(v225, v165[13]), v167);
                        }
                      }
                    }
                  }
                }
              }

              v172 = vorr_s8(v167, v171);
              v173 = *&v172 | HIDWORD(*&v172) | ((*&v172 | HIDWORD(*&v172)) >> 16);
              v170 = v173 | (v173 >> 8);
              if (v164 == v169)
              {
                goto LABEL_277;
              }

              if ((v164 & 0xC) == 0)
              {
LABEL_275:
                v181 = v164 - v169;
                v182 = &v212 + v169;
                v183 = v165 + v169;
                do
                {
                  v185 = *v183++;
                  v184 = v185;
                  v186 = *v182++;
                  LOBYTE(v170) = v186 ^ v184 | v170;
                  --v181;
                }

                while (v181);
                goto LABEL_277;
              }
            }

            else
            {
              v170 = 0;
              v169 = 0;
            }

            v174 = v169;
            v169 = v164 & 0x7C;
            v175 = v170;
            v176 = (v165 + v174);
            v177 = (&v212 + v174);
            v178 = v174 - v169;
            do
            {
              v179 = v176->i32[0];
              v176 = (v176 + 4);
              v167.i32[0] = v179;
              v180 = v177->i32[0];
              v177 = (v177 + 4);
              v168.i32[0] = v180;
              v168 = vmovl_u8(v168).u64[0];
              v167 = veor_s8(v168, *&vmovl_u8(v167));
              v175 = vorr_s8(v167, v175);
              v178 += 4;
            }

            while (v178);
            v170 = v175.i16[0] | v175.i16[2] | ((v175.i32[0] | v175.i32[1]) >> 16);
            if (v164 != v169)
            {
              goto LABEL_275;
            }

LABEL_277:
            if (!v170)
            {
LABEL_278:
              if (*(v25 + 133))
              {
                v187 = (v25 + 1);
              }

              else
              {
                v187 = 0;
              }

              if (!EC_POINT_get_affine_coordinates_GFp(v25, v187, v22, v24, 0))
              {
                goto LABEL_249;
              }

              if (!integers_equal(v196, v22, v188) || !integers_equal(v197, v24, v189))
              {
                goto LABEL_248;
              }

LABEL_250:
              if (v24)
              {
                BN_free(v24);
              }

              if (!v22)
              {
                goto LABEL_254;
              }

              goto LABEL_253;
            }

LABEL_248:
            ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc", 378);
            goto LABEL_249;
          }

LABEL_247:
          ERR_clear_error();
          goto LABEL_248;
        }

        if (v141 < 4)
        {
          v146 = 0;
          LOBYTE(v147) = 0;
          goto LABEL_233;
        }

        if (v141 >= 0x10)
        {
          v146 = v141 & 0x70;
          v145.i32[1] = v212.i32[1];
          v148 = veor_s8(v212, *v142);
          v144 = veor_s8(v213, v142[1]);
          if (v146 != 16)
          {
            v145 = veor_s8(v214, v142[2]);
            v148 = vorr_s8(v145, v148);
            v144 = vorr_s8(veor_s8(v215, v142[3]), v144);
            if (v146 != 32)
            {
              v145 = veor_s8(v216, v142[4]);
              v148 = vorr_s8(v145, v148);
              v144 = vorr_s8(veor_s8(v217, v142[5]), v144);
              if (v146 != 48)
              {
                v145 = veor_s8(v218, v142[6]);
                v148 = vorr_s8(v145, v148);
                v144 = vorr_s8(veor_s8(v219, v142[7]), v144);
                if (v146 != 64)
                {
                  v145 = veor_s8(v220, v142[8]);
                  v148 = vorr_s8(v145, v148);
                  v144 = vorr_s8(veor_s8(v221, v142[9]), v144);
                  if (v146 != 80)
                  {
                    v145 = veor_s8(v222, v142[10]);
                    v148 = vorr_s8(v145, v148);
                    v144 = vorr_s8(veor_s8(v223, v142[11]), v144);
                    if (v146 != 96)
                    {
                      v145 = veor_s8(v224, v142[12]);
                      v148 = vorr_s8(v145, v148);
                      v144 = vorr_s8(veor_s8(v225, v142[13]), v144);
                    }
                  }
                }
              }
            }
          }

          v149 = vorr_s8(v144, v148);
          v150 = *&v149 | HIDWORD(*&v149) | ((*&v149 | HIDWORD(*&v149)) >> 16);
          v147 = v150 | (v150 >> 8);
          if (v141 == v146)
          {
            goto LABEL_235;
          }

          if ((v141 & 0xC) == 0)
          {
LABEL_233:
            v158 = v141 - v146;
            v159 = &v212 + v146;
            v160 = v142 + v146;
            do
            {
              v162 = *v160++;
              v161 = v162;
              v163 = *v159++;
              LOBYTE(v147) = v163 ^ v161 | v147;
              --v158;
            }

            while (v158);
            goto LABEL_235;
          }
        }

        else
        {
          v147 = 0;
          v146 = 0;
        }

        v151 = v146;
        v146 = v141 & 0x7C;
        v152 = v147;
        v153 = (v142 + v151);
        v154 = (&v212 + v151);
        v155 = v151 - v146;
        do
        {
          v156 = v153->i32[0];
          v153 = (v153 + 4);
          v144.i32[0] = v156;
          v157 = v154->i32[0];
          v154 = (v154 + 4);
          v145.i32[0] = v157;
          v145 = vmovl_u8(v145).u64[0];
          v144 = veor_s8(v145, *&vmovl_u8(v144));
          v152 = vorr_s8(v144, v152);
          v155 += 4;
        }

        while (v155);
        v147 = v152.i16[0] | v152.i16[2] | ((v152.i32[0] | v152.i32[1]) >> 16);
        if (v141 != v146)
        {
          goto LABEL_233;
        }

LABEL_235:
        if (v147)
        {
          goto LABEL_248;
        }

        goto LABEL_236;
      }

      if (v118 < 4)
      {
        v123 = 0;
        LOBYTE(v124) = 0;
        goto LABEL_205;
      }

      if (v118 >= 0x10)
      {
        v123 = v118 & 0x70;
        v122.i32[1] = v212.i32[1];
        v125 = veor_s8(v212, *v119);
        v121 = veor_s8(v213, v119[1]);
        if (v123 != 16)
        {
          v122 = veor_s8(v214, v119[2]);
          v125 = vorr_s8(v122, v125);
          v121 = vorr_s8(veor_s8(v215, v119[3]), v121);
          if (v123 != 32)
          {
            v122 = veor_s8(v216, v119[4]);
            v125 = vorr_s8(v122, v125);
            v121 = vorr_s8(veor_s8(v217, v119[5]), v121);
            if (v123 != 48)
            {
              v122 = veor_s8(v218, v119[6]);
              v125 = vorr_s8(v122, v125);
              v121 = vorr_s8(veor_s8(v219, v119[7]), v121);
              if (v123 != 64)
              {
                v122 = veor_s8(v220, v119[8]);
                v125 = vorr_s8(v122, v125);
                v121 = vorr_s8(veor_s8(v221, v119[9]), v121);
                if (v123 != 80)
                {
                  v122 = veor_s8(v222, v119[10]);
                  v125 = vorr_s8(v122, v125);
                  v121 = vorr_s8(veor_s8(v223, v119[11]), v121);
                  if (v123 != 96)
                  {
                    v122 = veor_s8(v224, v119[12]);
                    v125 = vorr_s8(v122, v125);
                    v121 = vorr_s8(veor_s8(v225, v119[13]), v121);
                  }
                }
              }
            }
          }
        }

        v126 = vorr_s8(v121, v125);
        v127 = *&v126 | HIDWORD(*&v126) | ((*&v126 | HIDWORD(*&v126)) >> 16);
        v124 = v127 | (v127 >> 8);
        if (v118 == v123)
        {
          goto LABEL_207;
        }

        if ((v118 & 0xC) == 0)
        {
LABEL_205:
          v135 = v118 - v123;
          v136 = &v212 + v123;
          v137 = v119 + v123;
          do
          {
            v139 = *v137++;
            v138 = v139;
            v140 = *v136++;
            LOBYTE(v124) = v140 ^ v138 | v124;
            --v135;
          }

          while (v135);
          goto LABEL_207;
        }
      }

      else
      {
        v124 = 0;
        v123 = 0;
      }

      v128 = v123;
      v123 = v118 & 0x7C;
      v129 = v124;
      v130 = (v119 + v128);
      v131 = (&v212 + v128);
      v132 = v128 - v123;
      do
      {
        v133 = v130->i32[0];
        v130 = (v130 + 4);
        v121.i32[0] = v133;
        v134 = v131->i32[0];
        v131 = (v131 + 4);
        v122.i32[0] = v134;
        v122 = vmovl_u8(v122).u64[0];
        v121 = veor_s8(v122, *&vmovl_u8(v121));
        v129 = vorr_s8(v121, v129);
        v132 += 4;
      }

      while (v132);
      v124 = v129.i16[0] | v129.i16[2] | ((v129.i32[0] | v129.i32[1]) >> 16);
      if (v118 != v123)
      {
        goto LABEL_205;
      }

LABEL_207:
      if (v124)
      {
        goto LABEL_248;
      }

      goto LABEL_208;
    }

    if (v95 < 4)
    {
      v100 = 0;
      LOBYTE(v101) = 0;
      goto LABEL_176;
    }

    if (v95 >= 0x10)
    {
      v100 = v95 & 0x70;
      v99.i32[1] = v212.i32[1];
      v102 = veor_s8(v212, *v96);
      v98 = veor_s8(v213, v96[1]);
      if (v100 != 16)
      {
        v99 = veor_s8(v214, v96[2]);
        v102 = vorr_s8(v99, v102);
        v98 = vorr_s8(veor_s8(v215, v96[3]), v98);
        if (v100 != 32)
        {
          v99 = veor_s8(v216, v96[4]);
          v102 = vorr_s8(v99, v102);
          v98 = vorr_s8(veor_s8(v217, v96[5]), v98);
          if (v100 != 48)
          {
            v99 = veor_s8(v218, v96[6]);
            v102 = vorr_s8(v99, v102);
            v98 = vorr_s8(veor_s8(v219, v96[7]), v98);
            if (v100 != 64)
            {
              v99 = veor_s8(v220, v96[8]);
              v102 = vorr_s8(v99, v102);
              v98 = vorr_s8(veor_s8(v221, v96[9]), v98);
              if (v100 != 80)
              {
                v99 = veor_s8(v222, v96[10]);
                v102 = vorr_s8(v99, v102);
                v98 = vorr_s8(veor_s8(v223, v96[11]), v98);
                if (v100 != 96)
                {
                  v99 = veor_s8(v224, v96[12]);
                  v102 = vorr_s8(v99, v102);
                  v98 = vorr_s8(veor_s8(v225, v96[13]), v98);
                }
              }
            }
          }
        }
      }

      v103 = vorr_s8(v98, v102);
      v104 = *&v103 | HIDWORD(*&v103) | ((*&v103 | HIDWORD(*&v103)) >> 16);
      v101 = v104 | (v104 >> 8);
      if (v95 == v100)
      {
        goto LABEL_178;
      }

      if ((v95 & 0xC) == 0)
      {
LABEL_176:
        v112 = v95 - v100;
        v113 = &v212 + v100;
        v114 = v96 + v100;
        do
        {
          v116 = *v114++;
          v115 = v116;
          v117 = *v113++;
          LOBYTE(v101) = v117 ^ v115 | v101;
          --v112;
        }

        while (v112);
        goto LABEL_178;
      }
    }

    else
    {
      v101 = 0;
      v100 = 0;
    }

    v105 = v100;
    v100 = v95 & 0x7C;
    v106 = v101;
    v107 = (v96 + v105);
    v108 = (&v212 + v105);
    v109 = v105 - v100;
    do
    {
      v110 = v107->i32[0];
      v107 = (v107 + 4);
      v98.i32[0] = v110;
      v111 = v108->i32[0];
      v108 = (v108 + 4);
      v99.i32[0] = v111;
      v99 = vmovl_u8(v99).u64[0];
      v98 = veor_s8(v99, *&vmovl_u8(v98));
      v106 = vorr_s8(v98, v106);
      v109 += 4;
    }

    while (v109);
    v101 = v106.i16[0] | v106.i16[2] | ((v106.i32[0] | v106.i32[1]) >> 16);
    if (v95 != v100)
    {
      goto LABEL_176;
    }

LABEL_178:
    if (v101)
    {
      goto LABEL_248;
    }

    goto LABEL_179;
  }

  v25 = 0;
LABEL_253:
  BN_free(v22);
LABEL_254:
  if (v21)
  {
    BN_free(v21);
  }

  if (v20)
  {
    BN_free(v20);
  }

  if (v19)
  {
    BN_free(v19);
  }

  return v25;
}

uint64_t EC_KEY_marshal_private_key(uint64_t a1, uint64_t *a2, char a3)
{
  if (!a2 || !*a2 || !a2[2])
  {
    v10 = 67;
    v11 = 157;
LABEL_50:
    ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc", v11);
    return 0;
  }

  if (!CBB_add_asn1(a1, v68, 536870928) || !CBB_add_asn1_uint64_with_tag(v68, 1uLL, 2) || !CBB_add_asn1(v68, v67, 4))
  {
LABEL_49:
    v10 = 129;
    v11 = 168;
    goto LABEL_50;
  }

  v6 = *a2;
  v7 = *(*a2 + 264);
  if (v7 < 1)
  {
    if (!v7)
    {
LABEL_29:
      v21 = 0;
      goto LABEL_30;
    }

    v8 = *(v6 + 256);
  }

  else
  {
    v8 = *(v6 + 256);
    while (!*(v8 - 8 + 8 * v7))
    {
      v9 = __OFSUB__(v7--, 1);
      if ((v7 < 0) ^ v9 | (v7 == 0))
      {
        goto LABEL_29;
      }
    }
  }

  v12 = v7 - 1;
  v13 = *(v8 + 8 * v12);
  v14 = v13 != 0;
  v15 = HIDWORD(v13) != 0;
  if (HIDWORD(v13))
  {
    v13 >>= 32;
  }

  v16 = v13 >> 16 != 0;
  if (v13 >> 16)
  {
    v13 >>= 16;
  }

  v17 = v13 > 0xFF;
  if (v13 > 0xFF)
  {
    v13 >>= 8;
  }

  v18 = v13 > 0xF;
  if (v13 > 0xF)
  {
    v13 >>= 4;
  }

  v19 = v13 > 3;
  if (v13 > 3)
  {
    v13 >>= 2;
  }

  v20 = v14 | (v12 << 6) | (32 * v15) | (16 * v16) | (8 * v17) | (4 * v18) | (2 * v19);
  if (v13 > 1)
  {
    ++v20;
  }

  v21 = (v20 + 7) >> 3;
LABEL_30:
  v22 = a2[2];
  v66[0] = 0;
  if (!CBB_add_space(v67, v66, v21))
  {
    goto LABEL_49;
  }

  v23 = a1;
  v24 = a3;
  v25 = v66[0];
  v26 = *v22;
  v27 = 8 * *(v22 + 8);
  v28 = v27 - v21;
  if (v27 <= v21)
  {
    goto LABEL_51;
  }

  if (v28 < 8)
  {
    v29 = 0;
    v30 = v21;
    goto LABEL_45;
  }

  if (v28 >= 0x20)
  {
    v31 = v28 & 0xFFFFFFFFFFFFFFE0;
    v32 = (v26 + v21 + 16);
    v33 = 0uLL;
    v34 = v28 & 0xFFFFFFFFFFFFFFE0;
    v35 = 0uLL;
    do
    {
      v33 = vorrq_s8(v32[-1], v33);
      v35 = vorrq_s8(*v32, v35);
      v32 += 2;
      v34 -= 32;
    }

    while (v34);
    v36 = vorrq_s8(v35, v33);
    *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v37 = v36.i64[0] | HIDWORD(v36.i64[0]) | ((v36.i64[0] | HIDWORD(v36.i64[0])) >> 16);
    v29 = v37 | BYTE1(v37);
    if (v28 == v31)
    {
      goto LABEL_48;
    }

    if ((v28 & 0x18) == 0)
    {
      v30 = v21 + v31;
LABEL_45:
      v43 = v30 - v27;
      v44 = &v26->i8[v30];
      do
      {
        v45 = *v44++;
        v29 |= v45;
      }

      while (!__CFADD__(v43++, 1));
      goto LABEL_48;
    }
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v30 = v21 + (v28 & 0xFFFFFFFFFFFFFFF8);
  v38 = v29;
  v39 = &v26->i8[v21 + v31];
  v40 = v31 - (v28 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v41 = *v39++;
    v38 = vorr_s8(v41, v38);
    v40 += 8;
  }

  while (v40);
  v42 = *&v38 | HIDWORD(*&v38) | ((*&v38 | HIDWORD(*&v38)) >> 16);
  v29 = v42 | BYTE1(v42);
  if (v28 != (v28 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_45;
  }

LABEL_48:
  if (v29)
  {
    goto LABEL_49;
  }

LABEL_51:
  if (v27 >= v21)
  {
    v48 = v21;
  }

  else
  {
    v48 = 8 * *(v22 + 8);
  }

  v49 = a2;
  if (!v48)
  {
    goto LABEL_61;
  }

  if (v48 < 8 || v66[0] + v21 - v48 < &v26->i8[v48] && v26 < (v66[0] + v21))
  {
    v50 = 0;
    goto LABEL_59;
  }

  if (v48 >= 0x20)
  {
    v50 = v48 & 0x7FFFFFE0;
    v55 = v26 + 1;
    v56 = (v66[0] + v21 - 16);
    v57 = v50;
    do
    {
      v58 = vrev64q_s8(v55[-1]);
      v59 = vrev64q_s8(*v55);
      v56[-1] = vextq_s8(v59, v59, 8uLL);
      *v56 = vextq_s8(v58, v58, 8uLL);
      v55 += 2;
      v56 -= 2;
      v57 -= 32;
    }

    while (v57);
    if (v48 == v50)
    {
      goto LABEL_61;
    }

    if ((v48 & 0x18) == 0)
    {
LABEL_59:
      v51 = v48 - v50;
      v52 = &v25[v21 + ~v50];
      v53 = &v26->i8[v50];
      do
      {
        v54 = *v53++;
        *v52-- = v54;
        --v51;
      }

      while (v51);
      goto LABEL_61;
    }
  }

  else
  {
    v50 = 0;
  }

  v60 = v50;
  v50 = v48 & 0x7FFFFFF8;
  v61 = &v26->i8[v60];
  v62 = &v25[v21 - v60 - 8];
  v63 = v60 - v50;
  do
  {
    v64 = *v61++;
    *v62-- = vrev64_s8(v64);
    v63 += 8;
  }

  while (v63);
  if (v48 != v50)
  {
    goto LABEL_59;
  }

LABEL_61:
  if (v27 < v21)
  {
    bzero(v25, v21 - v48);
    v24 = a3;
    v49 = a2;
    v23 = a1;
  }

  if ((v24 & 1) == 0)
  {
    if (!CBB_add_asn1(v68, v66, -1610612736) || !EC_KEY_marshal_curve_name(v66, *a2) || !CBB_flush(v68))
    {
      v10 = 129;
      v11 = 177;
      goto LABEL_50;
    }

    v23 = a1;
    v49 = a2;
    v24 = a3;
  }

  if ((v24 & 2) == 0 && v49[1])
  {
    if (!CBB_add_asn1(v68, v66, -1610612735) || !CBB_add_asn1(v66, v65, 3) || (v69 = 0, !CBB_add_space(v65, &v69, 1)) || (*v69 = 0, !EC_POINT_point2cbb(v65, *a2, a2[1], *(a2 + 7), 0)) || !CBB_flush(v68))
    {
      v10 = 129;
      v11 = 193;
      goto LABEL_50;
    }

    v23 = a1;
  }

  if (!CBB_flush(v23))
  {
    v10 = 129;
    v11 = 199;
    goto LABEL_50;
  }

  return 1;
}

uint64_t EC_KEY_marshal_curve_name(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 525);
  if (*(a2 + 525))
  {
    if (CBB_add_asn1(a1, v7, 6) && (v8 = 0, CBB_add_space(v7, &v8, v2)) && (memcpy(v8, (a2 + 516), v2), CBB_flush(a1)))
    {
      return 1;
    }

    else
    {
      v6 = a1 + 16;
      if (*(a1 + 8))
      {
        v6 = *v6;
      }

      result = 0;
      *(v6 + 24) |= 2u;
      *a1 = 0;
    }
  }

  else
  {
    ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc", 320);
    return 0;
  }

  return result;
}

uint64_t EC_POINT_point2cbb(uint64_t a1, EC_GROUP *a2, const EC_GROUP **a3, point_conversion_form_t a4, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a2, *a3, a3))
  {
    v10 = 106;
    v11 = 158;
LABEL_17:
    ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/ec/oct.cc.inc", v11);
    return 0;
  }

  v12 = *(a2 + 82);
  if (v12 < 1)
  {
LABEL_16:
    v10 = 119;
    v11 = 165;
    goto LABEL_17;
  }

  if (v12 < 4)
  {
    v13 = 0;
    v14 = 0;
LABEL_9:
    v20 = v12 - v13;
    v21 = &a3[v13 + 19];
    do
    {
      v22 = *v21++;
      *&v14 |= v22;
      --v20;
    }

    while (v20);
    goto LABEL_11;
  }

  v13 = v12 & 0x7FFFFFFC;
  v15 = (a3 + 21);
  v16 = 0uLL;
  v17 = v13;
  v18 = 0uLL;
  do
  {
    v16 = vorrq_s8(v15[-1], v16);
    v18 = vorrq_s8(*v15, v18);
    v15 += 2;
    v17 -= 4;
  }

  while (v17);
  v19 = vorrq_s8(v18, v16);
  v14 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  if (v13 != v12)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (!*&v14)
  {
    goto LABEL_16;
  }

  result = ec_point_byte_len(a2, a4);
  if (result)
  {
    v24 = result;
    buf = 0;
    result = CBB_add_space(a1, &buf, result);
    if (result)
    {
      return EC_POINT_point2oct(a2, a3, a4, buf, v24, a5) == v24;
    }
  }

  return result;
}

uint64_t *EC_KEY_parse_curve_name(unsigned __int8 **a1)
{
  v95 = 0;
  v94 = 0;
  if (!cbs_get_any_asn1_element(a1, &v92, &v94, &v95, 0, 0, 0) || v94 != 6 || v93 < v95)
  {
    v1 = 128;
    v2 = 302;
LABEL_5:
    ERR_put_error(15, 0, v1, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/ec/ec_asn1.cc", v2);
    return 0;
  }

  v92 = (v92 + v95);
  v93 -= v95;
  result = EC_group_p224();
  v4 = *(result + 525);
  if (v93 != v4)
  {
    goto LABEL_28;
  }

  if (!*(result + 525))
  {
    return result;
  }

  if (v4 < 8)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_25;
  }

  if (v4 >= 0x20)
  {
    v5 = v4 & 0xE0;
    v7 = veorq_s8(*(result + 516), *v92);
    v8 = veorq_s8(*(result + 532), v92[1]);
    if (v5 != 32)
    {
      v7 = vorrq_s8(veorq_s8(*(result + 548), v92[2]), v7);
      v8 = vorrq_s8(veorq_s8(*(result + 564), v92[3]), v8);
      if (v5 != 64)
      {
        v7 = vorrq_s8(veorq_s8(*(result + 580), v92[4]), v7);
        v8 = vorrq_s8(veorq_s8(*(result + 596), v92[5]), v8);
        if (v5 != 96)
        {
          v7 = vorrq_s8(veorq_s8(*(result + 612), v92[6]), v7);
          v8 = vorrq_s8(veorq_s8(*(result + 628), v92[7]), v8);
          if (v5 != 128)
          {
            v7 = vorrq_s8(veorq_s8(*(result + 644), v92[8]), v7);
            v8 = vorrq_s8(veorq_s8(*(result + 660), v92[9]), v8);
            if (v5 != 160)
            {
              v7 = vorrq_s8(veorq_s8(*(result + 676), v92[10]), v7);
              v8 = vorrq_s8(veorq_s8(*(result + 692), v92[11]), v8);
              if (v5 != 192)
              {
                v7 = vorrq_s8(veorq_s8(*(result + 708), v92[12]), v7);
                v8 = vorrq_s8(veorq_s8(*(result + 724), v92[13]), v8);
              }
            }
          }
        }
      }
    }

    v9 = vorrq_s8(v8, v7);
    *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
    v10 = v9.i64[0] | HIDWORD(v9.i64[0]) | ((v9.i64[0] | HIDWORD(v9.i64[0])) >> 16);
    v6 = v10 | BYTE1(v10);
    if (v5 == v4)
    {
      goto LABEL_27;
    }

    if ((v4 & 0x18) == 0)
    {
LABEL_25:
      v20 = v4 - v5;
      v21 = result + v5 + 516;
      v22 = &v92->i8[v5];
      do
      {
        v24 = *v22++;
        v23 = v24;
        v25 = *v21++;
        v6 |= v25 ^ v23;
        --v20;
      }

      while (v20);
      goto LABEL_27;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v11 = v5;
  v5 = v4 & 0xF8;
  v12 = v6;
  v13 = &v92->i8[v11];
  v14 = (result + v11 + 516);
  v15 = v11 - v5;
  do
  {
    v16 = *v13++;
    v17 = v16;
    v18 = *v14++;
    v12 = vorr_s8(veor_s8(v18, v17), v12);
    v15 += 8;
  }

  while (v15);
  v19 = *&v12 | HIDWORD(*&v12) | ((*&v12 | HIDWORD(*&v12)) >> 16);
  v6 = v19 | BYTE1(v19);
  if (v5 != v4)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (!v6)
  {
    return result;
  }

LABEL_28:
  result = EC_group_p256();
  v26 = *(result + 525);
  if (v93 != v26)
  {
    goto LABEL_49;
  }

  if (!*(result + 525))
  {
    return result;
  }

  if (v26 < 8)
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_46;
  }

  if (v26 >= 0x20)
  {
    v27 = v26 & 0xE0;
    v29 = veorq_s8(*(result + 516), *v92);
    v30 = veorq_s8(*(result + 532), v92[1]);
    if (v27 != 32)
    {
      v29 = vorrq_s8(veorq_s8(*(result + 548), v92[2]), v29);
      v30 = vorrq_s8(veorq_s8(*(result + 564), v92[3]), v30);
      if (v27 != 64)
      {
        v29 = vorrq_s8(veorq_s8(*(result + 580), v92[4]), v29);
        v30 = vorrq_s8(veorq_s8(*(result + 596), v92[5]), v30);
        if (v27 != 96)
        {
          v29 = vorrq_s8(veorq_s8(*(result + 612), v92[6]), v29);
          v30 = vorrq_s8(veorq_s8(*(result + 628), v92[7]), v30);
          if (v27 != 128)
          {
            v29 = vorrq_s8(veorq_s8(*(result + 644), v92[8]), v29);
            v30 = vorrq_s8(veorq_s8(*(result + 660), v92[9]), v30);
            if (v27 != 160)
            {
              v29 = vorrq_s8(veorq_s8(*(result + 676), v92[10]), v29);
              v30 = vorrq_s8(veorq_s8(*(result + 692), v92[11]), v30);
              if (v27 != 192)
              {
                v29 = vorrq_s8(veorq_s8(*(result + 708), v92[12]), v29);
                v30 = vorrq_s8(veorq_s8(*(result + 724), v92[13]), v30);
              }
            }
          }
        }
      }
    }

    v31 = vorrq_s8(v30, v29);
    *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v32 = v31.i64[0] | HIDWORD(v31.i64[0]) | ((v31.i64[0] | HIDWORD(v31.i64[0])) >> 16);
    v28 = v32 | BYTE1(v32);
    if (v27 == v26)
    {
      goto LABEL_48;
    }

    if ((v26 & 0x18) == 0)
    {
LABEL_46:
      v42 = v26 - v27;
      v43 = result + v27 + 516;
      v44 = &v92->i8[v27];
      do
      {
        v46 = *v44++;
        v45 = v46;
        v47 = *v43++;
        v28 |= v47 ^ v45;
        --v42;
      }

      while (v42);
      goto LABEL_48;
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v33 = v27;
  v27 = v26 & 0xF8;
  v34 = v28;
  v35 = &v92->i8[v33];
  v36 = (result + v33 + 516);
  v37 = v33 - v27;
  do
  {
    v38 = *v35++;
    v39 = v38;
    v40 = *v36++;
    v34 = vorr_s8(veor_s8(v40, v39), v34);
    v37 += 8;
  }

  while (v37);
  v41 = *&v34 | HIDWORD(*&v34) | ((*&v34 | HIDWORD(*&v34)) >> 16);
  v28 = v41 | BYTE1(v41);
  if (v27 != v26)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (!v28)
  {
    return result;
  }

LABEL_49:
  result = EC_group_p384();
  v48 = *(result + 525);
  if (v93 != v48)
  {
    goto LABEL_70;
  }

  if (!*(result + 525))
  {
    return result;
  }

  if (v48 < 8)
  {
    v49 = 0;
    v50 = 0;
    goto LABEL_67;
  }

  if (v48 >= 0x20)
  {
    v49 = v48 & 0xE0;
    v51 = veorq_s8(*(result + 516), *v92);
    v52 = veorq_s8(*(result + 532), v92[1]);
    if (v49 != 32)
    {
      v51 = vorrq_s8(veorq_s8(*(result + 548), v92[2]), v51);
      v52 = vorrq_s8(veorq_s8(*(result + 564), v92[3]), v52);
      if (v49 != 64)
      {
        v51 = vorrq_s8(veorq_s8(*(result + 580), v92[4]), v51);
        v52 = vorrq_s8(veorq_s8(*(result + 596), v92[5]), v52);
        if (v49 != 96)
        {
          v51 = vorrq_s8(veorq_s8(*(result + 612), v92[6]), v51);
          v52 = vorrq_s8(veorq_s8(*(result + 628), v92[7]), v52);
          if (v49 != 128)
          {
            v51 = vorrq_s8(veorq_s8(*(result + 644), v92[8]), v51);
            v52 = vorrq_s8(veorq_s8(*(result + 660), v92[9]), v52);
            if (v49 != 160)
            {
              v51 = vorrq_s8(veorq_s8(*(result + 676), v92[10]), v51);
              v52 = vorrq_s8(veorq_s8(*(result + 692), v92[11]), v52);
              if (v49 != 192)
              {
                v51 = vorrq_s8(veorq_s8(*(result + 708), v92[12]), v51);
                v52 = vorrq_s8(veorq_s8(*(result + 724), v92[13]), v52);
              }
            }
          }
        }
      }
    }

    v53 = vorrq_s8(v52, v51);
    *v53.i8 = vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
    v54 = v53.i64[0] | HIDWORD(v53.i64[0]) | ((v53.i64[0] | HIDWORD(v53.i64[0])) >> 16);
    v50 = v54 | BYTE1(v54);
    if (v49 == v48)
    {
      goto LABEL_69;
    }

    if ((v48 & 0x18) == 0)
    {
LABEL_67:
      v64 = v48 - v49;
      v65 = result + v49 + 516;
      v66 = &v92->i8[v49];
      do
      {
        v68 = *v66++;
        v67 = v68;
        v69 = *v65++;
        v50 |= v69 ^ v67;
        --v64;
      }

      while (v64);
      goto LABEL_69;
    }
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v55 = v49;
  v49 = v48 & 0xF8;
  v56 = v50;
  v57 = &v92->i8[v55];
  v58 = (result + v55 + 516);
  v59 = v55 - v49;
  do
  {
    v60 = *v57++;
    v61 = v60;
    v62 = *v58++;
    v56 = vorr_s8(veor_s8(v62, v61), v56);
    v59 += 8;
  }

  while (v59);
  v63 = *&v56 | HIDWORD(*&v56) | ((*&v56 | HIDWORD(*&v56)) >> 16);
  v50 = v63 | BYTE1(v63);
  if (v49 != v48)
  {
    goto LABEL_67;
  }

LABEL_69:
  if (!v50)
  {
    return result;
  }

LABEL_70:
  result = EC_group_p521();
  v70 = *(result + 525);
  if (v93 != v70)
  {
LABEL_91:
    v1 = 123;
    v2 = 314;
    goto LABEL_5;
  }

  if (*(result + 525))
  {
    if (v70 < 8)
    {
      v71 = 0;
      v72 = 0;
      goto LABEL_88;
    }

    if (v70 >= 0x20)
    {
      v71 = v70 & 0xE0;
      v73 = veorq_s8(*(result + 516), *v92);
      v74 = veorq_s8(*(result + 532), v92[1]);
      if (v71 != 32)
      {
        v73 = vorrq_s8(veorq_s8(*(result + 548), v92[2]), v73);
        v74 = vorrq_s8(veorq_s8(*(result + 564), v92[3]), v74);
        if (v71 != 64)
        {
          v73 = vorrq_s8(veorq_s8(*(result + 580), v92[4]), v73);
          v74 = vorrq_s8(veorq_s8(*(result + 596), v92[5]), v74);
          if (v71 != 96)
          {
            v73 = vorrq_s8(veorq_s8(*(result + 612), v92[6]), v73);
            v74 = vorrq_s8(veorq_s8(*(result + 628), v92[7]), v74);
            if (v71 != 128)
            {
              v73 = vorrq_s8(veorq_s8(*(result + 644), v92[8]), v73);
              v74 = vorrq_s8(veorq_s8(*(result + 660), v92[9]), v74);
              if (v71 != 160)
              {
                v73 = vorrq_s8(veorq_s8(*(result + 676), v92[10]), v73);
                v74 = vorrq_s8(veorq_s8(*(result + 692), v92[11]), v74);
                if (v71 != 192)
                {
                  v73 = vorrq_s8(veorq_s8(*(result + 708), v92[12]), v73);
                  v74 = vorrq_s8(veorq_s8(*(result + 724), v92[13]), v74);
                }
              }
            }
          }
        }
      }

      v75 = vorrq_s8(v74, v73);
      *v75.i8 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
      v76 = v75.i64[0] | HIDWORD(v75.i64[0]) | ((v75.i64[0] | HIDWORD(v75.i64[0])) >> 16);
      v72 = v76 | BYTE1(v76);
      if (v71 == v70)
      {
        goto LABEL_90;
      }

      if ((v70 & 0x18) == 0)
      {
LABEL_88:
        v86 = v70 - v71;
        v87 = result + v71 + 516;
        v88 = &v92->i8[v71];
        do
        {
          v90 = *v88++;
          v89 = v90;
          v91 = *v87++;
          v72 |= v91 ^ v89;
          --v86;
        }

        while (v86);
        goto LABEL_90;
      }
    }

    else
    {
      v72 = 0;
      v71 = 0;
    }

    v77 = v71;
    v71 = v70 & 0xF8;
    v78 = v72;
    v79 = &v92->i8[v77];
    v80 = (result + v77 + 516);
    v81 = v77 - v71;
    do
    {
      v82 = *v79++;
      v83 = v82;
      v84 = *v80++;
      v78 = vorr_s8(veor_s8(v84, v83), v78);
      v81 += 8;
    }

    while (v81);
    v85 = *&v78 | HIDWORD(*&v78) | ((*&v78 | HIDWORD(*&v78)) >> 16);
    v72 = v85 | BYTE1(v85);
    if (v71 != v70)
    {
      goto LABEL_88;
    }

LABEL_90:
    if (v72)
    {
      goto LABEL_91;
    }
  }

  return result;
}