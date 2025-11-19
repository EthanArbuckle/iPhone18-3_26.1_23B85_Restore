uint64_t sub_298C12AD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1F3A0;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C12AFC(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 8);
  if ((*(v3 + 16) & 1) == 0)
  {
    v4 = *(*a2 + 12);
    *v3 = *a3;
    *(v3 + 8) = v4;
    *(v3 + 16) = 1;
  }

  return result;
}

uint64_t sub_298C12B24(uint64_t *a1)
{
  v95 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = *v3 - 1;
  if (v4 > 0x11)
  {
    v6 = "H11";
    v5 = 3;
  }

  else
  {
    v5 = qword_298D1B708[v4];
    v6 = off_29EEB6378[v4];
  }

  sub_298BBB6E0(&v93, v6, v5);
  sub_298B89CC0(v2, "Platform", 8uLL);
  sub_298B891F0(v2, &v93);
  --*(v2 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v7 = *a1;
  v8 = *(v3 + 4);
  v93 = 3;
  v94.__r_.__value_.__r.__words[0] = v8;
  sub_298B89CC0(v7, "ClusterID", 9uLL);
  sub_298B891F0(v7, &v93);
  --*(v7 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    v9 = *a1;
    if (*(v3 + 31) < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v93 == 7)
    {
      sub_298B8A370(&v94);
    }

    else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
      v9 = *a1;
      if ((*(v3 + 31) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_19:
      sub_298AFE11C(&v91, *(v3 + 8), *(v3 + 16));
      goto LABEL_22;
    }

    v9 = *a1;
    if (*(v3 + 31) < 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v10 = *(v3 + 8);
  v91.__r_.__value_.__r.__words[2] = *(v3 + 24);
  *&v91.__r_.__value_.__l.__data_ = v10;
LABEL_22:
  v93 = 6;
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v91;
  }

  else
  {
    v11 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v11, size, 0))
  {
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v91;
    }

    else
    {
      v68 = v91.__r_.__value_.__r.__words[0];
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v91.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v68, v69, &v92);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    v91 = v92;
  }

  v94 = v91;
  memset(&v91, 0, sizeof(v91));
  sub_298B89CC0(v9, "ClusterName", 0xBuLL);
  sub_298B891F0(v9, &v93);
  --*(v9 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_36;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_36:
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(v91.__r_.__value_.__l.__data_);
    v13 = *a1;
    v14 = *(v3 + 32) - 1;
    if (v14 > 3)
    {
      goto LABEL_41;
    }

LABEL_38:
    v15 = qword_298D1B798[v14];
    v16 = off_29EEB6408[v14];
    goto LABEL_42;
  }

LABEL_37:
  v13 = *a1;
  v14 = *(v3 + 32) - 1;
  if (v14 <= 3)
  {
    goto LABEL_38;
  }

LABEL_41:
  v16 = "E";
  v15 = 1;
LABEL_42:
  sub_298BBB6E0(&v93, v16, v15);
  sub_298B89CC0(v13, "ClusterType", 0xBuLL);
  sub_298B891F0(v13, &v93);
  --*(v13 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v17 = *a1;
  if (*(v3 + 36) == 1)
  {
    v18 = 11;
  }

  else
  {
    v18 = 8;
  }

  if (*(v3 + 36) == 1)
  {
    v19 = "TraceStream";
  }

  else
  {
    v19 = "TraceRAM";
  }

  sub_298BBB6E0(&v93, v19, v18);
  sub_298B89CC0(v17, "TraceType", 9uLL);
  sub_298B891F0(v17, &v93);
  --*(v17 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v20 = *a1;
  v21 = *(v3 + 40);
  v93 = 3;
  v94.__r_.__value_.__r.__words[0] = v21;
  sub_298B89CC0(v20, "NumCPUs", 7uLL);
  sub_298B891F0(v20, &v93);
  --*(v20 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v22 = *a1;
  sub_298ADC8F4(&v90, *(v3 + 48));
  v93 = 6;
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v90;
  }

  else
  {
    v23 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v90.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v23, v24, 0))
  {
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = &v90;
    }

    else
    {
      v70 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v71 = v90.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v70, v71, &v92);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v90 = v92;
  }

  v94 = v90;
  memset(&v90, 0, sizeof(v90));
  sub_298B89CC0(v22, "MCTInitial", 0xAuLL);
  sub_298B891F0(v22, &v93);
  --*(v22 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_166;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_83;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_83:
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_166;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

LABEL_166:
  operator delete(v90.__r_.__value_.__l.__data_);
LABEL_84:
  v25 = *a1;
  sub_298ADC8F4(&__p, *(v3 + 56));
  v93 = 6;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(p_p, v27, 0))
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &__p;
    }

    else
    {
      v72 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = __p.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v72, v73, &v92);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v92;
  }

  v94 = __p;
  memset(&__p, 0, sizeof(__p));
  sub_298B89CC0(v25, "MCTRef", 6uLL);
  sub_298B891F0(v25, &v93);
  --*(v25 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_168;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_98;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_98:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_168;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_168:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_99:
  v28 = *a1;
  sub_298ADC8F4(&v88, *(v3 + 64));
  v93 = 6;
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v88;
  }

  else
  {
    v29 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v88.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v29, v30, 0))
  {
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v88;
    }

    else
    {
      v74 = v88.__r_.__value_.__r.__words[0];
    }

    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v88.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v74, v75, &v92);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v88 = v92;
  }

  v94 = v88;
  memset(&v88, 0, sizeof(v88));
  sub_298B89CC0(v28, "CarveoutAddr", 0xCuLL);
  sub_298B891F0(v28, &v93);
  --*(v28 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_170;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_113;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_113:
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_170;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_170:
  operator delete(v88.__r_.__value_.__l.__data_);
LABEL_114:
  v31 = *a1;
  sub_298ADC8F4(&v87, *(v3 + 72));
  v93 = 6;
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v87;
  }

  else
  {
    v32 = v87.__r_.__value_.__r.__words[0];
  }

  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v87.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v32, v33, 0))
  {
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v87;
    }

    else
    {
      v76 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v87.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v76, v77, &v92);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    v87 = v92;
  }

  v94 = v87;
  memset(&v87, 0, sizeof(v87));
  sub_298B89CC0(v31, "CarveoutSize", 0xCuLL);
  sub_298B891F0(v31, &v93);
  --*(v31 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_172;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_128;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_128:
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_172;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_172:
  operator delete(v87.__r_.__value_.__l.__data_);
LABEL_129:
  v34 = *a1;
  sub_298ADC8F4(&v86, *(v3 + 80));
  v93 = 6;
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v86;
  }

  else
  {
    v35 = v86.__r_.__value_.__r.__words[0];
  }

  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v86.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v35, v36, 0))
  {
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v86;
    }

    else
    {
      v78 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v86.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v78, v79, &v92);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    v86 = v92;
  }

  v94 = v86;
  memset(&v86, 0, sizeof(v86));
  sub_298B89CC0(v34, "CarveoutVA", 0xAuLL);
  sub_298B891F0(v34, &v93);
  --*(v34 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_174;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_143;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_143:
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_174;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_174:
  operator delete(v86.__r_.__value_.__l.__data_);
LABEL_144:
  v37 = *a1;
  sub_298ADC8F4(&v85, *(v3 + 88));
  v93 = 6;
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v85;
  }

  else
  {
    v38 = v85.__r_.__value_.__r.__words[0];
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v85.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v38, v39, 0))
  {
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = &v85;
    }

    else
    {
      v80 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v81 = v85.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v80, v81, &v92);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v85 = v92;
  }

  v94 = v85;
  memset(&v85, 0, sizeof(v85));
  sub_298B89CC0(v37, "FillSize", 8uLL);
  sub_298B891F0(v37, &v93);
  --*(v37 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_176;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_158;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_158:
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_176;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_176:
  operator delete(v85.__r_.__value_.__l.__data_);
LABEL_159:
  v40 = *a1;
  v41 = *(v3 + 96);
  v93 = 1;
  v94.__r_.__value_.__s.__data_[0] = v41;
  sub_298B89CC0(v40, "DidWrap", 7uLL);
  sub_298B891F0(v40, &v93);
  --*(v40 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v42 = *a1;
  v43 = *(v3 + 97);
  v93 = 1;
  v94.__r_.__value_.__s.__data_[0] = v43;
  sub_298B89CC0(v42, "AddressTrace", 0xCuLL);
  sub_298B891F0(v42, &v93);
  --*(v42 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v44 = *a1;
  v45 = *(v3 + 98);
  v93 = 1;
  v94.__r_.__value_.__s.__data_[0] = v45;
  sub_298B89CC0(v44, "DebugLog", 8uLL);
  sub_298B891F0(v44, &v93);
  --*(v44 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    v46 = *a1;
    if (*(v3 + 128) == 1)
    {
      goto LABEL_193;
    }

    goto LABEL_200;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_192;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_192:
    v46 = *a1;
    if (*(v3 + 128) == 1)
    {
      goto LABEL_193;
    }

LABEL_200:
    v48 = "???";
    v50 = 3;
    goto LABEL_201;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  v46 = *a1;
  if (*(v3 + 128) != 1)
  {
    goto LABEL_200;
  }

LABEL_193:
  v47 = *(v3 + 127);
  if (v47 >= 0)
  {
    v48 = (v3 + 104);
  }

  else
  {
    v48 = *(v3 + 104);
  }

  v49 = *(v3 + 112);
  if (v47 >= 0)
  {
    v50 = *(v3 + 127);
  }

  else
  {
    v50 = *(v3 + 112);
  }

LABEL_201:
  sub_298BBB6E0(&v93, v48, v50);
  sub_298B89CC0(v46, "Filename", 8uLL);
  sub_298B891F0(v46, &v93);
  --*(v46 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    v51 = *a1;
    v52 = *(v3 + 184);
    if (v52)
    {
      goto LABEL_209;
    }
  }

  else
  {
    if (v93 == 7)
    {
      sub_298B8A370(&v94);
    }

    else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
      v51 = *a1;
      v52 = *(v3 + 184);
      if (!v52)
      {
        goto LABEL_211;
      }

LABEL_209:
      v53 = (*(*v52 + 24))(v52);
      goto LABEL_212;
    }

    v51 = *a1;
    v52 = *(v3 + 184);
    if (v52)
    {
      goto LABEL_209;
    }
  }

LABEL_211:
  v53 = 0;
LABEL_212:
  sub_298ADC8F4(&v84, v53);
  v93 = 6;
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v84;
  }

  else
  {
    v54 = v84.__r_.__value_.__r.__words[0];
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = v84.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v54, v55, 0))
  {
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = &v84;
    }

    else
    {
      v82 = v84.__r_.__value_.__r.__words[0];
    }

    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v83 = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v83 = v84.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v82, v83, &v92);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    v84 = v92;
  }

  v94 = v84;
  memset(&v84, 0, sizeof(v84));
  sub_298B89CC0(v51, "TraceSize", 9uLL);
  sub_298B891F0(v51, &v93);
  --*(v51 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_234;
  }

  if (v93 == 7)
  {
    sub_298B8A370(&v94);
    goto LABEL_226;
  }

  if (v93 != 6 || (SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_226:
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_234;
  }

  operator delete(v94.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_227;
  }

LABEL_234:
  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_227:
  v56 = *a1;
  v57 = *(v3 + 136);
  v93 = 3;
  v94.__r_.__value_.__r.__words[0] = v57;
  sub_298B89CC0(v56, "ChunkSize", 9uLL);
  sub_298B891F0(v56, &v93);
  --*(v56 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v58 = *a1;
  v59 = *(v3 + 144);
  v93 = 3;
  v94.__r_.__value_.__r.__words[0] = v59;
  sub_298B89CC0(v58, "TotalLostBytes", 0xEuLL);
  sub_298B891F0(v58, &v93);
  --*(v58 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v60 = *a1;
  v61 = *(v3 + 152);
  v93 = 3;
  v94.__r_.__value_.__r.__words[0] = v61;
  sub_298B89CC0(v60, "TotalStreamedBytes", 0x12uLL);
  sub_298B891F0(v60, &v93);
  --*(v60 + 8);
  if (v93 == 8)
  {
    sub_298B8A314(&v94.__r_.__value_.__l.__data_);
  }

  else if (v93 == 7)
  {
    sub_298B8A370(&v94);
  }

  else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v62 = *a1;
  sub_298B89CC0(v62, "LossByteOffsets", 0xFuLL);
  sub_298B89A80(v62);
  v63 = *(v3 + 160);
  for (i = *(v3 + 168); v63 != i; ++v63)
  {
    v65 = *v63;
    v93 = 3;
    v94.__r_.__value_.__r.__words[0] = v65;
    sub_298B891F0(v62, &v93);
    if (v93 == 8)
    {
      sub_298B8A314(&v94.__r_.__value_.__l.__data_);
    }

    else if (v93 == 7)
    {
      sub_298B8A370(&v94);
    }

    else if (v93 == 6 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }
  }

  result = sub_298B89B0C(v62);
  --*(v62 + 8);
  v67 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C13D54(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    return sub_298BDC2AC(result);
  }

  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_298C13DBC(uint64_t a1)
{
  v147 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (***a1 != 1346589805)
  {
    sub_298ADC8F4(&v136, ***(a1 + 16));
    v145 = 6;
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v136;
    }

    else
    {
      v5 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v136.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(v5, size, 0))
    {
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &v136;
      }

      else
      {
        v98 = v136.__r_.__value_.__r.__words[0];
      }

      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v99 = v136.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v98, v99, &v144);
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v136 = v144;
    }

    v146 = v136;
    memset(&v136, 0, sizeof(v136));
    sub_298B89CC0(v2, "magic", 5uLL);
    sub_298B891F0(v2, &v145);
    --*(v2 + 8);
    if (v145 == 8)
    {
      sub_298B8A314(&v146.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_441;
    }

    if (v145 == 7)
    {
      sub_298B8A370(&v146);
    }

    else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_441:
      operator delete(v136.__r_.__value_.__l.__data_);
LABEL_45:
      v10 = *(a1 + 8);
      sub_298ADC8F4(&v135, *(**(a1 + 16) + 4));
      v145 = 6;
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v135;
      }

      else
      {
        v11 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = v135.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v11, v12, 0))
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &v135;
        }

        else
        {
          v102 = v135.__r_.__value_.__r.__words[0];
        }

        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v103 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v103 = v135.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v102, v103, &v144);
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        v135 = v144;
      }

      v146 = v135;
      memset(&v135, 0, sizeof(v135));
      sub_298B89CC0(v10, "version", 7uLL);
      sub_298B891F0(v10, &v145);
      --*(v10 + 8);
      if (v145 == 8)
      {
        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_445;
      }

      if (v145 == 7)
      {
        sub_298B8A370(&v146);
      }

      else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

LABEL_445:
        operator delete(v135.__r_.__value_.__l.__data_);
LABEL_75:
        v16 = *(a1 + 8);
        sub_298ADC8F4(&v134, *(**(a1 + 16) + 8));
        v145 = 6;
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v134;
        }

        else
        {
          v17 = v134.__r_.__value_.__r.__words[0];
        }

        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v134.__r_.__value_.__l.__size_;
        }

        if (!sub_298B88E98(v17, v18, 0))
        {
          if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v106 = &v134;
          }

          else
          {
            v106 = v134.__r_.__value_.__r.__words[0];
          }

          if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v107 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v107 = v134.__r_.__value_.__l.__size_;
          }

          sub_298B88F28(v106, v107, &v144);
          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          v134 = v144;
        }

        v146 = v134;
        memset(&v134, 0, sizeof(v134));
        sub_298B89CC0(v16, "trace_packet_bytes", 0x12uLL);
        sub_298B891F0(v16, &v145);
        --*(v16 + 8);
        if (v145 == 8)
        {
          sub_298B8A314(&v146.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_105;
          }

          goto LABEL_449;
        }

        if (v145 == 7)
        {
          sub_298B8A370(&v146);
        }

        else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v146.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_105;
          }

LABEL_449:
          operator delete(v134.__r_.__value_.__l.__data_);
LABEL_105:
          v22 = *(a1 + 8);
          sub_298ADC8F4(&v133, *(**(a1 + 16) + 16));
          v145 = 6;
          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v133;
          }

          else
          {
            v23 = v133.__r_.__value_.__r.__words[0];
          }

          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v133.__r_.__value_.__l.__size_;
          }

          if (!sub_298B88E98(v23, v24, 0))
          {
            if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v110 = &v133;
            }

            else
            {
              v110 = v133.__r_.__value_.__r.__words[0];
            }

            if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v111 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v111 = v133.__r_.__value_.__l.__size_;
            }

            sub_298B88F28(v110, v111, &v144);
            if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v133.__r_.__value_.__l.__data_);
            }

            v133 = v144;
          }

          v146 = v133;
          memset(&v133, 0, sizeof(v133));
          sub_298B89CC0(v22, "buffer_size", 0xBuLL);
          sub_298B891F0(v22, &v145);
          --*(v22 + 8);
          if (v145 == 8)
          {
            sub_298B8A314(&v146.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_135;
            }

            goto LABEL_453;
          }

          if (v145 == 7)
          {
            sub_298B8A370(&v146);
          }

          else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v146.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_135;
            }

LABEL_453:
            operator delete(v133.__r_.__value_.__l.__data_);
LABEL_135:
            v28 = *(a1 + 8);
            sub_298ADC8F4(&v132, *(**(a1 + 16) + 24));
            v145 = 6;
            if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v132;
            }

            else
            {
              v29 = v132.__r_.__value_.__r.__words[0];
            }

            if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = SHIBYTE(v132.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v132.__r_.__value_.__l.__size_;
            }

            if (!sub_298B88E98(v29, v30, 0))
            {
              if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v114 = &v132;
              }

              else
              {
                v114 = v132.__r_.__value_.__r.__words[0];
              }

              if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v115 = SHIBYTE(v132.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v115 = v132.__r_.__value_.__l.__size_;
              }

              sub_298B88F28(v114, v115, &v144);
              if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v132.__r_.__value_.__l.__data_);
              }

              v132 = v144;
            }

            v146 = v132;
            memset(&v132, 0, sizeof(v132));
            sub_298B89CC0(v28, "num_cpus", 8uLL);
            sub_298B891F0(v28, &v145);
            --*(v28 + 8);
            if (v145 == 8)
            {
              sub_298B8A314(&v146.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_165;
              }

              goto LABEL_457;
            }

            if (v145 == 7)
            {
              sub_298B8A370(&v146);
            }

            else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_165;
              }

LABEL_457:
              operator delete(v132.__r_.__value_.__l.__data_);
LABEL_165:
              v34 = *(a1 + 8);
              sub_298ADC8F4(&v131, *(**(a1 + 16) + 28));
              v145 = 6;
              if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v35 = &v131;
              }

              else
              {
                v35 = v131.__r_.__value_.__r.__words[0];
              }

              if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v36 = v131.__r_.__value_.__l.__size_;
              }

              if (!sub_298B88E98(v35, v36, 0))
              {
                if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v118 = &v131;
                }

                else
                {
                  v118 = v131.__r_.__value_.__r.__words[0];
                }

                if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v119 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v119 = v131.__r_.__value_.__l.__size_;
                }

                sub_298B88F28(v118, v119, &v144);
                if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v131.__r_.__value_.__l.__data_);
                }

                v131 = v144;
              }

              v146 = v131;
              memset(&v131, 0, sizeof(v131));
              sub_298B89CC0(v34, "num_clusters", 0xCuLL);
              sub_298B891F0(v34, &v145);
              --*(v34 + 8);
              if (v145 == 8)
              {
                sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_195;
                }

                goto LABEL_461;
              }

              if (v145 == 7)
              {
                sub_298B8A370(&v146);
              }

              else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v146.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_195;
                }

LABEL_461:
                operator delete(v131.__r_.__value_.__l.__data_);
LABEL_195:
                v40 = *(a1 + 8);
                sub_298ADC8F4(&v130, *(**(a1 + 16) + 32));
                v145 = 6;
                if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v41 = &v130;
                }

                else
                {
                  v41 = v130.__r_.__value_.__r.__words[0];
                }

                if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v42 = SHIBYTE(v130.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v42 = v130.__r_.__value_.__l.__size_;
                }

                if (!sub_298B88E98(v41, v42, 0))
                {
                  if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v122 = &v130;
                  }

                  else
                  {
                    v122 = v130.__r_.__value_.__r.__words[0];
                  }

                  if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v123 = SHIBYTE(v130.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v123 = v130.__r_.__value_.__l.__size_;
                  }

                  sub_298B88F28(v122, v123, &v144);
                  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v130.__r_.__value_.__l.__data_);
                  }

                  v130 = v144;
                }

                v146 = v130;
                memset(&v130, 0, sizeof(v130));
                sub_298B89CC0(v40, "clusters_size", 0xDuLL);
                sub_298B891F0(v40, &v145);
                --*(v40 + 8);
                if (v145 == 8)
                {
                  sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v130.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_465;
                }

                if (v145 == 7)
                {
                  sub_298B8A370(&v146);
                }

                else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v146.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v130.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_225;
                  }

LABEL_465:
                  operator delete(v130.__r_.__value_.__l.__data_);
LABEL_225:
                  v46 = *(a1 + 8);
                  v47 = *(a1 + 16);
                  sub_298B89CC0(v46, "clusters", 8uLL);
                  sub_298B89A80(v46);
                  v48 = *v47;
                  v49 = *(*v47 + 28);
                  if (v49)
                  {
                    v50 = v48 + 48 * v49 + 40;
                    v51 = v48 + 40;
                    while (1)
                    {
                      sub_298B89BA0(v46);
                      sub_298ADC8F4(&v143, *v51);
                      v145 = 6;
                      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v52 = &v143;
                      }

                      else
                      {
                        v52 = v143.__r_.__value_.__r.__words[0];
                      }

                      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v53 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v53 = v143.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v52, v53, 0))
                      {
                        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v66 = &v143;
                        }

                        else
                        {
                          v66 = v143.__r_.__value_.__r.__words[0];
                        }

                        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v67 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v67 = v143.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v66, v67, &v144);
                        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v143.__r_.__value_.__l.__data_);
                        }

                        v143 = v144;
                      }

                      v146 = v143;
                      memset(&v143, 0, sizeof(v143));
                      sub_298B89CC0(v46, "buffer_size", 0xBuLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_245;
                        }

                        goto LABEL_333;
                      }

                      if (v145 == 7)
                      {
                        break;
                      }

                      if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_244;
                      }

                      operator delete(v146.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_245;
                      }

LABEL_333:
                      operator delete(v143.__r_.__value_.__l.__data_);
LABEL_245:
                      sub_298ADC8F4(&v142, *(v51 + 8));
                      v145 = 6;
                      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v54 = &v142;
                      }

                      else
                      {
                        v54 = v142.__r_.__value_.__r.__words[0];
                      }

                      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v55 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v55 = v142.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v54, v55, 0))
                      {
                        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v68 = &v142;
                        }

                        else
                        {
                          v68 = v142.__r_.__value_.__r.__words[0];
                        }

                        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v69 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v69 = v142.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v68, v69, &v144);
                        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v142.__r_.__value_.__l.__data_);
                        }

                        v142 = v144;
                      }

                      v146 = v142;
                      memset(&v142, 0, sizeof(v142));
                      sub_298B89CC0(v46, "buffer_fill_size", 0x10uLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_260;
                        }

                        goto LABEL_335;
                      }

                      if (v145 == 7)
                      {
                        sub_298B8A370(&v146);
LABEL_259:
                        if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_260;
                        }

                        goto LABEL_335;
                      }

                      if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_259;
                      }

                      operator delete(v146.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_260;
                      }

LABEL_335:
                      operator delete(v142.__r_.__value_.__l.__data_);
LABEL_260:
                      sub_298ADC8F4(&v141, *(v51 + 16));
                      v145 = 6;
                      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v56 = &v141;
                      }

                      else
                      {
                        v56 = v141.__r_.__value_.__r.__words[0];
                      }

                      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v57 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v57 = v141.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v56, v57, 0))
                      {
                        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v70 = &v141;
                        }

                        else
                        {
                          v70 = v141.__r_.__value_.__r.__words[0];
                        }

                        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v71 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v71 = v141.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v70, v71, &v144);
                        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v141.__r_.__value_.__l.__data_);
                        }

                        v141 = v144;
                      }

                      v146 = v141;
                      memset(&v141, 0, sizeof(v141));
                      sub_298B89CC0(v46, "cluster_id", 0xAuLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_275;
                        }

                        goto LABEL_337;
                      }

                      if (v145 == 7)
                      {
                        sub_298B8A370(&v146);
LABEL_274:
                        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_275;
                        }

                        goto LABEL_337;
                      }

                      if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_274;
                      }

                      operator delete(v146.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_275;
                      }

LABEL_337:
                      operator delete(v141.__r_.__value_.__l.__data_);
LABEL_275:
                      sub_298ADC8F4(&__p, *(v51 + 20));
                      v145 = 6;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        p_p = &__p;
                      }

                      else
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v59 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v59 = __p.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(p_p, v59, 0))
                      {
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v72 = &__p;
                        }

                        else
                        {
                          v72 = __p.__r_.__value_.__r.__words[0];
                        }

                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v73 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v73 = __p.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v72, v73, &v144);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        __p = v144;
                      }

                      v146 = __p;
                      memset(&__p, 0, sizeof(__p));
                      sub_298B89CC0(v46, "num_cpus", 8uLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_290;
                        }

                        goto LABEL_339;
                      }

                      if (v145 == 7)
                      {
                        sub_298B8A370(&v146);
LABEL_289:
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_290;
                        }

                        goto LABEL_339;
                      }

                      if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_289;
                      }

                      operator delete(v146.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_290;
                      }

LABEL_339:
                      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_290:
                      sub_298ADC8F4(&v139, *(v51 + 24));
                      v145 = 6;
                      if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v60 = &v139;
                      }

                      else
                      {
                        v60 = v139.__r_.__value_.__r.__words[0];
                      }

                      if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v61 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v61 = v139.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v60, v61, 0))
                      {
                        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v74 = &v139;
                        }

                        else
                        {
                          v74 = v139.__r_.__value_.__r.__words[0];
                        }

                        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v75 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v75 = v139.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v74, v75, &v144);
                        if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v139.__r_.__value_.__l.__data_);
                        }

                        v139 = v144;
                      }

                      v146 = v139;
                      memset(&v139, 0, sizeof(v139));
                      sub_298B89CC0(v46, "cluster_type", 0xCuLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_305;
                        }

                        goto LABEL_341;
                      }

                      if (v145 == 7)
                      {
                        sub_298B8A370(&v146);
LABEL_304:
                        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_305;
                        }

                        goto LABEL_341;
                      }

                      if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_304;
                      }

                      operator delete(v146.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_305;
                      }

LABEL_341:
                      operator delete(v139.__r_.__value_.__l.__data_);
LABEL_305:
                      sub_298ADC8F4(&v138, *(v51 + 32));
                      v145 = 6;
                      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v62 = &v138;
                      }

                      else
                      {
                        v62 = v138.__r_.__value_.__r.__words[0];
                      }

                      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v63 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v63 = v138.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v62, v63, 0))
                      {
                        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v76 = &v138;
                        }

                        else
                        {
                          v76 = v138.__r_.__value_.__r.__words[0];
                        }

                        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v77 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v77 = v138.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v76, v77, &v144);
                        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v138.__r_.__value_.__l.__data_);
                        }

                        v138 = v144;
                      }

                      v146 = v138;
                      memset(&v138, 0, sizeof(v138));
                      sub_298B89CC0(v46, "trace_ctl_cfg_raw", 0x11uLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                        {
LABEL_343:
                          operator delete(v138.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        if (v145 == 7)
                        {
                          sub_298B8A370(&v146);
                        }

                        else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v146.__r_.__value_.__l.__data_);
                          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_343;
                          }

                          goto LABEL_320;
                        }

                        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_343;
                        }
                      }

LABEL_320:
                      sub_298ADC8F4(&v137, *(v51 + 40));
                      v145 = 6;
                      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v64 = &v137;
                      }

                      else
                      {
                        v64 = v137.__r_.__value_.__r.__words[0];
                      }

                      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v65 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v65 = v137.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v64, v65, 0))
                      {
                        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v78 = &v137;
                        }

                        else
                        {
                          v78 = v137.__r_.__value_.__r.__words[0];
                        }

                        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v79 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v79 = v137.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v78, v79, &v144);
                        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v137.__r_.__value_.__l.__data_);
                        }

                        v137 = v144;
                      }

                      v146 = v137;
                      memset(&v137, 0, sizeof(v137));
                      sub_298B89CC0(v46, "trace_core_cfg_raw", 0x12uLL);
                      sub_298B891F0(v46, &v145);
                      --*(v46 + 8);
                      if (v145 == 8)
                      {
                        sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                      }

                      else if (v145 == 7)
                      {
                        sub_298B8A370(&v146);
                      }

                      else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v146.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v137.__r_.__value_.__l.__data_);
                        sub_298B89C2C(v46);
                        v51 += 48;
                        if (v51 == v50)
                        {
                          goto LABEL_410;
                        }
                      }

                      else
                      {
                        sub_298B89C2C(v46);
                        v51 += 48;
                        if (v51 == v50)
                        {
                          goto LABEL_410;
                        }
                      }
                    }

                    sub_298B8A370(&v146);
LABEL_244:
                    if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_245;
                    }

                    goto LABEL_333;
                  }

LABEL_410:
                  sub_298B89B0C(v46);
                  --*(v46 + 8);
                  v80 = *(a1 + 8);
                  v81 = **(a1 + 16);
                  if (*(v81 + 4) >= 2u)
                  {
                    v82 = *(v81 + *(v81 + 32) + 40);
                  }

                  else
                  {
                    v82 = 0;
                  }

                  sub_298ADC8F4(&v143, v82);
                  v145 = 6;
                  if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v83 = &v143;
                  }

                  else
                  {
                    v83 = v143.__r_.__value_.__r.__words[0];
                  }

                  if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v84 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v84 = v143.__r_.__value_.__l.__size_;
                  }

                  if (!sub_298B88E98(v83, v84, 0))
                  {
                    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v126 = &v143;
                    }

                    else
                    {
                      v126 = v143.__r_.__value_.__r.__words[0];
                    }

                    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v127 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v127 = v143.__r_.__value_.__l.__size_;
                    }

                    sub_298B88F28(v126, v127, &v144);
                    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v143.__r_.__value_.__l.__data_);
                    }

                    v143 = v144;
                  }

                  v146 = v143;
                  memset(&v143, 0, sizeof(v143));
                  sub_298B89CC0(v80, "pcarveout_va", 0xCuLL);
                  sub_298B891F0(v80, &v145);
                  --*(v80 + 8);
                  if (v145 != 8)
                  {
                    if (v145 == 7)
                    {
                      sub_298B8A370(&v146);
                    }

                    else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v146.__r_.__value_.__l.__data_);
                      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                      {
LABEL_469:
                        operator delete(v143.__r_.__value_.__l.__data_);
                        v87 = *(a1 + 8);
                        v88 = **(a1 + 16);
                        if (*(v88 + 4) >= 3u)
                        {
                          goto LABEL_470;
                        }

                        goto LABEL_436;
                      }

LABEL_435:
                      v87 = *(a1 + 8);
                      v88 = **(a1 + 16);
                      if (*(v88 + 4) >= 3u)
                      {
LABEL_470:
                        v89 = *(v88 + *(v88 + 32) + 48);
LABEL_471:
                        sub_298ADC8F4(&v142, v89);
                        v145 = 6;
                        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v90 = &v142;
                        }

                        else
                        {
                          v90 = v142.__r_.__value_.__r.__words[0];
                        }

                        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v91 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v142.__r_.__value_.__l.__size_;
                        }

                        if (!sub_298B88E98(v90, v91, 0))
                        {
                          if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v128 = &v142;
                          }

                          else
                          {
                            v128 = v142.__r_.__value_.__r.__words[0];
                          }

                          if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v129 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v129 = v142.__r_.__value_.__l.__size_;
                          }

                          sub_298B88F28(v128, v129, &v144);
                          if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v142.__r_.__value_.__l.__data_);
                          }

                          v142 = v144;
                        }

                        v146 = v142;
                        memset(&v142, 0, sizeof(v142));
                        sub_298B89CC0(v87, "mach_continuous_time_ref", 0x18uLL);
                        sub_298B891F0(v87, &v145);
                        --*(v87 + 8);
                        if (v145 == 8)
                        {
                          sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                          if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_498;
                          }

                          goto LABEL_486;
                        }

                        if (v145 == 7)
                        {
                          sub_298B8A370(&v146);
                        }

                        else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v146.__r_.__value_.__l.__data_);
                          if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_498;
                          }

LABEL_486:
                          v92 = v142.__r_.__value_.__r.__words[0];
LABEL_487:
                          operator delete(v92);
                          goto LABEL_498;
                        }

                        if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_498;
                        }

                        goto LABEL_486;
                      }

LABEL_436:
                      v89 = 0;
                      goto LABEL_471;
                    }

                    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_435;
                  }

                  sub_298B8A314(&v146.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_469;
                  }

                  goto LABEL_435;
                }

                if ((SHIBYTE(v130.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_225;
                }

                goto LABEL_465;
              }

              if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_195;
              }

              goto LABEL_461;
            }

            if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_165;
            }

            goto LABEL_457;
          }

          if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_135;
          }

          goto LABEL_453;
        }

        if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_449;
      }

      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_445;
    }

    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_441;
  }

  sub_298ADC8F4(&v143, 0x5043546DuLL);
  v145 = 6;
  if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v143;
  }

  else
  {
    v3 = v143.__r_.__value_.__r.__words[0];
  }

  if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v4 = v143.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v3, v4, 0))
  {
    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = &v143;
    }

    else
    {
      v96 = v143.__r_.__value_.__r.__words[0];
    }

    if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v97 = SHIBYTE(v143.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v97 = v143.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v96, v97, &v144);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    v143 = v144;
  }

  v146 = v143;
  memset(&v143, 0, sizeof(v143));
  sub_298B89CC0(v2, "magic", 5uLL);
  sub_298B891F0(v2, &v145);
  --*(v2 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_439;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_29;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_439;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_439:
  operator delete(v143.__r_.__value_.__l.__data_);
LABEL_30:
  v7 = *(a1 + 8);
  sub_298ADC8F4(&v142, *(**a1 + 4));
  v145 = 6;
  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v142;
  }

  else
  {
    v8 = v142.__r_.__value_.__r.__words[0];
  }

  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v142.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v8, v9, 0))
  {
    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = &v142;
    }

    else
    {
      v100 = v142.__r_.__value_.__r.__words[0];
    }

    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v101 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v101 = v142.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v100, v101, &v144);
    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    v142 = v144;
  }

  v146 = v142;
  memset(&v142, 0, sizeof(v142));
  sub_298B89CC0(v7, "version_major", 0xDuLL);
  sub_298B891F0(v7, &v145);
  --*(v7 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_443;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_59;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_443;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_443:
  operator delete(v142.__r_.__value_.__l.__data_);
LABEL_60:
  v13 = *(a1 + 8);
  sub_298ADC8F4(&v141, *(**a1 + 6));
  v145 = 6;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v141;
  }

  else
  {
    v14 = v141.__r_.__value_.__r.__words[0];
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v141.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v14, v15, 0))
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = &v141;
    }

    else
    {
      v104 = v141.__r_.__value_.__r.__words[0];
    }

    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v105 = v141.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v104, v105, &v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    v141 = v144;
  }

  v146 = v141;
  memset(&v141, 0, sizeof(v141));
  sub_298B89CC0(v13, "version_minor", 0xDuLL);
  sub_298B891F0(v13, &v145);
  --*(v13 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_447;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_89;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_89:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_447;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_90;
  }

LABEL_447:
  operator delete(v141.__r_.__value_.__l.__data_);
LABEL_90:
  v19 = *(a1 + 8);
  sub_298ADC8F4(&__p, *(**a1 + 8));
  v145 = 6;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v20, v21, 0))
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v108 = &__p;
    }

    else
    {
      v108 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v109 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v109 = __p.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v108, v109, &v144);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v144;
  }

  v146 = __p;
  memset(&__p, 0, sizeof(__p));
  sub_298B89CC0(v19, "midr", 4uLL);
  sub_298B891F0(v19, &v145);
  --*(v19 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_451;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_119;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_119:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_451;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_120;
  }

LABEL_451:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_120:
  v25 = *(a1 + 8);
  sub_298ADC8F4(&v139, *(**a1 + 16));
  v145 = 6;
  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v139;
  }

  else
  {
    v26 = v139.__r_.__value_.__r.__words[0];
  }

  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v139.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v26, v27, 0))
  {
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = &v139;
    }

    else
    {
      v112 = v139.__r_.__value_.__r.__words[0];
    }

    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v113 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v113 = v139.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v112, v113, &v144);
    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    v139 = v144;
  }

  v146 = v139;
  memset(&v139, 0, sizeof(v139));
  sub_298B89CC0(v25, "buffer_virt_addr", 0x10uLL);
  sub_298B891F0(v25, &v145);
  --*(v25 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_455;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_149;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_149:
    if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_455;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_455:
  operator delete(v139.__r_.__value_.__l.__data_);
LABEL_150:
  v31 = *(a1 + 8);
  sub_298ADC8F4(&v138, *(**a1 + 24));
  v145 = 6;
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v138;
  }

  else
  {
    v32 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v138.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v32, v33, 0))
  {
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = &v138;
    }

    else
    {
      v116 = v138.__r_.__value_.__r.__words[0];
    }

    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v117 = v138.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v116, v117, &v144);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    v138 = v144;
  }

  v146 = v138;
  memset(&v138, 0, sizeof(v138));
  sub_298B89CC0(v31, "buffer_phys_addr", 0x10uLL);
  sub_298B891F0(v31, &v145);
  --*(v31 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_459;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_179;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_179:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_459;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_459:
  operator delete(v138.__r_.__value_.__l.__data_);
LABEL_180:
  v37 = *(a1 + 8);
  sub_298ADC8F4(&v137, *(**a1 + 32));
  v145 = 6;
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v137;
  }

  else
  {
    v38 = v137.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v137.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v38, v39, 0))
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v120 = &v137;
    }

    else
    {
      v120 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v121 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v121 = v137.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v120, v121, &v144);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    v137 = v144;
  }

  v146 = v137;
  memset(&v137, 0, sizeof(v137));
  sub_298B89CC0(v37, "buffer_size", 0xBuLL);
  sub_298B891F0(v37, &v145);
  --*(v37 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_463;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_209;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_209:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_463;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_210;
  }

LABEL_463:
  operator delete(v137.__r_.__value_.__l.__data_);
LABEL_210:
  v43 = *(a1 + 8);
  sub_298ADC8F4(&v136, *(**a1 + 40));
  v145 = 6;
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v136;
  }

  else
  {
    v44 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v136.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v44, v45, 0))
  {
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v124 = &v136;
    }

    else
    {
      v124 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v125 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v125 = v136.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v124, v125, &v144);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    v136 = v144;
  }

  v146 = v136;
  memset(&v136, 0, sizeof(v136));
  sub_298B89CC0(v43, "count", 5uLL);
  sub_298B891F0(v43, &v145);
  --*(v43 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_467;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_427;
  }

  if (v145 != 6 || (SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_427:
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_467;
  }

  operator delete(v146.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_428;
  }

LABEL_467:
  operator delete(v136.__r_.__value_.__l.__data_);
LABEL_428:
  v85 = *(a1 + 8);
  v86 = *(**a1 + 48) & 1;
  v145 = 1;
  v146.__r_.__value_.__s.__data_[0] = v86;
  sub_298B89CC0(v85, "wrap", 4uLL);
  sub_298B891F0(v85, &v145);
  --*(v85 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
  }

  else if (v145 == 7)
  {
    sub_298B8A370(&v146);
  }

  else if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v93 = *(a1 + 8);
  v94 = (*(**a1 + 48) >> 1) & 1;
  v145 = 1;
  v146.__r_.__value_.__s.__data_[0] = v94;
  sub_298B89CC0(v93, "streaming", 9uLL);
  sub_298B891F0(v93, &v145);
  --*(v93 + 8);
  if (v145 == 8)
  {
    sub_298B8A314(&v146.__r_.__value_.__l.__data_);
    goto LABEL_498;
  }

  if (v145 == 7)
  {
    sub_298B8A370(&v146);
    goto LABEL_498;
  }

  if (v145 == 6 && SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    v92 = v146.__r_.__value_.__r.__words[0];
    goto LABEL_487;
  }

LABEL_498:
  v95 = *MEMORY[0x29EDCA608];
}

const char *sub_298C15CC4(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 9)
  {
    return "unknown image type";
  }

  v2 = qword_298D1B808[v1];
  return off_29EEB6448[v1];
}

uint64_t sub_298C15CFC(uint64_t a1, uint64_t a2)
{
  v46 = "Type";
  v47 = 4;
  v49 = 0;
  if (sub_298B89FD8(a2, &v46, &v49))
  {
    if (v49 != *a2 + 56 * *(a2 + 16))
    {
      v5 = *(v49 + 24);
      if (v5 == 5)
      {
        v6 = *(v49 + 32);
        v2 = *(v49 + 40);
LABEL_5:
        v7 = 1;
        goto LABEL_15;
      }

      if (v5 == 6)
      {
        v8 = *(v49 + 55);
        if (v8 >= 0)
        {
          v6 = (v49 + 32);
        }

        else
        {
          v6 = *(v49 + 32);
        }

        if (v8 >= 0)
        {
          v2 = *(v49 + 55);
        }

        else
        {
          v2 = *(v49 + 40);
        }

        goto LABEL_5;
      }
    }
  }

  else
  {
    v9 = *a2 + 56 * *(a2 + 16);
  }

  v6 = 0;
  v7 = 0;
LABEL_15:
  v46 = "Name";
  v47 = 4;
  v49 = 0;
  if (!sub_298B89FD8(a2, &v46, &v49))
  {
    v14 = *a2 + 56 * *(a2 + 16);
LABEL_26:
    v12 = "unknown image type";
    v11 = 18;
    goto LABEL_27;
  }

  if (v49 == *a2 + 56 * *(a2 + 16))
  {
    goto LABEL_26;
  }

  v10 = *(v49 + 24);
  if (v10 == 5)
  {
    v12 = *(v49 + 32);
    v11 = *(v49 + 40);
    goto LABEL_27;
  }

  if (v10 != 6)
  {
    goto LABEL_26;
  }

  v12 = *(v49 + 32);
  v13 = *(v49 + 55);
  if (v13 >= 0)
  {
    v12 = (v49 + 32);
  }

  v11 = *(v49 + 40);
  if (v13 >= 0)
  {
    v11 = *(v49 + 55);
  }

LABEL_27:
  if (v7)
  {
    v15 = v6;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    if (v7)
    {
      v16 = v2;
    }

    else
    {
      v16 = v11;
    }

    sub_298BDB508(&v46, v15, v16);
    v17 = HIBYTE(v48);
    v19 = v46;
    v18 = v47;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  if ((v17 & 0x80u) == 0)
  {
    v20 = &v46;
  }

  else
  {
    v20 = v19;
  }

  if ((v17 & 0x80u) == 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  if (v21 == 18)
  {
    memcmp("unknown image type", v20, 0x12uLL);
LABEL_43:
    v22 = 0;
    goto LABEL_44;
  }

  __s2 = v20;
  if (v21 <= 16)
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        if (memcmp("RTKit", v20, 5uLL))
        {
          goto LABEL_43;
        }

        v22 = 9;
      }

      else
      {
        if (v21 != 6 || memcmp("kernel", v20, 6uLL))
        {
          goto LABEL_43;
        }

        v22 = 4;
      }
    }

    else if (v21 == 3)
    {
      if (!memcmp("TXM", v20, 3uLL))
      {
        v22 = 7;
      }

      else if (!memcmp("SEP", __s2, 3uLL))
      {
        v22 = 8;
      }

      else
      {
        if (memcmp("CL4", __s2, 3uLL))
        {
          goto LABEL_43;
        }

        v22 = 10;
      }
    }

    else
    {
      if (v21 != 4 || memcmp("SPTM", v20, 4uLL))
      {
        goto LABEL_43;
      }

      v22 = 6;
    }
  }

  else if (v21 > 21)
  {
    if (v21 == 22)
    {
      if (memcmp("boot kernel collection", v20, 0x16uLL))
      {
        goto LABEL_43;
      }

      v22 = 5;
    }

    else if (v21 == 24)
    {
      if (memcmp("dyld shared cache object", v20, 0x18uLL))
      {
        goto LABEL_43;
      }

      v22 = 3;
    }

    else
    {
      if (v21 != 26 || memcmp("shared cache branch island", v20, 0x1AuLL))
      {
        goto LABEL_43;
      }

      v22 = 2;
    }
  }

  else
  {
    if (v21 != 17 || memcmp("dyld shared cache", v20, 0x11uLL))
    {
      goto LABEL_43;
    }

    v22 = 1;
  }

LABEL_44:
  if ((v17 & 0x80) != 0)
  {
    operator delete(v19);
  }

  *a1 = v22;
  sub_298BF3ED0(a1 + 4, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v46 = "EndAddr";
  v47 = 7;
  v49 = 0;
  if (sub_298B89FD8(a2, &v46, &v49))
  {
    if (v49 == *a2 + 56 * *(a2 + 16))
    {
      goto LABEL_70;
    }

    v23 = *(v49 + 24);
    if (v23 == 5)
    {
      v25 = *(v49 + 32);
      v24 = *(v49 + 40);
      if (v24 >= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = *(v49 + 40);
      }

      v27 = v24 - v26;
      if (v24 != v26)
      {
        goto LABEL_53;
      }

      goto LABEL_86;
    }

    if (v23 == 6)
    {
      v39 = *(v49 + 55);
      if (v39 >= 0)
      {
        v25 = v49 + 32;
      }

      else
      {
        v25 = *(v49 + 32);
      }

      v40 = *(v49 + 40);
      if (v39 >= 0)
      {
        v40 = *(v49 + 55);
      }

      if (v40 >= 2)
      {
        v26 = 2;
      }

      else
      {
        v26 = v40;
      }

      v27 = v40 - v26;
      if (v40 != v26)
      {
LABEL_53:
        v28 = 0;
        v29 = (v26 + v25);
        v30 = v27;
        do
        {
          if (*v29 < 48)
          {
            break;
          }

          v31 = *v29;
          if (v31 >= 0x3A)
          {
            if (v31 < 0x61)
            {
              if (v31 - 65 > 0x19)
              {
                break;
              }

              v32 = -55;
            }

            else
            {
              if (v31 >= 0x7B)
              {
                break;
              }

              v32 = -87;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v32 + v31;
          if (v33 > 0xF)
          {
            break;
          }

          if (v28 >> 60)
          {
            LOBYTE(v27) = 0;
            v28 = 0;
            goto LABEL_69;
          }

          v28 = v33 | (16 * v28);
          ++v29;
          --v30;
        }

        while (v30);
        v34 = v27 == v30;
        LOBYTE(v27) = v27 != v30;
        if (v34)
        {
          v28 = 0;
        }

        goto LABEL_69;
      }

LABEL_86:
      v28 = 0;
LABEL_69:
      *(a1 + 48) = v28;
      *(a1 + 56) = v27;
    }
  }

  else
  {
    v43 = *a2 + 56 * *(a2 + 16);
  }

LABEL_70:
  v46 = "Segment";
  v47 = 7;
  v49 = 0;
  if (sub_298B89FD8(a2, &v46, &v49))
  {
    if (v49 != *a2 + 56 * *(a2 + 16))
    {
      v35 = *(v49 + 24);
      if (v35 == 5)
      {
        v36 = *(v49 + 32);
        v37 = *(v49 + 40);
        goto LABEL_74;
      }

      if (v35 == 6)
      {
        v41 = *(v49 + 32);
        if (*(v49 + 55) >= 0)
        {
          v42 = *(v49 + 55);
        }

        else
        {
          v42 = *(v49 + 40);
        }

LABEL_74:
        operator new();
      }
    }
  }

  else
  {
    v44 = *a2 + 56 * *(a2 + 16);
  }

  return a1;
}

uint64_t sub_298C16358(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v10;
  }

  v4 = *(a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = a1 + 40;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  sub_298C26B0C(a1 + 88, a2 + 88);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 4);
  if (v5 != (a2 + 40))
  {
    do
    {
      sub_298C28714(a1 + 32, v5 + 32);
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (a2 + 40));
  }

  return a1;
}

uint64_t sub_298C16448(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  v6 = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0;
  *src = "Name";
  v52 = 4;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    if (*dst == *a2 + 56 * *(a2 + 16))
    {
      goto LABEL_6;
    }

    v7 = *(*dst + 24);
    if (v7 == 5)
    {
      v8 = *(*dst + 32);
      v9 = *(*dst + 40);
LABEL_5:
      MEMORY[0x29C294310](a1, v8, v9);
      goto LABEL_6;
    }

    if (v7 == 6)
    {
      v46 = *(*dst + 55);
      if (v46 >= 0)
      {
        v8 = *dst + 32;
      }

      else
      {
        v8 = *(*dst + 32);
      }

      if (v46 >= 0)
      {
        v9 = *(*dst + 55);
      }

      else
      {
        v9 = *(*dst + 40);
      }

      goto LABEL_5;
    }
  }

  else
  {
    v47 = *a2 + 56 * *(a2 + 16);
  }

LABEL_6:
  *src = "PID";
  v52 = 3;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    v10 = *dst;
    v11 = *a2;
    v12 = *(a2 + 16);
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    v10 = *a2 + 56 * v12;
  }

  if (v10 == v11 + 56 * v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v10 + 24);
  }

  v14 = *v13;
  switch(v14)
  {
    case 2:
      v17 = v13[1];
      break;
    case 3:
      v15 = *(v13 + 1);
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v15 & 0x7FFFFFFFFFFFFF00;
LABEL_18:
        v18 = v15 | v16;
        goto LABEL_21;
      }

      v17 = v15;
      break;
    case 4:
      v15 = *(v13 + 1);
      v16 = v15 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_18;
    default:
      v17 = 0.0;
      break;
  }

  v18 = llround(v17);
LABEL_21:
  *(a1 + 24) = v18;
  *src = "ImageLoadInfo";
  v52 = 13;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    v19 = *dst;
  }

  else
  {
    v19 = *a2 + 56 * *(a2 + 16);
  }

  v20 = *(v19 + 24);
  v21 = (v19 + 32);
  if (v20 != 8)
  {
    v21 = 0;
  }

  v22 = *v21;
  v23 = v21[1];
  if (*v21 != v23)
  {
    do
    {
      v24 = v22 + 4;
      v25 = *v22;
      v22 += 16;
      if (v25 == 7)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      sub_298BF3ED0(src, v26);
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, src);
      v49 = v53;
      v50 = v54;
      sub_298C288D8(v6, dst);
    }

    while (v22 != v23);
  }

  *src = "Threads";
  v52 = 7;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    v27 = *dst;
  }

  else
  {
    v27 = *a2 + 56 * *(a2 + 16);
  }

  v28 = *(v27 + 24);
  v29 = v27 + 32;
  if (v28 != 8)
  {
    v29 = 0;
  }

  v30 = *v29;
  v31 = *(v29 + 8);
  if (*v29 != v31)
  {
    while (1)
    {
      v33 = *v30 == 7 ? (v30 + 4) : 0;
      *src = "TID";
      v52 = 3;
      *dst = 0;
      if (!sub_298B89FD8(v33, src, dst))
      {
        break;
      }

      if (*dst == *v33 + 56 * *(v33 + 16))
      {
        goto LABEL_55;
      }

      v34 = *(*dst + 24);
      if (v34 != 5)
      {
        if (v34 == 6)
        {
          v35 = *(*dst + 55);
          if (v35 >= 0)
          {
            v2 = *dst + 32;
          }

          else
          {
            v2 = *(*dst + 32);
          }

          if (v35 >= 0)
          {
            v3 = *(*dst + 55);
          }

          else
          {
            v3 = *(*dst + 40);
          }

          goto LABEL_56;
        }

        goto LABEL_55;
      }

      v2 = *(*dst + 32);
      v3 = *(*dst + 40);
LABEL_56:
      if (v3 >= 2)
      {
        v37 = 2;
      }

      else
      {
        v37 = v3;
      }

      v32 = v3 - v37;
      if (v3 != v37)
      {
        v38 = 0;
        v39 = (v37 + v2);
        v40 = v3 - v37;
        do
        {
          if (*v39 < 48)
          {
            break;
          }

          v41 = *v39;
          if (v41 >= 0x3A)
          {
            if (v41 < 0x61)
            {
              if (v41 - 65 > 0x19)
              {
                break;
              }

              v42 = -55;
            }

            else
            {
              if (v41 >= 0x7B)
              {
                break;
              }

              v42 = -87;
            }
          }

          else
          {
            v42 = -48;
          }

          v43 = v42 + v41;
          if (v43 > 0xF)
          {
            break;
          }

          if (v38 >> 60)
          {
            v32 = 0;
            goto LABEL_39;
          }

          v38 = v43 | (16 * v38);
          ++v39;
          --v40;
        }

        while (v40);
        if (v32 == v40)
        {
          v32 = 0;
        }

        else
        {
          v32 = v38;
        }
      }

LABEL_39:
      *src = v32;
      sub_298AFFBE8(a1 + 88, src);
      v30 += 16;
      if (v30 == v31)
      {
        goto LABEL_74;
      }
    }

    v36 = *v33 + 56 * *(v33 + 16);
LABEL_55:
    v2 &= 0xFFFFFFFFFFFFFF00;
    goto LABEL_56;
  }

LABEL_74:
  v44 = *MEMORY[0x29EDCA608];
  return a1;
}

void *sub_298C168CC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_298C16938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  if (*(a3 + 95) < 0)
  {
    sub_298AFE11C((a1 + 72), *(a3 + 72), *(a3 + 80));
  }

  else
  {
    v10 = *(a3 + 72);
    *(a1 + 88) = *(a3 + 88);
    *(a1 + 72) = v10;
  }

  sub_298C29D44((a1 + 96), (a3 + 96));
  *(a1 + 120) = 0;
  *(a1 + 296) = 0;
  if (*(a3 + 296) == 1)
  {
    sub_298BCD348(a1 + 120, (a3 + 120));
    *(a1 + 296) = 1;
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = a1 + 312;
  sub_298C29DAC((a1 + 304), *(a3 + 304), (a3 + 312));
  sub_298C2A27C((a1 + 328), (a3 + 328));
  *(a1 + 352) = *(a3 + 352);
  v5 = *(a3 + 376);
  *(a1 + 360) = *(a3 + 360);
  *(a1 + 376) = v5;
  sub_298C2A2E0(a1 + 392, a3 + 392);
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  v6 = *(a3 + 432);
  if (v6 != *(a3 + 440))
  {
    v9 = *v6;
    operator new();
  }

  if (*(a3 + 504))
  {
    v7 = *(*(a3 + 496) + 8);
    operator new();
  }

  return a1;
}

uint64_t sub_298C16B60(uint64_t a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = 0;
  v4 = sub_298C2A880(a1, &v13);
  v5 = v4;
  if (v6)
  {
    v7 = *a2;
    v10 = 0;
    v11 = v7;
    v12 = 0;
    sub_298C2A83C(a1 + 40, &v11);
    sub_298C2ACA8(&v12, 0);
    sub_298C2ACA8(&v10, 0);
    v8 = *(a1 + 48) - 1;
    *(v5 + 6) = v8;
  }

  else
  {
    v8 = *(v4 + 6);
  }

  return *(a1 + 40) + 16 * v8 + 8;
}

void sub_298C16C08(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v6 = a2;
  v5 = a5;
  sub_298C16D74();
}

double sub_298C16F0C@<D0>(int8x8_t *a1@<X0>, const unsigned __int8 **a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x29EDCA608];
  sub_298C26CD8(uu2, a2);
  v10 = a1[50];
  if (!*&v10 || ((v11 = *&uu2[8] ^ *uu2, v12 = vcnt_s8(v10), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] <= 1uLL) ? (v13 = (*&v10 - 1) & v11) : v11 < *&v10 ? (v13 = *&uu2[8] ^ *uu2) : (v13 = v11 % *&v10), (v14 = *(*&a1[49] + 8 * v13)) == 0 || (v15 = *v14) == 0))
  {
LABEL_15:
    std::generic_category();
    v24[0] = "Recording.cpp";
    v24[2] = ":";
    v25 = 771;
    v23 = 3;
    LODWORD(v22) = 3289906;
    v26[0] = v24;
    v26[2] = &v22;
    v27 = 1026;
    v28[0] = v26;
    v28[2] = ": ";
    v29 = 770;
    v30[0] = v28;
    v30[2] = "No image tracked for UUID: ";
    v31 = 770;
    sub_298B1FB90(a2, __p);
    v32[0] = v30;
    v32[2] = __p;
    v33 = 1026;
    sub_298B996A4(v32, &v34);
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    v16 = *&v10 - 1;
    while (1)
    {
      v18 = *(v15 + 1);
      if (v18 == v11)
      {
        if (!uuid_compare(v15 + 16, uu2))
        {
          goto LABEL_21;
        }
      }

      else if ((v18 & v16) != v13)
      {
        goto LABEL_15;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v17 = *(v15 + 1);
    if (v17 == v11)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v13)
    {
      goto LABEL_15;
    }

LABEL_10:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  if (uuid_compare(v15 + 16, uu2))
  {
    goto LABEL_10;
  }

LABEL_21:
  if (a3)
  {
    sub_298BDB508(uu2, a3, a4);
    if (v15[55] < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    memset(uu2, 0, sizeof(uu2));
    v36 = 0;
    if (v15[55] < 0)
    {
LABEL_23:
      operator delete(*(v15 + 4));
    }
  }

  result = *uu2;
  *(v15 + 2) = *uu2;
  *(v15 + 6) = v36;
  *a5 = 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C17278(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 408);
  if (v2)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 55);
      if (v6 >= 0)
      {
        v7 = v2 + 4;
      }

      else
      {
        v7 = v2[4];
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      v9 = (*(**(*(a1 + 64) + 40) + 24))(*(*(a1 + 64) + 40), v7, v8, 1);
      v10 = a2[2];
      if (v5 < v10)
      {
        *v5 = *(v2 + 1);
        v5[16] = v9;
        v5 += 17;
      }

      else
      {
        v11 = *a2;
        v12 = &v5[-*a2];
        v13 = 0xF0F0F0F0F0F0F0F1 * v12 + 1;
        if (v13 >= 0xF0F0F0F0F0F0F10)
        {
          sub_298ADDDA0();
        }

        v14 = 0xF0F0F0F0F0F0F0F1 * (v10 - v11);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        v15 = v14 >= 0x787878787878787;
        v16 = 0xF0F0F0F0F0F0F0FLL;
        if (!v15)
        {
          v16 = v13;
        }

        v17 = 17 * v16;
        if (v16)
        {
          if (v16 < 0xF0F0F0F0F0F0F10)
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        v18 = &v5[-*a2];
        *v12 = *(v2 + 1);
        v12[16] = v9;
        if (v11 != v5)
        {
          v19 = 0;
          do
          {
            v20 = *v11;
            *(v19 + 16) = v11[16];
            *v19 = v20;
            v19 += 17;
            v11 += 17;
          }

          while (v11 != v5);
          v11 = *a2;
        }

        v5 = v12 + 17;
        *a2 = 0;
        a2[1] = v12 + 17;
        a2[2] = v17;
        if (v11)
        {
          operator delete(v11);
        }
      }

      a2[1] = v5;
      v2 = *v2;
    }

    while (v2);
  }
}

void sub_298C17444(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = (a2 + 4);
  v3 = a2[4];
  a2[7] = *(a1 + 8);
  v4 = a2 + 5;
  if (v3 != a2 + 5)
  {
    v6 = a1;
    v7 = 0;
    v8 = 0;
    v33 = a2 + 4;
    v31 = a2 + 5;
    do
    {
      v10 = *(v3 + 88);
      v38 = v3[10];
      v39 = v10;
      v40 = *(v3 + 89);
      uuid_copy(dst, v3 + 64);
      v11 = *(v6 + 8);
      if (*(&v40 + 1) <= v11)
      {
        v12 = v3[1];
        if (v12)
        {
          do
          {
            v14 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v3;
            v3 = v3[2];
          }

          while (*v3 != v13);
          v14 = v3;
        }
      }

      else
      {
        *(&v40 + 1) = *(v6 + 8);
        v15 = 0x8F9C18F9C18F9C19 * &v8[-v7] + 1;
        if (v15 > 0x63E7063E7063E70)
        {
          sub_298ADDDA0();
        }

        if (0xE0C7CE0C7CE0C7CELL * v7 > v15)
        {
          v15 = 0xE0C7CE0C7CE0C7CELL * v7;
        }

        if ((0x7063E7063E7063E7 * v7) >= 0x31F3831F3831F38)
        {
          v16 = 0x63E7063E7063E70;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (v16 <= 0x63E7063E7063E70)
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        v17 = &v8[-v7];
        v18 = v39;
        v19 = v40;
        *(v17 + 16) = v38;
        *(v17 + 24) = v18;
        *(v17 + 25) = v19;
        *(v17 + 33) = v11;
        uuid_copy(&v8[-v7], dst);
        v20 = &v8[-v7] / -41;
        if (v7 != v8)
        {
          v21 = 0;
          do
          {
            v22 = &v8[-v7] % -41 + v21;
            v23 = *(v7 + v21 + 16);
            *(v22 + 24) = *(v7 + v21 + 24);
            v24 = *(v7 + v21 + 25);
            *(v22 + 16) = v23;
            *(v22 + 25) = v24;
            uuid_copy(v22, (v7 + v21));
            v21 += 41;
          }

          while ((v7 + v21) != v8);
        }

        v8 = (v17 + 41);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v17 + 41 * v20;
        v6 = a1;
        v2 = v33;
        v4 = v31;
        v25 = v3[1];
        v26 = v3;
        if (v25)
        {
          do
          {
            v14 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v14 = v26[2];
            v27 = *v14 == v26;
            v26 = v14;
          }

          while (!v27);
        }

        if (*v33 == v3)
        {
          *v33 = v14;
        }

        v9 = a2[5];
        --a2[6];
        sub_298C2ADAC(v9, v3);
        operator delete(v3);
      }

      v3 = v14;
    }

    while (v14 != v4);
    if (v7 != v8)
    {
      v28 = v7;
      do
      {
        v29 = v28[24];
        v38 = *(v28 + 2);
        v39 = v29;
        v40 = *(v28 + 25);
        uuid_copy(dst, v28);
        memset(uu1, 0, sizeof(uu1));
        uuid_copy(uu1, dst);
        v35 = v38;
        v36 = *(&v40 + 1);
        sub_298C288D8(v2, uu1);
        v28 += 41;
      }

      while (v28 != v8);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }

  v30 = *MEMORY[0x29EDCA608];
}

void sub_298C177D8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    sub_298BDB508(v10, a4, a5);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  sub_298C26CD8(uu, a3);
  v7 = sub_298B223E4((a1 + 392), uu);
  v8 = v7;
  if (v7[55] < 0)
  {
    operator delete(*(v7 + 4));
  }

  *(v8 + 2) = *v10;
  *(v8 + 6) = v11;
  operator new();
}

void sub_298C1797C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    sub_298BDB508(v10, a4, a5);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  sub_298C26CD8(uu, a3);
  v7 = sub_298B223E4((a1 + 392), uu);
  v8 = v7;
  if (v7[55] < 0)
  {
    operator delete(*(v7 + 4));
  }

  *(v8 + 2) = *v10;
  *(v8 + 6) = v11;
  operator new();
}

uint64_t sub_298C17B1C(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[58];
  if (!*&v2)
  {
    goto LABEL_15;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (*&v2 - 1) & a2;
    v5 = *(*&a1[57] + 8 * v4);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }

    v5 = *(*&a1[57] + 8 * v4);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = *v5;
  if (!v6)
  {
LABEL_15:
    v9 = a1[63].u32[0];
    a1[63].i32[0];
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = *&v2 - 1;
    while (1)
    {
      v11 = v6[1];
      if (v11 == a2)
      {
        if (v6[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v11 & v7) != v4)
      {
        goto LABEL_15;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_15;
    }

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_10;
  }

LABEL_22:
  v12 = *(v6 + 6);
  if (v12 == a1[63].i32[0])
  {
    return 0;
  }

  return *(*&a1[62] + 16 * v12 + 8);
}

void sub_298C17C34(int8x8_t *a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = a1[62];
  v3 = a1[63].u32[0];
  if (!v3)
  {
    v5 = a1[62];
    goto LABEL_86;
  }

  v4 = a1 + 59;
  v5 = a1[62];
  v6 = &v2[2 * v3];
  while (2)
  {
    v7 = v2[1];
    if (*(v7 + 128) != 1)
    {
      if (v2 == v5)
      {
        goto LABEL_5;
      }

      *v5 = *v2;
      v2[1] = 0;
      sub_298C2ACA8(v5 + 1, v7);
      v18 = *v5;
      v19 = a1[58];
      if (v19)
      {
        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.u32[0] <= 1uLL)
        {
          v21 = (*&v19 - 1) & v18;
          v22 = *(*&a1[57] + 8 * v21);
          if (!v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v21 = *v5;
          if (*&v19 <= v18)
          {
            v21 = v18 % *&v19;
          }

          v22 = *(*&a1[57] + 8 * v21);
          if (!v22)
          {
            goto LABEL_38;
          }
        }

        v23 = *v22;
        if (*v22)
        {
          if (v20.u32[0] < 2uLL)
          {
            while (1)
            {
              v32 = v23[1];
              if (v32 == v18)
              {
                if (v23[2] == v18)
                {
                  goto LABEL_4;
                }
              }

              else if ((v32 & (*&v19 - 1)) != v21)
              {
                goto LABEL_38;
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_38;
              }
            }
          }

          do
          {
            v24 = v23[1];
            if (v24 == v18)
            {
              if (v23[2] == v18)
              {
LABEL_4:
                *(v23 + 6) = (v5 - *&a1[62]) >> 4;
LABEL_5:
                v5 += 2;
                goto LABEL_6;
              }
            }

            else
            {
              if (v24 >= *&v19)
              {
                v24 %= *&v19;
              }

              if (v24 != v21)
              {
                break;
              }
            }

            v23 = *v23;
          }

          while (v23);
        }
      }

LABEL_38:
      operator new();
    }

    v8 = a1[58];
    if (!*&v8)
    {
      goto LABEL_6;
    }

    v9 = *v2;
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = *v2 / *&v8;
    if (v10.u32[0] <= 1uLL)
    {
      v12 = (*&v8 - 1) & v9;
      v13 = a1[57];
      v14 = *(*&v13 + 8 * v12);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = *v2;
      if (*&v8 <= v9)
      {
        v12 = v9 - v11 * *&v8;
      }

      v13 = a1[57];
      v14 = *(*&v13 + 8 * v12);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_6;
    }

    v16 = *&v8 - 1;
    if (v10.u32[0] < 2uLL)
    {
      while (1)
      {
        v25 = v15[1];
        if (*&v25 == v9)
        {
          if (*&v15[2] == v9)
          {
            goto LABEL_44;
          }
        }

        else if ((*&v25 & v16) != v12)
        {
          goto LABEL_6;
        }

        v15 = *v15;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v17 = v15[1];
      if (v17 == v9)
      {
        break;
      }

      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }

      if (v17 != v12)
      {
        goto LABEL_6;
      }

LABEL_17:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    if (*&v15[2] != v9)
    {
      goto LABEL_17;
    }

LABEL_44:
    if (v10.u32[0] <= 1uLL)
    {
      v9 &= v16;
    }

    else if (*&v8 <= v9)
    {
      v9 -= v11 * *&v8;
    }

    v26 = *(*&v13 + 8 * v9);
    do
    {
      v27 = v26;
      v26 = *v26;
    }

    while (v26 != v15);
    if (v27 == v4)
    {
LABEL_54:
      if (*v15)
      {
        v29 = *(*v15 + 8);
        if (v10.u32[0] <= 1uLL)
        {
          if ((v29 & v16) == v9)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v29 >= *&v8)
          {
            v29 %= *&v8;
          }

          if (v29 == v9)
          {
            goto LABEL_60;
          }
        }
      }

      *(*&v13 + 8 * v9) = 0;
      goto LABEL_60;
    }

    v28 = v27[1];
    if (v10.u32[0] <= 1uLL)
    {
      if ((v28 & v16) != v9)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v28 >= *&v8)
      {
        v28 %= *&v8;
      }

      if (v28 != v9)
      {
        goto LABEL_54;
      }
    }

LABEL_60:
    v30 = *v15;
    if (*v15)
    {
      v31 = *(*&v30 + 8);
      if (v10.u32[0] <= 1uLL)
      {
        v31 &= v16;
        if (v31 != v9)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v31 >= *&v8)
        {
          v31 %= *&v8;
        }

        if (v31 != v9)
        {
LABEL_65:
          *(*&a1[57] + 8 * v31) = v27;
          v30 = *v15;
        }
      }
    }

    *v27 = v30;
    *v15 = 0;
    --*&a1[60];
    operator delete(v15);
LABEL_6:
    v2 += 2;
    if (v2 != v6)
    {
      continue;
    }

    break;
  }

  v2 = a1[62];
  v33 = &v2[2 * a1[63].u32[0]];
  if (v33 != v5)
  {
    do
    {
      v34 = v33 - 2;
      sub_298C2ACA8(v33 - 1, 0);
      v33 = v34;
    }

    while (v34 != v5);
    v2 = a1[62];
  }

LABEL_86:
  v35 = (v5 - v2) >> 4;
  a1[63].i32[0] = v35;
  *v63 = 0u;
  *__p = 0u;
  v65 = 1065353216;
  v36 = a1[54];
  v37 = a1[55];
  if (v36 != v37)
  {
    do
    {
      v38 = *v36++;
      *dst = v38 + 4;
      *&dst[8] = 0;
      v67 = 0;
      sub_298C26CD8(uu2, dst);
      sub_298C2B3C8(v63, uu2);
    }

    while (v36 != v37);
    v2 = a1[62];
    LODWORD(v35) = a1[63].i32[0];
  }

  if (v35)
  {
    v39 = &v2[2 * v35];
    do
    {
      v40 = v2[1];
      v41 = *(v40 + 32);
      v42 = (v40 + 40);
      if (v41 != (v40 + 40))
      {
        do
        {
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, v41 + 64);
          sub_298C2B3C8(v63, dst);
          v44 = *(v41 + 1);
          if (v44)
          {
            do
            {
              v43 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v43 = *(v41 + 2);
              v45 = *v43 == v41;
              v41 = v43;
            }

            while (!v45);
          }

          v41 = v43;
        }

        while (v43 != v42);
      }

      v2 += 2;
    }

    while (v2 != v39);
  }

  v46 = a1[51];
  while (v46)
  {
    v51 = v46;
    v46 = *v46;
    *uu2 = *(v51 + 1);
    v52 = v63[1];
    if (v63[1])
    {
      v53 = *&uu2[8] ^ *uu2;
      v54 = vcnt_s8(v63[1]);
      v54.i16[0] = vaddlv_u8(v54);
      if (v54.u32[0] <= 1uLL)
      {
        v55 = (v63[1] - 1) & v53;
      }

      else
      {
        v55 = v53 < v63[1] ? *&uu2[8] ^ *uu2 : v53 % v63[1];
      }

      v56 = *(v63[0] + v55);
      if (v56)
      {
        v57 = *v56;
        if (*v56)
        {
          if (v54.u32[0] < 2uLL)
          {
            v58 = v63[1] - 1;
            while (1)
            {
              v62 = *(v57 + 1);
              if (v53 == v62)
              {
                if (!uuid_compare(v57 + 16, uu2))
                {
                  goto LABEL_108;
                }
              }

              else if ((v62 & v58) != v55)
              {
                goto LABEL_123;
              }

              v57 = *v57;
              if (!v57)
              {
                goto LABEL_123;
              }
            }
          }

          do
          {
            v59 = *(v57 + 1);
            if (v53 == v59)
            {
              if (!uuid_compare(v57 + 16, uu2))
              {
                goto LABEL_108;
              }
            }

            else
            {
              if (v59 >= v52)
              {
                v59 %= v52;
              }

              if (v59 != v55)
              {
                break;
              }
            }

            v57 = *v57;
          }

          while (v57);
        }
      }
    }

LABEL_123:
    sub_298C2B6DC(dst, &a1[49], v51);
    v60 = *dst;
    if (*dst)
    {
      if (v67 == 1 && *(*dst + 55) < 0)
      {
        v61 = *dst;
        operator delete(*(*dst + 32));
        v60 = v61;
      }

      operator delete(v60);
    }

LABEL_108:
    ;
  }

  v47 = __p[0];
  if (__p[0])
  {
    do
    {
      v48 = *v47;
      operator delete(v47);
      v47 = v48;
    }

    while (v48);
  }

  v49 = v63[0];
  v63[0] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = *MEMORY[0x29EDCA608];
}

uint64_t *sub_298C183B0(int8x8_t *a1, const unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, a2);
  v3 = *&dst[8] ^ *dst;
  v4 = a1[50];
  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v4 - 1) & v3;
  }

  else if (v3 < *&v4)
  {
    v6 = *&dst[8] ^ *dst;
  }

  else
  {
    v6 = v3 % *&v4;
  }

  v7 = *(*&a1[49] + 8 * v6);
  do
  {
    do
    {
      v7 = *v7;
    }

    while (v3 != *(v7 + 1));
  }

  while (uuid_compare(v7 + 16, dst));
  v10 = *(v7 + 4);
  v9 = (v7 + 32);
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    result = v9;
  }

  else
  {
    result = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v9[1];
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

const unsigned __int8 *sub_298C1849C(uint64_t a1, unint64_t a2, unsigned __int8 *uu2)
{
  if (a2)
  {
    v5 = *(uu2 + 1) ^ *uu2;
    v6 = vcnt_s8(a2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] <= 1uLL)
    {
      v7 = v5 & (a2 - 1);
    }

    else if (v5 < a2)
    {
      v7 = *(uu2 + 1) ^ *uu2;
    }

    else
    {
      v7 = v5 % a2;
    }

    v8 = *(a1 + 8 * v7);
    if (!v8)
    {
      return 0;
    }

    v9 = *v8;
    if (!*v8)
    {
      return 0;
    }

    if (v6.u32[0] >= 2uLL)
    {
      while (1)
      {
        v10 = *(v9 + 1);
        if (v5 == v10)
        {
          if (!uuid_compare(v9 + 16, uu2))
          {
            return v9;
          }
        }

        else
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }

          if (v10 != v7)
          {
            return 0;
          }
        }

        v9 = *v9;
        if (!v9)
        {
          return 0;
        }
      }
    }

    v12 = a2 - 1;
    while (1)
    {
      v13 = *(v9 + 1);
      if (v5 == v13)
      {
        if (!uuid_compare(v9 + 16, uu2))
        {
          return v9;
        }
      }

      else if ((v13 & v12) != v7)
      {
        return 0;
      }

      result = 0;
      v9 = *v9;
      if (!v9)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_298C185C8(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v56[4] = *MEMORY[0x29EDCA608];
  v49 = a3;
  if (*(a1 + 296) == 1)
  {
    v56[0] = &unk_2A1F1F460;
    v56[1] = a2;
    v56[3] = v56;
    sub_298C189C8((a1 + 208), v56);
    sub_298C2B9FC(v56);
  }

  v48 = a1;
  v8 = *(*(a1 + 64) + 40);
  v47[0] = a1;
  v47[1] = v8;
  v47[2] = &v48;
  v47[3] = a2;
  v47[4] = &v49;
  v9 = *(a1 + 432);
  v10 = *(a1 + 440);
  if (v9 == v10)
  {
LABEL_26:
    v21 = *(a1 + 504);
    if (v21)
    {
      v22 = *(a1 + 496);
      v23 = &v22[2 * v21];
      while (1)
      {
        sub_298BD6304(a2, *v22);
        v24 = v22[1];
        v25 = *(v24 + 32);
        v26 = (v24 + 40);
        if (v25 != (v24 + 40))
        {
          break;
        }

LABEL_43:
        v22 += 2;
        if (v22 == v23)
        {
          goto LABEL_44;
        }
      }

      while (1)
      {
        v27 = *(v22[1] + 24);
        v33[0] = 0;
        v36 = 0;
        sub_298C18AE4(a4, v47, v27, 1, v25 + 64, 0, v33);
        if (v36 == 1 && v35 < 0)
        {
          operator delete(__p);
        }

        if (*a4)
        {
          break;
        }

        v28 = *(v25 + 1);
        if (v28)
        {
          do
          {
            i = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          i = *(v25 + 2);
          if (*i != v25)
          {
            v30 = i[2];
            v31 = *v30 == i;
            for (i = v30; !v31; v30 = i)
            {
              i = v30[2];
              v31 = *i == v30;
            }
          }
        }

        v25 = i;
        if (i == v26)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
LABEL_44:
      *a4 = 0;
    }

    goto LABEL_45;
  }

  while (1)
  {
    v11 = *v9;
    v12 = **v9;
    if (v12 <= 0xA)
    {
      if (((1 << v12) & 0x7D8) != 0)
      {
        goto LABEL_6;
      }

      if (v12 == 2)
      {
        sub_298BD7880(a2, *(v11 + 5) >> 1, *(v11 + 6), a4);
        goto LABEL_9;
      }

      if (v12 == 5)
      {
        break;
      }
    }

    if (v12 == 1)
    {
      sub_298C183B0(a1, v11 + 4);
      v16 = *(*v9 + 5);
      sub_298BD6444(a2);
    }

    if (!v12)
    {
LABEL_6:
      v4 &= 0xFFFFFFFFFFFFFF00;
      sub_298C18EEC(v43, *(v11 + 8));
      sub_298C18AE4(a4, v47, v4, 0, v11 + 4, v12 | 0x100000000, v43);
      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

LABEL_9:
      if (*a4)
      {
        goto LABEL_45;
      }
    }

LABEL_10:
    if (++v9 == v10)
    {
      goto LABEL_26;
    }
  }

  v13 = sub_298C183B0(a1, v11 + 4);
  (*(*v8 + 32))(&v50, v8, v13, v14, 1);
  if (v55)
  {
    v15 = v50;
    v50 = 0;
    *a4 = v15;
    if (v15)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (sub_298C18F6C(*(v48 + 296), &v50))
  {
    v17 = *(*v9 + 5) >> 1;
    v37 = v50;
    v38 = BYTE2(v50);
    v39 = v51;
    v40 = v52;
    v51 = 0uLL;
    v41 = v53;
    v42 = v54;
    v18 = *(a1 + 328);
    v19 = (*(a1 + 336) - v18) >> 3;
    v52 = 0;
    v54 = 0;
    sub_298BD790C(a2, &v37, v17, v18, v19, a4);
    sub_298BDC2AC(&v37);
    v20 = *a4;
    sub_298C13D54(&v50);
    if (v20)
    {
      goto LABEL_45;
    }

    goto LABEL_10;
  }

  *a4 = 0;
LABEL_47:
  sub_298C13D54(&v50);
LABEL_45:
  v32 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C189C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (a1[1] - *a1) >> 3;
  v23 = 0;
  v24 = 0;
  v21 = v3;
  v22 = v4;
  v5 = *(a2 + 24);
  if (!v5)
  {
LABEL_12:
    v16 = sub_298AE761C();
    return sub_298C18AE4(v16, v17, v18, v19, v20);
  }

  result = (*(*v5 + 48))(v5, &v23, &v21);
  v8 = a1[3];
  v9 = a1 + 4;
  if (v8 != v9)
  {
    while (1)
    {
      v10 = v8[5];
      v11 = (v8[6] - v10) >> 3;
      v23 = v8[4];
      v24 = 1;
      v21 = v10;
      v22 = v11;
      v12 = *(a2 + 24);
      if (!v12)
      {
        break;
      }

      result = (*(*v12 + 48))(v12, &v23, &v21);
      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
      if (v14 == v9)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_298C18AE4(uint64_t *a1, uint64_t *a2, unint64_t a3, char a4, unsigned __int8 *src, uint64_t a6, uint64_t a7)
{
  v54 = *MEMORY[0x29EDCA608];
  v13 = *a2;
  dst = 0;
  *dst_8 = 0;
  uuid_copy(&dst, src);
  v14 = *dst_8 ^ dst;
  v15 = *(v13 + 400);
  if ((v15 & (v15 - 1)) != 0)
  {
    if (v14 < v15)
    {
      v16 = *dst_8 ^ dst;
    }

    else
    {
      v16 = v14 % v15;
    }

    v17 = *(*(v13 + 392) + 8 * v16);
    do
    {
      do
      {
        v17 = *v17;
      }

      while (v14 != *(v17 + 1));
      result = uuid_compare(v17 + 16, &dst);
    }

    while (result);
  }

  else
  {
    v17 = *(*(v13 + 392) + 8 * ((v15 - 1) & v14));
    do
    {
      do
      {
        v17 = *v17;
      }

      while (v14 != *(v17 + 1));
      result = uuid_compare(v17 + 16, &dst);
    }

    while (result);
  }

  v21 = *(v17 + 4);
  v20 = (v17 + 32);
  v19 = v21;
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v20[1];
  }

  if (v24 == 3 && *v23 == 16191 && *(v23 + 2) == 63)
  {
    *a1 = 0;
    goto LABEL_23;
  }

  (*(*a2[1] + 32))(&dst);
  if ((v53 & 1) == 0)
  {
    *a1 = 0;
    goto LABEL_25;
  }

  v26 = dst;
  dst = 0;
  *a1 = v26;
  if (!v26)
  {
LABEL_25:
    if (*(*a2[2] + 296) == 1 && (sub_298AFF468(&dst, &v47), v47))
    {
      v46 = v47;
      v47 = 0;
      sub_298AE617C(&v46);
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

      *a1 = 0;
    }

    else
    {
      if (src[24] == 9)
      {
        v28 = 0;
      }

      else
      {
        v28 = src;
      }

      v29 = a2[3];
      v40 = dst;
      v41 = BYTE2(dst);
      *__p = *dst_8;
      v30 = v52;
      v43 = v50;
      *dst_8 = 0uLL;
      v44 = v51;
      v50 = 0;
      v52 = 0;
      v45 = v30;
      v31 = *(src + 2);
      v32 = *(src + 25);
      v33 = *(src + 33);
      v36[0] = 0;
      v39 = 0;
      if (*(a7 + 56) == 1)
      {
        sub_298BD4988(v36, a7);
        v39 = 1;
      }

      sub_298BD7C4C(v29, a3, a4, &v40, v28, v31, v32, v33, &v47, v36, a6);
      if (v39 == 1 && v38 < 0)
      {
        operator delete(v37);
      }

      v34 = v45;
      v45 = 0;
      if (v34)
      {
        (*(*v34 + 16))(v34);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (v47 || (*a2[4] & 1) == 0)
      {
        *a1 = v47;
      }

      else
      {
        sub_298BD9C20(a2[3], a1);
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }
      }
    }
  }

  if (v53)
  {
    result = dst;
    dst = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  else
  {
    result = sub_298BDC2AC(&dst);
  }

LABEL_23:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *sub_298C18EEC(_BYTE *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    *result = *a2;
    if (*(a2 + 39) < 0)
    {
      result = sub_298AFE11C(result + 16, *(a2 + 16), *(a2 + 24));
    }

    else
    {
      *(result + 1) = *(a2 + 16);
      *(result + 4) = *(a2 + 32);
    }

    *(v2 + 40) = *(a2 + 40);
    v2[56] = 1;
  }

  else
  {
    *result = 0;
    result[56] = 0;
  }

  return result;
}

uint64_t sub_298C18F6C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 1;
  }

  sub_298AFF468(a2, &v4);
  if (!v4)
  {
    return 1;
  }

  v3 = v4;
  v4 = 0;
  sub_298AE617C(&v3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return 0;
}

uint64_t sub_298C1901C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 504))
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_298C193EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v68 = a2;
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  v3 = *(a1 + 504);
  if (v3)
  {
    v4 = *(a1 + 496);
    v26 = &v4[2 * v3];
    do
    {
      v5 = v4[1];
      if (*v4 != *(v5 + 24))
      {
        v6 = std::generic_category();
        v52[0] = "Recording.cpp";
        v53 = 259;
        v50[0] = ":";
        v51 = 259;
        sub_298ADC860(v52, v50, v54);
        sub_298AFB090(0x24FuLL, 0, v30);
        v49 = 260;
        v48[0] = v30;
        sub_298ADC860(v54, v48, v56);
        v46[0] = ": ";
        v47 = 259;
        sub_298ADC860(v56, v46, v58);
        v44[0] = "UniqueContext pid (";
        v45 = 259;
        sub_298ADC860(v58, v44, v60);
        sub_298AFB090(*(v4[1] + 24), 0, v28);
        v43 = 260;
        v42[0] = v28;
        sub_298ADC860(v60, v42, v61);
        v40[0] = ") does not match key (";
        v41 = 259;
        sub_298ADC860(v61, v40, v62);
        sub_298AFB090(*v4, 0, v37);
        v39 = 260;
        v38[0] = v37;
        sub_298ADC860(v62, v38, v63);
        v35[0] = ")";
        v36 = 259;
        sub_298ADC860(v63, v35, &v64);
        sub_298ADDCA4(45, v6, &v64);
      }

      v7 = *(v5 + 120);
      if (v7)
      {
        v8 = *(v5 + 112);
        v9 = &v8[v7];
        do
        {
          v10 = *v8;
          v34 = v10;
          v11 = v4[1];
          v64 = v10;
          v12 = *(v11 + 24);
          v65 = v12;
          if (v67)
          {
            v13 = (v67 - 1) & (37 * v10);
            v14 = (v66[0] + 16 * v13);
            v15 = *v14;
            if (v10 == *v14)
            {
LABEL_11:
              v16 = std::generic_category();
              v50[0] = "Recording.cpp";
              v51 = 259;
              v48[0] = ":";
              v49 = 259;
              sub_298ADC860(v50, v48, v52);
              sub_298AFB090(0x256uLL, 0, v37);
              v47 = 260;
              v46[0] = v37;
              sub_298ADC860(v52, v46, v54);
              v44[0] = ": ";
              v45 = 259;
              sub_298ADC860(v54, v44, v56);
              v42[0] = "Duplicate tid (";
              v43 = 259;
              sub_298ADC860(v56, v42, v58);
              sub_298ADC8F4(&v33, v10);
              v41 = 260;
              v40[0] = &v33;
              sub_298ADC860(v58, v40, v60);
              v38[0] = ") found in pid ";
              v39 = 259;
              sub_298ADC860(v60, v38, v61);
              sub_298AFB090(*(v4[1] + 24), 0, v32);
              v36 = 260;
              v35[0] = v32;
              sub_298ADC860(v61, v35, v62);
              v30[0] = " and in pid ";
              v31 = 259;
              sub_298ADC860(v62, v30, v63);
              v17 = sub_298C2BDD4(v66, &v34);
              sub_298AFB090(*(v17 + 2), 0, __p);
              v29 = 260;
              v28[0] = __p;
              sub_298ADC860(v63, v28, &v64);
              sub_298ADDCA4(45, v16, &v64);
            }

            v22 = 0;
            v23 = 1;
            while (v15 != -1)
            {
              if (v22)
              {
                v24 = 0;
              }

              else
              {
                v24 = v15 == -2;
              }

              if (v24)
              {
                v22 = v14;
              }

              v25 = v13 + v23++;
              v13 = v25 & (v67 - 1);
              v14 = (v66[0] + 16 * v13);
              v15 = *v14;
              if (v10 == *v14)
              {
                goto LABEL_11;
              }
            }

            if (v22)
            {
              v18 = v22;
            }

            else
            {
              v18 = v14;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = sub_298C2BB18(v66, &v64, v18);
          *v19 = v10;
          *(v19 + 2) = v12;
          ++v8;
        }

        while (v8 != v9);
      }

      v4 += 2;
    }

    while (v4 != v26);
  }

  if (*(a1 + 365) == 1 && (*(a1 + 371) & 1) == 0 && (*(a1 + 370) & 1) == 0 && *(a1 + 504) != 1)
  {
    v20 = std::generic_category();
    v58[0] = "Recording.cpp";
    v59 = 259;
    v56[0] = ":";
    v57 = 259;
    sub_298ADC860(v58, v56, v60);
    sub_298AFB090(0x25EuLL, 0, v46);
    v55 = 260;
    v54[0] = v46;
    sub_298ADC860(v60, v54, v61);
    v52[0] = ": ";
    v53 = 259;
    sub_298ADC860(v61, v52, v62);
    v50[0] = "Single-process filtering enabled: expected exactly 1 task context, but got ";
    v51 = 259;
    sub_298ADC860(v62, v50, v63);
    sub_298AFB090(*(a1 + 504), 0, v44);
    v49 = 260;
    v48[0] = v44;
    sub_298ADC860(v63, v48, &v64);
    sub_298ADDCA4(45, v20, &v64);
  }

  return MEMORY[0x29C2945E0](v66[0], 8);
}

uint64_t sub_298C19A98(uint64_t **a1, uint64_t *a2)
{
  v3 = **a1;
  **a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  v8 = v3;
  sub_298ADE6E8(&v8, &v7, &v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v8;
  if (v8)
  {
    result = (*(*v8 + 8))(v8);
  }

  **a1 = v6;
  return result;
}

void sub_298C19B4C(void *a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x29EDCA608];
  sub_298B87AE0(a3, "Name", 4, &v82);
  if (v82)
  {
    sub_298BDB508(&v86, v82, *(&v82 + 1));
  }

  else
  {
    v86 = 0uLL;
    v87 = 0;
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v86;
  *(a2 + 88) = v87;
  v8 = sub_298B87C7C(a3, "RawTraceIDs", 11);
  v10 = *v8;
  v9 = *(v8 + 8);
  while (v10 != v9)
  {
    v11 = *(a2 + 64);
    v12 = sub_298B87A10(v10);
    v14 = *(v11 + 64);
    v3 = v11 + 64;
    v13 = v14;
    if (!v14)
    {
      break;
    }

    v15 = v3;
    do
    {
      v16 = *(v13 + 32);
      v17 = v16 >= v12;
      v18 = v16 < v12;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 == v3)
    {
      break;
    }

    if (*(v15 + 32) > v12)
    {
      break;
    }

    *&v86 = *(v15 + 40);
    if (!v86)
    {
      break;
    }

    sub_298C2022C(a2 + 96, &v86);
    v10 += 16;
  }

  v84 = 0;
  *&v86 = "DecodedTrace";
  *(&v86 + 1) = 12;
  v19 = sub_298C26D78(a3, &v86);
  if (*a3 + 56 * *(a3 + 16) != v19)
  {
    v20 = v19;
    sub_298C1A9DC(a2 + 120);
    if (*(v20 + 24) == 7)
    {
      v21 = v20 + 32;
    }

    else
    {
      v21 = 0;
    }

    sub_298C1AA80(a1, a2 + 120, v21, &v84);
    if (*a1)
    {
      goto LABEL_22;
    }

    if (v84)
    {
      sub_298C27B6C(a2 + 120);
    }
  }

  *&v86 = "SystemRegisters";
  *(&v86 + 1) = 15;
  *&v82 = 0;
  if (sub_298B89FD8(a3, &v86, &v82))
  {
    v23 = v82;
    v24 = *a3;
    v25 = *(a3 + 16);
  }

  else
  {
    v24 = *a3;
    v25 = *(a3 + 16);
    v23 = *a3 + 56 * v25;
  }

  if (v23 != v24 + 56 * v25 && *(v23 + 24) == 7 && *(v23 + 40))
  {
    v26 = *(v23 + 32);
    v27 = *(v23 + 48);
    if (v27)
    {
      v28 = 56 * v27;
      v29 = v26;
      while (*(v29 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v29 += 56;
        v28 -= 56;
        if (!v28)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v29 = v26;
    }

    v4 = v26 + 56 * v27;
    while (v29 != v4)
    {
      v63 = *(v29 + 24);
      if (v63 == 6)
      {
        v64 = *(v29 + 32);
        v65 = *(v29 + 55);
        if (v65 >= 0)
        {
          v64 = v29 + 32;
        }

        v66 = *(v29 + 40);
        if (v65 >= 0)
        {
          v66 = *(v29 + 55);
        }

        *&v86 = v64;
        *(&v86 + 1) = v66;
      }

      else
      {
        if (v63 != 5)
        {
          v67 = 0;
          LOBYTE(v86) = 0;
          goto LABEL_97;
        }

        v86 = *(v29 + 32);
      }

      v67 = 1;
LABEL_97:
      LOBYTE(v87) = v67;
      v3 = sub_298C1E0C8(&v86);
      v68 = *(v29 + 8);
      if (v68)
      {
        sub_298BDB508(&v86, v68, *(v29 + 16));
      }

      else
      {
        v86 = 0uLL;
        v87 = 0;
      }

      *&v82 = &v86;
      sub_298C2F984(a2 + 304, &v86)[7] = v3;
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      do
      {
        v29 += 56;
      }

      while (v29 != v4 && *(v29 + 8) >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

LABEL_37:
  *&v86 = "StaticIfOffsets";
  *(&v86 + 1) = 15;
  *&v82 = 0;
  if (sub_298B89FD8(a3, &v86, &v82))
  {
    v30 = v82;
    v31 = *a3;
    v32 = *(a3 + 16);
  }

  else
  {
    v31 = *a3;
    v32 = *(a3 + 16);
    v30 = *a3 + 56 * v32;
  }

  if (v30 != v31 + 56 * v32 && *(v30 + 24) == 8)
  {
    v33 = *(v30 + 32);
    v3 = *(v30 + 40);
    if (v33 != v3)
    {
      v4 = 2;
      do
      {
        v34 = *v33;
        if (v34 == 6)
        {
          v35 = *(v33 + 1);
          v36 = *(v33 + 31);
          if (v36 >= 0)
          {
            v35 = v33 + 4;
          }

          v37 = *(v33 + 2);
          if (v36 >= 0)
          {
            v37 = *(v33 + 31);
          }
        }

        else
        {
          if (v34 != 5)
          {
            goto LABEL_55;
          }

          v35 = *(v33 + 1);
          v37 = *(v33 + 2);
        }

        if (v37 >= 2)
        {
          v38 = 2;
        }

        else
        {
          v38 = v37;
        }

        *&v86 = v35 + v38;
        *(&v86 + 1) = v37 - v38;
        *&v82 = 0;
        if (!sub_298B971A4(&v86, 0x10u, &v82))
        {
          v39 = v82;
          goto LABEL_57;
        }

LABEL_55:
        v39 = 0;
LABEL_57:
        v41 = *(a2 + 336);
        v40 = *(a2 + 344);
        if (v41 >= v40)
        {
          v43 = *(a2 + 328);
          v44 = v41 - v43;
          v45 = (v41 - v43) >> 3;
          v46 = v45 + 1;
          if ((v45 + 1) >> 61)
          {
            sub_298ADDDA0();
          }

          v47 = v40 - v43;
          if (v47 >> 2 > v46)
          {
            v46 = v47 >> 2;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v48 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            sub_298B7F4FC(a2 + 328, v48);
          }

          v52 = v45;
          v49 = (8 * v45);
          v50 = &v49[-v52];
          *v49 = v39;
          v42 = v49 + 1;
          memcpy(v50, v43, v44);
          v51 = *(a2 + 328);
          *(a2 + 328) = v50;
          *(a2 + 336) = v42;
          *(a2 + 344) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v41 = v39;
          v42 = v41 + 8;
        }

        *(a2 + 336) = v42;
        v33 += 16;
      }

      while (v33 != v3);
    }
  }

  *&v86 = "KernelcacheStubOptimization";
  *(&v86 + 1) = 27;
  *&v82 = 0;
  if (sub_298B89FD8(a3, &v86, &v82))
  {
    v53 = v82;
    v54 = *a3;
    v55 = *(a3 + 16);
  }

  else
  {
    v54 = *a3;
    v55 = *(a3 + 16);
    v53 = *a3 + 56 * v55;
  }

  if (v53 == v54 + 56 * v55 || *(v53 + 24) != 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = *(v53 + 32);
  }

  *(a2 + 352) = v56 & 1;
  sub_298BFC074(a2 + 360, a3, a1);
  if (*a1)
  {
    goto LABEL_22;
  }

  v78 = a1;
  v57 = sub_298B87BDC(a3, "Images", 6);
  if (*(v57 + 8))
  {
    v58 = *(v57 + 16);
    if (v58)
    {
      v59 = 56 * v58;
      v60 = *v57;
      while (*(v60 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v60 += 56;
        v59 -= 56;
        if (!v59)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v60 = *v57;
    }

    v69 = *v57 + 56 * v58;
    while (v60 != v69)
    {
      v70 = *(v60 + 24);
      if (v70 == 6)
      {
        v3 = *(v60 + 32);
        v4 = *(v60 + 55);
        if ((v4 & 0x8000000000000000) == 0)
        {
          v3 = v60 + 32;
          goto LABEL_113;
        }

        v4 = *(v60 + 40);
      }

      else if (v70 == 5)
      {
        v3 = *(v60 + 32);
        v4 = *(v60 + 40);
      }

      else
      {
        v3 &= 0xFFFFFFFFFFFFFF00;
      }

      if (!v3)
      {
        v82 = 0uLL;
        v83 = 0;
        goto LABEL_114;
      }

LABEL_113:
      sub_298BDB508(&v82, v3, v4);
LABEL_114:
      v71 = *(v60 + 8);
      if (v71)
      {
        sub_298BDB508(&__p, v71, *(v60 + 16));
        v72 = HIBYTE(v81);
        p_p = __p;
        v74 = v80;
      }

      else
      {
        v74 = 0;
        p_p = 0;
        v72 = 0;
        v80 = 0;
        __p = 0;
        v81 = 0;
      }

      if ((v72 & 0x80u) != 0)
      {
        v72 = v74;
      }

      else
      {
        p_p = &__p;
      }

      *&v86 = 0;
      *(&v86 + 1) = p_p;
      v87 = v72;
      sub_298C26CD8(uu, &v86);
      *&v86 = uu;
      v75 = sub_298B223E4((a2 + 392), uu);
      v76 = v75;
      if (v75[55] < 0)
      {
        operator delete(*(v75 + 4));
      }

      *(v76 + 2) = v82;
      *(v76 + 6) = v83;
      HIBYTE(v83) = 0;
      LOBYTE(v82) = 0;
      if (SHIBYTE(v81) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82);
        }
      }

      do
      {
        v60 += 56;
      }

      while (v60 != v69 && *(v60 + 8) >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

LABEL_84:
  v61 = sub_298B87C7C(a3, "SharedContexts", 14);
  if (*v61 != v61[1])
  {
    v62 = **v61;
    operator new();
  }

  v77 = sub_298B87C7C(a3, "UniqueContexts", 14);
  if (*v77 != *(v77 + 8))
  {
    **v77;
    operator new();
  }

  sub_298C193EC(a2, v78);
LABEL_22:
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C1A9DC(uint64_t a1)
{
  sub_298C27B6C(a1);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 23) = 9;
  *(a1 + 8) = 62;
  *a1 = *"<unknown>";
  *(a1 + 24) = -1;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 176) = 1;
  return a1;
}

void sub_298C1AA80(void *a1, std::string::size_type a2, uint64_t a3, _BYTE *a4)
{
  v617 = *MEMORY[0x29EDCA608];
  __p = 0;
  v609 = 0uLL;
  v611.__r_.__value_.__r.__words[0] = "VersionInfo";
  v611.__r_.__value_.__l.__size_ = 11;
  v610.__r_.__value_.__r.__words[0] = 0;
  if (!sub_298B89FD8(a3, &v611, &v610))
  {
    v26 = *a3 + 56 * *(a3 + 16);
    v591 = a2;
    goto LABEL_48;
  }

  v591 = a2;
  if (v610.__r_.__value_.__r.__words[0] == *a3 + 56 * *(a3 + 16))
  {
    goto LABEL_48;
  }

  v8 = *(v610.__r_.__value_.__r.__words[0] + 24);
  if (v8 == 5)
  {
    sub_298C3C7C8(a2, *(v610.__r_.__value_.__r.__words[0] + 32), *(v610.__r_.__value_.__r.__words[0] + 40), &v607);
    v9 = v607;
    if (v607)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 != 6)
  {
LABEL_48:
    *a4 = 1;
    MEMORY[0x29C294300](&__p, "Version information missing.");
    if (*a4 != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  v23 = *(v610.__r_.__value_.__r.__words[0] + 55);
  if (v23 >= 0)
  {
    v24 = (v610.__r_.__value_.__r.__words[0] + 32);
  }

  else
  {
    v24 = *(v610.__r_.__value_.__r.__words[0] + 32);
  }

  if (v23 >= 0)
  {
    v25 = *(v610.__r_.__value_.__r.__words[0] + 55);
  }

  else
  {
    v25 = *(v610.__r_.__value_.__r.__words[0] + 40);
  }

  sub_298C3C7C8(a2, v24, v25, &v607);
  v9 = v607;
  if (v607)
  {
LABEL_5:
    *a4 = 1;
    v606 = v9;
    v607 = 0;
    sub_298B851B0(&v606, &v610);
    v10 = std::string::insert(&v610, 0, "Failed to parse version info: ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v611.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v611.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v611, "\n");
    v13 = v12->__r_.__value_.__r.__words[0];
    *v616 = v12->__r_.__value_.__l.__size_;
    *&v616[7] = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v609) < 0)
    {
      operator delete(__p);
    }

    __p = v13;
    *&v609 = *v616;
    *(&v609 + 7) = *&v616[7];
    HIBYTE(v609) = v14;
    if (SHIBYTE(v611.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v611.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v610.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        v15 = v606;
        if (!v606)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((SHIBYTE(v610.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v610.__r_.__value_.__l.__data_);
    v15 = v606;
    if (!v606)
    {
LABEL_11:
      if (v607)
      {
        (*(*v607 + 8))(v607);
      }

      goto LABEL_13;
    }

LABEL_10:
    (*(*v15 + 8))(v15);
    goto LABEL_11;
  }

LABEL_13:
  LODWORD(v611.__r_.__value_.__r.__words[1]) = 0;
  LOBYTE(v613) = 0;
  *(&v613 + 1) = 0;
  v614 = 1;
  v612 = 0uLL;
  v611.__r_.__value_.__r.__words[2] = 0;
  v611.__r_.__value_.__r.__words[0] = &unk_2A1F1E040;
  p_p = &__p;
  sub_298ADDDB0(&v611);
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(v597, *a2, *(a2 + 8));
  }

  else
  {
    *v597 = *a2;
    v598 = *(a2 + 16);
  }

  v599 = *(a2 + 24);
  v600 = *(a2 + 28);
  v602[0] = 0;
  v602[1] = 0;
  v601 = v602;
  v16 = *(a2 + 32);
  v17 = (a2 + 40);
  if (v16 != v17)
  {
    do
    {
      sub_298BCD5B0(&v601, v602, v16 + 4);
      v19 = v16[1];
      if (v19)
      {
        do
        {
          v18 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v18 = v16[2];
          v108 = *v18 == v16;
          v16 = v18;
        }

        while (!v108);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  LOBYTE(v603) = 0;
  v605 = 0;
  a2 = v591;
  if (*(v591 + 80) == 1)
  {
    if (*(v591 + 79) < 0)
    {
      sub_298AFE11C(&v603, *(v591 + 56), *(v591 + 64));
    }

    else
    {
      v603 = *(v591 + 56);
      v604 = *(v591 + 72);
    }

    v605 = 1;
  }

  *a4 = sub_298C3CC04(v597, &v611) ^ 1;
  if (v605 == 1 && SHIBYTE(v604) < 0)
  {
    operator delete(v603);
    sub_298BCE714(&v601, v602[0]);
    if ((SHIBYTE(v598) & 0x80000000) == 0)
    {
LABEL_30:
      sub_298B9AE14(&v611);
      if (*a4 == 1)
      {
        goto LABEL_31;
      }

LABEL_49:
      v611.__r_.__value_.__r.__words[0] = "Clusters";
      v611.__r_.__value_.__l.__size_ = 8;
      v610.__r_.__value_.__r.__words[0] = 0;
      v586 = a3;
      if (sub_298B89FD8(a3, &v611, &v610))
      {
        if (*(v610.__r_.__value_.__r.__words[0] + 24) == 7)
        {
          v27 = v610.__r_.__value_.__r.__words[0] + 32;
        }

        else
        {
          v27 = 0;
        }

        if (!*(v27 + 8))
        {
          goto LABEL_936;
        }
      }

      else
      {
        v554 = *a3 + 56 * *(a3 + 16);
        v555 = *(v554 + 24);
        v556 = v554 + 32;
        if (v555 == 7)
        {
          v27 = v556;
        }

        else
        {
          v27 = 0;
        }

        if (!*(v27 + 8))
        {
          goto LABEL_936;
        }
      }

      v28 = *v27;
      v29 = *(v27 + 16);
      if (v29)
      {
        v30 = 56 * v29;
        v31 = v28;
        while (*(v31 + 8) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v31 += 56;
          v30 -= 56;
          if (!v30)
          {
            goto LABEL_936;
          }
        }
      }

      else
      {
        v31 = v28;
      }

      v32 = v28 + 56 * v29;
      if (v32 != v31)
      {
        v588 = v32;
        v589 = (a2 + 160);
        while (1)
        {
          v33 = *(v31 + 8);
          v34 = *(v31 + 16);
          v611.__r_.__value_.__r.__words[0] = 0;
          v35 = sub_298B97354(v33, v34, 0xAu, &v611) ? -1 : v611.__r_.__value_.__r.__words[0];
          v36 = v589;
LABEL_68:
          v37 = *v36;
          if (!*v36)
          {
LABEL_72:
            operator new();
          }

          while (1)
          {
            v36 = v37;
            v38 = v37[4];
            if (v35 < v38)
            {
              goto LABEL_68;
            }

            if (v38 >= v35)
            {
              break;
            }

            v37 = v36[1];
            if (!v37)
            {
              goto LABEL_72;
            }
          }

          v590 = v36;
          v39 = *(v31 + 24) == 7 ? v31 + 32 : 0;
          v611.__r_.__value_.__r.__words[0] = "Cores";
          v611.__r_.__value_.__l.__size_ = 5;
          v610.__r_.__value_.__r.__words[0] = 0;
          v592 = v31;
          v40 = sub_298B89FD8(v39, &v611, &v610) ? v610.__r_.__value_.__r.__words[0] : *v39 + 56 * *(v39 + 16);
          v41 = 0x2A13C2000uLL;
          v42 = *(v40 + 24);
          v43 = v40 + 32;
          v44 = v42 == 7 ? v43 : 0;
          if (*(v44 + 8))
          {
            v45 = *v44;
            v46 = *(v44 + 16);
            if (v46)
            {
              v47 = 56 * v46;
              v48 = v45;
              while (*(v48 + 8) >= 0xFFFFFFFFFFFFFFFELL)
              {
                v48 += 56;
                v47 -= 56;
                if (!v47)
                {
                  goto LABEL_925;
                }
              }
            }

            else
            {
              v48 = v45;
            }

            v49 = v45 + 56 * v46;
            if (v49 != v48)
            {
              break;
            }
          }

LABEL_925:
          v31 = v592 + 56;
          if (v592 + 56 == v588)
          {
            a2 = v591;
          }

          else
          {
            a2 = v591;
            do
            {
              if (*(v31 + 8) < 0xFFFFFFFFFFFFFFFELL)
              {
                break;
              }

              v31 += 56;
            }

            while (v31 != v588);
          }

          if (v31 == v588)
          {
            goto LABEL_936;
          }
        }

        v587 = v49;
        while (1)
        {
          v50 = *(v48 + 8);
          v51 = *(v48 + 16);
          v611.__r_.__value_.__r.__words[0] = 0;
          v52 = sub_298B97354(v50, v51, 0xAu, &v611) ? -1 : v611.__r_.__value_.__r.__words[0];
          v53 = v590 + 6;
LABEL_94:
          v54 = *v53;
          if (!*v53)
          {
LABEL_98:
            operator new();
          }

          while (1)
          {
            v53 = v54;
            v55 = v54[4];
            if (v52 < v55)
            {
              goto LABEL_94;
            }

            if (v55 >= v52)
            {
              break;
            }

            v54 = v53[1];
            if (!v54)
            {
              goto LABEL_98;
            }
          }

          if (*(v48 + 24) == 7)
          {
            v56 = v48 + 32;
          }

          else
          {
            v56 = 0;
          }

          v611.__r_.__value_.__r.__words[0] = "OutputFiles";
          v611.__r_.__value_.__l.__size_ = 11;
          v610.__r_.__value_.__r.__words[0] = 0;
          if (sub_298B89FD8(v56, &v611, &v610))
          {
            v57 = v610.__r_.__value_.__r.__words[0];
          }

          else
          {
            v57 = *v56 + 56 * *(v56 + 16);
          }

          v58 = *(v57 + 24);
          v59 = v57 + 32;
          if (v58 != 8)
          {
            v59 = 0;
          }

          v60 = *v59;
          v594 = *(v59 + 8);
          if (*v59 != v594)
          {
            break;
          }

LABEL_918:
          v48 += 56;
          if (v48 != v587)
          {
            while (*(v48 + 8) >= 0xFFFFFFFFFFFFFFFELL)
            {
              v48 += 56;
              if (v48 == v587)
              {
                goto LABEL_925;
              }
            }

            if (v48 != v587)
            {
              continue;
            }
          }

          goto LABEL_925;
        }

        v593 = v48;
        v596 = v53;
        while (1)
        {
          v61 = v53[6];
          v62 = v53[7];
          if (v61 >= v62)
          {
            v64 = v60;
            v65 = v53[5];
            v66 = v61 - v65;
            v67 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v65) >> 6);
            v68 = v67 + 1;
            if (v67 + 1 > 0xCCCCCCCCCCCCCCLL)
            {
              sub_298ADDDA0();
            }

            v69 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v65) >> 6);
            if (2 * v69 > v68)
            {
              v68 = 2 * v69;
            }

            if (v69 >= 0x66666666666666)
            {
              v70 = 0xCCCCCCCCCCCCCCLL;
            }

            else
            {
              v70 = v68;
            }

            if (v70)
            {
              if (v70 <= 0xCCCCCCCCCCCCCCLL)
              {
                operator new();
              }

              sub_298ADDDA0();
            }

            v71 = 320 * v67;
            *(v71 + 288) = 0u;
            *(v71 + 304) = 0u;
            *(v71 + 256) = 0u;
            *(v71 + 272) = 0u;
            *(v71 + 224) = 0u;
            *(v71 + 240) = 0u;
            *(v71 + 192) = 0u;
            *(v71 + 208) = 0u;
            *(v71 + 160) = 0u;
            *(v71 + 176) = 0u;
            *(v71 + 128) = 0u;
            *(v71 + 144) = 0u;
            *(v71 + 96) = 0u;
            *(v71 + 112) = 0u;
            *(v71 + 64) = 0u;
            *(v71 + 80) = 0u;
            *(v71 + 32) = 0u;
            *(v71 + 48) = 0u;
            *v71 = 0u;
            *(v71 + 16) = 0u;
            v72 = v596[5];
            v73 = v596[6];
            v74 = v73 - v72;
            if (v73 == v72)
            {
              v53 = v596;
            }

            else
            {
              v75 = 0;
              v76 = &v66[-64 * ((v73 - v72) >> 6)];
              v53 = v596;
              do
              {
                v78 = &v76[v75];
                v79 = &v72[v75];
                *v78 = *&v72[v75];
                v80 = *&v72[v75 + 16];
                *(v78 + 4) = *&v72[v75 + 32];
                *(v78 + 1) = v80;
                *(v79 + 3) = 0;
                *(v79 + 4) = 0;
                *(v79 + 2) = 0;
                v76[v75 + 40] = 0;
                v78[64] = 0;
                if (v72[v75 + 64] == 1)
                {
                  v81 = *(v79 + 40);
                  *&v76[v75 + 56] = *(v79 + 7);
                  *&v76[v75 + 40] = v81;
                  *(v79 + 6) = 0;
                  *(v79 + 7) = 0;
                  *(v79 + 5) = 0;
                  v78[64] = 1;
                }

                v82 = *(v79 + 72);
                *(v78 + 11) = *(v79 + 11);
                *(v78 + 72) = v82;
                *(v79 + 10) = 0;
                *(v79 + 11) = 0;
                *(v79 + 9) = 0;
                v78[96] = 0;
                v78[120] = 0;
                if (v79[120] == 1)
                {
                  v83 = &v72[v75];
                  v84 = *&v72[v75 + 96];
                  *(v78 + 14) = *&v72[v75 + 112];
                  *(v78 + 6) = v84;
                  *(v83 + 13) = 0;
                  *(v83 + 14) = 0;
                  *(v83 + 12) = 0;
                  v78[120] = 1;
                }

                v85 = &v76[v75];
                v86 = *(v79 + 8);
                *(v85 + 18) = *(v79 + 18);
                *(v85 + 8) = v86;
                *(v79 + 17) = 0;
                *(v79 + 18) = 0;
                *(v79 + 16) = 0;
                v76[v75 + 152] = 0;
                v85[176] = 0;
                if (v79[176] == 1)
                {
                  v87 = &v72[v75];
                  v88 = *&v72[v75 + 152];
                  *&v76[v75 + 168] = *&v72[v75 + 168];
                  *&v76[v75 + 152] = v88;
                  *(v87 + 20) = 0;
                  *(v87 + 21) = 0;
                  *(v87 + 19) = 0;
                  v85[176] = 1;
                }

                v89 = *(v79 + 184);
                *(v85 + 25) = *(v79 + 25);
                *(v85 + 184) = v89;
                *(v79 + 24) = 0;
                *(v79 + 25) = 0;
                *(v79 + 23) = 0;
                v85[208] = 0;
                v85[232] = 0;
                if (v79[232] == 1)
                {
                  v90 = &v72[v75];
                  v91 = *&v72[v75 + 208];
                  *(v85 + 28) = *&v72[v75 + 224];
                  *(v85 + 13) = v91;
                  *(v90 + 27) = 0;
                  *(v90 + 28) = 0;
                  *(v90 + 26) = 0;
                  v85[232] = 1;
                }

                v92 = &v76[v75];
                v93 = *(v79 + 15);
                *(v92 + 32) = *(v79 + 32);
                *(v92 + 15) = v93;
                *(v79 + 31) = 0;
                *(v79 + 32) = 0;
                *(v79 + 30) = 0;
                v92[264] = 0;
                v92[288] = 0;
                if (v79[288] == 1)
                {
                  v94 = &v72[v75];
                  v95 = *&v72[v75 + 264];
                  *(v92 + 35) = *&v72[v75 + 280];
                  *(v92 + 264) = v95;
                  *(v94 + 34) = 0;
                  *(v94 + 35) = 0;
                  *(v94 + 33) = 0;
                  v92[288] = 1;
                }

                v77 = *(v79 + 296);
                *(v92 + 39) = *(v79 + 39);
                *(v92 + 296) = v77;
                v75 += 320;
              }

              while (v79 + 320 != v73);
              do
              {
                v72 = (sub_298BCE30C(v72) + 320);
              }

              while (v72 != v73);
              v72 = v596[5];
            }

            v96 = v71 - v74;
            v63 = (v71 + 320);
            v53[5] = v96;
            v53[6] = v71 + 320;
            v53[7] = 0;
            if (v72)
            {
              operator delete(v72);
            }

            v60 = v64;
          }

          else
          {
            v61[18] = 0u;
            v61[19] = 0u;
            v61[16] = 0u;
            v61[17] = 0u;
            v61[14] = 0u;
            v61[15] = 0u;
            v61[12] = 0u;
            v61[13] = 0u;
            v61[10] = 0u;
            v61[11] = 0u;
            v61[8] = 0u;
            v61[9] = 0u;
            v61[6] = 0u;
            v61[7] = 0u;
            v61[4] = 0u;
            v61[5] = 0u;
            v61[2] = 0u;
            v61[3] = 0u;
            *v61 = 0u;
            v61[1] = 0u;
            v63 = v61 + 20;
          }

          v53[6] = v63;
          v595 = v60;
          if (*v60 == 7)
          {
            v97 = v60 + 4;
          }

          else
          {
            v97 = 0;
          }

          v98 = *v97;
          v99 = *(v97 + 4);
          if (!v99)
          {
            goto LABEL_182;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v513 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v513 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v513;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v100 = sub_298B40118("SyncUnitIndex", 0xDuLL, *(v41 + 2832));
          v101 = v99 - 1;
          v102 = 1;
          if ("SyncUnitIndex" == -2)
          {
            v103 = v100 & v101;
            v104 = v98 + 56 * (v100 & v101);
            v105 = *(v104 + 8);
            if (v105 != -2)
            {
              while (v105 != -1)
              {
                if (*(v104 + 16) != 13 || ((v106 = *v105, v107 = *(v105 + 5), v106 == 0x74696E55636E7953) ? (v108 = v107 == 0x7865646E4974696ELL) : (v108 = 0), !v108))
                {
                  v109 = v102 + v103;
                  ++v102;
                  v103 = v109 & v101;
                  v104 = v98 + 56 * (v109 & v101);
                  v105 = *(v104 + 8);
                  if (v105 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_163;
              }

LABEL_180:
              if ("SyncUnitIndex" != -1)
              {
                v98 = *v97;
                v99 = *(v97 + 4);
LABEL_182:
                *(v63 - 40) = 0;
                if (!v99)
                {
                  goto LABEL_222;
                }

                goto LABEL_167;
              }
            }
          }

          else
          {
            while (1)
            {
              v104 = v98 + 56 * (v100 & v101);
              v110 = *(v104 + 8);
              if (v110 != -2)
              {
                if (v110 == -1)
                {
                  goto LABEL_180;
                }

                if (*(v104 + 16) == 13)
                {
                  v111 = *v110;
                  v112 = *(v110 + 5);
                  if (v111 == 0x74696E55636E7953 && v112 == 0x7865646E4974696ELL)
                  {
                    break;
                  }
                }
              }

              v100 = v102 + (v100 & v101);
              ++v102;
            }
          }

LABEL_163:
          v98 = *v97;
          v99 = *(v97 + 4);
          if (v104 == *v97 + 56 * v99)
          {
            goto LABEL_182;
          }

          v114 = *(v104 + 24);
          if (v114 == 3)
          {
            v115 = *(v104 + 32);
            v116 = v115 & 0xFFFFFFFFFFFFFF00;
          }

          else if (v114 == 4)
          {
            v115 = *(v104 + 32) & ~(*(v104 + 32) >> 63);
            v116 = v115 & 0x7FFFFFFFFFFFFF00;
          }

          else
          {
            if (v114 == 2 && (v611.__r_.__value_.__r.__words[0] = *(v104 + 32), modf(*&v611.__r_.__value_.__l.__data_, &v611) == 0.0) && fabs(*&v611.__r_.__value_.__l.__data_) <= 9.22337204e18)
            {
              v115 = *&v611.__r_.__value_.__l.__data_;
              v116 = *&v611.__r_.__value_.__l.__data_ & 0xFFFFFFFFFFFFFF00;
            }

            else
            {
              LOBYTE(v115) = 0;
              v116 = 0;
            }

            v41 = 0x2A13C2000;
          }

          v98 = *v97;
          v99 = *(v97 + 4);
          *(v63 - 40) = v116 | v115;
          if (!v99)
          {
            goto LABEL_222;
          }

LABEL_167:
          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v514 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v514 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v514;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v117 = sub_298B40118("EndUnitIndex", 0xCuLL, *(v41 + 2832));
          v118 = v99 - 1;
          v119 = 1;
          if ("EndUnitIndex" != -2)
          {
            while (1)
            {
              v121 = v98 + 56 * (v117 & v118);
              v127 = *(v121 + 8);
              if (v127 != -2)
              {
                if (v127 == -1)
                {
                  goto LABEL_220;
                }

                if (*(v121 + 16) == 12)
                {
                  v128 = *v127;
                  v129 = *(v127 + 2);
                  if (v128 == 0x4974696E55646E45 && v129 == 2019910766)
                  {
                    break;
                  }
                }
              }

              v117 = v119 + (v117 & v118);
              ++v119;
            }

LABEL_193:
            v98 = *v97;
            v99 = *(v97 + 4);
            v131 = v99;
            goto LABEL_194;
          }

          v120 = v117 & v118;
          v121 = v98 + 56 * (v117 & v118);
          v122 = *(v121 + 8);
          if (v122 == -2)
          {
            goto LABEL_193;
          }

          while (v122 != -1)
          {
            if (*(v121 + 16) != 12 || ((v123 = *v122, v124 = *(v122 + 2), v123 == 0x4974696E55646E45) ? (v125 = v124 == 2019910766) : (v125 = 0), !v125))
            {
              v126 = v119 + v120;
              ++v119;
              v120 = v126 & v118;
              v121 = v98 + 56 * (v126 & v118);
              v122 = *(v121 + 8);
              if (v122 != -2)
              {
                continue;
              }
            }

            goto LABEL_193;
          }

LABEL_220:
          if ("EndUnitIndex" == -1)
          {
            goto LABEL_193;
          }

          v98 = *v97;
          v99 = *(v97 + 4);
LABEL_222:
          v131 = v99;
          v121 = v98 + 56 * v99;
LABEL_194:
          if (v121 == v98 + 56 * v131)
          {
            v132 = 0;
          }

          else
          {
            v132 = (v121 + 24);
          }

          v133 = *v132;
          switch(v133)
          {
            case 2:
              *(v63 - 39) = llround(v132[1]);
              if (!v99)
              {
                goto LABEL_216;
              }

              break;
            case 3:
              v134 = *(v132 + 1);
              if (v134 < 0)
              {
                *(v63 - 39) = llround(v134);
                if (!v99)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                *(v63 - 39) = v134 & 0x7FFFFFFFFFFFFFFFLL;
                if (!v99)
                {
                  goto LABEL_216;
                }
              }

              break;
            case 4:
              *(v63 - 39) = v132[1];
              if (!v99)
              {
                goto LABEL_216;
              }

              break;
            default:
              *(v63 - 39) = llround(0.0);
              if (!v99)
              {
LABEL_216:
                v145 = 0;
LABEL_217:
                v139 = v98 + 56 * v145;
                goto LABEL_232;
              }

              break;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v515 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v515 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v515;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v135 = sub_298B40118("Ranges", 6uLL, *(v41 + 2832));
          v136 = v99 - 1;
          v137 = 1;
          if ("Ranges" == -2)
          {
            v138 = v135 & v136;
            v139 = v98 + 56 * (v135 & v136);
            v140 = *(v139 + 8);
            if (v140 != -2)
            {
              while (v140 != -1)
              {
                if (*(v139 + 16) != 6 || ((v141 = *v140, v142 = *(v140 + 2), v141 == 1735287122) ? (v143 = v142 == 29541) : (v143 = 0), !v143))
                {
                  v144 = v137 + v138;
                  ++v137;
                  v138 = v144 & v136;
                  v139 = v98 + 56 * (v144 & v136);
                  v140 = *(v139 + 8);
                  if (v140 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_232;
              }

LABEL_247:
              if ("Ranges" != -1)
              {
                v98 = *v97;
                v145 = *(v97 + 4);
                goto LABEL_217;
              }
            }
          }

          else
          {
            while (1)
            {
              v139 = v98 + 56 * (v135 & v136);
              v146 = *(v139 + 8);
              if (v146 != -2)
              {
                if (v146 == -1)
                {
                  goto LABEL_247;
                }

                if (*(v139 + 16) == 6)
                {
                  v147 = *v146;
                  v148 = *(v146 + 2);
                  if (v147 == 1735287122 && v148 == 29541)
                  {
                    break;
                  }
                }
              }

              v135 = v137 + (v135 & v136);
              ++v137;
            }
          }

LABEL_232:
          v150 = *(v139 + 24);
          v151 = (v139 + 32);
          if (v150 == 7)
          {
            v152 = v151;
          }

          else
          {
            v152 = 0;
          }

          v153 = *v152;
          v154 = *(v152 + 4);
          if (!v154)
          {
            v165 = 0;
LABEL_250:
            v159 = v153 + 56 * v165;
            goto LABEL_260;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v516 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v516 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v516;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v155 = sub_298B40118("DataKey", 7uLL, *(v41 + 2832));
          v156 = v154 - 1;
          v157 = 1;
          if ("DataKey" == -2)
          {
            v158 = v155 & v156;
            v159 = v153 + 56 * (v155 & v156);
            v160 = *(v159 + 8);
            if (v160 != -2)
            {
              while (v160 != -1)
              {
                if (*(v159 + 16) != 7 || ((v161 = *v160, v162 = *(v160 + 3), v161 == 1635017028) ? (v163 = v162 == 2036681569) : (v163 = 0), !v163))
                {
                  v164 = v157 + v158;
                  ++v157;
                  v158 = v164 & v156;
                  v159 = v153 + 56 * (v164 & v156);
                  v160 = *(v159 + 8);
                  if (v160 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_260;
              }

LABEL_281:
              if ("DataKey" != -1)
              {
                v153 = *v152;
                v165 = *(v152 + 4);
                goto LABEL_250;
              }
            }
          }

          else
          {
            while (1)
            {
              v159 = v153 + 56 * (v155 & v156);
              v166 = *(v159 + 8);
              if (v166 != -2)
              {
                if (v166 == -1)
                {
                  goto LABEL_281;
                }

                if (*(v159 + 16) == 7)
                {
                  v167 = *v166;
                  v168 = *(v166 + 3);
                  if (v167 == 1635017028 && v168 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v155 = v157 + (v155 & v156);
              ++v157;
            }
          }

LABEL_260:
          if (*(v159 + 24) == 6)
          {
            v182 = v159 + 32;
            v183 = *(v159 + 55);
            v185 = *(v159 + 32);
            v184 = *(v159 + 40);
            if (v183 >= 0)
            {
              v186 = v182;
            }

            else
            {
              v186 = v185;
            }

            if (v183 >= 0)
            {
              v187 = v183;
            }

            else
            {
              v187 = v184;
            }

            MEMORY[0x29C294310](v63 - 19, v186, v187);
            v170 = *v152;
            v171 = *(v152 + 4);
            if (!v171)
            {
              goto LABEL_308;
            }
          }

          else
          {
            MEMORY[0x29C294310](v63 - 19, *(v159 + 32), *(v159 + 40));
            v170 = *v152;
            v171 = *(v152 + 4);
            if (!v171)
            {
              goto LABEL_308;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v517 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v517 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v517;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v172 = sub_298B40118("CompressionKey", 0xEuLL, *(v41 + 2832));
          v173 = v171 - 1;
          v174 = 1;
          if ("CompressionKey" == -2)
          {
            v175 = v172 & v173;
            v176 = v170 + 56 * (v172 & v173);
            v177 = *(v176 + 8);
            if (v177 != -2)
            {
              while (v177 != -1)
              {
                if (*(v176 + 16) != 14 || ((v178 = *v177, v179 = *(v177 + 6), v178 == 0x73736572706D6F43) ? (v180 = v179 == 0x79654B6E6F697373) : (v180 = 0), !v180))
                {
                  v181 = v174 + v175;
                  ++v174;
                  v175 = v181 & v173;
                  v176 = v170 + 56 * (v181 & v173);
                  v177 = *(v176 + 8);
                  if (v177 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_292;
              }

LABEL_322:
              if ("CompressionKey" != -1)
              {
                v213 = *v152 + 56 * *(v152 + 4);
                goto LABEL_308;
              }
            }
          }

          else
          {
            while (1)
            {
              v176 = v170 + 56 * (v172 & v173);
              v188 = *(v176 + 8);
              if (v188 != -2)
              {
                if (v188 == -1)
                {
                  goto LABEL_322;
                }

                if (*(v176 + 16) == 14)
                {
                  v189 = *v188;
                  v190 = *(v188 + 6);
                  if (v189 == 0x73736572706D6F43 && v190 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v172 = v174 + (v172 & v173);
              ++v174;
            }
          }

LABEL_292:
          if (v176 == *v152 + 56 * *(v152 + 4))
          {
            goto LABEL_308;
          }

          v192 = *(v176 + 24);
          if (v192 == 5)
          {
            v193 = *(v176 + 32);
            v194 = *(v176 + 40);
            v195 = v63 - 280;
            if (*(v63 - 256) == 1)
            {
              goto LABEL_295;
            }
          }

          else
          {
            if (v192 != 6)
            {
              goto LABEL_308;
            }

            v198 = *(v176 + 32);
            v196 = v176 + 32;
            v197 = v198;
            v199 = *(v196 + 23);
            if (v199 >= 0)
            {
              v193 = v196;
            }

            else
            {
              v193 = v197;
            }

            v200 = *(v196 + 8);
            if (v199 >= 0)
            {
              v194 = v199;
            }

            else
            {
              v194 = v200;
            }

            v195 = v63 - 280;
            if (*(v63 - 256) == 1)
            {
LABEL_295:
              MEMORY[0x29C294310](v195, v193, v194);
              goto LABEL_308;
            }
          }

          if (v194 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v194 >= 0x17)
          {
            operator new();
          }

          *(v63 - 257) = v194;
          if (v194)
          {
            memmove(v195, v193, v194);
          }

          v195[v194] = 0;
          *(v63 - 256) = 1;
LABEL_308:
          v201 = *v97;
          v202 = *(v97 + 4);
          if (!v202)
          {
            v214 = 0;
LABEL_325:
            v207 = v201 + 56 * v214;
            goto LABEL_335;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v518 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v518 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v518;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v203 = sub_298B40118("UnitMarks", 9uLL, *(v41 + 2832));
          v204 = v202 - 1;
          v205 = 1;
          if ("UnitMarks" == -2)
          {
            v206 = v203 & v204;
            v207 = v201 + 56 * (v203 & v204);
            v208 = *(v207 + 8);
            if (v208 != -2)
            {
              while (v208 != -1)
              {
                if (*(v207 + 16) != 9 || ((v209 = *v208, v210 = *(v208 + 8), v209 == 0x6B72614D74696E55) ? (v211 = v210 == 115) : (v211 = 0), !v211))
                {
                  v212 = v205 + v206;
                  ++v205;
                  v206 = v212 & v204;
                  v207 = v201 + 56 * (v212 & v204);
                  v208 = *(v207 + 8);
                  if (v208 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_335;
              }

LABEL_350:
              if ("UnitMarks" != -1)
              {
                v201 = *v97;
                v214 = *(v97 + 4);
                goto LABEL_325;
              }
            }
          }

          else
          {
            while (1)
            {
              v207 = v201 + 56 * (v203 & v204);
              v215 = *(v207 + 8);
              if (v215 != -2)
              {
                if (v215 == -1)
                {
                  goto LABEL_350;
                }

                if (*(v207 + 16) == 9)
                {
                  v216 = *v215;
                  v217 = *(v215 + 8);
                  if (v216 == 0x6B72614D74696E55 && v217 == 115)
                  {
                    break;
                  }
                }
              }

              v203 = v205 + (v203 & v204);
              ++v205;
            }
          }

LABEL_335:
          v219 = *(v207 + 24);
          v220 = (v207 + 32);
          if (v219 == 7)
          {
            v221 = v220;
          }

          else
          {
            v221 = 0;
          }

          v222 = *v221;
          v223 = *(v221 + 4);
          if (!v223)
          {
            v234 = 0;
LABEL_353:
            v228 = v222 + 56 * v234;
            goto LABEL_363;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v519 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v519 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v519;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v224 = sub_298B40118("DataKey", 7uLL, *(v41 + 2832));
          v225 = v223 - 1;
          v226 = 1;
          if ("DataKey" == -2)
          {
            v227 = v224 & v225;
            v228 = v222 + 56 * (v224 & v225);
            v229 = *(v228 + 8);
            if (v229 != -2)
            {
              while (v229 != -1)
              {
                if (*(v228 + 16) != 7 || ((v230 = *v229, v231 = *(v229 + 3), v230 == 1635017028) ? (v232 = v231 == 2036681569) : (v232 = 0), !v232))
                {
                  v233 = v226 + v227;
                  ++v226;
                  v227 = v233 & v225;
                  v228 = v222 + 56 * (v233 & v225);
                  v229 = *(v228 + 8);
                  if (v229 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_363;
              }

LABEL_384:
              if ("DataKey" != -1)
              {
                v222 = *v221;
                v234 = *(v221 + 4);
                goto LABEL_353;
              }
            }
          }

          else
          {
            while (1)
            {
              v228 = v222 + 56 * (v224 & v225);
              v235 = *(v228 + 8);
              if (v235 != -2)
              {
                if (v235 == -1)
                {
                  goto LABEL_384;
                }

                if (*(v228 + 16) == 7)
                {
                  v236 = *v235;
                  v237 = *(v235 + 3);
                  if (v236 == 1635017028 && v237 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v224 = v226 + (v224 & v225);
              ++v226;
            }
          }

LABEL_363:
          if (*(v228 + 24) == 6)
          {
            v251 = v228 + 32;
            v252 = *(v228 + 55);
            v254 = *(v228 + 32);
            v253 = *(v228 + 40);
            if (v252 >= 0)
            {
              v255 = v251;
            }

            else
            {
              v255 = v254;
            }

            if (v252 >= 0)
            {
              v256 = v252;
            }

            else
            {
              v256 = v253;
            }

            MEMORY[0x29C294310](v63 - 248, v255, v256);
            v239 = *v221;
            v240 = *(v221 + 4);
            if (!v240)
            {
              goto LABEL_411;
            }
          }

          else
          {
            MEMORY[0x29C294310](v63 - 248, *(v228 + 32), *(v228 + 40));
            v239 = *v221;
            v240 = *(v221 + 4);
            if (!v240)
            {
              goto LABEL_411;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v520 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v520 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v520;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v241 = sub_298B40118("CompressionKey", 0xEuLL, *(v41 + 2832));
          v242 = v240 - 1;
          v243 = 1;
          if ("CompressionKey" == -2)
          {
            v244 = v241 & v242;
            v245 = v239 + 56 * (v241 & v242);
            v246 = *(v245 + 8);
            if (v246 != -2)
            {
              while (v246 != -1)
              {
                if (*(v245 + 16) != 14 || ((v247 = *v246, v248 = *(v246 + 6), v247 == 0x73736572706D6F43) ? (v249 = v248 == 0x79654B6E6F697373) : (v249 = 0), !v249))
                {
                  v250 = v243 + v244;
                  ++v243;
                  v244 = v250 & v242;
                  v245 = v239 + 56 * (v250 & v242);
                  v246 = *(v245 + 8);
                  if (v246 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_395;
              }

LABEL_425:
              if ("CompressionKey" != -1)
              {
                v282 = *v221 + 56 * *(v221 + 4);
                goto LABEL_411;
              }
            }
          }

          else
          {
            while (1)
            {
              v245 = v239 + 56 * (v241 & v242);
              v257 = *(v245 + 8);
              if (v257 != -2)
              {
                if (v257 == -1)
                {
                  goto LABEL_425;
                }

                if (*(v245 + 16) == 14)
                {
                  v258 = *v257;
                  v259 = *(v257 + 6);
                  if (v258 == 0x73736572706D6F43 && v259 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v241 = v243 + (v241 & v242);
              ++v243;
            }
          }

LABEL_395:
          if (v245 == *v221 + 56 * *(v221 + 4))
          {
            goto LABEL_411;
          }

          v261 = *(v245 + 24);
          if (v261 == 5)
          {
            v262 = *(v245 + 32);
            v263 = *(v245 + 40);
            v264 = v63 - 14;
            if (*(v63 - 200) == 1)
            {
              goto LABEL_398;
            }
          }

          else
          {
            if (v261 != 6)
            {
              goto LABEL_411;
            }

            v267 = *(v245 + 32);
            v265 = v245 + 32;
            v266 = v267;
            v268 = *(v265 + 23);
            if (v268 >= 0)
            {
              v262 = v265;
            }

            else
            {
              v262 = v266;
            }

            v269 = *(v265 + 8);
            if (v268 >= 0)
            {
              v263 = v268;
            }

            else
            {
              v263 = v269;
            }

            v264 = v63 - 14;
            if (*(v63 - 200) == 1)
            {
LABEL_398:
              MEMORY[0x29C294310](v264, v262, v263);
              goto LABEL_411;
            }
          }

          if (v263 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v263 >= 0x17)
          {
            operator new();
          }

          *(v63 - 201) = v263;
          if (v263)
          {
            memmove(v264, v262, v263);
          }

          *(v264 + v263) = 0;
          *(v63 - 200) = 1;
LABEL_411:
          v270 = *v97;
          v271 = *(v97 + 4);
          if (!v271)
          {
            v283 = 0;
LABEL_428:
            v276 = v270 + 56 * v283;
            goto LABEL_438;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v521 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v521 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v521;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v272 = sub_298B40118("ContextStarts", 0xDuLL, *(v41 + 2832));
          v273 = v271 - 1;
          v274 = 1;
          if ("ContextStarts" == -2)
          {
            v275 = v272 & v273;
            v276 = v270 + 56 * (v272 & v273);
            v277 = *(v276 + 8);
            if (v277 != -2)
            {
              while (v277 != -1)
              {
                if (*(v276 + 16) != 13 || ((v278 = *v277, v279 = *(v277 + 5), v278 == 0x53747865746E6F43) ? (v280 = v279 == 0x7374726174537478) : (v280 = 0), !v280))
                {
                  v281 = v274 + v275;
                  ++v274;
                  v275 = v281 & v273;
                  v276 = v270 + 56 * (v281 & v273);
                  v277 = *(v276 + 8);
                  if (v277 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_438;
              }

LABEL_453:
              if ("ContextStarts" != -1)
              {
                v270 = *v97;
                v283 = *(v97 + 4);
                goto LABEL_428;
              }
            }
          }

          else
          {
            while (1)
            {
              v276 = v270 + 56 * (v272 & v273);
              v284 = *(v276 + 8);
              if (v284 != -2)
              {
                if (v284 == -1)
                {
                  goto LABEL_453;
                }

                if (*(v276 + 16) == 13)
                {
                  v285 = *v284;
                  v286 = *(v284 + 5);
                  if (v285 == 0x53747865746E6F43 && v286 == 0x7374726174537478)
                  {
                    break;
                  }
                }
              }

              v272 = v274 + (v272 & v273);
              ++v274;
            }
          }

LABEL_438:
          v288 = *(v276 + 24);
          v289 = (v276 + 32);
          if (v288 == 7)
          {
            v290 = v289;
          }

          else
          {
            v290 = 0;
          }

          v291 = *v290;
          v292 = *(v290 + 4);
          if (!v292)
          {
            v303 = 0;
LABEL_456:
            v297 = v291 + 56 * v303;
            goto LABEL_466;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v522 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v522 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v522;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v293 = sub_298B40118("DataKey", 7uLL, *(v41 + 2832));
          v294 = v292 - 1;
          v295 = 1;
          if ("DataKey" == -2)
          {
            v296 = v293 & v294;
            v297 = v291 + 56 * (v293 & v294);
            v298 = *(v297 + 8);
            if (v298 != -2)
            {
              while (v298 != -1)
              {
                if (*(v297 + 16) != 7 || ((v299 = *v298, v300 = *(v298 + 3), v299 == 1635017028) ? (v301 = v300 == 2036681569) : (v301 = 0), !v301))
                {
                  v302 = v295 + v296;
                  ++v295;
                  v296 = v302 & v294;
                  v297 = v291 + 56 * (v302 & v294);
                  v298 = *(v297 + 8);
                  if (v298 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_466;
              }

LABEL_487:
              if ("DataKey" != -1)
              {
                v291 = *v290;
                v303 = *(v290 + 4);
                goto LABEL_456;
              }
            }
          }

          else
          {
            while (1)
            {
              v297 = v291 + 56 * (v293 & v294);
              v304 = *(v297 + 8);
              if (v304 != -2)
              {
                if (v304 == -1)
                {
                  goto LABEL_487;
                }

                if (*(v297 + 16) == 7)
                {
                  v305 = *v304;
                  v306 = *(v304 + 3);
                  if (v305 == 1635017028 && v306 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v293 = v295 + (v293 & v294);
              ++v295;
            }
          }

LABEL_466:
          if (*(v297 + 24) == 6)
          {
            v320 = v297 + 32;
            v321 = *(v297 + 55);
            v323 = *(v297 + 32);
            v322 = *(v297 + 40);
            if (v321 >= 0)
            {
              v324 = v320;
            }

            else
            {
              v324 = v323;
            }

            if (v321 >= 0)
            {
              v325 = v321;
            }

            else
            {
              v325 = v322;
            }

            MEMORY[0x29C294310](v63 - 12, v324, v325);
            v308 = *v290;
            v309 = *(v290 + 4);
            if (!v309)
            {
              goto LABEL_514;
            }
          }

          else
          {
            MEMORY[0x29C294310](v63 - 12, *(v297 + 32), *(v297 + 40));
            v308 = *v290;
            v309 = *(v290 + 4);
            if (!v309)
            {
              goto LABEL_514;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v523 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v523 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v523;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v310 = sub_298B40118("CompressionKey", 0xEuLL, *(v41 + 2832));
          v311 = v309 - 1;
          v312 = 1;
          if ("CompressionKey" == -2)
          {
            v313 = v310 & v311;
            v314 = v308 + 56 * (v310 & v311);
            v315 = *(v314 + 8);
            if (v315 != -2)
            {
              while (v315 != -1)
              {
                if (*(v314 + 16) != 14 || ((v316 = *v315, v317 = *(v315 + 6), v316 == 0x73736572706D6F43) ? (v318 = v317 == 0x79654B6E6F697373) : (v318 = 0), !v318))
                {
                  v319 = v312 + v313;
                  ++v312;
                  v313 = v319 & v311;
                  v314 = v308 + 56 * (v319 & v311);
                  v315 = *(v314 + 8);
                  if (v315 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_498;
              }

LABEL_525:
              if ("CompressionKey" != -1)
              {
                v348 = *v290 + 56 * *(v290 + 4);
                goto LABEL_514;
              }
            }
          }

          else
          {
            while (1)
            {
              v314 = v308 + 56 * (v310 & v311);
              v326 = *(v314 + 8);
              if (v326 != -2)
              {
                if (v326 == -1)
                {
                  goto LABEL_525;
                }

                if (*(v314 + 16) == 14)
                {
                  v327 = *v326;
                  v328 = *(v326 + 6);
                  if (v327 == 0x73736572706D6F43 && v328 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v310 = v312 + (v310 & v311);
              ++v312;
            }
          }

LABEL_498:
          if (v314 == *v290 + 56 * *(v290 + 4))
          {
            goto LABEL_514;
          }

          v330 = *(v314 + 24);
          if (v330 == 5)
          {
            v331 = *(v314 + 32);
            v332 = *(v314 + 40);
            v333 = v63 - 168;
            if (*(v63 - 144) == 1)
            {
              goto LABEL_501;
            }
          }

          else
          {
            if (v330 != 6)
            {
              goto LABEL_514;
            }

            v336 = *(v314 + 32);
            v334 = v314 + 32;
            v335 = v336;
            v337 = *(v334 + 23);
            if (v337 >= 0)
            {
              v331 = v334;
            }

            else
            {
              v331 = v335;
            }

            v338 = *(v334 + 8);
            if (v337 >= 0)
            {
              v332 = v337;
            }

            else
            {
              v332 = v338;
            }

            v333 = v63 - 168;
            if (*(v63 - 144) == 1)
            {
LABEL_501:
              MEMORY[0x29C294310](v333, v331, v332);
              goto LABEL_514;
            }
          }

          if (v332 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v332 >= 0x17)
          {
            operator new();
          }

          *(v63 - 145) = v332;
          if (v332)
          {
            memmove(v333, v331, v332);
          }

          v333[v332] = 0;
          *(v63 - 144) = 1;
LABEL_514:
          v339 = *v97;
          v340 = *(v97 + 4);
          if (!v340)
          {
            v349 = 0;
LABEL_528:
            v345 = v339 + 56 * v349;
            goto LABEL_534;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v524 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v524 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v524;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v341 = sub_298B40118("Counters", 8uLL, *(v41 + 2832));
          v342 = v340 - 1;
          v343 = 1;
          if ("Counters" == -2)
          {
            v344 = v341 & v342;
            v345 = v339 + 56 * (v341 & v342);
            v346 = *(v345 + 8);
            if (v346 != -2)
            {
              while (v346 != -1)
              {
                if (*(v345 + 16) != 8 || *v346 != 0x737265746E756F43)
                {
                  v347 = v343 + v344;
                  ++v343;
                  v344 = v347 & v342;
                  v345 = v339 + 56 * (v347 & v342);
                  v346 = *(v345 + 8);
                  if (v346 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_534;
              }

LABEL_549:
              if ("Counters" != -1)
              {
                v339 = *v97;
                v349 = *(v97 + 4);
                goto LABEL_528;
              }
            }
          }

          else
          {
            while (1)
            {
              v345 = v339 + 56 * (v341 & v342);
              v350 = *(v345 + 8);
              if (v350 != -2)
              {
                if (v350 == -1)
                {
                  goto LABEL_549;
                }

                if (*(v345 + 16) == 8 && *v350 == 0x737265746E756F43)
                {
                  break;
                }
              }

              v341 = v343 + (v341 & v342);
              ++v343;
            }
          }

LABEL_534:
          v351 = *(v345 + 24);
          v352 = (v345 + 32);
          if (v351 == 7)
          {
            v353 = v352;
          }

          else
          {
            v353 = 0;
          }

          v354 = *v353;
          v355 = *(v353 + 4);
          if (!v355)
          {
            v366 = 0;
LABEL_552:
            v360 = v354 + 56 * v366;
            goto LABEL_562;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v525 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v525 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v525;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v356 = sub_298B40118("DataKey", 7uLL, *(v41 + 2832));
          v357 = v355 - 1;
          v358 = 1;
          if ("DataKey" == -2)
          {
            v359 = v356 & v357;
            v360 = v354 + 56 * (v356 & v357);
            v361 = *(v360 + 8);
            if (v361 != -2)
            {
              while (v361 != -1)
              {
                if (*(v360 + 16) != 7 || ((v362 = *v361, v363 = *(v361 + 3), v362 == 1635017028) ? (v364 = v363 == 2036681569) : (v364 = 0), !v364))
                {
                  v365 = v358 + v359;
                  ++v358;
                  v359 = v365 & v357;
                  v360 = v354 + 56 * (v365 & v357);
                  v361 = *(v360 + 8);
                  if (v361 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_562;
              }

LABEL_583:
              if ("DataKey" != -1)
              {
                v354 = *v353;
                v366 = *(v353 + 4);
                goto LABEL_552;
              }
            }
          }

          else
          {
            while (1)
            {
              v360 = v354 + 56 * (v356 & v357);
              v367 = *(v360 + 8);
              if (v367 != -2)
              {
                if (v367 == -1)
                {
                  goto LABEL_583;
                }

                if (*(v360 + 16) == 7)
                {
                  v368 = *v367;
                  v369 = *(v367 + 3);
                  if (v368 == 1635017028 && v369 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v356 = v358 + (v356 & v357);
              ++v358;
            }
          }

LABEL_562:
          if (*(v360 + 24) == 6)
          {
            v383 = v360 + 32;
            v384 = *(v360 + 55);
            v386 = *(v360 + 32);
            v385 = *(v360 + 40);
            if (v384 >= 0)
            {
              v387 = v383;
            }

            else
            {
              v387 = v386;
            }

            if (v384 >= 0)
            {
              v388 = v384;
            }

            else
            {
              v388 = v385;
            }

            MEMORY[0x29C294310](v63 - 136, v387, v388);
            v371 = *v353;
            v372 = *(v353 + 4);
            if (!v372)
            {
              goto LABEL_610;
            }
          }

          else
          {
            MEMORY[0x29C294310](v63 - 136, *(v360 + 32), *(v360 + 40));
            v371 = *v353;
            v372 = *(v353 + 4);
            if (!v372)
            {
              goto LABEL_610;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v526 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v526 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v526;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v373 = sub_298B40118("CompressionKey", 0xEuLL, *(v41 + 2832));
          v374 = v372 - 1;
          v375 = 1;
          if ("CompressionKey" == -2)
          {
            v376 = v373 & v374;
            v377 = v371 + 56 * (v373 & v374);
            v378 = *(v377 + 8);
            if (v378 != -2)
            {
              while (v378 != -1)
              {
                if (*(v377 + 16) != 14 || ((v379 = *v378, v380 = *(v378 + 6), v379 == 0x73736572706D6F43) ? (v381 = v380 == 0x79654B6E6F697373) : (v381 = 0), !v381))
                {
                  v382 = v375 + v376;
                  ++v375;
                  v376 = v382 & v374;
                  v377 = v371 + 56 * (v382 & v374);
                  v378 = *(v377 + 8);
                  if (v378 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_594;
              }

LABEL_621:
              if ("CompressionKey" != -1)
              {
                v411 = *v353 + 56 * *(v353 + 4);
                goto LABEL_610;
              }
            }
          }

          else
          {
            while (1)
            {
              v377 = v371 + 56 * (v373 & v374);
              v389 = *(v377 + 8);
              if (v389 != -2)
              {
                if (v389 == -1)
                {
                  goto LABEL_621;
                }

                if (*(v377 + 16) == 14)
                {
                  v390 = *v389;
                  v391 = *(v389 + 6);
                  if (v390 == 0x73736572706D6F43 && v391 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v373 = v375 + (v373 & v374);
              ++v375;
            }
          }

LABEL_594:
          if (v377 == *v353 + 56 * *(v353 + 4))
          {
            goto LABEL_610;
          }

          v393 = *(v377 + 24);
          if (v393 == 5)
          {
            v394 = *(v377 + 32);
            v395 = *(v377 + 40);
            v396 = v63 - 7;
            if (*(v63 - 88) == 1)
            {
              goto LABEL_597;
            }
          }

          else
          {
            if (v393 != 6)
            {
              goto LABEL_610;
            }

            v399 = *(v377 + 32);
            v397 = v377 + 32;
            v398 = v399;
            v400 = *(v397 + 23);
            if (v400 >= 0)
            {
              v394 = v397;
            }

            else
            {
              v394 = v398;
            }

            v401 = *(v397 + 8);
            if (v400 >= 0)
            {
              v395 = v400;
            }

            else
            {
              v395 = v401;
            }

            v396 = v63 - 7;
            if (*(v63 - 88) == 1)
            {
LABEL_597:
              MEMORY[0x29C294310](v396, v394, v395);
              goto LABEL_610;
            }
          }

          if (v395 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v395 >= 0x17)
          {
            operator new();
          }

          *(v63 - 89) = v395;
          if (v395)
          {
            memmove(v396, v394, v395);
          }

          *(v396 + v395) = 0;
          *(v63 - 88) = 1;
LABEL_610:
          v402 = *v97;
          v403 = *(v97 + 4);
          if (!v403)
          {
            v412 = 0;
LABEL_624:
            v408 = v402 + 56 * v412;
            goto LABEL_630;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v527 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v527 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v527;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v404 = sub_298B40118("Messages", 8uLL, *(v41 + 2832));
          v405 = v403 - 1;
          v406 = 1;
          if ("Messages" == -2)
          {
            v407 = v404 & v405;
            v408 = v402 + 56 * (v404 & v405);
            v409 = *(v408 + 8);
            if (v409 != -2)
            {
              while (v409 != -1)
              {
                if (*(v408 + 16) != 8 || *v409 != 0x736567617373654DLL)
                {
                  v410 = v406 + v407;
                  ++v406;
                  v407 = v410 & v405;
                  v408 = v402 + 56 * (v410 & v405);
                  v409 = *(v408 + 8);
                  if (v409 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_630;
              }

LABEL_645:
              if ("Messages" != -1)
              {
                v402 = *v97;
                v412 = *(v97 + 4);
                goto LABEL_624;
              }
            }
          }

          else
          {
            while (1)
            {
              v408 = v402 + 56 * (v404 & v405);
              v413 = *(v408 + 8);
              if (v413 != -2)
              {
                if (v413 == -1)
                {
                  goto LABEL_645;
                }

                if (*(v408 + 16) == 8 && *v413 == 0x736567617373654DLL)
                {
                  break;
                }
              }

              v404 = v406 + (v404 & v405);
              ++v406;
            }
          }

LABEL_630:
          v414 = *(v408 + 24);
          v415 = (v408 + 32);
          if (v414 == 7)
          {
            v416 = v415;
          }

          else
          {
            v416 = 0;
          }

          v417 = *v416;
          v418 = *(v416 + 4);
          if (!v418)
          {
            v429 = 0;
LABEL_648:
            v423 = v417 + 56 * v429;
            goto LABEL_658;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v528 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v528 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v528;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v419 = sub_298B40118("DataKey", 7uLL, *(v41 + 2832));
          v420 = v418 - 1;
          v421 = 1;
          if ("DataKey" == -2)
          {
            v422 = v419 & v420;
            v423 = v417 + 56 * (v419 & v420);
            v424 = *(v423 + 8);
            if (v424 != -2)
            {
              while (v424 != -1)
              {
                if (*(v423 + 16) != 7 || ((v425 = *v424, v426 = *(v424 + 3), v425 == 1635017028) ? (v427 = v426 == 2036681569) : (v427 = 0), !v427))
                {
                  v428 = v421 + v422;
                  ++v421;
                  v422 = v428 & v420;
                  v423 = v417 + 56 * (v428 & v420);
                  v424 = *(v423 + 8);
                  if (v424 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_658;
              }

LABEL_679:
              if ("DataKey" != -1)
              {
                v417 = *v416;
                v429 = *(v416 + 4);
                goto LABEL_648;
              }
            }
          }

          else
          {
            while (1)
            {
              v423 = v417 + 56 * (v419 & v420);
              v430 = *(v423 + 8);
              if (v430 != -2)
              {
                if (v430 == -1)
                {
                  goto LABEL_679;
                }

                if (*(v423 + 16) == 7)
                {
                  v431 = *v430;
                  v432 = *(v430 + 3);
                  if (v431 == 1635017028 && v432 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v419 = v421 + (v419 & v420);
              ++v421;
            }
          }

LABEL_658:
          if (*(v423 + 24) == 6)
          {
            v446 = v423 + 32;
            v447 = *(v423 + 55);
            v449 = *(v423 + 32);
            v448 = *(v423 + 40);
            if (v447 >= 0)
            {
              v450 = v446;
            }

            else
            {
              v450 = v449;
            }

            if (v447 >= 0)
            {
              v451 = v447;
            }

            else
            {
              v451 = v448;
            }

            MEMORY[0x29C294310](v63 - 5, v450, v451);
            v434 = *v416;
            v435 = *(v416 + 4);
            if (!v435)
            {
              goto LABEL_706;
            }
          }

          else
          {
            MEMORY[0x29C294310](v63 - 5, *(v423 + 32), *(v423 + 40));
            v434 = *v416;
            v435 = *(v416 + 4);
            if (!v435)
            {
              goto LABEL_706;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v529 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v529 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v529;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v436 = sub_298B40118("CompressionKey", 0xEuLL, *(v41 + 2832));
          v437 = v435 - 1;
          v438 = 1;
          if ("CompressionKey" == -2)
          {
            v439 = v436 & v437;
            v440 = v434 + 56 * (v436 & v437);
            v441 = *(v440 + 8);
            if (v441 != -2)
            {
              while (v441 != -1)
              {
                if (*(v440 + 16) != 14 || ((v442 = *v441, v443 = *(v441 + 6), v442 == 0x73736572706D6F43) ? (v444 = v443 == 0x79654B6E6F697373) : (v444 = 0), !v444))
                {
                  v445 = v438 + v439;
                  ++v438;
                  v439 = v445 & v437;
                  v440 = v434 + 56 * (v445 & v437);
                  v441 = *(v440 + 8);
                  if (v441 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_690;
              }

LABEL_720:
              if ("CompressionKey" != -1)
              {
                v477 = *v416 + 56 * *(v416 + 4);
                goto LABEL_706;
              }
            }
          }

          else
          {
            while (1)
            {
              v440 = v434 + 56 * (v436 & v437);
              v452 = *(v440 + 8);
              if (v452 != -2)
              {
                if (v452 == -1)
                {
                  goto LABEL_720;
                }

                if (*(v440 + 16) == 14)
                {
                  v453 = *v452;
                  v454 = *(v452 + 6);
                  if (v453 == 0x73736572706D6F43 && v454 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v436 = v438 + (v436 & v437);
              ++v438;
            }
          }

LABEL_690:
          if (v440 == *v416 + 56 * *(v416 + 4))
          {
            goto LABEL_706;
          }

          v456 = *(v440 + 24);
          if (v456 == 5)
          {
            v458 = *(v440 + 32);
            v457 = *(v440 + 40);
            v459 = v63 - 56;
            if (*(v63 - 32) == 1)
            {
              goto LABEL_693;
            }
          }

          else
          {
            if (v456 != 6)
            {
              goto LABEL_706;
            }

            v462 = *(v440 + 32);
            v460 = v440 + 32;
            v461 = v462;
            v463 = *(v460 + 23);
            if (v463 >= 0)
            {
              v458 = v460;
            }

            else
            {
              v458 = v461;
            }

            v464 = *(v460 + 8);
            if (v463 >= 0)
            {
              v457 = v463;
            }

            else
            {
              v457 = v464;
            }

            v459 = v63 - 56;
            if (*(v63 - 32) == 1)
            {
LABEL_693:
              MEMORY[0x29C294310](v459, v458, v457);
              goto LABEL_706;
            }
          }

          if (v457 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_931:
            sub_298ADDDA0();
          }

          if (v457 >= 0x17)
          {
            operator new();
          }

          *(v63 - 33) = v457;
          if (v457)
          {
            memmove(v459, v458, v457);
          }

          v459[v457] = 0;
          *(v63 - 32) = 1;
LABEL_706:
          v465 = *v97;
          v466 = *(v97 + 4);
          if (!v466)
          {
            v478 = 0;
LABEL_723:
            v479 = v478;
            v471 = v465 + 56 * v478;
            goto LABEL_734;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v530 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v530 = 0xFF51AFD7ED558CCDLL;
            }

            *(v41 + 2832) = v530;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v467 = sub_298B40118("Placeholder.ASID", 0x10uLL, *(v41 + 2832));
          v468 = v466 - 1;
          v469 = 1;
          if ("Placeholder.ASID" == -2)
          {
            v470 = v467 & v468;
            v471 = v465 + 56 * (v467 & v468);
            v472 = *(v471 + 8);
            if (v472 != -2)
            {
              while (v472 != -1)
              {
                if (*(v471 + 16) != 16 || ((v474 = *v472, v473 = v472[1], v474 == 0x6C6F686563616C50) ? (v475 = v473 == 0x444953412E726564) : (v475 = 0), !v475))
                {
                  v476 = v469 + v470;
                  ++v469;
                  v470 = v476 & v468;
                  v471 = v465 + 56 * (v476 & v468);
                  v472 = *(v471 + 8);
                  if (v472 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_733;
              }

LABEL_783:
              if ("Placeholder.ASID" != -1)
              {
                v465 = *v97;
                v478 = *(v97 + 4);
                goto LABEL_723;
              }
            }
          }

          else
          {
            while (1)
            {
              v471 = v465 + 56 * (v467 & v468);
              v480 = *(v471 + 8);
              if (v480 != -2)
              {
                if (v480 == -1)
                {
                  goto LABEL_783;
                }

                if (*(v471 + 16) == 16)
                {
                  v482 = *v480;
                  v481 = v480[1];
                  if (v482 == 0x6C6F686563616C50 && v481 == 0x444953412E726564)
                  {
                    break;
                  }
                }
              }

              v467 = v469 + (v467 & v468);
              ++v469;
            }
          }

LABEL_733:
          v465 = *v97;
          v478 = *(v97 + 4);
          v479 = v478;
LABEL_734:
          if (v471 != v465 + 56 * v479)
          {
            v484 = *(v471 + 24);
            if (v484 == 5)
            {
              v486 = *(v471 + 32);
              v485 = *(v471 + 40);
              if (v485 >= 2)
              {
                v487 = 2;
              }

              else
              {
                v487 = v485;
              }

              v488 = v485 - v487;
              if (!v488)
              {
                goto LABEL_781;
              }

              goto LABEL_740;
            }

            if (v484 == 6)
            {
              v510 = *(v471 + 32);
              v508 = v471 + 32;
              v509 = v510;
              v511 = *(v508 + 23);
              if (v511 >= 0)
              {
                v486 = v508;
              }

              else
              {
                v486 = v509;
              }

              v512 = *(v508 + 8);
              if (v511 >= 0)
              {
                v512 = v511;
              }

              if (v512 >= 2)
              {
                v487 = 2;
              }

              else
              {
                v487 = v512;
              }

              v488 = v512 - v487;
              if (!v488)
              {
LABEL_781:
                v495 = 0;
                if (!v478)
                {
                  goto LABEL_782;
                }

LABEL_757:
                if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
                {
                  v553 = qword_2A13C3658;
                  if (!qword_2A13C3658)
                  {
                    v553 = 0xFF51AFD7ED558CCDLL;
                  }

                  *(v41 + 2832) = v553;
                  __cxa_guard_release(&qword_2A13C2B18);
                }

                v496 = sub_298B40118("Placeholder.ContextID", 0x15uLL, *(v41 + 2832));
                v497 = v478 - 1;
                v498 = 1;
                if ("Placeholder.ContextID" == -2)
                {
                  v41 = 0x2A13C2000;
                  v499 = v496 & v497;
                  v500 = v465 + 56 * (v496 & v497);
                  v501 = *(v500 + 8);
                  if (v501 != -2)
                  {
                    while (v501 != -1)
                    {
                      if (*(v500 + 16) != 21 || ((v502 = *v501, v503 = v501[1], v504 = *(v501 + 13), v502 == 0x6C6F686563616C50) ? (v505 = v503 == 0x746E6F432E726564) : (v505 = 0), v505 ? (v506 = v504 == 0x4449747865746E6FLL) : (v506 = 0), !v506))
                      {
                        v507 = v498 + v499;
                        ++v498;
                        v499 = v507 & v497;
                        v500 = v465 + 56 * (v507 & v497);
                        v501 = *(v500 + 8);
                        if (v501 != -2)
                        {
                          continue;
                        }
                      }

                      goto LABEL_869;
                    }

LABEL_879:
                    if ("Placeholder.ContextID" != -1)
                    {
                      v500 = *v97 + 56 * *(v97 + 4);
                      goto LABEL_881;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
                    v500 = v465 + 56 * (v496 & v497);
                    v531 = *(v500 + 8);
                    v41 = 0x2A13C2000;
                    if (v531 != -2)
                    {
                      if (v531 == -1)
                      {
                        goto LABEL_879;
                      }

                      if (*(v500 + 16) == 21)
                      {
                        v532 = *v531;
                        v533 = v531[1];
                        v534 = *(v531 + 13);
                        v535 = v532 == 0x6C6F686563616C50 && v533 == 0x746E6F432E726564;
                        if (v535 && v534 == 0x4449747865746E6FLL)
                        {
                          break;
                        }
                      }
                    }

                    v496 = v498 + (v496 & v497);
                    ++v498;
                  }
                }

LABEL_869:
                if (v500 == *v97 + 56 * *(v97 + 4))
                {
                  goto LABEL_881;
                }

                v537 = *(v500 + 24);
                if (v537 == 5)
                {
                  v538 = *(v500 + 32);
                  v500 = *(v500 + 40);
                }

                else
                {
                  if (v537 != 6)
                  {
                    goto LABEL_881;
                  }

                  v541 = *(v500 + 32);
                  v539 = v500 + 32;
                  v540 = v541;
                  v542 = *(v539 + 23);
                  if (v542 >= 0)
                  {
                    v538 = v539;
                  }

                  else
                  {
                    v538 = v540;
                  }

                  v500 = *(v539 + 8);
                  if (v542 >= 0)
                  {
                    v500 = v542;
                  }
                }

LABEL_882:
                if (v500 >= 2)
                {
                  v543 = 2;
                }

                else
                {
                  v543 = v500;
                }

                v544 = v500 - v543;
                if (v544)
                {
                  v545 = 0;
                  v546 = (v543 + v538);
                  v547 = v544;
                  while (1)
                  {
                    if (*v546 < 48)
                    {
LABEL_899:
                      if (v544 == v547)
                      {
                        v544 = 0;
                      }

                      else
                      {
                        v544 = v545;
                      }

                      goto LABEL_902;
                    }

                    v548 = *v546;
                    if (v548 >= 0x3A)
                    {
                      if (v548 < 0x61)
                      {
                        if (v548 - 65 > 0x19)
                        {
                          goto LABEL_899;
                        }

                        v549 = -55;
                      }

                      else
                      {
                        if (v548 >= 0x7B)
                        {
                          goto LABEL_899;
                        }

                        v549 = -87;
                      }
                    }

                    else
                    {
                      v549 = -48;
                    }

                    v550 = v549 + v548;
                    if (v550 > 0xF)
                    {
                      goto LABEL_899;
                    }

                    if (v545 >> 60)
                    {
                      break;
                    }

                    v545 = v550 | (16 * v545);
                    ++v546;
                    if (!--v547)
                    {
                      goto LABEL_899;
                    }
                  }

                  v552 = *(v63 - 8);
                  *(v63 - 3) = v495;
                  *(v63 - 2) = 0;
                  if ((v552 & 1) == 0)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
LABEL_902:
                  v551 = *(v63 - 8);
                  *(v63 - 3) = v495;
                  *(v63 - 2) = v544;
                  if ((v551 & 1) == 0)
                  {
LABEL_903:
                    *(v63 - 8) = 1;
                  }
                }

                goto LABEL_108;
              }

LABEL_740:
              v489 = 0;
              v490 = (v487 + v486);
              v491 = v488;
              do
              {
                if (*v490 < 48)
                {
                  break;
                }

                v492 = *v490;
                if (v492 >= 0x3A)
                {
                  if (v492 < 0x61)
                  {
                    if (v492 - 65 > 0x19)
                    {
                      break;
                    }

                    v493 = -55;
                  }

                  else
                  {
                    if (v492 >= 0x7B)
                    {
                      break;
                    }

                    v493 = -87;
                  }
                }

                else
                {
                  v493 = -48;
                }

                v494 = v493 + v492;
                if (v494 > 0xF)
                {
                  break;
                }

                if (v489 >> 60)
                {
                  goto LABEL_781;
                }

                v489 = v494 | (16 * v489);
                ++v490;
                --v491;
              }

              while (v491);
              if (v488 == v491)
              {
                v495 = 0;
              }

              else
              {
                v495 = v489;
              }

              if (v478)
              {
                goto LABEL_757;
              }

LABEL_782:
              v500 = v465;
LABEL_881:
              v538 = 0;
              goto LABEL_882;
            }
          }

LABEL_108:
          v60 = v595 + 16;
          v48 = v593;
          v53 = v596;
          if (v595 + 16 == v594)
          {
            goto LABEL_918;
          }
        }
      }

LABEL_936:
      v611.__r_.__value_.__r.__words[0] = "CallstackModifiers";
      v611.__r_.__value_.__l.__size_ = 18;
      v610.__r_.__value_.__r.__words[0] = 0;
      if (sub_298B89FD8(v586, &v611, &v610))
      {
        if (v610.__r_.__value_.__r.__words[0] != *v586 + 56 * *(v586 + 16))
        {
          if (*(v610.__r_.__value_.__r.__words[0] + 24) == 7)
          {
            v557 = v610.__r_.__value_.__r.__words[0] + 32;
          }

          else
          {
            v557 = 0;
          }

          goto LABEL_943;
        }
      }

      else
      {
        v558 = *v586 + 56 * *(v586 + 16);
      }

      v557 = 0;
LABEL_943:
      v611.__r_.__value_.__r.__words[0] = "Root";
      v611.__r_.__value_.__l.__size_ = 4;
      v611.__r_.__value_.__r.__words[2] = &unk_298EAE8EF;
      v612 = 0u;
      v613 = 0u;
      v610.__r_.__value_.__r.__words[0] = "SharedContextsSymStarts";
      v610.__r_.__value_.__l.__size_ = 23;
      *v616 = 0;
      if (sub_298B89FD8(v557, &v610, v616))
      {
        v559 = *v616;
        v560 = *v557;
        v561 = *(v557 + 16);
      }

      else
      {
        v560 = *v557;
        v561 = *(v557 + 16);
        v559 = *v557 + 56 * v561;
      }

      if (v559 == v560 + 56 * v561)
      {
        v562 = 0;
      }

      else
      {
        v562 = v559 + 24;
      }

      v610.__r_.__value_.__r.__words[0] = 0;
      v610.__r_.__value_.__l.__size_ = &v611;
      sub_298C25014(v562, (a2 + 88), &v610);
      v610.__r_.__value_.__r.__words[0] = "UniqueContextsSymStarts";
      v610.__r_.__value_.__l.__size_ = 23;
      *v616 = 0;
      if (sub_298B89FD8(v557, &v610, v616))
      {
        if (*(*v616 + 24) == 7)
        {
          v563 = *v616 + 32;
        }

        else
        {
          v563 = 0;
        }

        if (!*(v563 + 8))
        {
          goto LABEL_981;
        }
      }

      else
      {
        v576 = *v557 + 56 * *(v557 + 16);
        v577 = *(v576 + 24);
        v578 = v576 + 32;
        if (v577 == 7)
        {
          v563 = v578;
        }

        else
        {
          v563 = 0;
        }

        if (!*(v563 + 8))
        {
          goto LABEL_981;
        }
      }

      v564 = *v563;
      v565 = *(v563 + 16);
      if (v565)
      {
        v566 = 56 * v565;
        v567 = v564;
        while (*(v567 + 8) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v567 += 56;
          v566 -= 56;
          if (!v566)
          {
            goto LABEL_981;
          }
        }
      }

      else
      {
        v567 = v564;
      }

      v568 = v564 + 56 * v565;
      if (v568 != v567)
      {
        v569 = (v591 + 120);
        do
        {
          v570 = *(v567 + 8);
          v571 = *(v567 + 16);
          v610.__r_.__value_.__r.__words[0] = 0;
          if (sub_298B97354(v570, v571, 0xAu, &v610))
          {
            v572 = -1;
          }

          else
          {
            v572 = v610.__r_.__value_.__r.__words[0];
          }

          v573 = *v569;
          if (!*v569)
          {
LABEL_970:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v574 = v573;
              v575 = v573[4];
              if (v572 >= v575)
              {
                break;
              }

              v573 = *v574;
              if (!*v574)
              {
                goto LABEL_970;
              }
            }

            if (v575 >= v572)
            {
              break;
            }

            v573 = v574[1];
            if (!v573)
            {
              goto LABEL_970;
            }
          }

          v610.__r_.__value_.__r.__words[0] = 0;
          v610.__r_.__value_.__l.__size_ = &v611;
          sub_298C25014(v567 + 24, v574 + 5, &v610);
          do
          {
            v567 += 56;
            if (v567 == v568)
            {
              goto LABEL_981;
            }
          }

          while (*(v567 + 8) >= 0xFFFFFFFFFFFFFFFELL);
        }

        while (v567 != v568);
      }

LABEL_981:
      if (*(&v612 + 1))
      {
        *&v613 = *(&v612 + 1);
        operator delete(*(&v612 + 1));
      }

      v579 = sub_298B878FC(v586, "NumGaps", 7);
      if (v580)
      {
        v581 = v579;
      }

      else
      {
        v581 = 0;
      }

      *(v591 + 136) = v581;
      v582 = sub_298B878FC(v586, "NumExcessGaps", 13);
      if (v583)
      {
        v584 = v582;
      }

      else
      {
        v584 = 0;
      }

      *(v591 + 144) = v584;
      *a1 = 0;
      if (SHIBYTE(v609) < 0)
      {
        goto LABEL_990;
      }

      goto LABEL_37;
    }
  }

  else
  {
    sub_298BCE714(&v601, v602[0]);
    if ((SHIBYTE(v598) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(v597[0]);
  sub_298B9AE14(&v611);
  if (*a4 != 1)
  {
    goto LABEL_49;
  }

LABEL_31:
  v20 = sub_298B227A0(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = &__p;
    if (v609 < 0)
    {
      v21 = __p;
    }

    LODWORD(v611.__r_.__value_.__l.__data_) = 136446210;
    *(v611.__r_.__value_.__r.__words + 4) = v21;
    _os_log_impl(&dword_298AD8000, v20, OS_LOG_TYPE_INFO, "Version incompatibility for decoded trace results:\n%{public}s\nIgnoring decoded results and attempting to re-decode...", &v611, 0xCu);
    *a1 = 0;
    if (SHIBYTE(v609) < 0)
    {
      goto LABEL_990;
    }

LABEL_37:
    v22 = *MEMORY[0x29EDCA608];
    return;
  }

  *a1 = 0;
  if ((SHIBYTE(v609) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_990:
  operator delete(__p);
  v585 = *MEMORY[0x29EDCA608];
}