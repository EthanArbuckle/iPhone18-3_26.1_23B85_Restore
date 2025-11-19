__int128 *sub_2300B8C2C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v117 = *(a3 + 16);
    v116 = *(v117 - 8);
    v5 = *(v116 + 80);
    v6 = v5 | 7;
    v7 = ~(v5 | 7);
    v115 = v5 + 8;
    v8 = *(v116 + 64);
    v9 = ((v5 + 8) & ~v5) + v8;
    v114 = v8;
    if (v9 <= ((v9 + v5) & ~v5) + v8)
    {
      v9 = ((v9 + v5) & ~v5) + v8;
    }

    if (v9 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = v11 + (((v5 | 7) + 17) & ~(v5 | 7));
    if (v12 <= ((v12 + v6) & ~v6) + v11)
    {
      v13 = ((v12 + v6) & ~v6) + v11;
    }

    else
    {
      v13 = v11 + (((v5 | 7) + 17) & ~(v5 | 7));
    }

    v14 = *(a1 + v13);
    v15 = v13;
    if (v14 >= 2 && v13 != 0)
    {
      v14 = *a1 + 2;
    }

    v17 = ~v5;
    v18 = ((a1 + v6 + 17) & v7);
    v19 = *(v18 + v10);
    v107 = *(v116 + 80);
    if (v14 == 1)
    {
      v20 = v19 - 3;
      if (v19 >= 3)
      {
        if (v10 <= 3)
        {
          v21 = v10;
        }

        else
        {
          v21 = 4;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v22 = *v18;
          }

          else if (v21 == 3)
          {
            v22 = *v18 | (*(((a1 + v6 + 17) & v7) + 2) << 16);
          }

          else
          {
            v22 = *v18;
          }

LABEL_39:
          v26 = (v22 | (v20 << (8 * v10))) + 3;
          v19 = v22 + 3;
          if (v10 < 4)
          {
            v19 = v26;
          }

          goto LABEL_41;
        }

        if (v21)
        {
          v22 = *v18;
          goto LABEL_39;
        }
      }

LABEL_41:
      if (v19 != 2)
      {
        if (v19 == 1)
        {
          goto LABEL_72;
        }

        v27 = v18 + v115;
LABEL_69:
        (*(v116 + 8))(v27 & v17, v117);
        goto LABEL_72;
      }

      v100 = ~(v5 | 7);
      v28 = ~v5;
      v29 = (v18 + v115) & v17;
      v98 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
      v108 = v13;
      v111 = v13;
      v30 = *(v116 + 8);
      v31 = *(a3 + 16);
      v32 = *(v116 + 80);
      v30(v29, v117);
      v33 = v114 + v32 + v29;
      v17 = v28;
      v7 = v100;
      v3 = a1;
      goto LABEL_71;
    }

    v23 = v19 - 3;
    if (v19 >= 3)
    {
      if (v10 <= 3)
      {
        v24 = v10;
      }

      else
      {
        v24 = 4;
      }

      if (v24 <= 1)
      {
        if (!v24)
        {
          goto LABEL_48;
        }

        v25 = *v18;
      }

      else if (v24 == 2)
      {
        v25 = *v18;
      }

      else if (v24 == 3)
      {
        v25 = *v18 | (*(((a1 + v6 + 17) & v7) + 2) << 16);
      }

      else
      {
        v25 = *v18;
      }

      v34 = (v25 | (v23 << (8 * v10))) + 3;
      v19 = v25 + 3;
      if (v10 < 4)
      {
        v19 = v34;
      }
    }

LABEL_48:
    if (v19 == 2)
    {
      v101 = ~(v5 | 7);
      v35 = ~v5;
      v36 = (v18 + v115) & v17;
      v109 = v13;
      v112 = v13;
      v37 = *(v116 + 8);
      v38 = *(v116 + 80);
      v37(v36, v117);
      v39 = v114 + v38 + v36;
      v17 = v35;
      v7 = v101;
      v3 = a1;
      v15 = v112;
      v37(v39 & v17, v117);
      v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
      v13 = v109;
    }

    else if (v19 != 1)
    {
      (*(v116 + 8))((v18 + v115) & v17, v117);
    }

    v40 = ((v18 + v6 + v11) & v7);
    v41 = v40[v10];
    v42 = v41 - 3;
    if (v41 < 3)
    {
      goto LABEL_66;
    }

    if (v10 <= 3)
    {
      v43 = v10;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
LABEL_66:
        if (v41 != 2)
        {
          if (v41 == 1)
          {
            goto LABEL_72;
          }

          v27 = &v40[v115];
          goto LABEL_69;
        }

        v98 = v11;
        v102 = v7;
        v46 = v3;
        v47 = v17;
        v48 = &v40[v115] & v17;
        v108 = v13;
        v111 = v15;
        v30 = *(v116 + 8);
        v31 = v117;
        v30(v48, v117);
        v33 = v114 + v107 + v48;
        v17 = v47;
        v3 = v46;
        v7 = v102;
LABEL_71:
        v49 = v31;
        v15 = v111;
        v30(v33 & v17, v49);
        v11 = v98;
        v13 = v108;
LABEL_72:
        v50 = *(a2 + v13);
        if (v15)
        {
          v51 = v50 >= 2;
        }

        else
        {
          v51 = 0;
        }

        if (v51)
        {
          v50 = *a2 + 2;
        }

        v113 = v10 + 1;
        v52 = *a2;
        *(v3 + 16) = *(a2 + 16);
        *v3 = v52;
        v53 = ((a2 + v6 + 17) & v7);
        v54 = *(v53 + v10);
        if (v50 == 1)
        {
          v55 = v54 - 3;
          if (v54 >= 3)
          {
            if (v10 <= 3)
            {
              v56 = v10;
            }

            else
            {
              v56 = 4;
            }

            if (v56 > 1)
            {
              if (v56 == 2)
              {
                v57 = *v53;
              }

              else if (v56 == 3)
              {
                v57 = *v53 | (*(((a2 + v6 + 17) & v7) + 2) << 16);
              }

              else
              {
                v57 = *v53;
              }

LABEL_102:
              v61 = (v57 | (v55 << (8 * v10))) + 3;
              v54 = v57 + 3;
              if (v10 < 4)
              {
                v54 = v61;
              }

              goto LABEL_104;
            }

            if (v56)
            {
              v57 = *v53;
              goto LABEL_102;
            }
          }

LABEL_104:
          *v18 = *v53;
          if (v54 == 2)
          {
            v62 = (v18 + v115) & v17;
            v105 = v3;
            v63 = v17;
            v64 = (v53 + v115) & v17;
            v65 = *(v116 + 16);
            v65(v62, v64, v117);
            v66 = (v114 + v107 + v62) & v63;
            v67 = (v114 + v107 + v64) & v63;
            v3 = v105;
            v65(v66, v67, v117);
            LOBYTE(v54) = 2;
          }

          else if (v54 != 1)
          {
            (*(v116 + 16))((v18 + v115) & v17, (v53 + v115) & v17, v117);
            LOBYTE(v54) = 0;
          }

          *(v18 + v10) = v54;
          v68 = v18 + v113 + 7;
          v69 = v53 + v113 + 7;
          v70 = 1;
LABEL_136:
          v95 = (v68 & 0xFFFFFFFFFFFFFFF8);
          v96 = (v69 & 0xFFFFFFFFFFFFFFF8);
          *v95 = *v96;
          *((v95 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v96 + 15) & 0xFFFFFFFFFFFFFFF8);
          *(v3 + v13) = v70;
          return v3;
        }

        v58 = v54 - 3;
        if (v54 >= 3)
        {
          if (v10 <= 3)
          {
            v59 = v10;
          }

          else
          {
            v59 = 4;
          }

          if (v59 <= 1)
          {
            if (!v59)
            {
              goto LABEL_113;
            }

            v60 = *v53;
          }

          else if (v59 == 2)
          {
            v60 = *v53;
          }

          else if (v59 == 3)
          {
            v60 = *v53 | (*(((a2 + v6 + 17) & v7) + 2) << 16);
          }

          else
          {
            v60 = *v53;
          }

          if (v10 < 4)
          {
            v60 |= v58 << (8 * v10);
          }

          v54 = v60 + 3;
        }

LABEL_113:
        *v18 = *v53;
        if (v54 == 2)
        {
          v71 = (v18 + v115) & v17;
          v106 = v3;
          v72 = v17;
          v73 = (v53 + v115) & v17;
          v99 = v11;
          v74 = *(v116 + 16);
          v74(v71, v73, v117);
          v75 = v114 + v107 + v73;
          v17 = v72;
          v76 = (v114 + v107 + v71) & v72;
          v77 = v75 & v72;
          v3 = v106;
          v74(v76, v77, v117);
          v11 = v99;
          LOBYTE(v54) = 2;
        }

        else if (v54 != 1)
        {
          (*(v116 + 16))((v18 + v115) & v17, (v53 + v115) & v17, v117);
          LOBYTE(v54) = 0;
        }

        *(v18 + v10) = v54;
        v78 = ((v18 + v113 + 7) & 0xFFFFFFFFFFFFFFF8);
        v79 = ((v53 + v113 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v78 = *v79;
        *((v78 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v79 + 15) & 0xFFFFFFFFFFFFFFF8);
        v80 = v11;
        v81 = ((v18 + v6 + v11) & v7);
        v82 = ((v53 + v6 + v80) & v7);
        v83 = v82[v10];
        v84 = v83 - 3;
        if (v83 < 3)
        {
          goto LABEL_131;
        }

        if (v10 <= 3)
        {
          v85 = v10;
        }

        else
        {
          v85 = 4;
        }

        if (v85 <= 1)
        {
          if (!v85)
          {
LABEL_131:
            *v81 = *v82;
            if (v83 == 2)
            {
              v88 = (v81 + v115) & v17;
              v89 = v3;
              v90 = v17;
              v91 = &v82[v115] & v17;
              v110 = v13;
              v92 = *(v116 + 16);
              v92(v88, v91, v117);
              v93 = (v114 + v107 + v88) & v90;
              v94 = (v114 + v107 + v91) & v90;
              v3 = v89;
              v92(v93, v94, v117);
              v13 = v110;
              LOBYTE(v83) = 2;
            }

            else if (v83 != 1)
            {
              (*(v116 + 16))((v81 + v115) & v17, &v82[v115] & v17, v117);
              LOBYTE(v83) = 0;
            }

            v70 = 0;
            *(v81 + v10) = v83;
            v68 = v81 + v10 + 8;
            v69 = &v82[v10 + 8];
            goto LABEL_136;
          }

          v86 = *v82;
        }

        else if (v85 == 2)
        {
          v86 = *v82;
        }

        else if (v85 == 3)
        {
          v86 = *v82 | (v82[2] << 16);
        }

        else
        {
          v86 = *v82;
        }

        v87 = (v86 | (v84 << (8 * v10))) + 3;
        v83 = v86 + 3;
        if (v10 < 4)
        {
          v83 = v87;
        }

        goto LABEL_131;
      }

      v44 = *v40;
    }

    else if (v43 == 2)
    {
      v44 = *v40;
    }

    else if (v43 == 3)
    {
      v44 = *v40 | (*(((v18 + v6 + v11) & v7) + 2) << 16);
    }

    else
    {
      v44 = *v40;
    }

    v45 = (v44 | (v42 << (8 * v10))) + 3;
    v41 = v44 + 3;
    if (v10 < 4)
    {
      v41 = v45;
    }

    goto LABEL_66;
  }

  return v3;
}

uint64_t sub_2300B952C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6 | 7;
  v8 = ~(v6 | 7);
  v9 = v6 + 8;
  v10 = *(v5 + 64);
  v11 = ((v6 + 8) & ~v6) + v10;
  if (v11 <= ((v11 + v6) & ~v6) + v10)
  {
    v11 = ((v11 + v6) & ~v6) + v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 + (((v6 | 7) + 17) & ~(v6 | 7));
  if (v14 <= ((v14 + v7) & ~v7) + v13)
  {
    v14 = ((v14 + v7) & ~v7) + v13;
  }

  v15 = *(a2 + v14);
  v72 = v14;
  if (v15 >= 2 && v14 != 0)
  {
    v15 = *a2 + 2;
  }

  v17 = ~v6;
  v18 = v12 + 1;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v19 = ((a1 + v7 + 17) & v8);
  v20 = ((a2 + v7 + 17) & v8);
  v21 = *(v20 + v12);
  if (v15 == 1)
  {
    v22 = v21 - 3;
    if (v21 >= 3)
    {
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = *v20;
        }

        else if (v23 == 3)
        {
          v24 = *v20 | (*(((a2 + v7 + 17) & v8) + 2) << 16);
        }

        else
        {
          v24 = *v20;
        }

LABEL_37:
        v28 = (v24 | (v22 << (8 * v12))) + 3;
        v21 = v24 + 3;
        if (v12 < 4)
        {
          v21 = v28;
        }

        goto LABEL_39;
      }

      if (v23)
      {
        v24 = *v20;
        goto LABEL_37;
      }
    }

LABEL_39:
    *v19 = *v20;
    if (v21 == 2)
    {
      v29 = (v19 + v9) & v17;
      v30 = (v20 + v6 + 8) & v17;
      v31 = *(v5 + 32);
      v32 = v4;
      v67 = v10;
      v31(v29, v30);
      v33 = v32;
      v18 = v12 + 1;
      (v31)((v67 + v6 + v29) & ~v6, (v67 + v6 + v30) & ~v6, v33);
      v3 = a1;
      LOBYTE(v21) = 2;
    }

    else if (v21 != 1)
    {
      (*(v5 + 32))((v19 + v9) & v17, (v20 + v9) & v17);
      LOBYTE(v21) = 0;
    }

    *(v19 + v12) = v21;
    v34 = v19 + v18 + 7;
    v35 = v20 + v18 + 7;
    v36 = 1;
    goto LABEL_73;
  }

  v25 = v21 - 3;
  if (v21 >= 3)
  {
    if (v12 <= 3)
    {
      v26 = v12;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = *v20;
    }

    else if (v26 == 2)
    {
      v27 = *v20;
    }

    else if (v26 == 3)
    {
      v27 = *v20 | (*(((a2 + v7 + 17) & v8) + 2) << 16);
    }

    else
    {
      v27 = *v20;
    }

    v37 = (v27 | (v25 << (8 * v12))) + 3;
    v21 = v27 + 3;
    if (v12 < 4)
    {
      v21 = v37;
    }
  }

LABEL_47:
  *v19 = *v20;
  v68 = v10;
  v69 = v5;
  v66 = ~(v6 | 7);
  if (v21 == 2)
  {
    v63 = (v19 + v9) & v17;
    v64 = (v20 + v9) & v17;
    v65 = *(v5 + 32);
    v39 = v4;
    v40 = v10;
    v65();
    v41 = (v40 + v6 + v63) & ~v6;
    v42 = (v40 + v6 + v64) & ~v6;
    v18 = v12 + 1;
    v38 = v39;
    v43 = v39;
    v9 = v6 + 8;
    (v65)(v41, v42, v43);
    LOBYTE(v21) = 2;
  }

  else
  {
    v38 = v4;
    if (v21 != 1)
    {
      (*(v5 + 32))((v19 + v9) & v17, (v20 + v9) & v17);
      LOBYTE(v21) = 0;
    }
  }

  *(v19 + v12) = v21;
  v44 = ((v19 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v20 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v44 = *v45;
  *((v44 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v19 + v7 + v13) & v66);
  v47 = ((v20 + v7 + v13) & v66);
  v48 = *(v47 + v12);
  v49 = v48 - 3;
  if (v48 < 3)
  {
    v51 = v38;
    v52 = v69;
    v54 = ~v6;
  }

  else
  {
    if (v12 <= 3)
    {
      v50 = v12;
    }

    else
    {
      v50 = 4;
    }

    v51 = v38;
    v52 = v69;
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v53 = *v47;
      }

      else if (v50 == 3)
      {
        v53 = *v47 | (*(v47 + 2) << 16);
      }

      else
      {
        v53 = *v47;
      }

      v54 = ~v6;
LABEL_66:
      v55 = (v53 | (v49 << (8 * v12))) + 3;
      v48 = v53 + 3;
      if (v12 < 4)
      {
        v48 = v55;
      }

      goto LABEL_68;
    }

    v54 = ~v6;
    if (v50)
    {
      v53 = *v47;
      goto LABEL_66;
    }
  }

LABEL_68:
  *v46 = *v47;
  if (v48 == 2)
  {
    v56 = v9;
    v57 = (v46 + v9) & v54;
    v58 = (v47 + v56) & v54;
    v71 = v3;
    v59 = *(v52 + 32);
    v59(v57, v58, v51);
    v59((v68 + v6 + v57) & v54, (v68 + v6 + v58) & v54, v51);
    v3 = v71;
    LOBYTE(v48) = 2;
  }

  else if (v48 != 1)
  {
    (*(v52 + 32))((v46 + v9) & v54, (v47 + v9) & v54, v51);
    LOBYTE(v48) = 0;
  }

  v36 = 0;
  *(v46 + v12) = v48;
  v34 = v46 + v12 + 8;
  v35 = v47 + v12 + 8;
LABEL_73:
  v60 = (v34 & 0xFFFFFFFFFFFFFFF8);
  v61 = (v35 & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  *((v60 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v61 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v3 + v72) = v36;
  return v3;
}

_DWORD *sub_2300B9AD8(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v116 = *(a3 + 16);
    v115 = *(v116 - 8);
    v5 = *(v115 + 80);
    v6 = v5 | 7;
    v7 = ~(v5 | 7);
    v114 = v5 + 8;
    v8 = *(v115 + 64);
    v9 = ((v5 + 8) & ~v5) + v8;
    v113 = v8;
    if (v9 <= ((v9 + v5) & ~v5) + v8)
    {
      v9 = ((v9 + v5) & ~v5) + v8;
    }

    if (v9 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = v11 + (((v5 | 7) + 17) & ~(v5 | 7));
    if (v12 <= ((v12 + v6) & ~v6) + v11)
    {
      v13 = ((v12 + v6) & ~v6) + v11;
    }

    else
    {
      v13 = v11 + (((v5 | 7) + 17) & ~(v5 | 7));
    }

    v14 = *(a1 + v13);
    v15 = v13;
    if (v14 >= 2 && v13 != 0)
    {
      v14 = *a1 + 2;
    }

    v17 = ~v5;
    v18 = ((a1 + v6 + 17) & v7);
    v19 = *(v18 + v10);
    v106 = *(v115 + 80);
    if (v14 == 1)
    {
      v20 = v19 - 3;
      if (v19 >= 3)
      {
        if (v10 <= 3)
        {
          v21 = v10;
        }

        else
        {
          v21 = 4;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v22 = *v18;
          }

          else if (v21 == 3)
          {
            v22 = *v18 | (*(((a1 + v6 + 17) & v7) + 2) << 16);
          }

          else
          {
            v22 = *v18;
          }

LABEL_39:
          v26 = (v22 | (v20 << (8 * v10))) + 3;
          v19 = v22 + 3;
          if (v10 < 4)
          {
            v19 = v26;
          }

          goto LABEL_41;
        }

        if (v21)
        {
          v22 = *v18;
          goto LABEL_39;
        }
      }

LABEL_41:
      if (v19 != 2)
      {
        if (v19 == 1)
        {
          goto LABEL_72;
        }

        v27 = v18 + v114;
LABEL_69:
        (*(v115 + 8))(v27 & v17, v116);
        goto LABEL_72;
      }

      v99 = ~(v5 | 7);
      v28 = ~v5;
      v29 = (v18 + v114) & v17;
      v97 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
      v107 = v13;
      v110 = v13;
      v30 = *(v115 + 8);
      v31 = *(a3 + 16);
      v32 = *(v115 + 80);
      v30(v29, v116);
      v33 = v113 + v32 + v29;
      v17 = v28;
      v7 = v99;
      v3 = a1;
      goto LABEL_71;
    }

    v23 = v19 - 3;
    if (v19 >= 3)
    {
      if (v10 <= 3)
      {
        v24 = v10;
      }

      else
      {
        v24 = 4;
      }

      if (v24 <= 1)
      {
        if (!v24)
        {
          goto LABEL_48;
        }

        v25 = *v18;
      }

      else if (v24 == 2)
      {
        v25 = *v18;
      }

      else if (v24 == 3)
      {
        v25 = *v18 | (*(((a1 + v6 + 17) & v7) + 2) << 16);
      }

      else
      {
        v25 = *v18;
      }

      v34 = (v25 | (v23 << (8 * v10))) + 3;
      v19 = v25 + 3;
      if (v10 < 4)
      {
        v19 = v34;
      }
    }

LABEL_48:
    if (v19 == 2)
    {
      v100 = ~(v5 | 7);
      v35 = ~v5;
      v36 = (v18 + v114) & v17;
      v108 = v13;
      v111 = v13;
      v37 = *(v115 + 8);
      v38 = *(v115 + 80);
      v37(v36, v116);
      v39 = v113 + v38 + v36;
      v17 = v35;
      v7 = v100;
      v3 = a1;
      v15 = v111;
      v37(v39 & v17, v116);
      v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
      v13 = v108;
    }

    else if (v19 != 1)
    {
      (*(v115 + 8))((v18 + v114) & v17, v116);
    }

    v40 = ((v18 + v6 + v11) & v7);
    v41 = v40[v10];
    v42 = v41 - 3;
    if (v41 < 3)
    {
      goto LABEL_66;
    }

    if (v10 <= 3)
    {
      v43 = v10;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
LABEL_66:
        if (v41 != 2)
        {
          if (v41 == 1)
          {
            goto LABEL_72;
          }

          v27 = &v40[v114];
          goto LABEL_69;
        }

        v97 = v11;
        v101 = v7;
        v46 = v3;
        v47 = v17;
        v48 = &v40[v114] & v17;
        v107 = v13;
        v110 = v15;
        v30 = *(v115 + 8);
        v31 = v116;
        v30(v48, v116);
        v33 = v113 + v106 + v48;
        v17 = v47;
        v3 = v46;
        v7 = v101;
LABEL_71:
        v49 = v31;
        v15 = v110;
        v30(v33 & v17, v49);
        v11 = v97;
        v13 = v107;
LABEL_72:
        v50 = *(a2 + v13);
        if (v15)
        {
          v51 = v50 >= 2;
        }

        else
        {
          v51 = 0;
        }

        if (v51)
        {
          v50 = *a2 + 2;
        }

        v112 = v10 + 1;
        *v3 = *a2;
        *(v3 + 16) = *(a2 + 16);
        v52 = ((a2 + v6 + 17) & v7);
        v53 = *(v52 + v10);
        if (v50 == 1)
        {
          v54 = v53 - 3;
          if (v53 >= 3)
          {
            if (v10 <= 3)
            {
              v55 = v10;
            }

            else
            {
              v55 = 4;
            }

            if (v55 > 1)
            {
              if (v55 == 2)
              {
                v56 = *v52;
              }

              else if (v55 == 3)
              {
                v56 = *v52 | (*(((a2 + v6 + 17) & v7) + 2) << 16);
              }

              else
              {
                v56 = *v52;
              }

LABEL_102:
              v60 = (v56 | (v54 << (8 * v10))) + 3;
              v53 = v56 + 3;
              if (v10 < 4)
              {
                v53 = v60;
              }

              goto LABEL_104;
            }

            if (v55)
            {
              v56 = *v52;
              goto LABEL_102;
            }
          }

LABEL_104:
          *v18 = *v52;
          if (v53 == 2)
          {
            v61 = (v18 + v114) & v17;
            v104 = v3;
            v62 = v17;
            v63 = (v52 + v114) & v17;
            v64 = *(v115 + 32);
            v64(v61, v63, v116);
            v65 = (v113 + v106 + v61) & v62;
            v66 = (v113 + v106 + v63) & v62;
            v3 = v104;
            v64(v65, v66, v116);
            LOBYTE(v53) = 2;
          }

          else if (v53 != 1)
          {
            (*(v115 + 32))((v18 + v114) & v17, (v52 + v114) & v17, v116);
            LOBYTE(v53) = 0;
          }

          *(v18 + v10) = v53;
          v67 = v18 + v112 + 7;
          v68 = v52 + v112 + 7;
          v69 = 1;
LABEL_136:
          v94 = (v67 & 0xFFFFFFFFFFFFFFF8);
          v95 = (v68 & 0xFFFFFFFFFFFFFFF8);
          *v94 = *v95;
          *((v94 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
          *(v3 + v13) = v69;
          return v3;
        }

        v57 = v53 - 3;
        if (v53 >= 3)
        {
          if (v10 <= 3)
          {
            v58 = v10;
          }

          else
          {
            v58 = 4;
          }

          if (v58 <= 1)
          {
            if (!v58)
            {
              goto LABEL_113;
            }

            v59 = *v52;
          }

          else if (v58 == 2)
          {
            v59 = *v52;
          }

          else if (v58 == 3)
          {
            v59 = *v52 | (*(((a2 + v6 + 17) & v7) + 2) << 16);
          }

          else
          {
            v59 = *v52;
          }

          if (v10 < 4)
          {
            v59 |= v57 << (8 * v10);
          }

          v53 = v59 + 3;
        }

LABEL_113:
        *v18 = *v52;
        if (v53 == 2)
        {
          v70 = (v18 + v114) & v17;
          v105 = v3;
          v71 = v17;
          v72 = (v52 + v114) & v17;
          v98 = v11;
          v73 = *(v115 + 32);
          v73(v70, v72, v116);
          v74 = v113 + v106 + v72;
          v17 = v71;
          v75 = (v113 + v106 + v70) & v71;
          v76 = v74 & v71;
          v3 = v105;
          v73(v75, v76, v116);
          v11 = v98;
          LOBYTE(v53) = 2;
        }

        else if (v53 != 1)
        {
          (*(v115 + 32))((v18 + v114) & v17, (v52 + v114) & v17, v116);
          LOBYTE(v53) = 0;
        }

        *(v18 + v10) = v53;
        v77 = ((v18 + v112 + 7) & 0xFFFFFFFFFFFFFFF8);
        v78 = ((v52 + v112 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v77 = *v78;
        *((v77 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v78 + 15) & 0xFFFFFFFFFFFFFFF8);
        v79 = v11;
        v80 = ((v18 + v6 + v11) & v7);
        v81 = ((v52 + v6 + v79) & v7);
        v82 = v81[v10];
        v83 = v82 - 3;
        if (v82 < 3)
        {
          goto LABEL_131;
        }

        if (v10 <= 3)
        {
          v84 = v10;
        }

        else
        {
          v84 = 4;
        }

        if (v84 <= 1)
        {
          if (!v84)
          {
LABEL_131:
            *v80 = *v81;
            if (v82 == 2)
            {
              v87 = (v80 + v114) & v17;
              v88 = v3;
              v89 = v17;
              v90 = &v81[v114] & v17;
              v109 = v13;
              v91 = *(v115 + 32);
              v91(v87, v90, v116);
              v92 = (v113 + v106 + v87) & v89;
              v93 = (v113 + v106 + v90) & v89;
              v3 = v88;
              v91(v92, v93, v116);
              v13 = v109;
              LOBYTE(v82) = 2;
            }

            else if (v82 != 1)
            {
              (*(v115 + 32))((v80 + v114) & v17, &v81[v114] & v17, v116);
              LOBYTE(v82) = 0;
            }

            v69 = 0;
            *(v80 + v10) = v82;
            v67 = v80 + v10 + 8;
            v68 = &v81[v10 + 8];
            goto LABEL_136;
          }

          v85 = *v81;
        }

        else if (v84 == 2)
        {
          v85 = *v81;
        }

        else if (v84 == 3)
        {
          v85 = *v81 | (v81[2] << 16);
        }

        else
        {
          v85 = *v81;
        }

        v86 = (v85 | (v83 << (8 * v10))) + 3;
        v82 = v85 + 3;
        if (v10 < 4)
        {
          v82 = v86;
        }

        goto LABEL_131;
      }

      v44 = *v40;
    }

    else if (v43 == 2)
    {
      v44 = *v40;
    }

    else if (v43 == 3)
    {
      v44 = *v40 | (*(((v18 + v6 + v11) & v7) + 2) << 16);
    }

    else
    {
      v44 = *v40;
    }

    v45 = (v44 | (v42 << (8 * v10))) + 3;
    v41 = v44 + 3;
    if (v10 < 4)
    {
      v41 = v45;
    }

    goto LABEL_66;
  }

  return v3;
}

uint64_t sub_2300BA3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80);
  v4 = v3 | 7;
  v5 = ((v3 | 7) + 17) & ~(v3 | 7);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = ((v3 + 8) & ~v3) + v6;
  v8 = ((v7 + v3) & ~v3) + v6;
  if (v7 > v8)
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 + v5;
  v11 = ((v9 + v5 + v4) & ~v4) + v9;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v12 = v11 | 1;
  v13 = 8 * (v11 | 1);
  if ((v11 | 1) <= 3)
  {
    v16 = (a2 + ~(-1 << v13) - 254) >> v13;
    if (v16 > 0xFFFE)
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFE)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (!v16)
    {
LABEL_29:
      v19 = *(a1 + v11);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
    LODWORD(v12) = 4;
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v18 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v18 = *a1;
    }
  }

  else if (v12 == 1)
  {
    v18 = *a1;
  }

  else
  {
    v18 = *a1;
  }

  return (v18 | v17) + 255;
}

void sub_2300BA568(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 80);
  v6 = v5 | 7;
  v7 = ((v5 | 7) + 17) & ~(v5 | 7);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v5 + 8) & ~v5) + v8;
  v10 = ((v9 + v5) & ~v5) + v8;
  if (v9 > v10)
  {
    v10 = v9;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 + v7;
  v13 = ((v11 + v7 + v6) & ~v6) + v11;
  if (v12 > v13)
  {
    v13 = v12;
  }

  v14 = v13 | 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = (a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14);
    if (v18 > 0xFFFE)
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0xFF)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      bzero(a1, v14);
      if (v14 == 1)
      {
        *a1 = v16;
        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v20 = v16 & ~(-1 << (8 * v14));
        *a1 = v20;
        a1[2] = BYTE2(v20);
        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      bzero(a1, v13 | 1);
      *a1 = v16;
      v17 = 1;
      if (v15 <= 1)
      {
LABEL_38:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }
    }

    if (v15 == 2)
    {
      *&a1[v14] = v17;
    }

    else
    {
      *&a1[v14] = v17;
    }

    return;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v13] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_28;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_2300BA788(_DWORD *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 80);
  v3 = v2 | 7;
  v4 = ((v2 | 7) + 17) & ~(v2 | 7);
  v5 = *(*(*(a2 + 16) - 8) + 64);
  v6 = ((v2 + 8) & ~v2) + v5;
  v7 = ((v6 + v2) & ~v2) + v5;
  if (v6 > v7)
  {
    v7 = v6;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = v8 + v4;
  v10 = ((v8 + v4 + v3) & ~v3) + v8;
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a1 + v11);
  if (v12 >= 2 && v11 != 0)
  {
    return (*a1 + 2);
  }

  return v12;
}

void sub_2300BA854(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80);
  v4 = v3 | 7;
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = ((v3 | 7) + 17) & ~(v3 | 7);
  v7 = ((v3 + 8) & ~v3) + v5;
  v8 = ((v7 + v3) & ~v3) + v5;
  if (a2 > 1)
  {
    if (v7 > v8)
    {
      v8 = v7;
    }

    if (v8 <= 8)
    {
      v8 = 8;
    }

    v11 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = ((v11 + v6 + v4) & ~v4) + v11;
    if (v11 + v6 > v12)
    {
      v12 = v11 + v6;
    }

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = a2;
    }

    *(a1 + v12) = v13;
    if (v12)
    {
      v14 = a2 - 2;
      bzero(a1, v12);
      *a1 = v14;
    }
  }

  else
  {
    if (v7 > v8)
    {
      v8 = v7;
    }

    if (v8 <= 8)
    {
      v8 = 8;
    }

    v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = ((v9 + v6 + v4) & ~v4) + v9;
    if (v9 + v6 > v10)
    {
      v10 = v9 + v6;
    }

    *(a1 + v10) = a2;
  }
}

_OWORD *REMMembership.toJSON()@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v44 = sub_23030EB58();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2303167B0;
  *(inited + 32) = 0x44497265626D656DLL;
  *(inited + 40) = 0xE800000000000000;
  v14 = [v2 memberIdentifier];
  sub_23030EBA8();

  v15 = sub_23030EB78();
  v17 = v16;
  v40 = v6;
  v18 = *(v6 + 8);
  v42 = v5;
  v38 = v18;
  v18(v12, v5);
  v19 = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  v20 = v19;
  *(inited + 72) = v19;
  *(inited + 80) = 0x6465696669646F6DLL;
  *(inited + 88) = 0xEA00000000006E4FLL;
  v21 = v2;
  v22 = [v2 modifiedOn];
  sub_23030EB18();

  sub_23030EA48();
  v24 = v23;
  (*(v43 + 8))(v4, v44);
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 96) = v24;
  v25 = sub_23008C5BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0);
  swift_arrayDestroy();
  v26 = [v21 groupIdentifier];
  if (v26)
  {
    v27 = v39;
    v28 = v26;
    sub_23030EBA8();

    v29 = v41;
    v30 = v42;
    (*(v40 + 32))(v41, v27, v42);
    v31 = sub_23030EB78();
    v49 = v20;
    *&v48 = v31;
    *(&v48 + 1) = v32;
    sub_230061914(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v25;
    sub_2300A175C(v47, 0x444970756F7267, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v38(v29, v30);
    v25 = v46;
  }

  result = [v21 isObsolete];
  if (result)
  {
    v49 = MEMORY[0x277D839B0];
    LOBYTE(v48) = 1;
    sub_230061914(&v48, v47);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v25;
    result = sub_2300A175C(v47, 0x656C6F73624F7369, 0xEA00000000006574, v35);
    v25 = v46;
  }

  v36 = v45;
  *v45 = v25;
  *(v36 + 8) = 0;
  return result;
}

id static REMMembership.fromJSON(_:)(uint64_t a1)
{
  v3 = sub_23030EB58();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = sub_23030EBB8();
  v21 = MEMORY[0x28223BE20](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    sub_2300BB7A4();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    v26 = 3;
LABEL_10:
    *(v25 + 16) = v26;
    swift_willThrow();
    return v1;
  }

  v64 = v22;
  v65 = v21;
  v27 = *a1;
  if (!v27[2] || (v63 = v1, v1 = v27, v28 = sub_23005EE00(0x44497265626D656DLL, 0xE800000000000000), (v29 & 1) == 0))
  {
    sub_2300BB7A4();
    swift_allocError();
    *v25 = xmmword_230317450;
    v26 = 1;
    goto LABEL_10;
  }

  sub_23004D5CC(v27[7] + 32 * v28, v71);
  sub_230061914(v71, v72);
  sub_23004D5CC(v72, v71);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v62 = v24;
  sub_23030EB68();

  v30 = v64;
  v31 = *(v64 + 48);
  v1 = v65;
  v61 = v64 + 48;
  v60 = v31;
  if (v31(v19, 1, v65) == 1)
  {
    sub_2300BB7F8(v19);
LABEL_8:
    sub_2300BB7A4();
    swift_allocError();
    *v32 = xmmword_230317450;
    *(v32 + 16) = 2;
    swift_willThrow();
LABEL_37:
    __swift_destroy_boxed_opaque_existential_1(v72);
    return v1;
  }

  v34 = v30 + 32;
  v35 = *(v30 + 32);
  v36 = v62;
  v59 = v34;
  v37 = v35;
  v35();
  if (!v27[2] || (v1 = v27, v38 = sub_23005EE00(0x6465696669646F6DLL, 0xEA00000000006E4FLL), (v39 & 1) == 0))
  {
    sub_2300BB7A4();
    swift_allocError();
    *v43 = xmmword_230317420;
    *(v43 + 16) = 1;
    swift_willThrow();
LABEL_36:
    (*(v64 + 8))(v36, v65);
    goto LABEL_37;
  }

  sub_23004D5CC(v27[7] + 32 * v38, v70);
  sub_230061914(v70, v71);
  sub_23004D5CC(v71, v70);
  if (!swift_dynamicCast())
  {
    sub_2300BB7A4();
    swift_allocError();
    *v44 = xmmword_230317420;
    *(v44 + 16) = 2;
    swift_willThrow();
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v71);
    goto LABEL_36;
  }

  sub_23030EA38();
  if (v27[2] && (v40 = sub_23005EE00(0x444970756F7267, 0xE700000000000000), v1 = MEMORY[0x277D84F70], (v41 & 1) != 0))
  {
    sub_23004D5CC(v27[7] + 32 * v40, v69);
    sub_230061914(v69, v70);
    sub_23004D5CC(v70, v69);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_20:
      sub_2300BB7A4();
      swift_allocError();
      *v42 = xmmword_230317430;
      *(v42 + 16) = 2;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_34:
      (*(v66 + 8))(v73, v67);
      goto LABEL_35;
    }

    sub_23030EB68();

    v1 = v65;
    if (v60(v14, 1, v65) == 1)
    {
      sub_2300BB7F8(v14);
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(v70);
    (v37)(v17, v14, v1);
    (*(v64 + 56))(v17, 0, 1, v1);
  }

  else
  {
    (*(v64 + 56))(v17, 1, 1, v65);
  }

  if (v27[2] && (v45 = sub_23005EE00(0x656C6F73624F7369, 0xEA00000000006574), v1 = MEMORY[0x277D84F70], (v46 & 1) != 0))
  {
    sub_23004D5CC(v27[7] + 32 * v45, v69);
    sub_230061914(v69, v70);
    sub_23004D5CC(v70, v69);
    if (!swift_dynamicCast())
    {
      sub_2300BB7A4();
      swift_allocError();
      *v56 = xmmword_230317440;
      *(v56 + 16) = 2;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v70);
      sub_2300BB7F8(v17);
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1(v70);
    LODWORD(v59) = v68;
  }

  else
  {
    LODWORD(v59) = 0;
  }

  sub_2300BB860(v17, v11);
  (*(v66 + 16))(v6, v73, v67);
  v58 = sub_23030EB88();
  v47 = v65;
  if (v60(v11, 1, v65) == 1)
  {
    v48 = 0;
    v49 = v64;
  }

  else
  {
    v48 = sub_23030EB88();
    v49 = v64;
    (*(v64 + 8))(v11, v47);
  }

  v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v51 = sub_23030EAA8();
  v52 = v50;
  v53 = v58;
  v1 = [v52 initWithMemberIdentifier:v58 groupIdentifier:v48 isObsolete:v59 modifiedOn:v51];

  v54 = v67;
  v55 = *(v66 + 8);
  v55(v6, v67);
  sub_2300BB7F8(v17);
  v55(v73, v54);
  __swift_destroy_boxed_opaque_existential_1(v71);
  (*(v49 + 8))(v62, v47);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v1;
}

id sub_2300BB778@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static REMMembership.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2300BB7A4()
{
  result = qword_27DB14A88;
  if (!qword_27DB14A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A88);
  }

  return result;
}

uint64_t sub_2300BB7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2300BB860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static REMRemindersInCalendarDataView.FetchResultToken.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23004CBA4(0, &qword_280C9B980);
  return sub_230310448() & 1;
}

uint64_t sub_2300BB94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002303404C0 == a2 || (sub_230311048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230311048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2300BBA30(uint64_t a1)
{
  v2 = sub_2300662BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300BBA6C(uint64_t a1)
{
  v2 = sub_2300662BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300BBAA8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23004CBA4(0, &qword_280C9B980);
  return sub_230310448() & 1;
}

uint64_t static REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_2300A702C(*a1, *a2) & 1) == 0 || (sub_2300A702C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_2300A702C(v3, v5);
}

uint64_t sub_2300BBBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2300DA450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2300BBBD4(uint64_t a1)
{
  v2 = sub_23006DB20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300BBC10(uint64_t a1)
{
  v2 = sub_23006DB20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300BBC4C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_2300A702C(*a1, *a2) & 1) == 0 || (sub_2300A702C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_2300A702C(v3, v5);
}

uint64_t sub_2300BBCD0(uint64_t a1)
{
  v2 = sub_23006D41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300BBD0C(uint64_t a1)
{
  v2 = sub_23006D41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300BBD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2300BBDC8(uint64_t a1)
{
  v2 = sub_23006D470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300BBE04(uint64_t a1)
{
  v2 = sub_23006D470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300BBE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002303404E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2300BBEF0(uint64_t a1)
{
  v2 = sub_2300D948C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300BBF2C(uint64_t a1)
{
  v2 = sub_2300D948C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300BBF68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300BBF9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300BBFD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300BC004()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300BC038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id REMRemindersInCalendarDataView.RemindersInCalendarResult.latestFetchResultToken.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  return v2;
}

__n128 REMRemindersInCalendarDataView.RemindersInCalendarResult.init(remindersResult:latestFetchResultToken:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *a2;
  v6 = a2[1];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = v3;
  a3[1].n128_u8[8] = v4;
  a3[2].n128_u64[0] = v5;
  a3[2].n128_u64[1] = v6;
  return result;
}

ReminderKitInternal::REMRemindersInCalendarDataView::Invocation::Parameters __swiftcall REMRemindersInCalendarDataView.Invocation.Parameters.init(lastFetchPredicateVersion:)(ReminderKitInternal::REMRemindersInCalendarDataView::Invocation::Parameters lastFetchPredicateVersion)
{
  *v1 = lastFetchPredicateVersion.lastFetchPredicateVersion.value;
  *(v1 + 8) = lastFetchPredicateVersion.lastFetchPredicateVersion.is_nil;
  return lastFetchPredicateVersion;
}

id REMRemindersInCalendarDataView.Invocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

void sub_2300BC0F4(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v75 = a3;
  v6 = sub_230310A58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[1];
  v87 = *a2;
  *v88 = v10;
  *&v88[9] = *(a2 + 25);
  v89 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v11 = sub_23030E7D8();
  v12 = MEMORY[0x277D84F90];
  v13 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v14 = type metadata accessor for REMStoreObjectsContainer();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = v13;
  v77 = (v15 + 3);
  v76 = v4;
  v16 = v12;
  v17 = v15;
  v15[4] = sub_23004C2B4(v16);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_280C9C460);
  v21 = *(v7 + 16);
  v20 = v7 + 16;
  v19 = v21;
  v21(v9, v18, v6);
  v86 = v14;
  v85 = v17;
  v80 = v17;

  v22 = sub_23030E7C8();
  sub_23004BC18(&v85, v9);
  v22(v84, 0);
  sub_2300DB7CC();
  v81 = v11;
  v23 = v79;
  v24 = sub_23030E7B8();
  if (v23)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v26 = sub_23030EF48();
    __swift_project_value_buffer(v26, qword_27DB17288);
    v27 = v23;
    v28 = sub_23030EF38();
    v29 = sub_230310288();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v85 = v31;
      *v30 = 136315394;
      swift_getErrorValue();
      v32 = Error.rem_errorDescription.getter(v83[5]);
      v34 = sub_23004E30C(v32, v33, &v85);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v84[0] = type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F70);
      v35 = sub_23030F948();
      v37 = sub_23004E30C(v35, v36, &v85);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_230044000, v28, v29, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v31, -1, -1);
      MEMORY[0x231914180](v30, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v38 = v25;
    v69 = v19;
    v70 = v18;
    v71 = v14;
    v72 = v9;
    v73 = v20;
    v74 = v6;
    v39 = v24;
    v40 = v77;
    swift_beginAccess();
    v41 = *v40;
    v42 = objc_allocWithZone(MEMORY[0x277D44860]);

    v83[0] = [v42 init];
    v77 = type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation();
    v85 = v77;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F70);
    v44 = sub_23030F948();
    v46 = v45;
    v79 = &v67;
    MEMORY[0x28223BE20](v44);
    *(&v67 - 6) = v83;
    *(&v67 - 5) = &v89;
    *(&v67 - 4) = v78;
    *(&v67 - 3) = v39;
    *(&v67 - 2) = v38;
    *(&v67 - 1) = v41;
    v47 = sub_230310268();
    sub_2300535B4(v47, v44, v46, v47, sub_230052C20, (&v67 - 8));
    v48 = v38;
    v78 = v39;

    sub_23030E7A8();
    swift_allocObject();
    v79 = sub_23030E798();
    v49 = v83[0];
    v50 = [v83[0] resultStorages];
    v51 = sub_23030F658();

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v85 = v51;
    sub_23004D5CC(&v85, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v68 = v48;
      v67 = v43;
      v52 = v82;
      __swift_destroy_boxed_opaque_existential_1(&v85);
      v53 = v71;
      v54 = swift_allocObject();
      v55 = v76;
      v54[2] = v76;
      v54[3] = v52;
      v56 = v55;
      v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v57 = v72;
      v69(v72, v70, v74);
      v86 = v53;
      v85 = v54;

      v58 = sub_23030E788();
      sub_23004BC18(&v85, v57);
      v58(v84, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
      v59 = v49;
      v60 = [v49 resultData];
      v61 = sub_23030EA18();
      v63 = v62;

      sub_2300DB820();
      sub_23030E778();
      sub_23005FE3C(v61, v63);
      v64 = v85;
      v65 = [v59 latestFetchResultToken];

      sub_23005FE3C(v78, v68);

      v66 = v75;
      *v75 = v64;
      v66[1] = v65;
    }

    else
    {
      sub_23004D5CC(&v85, v84);
      sub_2301FEB10(v84, 0, 0);
      sub_2300DA5F0(v84);
      swift_willThrow();
      sub_23005FE3C(v78, v48);

      __swift_destroy_boxed_opaque_existential_1(&v85);
    }
  }
}

double sub_2300BCC08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v76 = a1;
  v73 = a3;
  v6 = sub_230310A58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85[3] = a2;
  v85[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v10 = sub_23030E7D8();
  v11 = MEMORY[0x277D84F90];
  v12 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v13 = type metadata accessor for REMStoreObjectsContainer();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v12;
  *&v75 = v14 + 3;
  v74 = v4;
  v15 = v11;
  v16 = v14;
  v14[4] = sub_23004C2B4(v15);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_280C9C460);
  v20 = *(v7 + 16);
  v19 = v7 + 16;
  v18 = v20;
  v20(v9, v17, v6);
  v84 = v13;
  *&v83 = v16;
  v78 = v16;

  v21 = sub_23030E7C8();
  sub_23004BC18(&v83, v9);
  v21(v82, 0);
  sub_2300DB724();
  v79 = v10;
  v22 = v77;
  v23 = sub_23030E7B8();
  if (v22)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v25 = sub_23030EF48();
    __swift_project_value_buffer(v25, qword_27DB17288);
    v26 = v22;
    v27 = sub_23030EF38();
    v28 = sub_230310288();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v83 = v30;
      *v29 = 136315394;
      swift_getErrorValue();
      v31 = Error.rem_errorDescription.getter(v81[5]);
      v33 = sub_23004E30C(v31, v32, &v83);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v82[0] = type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F58);
      v34 = sub_23030F948();
      v36 = sub_23004E30C(v34, v35, &v83);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_230044000, v27, v28, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v30, -1, -1);
      MEMORY[0x231914180](v29, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v38 = v24;
    v67 = v18;
    v68 = v17;
    v69 = v13;
    v70 = v9;
    v71 = v19;
    v72 = v6;
    v39 = v23;
    v40 = v75;
    swift_beginAccess();
    v41 = *v40;
    v42 = objc_allocWithZone(MEMORY[0x277D44860]);

    v81[0] = [v42 init];
    v43 = type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation();
    *&v83 = v43;
    *&v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F58);
    v44 = sub_23030F948();
    v46 = v45;
    v77 = v66;
    MEMORY[0x28223BE20](v44);
    v66[-6] = v81;
    v66[-5] = v85;
    v66[-4] = v76;
    v66[-3] = v39;
    v47 = v39;
    v66[-2] = v38;
    v66[-1] = v41;
    v48 = sub_230310268();
    sub_2300535B4(v48, v44, v46, v48, sub_230052C20, &v66[-8]);
    v49 = v38;
    v66[1] = v43;
    v76 = v47;

    sub_23030E7A8();
    swift_allocObject();
    v77 = sub_23030E798();
    v50 = v81[0];
    v51 = [v81[0] resultStorages];
    v52 = sub_23030F658();

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v83 = v52;
    sub_23004D5CC(&v83, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v66[0] = v49;
      v53 = v80;
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v54 = v69;
      v55 = swift_allocObject();
      v56 = v74;
      v55[2] = v74;
      v55[3] = v53;
      v57 = v56;
      v55[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v58 = v70;
      v67(v70, v68, v72);
      v84 = v54;
      *&v83 = v55;

      v59 = sub_23030E788();
      sub_23004BC18(&v83, v58);
      v59(v82, 0);
      v60 = [v50 resultData];
      v61 = sub_23030EA18();
      v63 = v62;

      sub_2300DB778();
      sub_23030E778();
      sub_23005FE3C(v61, v63);
      v75 = v83;
      v64 = [v50 latestFetchResultToken];

      sub_23005FE3C(v76, v66[0]);

      v65 = v73;
      result = *&v75;
      *v73 = v75;
      *(v65 + 2) = v64;
    }

    else
    {
      sub_23004D5CC(&v83, v82);
      sub_2301FEB10(v82, 0, 0);
      sub_2300DA5F0(v82);
      swift_willThrow();
      sub_23005FE3C(v76, v49);

      __swift_destroy_boxed_opaque_existential_1(&v83);
    }
  }

  return result;
}

void sub_2300BD6E0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v4 = v3;
  v77 = a1;
  v73 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v81 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v76 = v12 + 3;
  v75 = v4;
  v12[4] = sub_23004C2B4(v9);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280C9C460);
  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v14 = v16;
  v74 = v13;
  (v16)(v8);
  *(&v91 + 1) = v11;
  *&v90 = v12;
  v80 = v12;

  v17 = sub_23030E7C8();
  sub_23004BC18(&v90, v8);
  v17(&v82, 0);
  type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  sub_230066350(&qword_27DB14F38, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
  v18 = v79;
  v19 = sub_23030E7B8();
  if (v18)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v21 = sub_23030EF48();
    __swift_project_value_buffer(v21, qword_27DB17288);
    v22 = v18;
    v23 = sub_23030EF38();
    v24 = sub_230310288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v90 = v26;
      *v25 = 136315394;
      swift_getErrorValue();
      v27 = Error.rem_errorDescription.getter(v99[5]);
      v29 = sub_23004E30C(v27, v28, &v90);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *&v82 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F40);
      v30 = sub_23030F948();
      v32 = sub_23004E30C(v30, v31, &v90);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_230044000, v23, v24, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v26, -1, -1);
      MEMORY[0x231914180](v25, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v33 = v19;
    v68 = v14;
    v69 = v11;
    v70 = v15;
    v71 = v8;
    v72 = v5;
    v79 = 0;
    v34 = v20;
    v35 = v76;
    swift_beginAccess();
    v36 = *v35;
    v37 = objc_allocWithZone(MEMORY[0x277D44860]);

    v99[0] = [v37 init];
    v38 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation();
    *&v90 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F40);
    v40 = sub_23030F948();
    v42 = v41;
    v78 = v66;
    MEMORY[0x28223BE20](v40);
    v66[-6] = v99;
    v66[-5] = &v100;
    v66[-4] = v77;
    v66[-3] = v33;
    v66[-2] = v34;
    v66[-1] = v36;
    v43 = sub_230310268();
    v44 = v79;
    sub_2300535B4(v43, v40, v42, v43, sub_230052C20, &v66[-8]);
    if (v44)
    {

      sub_23005FE3C(v33, v34);

      v45 = v99[0];
    }

    else
    {
      v76 = v33;
      v66[1] = v39;
      v66[2] = v38;
      v67 = v34;

      sub_23030E7A8();
      swift_allocObject();
      v78 = sub_23030E798();
      v77 = v99[0];
      v46 = [v99[0] resultStorages];
      v47 = sub_23030F658();

      *(&v91 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v90 = v47;
      sub_23004D5CC(&v90, &v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v48 = v98;
        __swift_destroy_boxed_opaque_existential_1(&v90);
        v49 = v69;
        v50 = swift_allocObject();
        v51 = v75;
        v50[2] = v75;
        v50[3] = v48;
        v52 = v51;
        v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v53 = v71;
        v68(v71, v74, v72);
        *(&v91 + 1) = v49;
        *&v90 = v50;

        v54 = sub_23030E788();
        sub_23004BC18(&v90, v53);
        v54(&v82, 0);
        v55 = [v77 resultData];
        v56 = sub_23030EA18();
        v58 = v57;

        sub_2300DB6D0();
        sub_23030E778();
        sub_23005FE3C(v56, v58);
        v86 = v94;
        v87 = v95;
        v88 = v96;
        v89 = v97;
        v82 = v90;
        v83 = v91;
        v84 = v92;
        v85 = v93;
        v59 = v77;
        v60 = [v77 latestFetchResultToken];

        sub_23005FE3C(v76, v67);

        v61 = v87;
        v62 = v73;
        *(v73 + 64) = v86;
        *(v62 + 80) = v61;
        v63 = v89;
        *(v62 + 96) = v88;
        *(v62 + 112) = v63;
        v64 = v83;
        *v62 = v82;
        *(v62 + 16) = v64;
        v65 = v85;
        *(v62 + 32) = v84;
        *(v62 + 48) = v65;
        *(v62 + 128) = v60;
        return;
      }

      sub_23004D5CC(&v90, &v82);
      sub_2301FEB10(&v82, 0, 0);
      sub_2300DA5F0(&v82);
      swift_willThrow();
      sub_23005FE3C(v76, v67);

      __swift_destroy_boxed_opaque_existential_1(&v90);
      v45 = v77;
    }
  }
}

void sub_2300BE2D4(void (*a1)(void (*)(uint64_t), uint64_t, uint64_t)@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(void (*)(uint64_t), uint64_t, uint64_t)@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, void (*a8)(void)@<X7>, _BYTE *a9@<X8>)
{
  v77 = a8;
  v80 = a7;
  v83 = a6;
  v82 = a5;
  v81 = a4;
  v85 = a3;
  v84 = a2;
  v10 = v9;
  v79 = a1;
  v75 = a9;
  v11 = sub_230310A58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = v9;
  sub_23030E7E8();
  swift_allocObject();
  v88 = sub_23030E7D8();
  v15 = MEMORY[0x277D84F90];
  v16 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v17 = type metadata accessor for REMStoreObjectsContainer();
  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = v16;
  v78 = (v18 + 3);
  v76 = v10;
  v19 = v15;
  v20 = v18;
  v18[4] = sub_23004C2B4(v19);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v11, qword_280C9C460);
  v24 = *(v12 + 16);
  v22 = v12 + 16;
  v23 = v24;
  v24(v14, v21, v11);
  v93 = v17;
  v92 = v20;
  v87 = v20;

  v25 = sub_23030E7C8();
  sub_23004BC18(&v92, v14);
  v26 = v25(&v91, 0);
  v84(v26);
  v27 = v86;
  v28 = sub_23030E7B8();
  if (v27)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v30 = sub_23030EF48();
    __swift_project_value_buffer(v30, qword_27DB17288);
    v31 = v27;
    v32 = sub_23030EF38();
    v33 = sub_230310288();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v92 = v35;
      *v34 = 136315394;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter(v90[5]);
      v38 = sub_23004E30C(v36, v37, &v92);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v91 = (v81)(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v82);
      v39 = sub_23030F948();
      v41 = sub_23004E30C(v39, v40, &v92);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_230044000, v32, v33, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v35, -1, -1);
      MEMORY[0x231914180](v34, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v42 = v29;
    v71 = v23;
    v72 = v21;
    v73 = v17;
    v74 = v22;
    v84 = v14;
    v85 = v11;
    v43 = v78;
    v44 = v28;
    swift_beginAccess();
    v45 = *v43;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v90[0] = [v46 init];
    v47 = (v81)(0);
    v92 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v82);
    v49 = sub_23030F948();
    v51 = v50;
    v86 = &v71;
    MEMORY[0x28223BE20](v49);
    *(&v71 - 6) = v90;
    *(&v71 - 5) = &v94;
    *(&v71 - 4) = v79;
    *(&v71 - 3) = v44;
    *(&v71 - 2) = v42;
    *(&v71 - 1) = v45;
    v52 = sub_230310268();
    sub_2300535B4(v52, v49, v51, v52, v80, (&v71 - 8));
    v53 = v42;
    v82 = v48;
    v83 = v47;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v54 = v90[0];
    v55 = [v90[0] resultStorages];
    v56 = sub_23030F658();

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v92 = v56;
    sub_23004D5CC(&v92, &v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v81 = v44;
      v86 = v53;
      v57 = v89;
      __swift_destroy_boxed_opaque_existential_1(&v92);
      v58 = v73;
      v59 = swift_allocObject();
      v60 = v76;
      v59[2] = v76;
      v59[3] = v57;
      v61 = v60;
      v59[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v62 = v84;
      v71(v84, v72, v85);
      v93 = v58;
      v92 = v59;

      v63 = v54;
      v64 = sub_23030E788();
      sub_23004BC18(&v92, v62);
      v64(&v91, 0);
      v65 = [v63 resultData];
      v66 = sub_23030EA18();
      v68 = v67;

      v77();
      sub_23030E778();
      sub_23005FE3C(v66, v68);
      LOBYTE(v65) = v92;
      v69 = [v63 latestFetchResultToken];

      sub_23005FE3C(v81, v86);

      v70 = v75;
      *v75 = v65;
      *(v70 + 1) = v69;
    }

    else
    {
      sub_23004D5CC(&v92, &v91);
      sub_2301FEB10(&v91, 0, 0);
      sub_2300DA5F0(&v91);
      swift_willThrow();
      sub_23005FE3C(v44, v53);

      __swift_destroy_boxed_opaque_existential_1(&v92);
    }
  }
}

void sub_2300BEE10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v70 = a1;
  v67 = a3;
  v74 = sub_230310A58();
  v6 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[3] = a2;
  v80[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v10 = MEMORY[0x277D84F90];
  v11 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v12 = type metadata accessor for REMStoreObjectsContainer();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = v11;
  v69 = v4;
  v13[4] = sub_23004C2B4(v10);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v74, qword_280C9C460);
  v17 = *(v6 + 16);
  v16 = v6 + 16;
  v15 = v17;
  v68 = v14;
  (v17)(v8);
  v79 = v12;
  v78 = v13;
  v72 = v13;

  v18 = sub_23030E7C8();
  sub_23004BC18(&v78, v8);
  v18(v77, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_23006DB8C(&qword_280C9B990, qword_280C9BFD8);
  v73 = v9;
  v19 = v71;
  v20 = sub_23030E7B8();
  if (v19)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v22 = sub_23030EF48();
    __swift_project_value_buffer(v22, qword_27DB17288);
    v23 = v19;
    v24 = sub_23030EF38();
    v25 = sub_230310288();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v78 = v27;
      *v26 = 136315394;
      swift_getErrorValue();
      v28 = Error.rem_errorDescription.getter(v76[5]);
      v30 = sub_23004E30C(v28, v29, &v78);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v77[0] = type metadata accessor for REMListStableSortingDataView.Invocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EF8);
      v31 = sub_23030F948();
      v33 = sub_23004E30C(v31, v32, &v78);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_230044000, v24, v25, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v27, -1, -1);
      MEMORY[0x231914180](v26, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v34 = v21;
    v63 = v15;
    v64 = v12;
    v65 = v8;
    v66 = v16;
    v35 = v20;
    swift_beginAccess();
    v36 = v13[3];
    v37 = objc_allocWithZone(MEMORY[0x277D44860]);

    v76[0] = [v37 init];
    v62 = type metadata accessor for REMListStableSortingDataView.Invocation();
    v78 = v62;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EF8);
    v39 = sub_23030F948();
    v41 = v40;
    v71 = &v60;
    MEMORY[0x28223BE20](v39);
    *(&v60 - 6) = v76;
    *(&v60 - 5) = v80;
    *(&v60 - 4) = v70;
    *(&v60 - 3) = v35;
    *(&v60 - 2) = v34;
    *(&v60 - 1) = v36;
    v42 = sub_230310268();
    sub_2300535B4(v42, v39, v41, v42, sub_230052C20, (&v60 - 8));
    v61 = v34;
    v60 = v38;
    v70 = v35;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v43 = v76[0];
    v44 = [v76[0] resultStorages];
    v45 = sub_23030F658();

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v78 = v45;
    sub_23004D5CC(&v78, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v46 = v75;
      __swift_destroy_boxed_opaque_existential_1(&v78);
      v47 = v64;
      v48 = swift_allocObject();
      v49 = v69;
      v48[2] = v69;
      v48[3] = v46;
      v50 = v49;
      v48[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v51 = v65;
      v63(v65, v68, v74);
      v79 = v47;
      v78 = v48;

      v52 = sub_23030E788();
      sub_23004BC18(&v78, v51);
      v52(v77, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F00);
      v53 = [v43 resultData];
      v54 = sub_23030EA18();
      v56 = v55;

      sub_2300DB3EC();
      sub_23030E778();
      sub_23005FE3C(v54, v56);
      v57 = v78;
      v58 = [v43 latestFetchResultToken];

      sub_23005FE3C(v70, v61);

      v59 = v67;
      *v67 = v57;
      v59[1] = v58;
    }

    else
    {
      sub_23004D5CC(&v78, v77);
      sub_2301FEB10(v77, 0, 0);
      sub_2300DA5F0(v77);
      swift_willThrow();
      sub_23005FE3C(v70, v61);

      __swift_destroy_boxed_opaque_existential_1(&v78);
    }
  }
}

double sub_2300BF9CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, _OWORD *a7@<X8>)
{
  v79 = a6;
  *&v82 = a5;
  v81 = a4;
  v80 = a3;
  v8 = v7;
  v85 = a2;
  v78 = a1;
  v74 = a7;
  v9 = sub_230310A58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v7;
  sub_23030E7E8();
  swift_allocObject();
  v13 = sub_23030E7D8();
  v14 = MEMORY[0x277D84F90];
  v15 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v16 = type metadata accessor for REMStoreObjectsContainer();
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = v15;
  v77 = v17 + 3;
  v18 = v8;
  v19 = v17;
  v76 = v18;
  v17[4] = sub_23004C2B4(v14);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_280C9C460);
  v23 = *(v10 + 16);
  v22 = v10 + 16;
  v21 = v23;
  v75 = v20;
  (v23)(v12);
  v90 = v16;
  *&v89 = v19;
  v84 = v19;

  v24 = sub_23030E7C8();
  sub_23004BC18(&v89, v12);
  v24(&v88, 0);
  type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0);
  sub_230066350(&qword_27DB14ED8, type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters);
  v85 = v13;
  v25 = v83;
  v26 = sub_23030E7B8();
  v83 = v27;
  if (v25)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v28 = sub_23030EF48();
    __swift_project_value_buffer(v28, qword_27DB17288);
    v29 = v25;
    v30 = sub_23030EF38();
    v31 = sub_230310288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v89 = v33;
      *v32 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter(v87[5]);
      v36 = sub_23004E30C(v34, v35, &v89);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v88 = v80(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v81);
      v37 = sub_23030F948();
      v39 = sub_23004E30C(v37, v38, &v89);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_230044000, v30, v31, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v33, -1, -1);
      MEMORY[0x231914180](v32, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v41 = v26;
    v69 = v21;
    v70 = v16;
    v72 = v22;
    v71 = v12;
    v73 = v9;
    v42 = v77;
    swift_beginAccess();
    v43 = *v42;
    v44 = objc_allocWithZone(MEMORY[0x277D44860]);

    v87[0] = [v44 init];
    v45 = v80(0);
    *&v89 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v81);
    v47 = sub_23030F948();
    v49 = v48;
    MEMORY[0x28223BE20](v47);
    *(&v68 - 6) = v87;
    *(&v68 - 5) = &v91;
    *(&v68 - 4) = v78;
    *(&v68 - 3) = v41;
    *(&v68 - 2) = v83;
    *(&v68 - 1) = v43;
    v50 = sub_230310268();
    sub_2300535B4(v50, v47, v49, v50, v79, (&v68 - 8));
    v81 = v46;
    *&v82 = v45;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v51 = v87[0];
    v52 = [v87[0] resultStorages];
    v53 = sub_23030F658();

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v89 = v53;
    sub_23004D5CC(&v89, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v54 = v86;
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v55 = v70;
      v56 = swift_allocObject();
      v57 = v76;
      v56[2] = v76;
      v56[3] = v54;
      v58 = v57;
      v56[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v59 = v71;
      v69(v71, v75, v73);
      v90 = v55;
      *&v89 = v56;

      v60 = sub_23030E788();
      sub_23004BC18(&v89, v59);
      v60(&v88, 0);
      v61 = [v51 resultData];
      v62 = v51;
      v63 = sub_23030EA18();
      v65 = v64;

      sub_2300DB398();
      sub_23030E778();
      sub_23005FE3C(v63, v65);
      v82 = v89;
      v66 = [v62 latestFetchResultToken];

      sub_23005FE3C(v41, v83);

      v67 = v74;
      result = *&v82;
      *v74 = v82;
      *(v67 + 2) = v66;
    }

    else
    {
      sub_23004D5CC(&v89, &v88);
      sub_2301FEB10(&v88, 0, 0);
      sub_2300DA5F0(&v88);
      swift_willThrow();
      sub_23005FE3C(v41, v83);

      __swift_destroy_boxed_opaque_existential_1(&v89);
    }
  }

  return result;
}

void sub_2300C04DC(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v100 = a1;
  v96 = a4;
  v98 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result(0);
  v8 = MEMORY[0x28223BE20](v98);
  v99 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = v85 - v10;
  v103 = sub_230310A58();
  v11 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v13 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a2;
  v111 = a3;
  v112 = v5;
  sub_23030E7E8();
  swift_allocObject();
  v14 = sub_23030E7D8();
  v15 = MEMORY[0x277D84F90];
  v16 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v17 = type metadata accessor for REMStoreObjectsContainer();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = v16;
  v19 = v18 + 3;
  v97 = v5;
  v20 = v15;
  v21 = v18;
  v18[4] = sub_23004C2B4(v20);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v22 = v103;
  v23 = __swift_project_value_buffer(v103, qword_280C9C460);
  v26 = *(v11 + 16);
  v24 = v11 + 16;
  v25 = v26;
  v26(v13, v23, v22);
  v109 = v17;
  v108 = v21;
  v102 = v21;

  v27 = sub_23030E7C8();
  sub_23004BC18(&v108, v13);
  v27(&v107, 0);
  sub_2300DB214();
  v28 = v101;
  v29 = sub_23030E7B8();
  if (v28)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v31 = sub_23030EF48();
    __swift_project_value_buffer(v31, qword_27DB17288);
    v32 = v28;
    v33 = sub_23030EF38();
    v34 = sub_230310288();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v108 = v36;
      *v35 = 136315394;
      swift_getErrorValue();
      v37 = Error.rem_errorDescription.getter(v106[5]);
      v39 = sub_23004E30C(v37, v38, &v108);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v107 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EC0);
      v40 = sub_23030F948();
      v42 = sub_23004E30C(v40, v41, &v108);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_230044000, v33, v34, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v36, -1, -1);
      MEMORY[0x231914180](v35, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v90 = v25;
    v91 = v23;
    v92 = v13;
    v93 = v24;
    v89 = v17;
    v101 = v14;
    v43 = v30;
    v44 = v29;
    swift_beginAccess();
    v45 = *v19;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v106[0] = [v46 init];
    v88 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation();
    v108 = v88;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EC0);
    v48 = sub_23030F948();
    v50 = v49;
    v94 = v85;
    MEMORY[0x28223BE20](v48);
    v85[-6] = v106;
    v85[-5] = &v112;
    v85[-4] = v100;
    v85[-3] = v44;
    v100 = v44;
    v85[-2] = v43;
    v85[-1] = v45;
    v51 = sub_230310268();
    sub_2300535B4(v51, v48, v50, v51, sub_230052C60, &v85[-8]);
    v85[1] = v47;
    v87 = v43;
    v86 = 0;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v52 = v106[0];
    v53 = [v106[0] resultStorages];
    v54 = sub_23030F658();

    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v108 = v54;
    sub_23004D5CC(&v108, &v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v55 = v105;
      __swift_destroy_boxed_opaque_existential_1(&v108);
      v56 = v89;
      v57 = swift_allocObject();
      v58 = v97;
      v57[2] = v97;
      v57[3] = v55;
      v59 = v58;
      v57[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v60 = v92;
      v90(v92, v91, v103);
      v109 = v56;
      v108 = v57;

      v61 = sub_23030E788();
      sub_23004BC18(&v108, v60);
      v61(&v107, 0);
      v62 = [v52 resultData];
      v63 = sub_23030EA18();
      v65 = v64;

      sub_230066350(&qword_27DB14EC8, type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
      v66 = v99;
      v67 = v86;
      sub_23030E778();
      if (v67)
      {
        v99 = v57;
        v103 = v52;
        sub_23005FE3C(v63, v65);
        if (qword_27DB13C28 != -1)
        {
          swift_once();
        }

        v68 = sub_23030EF48();
        __swift_project_value_buffer(v68, qword_27DB17288);
        v69 = v67;
        v70 = sub_23030EF38();
        v71 = sub_230310288();

        v72 = os_log_type_enabled(v70, v71);
        v73 = v88;
        if (v72)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v108 = v75;
          *v74 = 136315394;
          swift_getErrorValue();
          v76 = Error.rem_errorDescription.getter(v104);
          v78 = sub_23004E30C(v76, v77, &v108);

          *(v74 + 4) = v78;
          *(v74 + 12) = 2080;
          v107 = v73;
          v79 = sub_23030F948();
          v81 = sub_23004E30C(v79, v80, &v108);

          *(v74 + 14) = v81;
          _os_log_impl(&dword_230044000, v70, v71, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v74, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231914180](v75, -1, -1);
          MEMORY[0x231914180](v74, -1, -1);
        }

        swift_willThrow();
        sub_23005FE3C(v100, v87);
      }

      else
      {
        sub_23005FE3C(v63, v65);
        v82 = v95;
        sub_2300DB268(v66, v95, type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
        v83 = v96;
        sub_2300DB2D0(v82, v96, type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
        v84 = [v52 latestFetchResultToken];

        sub_23005FE3C(v100, v87);

        sub_2300DB338(v82, type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);

        *(v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14ED0) + 28)) = v84;
      }
    }

    else
    {
      sub_23004D5CC(&v108, &v107);
      sub_2301FEB10(&v107, 0, 0);
      sub_2300DA5F0(&v107);
      swift_willThrow();
      sub_23005FE3C(v100, v87);

      __swift_destroy_boxed_opaque_existential_1(&v108);
    }
  }
}

double sub_2300C10B0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v4 = v3;
  v93 = a1;
  v89 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v97 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v92 = v12 + 3;
  v91 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v90 = v15;
  (v18)(v8);
  *(&v108 + 1) = v11;
  *&v107 = v14;
  v96 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v107, v8);
  v19(&v98, 0);
  type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters(0);
  sub_230066350(&qword_27DB14E90, type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
  v20 = v95;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v107 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v116[5]);
      v31 = sub_23004E30C(v29, v30, &v107);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v98 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E98);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v107);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v84 = v16;
    v85 = v11;
    v86 = v17;
    v87 = v8;
    v88 = v5;
    v95 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v92;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v116[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation();
    *&v107 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E98);
    v43 = sub_23030F948();
    v45 = v44;
    v94 = &v82;
    MEMORY[0x28223BE20](v43);
    *(&v82 - 6) = v116;
    *(&v82 - 5) = &v117;
    *(&v82 - 4) = v93;
    *(&v82 - 3) = v37;
    *(&v82 - 2) = v36;
    *(&v82 - 1) = v39;
    v46 = sub_230310268();
    v47 = v95;
    sub_2300535B4(v46, v43, v45, v46, sub_230052C20, (&v82 - 8));
    v95 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v82 = v42;
      v83 = v41;
      v92 = v36;
      v93 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v116[0];
      v50 = [v116[0] resultStorages];
      v51 = sub_23030F658();

      *(&v108 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v107 = v51;
      sub_23004D5CC(&v107, &v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v115;
        __swift_destroy_boxed_opaque_existential_1(&v107);
        v53 = v85;
        v54 = swift_allocObject();
        v55 = v91;
        v54[2] = v91;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v87;
        v84(v87, v90, v88);
        *(&v108 + 1) = v53;
        *&v107 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v107, v57);
        v58(&v98, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EA0);
        v94 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_27DB14EA8, &qword_27DB14EA0);
        v63 = v95;
        sub_23030E778();
        if (v63)
        {
          v95 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v107 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v106);
            v72 = sub_23004E30C(v70, v71, &v107);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v98 = v83;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v107);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v93, v92);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v102 = v111;
          v103 = v112;
          v104 = v113;
          v105 = v114;
          v98 = v107;
          v99 = v108;
          v100 = v109;
          v101 = v110;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v93, v92);

          v77 = v103;
          v78 = v89;
          *(v89 + 64) = v102;
          *(v78 + 80) = v77;
          v79 = v105;
          *(v78 + 96) = v104;
          *(v78 + 112) = v79;
          v80 = v99;
          *v78 = v98;
          *(v78 + 16) = v80;
          result = *&v100;
          v81 = v101;
          *(v78 + 32) = v100;
          *(v78 + 48) = v81;
          *(v78 + 128) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v107, &v98);
        sub_2301FEB10(&v98, 0, 0);
        sub_2300DA5F0(&v98);
        swift_willThrow();
        sub_23005FE3C(v93, v92);

        __swift_destroy_boxed_opaque_existential_1(&v107);
      }
    }
  }

  return result;
}

double sub_2300C1B0C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v96 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v105 + 1) = v11;
  *&v104 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v104, v8);
  v19(&v97, 0);
  type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters(0);
  sub_230066350(&qword_280C97D48, type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v104 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v111[5]);
      v31 = sub_23004E30C(v29, v30, &v104);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v97 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EB0);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v104);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v111[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation();
    *&v104 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14EB0);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = &v81;
    MEMORY[0x28223BE20](v43);
    *(&v81 - 6) = v111;
    *(&v81 - 5) = &v112;
    *(&v81 - 4) = v92;
    *(&v81 - 3) = v37;
    *(&v81 - 2) = v36;
    *(&v81 - 1) = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_230052C20, (&v81 - 8));
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81 = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v111[0];
      v50 = [v111[0] resultStorages];
      v51 = sub_23030F658();

      *(&v105 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v104 = v51;
      sub_23004D5CC(&v104, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v110;
        __swift_destroy_boxed_opaque_existential_1(&v104);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v105 + 1) = v53;
        *&v104 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v104, v57);
        v58(&v97, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D48);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_280C97928, &qword_27DB14D48);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v104 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v103);
            v72 = sub_23004E30C(v70, v71, &v104);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v97 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v104);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v99 = v106;
          v100 = v107;
          v101 = v108;
          v102 = v109;
          v97 = v104;
          v98 = v105;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v100;
          v78 = v88;
          *(v88 + 32) = v99;
          *(v78 + 48) = v77;
          v79 = v102;
          *(v78 + 64) = v101;
          *(v78 + 80) = v79;
          result = *&v97;
          v80 = v98;
          *v78 = v97;
          *(v78 + 16) = v80;
          *(v78 + 96) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v104, &v97);
        sub_2301FEB10(&v97, 0, 0);
        sub_2300DA5F0(&v97);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v104);
      }
    }
  }

  return result;
}

double sub_2300C2558@<D0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v76 = a1;
  v5 = v4;
  v72 = a4;
  v98[8] = a2;
  v99 = a3;
  v100 = BYTE2(a3);
  v6 = sub_230310A58();
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v4;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v10 = MEMORY[0x277D84F90];
  v11 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v12 = type metadata accessor for REMStoreObjectsContainer();
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v11;
  v75 = v13 + 3;
  v74 = v5;
  v14 = v10;
  v15 = v13;
  v13[4] = sub_23004C2B4(v14);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280C9C460);
  v17 = v80 + 16;
  v18 = *(v80 + 2);
  v73 = v16;
  v18(v8);
  *(&v90 + 1) = v12;
  *&v89 = v15;
  v78 = v15;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v89, v8);
  v19(&v81, 0);
  sub_2300DB16C();
  v79 = v9;
  v20 = v77;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v89 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v98[5]);
      v31 = sub_23004E30C(v29, v30, &v89);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v81 = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E58);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v89);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v68 = v18;
    v69 = v12;
    v80 = v17;
    v70 = v8;
    v71 = v6;
    v77 = v22;
    v36 = v21;
    v37 = v75;
    swift_beginAccess();
    v38 = *v37;
    v39 = objc_allocWithZone(MEMORY[0x277D44860]);

    v98[0] = [v39 init];
    v67 = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation();
    *&v89 = v67;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E58);
    v41 = sub_23030F948();
    v43 = v42;
    v75 = v66;
    MEMORY[0x28223BE20](v41);
    v66[-6] = v98;
    v66[-5] = &v101;
    v66[-4] = v76;
    v66[-3] = v36;
    v66[-2] = v77;
    v66[-1] = v38;
    v44 = sub_230310268();
    sub_2300535B4(v44, v41, v43, v44, sub_230052C20, &v66[-8]);
    v66[1] = v40;
    v76 = v36;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v45 = v98[0];
    v46 = [v98[0] resultStorages];
    v47 = sub_23030F658();

    *(&v90 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v89 = v47;
    sub_23004D5CC(&v89, &v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v48 = v97;
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v49 = v69;
      v50 = swift_allocObject();
      v51 = v74;
      v50[2] = v74;
      v50[3] = v48;
      v52 = v51;
      v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v53 = v70;
      v68(v70, v73, v71);
      *(&v90 + 1) = v49;
      *&v89 = v50;

      v54 = sub_23030E788();
      sub_23004BC18(&v89, v53);
      v54(&v81, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E60);
      v80 = v45;
      v55 = [v45 resultData];
      v56 = sub_23030EA18();
      v58 = v57;

      sub_2300DB1C0(&qword_27DB14E68, &qword_27DB14E60);
      sub_23030E778();
      sub_23005FE3C(v56, v58);
      v85 = v93;
      v86 = v94;
      v87 = v95;
      v88 = v96;
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v84 = v92;
      v59 = v80;
      v60 = [v80 latestFetchResultToken];

      sub_23005FE3C(v76, v77);

      v61 = v86;
      v62 = v72;
      *(v72 + 64) = v85;
      *(v62 + 80) = v61;
      v63 = v88;
      *(v62 + 96) = v87;
      *(v62 + 112) = v63;
      v64 = v82;
      *v62 = v81;
      *(v62 + 16) = v64;
      result = *&v83;
      v65 = v84;
      *(v62 + 32) = v83;
      *(v62 + 48) = v65;
      *(v62 + 128) = v60;
    }

    else
    {
      sub_23004D5CC(&v89, &v81);
      sub_2301FEB10(&v81, 0, 0);
      sub_2300DA5F0(&v81);
      swift_willThrow();
      sub_23005FE3C(v76, v77);

      __swift_destroy_boxed_opaque_existential_1(&v89);
    }
  }

  return result;
}

double sub_2300C2F8C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v76 = a1;
  v5 = v4;
  v72 = a4;
  v98[8] = a2;
  v99 = a3;
  v100 = BYTE2(a3);
  v6 = sub_230310A58();
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v4;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v10 = MEMORY[0x277D84F90];
  v11 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v12 = type metadata accessor for REMStoreObjectsContainer();
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v11;
  v75 = v13 + 3;
  v74 = v5;
  v14 = v10;
  v15 = v13;
  v13[4] = sub_23004C2B4(v14);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280C9C460);
  v17 = v80 + 16;
  v18 = *(v80 + 2);
  v73 = v16;
  v18(v8);
  *(&v90 + 1) = v12;
  *&v89 = v15;
  v78 = v15;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v89, v8);
  v19(&v81, 0);
  sub_2300DB16C();
  v79 = v9;
  v20 = v77;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v89 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v98[5]);
      v31 = sub_23004E30C(v29, v30, &v89);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v81 = type metadata accessor for REMRemindersListDataView.TemplateInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E70);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v89);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v68 = v18;
    v69 = v12;
    v80 = v17;
    v70 = v8;
    v71 = v6;
    v77 = v22;
    v36 = v21;
    v37 = v75;
    swift_beginAccess();
    v38 = *v37;
    v39 = objc_allocWithZone(MEMORY[0x277D44860]);

    v98[0] = [v39 init];
    v67 = type metadata accessor for REMRemindersListDataView.TemplateInvocation();
    *&v89 = v67;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E70);
    v41 = sub_23030F948();
    v43 = v42;
    v75 = v66;
    MEMORY[0x28223BE20](v41);
    v66[-6] = v98;
    v66[-5] = &v101;
    v66[-4] = v76;
    v66[-3] = v36;
    v66[-2] = v77;
    v66[-1] = v38;
    v44 = sub_230310268();
    sub_2300535B4(v44, v41, v43, v44, sub_230052C20, &v66[-8]);
    v66[1] = v40;
    v76 = v36;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v45 = v98[0];
    v46 = [v98[0] resultStorages];
    v47 = sub_23030F658();

    *(&v90 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v89 = v47;
    sub_23004D5CC(&v89, &v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v48 = v97;
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v49 = v69;
      v50 = swift_allocObject();
      v51 = v74;
      v50[2] = v74;
      v50[3] = v48;
      v52 = v51;
      v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v53 = v70;
      v68(v70, v73, v71);
      *(&v90 + 1) = v49;
      *&v89 = v50;

      v54 = sub_23030E788();
      sub_23004BC18(&v89, v53);
      v54(&v81, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E78);
      v80 = v45;
      v55 = [v45 resultData];
      v56 = sub_23030EA18();
      v58 = v57;

      sub_2300DB1C0(&qword_27DB14E80, &qword_27DB14E78);
      sub_23030E778();
      sub_23005FE3C(v56, v58);
      v85 = v93;
      v86 = v94;
      v87 = v95;
      v88 = v96;
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v84 = v92;
      v59 = v80;
      v60 = [v80 latestFetchResultToken];

      sub_23005FE3C(v76, v77);

      v61 = v86;
      v62 = v72;
      *(v72 + 64) = v85;
      *(v62 + 80) = v61;
      v63 = v88;
      *(v62 + 96) = v87;
      *(v62 + 112) = v63;
      v64 = v82;
      *v62 = v81;
      *(v62 + 16) = v64;
      result = *&v83;
      v65 = v84;
      *(v62 + 32) = v83;
      *(v62 + 48) = v65;
      *(v62 + 128) = v60;
    }

    else
    {
      sub_23004D5CC(&v89, &v81);
      sub_2301FEB10(&v81, 0, 0);
      sub_2300DA5F0(&v81);
      swift_willThrow();
      sub_23005FE3C(v76, v77);

      __swift_destroy_boxed_opaque_existential_1(&v89);
    }
  }

  return result;
}

void sub_2300C39C0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v80 = a1;
  v77 = a4;
  v8 = sub_230310A58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a2;
  v90 = a3;
  v91 = v5;
  sub_23030E7E8();
  swift_allocObject();
  v12 = sub_23030E7D8();
  v13 = MEMORY[0x277D84F90];
  v14 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v15 = type metadata accessor for REMStoreObjectsContainer();
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v14;
  v79 = (v16 + 3);
  v78 = v5;
  v17 = v13;
  v18 = v16;
  v16[4] = sub_23004C2B4(v17);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_280C9C460);
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v20 = v22;
  v22(v11, v19, v8);
  v88 = v15;
  v87 = v18;
  v82 = v18;

  v23 = sub_23030E7C8();
  sub_23004BC18(&v87, v11);
  v23(v86, 0);
  sub_2300DB0C4();
  v83 = v12;
  v24 = v81;
  v25 = sub_23030E7B8();
  if (v24)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v27 = sub_23030EF48();
    __swift_project_value_buffer(v27, qword_27DB17288);
    v28 = v24;
    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v87 = v32;
      *v31 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter(v85[5]);
      v35 = sub_23004E30C(v33, v34, &v87);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v86[0] = type metadata accessor for REMListPickerDataView.Invocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E40);
      v36 = sub_23030F948();
      v38 = sub_23004E30C(v36, v37, &v87);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_230044000, v29, v30, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v39 = v26;
    v71 = v20;
    v72 = v19;
    v73 = v15;
    v74 = v11;
    v75 = v21;
    v76 = v8;
    v40 = v25;
    v41 = v79;
    swift_beginAccess();
    v42 = *v41;
    v43 = objc_allocWithZone(MEMORY[0x277D44860]);

    v85[0] = [v43 init];
    v44 = type metadata accessor for REMListPickerDataView.Invocation();
    v87 = v44;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E40);
    v45 = sub_23030F948();
    v47 = v46;
    v81 = &v68;
    MEMORY[0x28223BE20](v45);
    *(&v68 - 6) = v85;
    *(&v68 - 5) = &v91;
    *(&v68 - 4) = v80;
    *(&v68 - 3) = v40;
    v48 = v40;
    *(&v68 - 2) = v39;
    *(&v68 - 1) = v42;
    v49 = sub_230310268();
    sub_2300535B4(v49, v45, v47, v49, sub_230052C20, (&v68 - 8));
    v50 = v39;
    v70 = v44;
    v80 = v48;

    sub_23030E7A8();
    swift_allocObject();
    v81 = sub_23030E798();
    v51 = v85[0];
    v52 = [v85[0] resultStorages];
    v53 = sub_23030F658();

    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v87 = v53;
    sub_23004D5CC(&v87, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v69 = v50;
      v54 = v84;
      __swift_destroy_boxed_opaque_existential_1(&v87);
      v55 = v73;
      v56 = swift_allocObject();
      v57 = v78;
      v56[2] = v78;
      v56[3] = v54;
      v58 = v57;
      v56[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v59 = v74;
      v71(v74, v72, v76);
      v88 = v55;
      v87 = v56;

      v60 = sub_23030E788();
      sub_23004BC18(&v87, v59);
      v60(v86, 0);
      v61 = [v51 resultData];
      v62 = sub_23030EA18();
      v64 = v63;

      sub_2300DB118();
      sub_23030E778();
      sub_23005FE3C(v62, v64);
      v65 = v87;
      v66 = [v51 latestFetchResultToken];

      sub_23005FE3C(v80, v69);

      v67 = v77;
      *v77 = v65;
      v67[1] = v66;
    }

    else
    {
      sub_23004D5CC(&v87, v86);
      sub_2301FEB10(v86, 0, 0);
      sub_2300DA5F0(v86);
      swift_willThrow();
      sub_23005FE3C(v80, v50);

      __swift_destroy_boxed_opaque_existential_1(&v87);
    }
  }
}

double sub_2300C4494@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a1;
  v4 = v3;
  v81 = a3;
  v6 = sub_230310A58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[5];
  v116 = a2[4];
  v117[0] = v10;
  *(v117 + 15) = *(a2 + 95);
  v11 = a2[1];
  v112 = *a2;
  v113 = v11;
  v12 = a2[3];
  v114 = a2[2];
  v115 = v12;
  v111 = v4;
  sub_23030E7E8();
  swift_allocObject();
  v13 = sub_23030E7D8();
  v83 = v4;
  v14 = [v4 store];
  v15 = MEMORY[0x277D84F90];
  v16 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v17 = type metadata accessor for REMStoreObjectsContainer();
  v18 = swift_allocObject();
  v18[2] = v14;
  v19 = v18;
  v18[3] = v16;
  v84 = v18 + 3;
  v18[4] = sub_23004C2B4(v15);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v6, qword_280C9C460);
  v21 = v6;
  v24 = *(v7 + 16);
  v23 = v7 + 16;
  v22 = v24;
  v82 = v20;
  (v24)(v9);
  *(&v99 + 1) = v17;
  *&v98 = v19;
  v118 = v19;

  v25 = sub_23030E7C8();
  sub_23004BC18(&v98, v9);
  v25(&v87, 0);
  sub_2300DB01C();
  v26 = v86;
  v27 = sub_23030E7B8();
  if (v26)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_27DB17288);
    v30 = v26;
    v31 = sub_23030EF38();
    v32 = sub_230310288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v98 = v34;
      *v33 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter(v110[5]);
      v37 = sub_23004E30C(v35, v36, &v98);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *&v87 = type metadata accessor for REMSuggestedAttributesHarvester.Invocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E30);
      v38 = sub_23030F948();
      v40 = sub_23004E30C(v38, v39, &v98);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_230044000, v31, v32, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v76 = v22;
    v77 = v17;
    v78 = v9;
    v79 = v23;
    v80 = v21;
    v86 = v13;
    v42 = v28;
    v43 = v27;
    v44 = v84;
    swift_beginAccess();
    v45 = *v44;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v110[0] = [v46 init];
    v75 = type metadata accessor for REMSuggestedAttributesHarvester.Invocation();
    *&v98 = v75;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E30);
    v48 = sub_23030F948();
    v50 = v49;
    v84 = &v73;
    MEMORY[0x28223BE20](v48);
    *(&v73 - 6) = v110;
    *(&v73 - 5) = &v111;
    *(&v73 - 4) = v85;
    *(&v73 - 3) = v43;
    v85 = v43;
    *(&v73 - 2) = v42;
    *(&v73 - 1) = v45;
    v51 = sub_230310268();
    sub_2300535B4(v51, v48, v50, v51, sub_230052C20, (&v73 - 8));
    v73 = v47;
    v74 = v42;

    sub_23030E7A8();
    swift_allocObject();
    v84 = sub_23030E798();
    v52 = v110[0];
    v53 = [v110[0] resultStorages];
    v54 = sub_23030F658();

    *(&v99 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v98 = v54;
    sub_23004D5CC(&v98, &v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v55 = v109;
      __swift_destroy_boxed_opaque_existential_1(&v98);
      v56 = [v83 store];
      v57 = v77;
      v58 = v52;
      v59 = swift_allocObject();
      v59[2] = v56;
      v59[3] = v55;
      v59[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v60 = v78;
      v76(v78, v82, v80);
      *(&v99 + 1) = v57;
      *&v98 = v59;

      v61 = sub_23030E788();
      sub_23004BC18(&v98, v60);
      v61(&v87, 0);
      v62 = [v58 resultData];
      v63 = sub_23030EA18();
      v65 = v64;

      sub_2300DB070();
      sub_23030E778();
      sub_23005FE3C(v63, v65);
      v95 = v106;
      v96 = v107;
      v97[0] = v108[0];
      *(v97 + 9) = *(v108 + 9);
      v91 = v102;
      v92 = v103;
      v93 = v104;
      v94 = v105;
      v87 = v98;
      v88 = v99;
      v89 = v100;
      v90 = v101;
      v66 = [v58 latestFetchResultToken];

      sub_23005FE3C(v85, v74);

      v67 = v96;
      v68 = v81;
      *(v81 + 128) = v95;
      *(v68 + 144) = v67;
      *(v68 + 160) = v97[0];
      *(v68 + 169) = *(v97 + 9);
      v69 = v92;
      *(v68 + 64) = v91;
      *(v68 + 80) = v69;
      v70 = v94;
      *(v68 + 96) = v93;
      *(v68 + 112) = v70;
      v71 = v88;
      *v68 = v87;
      *(v68 + 16) = v71;
      result = *&v89;
      v72 = v90;
      *(v68 + 32) = v89;
      *(v68 + 48) = v72;
      *(v68 + 192) = v66;
    }

    else
    {
      sub_23004D5CC(&v98, &v87);
      sub_2301FEB10(&v87, 0, 0);
      sub_2300DA5F0(&v87);
      swift_willThrow();
      sub_23005FE3C(v85, v74);

      __swift_destroy_boxed_opaque_existential_1(&v98);
    }
  }

  return result;
}

double sub_2300C4F14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v70 = a2;
  v67 = a1;
  v64 = a3;
  v4 = sub_230310A58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v7 = sub_23030E7D8();
  v65 = v3;
  v8 = [v3 store];
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v71 = type metadata accessor for REMStoreObjectsContainer();
  v11 = swift_allocObject();
  v11[2] = v8;
  v12 = v11;
  v11[3] = v10;
  v13 = v11 + 3;
  v11[4] = sub_23004C2B4(v9);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v14 = v4;
  v15 = __swift_project_value_buffer(v4, qword_280C9C460);
  v16 = *(v5 + 16);
  v66 = v5 + 16;
  v17 = v72;
  v16(v72, v15, v14);
  *(&v77 + 1) = v71;
  *&v76 = v12;
  v69 = v12;

  v18 = sub_23030E7C8();
  sub_23004BC18(&v76, v17);
  v18(&v73, 0);
  type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  sub_230066350(&qword_280C9A0E0, type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest);
  v70 = v7;
  v19 = v68;
  v20 = sub_23030E7B8();
  v68 = v21;
  if (v19)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v22 = sub_23030EF48();
    __swift_project_value_buffer(v22, qword_27DB17288);
    v23 = v19;
    v24 = sub_23030EF38();
    v25 = sub_230310288();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v76 = v27;
      *v26 = 136315394;
      swift_getErrorValue();
      v28 = Error.rem_errorDescription.getter(v80[5]);
      v30 = sub_23004E30C(v28, v29, &v76);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v73 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E28);
      v31 = sub_23030F948();
      v33 = sub_23004E30C(v31, v32, &v76);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_230044000, v24, v25, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v27, -1, -1);
      MEMORY[0x231914180](v26, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v61 = v16;
    v62 = v15;
    v35 = v72;
    v63 = v14;
    v36 = v20;
    swift_beginAccess();
    v37 = *v13;
    v38 = objc_allocWithZone(MEMORY[0x277D44860]);

    v80[0] = [v38 init];
    v60 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation();
    *&v76 = v60;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E28);
    v40 = sub_23030F948();
    v42 = v41;
    MEMORY[0x28223BE20](v40);
    *(&v59 - 6) = v80;
    *(&v59 - 5) = &v81;
    *(&v59 - 4) = v67;
    *(&v59 - 3) = v36;
    *(&v59 - 2) = v68;
    *(&v59 - 1) = v37;
    v43 = sub_230310268();
    sub_2300535B4(v43, v40, v42, v43, sub_230052C20, (&v59 - 8));
    v59 = v39;
    v67 = v36;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v44 = v80[0];
    v45 = [v80[0] resultStorages];
    v46 = sub_23030F658();

    *(&v77 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v76 = v46;
    sub_23004D5CC(&v76, &v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v47 = v79;
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v48 = [v65 store];
      v49 = v71;
      v50 = swift_allocObject();
      v50[2] = v48;
      v50[3] = v47;
      v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v61(v35, v62, v63);
      *(&v77 + 1) = v49;
      *&v76 = v50;

      v51 = sub_23030E788();
      sub_23004BC18(&v76, v35);
      v51(&v73, 0);
      v52 = [v44 resultData];
      v53 = sub_23030EA18();
      v55 = v54;

      sub_2300DAFC8();
      sub_23030E778();
      sub_23005FE3C(v53, v55);
      v73 = v76;
      v74 = v77;
      v75[0] = *v78;
      *(v75 + 9) = *&v78[9];
      v56 = [v44 latestFetchResultToken];

      sub_23005FE3C(v67, v68);

      v57 = v74;
      v58 = v64;
      *v64 = v73;
      v58[1] = v57;
      v58[2] = v75[0];
      result = *(v75 + 9);
      *(v58 + 41) = *(v75 + 9);
      *(v58 + 8) = v56;
    }

    else
    {
      sub_23004D5CC(&v76, &v73);
      sub_2301FEB10(&v73, 0, 0);
      sub_2300DA5F0(&v73);
      swift_willThrow();
      sub_23005FE3C(v67, v68);

      __swift_destroy_boxed_opaque_existential_1(&v76);
    }
  }

  return result;
}

void sub_2300C5A58(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v73 = a1;
  v71 = a3;
  v8 = sub_230310A58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v78 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84[0] = v5;
  v84[1] = a2;
  *&v84[2] = a4;
  sub_23030E7E8();
  swift_allocObject();
  v11 = sub_23030E7D8();
  v72 = v5;
  v12 = [v5 store];
  v13 = MEMORY[0x277D84F90];
  v14 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v77 = type metadata accessor for REMStoreObjectsContainer();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v16 = v15 + 3;
  v17 = v15;
  v15[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v18 = v8;
  v19 = __swift_project_value_buffer(v8, qword_280C9C460);
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v20 = v22;
  v23 = v78;
  v22(v78, v19, v18);
  v83 = v77;
  v82 = v17;
  v75 = v17;

  v24 = sub_23030E7C8();
  sub_23004BC18(&v82, v23);
  v24(v81, 0);
  sub_2300DAF74();
  v76 = v11;
  v25 = v74;
  v26 = sub_23030E7B8();
  if (v25)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v28 = sub_23030EF48();
    __swift_project_value_buffer(v28, qword_27DB17288);
    v29 = v25;
    v30 = sub_23030EF38();
    v31 = sub_230310288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter(v80[5]);
      v36 = sub_23004E30C(v34, v35, &v82);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v81[0] = type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E20);
      v37 = sub_23030F948();
      v39 = sub_23004E30C(v37, v38, &v82);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_230044000, v30, v31, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v33, -1, -1);
      MEMORY[0x231914180](v32, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v66 = v20;
    v67 = v19;
    v68 = v21;
    v69 = v18;
    v74 = v27;
    v40 = v26;
    swift_beginAccess();
    v41 = *v16;
    v42 = objc_allocWithZone(MEMORY[0x277D44860]);

    v80[0] = [v42 init];
    v43 = type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation();
    v82 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E20);
    v45 = sub_23030F948();
    v47 = v46;
    v70 = v64;
    MEMORY[0x28223BE20](v45);
    v64[-6] = v80;
    v64[-5] = v84;
    v64[-4] = v73;
    v64[-3] = v40;
    v64[-2] = v74;
    v64[-1] = v41;
    v48 = sub_230310268();
    sub_2300535B4(v48, v45, v47, v48, sub_230052C20, &v64[-8]);
    v64[1] = v44;
    v64[2] = v43;
    v65 = v40;

    sub_23030E7A8();
    swift_allocObject();
    v73 = sub_23030E798();
    v49 = v80[0];
    v50 = [v80[0] resultStorages];
    v51 = sub_23030F658();

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v82 = v51;
    sub_23004D5CC(&v82, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v52 = v79;
      __swift_destroy_boxed_opaque_existential_1(&v82);
      v53 = [v72 store];
      v54 = v77;
      v55 = swift_allocObject();
      v55[2] = v53;
      v55[3] = v52;
      v55[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v56 = v78;
      v66(v78, v67, v69);
      v83 = v54;
      v82 = v55;

      v57 = sub_23030E788();
      sub_23004BC18(&v82, v56);
      v57(v81, 0);
      v58 = [v49 resultData];
      v59 = sub_23030EA18();
      v61 = v60;

      sub_2300DAECC();
      sub_23030E778();
      sub_23005FE3C(v59, v61);
      LOBYTE(v58) = v82;
      v62 = [v49 latestFetchResultToken];

      sub_23005FE3C(v65, v74);

      v63 = v71;
      *v71 = v58;
      *(v63 + 1) = v62;
    }

    else
    {
      sub_23004D5CC(&v82, v81);
      sub_2301FEB10(v81, 0, 0);
      sub_2300DA5F0(v81);
      swift_willThrow();
      sub_23005FE3C(v65, v74);

      __swift_destroy_boxed_opaque_existential_1(&v82);
    }
  }
}

void sub_2300C6550(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v71 = a1;
  v69 = a3;
  v6 = sub_230310A58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = a2;
  v82[0] = v4;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v70 = v4;
  v10 = [v4 store];
  v11 = MEMORY[0x277D84F90];
  v12 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v75 = type metadata accessor for REMStoreObjectsContainer();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v14 = v13 + 3;
  v15 = v13;
  v13[4] = sub_23004C2B4(v11);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v16 = v6;
  v17 = __swift_project_value_buffer(v6, qword_280C9C460);
  v20 = *(v7 + 16);
  v19 = v7 + 16;
  v18 = v20;
  v21 = v76;
  v20(v76, v17, v16);
  v81 = v75;
  v80 = v15;
  v73 = v15;

  v22 = sub_23030E7C8();
  sub_23004BC18(&v80, v21);
  v22(v79, 0);
  sub_2300DAF20();
  v74 = v9;
  v23 = v72;
  v24 = sub_23030E7B8();
  if (v23)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v26 = sub_23030EF48();
    __swift_project_value_buffer(v26, qword_27DB17288);
    v27 = v23;
    v28 = sub_23030EF38();
    v29 = sub_230310288();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v80 = v31;
      *v30 = 136315394;
      swift_getErrorValue();
      v32 = Error.rem_errorDescription.getter(v78[5]);
      v34 = sub_23004E30C(v32, v33, &v80);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v79[0] = type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E18);
      v35 = sub_23030F948();
      v37 = sub_23004E30C(v35, v36, &v80);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_230044000, v28, v29, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v31, -1, -1);
      MEMORY[0x231914180](v30, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v64 = v18;
    v65 = v17;
    v66 = v19;
    v67 = v16;
    v72 = v25;
    v38 = v24;
    swift_beginAccess();
    v39 = *v14;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v78[0] = [v40 init];
    v41 = type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation();
    v80 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E18);
    v43 = sub_23030F948();
    v45 = v44;
    v68 = v62;
    MEMORY[0x28223BE20](v43);
    v62[-6] = v78;
    v62[-5] = v82;
    v62[-4] = v71;
    v62[-3] = v38;
    v62[-2] = v72;
    v62[-1] = v39;
    v46 = sub_230310268();
    sub_2300535B4(v46, v43, v45, v46, sub_230052C20, &v62[-8]);
    v62[1] = v42;
    v62[2] = v41;
    v63 = v38;

    sub_23030E7A8();
    swift_allocObject();
    v71 = sub_23030E798();
    v47 = v78[0];
    v48 = [v78[0] resultStorages];
    v49 = sub_23030F658();

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v80 = v49;
    sub_23004D5CC(&v80, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v50 = v77;
      __swift_destroy_boxed_opaque_existential_1(&v80);
      v51 = [v70 store];
      v52 = v75;
      v53 = swift_allocObject();
      v53[2] = v51;
      v53[3] = v50;
      v53[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v54 = v76;
      v64(v76, v65, v67);
      v81 = v52;
      v80 = v53;

      v55 = sub_23030E788();
      sub_23004BC18(&v80, v54);
      v55(v79, 0);
      v56 = [v47 resultData];
      v57 = sub_23030EA18();
      v59 = v58;

      sub_2300DAECC();
      sub_23030E778();
      sub_23005FE3C(v57, v59);
      LOBYTE(v56) = v80;
      v60 = [v47 latestFetchResultToken];

      sub_23005FE3C(v63, v72);

      v61 = v69;
      *v69 = v56;
      *(v61 + 1) = v60;
    }

    else
    {
      sub_23004D5CC(&v80, v79);
      sub_2301FEB10(v79, 0, 0);
      sub_2300DA5F0(v79);
      swift_willThrow();
      sub_23005FE3C(v63, v72);

      __swift_destroy_boxed_opaque_existential_1(&v80);
    }
  }
}

void sub_2300C7030(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v72 = a1;
  v70 = a6;
  v83 = a2;
  v84 = a3;
  v85 = a4;
  v86 = a5;
  v7 = sub_230310A58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v77 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v6;
  sub_23030E7E8();
  swift_allocObject();
  v10 = sub_23030E7D8();
  v71 = v6;
  v11 = [v6 store];
  v12 = MEMORY[0x277D84F90];
  v13 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v76 = type metadata accessor for REMStoreObjectsContainer();
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v15 = v14 + 3;
  v16 = v14;
  v14[4] = sub_23004C2B4(v12);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v17 = v7;
  v18 = __swift_project_value_buffer(v7, qword_280C9C460);
  v21 = *(v8 + 16);
  v20 = v8 + 16;
  v19 = v21;
  v22 = v77;
  v21(v77, v18, v17);
  v82 = v76;
  v81 = v16;
  v74 = v16;

  v23 = sub_23030E7C8();
  sub_23004BC18(&v81, v22);
  v23(v80, 0);
  sub_2300DAE78();
  v75 = v10;
  v24 = v73;
  v25 = sub_23030E7B8();
  if (v24)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v27 = sub_23030EF48();
    __swift_project_value_buffer(v27, qword_27DB17288);
    v28 = v24;
    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v81 = v32;
      *v31 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter(v79[5]);
      v35 = sub_23004E30C(v33, v34, &v81);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v80[0] = type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E10);
      v36 = sub_23030F948();
      v38 = sub_23004E30C(v36, v37, &v81);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_230044000, v29, v30, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v65 = v19;
    v66 = v18;
    v67 = v20;
    v68 = v17;
    v73 = v26;
    v39 = v25;
    swift_beginAccess();
    v40 = *v15;
    v41 = objc_allocWithZone(MEMORY[0x277D44860]);

    v79[0] = [v41 init];
    v42 = type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation();
    v81 = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14E10);
    v44 = sub_23030F948();
    v46 = v45;
    v69 = v63;
    MEMORY[0x28223BE20](v44);
    v63[-6] = v79;
    v63[-5] = &v87;
    v63[-4] = v72;
    v63[-3] = v39;
    v63[-2] = v73;
    v63[-1] = v40;
    v47 = sub_230310268();
    sub_2300535B4(v47, v44, v46, v47, sub_230052C60, &v63[-8]);
    v63[0] = v43;
    v63[1] = v42;
    v64 = v39;

    sub_23030E7A8();
    swift_allocObject();
    v72 = sub_23030E798();
    v48 = v79[0];
    v49 = [v79[0] resultStorages];
    v50 = sub_23030F658();

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v81 = v50;
    sub_23004D5CC(&v81, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v51 = v78;
      __swift_destroy_boxed_opaque_existential_1(&v81);
      v52 = [v71 store];
      v53 = v76;
      v54 = swift_allocObject();
      v54[2] = v52;
      v54[3] = v51;
      v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v55 = v77;
      v65(v77, v66, v68);
      v82 = v53;
      v81 = v54;

      v56 = sub_23030E788();
      sub_23004BC18(&v81, v55);
      v56(v80, 0);
      v57 = [v48 resultData];
      v58 = sub_23030EA18();
      v60 = v59;

      sub_2300DAECC();
      sub_23030E778();
      sub_23005FE3C(v58, v60);
      LOBYTE(v57) = v81;
      v61 = [v48 latestFetchResultToken];

      sub_23005FE3C(v64, v73);

      v62 = v70;
      *v70 = v57;
      *(v62 + 1) = v61;
    }

    else
    {
      sub_23004D5CC(&v81, v80);
      sub_2301FEB10(v80, 0, 0);
      sub_2300DA5F0(v80);
      swift_willThrow();
      sub_23005FE3C(v64, v73);

      __swift_destroy_boxed_opaque_existential_1(&v81);
    }
  }
}

void sub_2300C7BB4(void (*a1)(void (*)(uint64_t), uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X7>, _BYTE *a9@<X8>, void (*a10)(void))
{
  v79 = a8;
  v82 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v83 = a3;
  v11 = v10;
  v78 = a1;
  v75 = a9;
  v13 = sub_230310A58();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93[3] = a2;
  v93[0] = v11;
  sub_23030E7E8();
  swift_allocObject();
  v87 = sub_23030E7D8();
  v17 = MEMORY[0x277D84F90];
  v18 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v19 = type metadata accessor for REMStoreObjectsContainer();
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = v18;
  v77 = (v20 + 3);
  v76 = v11;
  v21 = v17;
  v22 = v20;
  v20[4] = sub_23004C2B4(v21);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_280C9C460);
  v26 = *(v14 + 16);
  v24 = v14 + 16;
  v25 = v26;
  v26(v16, v23, v13);
  v92 = v19;
  v91 = v22;
  v86 = v22;

  v27 = sub_23030E7C8();
  sub_23004BC18(&v91, v16);
  v28 = v27(v90, 0);
  v83(v28);
  v29 = v85;
  v30 = sub_23030E7B8();
  if (v29)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v32 = sub_23030EF48();
    __swift_project_value_buffer(v32, qword_27DB17288);
    v33 = v29;
    v34 = sub_23030EF38();
    v35 = sub_230310288();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v91 = v37;
      *v36 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter(v89[5]);
      v40 = sub_23004E30C(v38, v39, &v91);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v90[0] = v80(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v81);
      v41 = sub_23030F948();
      v43 = sub_23004E30C(v41, v42, &v91);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_230044000, v34, v35, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v37, -1, -1);
      MEMORY[0x231914180](v36, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v44 = v31;
    v71 = v25;
    v72 = v23;
    v73 = v19;
    v74 = v24;
    v83 = v16;
    v84 = v13;
    v45 = v30;
    v46 = v77;
    swift_beginAccess();
    v47 = *v46;
    v48 = objc_allocWithZone(MEMORY[0x277D44860]);

    v89[0] = [v48 init];
    v80 = v80(0);
    v91 = v80;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v81);
    v50 = sub_23030F948();
    v52 = v51;
    v85 = &v71;
    MEMORY[0x28223BE20](v50);
    *(&v71 - 6) = v89;
    *(&v71 - 5) = v93;
    *(&v71 - 4) = v78;
    *(&v71 - 3) = v45;
    *(&v71 - 2) = v44;
    *(&v71 - 1) = v47;
    v53 = sub_230310268();
    sub_2300535B4(v53, v50, v52, v53, v79, (&v71 - 8));
    v79 = v49;
    v81 = v44;
    v82 = v45;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v54 = v89[0];
    v55 = [v89[0] resultStorages];
    v56 = sub_23030F658();

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v91 = v56;
    sub_23004D5CC(&v91, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v85 = a10;
      v57 = v88;
      __swift_destroy_boxed_opaque_existential_1(&v91);
      v58 = v73;
      v59 = swift_allocObject();
      v60 = v76;
      v59[2] = v76;
      v59[3] = v57;
      v61 = v60;
      v59[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v62 = v83;
      v71(v83, v72, v84);
      v92 = v58;
      v91 = v59;

      v63 = sub_23030E788();
      sub_23004BC18(&v91, v62);
      v63(v90, 0);
      v64 = [v54 resultData];
      v65 = v54;
      v66 = sub_23030EA18();
      v68 = v67;

      v85();
      sub_23030E778();
      sub_23005FE3C(v66, v68);
      LOBYTE(v64) = v91;
      v69 = [v65 latestFetchResultToken];

      sub_23005FE3C(v82, v81);

      v70 = v75;
      *v75 = v64;
      *(v70 + 1) = v69;
    }

    else
    {
      sub_23004D5CC(&v91, v90);
      sub_2301FEB10(v90, 0, 0);
      sub_2300DA5F0(v90);
      swift_willThrow();
      sub_23005FE3C(v82, v81);

      __swift_destroy_boxed_opaque_existential_1(&v91);
    }
  }
}

void sub_2300C86D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v74 = a1;
  v72 = a3;
  v78 = sub_230310A58();
  v6 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84[3] = a2;
  v84[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v10 = MEMORY[0x277D84F90];
  v11 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v12 = type metadata accessor for REMStoreObjectsContainer();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = v11;
  v14 = v13 + 3;
  v73 = v4;
  v15 = v10;
  v16 = v13;
  v13[4] = sub_23004C2B4(v15);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v17 = v78;
  v18 = __swift_project_value_buffer(v78, qword_280C9C460);
  v21 = *(v6 + 16);
  v19 = v6 + 16;
  v20 = v21;
  v21(v8, v18, v17);
  v83 = v12;
  v82 = v16;
  v76 = v16;

  v22 = sub_23030E7C8();
  sub_23004BC18(&v82, v8);
  v22(v81, 0);
  sub_2300DAD54();
  v77 = v9;
  v23 = v75;
  v24 = sub_23030E7B8();
  if (v23)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v26 = sub_23030EF48();
    __swift_project_value_buffer(v26, qword_27DB17288);
    v27 = v23;
    v28 = sub_23030EF38();
    v29 = sub_230310288();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v82 = v31;
      *v30 = 136315394;
      swift_getErrorValue();
      v32 = Error.rem_errorDescription.getter(v80[5]);
      v34 = sub_23004E30C(v32, v33, &v82);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v81[0] = type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DF0);
      v35 = sub_23030F948();
      v37 = sub_23004E30C(v35, v36, &v82);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_230044000, v28, v29, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v31, -1, -1);
      MEMORY[0x231914180](v30, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v38 = v8;
    v39 = v25;
    v67 = v20;
    v68 = v18;
    v69 = v12;
    v70 = v19;
    v71 = v38;
    v40 = v24;
    swift_beginAccess();
    v41 = *v14;
    v42 = objc_allocWithZone(MEMORY[0x277D44860]);

    v80[0] = [v42 init];
    v66 = type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation();
    v82 = v66;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DF0);
    v44 = sub_23030F948();
    v46 = v45;
    v75 = v65;
    MEMORY[0x28223BE20](v44);
    v65[-6] = v80;
    v65[-5] = v84;
    v65[-4] = v74;
    v65[-3] = v40;
    v65[-2] = v39;
    v65[-1] = v41;
    v47 = sub_230310268();
    sub_2300535B4(v47, v44, v46, v47, sub_2300DB8F4, &v65[-8]);
    v65[1] = v43;
    v74 = v40;

    sub_23030E7A8();
    swift_allocObject();
    v75 = sub_23030E798();
    v48 = v80[0];
    v49 = [v80[0] resultStorages];
    v50 = sub_23030F658();

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v82 = v50;
    sub_23004D5CC(&v82, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v65[0] = v39;
      v51 = v79;
      __swift_destroy_boxed_opaque_existential_1(&v82);
      v52 = v69;
      v53 = swift_allocObject();
      v54 = v73;
      v53[2] = v73;
      v53[3] = v51;
      v55 = v54;
      v53[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v56 = v71;
      v67(v71, v68, v78);
      v83 = v52;
      v82 = v53;

      v57 = sub_23030E788();
      sub_23004BC18(&v82, v56);
      v57(v81, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
      v58 = [v48 resultData];
      v59 = sub_23030EA18();
      v61 = v60;

      sub_23006DB8C(&qword_280C9C480, &qword_280C9C5D0);
      sub_23030E778();
      sub_23005FE3C(v59, v61);
      v62 = v82;
      v63 = [v48 latestFetchResultToken];

      sub_23005FE3C(v74, v65[0]);

      v64 = v72;
      *v72 = v62;
      v64[1] = v63;
    }

    else
    {
      sub_23004D5CC(&v82, v81);
      sub_2301FEB10(v81, 0, 0);
      sub_2300DA5F0(v81);
      swift_willThrow();
      sub_23005FE3C(v74, v39);

      __swift_destroy_boxed_opaque_existential_1(&v82);
    }
  }
}

void sub_2300C91E4(unint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v91 = a1;
  v89 = a3;
  v6 = sub_230310A58();
  v96 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v95 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[9];
  v109 = a2[8];
  v110[0] = v8;
  *(v110 + 9) = *(a2 + 153);
  v9 = a2[5];
  v105 = a2[4];
  v106 = v9;
  v10 = a2[6];
  v108 = a2[7];
  v107 = v10;
  v11 = a2[1];
  v101 = *a2;
  v102 = v11;
  v12 = a2[2];
  v104 = a2[3];
  v103 = v12;
  v111 = v4;
  sub_23030E7E8();
  swift_allocObject();
  v13 = sub_23030E7D8();
  v90 = v4;
  v14 = [v4 store];
  v15 = MEMORY[0x277D84F90];
  v16 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v94 = type metadata accessor for REMStoreObjectsContainer();
  v17 = swift_allocObject();
  v17[2] = v14;
  v18 = v17;
  v17[3] = v16;
  v19 = v17 + 3;
  v17[4] = sub_23004C2B4(v15);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v6, qword_280C9C460);
  v21 = v6;
  v22 = v95;
  v23 = *(v96 + 16);
  v96 += 16;
  v23(v95, v20, v21);
  v99[3] = v94;
  v99[0] = v18;
  v92 = v18;

  v24 = sub_23030E7C8();
  sub_23004BC18(v99, v22);
  v24(v98, 0);
  sub_2300DACAC();
  v93 = v13;
  v25 = v97;
  v26 = sub_23030E7B8();
  v97 = v25;
  if (v25)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v28 = sub_23030EF48();
    __swift_project_value_buffer(v28, qword_27DB17288);
    v29 = v97;
    v30 = v97;
    v31 = sub_23030EF38();
    v32 = sub_230310288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v99[0] = v34;
      *v33 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter(v100[5]);
      v37 = sub_23004E30C(v35, v36, v99);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v98[0] = type metadata accessor for REMSuggestedAttributesTrainer();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DD8);
      v38 = sub_23030F948();
      v40 = sub_23004E30C(v38, v39, v99);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_230044000, v31, v32, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v85 = v23;
    v86 = v20;
    v87 = v21;
    v41 = v27;
    v42 = v26;
    swift_beginAccess();
    v43 = *v19;
    v44 = objc_allocWithZone(MEMORY[0x277D44860]);

    v100[0] = [v44 init];
    v45 = type metadata accessor for REMSuggestedAttributesTrainer();
    v99[0] = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14DD8);
    v47 = sub_23030F948();
    v49 = v48;
    v88 = &v83;
    MEMORY[0x28223BE20](v47);
    *(&v83 - 6) = v100;
    *(&v83 - 5) = &v111;
    *(&v83 - 4) = v91;
    *(&v83 - 3) = v42;
    *(&v83 - 2) = v41;
    *(&v83 - 1) = v43;
    v50 = sub_230310268();
    v51 = v97;
    sub_2300535B4(v50, v47, v49, v50, sub_2300DB8F4, (&v83 - 8));
    v97 = v51;
    if (v51)
    {

      sub_23005FE3C(v42, v41);
    }

    else
    {
      v84 = v42;
      v91 = v41;

      sub_23030E7A8();
      swift_allocObject();
      sub_23030E798();
      v52 = v100[0];
      v53 = [v100[0] resultStorages];
      v54 = sub_23030F658();

      v99[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      v99[0] = v54;
      sub_23004D5CC(v99, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v88 = v46;
        v55 = v99[99];
        __swift_destroy_boxed_opaque_existential_1(v99);
        v56 = [v90 store];
        v57 = v94;
        v58 = swift_allocObject();
        v58[2] = v56;
        v58[3] = v55;
        v58[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v59 = v95;
        v85(v95, v86, v87);
        v99[3] = v57;
        v99[0] = v58;

        v60 = sub_23030E788();
        sub_23004BC18(v99, v59);
        v60(v98, 0);
        v61 = [v52 resultData];
        v62 = sub_23030EA18();
        v64 = v63;

        sub_2300DAD00();
        v65 = v97;
        sub_23030E778();
        v97 = v65;
        if (v65)
        {
          v96 = v45;
          sub_23005FE3C(v62, v64);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v66 = sub_23030EF48();
          __swift_project_value_buffer(v66, qword_27DB17288);
          v67 = v97;
          v68 = v97;
          v69 = sub_23030EF38();
          v70 = sub_230310288();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v99[0] = v95;
            *v71 = 136315394;
            swift_getErrorValue();
            v72 = Error.rem_errorDescription.getter(v98[100]);
            v74 = v52;
            v75 = sub_23004E30C(v72, v73, v99);

            *(v71 + 4) = v75;
            *(v71 + 12) = 2080;
            v98[0] = v96;
            v76 = sub_23030F948();
            v78 = sub_23004E30C(v76, v77, v99);

            *(v71 + 14) = v78;
            v52 = v74;
            _os_log_impl(&dword_230044000, v69, v70, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v71, 0x16u);
            v79 = v95;
            swift_arrayDestroy();
            MEMORY[0x231914180](v79, -1, -1);
            MEMORY[0x231914180](v71, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v84, v91);
        }

        else
        {
          sub_23005FE3C(v62, v64);
          memcpy(v98, v99, 0x318uLL);
          v81 = [v52 latestFetchResultToken];

          sub_23005FE3C(v84, v91);

          v82 = v89;
          memcpy(v89, v98, 0x318uLL);
          v82[99] = v81;
        }
      }

      else
      {
        sub_23004D5CC(v99, v98);
        v80 = sub_2301FEB10(v98, 0, 0);
        sub_2300DA5F0(v98);
        v97 = v80;
        swift_willThrow();
        sub_23005FE3C(v84, v91);

        __swift_destroy_boxed_opaque_existential_1(v99);
      }
    }
  }
}

void sub_2300C9D7C(void (*a1)(void)@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X7>, uint64_t *a9@<X8>, uint64_t *a10, uint64_t a11, void (*a12)(void))
{
  v85 = a8;
  v88 = a7;
  v87 = a6;
  v86 = a5;
  v90 = a4;
  v89 = a3;
  v13 = v12;
  v84 = a1;
  v81 = a9;
  v15 = sub_230310A58();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = a2;
  v99 = v13;
  sub_23030E7E8();
  swift_allocObject();
  v93 = sub_23030E7D8();
  v19 = MEMORY[0x277D84F90];
  v20 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v21 = type metadata accessor for REMStoreObjectsContainer();
  v22 = swift_allocObject();
  v22[2] = v13;
  v22[3] = v20;
  v83 = (v22 + 3);
  v82 = v13;
  v23 = v19;
  v24 = v22;
  v22[4] = sub_23004C2B4(v23);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_280C9C460);
  v28 = *(v16 + 16);
  v26 = v16 + 16;
  v27 = v28;
  v28(v18, v25, v15);
  v98 = v21;
  v97 = v24;
  v92 = v24;

  v29 = sub_23030E7C8();
  sub_23004BC18(&v97, v18);
  v30 = v29(v96, 0);
  v89(v30);
  v31 = v91;
  v32 = sub_23030E7B8();
  if (v31)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v34 = sub_23030EF48();
    __swift_project_value_buffer(v34, qword_27DB17288);
    v35 = v31;
    v36 = sub_23030EF38();
    v37 = sub_230310288();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v97 = v39;
      *v38 = 136315394;
      swift_getErrorValue();
      v40 = Error.rem_errorDescription.getter(v95[5]);
      v42 = sub_23004E30C(v40, v41, &v97);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v96[0] = v86(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v87);
      v43 = sub_23030F948();
      v45 = sub_23004E30C(v43, v44, &v97);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_230044000, v36, v37, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v39, -1, -1);
      MEMORY[0x231914180](v38, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v46 = v33;
    v77 = v27;
    v78 = v25;
    v79 = v21;
    v80 = v26;
    v89 = v18;
    v90 = v15;
    v47 = v32;
    v48 = v83;
    swift_beginAccess();
    v49 = *v48;
    v50 = objc_allocWithZone(MEMORY[0x277D44860]);

    v95[0] = [v50 init];
    v51 = v86(0);
    v97 = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v87);
    v53 = sub_23030F948();
    v55 = v54;
    v91 = &v77;
    MEMORY[0x28223BE20](v53);
    *(&v77 - 6) = v95;
    *(&v77 - 5) = &v99;
    *(&v77 - 4) = v84;
    *(&v77 - 3) = v47;
    *(&v77 - 2) = v46;
    *(&v77 - 1) = v49;
    v56 = sub_230310268();
    sub_2300535B4(v56, v53, v55, v56, v85, (&v77 - 8));
    v57 = v46;
    v87 = v52;
    v86 = v51;
    v88 = v47;

    sub_23030E7A8();
    swift_allocObject();
    v58 = sub_23030E798();
    v59 = v95[0];
    v60 = [v95[0] resultStorages];
    v61 = sub_23030F658();

    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v97 = v61;
    sub_23004D5CC(&v97, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v85 = v57;
      v84 = a12;
      v62 = v94;
      __swift_destroy_boxed_opaque_existential_1(&v97);
      v63 = v79;
      v64 = swift_allocObject();
      v65 = v82;
      v64[2] = v82;
      v64[3] = v62;
      v66 = v65;
      v64[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v67 = v89;
      v77(v89, v78, v90);
      v98 = v63;
      v97 = v64;

      v68 = sub_23030E788();
      v91 = v58;
      v69 = v68;
      sub_23004BC18(&v97, v67);
      v69(v96, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(a10);
      v70 = [v59 resultData];
      v71 = sub_23030EA18();
      v73 = v72;

      v84();
      sub_23030E778();
      sub_23005FE3C(v71, v73);
      v74 = v97;
      v75 = [v59 latestFetchResultToken];

      sub_23005FE3C(v88, v85);

      v76 = v81;
      *v81 = v74;
      v76[1] = v75;
    }

    else
    {
      sub_23004D5CC(&v97, v96);
      sub_2301FEB10(v96, 0, 0);
      sub_2300DA5F0(v96);
      swift_willThrow();
      sub_23005FE3C(v88, v57);

      __swift_destroy_boxed_opaque_existential_1(&v97);
    }
  }
}

void sub_2300CA89C(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v76 = a1;
  v73 = a3;
  v6 = sub_230310A58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a2 & 1;
  v86 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v10 = sub_23030E7D8();
  v11 = MEMORY[0x277D84F90];
  v12 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v13 = type metadata accessor for REMStoreObjectsContainer();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v12;
  v75 = (v14 + 3);
  v74 = v4;
  v15 = v11;
  v16 = v14;
  v14[4] = sub_23004C2B4(v15);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_280C9C460);
  v20 = *(v7 + 16);
  v19 = v7 + 16;
  v18 = v20;
  v20(v9, v17, v6);
  v85 = v13;
  v83 = v16;
  v78 = v16;

  v21 = sub_23030E7C8();
  sub_23004BC18(&v83, v9);
  v21(v82, 0);
  sub_2300DA9F4();
  v79 = v10;
  v22 = v77;
  v23 = sub_23030E7B8();
  if (v22)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v25 = sub_23030EF48();
    __swift_project_value_buffer(v25, qword_27DB17288);
    v26 = v22;
    v27 = sub_23030EF38();
    v28 = sub_230310288();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v83 = v30;
      *v29 = 136315394;
      swift_getErrorValue();
      v31 = Error.rem_errorDescription.getter(v81[5]);
      v33 = sub_23004E30C(v31, v32, &v83);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v82[0] = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D88);
      v34 = sub_23030F948();
      v36 = sub_23004E30C(v34, v35, &v83);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_230044000, v27, v28, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v30, -1, -1);
      MEMORY[0x231914180](v29, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v37 = v24;
    v67 = v18;
    v68 = v17;
    v69 = v13;
    v70 = v9;
    v71 = v19;
    v72 = v6;
    v38 = v23;
    v39 = v75;
    swift_beginAccess();
    v40 = *v39;
    v41 = objc_allocWithZone(MEMORY[0x277D44860]);

    v81[0] = [v41 init];
    v42 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
    v83 = v42;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D88);
    v43 = sub_23030F948();
    v45 = v44;
    v77 = v66;
    MEMORY[0x28223BE20](v43);
    v66[-6] = v81;
    v66[-5] = &v86;
    v66[-4] = v76;
    v66[-3] = v38;
    v46 = v38;
    v66[-2] = v37;
    v66[-1] = v40;
    v47 = sub_230310268();
    sub_2300535B4(v47, v43, v45, v47, sub_2300DB8F4, &v66[-8]);
    v48 = v37;
    v66[1] = v42;
    v76 = v46;

    sub_23030E7A8();
    swift_allocObject();
    v77 = sub_23030E798();
    v49 = v81[0];
    v50 = [v81[0] resultStorages];
    v51 = sub_23030F658();

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v83 = v51;
    sub_23004D5CC(&v83, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v66[0] = v48;
      v52 = v80;
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v53 = v69;
      v54 = swift_allocObject();
      v55 = v74;
      v54[2] = v74;
      v54[3] = v52;
      v56 = v55;
      v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v57 = v70;
      v67(v70, v68, v72);
      v85 = v53;
      v83 = v54;

      v58 = sub_23030E788();
      sub_23004BC18(&v83, v57);
      v58(v82, 0);
      v59 = [v49 resultData];
      v60 = sub_23030EA18();
      v62 = v61;

      sub_2300DAA48();
      sub_23030E778();
      sub_23005FE3C(v60, v62);
      v63 = v83;
      LOBYTE(v62) = v84;
      v64 = [v49 latestFetchResultToken];

      sub_23005FE3C(v76, v66[0]);

      v65 = v73;
      *v73 = v63;
      *(v65 + 8) = v62;
      v65[2] = v64;
    }

    else
    {
      sub_23004D5CC(&v83, v82);
      sub_2301FEB10(v82, 0, 0);
      sub_2300DA5F0(v82);
      swift_willThrow();
      sub_23005FE3C(v76, v48);

      __swift_destroy_boxed_opaque_existential_1(&v83);
    }
  }
}

void sub_2300CB370(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v78 = a1;
  v76 = a5;
  v82 = sub_230310A58();
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a2;
  v89 = a3;
  v90 = a4 & 1;
  v91 = v6;
  sub_23030E7E8();
  swift_allocObject();
  v13 = sub_23030E7D8();
  v14 = MEMORY[0x277D84F90];
  v15 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v16 = type metadata accessor for REMStoreObjectsContainer();
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = v15;
  v18 = v17 + 3;
  v77 = v6;
  v19 = v14;
  v20 = v17;
  v17[4] = sub_23004C2B4(v19);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v21 = v82;
  v22 = __swift_project_value_buffer(v82, qword_280C9C460);
  v25 = *(v10 + 16);
  v23 = v10 + 16;
  v24 = v25;
  v25(v12, v22, v21);
  v87 = v16;
  v86 = v20;
  v80 = v20;

  v26 = sub_23030E7C8();
  sub_23004BC18(&v86, v12);
  v26(v85, 0);
  sub_2300DA9A0();
  v81 = v13;
  v27 = v79;
  v28 = sub_23030E7B8();
  if (v27)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v30 = sub_23030EF48();
    __swift_project_value_buffer(v30, qword_27DB17288);
    v31 = v27;
    v32 = sub_23030EF38();
    v33 = sub_230310288();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v86 = v35;
      *v34 = 136315394;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter(v84[5]);
      v38 = sub_23004E30C(v36, v37, &v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v85[0] = type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D78);
      v39 = sub_23030F948();
      v41 = sub_23004E30C(v39, v40, &v86);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_230044000, v32, v33, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v35, -1, -1);
      MEMORY[0x231914180](v34, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v42 = v12;
    v43 = v29;
    v71 = v24;
    v72 = v22;
    v73 = v16;
    v74 = v23;
    v75 = v42;
    v44 = v28;
    swift_beginAccess();
    v45 = *v18;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v84[0] = [v46 init];
    v70 = type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation();
    v86 = v70;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D78);
    v48 = sub_23030F948();
    v50 = v49;
    v79 = v69;
    MEMORY[0x28223BE20](v48);
    v69[-6] = v84;
    v69[-5] = &v91;
    v69[-4] = v78;
    v69[-3] = v44;
    v69[-2] = v43;
    v69[-1] = v45;
    v51 = sub_230310268();
    sub_2300535B4(v51, v48, v50, v51, sub_2300DB8F4, &v69[-8]);
    v69[1] = v47;
    v78 = v44;

    sub_23030E7A8();
    swift_allocObject();
    v79 = sub_23030E798();
    v52 = v84[0];
    v53 = [v84[0] resultStorages];
    v54 = sub_23030F658();

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v86 = v54;
    sub_23004D5CC(&v86, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v69[0] = v43;
      v55 = v83;
      __swift_destroy_boxed_opaque_existential_1(&v86);
      v56 = v73;
      v57 = swift_allocObject();
      v58 = v77;
      v57[2] = v77;
      v57[3] = v55;
      v59 = v58;
      v57[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v60 = v75;
      v71(v75, v72, v82);
      v87 = v56;
      v86 = v57;

      v61 = sub_23030E788();
      sub_23004BC18(&v86, v60);
      v61(v85, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
      v62 = [v52 resultData];
      v63 = sub_23030EA18();
      v65 = v64;

      sub_23006DB8C(&qword_280C9C480, &qword_280C9C5D0);
      sub_23030E778();
      sub_23005FE3C(v63, v65);
      v66 = v86;
      v67 = [v52 latestFetchResultToken];

      sub_23005FE3C(v78, v69[0]);

      v68 = v76;
      *v76 = v66;
      v68[1] = v67;
    }

    else
    {
      sub_23004D5CC(&v86, v85);
      sub_2301FEB10(v85, 0, 0);
      sub_2300DA5F0(v85);
      swift_willThrow();
      sub_23005FE3C(v78, v43);

      __swift_destroy_boxed_opaque_existential_1(&v86);
    }
  }
}

void sub_2300CBEA0(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v74 = a1;
  v72 = a3;
  v6 = sub_230310A58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v79 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[1];
  v85 = *a2;
  v86 = v9;
  v87 = a2[2];
  v88 = *(a2 + 48);
  v89 = v4;
  sub_23030E7E8();
  swift_allocObject();
  v10 = sub_23030E7D8();
  v73 = v4;
  v11 = [v4 store];
  v12 = MEMORY[0x277D84F90];
  v13 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v78 = type metadata accessor for REMStoreObjectsContainer();
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v13;
  v15 = v14 + 3;
  v16 = v14;
  v14[4] = sub_23004C2B4(v12);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v17 = v6;
  v18 = __swift_project_value_buffer(v6, qword_280C9C460);
  v21 = *(v7 + 16);
  v20 = v7 + 16;
  v19 = v21;
  v22 = v79;
  v21(v79, v18, v17);
  v84 = v78;
  v83[0] = v16;
  v76 = v16;

  v23 = sub_23030E7C8();
  sub_23004BC18(v83, v22);
  v23(v82, 0);
  sub_2300DA8F8();
  v77 = v10;
  v24 = v75;
  v25 = sub_23030E7B8();
  if (v24)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v27 = sub_23030EF48();
    __swift_project_value_buffer(v27, qword_27DB17288);
    v28 = v24;
    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v83[0] = v32;
      *v31 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter(v81[5]);
      v35 = sub_23004E30C(v33, v34, v83);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v82[0] = type metadata accessor for REMSuggestedAttributesFeatureExtractor();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D60);
      v36 = sub_23030F948();
      v38 = sub_23004E30C(v36, v37, v83);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_230044000, v29, v30, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v67 = v19;
    v68 = v18;
    v69 = v20;
    v70 = v17;
    v75 = v26;
    v39 = v25;
    swift_beginAccess();
    v40 = *v15;
    v41 = objc_allocWithZone(MEMORY[0x277D44860]);

    v81[0] = [v41 init];
    v42 = type metadata accessor for REMSuggestedAttributesFeatureExtractor();
    v83[0] = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D60);
    v44 = sub_23030F948();
    v46 = v45;
    v71 = v65;
    MEMORY[0x28223BE20](v44);
    v65[-6] = v81;
    v65[-5] = &v89;
    v65[-4] = v74;
    v65[-3] = v39;
    v65[-2] = v75;
    v65[-1] = v40;
    v47 = sub_230310268();
    sub_2300535B4(v47, v44, v46, v47, sub_2300DB8F4, &v65[-8]);
    v65[1] = v43;
    v65[2] = v42;
    v66 = v39;

    sub_23030E7A8();
    swift_allocObject();
    v74 = sub_23030E798();
    v48 = v81[0];
    v49 = [v81[0] resultStorages];
    v50 = sub_23030F658();

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v83[0] = v50;
    sub_23004D5CC(v83, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v51 = v80;
      __swift_destroy_boxed_opaque_existential_1(v83);
      v52 = [v73 store];
      v53 = v78;
      v54 = swift_allocObject();
      v54[2] = v52;
      v54[3] = v51;
      v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v55 = v79;
      v67(v79, v68, v70);
      v84 = v53;
      v83[0] = v54;

      v56 = sub_23030E788();
      sub_23004BC18(v83, v55);
      v56(v82, 0);
      v57 = [v48 resultData];
      v58 = sub_23030EA18();
      v60 = v59;

      sub_2300DA94C();
      sub_23030E778();
      sub_23005FE3C(v58, v60);
      LOBYTE(v57) = v83[0];
      v61 = v83[1];
      v62 = v83[2];
      v63 = [v48 latestFetchResultToken];

      sub_23005FE3C(v66, v75);

      v64 = v72;
      *v72 = v57;
      v64[1] = v61;
      v64[2] = v62;
      v64[3] = v63;
    }

    else
    {
      sub_23004D5CC(v83, v82);
      sub_2301FEB10(v82, 0, 0);
      sub_2300DA5F0(v82);
      swift_willThrow();
      sub_23005FE3C(v66, v75);

      __swift_destroy_boxed_opaque_existential_1(v83);
    }
  }
}

void sub_2300CC9B8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v4 = v3;
  v76 = a1;
  v72 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v80 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v75 = v12 + 3;
  v74 = v4;
  v12[4] = sub_23004C2B4(v9);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280C9C460);
  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v14 = v16;
  v73 = v13;
  (v16)(v8);
  *(&v88 + 1) = v11;
  *&v87 = v12;
  v79 = v12;

  v17 = sub_23030E7C8();
  sub_23004BC18(&v87, v8);
  v17(&v81, 0);
  type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters(0);
  sub_230066350(&qword_280C992F0, type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters);
  v18 = v78;
  v19 = sub_23030E7B8();
  if (v18)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v21 = sub_23030EF48();
    __swift_project_value_buffer(v21, qword_27DB17288);
    v22 = v18;
    v23 = sub_23030EF38();
    v24 = sub_230310288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v87 = v26;
      *v25 = 136315394;
      swift_getErrorValue();
      v27 = Error.rem_errorDescription.getter(v94[5]);
      v29 = sub_23004E30C(v27, v28, &v87);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *&v81 = type metadata accessor for REMRemindersListDataView.ListInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D50);
      v30 = sub_23030F948();
      v32 = sub_23004E30C(v30, v31, &v87);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_230044000, v23, v24, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v26, -1, -1);
      MEMORY[0x231914180](v25, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v33 = v19;
    v67 = v14;
    v68 = v11;
    v69 = v15;
    v70 = v8;
    v71 = v5;
    v78 = 0;
    v34 = v20;
    v35 = v75;
    swift_beginAccess();
    v36 = *v35;
    v37 = objc_allocWithZone(MEMORY[0x277D44860]);

    v94[0] = [v37 init];
    v38 = type metadata accessor for REMRemindersListDataView.ListInvocation();
    *&v87 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D50);
    v40 = sub_23030F948();
    v42 = v41;
    v77 = v65;
    MEMORY[0x28223BE20](v40);
    v65[-6] = v94;
    v65[-5] = &v95;
    v65[-4] = v76;
    v65[-3] = v33;
    v65[-2] = v34;
    v65[-1] = v36;
    v43 = sub_230310268();
    v44 = v78;
    sub_2300535B4(v43, v40, v42, v43, sub_2300DB8F4, &v65[-8]);
    if (v44)
    {

      sub_23005FE3C(v33, v34);

      v45 = v94[0];
    }

    else
    {
      v75 = v33;
      v65[1] = v39;
      v65[2] = v38;
      v66 = v34;

      sub_23030E7A8();
      swift_allocObject();
      v77 = sub_23030E798();
      v76 = v94[0];
      v46 = [v94[0] resultStorages];
      v47 = sub_23030F658();

      *(&v88 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v87 = v47;
      sub_23004D5CC(&v87, &v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v48 = v93;
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v49 = v68;
        v50 = swift_allocObject();
        v51 = v74;
        v50[2] = v74;
        v50[3] = v48;
        v52 = v51;
        v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v53 = v70;
        v67(v70, v73, v71);
        *(&v88 + 1) = v49;
        *&v87 = v50;

        v54 = sub_23030E788();
        sub_23004BC18(&v87, v53);
        v54(&v81, 0);
        v55 = [v76 resultData];
        v56 = sub_23030EA18();
        v58 = v57;

        sub_2300DA8A4();
        sub_23030E778();
        sub_23005FE3C(v56, v58);
        v83 = v89;
        v84 = v90;
        v85 = v91;
        v86 = v92;
        v81 = v87;
        v82 = v88;
        v59 = v76;
        v60 = [v76 latestFetchResultToken];

        sub_23005FE3C(v75, v66);

        v61 = v84;
        v62 = v72;
        *(v72 + 32) = v83;
        *(v62 + 48) = v61;
        v63 = v86;
        *(v62 + 64) = v85;
        *(v62 + 80) = v63;
        v64 = v82;
        *v62 = v81;
        *(v62 + 16) = v64;
        *(v62 + 96) = v60;
        return;
      }

      sub_23004D5CC(&v87, &v81);
      sub_2301FEB10(&v81, 0, 0);
      sub_2300DA5F0(&v81);
      swift_willThrow();
      sub_23005FE3C(v75, v66);

      __swift_destroy_boxed_opaque_existential_1(&v87);
      v45 = v76;
    }
  }
}

double sub_2300CD3E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v76 = a3;
  v6 = sub_230310A58();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97[0] = v4;
  v97[1] = a2;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v10 = MEMORY[0x277D84F90];
  v11 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v81 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v11;
  v13 = v12 + 3;
  v77 = v4;
  v14 = v10;
  v15 = v12;
  v12[4] = sub_23004C2B4(v14);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280C9C460);
  v17 = v82[2];
  v82 += 2;
  v17(v8, v16, v6);
  *(&v90 + 1) = v81;
  *&v89 = v15;
  v79 = v15;

  v18 = sub_23030E7C8();
  sub_23004BC18(&v89, v8);
  v18(&v83, 0);
  sub_2300DA850();
  v80 = v9;
  v19 = v98;
  v20 = sub_23030E7B8();
  v98 = v19;
  if (v19)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v22 = sub_23030EF48();
    __swift_project_value_buffer(v22, qword_27DB17288);
    v23 = v98;
    v24 = v98;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v89 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v96[5]);
      v31 = sub_23004E30C(v29, v30, &v89);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v83 = type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D40);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v89);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v70 = v17;
    v71 = v16;
    v72 = v8;
    v73 = v6;
    v75 = v21;
    v36 = v20;
    swift_beginAccess();
    v37 = *v13;
    v38 = objc_allocWithZone(MEMORY[0x277D44860]);

    v96[0] = [v38 init];
    v69 = type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation();
    *&v89 = v69;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D40);
    v40 = sub_23030F948();
    v42 = v41;
    v43 = v98;
    v74 = v68;
    MEMORY[0x28223BE20](v40);
    v68[-6] = v96;
    v68[-5] = v97;
    v68[-4] = v78;
    v68[-3] = v36;
    v44 = v36;
    v45 = v75;
    v68[-2] = v75;
    v68[-1] = v37;
    v46 = sub_230310268();
    sub_2300535B4(v46, v40, v42, v46, sub_2300DB8F4, &v68[-8]);
    if (v43)
    {

      sub_23005FE3C(v44, v45);

      v98 = v43;
    }

    else
    {
      v68[1] = v39;
      v78 = v44;

      sub_23030E7A8();
      swift_allocObject();
      sub_23030E798();
      v47 = v96[0];
      v48 = [v96[0] resultStorages];
      v49 = sub_23030F658();

      *(&v90 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v89 = v49;
      sub_23004D5CC(&v89, &v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v50 = v95;
        __swift_destroy_boxed_opaque_existential_1(&v89);
        v51 = v81;
        v52 = swift_allocObject();
        v53 = v77;
        v52[2] = v77;
        v52[3] = v50;
        v54 = v53;
        v52[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v55 = v72;
        v70(v72, v71, v73);
        *(&v90 + 1) = v51;
        *&v89 = v52;

        v56 = sub_23030E788();
        sub_23004BC18(&v89, v55);
        v56(&v83, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D48);
        v82 = v47;
        v57 = [v47 resultData];
        v58 = sub_23030EA18();
        v60 = v59;

        sub_2300DB1C0(&qword_280C97928, &qword_27DB14D48);
        sub_23030E778();
        v98 = 0;
        sub_23005FE3C(v58, v60);
        v85 = v91;
        v86 = v92;
        v87 = v93;
        v88 = v94;
        v83 = v89;
        v84 = v90;
        v62 = v82;
        v63 = [v82 latestFetchResultToken];

        sub_23005FE3C(v78, v75);

        v64 = v86;
        v65 = v76;
        *(v76 + 32) = v85;
        *(v65 + 48) = v64;
        v66 = v88;
        *(v65 + 64) = v87;
        *(v65 + 80) = v66;
        result = *&v83;
        v67 = v84;
        *v65 = v83;
        *(v65 + 16) = v67;
        *(v65 + 96) = v63;
      }

      else
      {
        sub_23004D5CC(&v89, &v83);
        v61 = sub_2301FEB10(&v83, 0, 0);
        sub_2300DA5F0(&v83);
        v98 = v61;
        swift_willThrow();
        sub_23005FE3C(v78, v75);

        __swift_destroy_boxed_opaque_existential_1(&v89);
      }
    }
  }

  return result;
}

void sub_2300CDE10(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v4 = v3;
  v76 = a1;
  v72 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v94[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v75 = v12 + 3;
  v74 = v4;
  v12[4] = sub_23004C2B4(v9);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280C9C460);
  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v14 = v16;
  v73 = v13;
  (v16)(v8);
  *(&v87 + 1) = v11;
  *&v86 = v12;
  v79 = v12;

  v17 = sub_23030E7C8();
  sub_23004BC18(&v86, v8);
  v17(&v80, 0);
  type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters(0);
  sub_230066350(&qword_27DB14D20, type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters);
  v18 = v78;
  v19 = sub_23030E7B8();
  if (v18)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v21 = sub_23030EF48();
    __swift_project_value_buffer(v21, qword_27DB17288);
    v22 = v18;
    v23 = sub_23030EF38();
    v24 = sub_230310288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v86 = v26;
      *v25 = 136315394;
      swift_getErrorValue();
      v27 = Error.rem_errorDescription.getter(v93[5]);
      v29 = sub_23004E30C(v27, v28, &v86);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *&v80 = type metadata accessor for REMRemindersListDataView.GroupInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D28);
      v30 = sub_23030F948();
      v32 = sub_23004E30C(v30, v31, &v86);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_230044000, v23, v24, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v26, -1, -1);
      MEMORY[0x231914180](v25, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v33 = v19;
    v67 = v14;
    v68 = v11;
    v69 = v15;
    v70 = v8;
    v71 = v5;
    v78 = 0;
    v34 = v20;
    v35 = v75;
    swift_beginAccess();
    v36 = *v35;
    v37 = objc_allocWithZone(MEMORY[0x277D44860]);

    v93[0] = [v37 init];
    v38 = type metadata accessor for REMRemindersListDataView.GroupInvocation();
    *&v86 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D28);
    v40 = sub_23030F948();
    v42 = v41;
    v77 = v65;
    MEMORY[0x28223BE20](v40);
    v65[-6] = v93;
    v65[-5] = v94;
    v65[-4] = v76;
    v65[-3] = v33;
    v65[-2] = v34;
    v65[-1] = v36;
    v43 = sub_230310268();
    v44 = v78;
    sub_2300535B4(v43, v40, v42, v43, sub_2300DB8F4, &v65[-8]);
    if (v44)
    {

      sub_23005FE3C(v33, v34);

      v45 = v93[0];
    }

    else
    {
      v75 = v33;
      v65[0] = v39;
      v65[1] = v38;
      v66 = v34;

      sub_23030E7A8();
      swift_allocObject();
      v77 = sub_23030E798();
      v76 = v93[0];
      v46 = [v93[0] resultStorages];
      v47 = sub_23030F658();

      *(&v87 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v86 = v47;
      sub_23004D5CC(&v86, &v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v48 = v92;
        __swift_destroy_boxed_opaque_existential_1(&v86);
        v49 = v68;
        v50 = swift_allocObject();
        v51 = v74;
        v50[2] = v74;
        v50[3] = v48;
        v52 = v51;
        v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v53 = v70;
        v67(v70, v73, v71);
        *(&v87 + 1) = v49;
        *&v86 = v50;

        v54 = sub_23030E788();
        sub_23004BC18(&v86, v53);
        v54(&v80, 0);
        v55 = [v76 resultData];
        v56 = sub_23030EA18();
        v58 = v57;

        sub_2300DA7FC();
        sub_23030E778();
        sub_23005FE3C(v56, v58);
        v82 = v88;
        v83 = v89;
        v84 = v90;
        v85 = v91;
        v80 = v86;
        v81 = v87;
        v59 = v76;
        v60 = [v76 latestFetchResultToken];

        sub_23005FE3C(v75, v66);

        v61 = v83;
        v62 = v72;
        *(v72 + 32) = v82;
        *(v62 + 48) = v61;
        *(v62 + 64) = v84;
        v63 = v85;
        v64 = v81;
        *v62 = v80;
        *(v62 + 16) = v64;
        *(v62 + 80) = v63;
        *(v62 + 88) = v60;
        return;
      }

      sub_23004D5CC(&v86, &v80);
      sub_2301FEB10(&v80, 0, 0);
      sub_2300DA5F0(&v80);
      swift_willThrow();
      sub_23005FE3C(v75, v66);

      __swift_destroy_boxed_opaque_existential_1(&v86);
      v45 = v76;
    }
  }
}

double sub_2300CE848@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v96 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v105 + 1) = v11;
  *&v104 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v104, v8);
  v19(&v97, 0);
  type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters(0);
  sub_230066350(&qword_280C97B30, type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v104 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v111[5]);
      v31 = sub_23004E30C(v29, v30, &v104);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v97 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D10);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v104);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v111[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation();
    *&v104 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D10);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = &v81;
    MEMORY[0x28223BE20](v43);
    *(&v81 - 6) = v111;
    *(&v81 - 5) = &v112;
    *(&v81 - 4) = v92;
    *(&v81 - 3) = v37;
    *(&v81 - 2) = v36;
    *(&v81 - 1) = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, (&v81 - 8));
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81 = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v111[0];
      v50 = [v111[0] resultStorages];
      v51 = sub_23030F658();

      *(&v105 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v104 = v51;
      sub_23004D5CC(&v104, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v110;
        __swift_destroy_boxed_opaque_existential_1(&v104);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v105 + 1) = v53;
        *&v104 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v104, v57);
        v58(&v97, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14D18);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_280C97910, &qword_27DB14D18);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v104 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v103);
            v72 = sub_23004E30C(v70, v71, &v104);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v97 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v104);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v99 = v106;
          v100 = v107;
          v101 = v108;
          v102 = v109;
          v97 = v104;
          v98 = v105;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v100;
          v78 = v88;
          *(v88 + 32) = v99;
          *(v78 + 48) = v77;
          v79 = v102;
          *(v78 + 64) = v101;
          *(v78 + 80) = v79;
          result = *&v97;
          v80 = v98;
          *v78 = v97;
          *(v78 + 16) = v80;
          *(v78 + 96) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v104, &v97);
        sub_2301FEB10(&v97, 0, 0);
        sub_2300DA5F0(&v97);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v104);
      }
    }
  }

  return result;
}

double sub_2300CF330@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v111[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v104 + 1) = v11;
  *&v103 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v103, v8);
  v19(&v96, 0);
  type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
  sub_230066350(&qword_27DB14CE8, type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v103 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v110[5]);
      v31 = sub_23004E30C(v29, v30, &v103);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v96 = type metadata accessor for REMRemindersListDataView.AssignedInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14CF0);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v103);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v110[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.AssignedInvocation();
    *&v103 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14CF0);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = v81;
    MEMORY[0x28223BE20](v43);
    v81[-6] = v110;
    v81[-5] = v111;
    v81[-4] = v92;
    v81[-3] = v37;
    v81[-2] = v36;
    v81[-1] = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, &v81[-8]);
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81[1] = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v110[0];
      v50 = [v110[0] resultStorages];
      v51 = sub_23030F658();

      *(&v104 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v103 = v51;
      sub_23004D5CC(&v103, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v109;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v104 + 1) = v53;
        *&v103 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v103, v57);
        v58(&v96, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14CF8);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_27DB14D00, &qword_27DB14CF8);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v103 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v102);
            v72 = sub_23004E30C(v70, v71, &v103);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v96 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v103);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v98 = v105;
          v99 = v106;
          v100 = v107;
          v101 = v108;
          v96 = v103;
          v97 = v104;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v99;
          v78 = v88;
          *(v88 + 32) = v98;
          *(v78 + 48) = v77;
          *(v78 + 64) = v100;
          v79 = v101;
          result = *&v96;
          v80 = v97;
          *v78 = v96;
          *(v78 + 16) = v80;
          *(v78 + 80) = v79;
          *(v78 + 88) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v103, &v96);
        sub_2301FEB10(&v96, 0, 0);
        sub_2300DA5F0(&v96);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v103);
      }
    }
  }

  return result;
}

__n128 sub_2300CFE28@<Q0>(void (*a1)(unint64_t *, uint64_t, void (*)(uint64_t))@<X0>, void (**a2)(void, void, void)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, void (*a6)(unint64_t *, uint64_t, void (*)(uint64_t))@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(unint64_t *, uint64_t, void (*)(uint64_t)))
{
  v94 = a8;
  v95 = a3;
  v91 = a1;
  v92 = a7;
  v99 = a6;
  v96 = a4;
  v97 = a5;
  v12 = v11;
  v98 = a2;
  v87 = a9;
  v93 = a10;
  v13 = sub_230310A58();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = v11;
  sub_23030E7E8();
  swift_allocObject();
  v102 = sub_23030E7D8();
  v17 = MEMORY[0x277D84F90];
  v18 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v19 = type metadata accessor for REMStoreObjectsContainer();
  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = v18;
  v90 = (v20 + 3);
  v89 = v12;
  v20[4] = sub_23004C2B4(v17);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_280C9C460);
  v24 = *(v14 + 16);
  v22 = (v14 + 16);
  v23 = v24;
  v88 = v21;
  (v24)(v16);
  v110.n128_u64[1] = v19;
  *&v109 = v20;
  v101 = v20;

  v25 = sub_23030E7C8();
  sub_23004BC18(&v109, v16);
  v25(&v103, 0);
  v95(0);
  sub_230066350(v96, v97);
  v26 = v100;
  v27 = sub_23030E7B8();
  if (v26)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_27DB17288);
    v30 = v26;
    v31 = sub_23030EF38();
    v32 = sub_230310288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v109 = v34;
      *v33 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter(v115[5]);
      v37 = sub_23004E30C(v35, v36, &v109);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *&v103 = v92(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v94);
      v38 = sub_23030F948();
      v40 = sub_23004E30C(v38, v39, &v109);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_230044000, v31, v32, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v85 = v23;
    v86 = v19;
    v95 = v22;
    v96 = v16;
    v97 = v13;
    v99 = a11;
    v42 = v28;
    v43 = v27;
    v44 = v90;
    swift_beginAccess();
    v45 = *v44;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v115[0] = [v46 init];
    v47 = v92(0);
    v100 = 0;
    v92 = v47;
    *&v109 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v94);
    v49 = sub_23030F948();
    v51 = v50;
    v98 = &v85;
    MEMORY[0x28223BE20](v49);
    *(&v85 - 6) = v115;
    *(&v85 - 5) = &v116;
    *(&v85 - 4) = v91;
    *(&v85 - 3) = v43;
    *(&v85 - 2) = v42;
    *(&v85 - 1) = v45;
    v52 = sub_230310268();
    v53 = v100;
    sub_2300535B4(v52, v49, v51, v52, v99, (&v85 - 8));
    v100 = v53;
    if (v53)
    {

      sub_23005FE3C(v43, v42);
    }

    else
    {
      v93 = v48;
      v94 = v43;
      v99 = v42;

      sub_23030E7A8();
      swift_allocObject();
      v54 = sub_23030E798();
      v55 = v115[0];
      v56 = [v115[0] resultStorages];
      v57 = sub_23030F658();

      v110.n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v109 = v57;
      sub_23004D5CC(&v109, &v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v58 = v114;
        __swift_destroy_boxed_opaque_existential_1(&v109);
        v59 = v86;
        v60 = swift_allocObject();
        v61 = v89;
        v60[2] = v89;
        v60[3] = v58;
        v62 = v61;
        v60[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v63 = v96;
        v85(v96, v88, v97);
        v110.n128_u64[1] = v59;
        *&v109 = v60;

        v64 = sub_23030E788();
        sub_23004BC18(&v109, v63);
        v64(&v103, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14CE0);
        v98 = v54;
        v65 = [v55 resultData];
        v66 = sub_23030EA18();
        v68 = v67;

        sub_2300DB1C0(&qword_280C97918, &qword_27DB14CE0);
        v69 = v100;
        sub_23030E778();
        if (v69)
        {
          v100 = v60;
          sub_23005FE3C(v66, v68);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v70 = sub_23030EF48();
          __swift_project_value_buffer(v70, qword_27DB17288);
          v71 = v69;
          v72 = sub_23030EF38();
          v73 = sub_230310288();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v109 = v75;
            *v74 = 136315394;
            swift_getErrorValue();
            v76 = Error.rem_errorDescription.getter(v108);
            v78 = sub_23004E30C(v76, v77, &v109);

            *(v74 + 4) = v78;
            *(v74 + 12) = 2080;
            *&v103 = v92;
            v79 = sub_23030F948();
            v81 = sub_23004E30C(v79, v80, &v109);

            *(v74 + 14) = v81;
            _os_log_impl(&dword_230044000, v72, v73, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v74, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v75, -1, -1);
            MEMORY[0x231914180](v74, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v94, v99);
        }

        else
        {
          sub_23005FE3C(v66, v68);
          v105 = v111;
          v106 = v112;
          v107 = v113;
          v103 = v109;
          v104 = v110;
          v82 = [v55 latestFetchResultToken];

          sub_23005FE3C(v94, v99);

          v83 = v106;
          v84 = v87;
          *(v87 + 32) = v105;
          *(v84 + 48) = v83;
          *(v84 + 64) = v107;
          result = v104;
          *v84 = v103;
          *(v84 + 16) = result;
          *(v84 + 80) = v82;
        }
      }

      else
      {
        sub_23004D5CC(&v109, &v103);
        sub_2301FEB10(&v103, 0, 0);
        sub_2300DA5F0(&v103);
        swift_willThrow();
        sub_23005FE3C(v94, v99);

        __swift_destroy_boxed_opaque_existential_1(&v109);
      }
    }
  }

  return result;
}

double sub_2300D0994@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v4 = v3;
  v94 = a1;
  v90 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v121[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v93 = v12 + 3;
  v92 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v91 = v15;
  (v18)(v8);
  *(&v110 + 1) = v11;
  *&v109 = v14;
  v97 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v109, v8);
  v19(&v98, 0);
  type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters(0);
  sub_230066350(&qword_27DB14C90, type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters);
  v20 = v96;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v109 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v120[5]);
      v31 = sub_23004E30C(v29, v30, &v109);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v98 = type metadata accessor for REMRemindersListDataView.TaggedInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C98);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v109);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v85 = v16;
    v86 = v11;
    v87 = v17;
    v88 = v8;
    v89 = v5;
    v96 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v93;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v120[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.TaggedInvocation();
    *&v109 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C98);
    v43 = sub_23030F948();
    v45 = v44;
    v95 = v83;
    MEMORY[0x28223BE20](v43);
    v83[-6] = v120;
    v83[-5] = v121;
    v83[-4] = v94;
    v83[-3] = v37;
    v83[-2] = v36;
    v83[-1] = v39;
    v46 = sub_230310268();
    v47 = v96;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, &v83[-8]);
    v96 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v83[1] = v42;
      v84 = v41;
      v93 = v36;
      v94 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v120[0];
      v50 = [v120[0] resultStorages];
      v51 = sub_23030F658();

      *(&v110 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v109 = v51;
      sub_23004D5CC(&v109, &v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v119;
        __swift_destroy_boxed_opaque_existential_1(&v109);
        v53 = v86;
        v54 = swift_allocObject();
        v55 = v92;
        v54[2] = v92;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v88;
        v85(v88, v91, v89);
        *(&v110 + 1) = v53;
        *&v109 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v109, v57);
        v58(&v98, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14CA0);
        v95 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_27DB14CA8, &qword_27DB14CA0);
        v63 = v96;
        sub_23030E778();
        if (v63)
        {
          v96 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v109 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v108);
            v72 = sub_23004E30C(v70, v71, &v109);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v98 = v84;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v109);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v94, v93);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v104 = v115;
          v105 = v116;
          v106 = v117;
          v107 = v118;
          v100 = v111;
          v101 = v112;
          v102 = v113;
          v103 = v114;
          v98 = v109;
          v99 = v110;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v94, v93);

          v77 = v105;
          v78 = v90;
          *(v90 + 96) = v104;
          *(v78 + 112) = v77;
          *(v78 + 128) = v106;
          v79 = v107;
          v80 = v101;
          *(v78 + 32) = v100;
          *(v78 + 48) = v80;
          v81 = v103;
          *(v78 + 64) = v102;
          *(v78 + 80) = v81;
          result = *&v98;
          v82 = v99;
          *v78 = v98;
          *(v78 + 16) = v82;
          *(v78 + 144) = v79;
          *(v78 + 152) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v109, &v98);
        sub_2301FEB10(&v98, 0, 0);
        sub_2300DA5F0(&v98);
        swift_willThrow();
        sub_23005FE3C(v94, v93);

        __swift_destroy_boxed_opaque_existential_1(&v109);
      }
    }
  }

  return result;
}

double sub_2300D147C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v76 = a3;
  v82 = sub_230310A58();
  v6 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v8 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90[3] = a2;
  v90[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v9 = sub_23030E7D8();
  v10 = MEMORY[0x277D84F90];
  v11 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v12 = type metadata accessor for REMStoreObjectsContainer();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = v11;
  v14 = v13 + 3;
  *&v77 = v4;
  v15 = v10;
  v16 = v13;
  v13[4] = sub_23004C2B4(v15);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v17 = v82;
  v18 = __swift_project_value_buffer(v82, qword_280C9C460);
  v21 = *(v6 + 16);
  v20 = v6 + 16;
  v19 = v21;
  v21(v8, v18, v17);
  *&v85 = v12;
  v83 = v16;
  v80 = v16;

  v22 = sub_23030E7C8();
  sub_23004BC18(&v83, v8);
  v22(&v89, 0);
  sub_2300DA754();
  v81 = v9;
  v23 = v79;
  v24 = sub_23030E7B8();
  if (v23)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v26 = sub_23030EF48();
    __swift_project_value_buffer(v26, qword_27DB17288);
    v27 = v23;
    v28 = sub_23030EF38();
    v29 = sub_230310288();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83 = v31;
      *v30 = 136315394;
      swift_getErrorValue();
      v32 = Error.rem_errorDescription.getter(v88[5]);
      v34 = sub_23004E30C(v32, v33, &v83);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v89 = type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C68);
      v35 = sub_23030F948();
      v37 = sub_23004E30C(v35, v36, &v83);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_230044000, v28, v29, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v31, -1, -1);
      MEMORY[0x231914180](v30, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v70 = v19;
    v71 = v18;
    v72 = v12;
    v73 = v8;
    v74 = v20;
    v79 = v25;
    v39 = v24;
    swift_beginAccess();
    v40 = *v14;
    v41 = objc_allocWithZone(MEMORY[0x277D44860]);

    v88[0] = [v41 init];
    v42 = type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation();
    v83 = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C68);
    v44 = sub_23030F948();
    v46 = v45;
    *&v75 = v69;
    MEMORY[0x28223BE20](v44);
    v69[-6] = v88;
    v69[-5] = v90;
    v69[-4] = v78;
    v69[-3] = v39;
    v69[-2] = v79;
    v69[-1] = v40;
    v47 = sub_230310268();
    sub_2300535B4(v47, v44, v46, v47, sub_2300DB8F4, &v69[-8]);
    v69[1] = v43;
    v69[2] = v42;
    v78 = v39;

    sub_23030E7A8();
    swift_allocObject();
    v48 = sub_23030E798();
    v49 = v88[0];
    v50 = [v88[0] resultStorages];
    v51 = sub_23030F658();

    *&v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v83 = v51;
    sub_23004D5CC(&v83, &v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v52 = v87;
      __swift_destroy_boxed_opaque_existential_1(&v83);
      v53 = v72;
      v54 = swift_allocObject();
      v55 = v77;
      v54[2] = v77;
      v54[3] = v52;
      v56 = v55;
      v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v57 = v73;
      v70(v73, v71, v82);
      *&v85 = v53;
      v83 = v54;

      v58 = sub_23030E788();
      sub_23004BC18(&v83, v57);
      v58(&v89, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C70);
      v59 = [v49 resultData];
      v82 = v48;
      v60 = v59;
      v61 = sub_23030EA18();
      v63 = v62;

      sub_2300DB1C0(&qword_27DB14C78, &qword_27DB14C70);
      sub_23030E778();
      v64 = v49;
      sub_23005FE3C(v61, v63);
      v65 = v83;
      v66 = v86;
      v77 = v84;
      v75 = v85;
      v67 = [v64 latestFetchResultToken];

      sub_23005FE3C(v78, v79);

      v68 = v76;
      *v76 = v65;
      *(v68 + 1) = v77;
      result = *&v75;
      *(v68 + 3) = v75;
      v68[5] = v66;
      v68[6] = v67;
    }

    else
    {
      sub_23004D5CC(&v83, &v89);
      sub_2301FEB10(&v89, 0, 0);
      sub_2300DA5F0(&v89);
      swift_willThrow();
      sub_23005FE3C(v78, v79);

      __swift_destroy_boxed_opaque_existential_1(&v83);
    }
  }

  return result;
}

double sub_2300D2004@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v84 = a7;
  v85 = a4;
  v86 = a5;
  v87 = a6;
  v88 = a2;
  v89 = a3;
  v9 = v8;
  v83 = a1;
  v79 = a8;
  v10 = sub_230310A58();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106[0] = v8;
  sub_23030E7E8();
  swift_allocObject();
  v106[4] = sub_23030E7D8();
  v14 = MEMORY[0x277D84F90];
  v15 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v16 = type metadata accessor for REMStoreObjectsContainer();
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v15;
  v82 = v17 + 3;
  v81 = v9;
  v17[4] = sub_23004C2B4(v14);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_280C9C460);
  v21 = *(v11 + 16);
  v19 = v11 + 16;
  v20 = v21;
  v80 = v18;
  v21(v13);
  *(&v99 + 1) = v16;
  *&v98 = v17;
  v91 = v17;

  v22 = sub_23030E7C8();
  sub_23004BC18(&v98, v13);
  v23 = v22(&v92, 0);
  v88(v23);
  v24 = v90;
  v25 = sub_23030E7B8();
  if (v24)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v27 = sub_23030EF48();
    __swift_project_value_buffer(v27, qword_27DB17288);
    v28 = v24;
    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v98 = v32;
      *v31 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter(v105[5]);
      v35 = sub_23004E30C(v33, v34, &v98);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *&v92 = v85(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v86);
      v36 = sub_23030F948();
      v38 = sub_23004E30C(v36, v37, &v98);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_230044000, v29, v30, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v75 = v20;
    v76 = v16;
    v77 = v19;
    v78 = v13;
    v88 = v10;
    v40 = v26;
    v90 = 0;
    v41 = v25;
    v42 = v82;
    swift_beginAccess();
    v43 = *v42;
    v44 = objc_allocWithZone(MEMORY[0x277D44860]);

    v105[0] = [v44 init];
    v45 = v85(0);
    *&v98 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v86);
    v47 = sub_23030F948();
    v49 = v48;
    v89 = &v74;
    MEMORY[0x28223BE20](v47);
    *(&v74 - 6) = v105;
    *(&v74 - 5) = v106;
    *(&v74 - 4) = v83;
    *(&v74 - 3) = v41;
    *(&v74 - 2) = v40;
    *(&v74 - 1) = v43;
    v50 = sub_230310268();
    v51 = v90;
    sub_2300535B4(v50, v47, v49, v50, v84, (&v74 - 8));
    if (v51)
    {

      sub_23005FE3C(v41, v40);
    }

    else
    {
      v85 = v46;
      v86 = v45;
      v87 = v41;
      v90 = v40;

      sub_23030E7A8();
      swift_allocObject();
      v52 = sub_23030E798();
      v53 = v105[0];
      v54 = [v105[0] resultStorages];
      v55 = sub_23030F658();

      *(&v99 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v98 = v55;
      sub_23004D5CC(&v98, &v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v56 = v104;
        __swift_destroy_boxed_opaque_existential_1(&v98);
        v57 = v76;
        v58 = swift_allocObject();
        v59 = v81;
        v58[2] = v81;
        v58[3] = v56;
        v60 = v59;
        v58[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v61 = v78;
        v75(v78, v80, v88);
        *(&v99 + 1) = v57;
        *&v98 = v58;

        v62 = sub_23030E788();
        sub_23004BC18(&v98, v61);
        v62(&v92, 0);
        v89 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B90);
        v63 = [v53 resultData];
        v88 = v53;
        v64 = v63;
        v65 = sub_23030EA18();
        v67 = v66;

        sub_2300DB1C0(&qword_280C978F8, &qword_27DB14B90);
        sub_23030E778();
        sub_23005FE3C(v65, v67);
        v94 = v100;
        v95 = v101;
        v96 = v102;
        v97 = v103;
        v92 = v98;
        v93 = v99;
        v68 = v88;
        v69 = [v88 latestFetchResultToken];

        sub_23005FE3C(v87, v90);

        v70 = v95;
        v71 = v79;
        *(v79 + 32) = v94;
        *(v71 + 48) = v70;
        *(v71 + 64) = v96;
        v72 = v97;
        result = *&v92;
        v73 = v93;
        *v71 = v92;
        *(v71 + 16) = v73;
        *(v71 + 80) = v72;
        *(v71 + 88) = v69;
      }

      else
      {
        sub_23004D5CC(&v98, &v92);
        sub_2301FEB10(&v92, 0, 0);
        sub_2300DA5F0(&v92);
        swift_willThrow();
        sub_23005FE3C(v87, v90);

        __swift_destroy_boxed_opaque_existential_1(&v98);
      }
    }
  }

  return result;
}

__n128 sub_2300D2AD4@<Q0>(void (*a1)(unint64_t *, uint64_t, void (*)(uint64_t))@<X0>, void (**a2)(void, void, void)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, void (*a6)(unint64_t *, uint64_t, void (*)(uint64_t))@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(unint64_t *, uint64_t, void (*)(uint64_t)))
{
  v94 = a8;
  v95 = a3;
  v91 = a1;
  v92 = a7;
  v99 = a6;
  v96 = a4;
  v97 = a5;
  v12 = v11;
  v98 = a2;
  v87 = a9;
  v93 = a10;
  v13 = sub_230310A58();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = v11;
  sub_23030E7E8();
  swift_allocObject();
  v102 = sub_23030E7D8();
  v17 = MEMORY[0x277D84F90];
  v18 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v19 = type metadata accessor for REMStoreObjectsContainer();
  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = v18;
  v90 = (v20 + 3);
  v89 = v12;
  v20[4] = sub_23004C2B4(v17);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_280C9C460);
  v24 = *(v14 + 16);
  v22 = (v14 + 16);
  v23 = v24;
  v88 = v21;
  (v24)(v16);
  v110.n128_u64[1] = v19;
  *&v109 = v20;
  v101 = v20;

  v25 = sub_23030E7C8();
  sub_23004BC18(&v109, v16);
  v25(&v103, 0);
  v95(0);
  sub_230066350(v96, v97);
  v26 = v100;
  v27 = sub_23030E7B8();
  if (v26)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_27DB17288);
    v30 = v26;
    v31 = sub_23030EF38();
    v32 = sub_230310288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v109 = v34;
      *v33 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter(v115[5]);
      v37 = sub_23004E30C(v35, v36, &v109);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *&v103 = v92(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v94);
      v38 = sub_23030F948();
      v40 = sub_23004E30C(v38, v39, &v109);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_230044000, v31, v32, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v85 = v23;
    v86 = v19;
    v95 = v22;
    v96 = v16;
    v97 = v13;
    v99 = a11;
    v42 = v28;
    v43 = v27;
    v44 = v90;
    swift_beginAccess();
    v45 = *v44;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v115[0] = [v46 init];
    v47 = v92(0);
    v100 = 0;
    v92 = v47;
    *&v109 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v94);
    v49 = sub_23030F948();
    v51 = v50;
    v98 = &v85;
    MEMORY[0x28223BE20](v49);
    *(&v85 - 6) = v115;
    *(&v85 - 5) = &v116;
    *(&v85 - 4) = v91;
    *(&v85 - 3) = v43;
    *(&v85 - 2) = v42;
    *(&v85 - 1) = v45;
    v52 = sub_230310268();
    v53 = v100;
    sub_2300535B4(v52, v49, v51, v52, v99, (&v85 - 8));
    v100 = v53;
    if (v53)
    {

      sub_23005FE3C(v43, v42);
    }

    else
    {
      v93 = v48;
      v94 = v43;
      v99 = v42;

      sub_23030E7A8();
      swift_allocObject();
      v54 = sub_23030E798();
      v55 = v115[0];
      v56 = [v115[0] resultStorages];
      v57 = sub_23030F658();

      v110.n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v109 = v57;
      sub_23004D5CC(&v109, &v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v58 = v114;
        __swift_destroy_boxed_opaque_existential_1(&v109);
        v59 = v86;
        v60 = swift_allocObject();
        v61 = v89;
        v60[2] = v89;
        v60[3] = v58;
        v62 = v61;
        v60[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v63 = v96;
        v85(v96, v88, v97);
        v110.n128_u64[1] = v59;
        *&v109 = v60;

        v64 = sub_23030E788();
        sub_23004BC18(&v109, v63);
        v64(&v103, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C20);
        v98 = v54;
        v65 = [v55 resultData];
        v66 = sub_23030EA18();
        v68 = v67;

        sub_2300DB1C0(&qword_280C97908, &qword_27DB14C20);
        v69 = v100;
        sub_23030E778();
        if (v69)
        {
          v100 = v60;
          sub_23005FE3C(v66, v68);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v70 = sub_23030EF48();
          __swift_project_value_buffer(v70, qword_27DB17288);
          v71 = v69;
          v72 = sub_23030EF38();
          v73 = sub_230310288();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v109 = v75;
            *v74 = 136315394;
            swift_getErrorValue();
            v76 = Error.rem_errorDescription.getter(v108);
            v78 = sub_23004E30C(v76, v77, &v109);

            *(v74 + 4) = v78;
            *(v74 + 12) = 2080;
            *&v103 = v92;
            v79 = sub_23030F948();
            v81 = sub_23004E30C(v79, v80, &v109);

            *(v74 + 14) = v81;
            _os_log_impl(&dword_230044000, v72, v73, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v74, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v75, -1, -1);
            MEMORY[0x231914180](v74, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v94, v99);
        }

        else
        {
          sub_23005FE3C(v66, v68);
          v105 = v111;
          v106 = v112;
          v107 = v113;
          v103 = v109;
          v104 = v110;
          v82 = [v55 latestFetchResultToken];

          sub_23005FE3C(v94, v99);

          v83 = v106;
          v84 = v87;
          *(v87 + 32) = v105;
          *(v84 + 48) = v83;
          *(v84 + 64) = v107;
          result = v104;
          *v84 = v103;
          *(v84 + 16) = result;
          *(v84 + 80) = v82;
        }
      }

      else
      {
        sub_23004D5CC(&v109, &v103);
        sub_2301FEB10(&v103, 0, 0);
        sub_2300DA5F0(&v103);
        swift_willThrow();
        sub_23005FE3C(v94, v99);

        __swift_destroy_boxed_opaque_existential_1(&v109);
      }
    }
  }

  return result;
}

double sub_2300D3508@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v111[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v104 + 1) = v11;
  *&v103 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v103, v8);
  v19(&v96, 0);
  type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters(0);
  sub_230066350(&qword_27DB14C28, type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v103 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v110[5]);
      v31 = sub_23004E30C(v29, v30, &v103);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v96 = type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C30);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v103);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v110[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation();
    *&v103 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C30);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = v81;
    MEMORY[0x28223BE20](v43);
    v81[-6] = v110;
    v81[-5] = v111;
    v81[-4] = v92;
    v81[-3] = v37;
    v81[-2] = v36;
    v81[-1] = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, &v81[-8]);
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81[1] = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v110[0];
      v50 = [v110[0] resultStorages];
      v51 = sub_23030F658();

      *(&v104 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v103 = v51;
      sub_23004D5CC(&v103, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v109;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v104 + 1) = v53;
        *&v103 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v103, v57);
        v58(&v96, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C38);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_27DB14C40, &qword_27DB14C38);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v103 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v102);
            v72 = sub_23004E30C(v70, v71, &v103);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v96 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v103);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v98 = v105;
          v99 = v106;
          v100 = v107;
          v101 = v108;
          v96 = v103;
          v97 = v104;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v99;
          v78 = v88;
          *(v88 + 32) = v98;
          *(v78 + 48) = v77;
          *(v78 + 64) = v100;
          v79 = v101;
          result = *&v96;
          v80 = v97;
          *v78 = v96;
          *(v78 + 16) = v80;
          *(v78 + 80) = v79;
          *(v78 + 88) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v103, &v96);
        sub_2301FEB10(&v96, 0, 0);
        sub_2300DA5F0(&v96);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v103);
      }
    }
  }

  return result;
}