void sub_27171CC48(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        a2[23] = 18;
        strcpy(a2, "unsupported format");
        return;
      case 4:
        operator new();
      case 5:
        operator new();
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    a2[23] = 8;
    strcpy(a2, "no error");
    return;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      a2[23] = 14;
      strcpy(a2, "index overflow");
      return;
    }

LABEL_12:
    a2[23] = 18;
    strcpy(a2, "unknown error code");
    return;
  }

  a2[23] = 21;
  strcpy(a2, "failed to open stream");
}

unint64_t sub_27171CE28(unsigned __int8 *a1)
{
  v1 = a1[23];
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v14 = 0;
  v15 = 0;
  __p = 0;
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v3 < 0x17)
  {
    if (v3)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((v3 | 7) == 0x17)
  {
    v4 = 24;
  }

  else
  {
    v4 = v3 | 7;
  }

  sub_27113107C(&__p, v4);
  do
  {
LABEL_16:
    while (1)
    {
      v5 = __tolower(*v2);
      v6 = HIBYTE(v15);
      if (SHIBYTE(v15) < 0)
      {
        break;
      }

      if (HIBYTE(v15) == 22)
      {
        goto LABEL_21;
      }

      HIBYTE(v15) = (HIBYTE(v15) + 1) & 0x7F;
      *(&__p + v6) = v5;
      ++v2;
      if (!--v3)
      {
        goto LABEL_23;
      }
    }

    v7 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v14 == v7)
    {
      if ((v15 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

LABEL_21:
      operator new();
    }

    v8 = v14++;
    v9 = __p + v8;
    *v9 = v5;
    v9[1] = 0;
    ++v2;
    --v3;
  }

  while (v3);
LABEL_23:
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    if (SHIBYTE(v15) == 4)
    {
      p_p = &__p;
      goto LABEL_29;
    }

    return 0;
  }

  if (v14 == 4)
  {
    p_p = __p;
LABEL_29:
    result = (*p_p == 1784835886) << 32;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
LABEL_32:
  v12 = result;
  operator delete(__p);
  return v12;
}

void sub_27171D08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27171D0B0(uint64_t a1, unsigned int a2)
{
  if (a2 > 1)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 106, "", 0, "format not implemented", 0x16uLL, sub_271852CA8);
    abort();
  }

  if (a2 == 1)
  {
    if (*(a1 + 32) != *(a1 + 40) || *(a1 + 104) > 1u)
    {
      return 0;
    }
  }

  else if (*(a1 + 104) > 1u)
  {
    return 0;
  }

  if (*(a1 + 64) > 1u)
  {
    return 0;
  }

  if (*(a1 + 144) == *(a1 + 152) && *(a1 + 176) == *(a1 + 184) && *(a1 + 208) == *(a1 + 216) && *(a1 + 240) == *(a1 + 248) && *(a1 + 280) == *(a1 + 288) && *(a1 + 320) == *(a1 + 328) && *(a1 + 380) != 1)
  {
    return 2;
  }

  return 1;
}

void sub_27171D1AC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  LODWORD(v7) = a2;
  v39[2] = *MEMORY[0x277D85DE8];
  LOBYTE(v18[0]) = 0;
  v26 = 0;
  if (*(a3 + 96) != 1)
  {
    *a1 = a2;
    *(a1 + 8) = &off_288134080;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    goto LABEL_19;
  }

  sub_27112F6CC(v18, a3);
  v9 = 1;
  v26 = 1;
  LOBYTE(__p) = 0;
  v36 = 0;
  sub_27112F6CC(&__p, v18);
  v36 = 1;
  v10 = v29;
  if (v29 == 1)
  {
    v11 = __p;
    v39[0] = v28;
    *(v39 + 7) = *(&v28 + 7);
    v9 = HIBYTE(v28);
    v28 = 0uLL;
    __p = 0;
    v7 = v7;
    v12 = v35;
    if (v35 != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = 0;
    v7 = v7;
    v12 = v35;
    if (v35 != 1)
    {
LABEL_4:
      v13 = 0;
      if (!v29)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v13 = v30;
  v38[0] = v31;
  *(v38 + 7) = *(&v31 + 7);
  v4 = HIBYTE(v31);
  v30 = 0;
  v31 = 0uLL;
  v3 = v32;
  v6 = v33;
  v37[0] = v34;
  *(v37 + 7) = *(&v34 + 7);
  v5 = HIBYTE(v34);
  v33 = 0;
  v34 = 0uLL;
  if (!v29)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v28) < 0)
  {
    v17 = v11;
    operator delete(__p);
    v11 = v17;
  }

LABEL_11:
  *a1 = v7;
  *(a1 + 8) = &off_288134080;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 40) = 0;
  if (v10)
  {
    v14 = v39[0];
    *(a1 + 16) = v11;
    *(a1 + 24) = v14;
    *(a1 + 31) = *(v39 + 7);
    *(a1 + 39) = v9;
    v39[0] = 0;
    *(v39 + 7) = 0;
    *(a1 + 40) = 1;
    v11 = 0;
    v9 = 0;
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (!v12)
    {
LABEL_13:
      *(a1 + 112) = 1;
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v15 = v38[0];
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 63) = *(v38 + 7);
  *(a1 + 71) = v4;
  v38[0] = 0;
  *(v38 + 7) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = v6;
  *(a1 + 88) = v37[0];
  *(a1 + 95) = *(v37 + 7);
  *(a1 + 103) = v5;
  v37[0] = 0;
  *(v37 + 7) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v11);
  }

LABEL_19:
  if (v26 != 1)
  {
    goto LABEL_26;
  }

  if (v25 != 1)
  {
    goto LABEL_23;
  }

  if (v24 < 0)
  {
    operator delete(v23);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_23:
      if (v20 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v21);
  if (v20 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_27171D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_27112D66C(va1);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27171D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27171D49C(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (!*a1)
    {
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 243, "filepath", 8uLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_10:
          qword_28087C420(*algn_28087C428, "filepath", 8, "", 0);
          v6 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v8 = qword_28087C408;
        v9 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_189;
        }
      }

      do
      {
        v11 = *v8;
        v10 = *(v8 + 8);
        v8 += 16;
        v11(v10, "filepath", 8, "", 0);
      }

      while (v8 != v9);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_189;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v145 = 0uLL;
  v144 = &unk_288115240;
  memset(&__p, 0, sizeof(__p));
  v12 = v6 - 1;
    ;
  }

  sub_271171230(&__p, v6, v12);
  sub_271725008(&__p, 0x30u, a3, v147);
  v14 = *&v147[8];
  *&v147[8] = 0;
  *&v147[16] = 0;
  v15 = *(&v145 + 1);
  v145 = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v16 = *&v147[16];
    if (!*&v147[16])
    {
LABEL_17:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      v17 = v145;
      if (!v145)
      {
        goto LABEL_190;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v16 = *&v147[16];
    if (!*&v147[16])
    {
      goto LABEL_17;
    }
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_17;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  v17 = v145;
  if (!v145)
  {
LABEL_190:
    v124 = 1;
    v125 = *(&v145 + 1);
    if (!*(&v145 + 1))
    {
      goto LABEL_192;
    }

    goto LABEL_191;
  }

LABEL_24:
  v133 = a4;
  v134 = (*(*v17 + 16))(v17);
  if (*(a2 + 26) < 2u)
  {
    goto LABEL_33;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 166, "(mesh.normals_type == TriMeshMetadataType::PerVertex || mesh.normals_type == TriMeshMetadataType::Unknown)", 0x6AuLL, "obj export requires per-vertex normals", 0x26uLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v18 = qword_28087C408;
    v19 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_189;
    }

    do
    {
LABEL_30:
      (*v18)(*(v18 + 8), "(mesh.normals_type == TriMeshMetadataType::PerVertex || mesh.normals_type == TriMeshMetadataType::Unknown)", 106, "obj export requires per-vertex normals", 38);
      v18 += 16;
    }

    while (v18 != v19);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_32;
  }

  if (byte_28087C438 == 1)
  {
    v18 = qword_28087C408;
    v19 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      goto LABEL_30;
    }
  }

LABEL_32:
  qword_28087C420(*algn_28087C428, "(mesh.normals_type == TriMeshMetadataType::PerVertex || mesh.normals_type == TriMeshMetadataType::Unknown)", 106, "obj export requires per-vertex normals", 38);
LABEL_33:
  if (*(a2 + 16) >= 2u)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 169, "(mesh.colors_type == TriMeshMetadataType::PerVertex || mesh.colors_type == TriMeshMetadataType::Unknown)", 0x68uLL, "obj export requires per-vertex colors", 0x25uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_41:
        qword_28087C420(*algn_28087C428, "(mesh.colors_type == TriMeshMetadataType::PerVertex || mesh.colors_type == TriMeshMetadataType::Unknown)", 104, "obj export requires per-vertex colors", 37);
        goto LABEL_42;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_189;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "(mesh.colors_type == TriMeshMetadataType::PerVertex || mesh.colors_type == TriMeshMetadataType::Unknown)", 104, "obj export requires per-vertex colors", 37);
      v20 += 16;
    }

    while (v20 != v21);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_41;
  }

LABEL_42:
  v22 = a2[5] - a2[4];
  if (v22 && v22 != a2[1] - *a2)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 171, "(mesh.colors.size() == 0 || mesh.colors.size() == mesh.vertices.size())", 0x47uLL, "mesh's #colors must be either zero or equal to #vertices", 0x38uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_51:
        qword_28087C420(*algn_28087C428, "(mesh.colors.size() == 0 || mesh.colors.size() == mesh.vertices.size())", 71, "mesh's #colors must be either zero or equal to #vertices", 56);
        goto LABEL_52;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_189;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(mesh.colors.size() == 0 || mesh.colors.size() == mesh.vertices.size())", 71, "mesh's #colors must be either zero or equal to #vertices", 56);
      v23 += 16;
    }

    while (v23 != v24);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_51;
  }

LABEL_52:
  if (a2[22] == a2[23])
  {
    if (a2[26] == a2[27])
    {
      v131 = a2[26];
      v132 = v131;
      goto LABEL_74;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 177, "(mesh.tex_faces.empty())", 0x18uLL, "for meshes without texture coords, mesh's #tex_faces must be zero", 0x41uLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_72;
      }

      v25 = qword_28087C408;
      v26 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v25 = qword_28087C408;
      v26 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_189;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "(mesh.tex_faces.empty())", 24, "for meshes without texture coords, mesh's #tex_faces must be zero", 65);
      v25 += 16;
    }

    while (v25 != v26);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_189;
    }

LABEL_72:
    qword_28087C420(*algn_28087C428, "(mesh.tex_faces.empty())", 24, "for meshes without texture coords, mesh's #tex_faces must be zero", 65);
    goto LABEL_73;
  }

  if (a2[27] - a2[26] == a2[15] - a2[14])
  {
    v131 = a2[27];
    v132 = a2[26];
    goto LABEL_74;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 174, "(mesh.tex_faces.size() == mesh.faces.size())", 0x2CuLL, "for meshes with texture coords, mesh's #tex_faces must be equal to #faces", 0x49uLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v27 = qword_28087C408;
    v28 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_189;
    }

    goto LABEL_65;
  }

  if (byte_28087C438 == 1)
  {
    v27 = qword_28087C408;
    v28 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_65:
        (*v27)(*(v27 + 8), "(mesh.tex_faces.size() == mesh.faces.size())", 44, "for meshes with texture coords, mesh's #tex_faces must be equal to #faces", 73);
        v27 += 16;
      }

      while (v27 != v28);
      if (byte_28087C430)
      {
        goto LABEL_67;
      }

LABEL_189:
      abort();
    }
  }

LABEL_67:
  qword_28087C420(*algn_28087C428, "(mesh.tex_faces.size() == mesh.faces.size())", 44, "for meshes with texture coords, mesh's #tex_faces must be equal to #faces", 73);
LABEL_73:
  v131 = a2[27];
  v132 = a2[26];
LABEL_74:
  v129 = a2[14];
  v130 = a2[15];
  v30 = *a2;
  v29 = a2[1];
  v32 = a2[4];
  v31 = a2[5];
  sub_2711218C8(v147);
  *&v147[*(*&v147[16] - 24) + 32] = 8;
  if (v29 - v30 == v31 - v32)
  {
    v33 = *a2;
    if (a2[1] != *a2)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = a2[4];
        sub_271120E64(&v147[16], "v ", 2);
        v37 = *(v33 + v34);
        v38 = std::ostream::operator<<();
        sub_271120E64(v38, " ", 1);
        v39 = *(v33 + v34 + 4);
        v40 = std::ostream::operator<<();
        sub_271120E64(v40, " ", 1);
        v41 = *(v33 + v34 + 8);
        v42 = std::ostream::operator<<();
        sub_271120E64(v42, " ", 1);
        v43 = *(v36 + v34);
        v44 = std::ostream::operator<<();
        sub_271120E64(v44, " ", 1);
        v45 = *(v36 + v34 + 4);
        v46 = std::ostream::operator<<();
        sub_271120E64(v46, " ", 1);
        v47 = *(v36 + v34 + 8);
        v48 = std::ostream::operator<<();
        sub_271120E64(v48, "\n", 1);
        ++v35;
        v33 = *a2;
        v34 += 12;
      }

      while (v35 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
    }
  }

  else
  {
    v49 = *a2;
    v50 = a2[1];
    if (*a2 != v50)
    {
      do
      {
        sub_271120E64(&v147[16], "v ", 2);
        v51 = *v49;
        v52 = std::ostream::operator<<();
        sub_271120E64(v52, " ", 1);
        v53 = v49[1];
        v54 = std::ostream::operator<<();
        sub_271120E64(v54, " ", 1);
        v55 = v49[2];
        v56 = std::ostream::operator<<();
        sub_271120E64(v56, "\n", 1);
        v49 += 3;
      }

      while (v49 != v50);
    }
  }

  if ((v157 & 0x10) != 0)
  {
    v58 = v156;
    if (v156 < v152)
    {
      v156 = v152;
      v58 = v152;
    }

    v59 = v151;
    v57 = v58 - v151;
    if (v58 - v151 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_182;
    }
  }

  else
  {
    if ((v157 & 8) == 0)
    {
      v57 = 0;
      *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
      goto LABEL_92;
    }

    v59 = v149;
    v57 = *(&v150 + 1) - v149;
    if (*(&v150 + 1) - v149 > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_182:
      sub_271120DA8();
    }
  }

  if (v57 >= 0x17)
  {
    operator new();
  }

  *(&__p.__pn_.__r_.__value_.__s + 23) = v57;
  if (v57)
  {
    memmove(&__p, v59, v57);
  }

LABEL_92:
  __p.__pn_.__r_.__value_.__s.__data_[v57] = 0;
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__pn_.__r_.__value_.__l.__size_;
  }

  sub_271120E64(v134, p_p, size);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v155) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v155) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(*(&v153 + 1));
LABEL_100:
  *(&v153 + 1) = 0;
  v154 = 0;
  v155 = 0;
  sub_271129318(&v147[24]);
  *&v147[*(*&v147[16] - 24) + 32] = 8;
  v62 = a2[22];
  for (i = a2[23]; v62 != i; v62 += 2)
  {
    sub_271120E64(&v147[16], "vt ", 3);
    v64 = *v62;
    v65 = std::ostream::operator<<();
    sub_271120E64(v65, " ", 1);
    v66 = v62[1];
    v67 = std::ostream::operator<<();
    sub_271120E64(v67, "\n", 1);
  }

  if ((v157 & 0x10) != 0)
  {
    v69 = v156;
    if (v156 < v152)
    {
      v156 = v152;
      v69 = v152;
    }

    v70 = v151;
    v68 = v69 - v151;
    if (v69 - v151 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_184;
    }
  }

  else
  {
    if ((v157 & 8) == 0)
    {
      v68 = 0;
      *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
      goto LABEL_115;
    }

    v70 = v149;
    v68 = *(&v150 + 1) - v149;
    if (*(&v150 + 1) - v149 > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_184:
      sub_271120DA8();
    }
  }

  if (v68 >= 0x17)
  {
    operator new();
  }

  *(&__p.__pn_.__r_.__value_.__s + 23) = v68;
  if (v68)
  {
    memmove(&__p, v70, v68);
  }

LABEL_115:
  __p.__pn_.__r_.__value_.__s.__data_[v68] = 0;
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &__p;
  }

  else
  {
    v71 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v72 = __p.__pn_.__r_.__value_.__l.__size_;
  }

  sub_271120E64(v134, v71, v72);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v155) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  else if ((SHIBYTE(v155) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  operator delete(*(&v153 + 1));
LABEL_123:
  *(&v153 + 1) = 0;
  v154 = 0;
  v155 = 0;
  sub_271129318(&v147[24]);
  *&v147[*(*&v147[16] - 24) + 32] = 8;
  v73 = a2[9];
  for (j = a2[10]; v73 != j; v73 += 3)
  {
    sub_271120E64(&v147[16], "vn ", 3);
    v75 = *v73;
    v76 = std::ostream::operator<<();
    sub_271120E64(v76, " ", 1);
    v77 = v73[1];
    v78 = std::ostream::operator<<();
    sub_271120E64(v78, " ", 1);
    v79 = v73[2];
    v80 = std::ostream::operator<<();
    sub_271120E64(v80, "\n", 1);
  }

  if ((v157 & 0x10) != 0)
  {
    v82 = v156;
    if (v156 < v152)
    {
      v156 = v152;
      v82 = v152;
    }

    v83 = v151;
    v81 = v82 - v151;
    if (v82 - v151 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_186;
    }
  }

  else
  {
    if ((v157 & 8) == 0)
    {
      v81 = 0;
      *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
      goto LABEL_138;
    }

    v83 = v149;
    v81 = *(&v150 + 1) - v149;
    if (*(&v150 + 1) - v149 > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_186:
      sub_271120DA8();
    }
  }

  if (v81 >= 0x17)
  {
    operator new();
  }

  *(&__p.__pn_.__r_.__value_.__s + 23) = v81;
  if (v81)
  {
    memmove(&__p, v83, v81);
  }

LABEL_138:
  __p.__pn_.__r_.__value_.__s.__data_[v81] = 0;
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = &__p;
  }

  else
  {
    v84 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = __p.__pn_.__r_.__value_.__l.__size_;
  }

  sub_271120E64(v134, v84, v85);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v155) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }
  }

  else if ((SHIBYTE(v155) & 0x80000000) == 0)
  {
    goto LABEL_146;
  }

  operator delete(*(&v153 + 1));
LABEL_146:
  *(&v153 + 1) = 0;
  v154 = 0;
  v155 = 0;
  sub_271129318(&v147[24]);
  *&v147[*(*&v147[16] - 24) + 32] = 8;
  if (a2[15] != a2[14])
  {
    if (v131 - v132 == v130 - v129)
    {
      v86 = 0;
      v87 = 0;
      do
      {
        sub_271120E64(&v147[16], "f", 1);
        v88 = *(a2[14] + v86);
        v89 = *(a2[26] + v86);
        v90 = sub_271120E64(&v147[16], " ", 1);
        v91 = MEMORY[0x2743BE7F0](v90, (v88 + 1));
        v92 = sub_271120E64(v91, "/", 1);
        v93 = MEMORY[0x2743BE7F0](v92, (v89 + 1));
        v94 = sub_271120E64(v93, "/", 1);
        MEMORY[0x2743BE7F0](v94, (v88 + 1));
        v95 = *(a2[14] + v86 + 4);
        v96 = *(a2[26] + v86 + 4);
        v97 = sub_271120E64(&v147[16], " ", 1);
        v98 = MEMORY[0x2743BE7F0](v97, (v95 + 1));
        v99 = sub_271120E64(v98, "/", 1);
        v100 = MEMORY[0x2743BE7F0](v99, (v96 + 1));
        v101 = sub_271120E64(v100, "/", 1);
        MEMORY[0x2743BE7F0](v101, (v95 + 1));
        v102 = *(a2[14] + v86 + 8);
        v103 = *(a2[26] + v86 + 8);
        v104 = sub_271120E64(&v147[16], " ", 1);
        v105 = MEMORY[0x2743BE7F0](v104, (v102 + 1));
        v106 = sub_271120E64(v105, "/", 1);
        v107 = MEMORY[0x2743BE7F0](v106, (v103 + 1));
        v108 = sub_271120E64(v107, "/", 1);
        MEMORY[0x2743BE7F0](v108, (v102 + 1));
        sub_271120E64(&v147[16], "\n", 1);
        ++v87;
        v86 += 12;
      }

      while (v87 < 0xAAAAAAAAAAAAAAABLL * ((a2[15] - a2[14]) >> 2));
    }

    else
    {
      v109 = 0;
      v110 = 0;
      do
      {
        sub_271120E64(&v147[16], "f", 1);
        v111 = *(a2[14] + v109);
        v112 = sub_271120E64(&v147[16], " ", 1);
        MEMORY[0x2743BE7F0](v112, (v111 + 1));
        v113 = *(a2[14] + v109 + 4);
        v114 = sub_271120E64(&v147[16], " ", 1);
        MEMORY[0x2743BE7F0](v114, (v113 + 1));
        v115 = *(a2[14] + v109 + 8);
        v116 = sub_271120E64(&v147[16], " ", 1);
        MEMORY[0x2743BE7F0](v116, (v115 + 1));
        sub_271120E64(&v147[16], "\n", 1);
        ++v110;
        v109 += 12;
      }

      while (v110 < 0xAAAAAAAAAAAAAAABLL * ((a2[15] - a2[14]) >> 2));
    }
  }

  if ((v157 & 0x10) != 0)
  {
    v118 = v156;
    if (v156 < v152)
    {
      v156 = v152;
      v118 = v152;
    }

    v119 = v151;
    v117 = v118 - v151;
    if (v118 - v151 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_188;
    }
  }

  else
  {
    if ((v157 & 8) == 0)
    {
      v117 = 0;
      *(&__p.__pn_.__r_.__value_.__s + 23) = 0;
      goto LABEL_166;
    }

    v119 = v149;
    v117 = *(&v150 + 1) - v149;
    if (*(&v150 + 1) - v149 > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_188:
      sub_271120DA8();
    }
  }

  if (v117 >= 0x17)
  {
    operator new();
  }

  *(&__p.__pn_.__r_.__value_.__s + 23) = v117;
  if (v117)
  {
    memmove(&__p, v119, v117);
  }

LABEL_166:
  __p.__pn_.__r_.__value_.__s.__data_[v117] = 0;
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = &__p;
  }

  else
  {
    v120 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v121 = __p.__pn_.__r_.__value_.__l.__size_;
  }

  sub_271120E64(v134, v120, v121);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  v122 = *(v134 + *(*v134 - 24) + 32);
  *v147 = *MEMORY[0x277D82818];
  v123 = *(MEMORY[0x277D82818] + 72);
  *&v147[*(*v147 - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v147[16] = v123;
  *&v147[24] = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v155) < 0)
  {
    operator delete(*(&v153 + 1));
  }

  if ((v122 & 5) != 0)
  {
    v124 = 5;
  }

  else
  {
    v124 = 0;
  }

  *&v147[24] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v148);
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](&v158);
  a4 = v133;
  v125 = *(&v145 + 1);
  if (!*(&v145 + 1))
  {
LABEL_192:
    if (v124)
    {
      goto LABEL_193;
    }

LABEL_213:
    *(a4 + 120) = 1;
    return;
  }

LABEL_191:
  if (atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_192;
  }

  (v125->__on_zero_shared)(v125);
  std::__shared_weak_count::__release_weak(v125);
  if (!v124)
  {
    goto LABEL_213;
  }

LABEL_193:
  LOBYTE(v135) = 0;
  v143 = 0;
  sub_27171D1AC(v147, v124, &v135);
  *a4 = *v147;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v156 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_203;
  }

  *(a4 + 40) = 0;
  v126 = v149;
  if (v149 == 1)
  {
    *(a4 + 16) = *&v147[16];
    *(a4 + 32) = v148;
    *&v147[24] = 0;
    v148.__locale_ = 0;
    *&v147[16] = 0;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v127 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v155 & 1) == 0)
    {
      goto LABEL_196;
    }

LABEL_200:
    *v127 = v150;
    v128 = v152;
    *(v127 + 16) = v151;
    *(a4 + 72) = v128;
    *(a4 + 80) = v153;
    *(a4 + 96) = v154;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v126)
    {
      goto LABEL_203;
    }

LABEL_201:
    if (SHIBYTE(v148.__locale_) < 0)
    {
      operator delete(*&v147[16]);
    }

    goto LABEL_203;
  }

  *(a4 + 48) = 0;
  v127 = a4 + 48;
  *(a4 + 104) = 0;
  if (v155)
  {
    goto LABEL_200;
  }

LABEL_196:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (v126)
  {
    goto LABEL_201;
  }

LABEL_203:
  if (v143 == 1)
  {
    if (v142 == 1)
    {
      if (v141 < 0)
      {
        operator delete(v140);
      }

      if (v139 < 0)
      {
        operator delete(v138);
      }
    }

    if (v137 == 1 && v136 < 0)
    {
      operator delete(v135);
    }
  }
}

void sub_27171E9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27171EA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_2711DC948(&a35, MEMORY[0x277D82818]);
  MEMORY[0x2743BEF20](&a51);
  sub_2717255F4(&a29);
  _Unwind_Resume(a1);
}

void sub_27171EACC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v343 = *MEMORY[0x277D85DE8];
  v275 = a2;
  v7 = std::__fs::filesystem::path::__extension(a1);
  if (v7.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7.__size_ >= 0x17)
  {
    operator new();
  }

  BYTE7(v285) = v7.__size_;
  if (v7.__size_)
  {
    memmove(&__dst, v7.__data_, v7.__size_);
  }

  *(&__dst + v7.__size_) = 0;
  v8 = *(&__dst + 1);
  v9 = __dst;
  LODWORD(v276[0]) = v285;
  *(v276 + 3) = *(&v285 + 3);
  v10 = SBYTE7(v285);
  v251 = a3;
  if (SBYTE7(v285) < 0)
  {
    sub_271127178(__p, __dst, *(&__dst + 1));
    v12 = BYTE7(v323);
    v11 = __p[0];
    v8 = __p[1];
  }

  else
  {
    *__p = __dst;
    LODWORD(v323) = v276[0];
    *(&v323 + 3) = *(v276 + 3);
    BYTE7(v323) = BYTE7(v285);
    v11 = __dst;
    v12 = BYTE7(v285);
  }

  if ((v12 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = v11;
  }

  if ((v12 & 0x80u) == 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v273 = 0;
  v272 = 0;
  v274 = 0;
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  v259 = a5;
  if (v14 < 0x17)
  {
    if (v14)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((v14 | 7) == 0x17)
    {
      v15 = 24;
    }

    else
    {
      v15 = v14 | 7;
    }

    sub_27113107C(&v272, v15);
    do
    {
LABEL_25:
      while (1)
      {
        v16 = __tolower(*v13);
        v17 = HIBYTE(v274);
        if (SHIBYTE(v274) < 0)
        {
          break;
        }

        if (HIBYTE(v274) == 22)
        {
          goto LABEL_30;
        }

        HIBYTE(v274) = (HIBYTE(v274) + 1) & 0x7F;
        *(&v272 + v17) = v16;
        v13 = (v13 + 1);
        if (!--v14)
        {
          goto LABEL_32;
        }
      }

      v18 = (v274 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v273 == v18)
      {
        if ((v274 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_271120DA8();
        }

LABEL_30:
        operator new();
      }

      v19 = v273++;
      v20 = v272 + v19;
      *v20 = v16;
      v20[1] = 0;
      v13 = (v13 + 1);
      --v14;
    }

    while (v14);
LABEL_32:
    v12 = BYTE7(v323);
  }

  if ((v12 & 0x80) != 0)
  {
    operator delete(__p[0]);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_35:
      v21 = SHIBYTE(v274);
      if ((SHIBYTE(v274) & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v9);
  v21 = SHIBYTE(v274);
  if ((SHIBYTE(v274) & 0x8000000000000000) == 0)
  {
LABEL_36:
    if (v21 == 4)
    {
      v22 = &v272;
      goto LABEL_42;
    }

LABEL_44:
    v23 = 0;
    v24 = BYTE4(v275);
    v25 = v275;
    if (BYTE4(v275) != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_40:
  if (v273 != 4)
  {
    goto LABEL_44;
  }

  v22 = v272;
LABEL_42:
  v23 = *v22 == 1784835886;
  v24 = BYTE4(v275);
  v25 = v275;
  if (BYTE4(v275) != 1)
  {
LABEL_49:
    if (v25 == 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v24)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_45:
  if (v25)
  {
    goto LABEL_49;
  }

  v26 = 1;
  if (v24)
  {
LABEL_53:
    if (v21 < 0)
    {
      v21 = v273;
    }

    if (v21)
    {
      if (!(v26 & 1 | !v23))
      {
        LODWORD(v278[0]) = 0;
        __p[0] = v276;
        __p[1] = "cannot load ";
        *&v323 = v276;
        *(&v323 + 1) = "cannot load ";
        *&v324 = "cannot load ";
        v331 = __p;
        sub_27113F2D4(&v331);
        __p[0] = v276;
        __p[1] = &v272;
        *&v323 = v276;
        *(&v323 + 1) = &v272;
        *&v324 = &v272;
        if (LODWORD(v278[0]) != -1)
        {
          v331 = __p;
          (off_2881340D0[LODWORD(v278[0])])(&v331, v276);
          __p[0] = v276;
          __p[1] = " file with format ";
          *&v323 = v276;
          *(&v323 + 1) = " file with format ";
          *&v324 = " file with format ";
          if (LODWORD(v278[0]) != -1)
          {
            v331 = __p;
            (*(&off_2881340E8 + LODWORD(v278[0])))(&v331, v276);
            sub_271721F4C();
          }

          sub_2711308D4();
        }

        sub_2711308D4();
      }

      if (!v23 && (v26 & 1) != 0)
      {
        LODWORD(v278[0]) = 0;
        __p[0] = v276;
        __p[1] = "cannot load ";
        *&v323 = v276;
        *(&v323 + 1) = "cannot load ";
        *&v324 = "cannot load ";
        v331 = __p;
        sub_27113F2D4(&v331);
        sub_271721F4C();
      }
    }

    goto LABEL_58;
  }

LABEL_47:
  if (!v23)
  {
    LODWORD(v278[0]) = 0;
    __p[0] = v276;
    __p[1] = "could not determine mesh format from file extension of path ";
    *&v323 = v276;
    *(&v323 + 1) = "could not determine mesh format from file extension of path ";
    *&v324 = "could not determine mesh format from file extension of path ";
    *&v335 = __p;
    sub_2714EE518(&v335);
    operator new();
  }

  v25 = 0;
  LODWORD(v275) = 0;
  BYTE4(v275) = 1;
LABEL_58:
  (*(*a4 + 368))(&v269);
  if (!v270)
  {
    if (*(a1 + 23) < 0)
    {
      sub_271127178(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      *&v323 = *(a1 + 16);
    }

    if (SBYTE7(v323) < 0)
    {
      sub_271127178(v260, __p[0], __p[1]);
    }

    else
    {
      *v260 = *__p;
      v261 = v323;
    }

    v262 = 1;
    LOBYTE(v263) = 0;
    v267 = 0;
    v268 = 1;
    sub_27171D1AC(&__dst, 1u, v260);
    *a5 = __dst;
    *(a5 + 16) = 0;
    *(a5 + 112) = 0;
    if (v292 == 1)
    {
      *(a5 + 40) = 0;
      v229 = BYTE8(v286);
      if (BYTE8(v286) == 1)
      {
        *(a5 + 16) = v285;
        *(a5 + 32) = v286;
        *&v286 = 0;
        v285 = 0uLL;
        *(a5 + 40) = 1;
        *(a5 + 48) = 0;
        v230 = a5 + 48;
        *(a5 + 104) = 0;
        if ((v291 & 1) == 0)
        {
          goto LABEL_351;
        }
      }

      else
      {
        *(a5 + 48) = 0;
        v230 = a5 + 48;
        *(a5 + 104) = 0;
        if ((v291 & 1) == 0)
        {
LABEL_351:
          *(a5 + 112) = 1;
          *(a5 + 384) = 0;
          if (!v229)
          {
            goto LABEL_358;
          }

LABEL_356:
          if (SBYTE7(v286) < 0)
          {
            operator delete(v285);
          }

          goto LABEL_358;
        }
      }

      v231 = v289[0];
      *(v230 + 16) = v288;
      *v230 = v287;
      v287 = 0uLL;
      *(a5 + 72) = v231;
      *(a5 + 80) = *&v289[1];
      *(a5 + 96) = v290;
      v288 = 0;
      *&v289[1] = 0uLL;
      v290 = 0;
      *(a5 + 104) = 1;
      *(a5 + 112) = 1;
      *(a5 + 384) = 0;
      if (v229)
      {
        goto LABEL_356;
      }
    }

    else
    {
      *(a5 + 384) = 0;
    }

LABEL_358:
    if (v268 == 1)
    {
      if (v267 == 1)
      {
        if (v266 < 0)
        {
          operator delete(v265);
        }

        if (v264 < 0)
        {
          operator delete(v263);
        }
      }

      if (v262 == 1 && SHIBYTE(v261) < 0)
      {
        operator delete(v260[0]);
      }
    }

    if (SBYTE7(v323) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_369;
  }

  v27 = (*(*v270 + 16))(v270);
  sub_27171ABA4(&__dst, v251);
  *(&__dst + 1) = __dst;
  *(&v286 + 1) = v286;
  v289[1] = v289[0];
  *(&v292 + 1) = v292;
  *(&v295 + 1) = v295;
  __src[1] = __src[0];
  *(&v301 + 1) = v301;
  *(&v304 + 1) = v304;
  *(&v308 + 1) = v308;
  *(&v312 + 1) = v312;
  if (v315[28] == 1)
  {
    v315[28] = 0;
  }

  v249 = 0;
  v28 = 0;
  v253 = 0;
  v250 = 0;
  v276[0] = 0;
  v276[1] = 0;
  v277 = 0;
  v278[0] = v290;
  v29 = MEMORY[0x277D82680];
  v335 = 0uLL;
  v336 = 0;
  v244 = vdupq_n_s64(1uLL);
  v245 = *(MEMORY[0x277D82820] + 24);
  v246 = *MEMORY[0x277D82820];
  v247 = *(MEMORY[0x277D82820] + 16);
  v248 = *(MEMORY[0x277D82820] + 8);
  while (1)
  {
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v30 = std::locale::use_facet(__p, v29);
    v31 = (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(__p);
    v32 = sub_271123D0C(v27, &v335, v31);
    if ((*(v32 + *(*v32 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (SHIBYTE(v336) < 0)
    {
      if (*(&v335 + 1) >= 2uLL)
      {
        v33 = v335;
        if (*v335 != 35)
        {
          goto LABEL_69;
        }
      }
    }

    else if (SHIBYTE(v336) >= 2 && v335 != 35)
    {
      v33 = &v335;
LABEL_69:
      switch(*v33)
      {
        case 0x2076:
          v37 = &v335;
          if (v336 < 0)
          {
            v37 = v335;
          }

          v38 = sscanf(v37 + 2, "%f %f %f %f %f %f", &v331, &v331 + 4, &v332, &v333, &v334, &v334 + 4);
          if (v25 || v38 != 6)
          {
            if (v38 != 3 && v38 != 6)
            {
              sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 292, "read_count == 3 || read_count == 6", 0x22uLL, "Wrong v fields for reading position", 0x23uLL, sub_271852CA8);
              v45 = v25;
              if (byte_28087C430 == 1)
              {
                if (byte_28087C438 != 1 || (v46 = qword_28087C408, v47 = qword_28087C410, qword_28087C408 == qword_28087C410))
                {
LABEL_137:
                  qword_28087C420(*algn_28087C428, "read_count == 3 || read_count == 6", 34, "Wrong v fields for reading position", 35);
                  v25 = v45;
                  goto LABEL_138;
                }
              }

              else
              {
                v46 = qword_28087C408;
                v47 = qword_28087C410;
                if (qword_28087C408 == qword_28087C410)
                {
                  goto LABEL_393;
                }
              }

              do
              {
                (*v46)(*(v46 + 8), "read_count == 3 || read_count == 6", 34, "Wrong v fields for reading position", 35);
                v46 += 16;
              }

              while (v46 != v47);
              if ((byte_28087C430 & 1) == 0)
              {
LABEL_393:
                abort();
              }

              goto LABEL_137;
            }

LABEL_138:
            v66 = *(&__dst + 1);
            if (*(&__dst + 1) >= v285)
            {
              *(&__dst + 1) = sub_271721A84(&__dst, &v331, &v331 + 1, &v332);
            }

            else
            {
              **(&__dst + 1) = v331;
              *(v66 + 8) = v332;
              *(&__dst + 1) = v66 + 12;
            }
          }

          else
          {
            v39 = *(&__dst + 1);
            if (*(&__dst + 1) >= v285)
            {
              v40 = sub_271721A84(&__dst, &v331, &v331 + 1, &v332);
            }

            else
            {
              **(&__dst + 1) = v331;
              *(v39 + 8) = v332;
              v40 = (v39 + 12);
            }

            *(&__dst + 1) = v40;
            v51 = *(&v286 + 1);
            if (*(&v286 + 1) >= v287)
            {
              *(&v286 + 1) = sub_271721A84(&v286, &v333, &v334, &v334 + 1);
            }

            else
            {
              **(&v286 + 1) = v333;
              *(v51 + 4) = v334;
              *(&v286 + 1) = v51 + 12;
            }
          }

          break;
        case 0x6E76:
          v41 = &v335;
          if (v336 < 0)
          {
            v41 = v335;
          }

          if (sscanf(v41 + 3, "%f %f %f", &v331, &v331 + 4, &v332) != 3)
          {
            sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 298, "read_count == 3", 0xFuLL, "Wrong vn fields for reading position", 0x24uLL, sub_271852CA8);
            v42 = v25;
            if (byte_28087C430 == 1)
            {
              if (byte_28087C438 != 1 || (v43 = qword_28087C408, v44 = qword_28087C410, qword_28087C408 == qword_28087C410))
              {
LABEL_108:
                qword_28087C420(*algn_28087C428, "read_count == 3", 15, "Wrong vn fields for reading position", 36);
                v25 = v42;
                goto LABEL_109;
              }
            }

            else
            {
              v43 = qword_28087C408;
              v44 = qword_28087C410;
              if (qword_28087C408 == qword_28087C410)
              {
                goto LABEL_393;
              }
            }

            do
            {
              (*v43)(*(v43 + 8), "read_count == 3", 15, "Wrong vn fields for reading position", 36);
              v43 += 16;
            }

            while (v43 != v44);
            if ((byte_28087C430 & 1) == 0)
            {
              goto LABEL_393;
            }

            goto LABEL_108;
          }

LABEL_109:
          v52 = v276[1];
          if (v276[1] >= v277)
          {
            v276[1] = sub_271721A84(v276, &v331, &v331 + 1, &v332);
          }

          else
          {
            *v276[1] = v331;
            v52[2] = v332;
            v276[1] = v52 + 3;
          }

          break;
        case 0x7476:
          v239 = v25;
          v48 = &v335;
          if (v336 < 0)
          {
            v48 = v335;
          }

          if (sscanf(v48 + 3, "%f %f", &v331, &v331 + 4) != 2)
          {
            sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshIO.cpp", 302, "read_count == 2", 0xFuLL, "Wrong vt fields for reading position", 0x24uLL, sub_271852CA8);
            if (byte_28087C430 == 1)
            {
              if (byte_28087C438 != 1 || (v49 = qword_28087C408, v50 = qword_28087C410, qword_28087C408 == qword_28087C410))
              {
LABEL_115:
                qword_28087C420(*algn_28087C428, "read_count == 2", 15, "Wrong vt fields for reading position", 36);
                goto LABEL_116;
              }
            }

            else
            {
              v49 = qword_28087C408;
              v50 = qword_28087C410;
              if (qword_28087C408 == qword_28087C410)
              {
                goto LABEL_393;
              }
            }

            do
            {
              (*v49)(*(v49 + 8), "read_count == 2", 15, "Wrong vt fields for reading position", 36);
              v49 += 16;
            }

            while (v49 != v50);
            if ((byte_28087C430 & 1) == 0)
            {
              goto LABEL_393;
            }

            goto LABEL_115;
          }

LABEL_116:
          v53 = __src[1];
          if (__src[1] >= v299)
          {
            v55 = (__src[1] - __src[0]) >> 3;
            if ((v55 + 1) >> 61)
            {
              sub_271135560();
            }

            v56 = (v299 - __src[0]) >> 2;
            if (v56 <= v55 + 1)
            {
              v56 = v55 + 1;
            }

            v57 = 0x1FFFFFFFFFFFFFFFLL;
            if ((v299 - __src[0]) < 0x7FFFFFFFFFFFFFF8)
            {
              v57 = v56;
            }

            if (v57)
            {
              LODWORD(v320[0]) = v57;
              if (HIDWORD(v300) == -1)
              {
                sub_2711308D4();
              }

              __p[0] = v320;
              v58 = (off_288134060[HIDWORD(v300)])(__p, &v300);
              v60 = v28;
            }

            else
            {
              v60 = v28;
              v58 = 0;
              v59 = 0;
            }

            v68 = (v58 + 8 * v59);
            v69 = (v58 + 8 * v55);
            *v69 = v331;
            v54 = v69 + 1;
            v70 = (v58 + 8 * v55 - (__src[1] - __src[0]));
            memcpy(v70, __src[0], __src[1] - __src[0]);
            v71 = __src[0];
            v72 = v299;
            __src[0] = v70;
            __src[1] = v54;
            v299 = v68;
            if (v71)
            {
              __p[0] = v71;
              LODWORD(__p[1]) = (v72 - v71) >> 3;
              if (HIDWORD(v300) == -1)
              {
                sub_2711308D4();
              }

              v28 = v60;
              v320[0] = __p;
              (off_288134030[HIDWORD(v300)])(v320, &v300);
            }

            else
            {
              v28 = v60;
            }
          }

          else
          {
            *__src[1] = v331;
            v54 = v53 + 8;
          }

          __src[1] = v54;
          v25 = v239;
          break;
        case 0x2066:
          v330[6] = 0;
          v34 = MEMORY[0x277D82898] + 64;
          v330[0] = MEMORY[0x277D82898] + 64;
          __p[0] = v248;
          *(__p + *(v248 - 3)) = v247;
          __p[1] = 0;
          v35 = (__p + *(__p[0] - 3));
          std::ios_base::init(v35, &v323);
          v36 = (MEMORY[0x277D82898] + 24);
          v35[1].__vftable = 0;
          v35[1].__fmtflags_ = -1;
          __p[0] = v36;
          v330[0] = v34;
          v236 = MEMORY[0x277D82868] + 16;
          *&v323 = MEMORY[0x277D82868] + 16;
          MEMORY[0x2743BED80](&v323 + 8);
          v325 = 0u;
          v326 = 0u;
          v324 = 0u;
          v235 = MEMORY[0x277D82878] + 16;
          *&v323 = MEMORY[0x277D82878] + 16;
          *v327 = 0u;
          v328 = 0u;
          v329 = 8;
          if (SHIBYTE(v336) < 0)
          {
            sub_271128928(v327, v335, *(&v335 + 1));
          }

          else
          {
            *v327 = v335;
            *&v328 = v336;
          }

          sub_271129318(&v323);
          v320[1] = 0;
          v320[0] = 0;
          v321 = 0;
          memset(&v319, 0, sizeof(v319));
          v61 = sub_2714A56E0(__p, v320);
          sub_2714A56E0(v61, &v319);
          size = SHIBYTE(v319.__r_.__value_.__r.__words[2]);
          v63 = v319.__r_.__value_.__r.__words[0];
          if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v319;
          }

          if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v319.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_256;
          }

          if (size >= 8)
          {
            if (size < 0x20)
            {
              v64 = 0;
              v67 = 0;
LABEL_153:
              v65 = (v63 + (size & 0xFFFFFFFFFFFFFFF8));
              v122 = 0uLL;
              v123 = v64;
              v124 = (v63 + v67);
              v125 = v67 - (size & 0xFFFFFFFFFFFFFFF8);
              v126 = 0uLL;
              v127 = 0uLL;
              do
              {
                v128 = *v124++;
                v129 = vmovl_u8(vceq_s8(v128, 0x2F2F2F2F2F2F2F2FLL));
                v130 = vmovl_u16(*v129.i8);
                v131.i64[0] = v130.u32[0];
                v131.i64[1] = v130.u32[1];
                v132 = vandq_s8(v131, v244);
                v131.i64[0] = v130.u32[2];
                v131.i64[1] = v130.u32[3];
                v133 = vandq_s8(v131, v244);
                v134 = vmovl_high_u16(v129);
                v131.i64[0] = v134.u32[0];
                v131.i64[1] = v134.u32[1];
                v135 = vandq_s8(v131, v244);
                v131.i64[0] = v134.u32[2];
                v131.i64[1] = v134.u32[3];
                v127 = vaddq_s64(v127, vandq_s8(v131, v244));
                v126 = vaddq_s64(v126, v135);
                v122 = vaddq_s64(v122, v133);
                v123 = vaddq_s64(v123, v132);
                v125 += 8;
              }

              while (v125);
              v64 = vaddvq_s64(vaddq_s64(vaddq_s64(v123, v126), vaddq_s64(v122, v127)));
              if (size == (size & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_162;
              }

              goto LABEL_158;
            }

            v73 = 0uLL;
            v67 = size & 0xFFFFFFFFFFFFFFE0;
            v74 = 0uLL;
            v75 = &v63->__r_.__value_.__r.__words[2];
            v76 = 0uLL;
            v77 = size & 0xFFFFFFFFFFFFFFE0;
            v78 = 0uLL;
            v79 = 0uLL;
            v80 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            v83 = 0uLL;
            v84 = 0uLL;
            v85 = 0uLL;
            v86 = 0uLL;
            v87 = 0uLL;
            v88 = 0uLL;
            v89 = 0uLL;
            v90 = 0uLL;
            do
            {
              v91.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
              v91.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
              v92 = vceqq_s8(v75[-1], v91);
              v93 = vmovl_u8(*v92.i8);
              v94 = vmovl_u16(*v93.i8);
              v95.i64[0] = v94.u32[0];
              v95.i64[1] = v94.u32[1];
              v96 = vdupq_n_s64(1uLL);
              v255 = vandq_s8(v95, v96);
              v95.i64[0] = v94.u32[2];
              v95.i64[1] = v94.u32[3];
              v97 = vandq_s8(v95, v96);
              v98 = vmovl_high_u16(v93);
              v95.i64[0] = v98.u32[0];
              v95.i64[1] = v98.u32[1];
              v99 = vandq_s8(v95, v96);
              v100 = vmovl_high_u8(v92);
              v101 = vmovl_u16(*v100.i8);
              v95.i64[0] = v101.u32[0];
              v95.i64[1] = v101.u32[1];
              v102 = vandq_s8(v95, v96);
              v95.i64[0] = v98.u32[2];
              v95.i64[1] = v98.u32[3];
              v103 = vandq_s8(v95, v96);
              v95.i64[0] = v101.u32[2];
              v95.i64[1] = v101.u32[3];
              v104 = vandq_s8(v95, v96);
              v105 = vmovl_high_u16(v100);
              v95.i64[0] = v105.u32[0];
              v95.i64[1] = v105.u32[1];
              v106 = vandq_s8(v95, v96);
              v95.i64[0] = v105.u32[2];
              v95.i64[1] = v105.u32[3];
              v107 = vandq_s8(v95, v96);
              v108 = vceqq_s8(*v75, v91);
              v109 = vmovl_u8(*v108.i8);
              v110 = vmovl_u16(*v109.i8);
              v95.i64[0] = v110.u32[0];
              v95.i64[1] = v110.u32[1];
              v111 = vandq_s8(v95, v96);
              v95.i64[0] = v110.u32[2];
              v95.i64[1] = v110.u32[3];
              v112 = vandq_s8(v95, v96);
              v113 = vmovl_high_u16(v109);
              v95.i64[0] = v113.u32[0];
              v95.i64[1] = v113.u32[1];
              v114 = vandq_s8(v95, v96);
              v115 = vmovl_high_u8(v108);
              v116 = vmovl_u16(*v115.i8);
              v95.i64[0] = v116.u32[0];
              v95.i64[1] = v116.u32[1];
              v117 = vandq_s8(v95, v96);
              v95.i64[0] = v113.u32[2];
              v95.i64[1] = v113.u32[3];
              v118 = vandq_s8(v95, v96);
              v95.i64[0] = v116.u32[2];
              v95.i64[1] = v116.u32[3];
              v119 = vandq_s8(v95, v96);
              v120 = vmovl_high_u16(v115);
              v95.i64[0] = v120.u32[0];
              v95.i64[1] = v120.u32[1];
              v121 = vandq_s8(v95, v96);
              v95.i64[0] = v120.u32[2];
              v95.i64[1] = v120.u32[3];
              v82 = vaddq_s64(v82, v107);
              v81 = vaddq_s64(v81, v106);
              v80 = vaddq_s64(v80, v104);
              v78 = vaddq_s64(v78, v103);
              v79 = vaddq_s64(v79, v102);
              v76 = vaddq_s64(v76, v99);
              v74 = vaddq_s64(v74, v97);
              v73 = vaddq_s64(v73, v255);
              v90 = vaddq_s64(v90, vandq_s8(v95, v96));
              v89 = vaddq_s64(v89, v121);
              v88 = vaddq_s64(v88, v119);
              v86 = vaddq_s64(v86, v118);
              v87 = vaddq_s64(v87, v117);
              v85 = vaddq_s64(v85, v114);
              v84 = vaddq_s64(v84, v112);
              v83 = vaddq_s64(v83, v111);
              v75 += 2;
              v77 -= 32;
            }

            while (v77);
            v64 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v83, v73), vaddq_s64(v87, v79)), vaddq_s64(vaddq_s64(v85, v76), vaddq_s64(v89, v81))), vaddq_s64(vaddq_s64(vaddq_s64(v84, v74), vaddq_s64(v88, v80)), vaddq_s64(vaddq_s64(v86, v78), vaddq_s64(v90, v82)))));
            if (size == v67)
            {
              goto LABEL_162;
            }

            if ((size & 0x18) != 0)
            {
              goto LABEL_153;
            }

            v65 = (v63 + v67);
          }

          else
          {
            v64 = 0;
            v65 = v63;
          }

LABEL_158:
          v136 = v63 + size;
          do
          {
            v137 = v65->__r_.__value_.__s.__data_[0];
            v65 = (v65 + 1);
            if (v137 == 47)
            {
              ++v64;
            }
          }

          while (v65 != v136);
LABEL_162:
          if (v64)
          {
            if (v64 == 2)
            {
              v237 = 0;
              v240 = v25;
              do
              {
                if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v138 = &v319;
                }

                else
                {
                  v138 = v319.__r_.__value_.__r.__words[0];
                }

                if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v139 = SHIBYTE(v319.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v139 = v319.__r_.__value_.__l.__size_;
                }

                v140 = v138 + v139;
                if (v139 >= 1)
                {
                  v141 = v139;
                  v142 = v138;
                  do
                  {
                    v143 = memchr(v142, 47, v141);
                    if (!v143)
                    {
                      break;
                    }

                    if (*v143 == 47)
                    {
                      goto LABEL_177;
                    }

                    v142 = (v143 + 1);
                    v141 = v140 - v142;
                  }

                  while (v140 - v142 > 0);
                }

                v143 = v138 + v139;
LABEL_177:
                if (v143 == v140)
                {
                  v144 = -1;
                }

                else
                {
                  v144 = v143 - v138;
                }

                v238 = v144 + 1;
                v145 = v139 - (v144 + 1);
                if (v139 >= v144 + 1)
                {
                  if (v145 >= 1)
                  {
                    v147 = v138 + v238;
                    do
                    {
                      v148 = memchr(v147, 47, v145);
                      if (!v148)
                      {
                        break;
                      }

                      if (*v148 == 47)
                      {
                        goto LABEL_188;
                      }

                      v147 = v148 + 1;
                      v145 = v140 - v147;
                    }

                    while (v140 - v147 > 0);
                  }

                  v148 = v138 + v139;
LABEL_188:
                  v146 = v148 - v138;
                  if (v148 == v140)
                  {
                    v146 = -1;
                  }
                }

                else
                {
                  v146 = -1;
                }

                v242 = v146;
                if (v139 >= v144)
                {
                  v149 = v144;
                }

                else
                {
                  v149 = v139;
                }

                v256 = v28;
                if (v149 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_271120DA8();
                }

                if (v149 >= 0x17)
                {
                  operator new();
                }

                *(&__str.__r_.__value_.__s + 23) = v149;
                if (v149)
                {
                  memmove(&__str, v138, v149);
                }

                __str.__r_.__value_.__s.__data_[v149] = 0;
                v150 = std::stoull(&__str, 0, 10);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                v151 = v242 + 1;
                v152 = SHIBYTE(v319.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v319.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v152 = v319.__r_.__value_.__l.__size_;
                  if (v319.__r_.__value_.__l.__size_ < v151)
                  {
LABEL_391:
                    sub_271127FEC();
                  }

                  v153 = v319.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if (v151 > SHIBYTE(v319.__r_.__value_.__r.__words[2]))
                  {
                    goto LABEL_391;
                  }

                  v153 = &v319;
                }

                v154 = v152 - v151;
                if (v152 - v151 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_271120DA8();
                }

                if (v154 >= 0x17)
                {
                  operator new();
                }

                *(&__str.__r_.__value_.__s + 23) = v152 - v151;
                if (v152 != v151)
                {
                  memmove(&__str, v153 + v151, v154);
                }

                __str.__r_.__value_.__s.__data_[v154] = 0;
                v155 = std::stoull(&__str, 0, 10);
                v28 = v256;
                v241 = v155;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                  v155 = v241;
                }

                v156 = v242 - v144;
                if (v242 - v144 < 2)
                {
                  v159 = 0;
                  v25 = v240;
                }

                else
                {
                  v157 = SHIBYTE(v319.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(v319.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v157 = v319.__r_.__value_.__l.__size_;
                    if (v319.__r_.__value_.__l.__size_ < v238)
                    {
LABEL_394:
                      sub_271127FEC();
                    }

                    v158 = v319.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    if (v238 > SHIBYTE(v319.__r_.__value_.__r.__words[2]))
                    {
                      goto LABEL_394;
                    }

                    v158 = &v319;
                  }

                  v160 = v156 - 1;
                  v161 = v157 - v238;
                  if (v161 >= v160)
                  {
                    v162 = v160;
                  }

                  else
                  {
                    v162 = v161;
                  }

                  if (v162 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_271120DA8();
                  }

                  if (v162 >= 0x17)
                  {
                    operator new();
                  }

                  *(&__str.__r_.__value_.__s + 23) = v162;
                  if (v162)
                  {
                    memmove(&__str, v158 + v238, v162);
                  }

                  v25 = v240;
                  __str.__r_.__value_.__s.__data_[v162] = 0;
                  v159 = std::stoull(&__str, 0, 10);
                  v155 = v241;
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v163 = v159;
                    operator delete(__str.__r_.__value_.__l.__data_);
                    v159 = v163;
                    v155 = v241;
                  }
                }

                if (HIDWORD(v150) || HIDWORD(v155) || HIDWORD(v159))
                {
                  v183 = 0;
                  v234 = 2;
                  goto LABEL_267;
                }

                if (v150 != v155)
                {
                  v164 = (v250 - v256) >> 2;
                  v165 = v249;
                  v243 = v159;
                  if (v150 <= v164)
                  {
                    v166 = v250;
                  }

                  else
                  {
                    v166 = v250;
                    do
                    {
                      while (v166 < v165)
                      {
                        *v166 = v164;
                        v166 += 4;
                        v164 = (v164 + 1);
                        if (v150 <= v164)
                        {
                          goto LABEL_252;
                        }
                      }

                      v167 = v166 - v28;
                      v168 = v28;
                      v169 = (v166 - v28) >> 2;
                      v170 = v169 + 1;
                      v257 = v168;
                      if ((v169 + 1) >> 62)
                      {
                        sub_2711EB2F8();
                      }

                      v171 = v165 - v168;
                      v172 = (v165 - v168) >> 1;
                      if (v172 > v170)
                      {
                        v170 = v172;
                      }

                      if (v171 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v173 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v173 = v170;
                      }

                      if (v173)
                      {
                        if (!(v173 >> 62))
                        {
                          operator new();
                        }

                        sub_2711270EC();
                      }

                      v165 = 0;
                      *(4 * v169) = v164;
                      v174 = 4 * v169 + 4;
                      memcpy(0, v257, v167);
                      v28 = 0;
                      v166 = v174;
                      v164 = (v164 + 1);
                    }

                    while (v150 > v164);
                  }

LABEL_252:
                  v249 = v165;
                  v250 = v166;
                  *&v28[4 * v150 - 4] = v241 - 1;
                  v253 = 1;
                  v25 = v240;
                  v159 = v243;
                }

                v175 = v237;
                *&v340[2 * v237] = v150;
                *(&v337 + v237) = v159;
                sub_2714A56E0(__p, &v319);
                ++v237;
              }

              while (v175 != 2);
              LODWORD(__str.__r_.__value_.__l.__data_) = v340[0] - 1;
              v176 = v341 - 1;
              v317 = v341 - 1;
              v177 = v342 - 1;
              v316 = v342 - 1;
              v178 = *(&v292 + 1);
              if (*(&v292 + 1) >= v293)
              {
                v179 = sub_271721C10(&v292, &__str, &v317, &v316);
              }

              else
              {
                **(&v292 + 1) = v340[0] - 1;
                v178[1] = v176;
                v179 = v178 + 3;
                v178[2] = v177;
              }

              *(&v292 + 1) = v179;
              if (v337 != v338)
              {
                LODWORD(__str.__r_.__value_.__l.__data_) = v337 - 1;
                v187 = v338 - 1;
                v317 = v338 - 1;
                v188 = v339 - 1;
                v316 = v339 - 1;
                v189 = *(&v301 + 1);
                if (*(&v301 + 1) >= v302)
                {
                  v190 = sub_271721C10(&v301, &__str, &v317, &v316);
                }

                else
                {
                  **(&v301 + 1) = v337 - 1;
                  v189[1] = v187;
                  v190 = v189 + 3;
                  v189[2] = v188;
                }

                *(&v301 + 1) = v190;
              }

              goto LABEL_265;
            }

            v183 = 0;
            v234 = 3;
            goto LABEL_267;
          }

LABEL_256:
          v180 = std::stoull(&v319, 0, 10);
          sub_2714A56E0(__p, &v319);
          v181 = std::stoull(&v319, 0, 10);
          sub_2714A56E0(__p, &v319);
          v182 = std::stoull(&v319, 0, 10);
          v183 = 0;
          if (!HIDWORD(v180) && !HIDWORD(v181) && !HIDWORD(v182))
          {
            v340[0] = v180 - 1;
            LODWORD(v337) = v181 - 1;
            v184 = v182 - 1;
            LODWORD(__str.__r_.__value_.__l.__data_) = v182 - 1;
            v185 = *(&v292 + 1);
            if (*(&v292 + 1) >= v293)
            {
              v186 = sub_271721C10(&v292, v340, &v337, &__str);
            }

            else
            {
              **(&v292 + 1) = v180 - 1;
              v185[1] = v181 - 1;
              v186 = v185 + 3;
              v185[2] = v184;
            }

            *(&v292 + 1) = v186;
LABEL_265:
            v183 = 1;
            goto LABEL_267;
          }

          v234 = 2;
LABEL_267:
          if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v319.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v321) < 0)
          {
            operator delete(v320[0]);
          }

          __p[0] = v246;
          *(__p + *(v246 - 3)) = v245;
          *&v323 = v235;
          if (SBYTE7(v328) < 0)
          {
            operator delete(v327[0]);
          }

          *&v323 = v236;
          std::locale::~locale(&v323 + 1);
          std::istream::~istream();
          MEMORY[0x2743BEF20](v330);
          if ((v183 & 1) == 0)
          {
            v213 = v259;
            v214 = v234;
            if (SHIBYTE(v336) < 0)
            {
LABEL_314:
              operator delete(v335);
              goto LABEL_315;
            }

            goto LABEL_315;
          }

          break;
      }
    }
  }

  v258 = v28;
  if (v253)
  {
    if (*(&__dst + 1) != __dst)
    {
      v191 = 0;
      v192 = 0xAAAAAAAAAAAAAAABLL * ((*(&__dst + 1) - __dst) >> 2);
      v193 = (v250 - v28) >> 2;
      while (1)
      {
        v196 = v191 >= v193 ? v191 : *&v258[4 * v191];
        if (0xAAAAAAAAAAAAAAABLL * ((v276[1] - v276[0]) >> 2) <= v196)
        {
          break;
        }

        v197 = v276[0] + 12 * v196;
        v198 = v289[1];
        if (v289[1] < v289[2])
        {
          v194 = *v197;
          *(v289[1] + 2) = *(v197 + 2);
          *v198 = v194;
          v195 = v198 + 12;
        }

        else
        {
          v199 = 0xAAAAAAAAAAAAAAABLL * ((v289[1] - v289[0]) >> 2);
          v200 = v199 + 1;
          if (v199 + 1 > 0x1555555555555555)
          {
            sub_271135560();
          }

          if (0x5555555555555556 * ((v289[2] - v289[0]) >> 2) > v200)
          {
            v200 = 0x5555555555555556 * ((v289[2] - v289[0]) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v289[2] - v289[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v201 = 0x1555555555555555;
          }

          else
          {
            v201 = v200;
          }

          if (v201)
          {
            LODWORD(v331) = v201;
            if (HIDWORD(v290) == -1)
            {
              sub_2711308D4();
            }

            __p[0] = &v331;
            v202 = (off_288134040[HIDWORD(v290)])(__p, &v290);
          }

          else
          {
            v202 = 0;
            v203 = 0;
          }

          v204 = v202 + 12 * v199;
          v205 = (v202 + 12 * v203);
          v206 = *v197;
          *(v204 + 8) = *(v197 + 2);
          *v204 = v206;
          v195 = (v204 + 12);
          v207 = (v204 - (v289[1] - v289[0]));
          memcpy(v207, v289[0], v289[1] - v289[0]);
          v208 = v289[0];
          v209 = v289[2];
          v289[0] = v207;
          v289[1] = v195;
          v289[2] = v205;
          if (v208)
          {
            __p[0] = v208;
            LODWORD(__p[1]) = -1431655765 * ((v209 - v208) >> 2);
            if (HIDWORD(v290) == -1)
            {
              sub_2711308D4();
            }

            v331 = __p;
            (off_288134050[HIDWORD(v290)])(&v331, &v290);
          }
        }

        v289[1] = v195;
        if (v192 == ++v191)
        {
          goto LABEL_309;
        }
      }

      v214 = 3;
      v213 = v259;
      if (SHIBYTE(v336) < 0)
      {
        goto LABEL_314;
      }

      goto LABEL_315;
    }
  }

  else
  {
    v210 = *v276;
    *v276 = *v289;
    *v289 = v210;
    v211 = v277;
    v212 = v278[0];
    v277 = v289[2];
    v278[0] = v290;
    v289[2] = v211;
    v290 = v212;
  }

LABEL_309:
  if (v286 != *(&v286 + 1))
  {
    LODWORD(v288) = 1;
  }

  v213 = v259;
  if (v289[0] != v289[1])
  {
    v291 = 1;
  }

  v214 = ~(2 * *(v27 + *(*v27 - 24) + 32)) & 4;
  if (SHIBYTE(v336) < 0)
  {
    goto LABEL_314;
  }

LABEL_315:
  if (v276[0])
  {
    v276[1] = v276[0];
    __p[0] = v276[0];
    LODWORD(__p[1]) = -1431655765 * ((v277 - v276[0]) >> 2);
    if (HIDWORD(v278[0]) == -1)
    {
      sub_2711308D4();
    }

    *&v335 = __p;
    (off_288134050[HIDWORD(v278[0])])(&v335, v278);
  }

  if (v214)
  {
    LOBYTE(v276[0]) = 0;
    v283 = 0;
    sub_27171D1AC(__p, v214, v276);
    *v213 = *__p;
    *(v213 + 16) = 0;
    *(v213 + 112) = 0;
    if (v329 == 1)
    {
      *(v213 + 40) = 0;
      v215 = BYTE8(v324);
      if (BYTE8(v324) == 1)
      {
        *(v213 + 16) = v323;
        *(v213 + 32) = v324;
        *&v324 = 0;
        v323 = 0uLL;
        *(v213 + 40) = 1;
        *(v213 + 48) = 0;
        v216 = v213 + 48;
        *(v213 + 104) = 0;
        if ((BYTE8(v328) & 1) == 0)
        {
          goto LABEL_322;
        }

LABEL_330:
        *v216 = v325;
        v228 = *(&v326 + 1);
        *(v216 + 16) = v326;
        *(v213 + 72) = v228;
        *(v213 + 80) = *v327;
        *(v213 + 96) = v328;
        *(v213 + 104) = 1;
        *(v213 + 112) = 1;
        *(v213 + 384) = 0;
        if (v215)
        {
          goto LABEL_331;
        }
      }

      else
      {
        *(v213 + 48) = 0;
        v216 = v213 + 48;
        *(v213 + 104) = 0;
        if (BYTE8(v328))
        {
          goto LABEL_330;
        }

LABEL_322:
        *(v213 + 112) = 1;
        *(v213 + 384) = 0;
        if (v215)
        {
LABEL_331:
          if (SBYTE7(v324) < 0)
          {
            operator delete(v323);
          }
        }
      }
    }

    else
    {
      *(v213 + 384) = 0;
    }

    if (v283 == 1)
    {
      if (v282 == 1)
      {
        if (v281 < 0)
        {
          operator delete(v280);
        }

        if (v279 < 0)
        {
          operator delete(v278[1]);
        }
      }

      if (LOBYTE(v278[0]) == 1 && SHIBYTE(v277) < 0)
      {
        operator delete(v276[0]);
      }
    }
  }

  else
  {
    *v213 = __dst;
    v217 = *(&v285 + 1);
    *(v213 + 16) = v285;
    *(v213 + 24) = v217;
    __dst = 0uLL;
    *&v285 = 0;
    *(v213 + 32) = v286;
    v218 = *(&v287 + 1);
    *(v213 + 48) = v287;
    *(v213 + 56) = v218;
    *&v287 = 0;
    v286 = 0uLL;
    *(v213 + 64) = v288;
    *(v213 + 72) = *v289;
    v219 = v290;
    *(v213 + 88) = v289[2];
    *(v213 + 96) = v219;
    memset(v289, 0, sizeof(v289));
    *(v213 + 104) = v291;
    *(v213 + 112) = v292;
    v220 = v294;
    *(v213 + 128) = v293;
    *(v213 + 136) = v220;
    v292 = 0uLL;
    v293 = 0;
    *(v213 + 144) = v295;
    v221 = v297;
    *(v213 + 160) = v296;
    *(v213 + 168) = v221;
    v295 = 0uLL;
    v296 = 0;
    *(v213 + 176) = *__src;
    v222 = v300;
    *(v213 + 192) = v299;
    *(v213 + 200) = v222;
    __src[0] = 0;
    __src[1] = 0;
    v299 = 0;
    *(v213 + 208) = v301;
    v223 = v303;
    *(v213 + 224) = v302;
    *(v213 + 232) = v223;
    v301 = 0uLL;
    v302 = 0;
    *(v213 + 240) = v304;
    v224 = v306;
    *(v213 + 256) = v305;
    *(v213 + 264) = v224;
    v304 = 0uLL;
    v305 = 0;
    *(v213 + 272) = v307;
    *(v213 + 280) = v308;
    v225 = v310;
    *(v213 + 296) = v309;
    *(v213 + 304) = v225;
    v308 = 0uLL;
    v309 = 0;
    *(v213 + 312) = v311;
    *(v213 + 320) = v312;
    v226 = v314;
    *(v213 + 336) = v313;
    *(v213 + 344) = v226;
    v312 = 0uLL;
    v313 = 0;
    v227 = *v315;
    *(v213 + 365) = *&v315[13];
    *(v213 + 352) = v227;
    *(v213 + 384) = 1;
  }

  sub_271359728(&__dst);
LABEL_369:
  v232 = v271;
  if (v271 && !atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v232->__on_zero_shared)(v232);
    std::__shared_weak_count::__release_weak(v232);
  }

  if (SHIBYTE(v274) < 0)
  {
    operator delete(v272);
  }

  v233 = *MEMORY[0x277D85DE8];
}

void sub_2717216D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
    if ((SLOBYTE(STACK[0x55F]) & 0x80000000) == 0)
    {
LABEL_7:
      sub_271721D9C(&STACK[0x560]);
      MEMORY[0x2743BEF20](a32);
      if (*(v61 - 217) < 0)
      {
        operator delete(*(v61 - 240));
      }

      if (v60)
      {
        operator delete(v60);
      }

      sub_271721EBC(&STACK[0x320]);
      sub_271359728(&STACK[0x390]);
      sub_2717254C8(&a60);
      if (SLOBYTE(STACK[0x317]) < 0)
      {
        operator delete(STACK[0x300]);
      }

      _Unwind_Resume(a1);
    }
  }

  else if ((SLOBYTE(STACK[0x55F]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(STACK[0x548]);
  goto LABEL_7;
}

void sub_271721A4C(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

_DWORD *sub_271721A84(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v6 = 0x1555555555555555;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v10 = v9 + 1;
  if (v9 + 1 > 0x1555555555555555)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v7) >> 2) > v10)
  {
    v10 = 0x5555555555555556 * ((*(a1 + 16) - v7) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v7) >> 2) < 0xAAAAAAAAAAAAAAALL)
  {
    v6 = v10;
  }

  if (v6)
  {
    LODWORD(v26) = v6;
    v13 = *(a1 + 28);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v24 = &v26;
    v14 = (off_288134040[v13])(&v24, a1 + 24);
    v6 = v15;
    v7 = *a1;
    v8 = *(a1 + 8) - *a1;
  }

  else
  {
    v14 = 0;
  }

  v16 = (v14 + 12 * v9);
  v17 = v14 + 12 * v6;
  *v16 = *a2;
  v16[1] = *a3;
  v16[2] = *a4;
  v18 = v16 + 3;
  v19 = v16 - v8;
  memcpy(v16 - v8, v7, v8);
  v20 = *a1;
  *a1 = v19;
  *(a1 + 8) = v18;
  v21 = *(a1 + 16);
  *(a1 + 16) = v17;
  if (v20)
  {
    v24 = v20;
    v25 = -1431655765 * ((v21 - v20) >> 2);
    v22 = *(a1 + 28);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v26 = &v24;
    (off_288134050[v22])(&v26, a1 + 24);
  }

  return v18;
}

_DWORD *sub_271721C10(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v6 = 0x1555555555555555;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v10 = v9 + 1;
  if (v9 + 1 > 0x1555555555555555)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v7) >> 2) > v10)
  {
    v10 = 0x5555555555555556 * ((*(a1 + 16) - v7) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v7) >> 2) < 0xAAAAAAAAAAAAAAALL)
  {
    v6 = v10;
  }

  if (v6)
  {
    LODWORD(v26) = v6;
    v13 = *(a1 + 28);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v24 = &v26;
    v14 = (off_288134070[v13])(&v24, a1 + 24);
    v6 = v15;
    v7 = *a1;
    v8 = *(a1 + 8) - *a1;
  }

  else
  {
    v14 = 0;
  }

  v16 = (v14 + 12 * v9);
  v17 = v14 + 12 * v6;
  *v16 = *a2;
  v16[1] = *a3;
  v16[2] = *a4;
  v18 = v16 + 3;
  v19 = v16 - v8;
  memcpy(v16 - v8, v7, v8);
  v20 = *a1;
  *a1 = v19;
  *(a1 + 8) = v18;
  v21 = *(a1 + 16);
  *(a1 + 16) = v17;
  if (v20)
  {
    v24 = v20;
    v25 = -1431655765 * ((v21 - v20) >> 2);
    v22 = *(a1 + 28);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v26 = &v24;
    (off_288134020[v22])(&v26, a1 + 24);
  }

  return v18;
}

uint64_t sub_271721D9C(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t *sub_271721EBC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288134050[v4])(&v8, a1 + 3);
  }

  return a1;
}

void sub_271722164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717221A8(uint64_t a1, uint64_t *a2)
{
  v4 = (a2[1] - *a2) >> 2;
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_2717233A0(&v91, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = v92;
  }

  else
  {
    v7 = v92;
    do
    {
      v9 = *(v5 + 8);
      v88 = *v5;
      v89 = v9;
      if (v7 < v93)
      {
        v8 = v88;
        *(v7 + 8) = v89;
        *v7 = v8;
        v7 += 12;
      }

      else
      {
        v7 = sub_2717234D0(&v91, &v88);
      }

      v92 = v7;
      v5 += 12;
    }

    while (v5 != v6);
  }

  *a1 = v91;
  *(a1 + 8) = v7;
  v10 = v94;
  *(a1 + 16) = v93;
  *(a1 + 24) = v10;
  *(a1 + 32) = *(a2 + 16);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[5] - a2[4]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_2717233A0(&v91, v11);
  v12 = a2[4];
  v13 = a2[5];
  if (v12 == v13)
  {
    v14 = v92;
  }

  else
  {
    v14 = v92;
    do
    {
      v16 = *(v12 + 8);
      v88 = *v12;
      v89 = v16;
      if (v14 < v93)
      {
        v15 = v88;
        *(v14 + 8) = v89;
        *v14 = v15;
        v14 += 12;
      }

      else
      {
        v14 = sub_2717234D0(&v91, &v88);
      }

      v92 = v14;
      v12 += 12;
    }

    while (v12 != v13);
  }

  *(a1 + 40) = v91;
  *(a1 + 48) = v14;
  v17 = v94;
  *(a1 + 56) = v93;
  *(a1 + 64) = v17;
  *(a1 + 72) = *(a2 + 26);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[10] - a2[9]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_2717233A0(&v91, v18);
  v19 = a2[9];
  v20 = a2[10];
  if (v19 == v20)
  {
    v21 = v92;
  }

  else
  {
    v21 = v92;
    do
    {
      v23 = *(v19 + 8);
      v88 = *v19;
      v89 = v23;
      if (v21 < v93)
      {
        v22 = v88;
        *(v21 + 8) = v89;
        *v21 = v22;
        v21 += 12;
      }

      else
      {
        v21 = sub_2717234D0(&v91, &v88);
      }

      v92 = v21;
      v19 += 12;
    }

    while (v19 != v20);
  }

  v25 = v93;
  v24 = v94;
  *(a1 + 80) = v91;
  *(a1 + 88) = v21;
  *(a1 + 96) = v25;
  *(a1 + 104) = v24;
  *(a1 + 112) = *(a2 + 68);
  sub_2713CA044((a1 + 120), (a2 + 30));
  *(a1 + 152) = *(a2 + 78);
  sub_2713CA044((a1 + 160), (a2 + 35));
  v26 = 0xAAAAAAAAAAAAAAABLL * ((a2[15] - a2[14]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_271723644(&v91, v26);
  v27 = a2[14];
  v28 = a2[15];
  if (v27 == v28)
  {
    v29 = v92;
  }

  else
  {
    v29 = v92;
    do
    {
      v31 = *(v27 + 8);
      v88 = *v27;
      v89 = v31;
      if (v29 < v93)
      {
        v30 = v88;
        *(v29 + 8) = v89;
        *v29 = v30;
        v29 += 12;
      }

      else
      {
        v29 = sub_271723774(&v91, &v88);
      }

      v92 = v29;
      v27 += 12;
    }

    while (v27 != v28);
  }

  v33 = v93;
  v32 = v94;
  *(a1 + 192) = v91;
  *(a1 + 200) = v29;
  *(a1 + 208) = v33;
  *(a1 + 216) = v32;
  v35 = a2[18];
  v34 = a2[19];
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v36 = v34 - v35;
  if (v36)
  {
    if (!((v36 >> 3) >> 61))
    {
      operator new();
    }

    sub_271135560();
  }

  v37 = 0;
  v38 = a2[18];
  for (i = a2[19]; v38 != i; ++v38)
  {
    v40 = *v38;
    if (v37 < v93)
    {
      *v37 = v40;
      v37 += 8;
    }

    else
    {
      v41 = (v37 - v91) >> 3;
      if ((v41 + 1) >> 61)
      {
        sub_271135560();
      }

      v42 = (v93 - v91) >> 2;
      if (v42 <= v41 + 1)
      {
        v42 = v41 + 1;
      }

      if (v93 - v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        LODWORD(v90) = v43;
        if (HIDWORD(v94) == -1)
        {
          sub_2711308D4();
        }

        v88 = &v90;
        v44 = (off_288134170[HIDWORD(v94)])(&v88, &v94);
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      v47 = v44 + 8 * v45;
      v46 = (v44 + 8 * v41);
      *v46 = v40;
      v37 = (v46 + 1);
      v48 = v46 - (v92 - v91);
      memcpy(v48, v91, v92 - v91);
      v49 = v91;
      v50 = v93;
      v91 = v48;
      v92 = v37;
      v93 = v47;
      if (v49)
      {
        v88 = v49;
        v89 = (v50 - v49) >> 3;
        if (HIDWORD(v94) == -1)
        {
          sub_2711308D4();
        }

        v90 = &v88;
        (off_288134180[HIDWORD(v94)])(&v90, &v94);
      }
    }

    v92 = v37;
  }

  v52 = v93;
  v51 = v94;
  *(a1 + 224) = v91;
  *(a1 + 232) = v37;
  *(a1 + 240) = v52;
  *(a1 + 248) = v51;
  v54 = a2[22];
  v53 = a2[23];
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v55 = v53 - v54;
  if (v55)
  {
    if (!((v55 >> 3) >> 61))
    {
      operator new();
    }

    sub_271135560();
  }

  v56 = 0;
  v57 = a2[22];
  for (j = a2[23]; v57 != j; ++v57)
  {
    v59 = *v57;
    if (v56 < v93)
    {
      *v56 = v59;
      v56 += 8;
    }

    else
    {
      v60 = (v56 - v91) >> 3;
      if ((v60 + 1) >> 61)
      {
        sub_271135560();
      }

      v61 = (v93 - v91) >> 2;
      if (v61 <= v60 + 1)
      {
        v61 = v60 + 1;
      }

      if (v93 - v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      if (v62)
      {
        LODWORD(v90) = v62;
        if (HIDWORD(v94) == -1)
        {
          sub_2711308D4();
        }

        v88 = &v90;
        v63 = (off_288134190[HIDWORD(v94)])(&v88, &v94);
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      v66 = v63 + 8 * v64;
      v65 = (v63 + 8 * v60);
      *v65 = v59;
      v56 = (v65 + 1);
      v67 = v65 - (v92 - v91);
      memcpy(v67, v91, v92 - v91);
      v68 = v91;
      v69 = v93;
      v91 = v67;
      v92 = v56;
      v93 = v66;
      if (v68)
      {
        v88 = v68;
        v89 = (v69 - v68) >> 3;
        if (HIDWORD(v94) == -1)
        {
          sub_2711308D4();
        }

        v90 = &v88;
        (off_2881341A0[HIDWORD(v94)])(&v90, &v94);
      }
    }

    v92 = v56;
  }

  *(a1 + 256) = v91;
  *(a1 + 264) = v56;
  v70 = v94;
  *(a1 + 272) = v93;
  *(a1 + 280) = v70;
  v71 = 0xAAAAAAAAAAAAAAABLL * ((a2[27] - a2[26]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_271723644(&v91, v71);
  v72 = a2[26];
  v73 = a2[27];
  if (v72 == v73)
  {
    v74 = v92;
  }

  else
  {
    v74 = v92;
    do
    {
      v76 = *(v72 + 8);
      v88 = *v72;
      v89 = v76;
      if (v74 < v93)
      {
        v75 = v88;
        *(v74 + 8) = v89;
        *v74 = v75;
        v74 += 12;
      }

      else
      {
        v74 = sub_271723774(&v91, &v88);
      }

      v92 = v74;
      v72 += 12;
    }

    while (v72 != v73);
  }

  *(a1 + 288) = v91;
  *(a1 + 296) = v74;
  v77 = v94;
  *(a1 + 304) = v93;
  *(a1 + 312) = v77;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = *(a2 + 88);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  v78 = *(a2 + 87);
  if (v78 == -1)
  {
    sub_2711308D4();
  }

  v91 = &v88;
  v79 = (off_288134200[v78])(&v91, a2 + 43);
  *(a1 + 376) = v79;
  v81 = a2[40];
  v80 = a2[41];
  v91 = (a1 + 352);
  LOBYTE(v92) = 0;
  v82 = v80 - v81;
  if (v80 != v81)
  {
    if ((v82 >> 2) >> 62)
    {
      sub_271135560();
    }

    LODWORD(v90) = v82 >> 2;
    if (HIDWORD(v79) == 0xFFFFFFFF)
    {
      sub_2711308D4();
    }

    v88 = &v90;
    v83 = (off_2881341F0[HIDWORD(v79)])(&v88, a1 + 376);
    *(a1 + 352) = v83;
    *(a1 + 360) = v83;
    *(a1 + 368) = &v83[4 * v84];
    memmove(v83, v81, v82);
    *(a1 + 360) = &v83[v82];
  }

  if (*(a2 + 380) == 1)
  {
    if (*(a1 + 344) == 1)
    {
      *(a1 + 344) = 0;
    }

    v85 = *(a2 + 91);
    *(a1 + 320) = *(a2 + 356);
    *(a1 + 328) = v85;
    v86 = *(a2 + 94);
    *(a1 + 332) = a2[46];
    *(a1 + 340) = v86;
    *(a1 + 344) = 1;
  }

  return a1;
}

void sub_271722ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2713AE8DC(va);
  sub_2713AE96C(v5 + 32);
  sub_2713AE9F0(v5 + 28);
  sub_2713AE8DC(v5 + 24);
  sub_2713AEA74(v5 + 20);
  sub_2713AEA74(v5 + 15);
  sub_2713AEAF4(v5 + 10);
  sub_2713AEAF4(v5 + 5);
  sub_2713AEAF4(v5);
  _Unwind_Resume(a1);
}

char *sub_271722BF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_27171ABA4(a3, a2);
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 - *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = 0xAAAAAAAAAAAAAAABLL * (&v10[-*a3] >> 2);
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      v10 = &v9[v7];
      *(a3 + 8) = &v9[v7];
    }
  }

  else
  {
    sub_271356124(a3, v8 - v11);
    v6 = *a1;
    v5 = a1[1];
    v9 = *a3;
    v10 = *(a3 + 8);
  }

  if (v6 != v5 || v9 != v10)
  {
    v12 = v6 + 12;
    do
    {
      do
      {
        v13 = v12;
        v14 = *(v12 - 4);
        *v9 = *(v12 - 12);
        *(v9 + 2) = v14;
        v9 += 12;
        v12 += 12;
      }

      while (v13 != v5);
    }

    while (v9 != v10);
  }

  v15 = *(a3 + 32);
  *(a3 + 64) = *(a1 + 8);
  v17 = a1[5];
  v16 = a1[6];
  v18 = v16 - v17;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 2);
  v20 = *(a3 + 40);
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v15) >> 2);
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      v20 = v15 + v18;
      *(a3 + 40) = v15 + v18;
    }
  }

  else
  {
    sub_271356124((a3 + 32), v19 - v21);
    v17 = a1[5];
    v16 = a1[6];
    v15 = *(a3 + 32);
    v20 = *(a3 + 40);
  }

  if (v17 != v16 || v15 != v20)
  {
    v22 = v17 + 12;
    do
    {
      do
      {
        v23 = v22;
        v24 = *(v22 - 4);
        *v15 = *(v22 - 12);
        *(v15 + 8) = v24;
        v15 += 12;
        v22 += 12;
      }

      while (v23 != v16);
    }

    while (v15 != v20);
  }

  v25 = *(a3 + 72);
  *(a3 + 104) = *(a1 + 18);
  v27 = a1[10];
  v26 = a1[11];
  v28 = v26 - v27;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2);
  v30 = *(a3 + 80);
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v25) >> 2);
  if (v29 <= v31)
  {
    if (v29 < v31)
    {
      v30 = v25 + v28;
      *(a3 + 80) = v25 + v28;
    }
  }

  else
  {
    sub_271356124((a3 + 72), v29 - v31);
    v27 = a1[10];
    v26 = a1[11];
    v25 = *(a3 + 72);
    v30 = *(a3 + 80);
  }

  if (v27 != v26 || v25 != v30)
  {
    v32 = v27 + 12;
    do
    {
      do
      {
        v33 = v32;
        v34 = *(v32 - 4);
        *v25 = *(v32 - 12);
        *(v25 + 8) = v34;
        v25 += 12;
        v32 += 12;
      }

      while (v33 != v26);
    }

    while (v25 != v30);
  }

  v35 = *(a3 + 240);
  *(a3 + 272) = *(a1 + 28);
  v36 = a1[15];
  v37 = a1[16];
  v38 = *(a3 + 248) - v35;
  v39 = v37 - v36 >= v38;
  v40 = v37 - v36 - v38;
  if (v40 != 0 && v39)
  {
    sub_271358BDC(a3 + 240, v40);
    v36 = a1[15];
    v37 = a1[16];
    v35 = *(a3 + 240);
  }

  else if (!v39)
  {
    *(a3 + 248) = &v35[v37 - v36];
  }

  if (v37 != v36)
  {
    memmove(v35, v36, v37 - v36);
  }

  *(a3 + 312) = *(a1 + 38);
  v41 = a1[20];
  v42 = a1[21];
  v43 = *(a3 + 280);
  v44 = *(a3 + 288) - v43;
  v45 = v42 - v41 >= v44;
  v46 = v42 - v41 - v44;
  if (v46 != 0 && v45)
  {
    sub_271358BDC(a3 + 280, v46);
    v41 = a1[20];
    v42 = a1[21];
    v43 = *(a3 + 280);
  }

  else if (!v45)
  {
    *(a3 + 288) = &v43[v42 - v41];
  }

  if (v42 != v41)
  {
    memmove(v43, v41, v42 - v41);
  }

  v47 = a1[24];
  v48 = a1[25];
  v49 = v48 - v47;
  v50 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 2);
  v51 = *(a3 + 112);
  v52 = *(a3 + 120);
  v53 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 2);
  if (v50 <= v53)
  {
    if (v50 < v53)
    {
      v52 = v51 + v49;
      *(a3 + 120) = v51 + v49;
    }
  }

  else
  {
    sub_2713565E0((a3 + 112), v50 - v53);
    v47 = a1[24];
    v48 = a1[25];
    v51 = *(a3 + 112);
    v52 = *(a3 + 120);
  }

  for (; v47 != v48 || v51 != v52; v51 += 12)
  {
    v54 = *(v47 + 8);
    *v51 = *v47;
    *(v51 + 8) = v54;
    v47 += 12;
  }

  v57 = a1[28];
  v56 = a1[29];
  v58 = v56 - v57;
  v59 = (v56 - v57) >> 3;
  v60 = *(a3 + 144);
  v61 = *(a3 + 152);
  v62 = (v61 - v60) >> 3;
  v63 = v59 - v62;
  if (v59 <= v62)
  {
    if (v59 < v62)
    {
      v61 = v60 + v58;
      *(a3 + 152) = v60 + v58;
    }
  }

  else
  {
    v64 = *(a3 + 160);
    if (v63 <= (v64 - v61) >> 3)
    {
      v61 += 8 * v63;
      *(a3 + 152) = v61;
    }

    else
    {
      if (v59 >> 61)
      {
        sub_271135560();
      }

      v65 = v64 - v60;
      v66 = v65 >> 2;
      if (v65 >> 2 <= v59)
      {
        LODWORD(v66) = v59;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFF8)
      {
        v67 = -1;
      }

      else
      {
        v67 = v66;
      }

      LODWORD(v129) = v67;
      v68 = *(a3 + 172);
      if (v68 == -1)
      {
        goto LABEL_119;
      }

      v127 = &v129;
      v69 = (off_2881341B0[v68])(&v127, a3 + 168);
      v70 = *(a3 + 152) - *(a3 + 144);
      v71 = v69 + v61 - v60;
      v73 = v69 + 8 * v72;
      v61 = v71 + 8 * v63;
      v60 = v71 - v70;
      memcpy((v71 - v70), *(a3 + 144), v70);
      v74 = *(a3 + 144);
      *(a3 + 144) = v60;
      *(a3 + 152) = v61;
      v75 = *(a3 + 160);
      *(a3 + 160) = v73;
      if (v74)
      {
        v127 = v74;
        v128 = (v75 - v74) >> 3;
        v76 = *(a3 + 172);
        if (v76 == -1)
        {
          sub_2711308D4();
        }

        v129 = &v127;
        (off_2881341C0[v76])(&v129, a3 + 168);
        v60 = *(a3 + 144);
        v61 = *(a3 + 152);
      }
    }

    v57 = a1[28];
    v56 = a1[29];
  }

  if (v57 != v56 || v60 != v61)
  {
    v77 = v60 + 8;
    v78 = v57 + 8;
    do
    {
      do
      {
        v79 = v77;
        v80 = v78;
        *(v77 - 8) = *(v78 - 8);
        v77 += 8;
        v78 += 8;
      }

      while (v80 != v56);
    }

    while (v79 != v61);
  }

  v82 = a1[32];
  v81 = a1[33];
  v83 = v81 - v82;
  v84 = (v81 - v82) >> 3;
  v85 = *(a3 + 176);
  v86 = *(a3 + 184);
  v87 = (v86 - v85) >> 3;
  v88 = v84 - v87;
  if (v84 > v87)
  {
    v89 = *(a3 + 192);
    if (v88 <= (v89 - v86) >> 3)
    {
      v86 += 8 * v88;
      *(a3 + 184) = v86;
LABEL_89:
      v82 = a1[32];
      v81 = a1[33];
      goto LABEL_90;
    }

    if (v84 >> 61)
    {
      sub_271135560();
    }

    v90 = v89 - v85;
    v91 = v90 >> 2;
    if (v90 >> 2 <= v84)
    {
      LODWORD(v91) = v84;
    }

    if (v90 >= 0x7FFFFFFFFFFFFFF8)
    {
      v92 = -1;
    }

    else
    {
      v92 = v91;
    }

    LODWORD(v129) = v92;
    v93 = *(a3 + 204);
    if (v93 != -1)
    {
      v127 = &v129;
      v94 = (off_2881341D0[v93])(&v127, a3 + 200);
      v95 = *(a3 + 184) - *(a3 + 176);
      v96 = v94 + v86 - v85;
      v98 = v94 + 8 * v97;
      v86 = v96 + 8 * v88;
      v85 = v96 - v95;
      memcpy((v96 - v95), *(a3 + 176), v95);
      v99 = *(a3 + 176);
      *(a3 + 176) = v85;
      *(a3 + 184) = v86;
      v100 = *(a3 + 192);
      *(a3 + 192) = v98;
      if (v99)
      {
        v127 = v99;
        v128 = (v100 - v99) >> 3;
        v101 = *(a3 + 204);
        if (v101 == -1)
        {
          sub_2711308D4();
        }

        v129 = &v127;
        (off_2881341E0[v101])(&v129, a3 + 200);
        v85 = *(a3 + 176);
        v86 = *(a3 + 184);
      }

      goto LABEL_89;
    }

LABEL_119:
    sub_2711308D4();
  }

  if (v84 < v87)
  {
    v86 = v85 + v83;
    *(a3 + 184) = v85 + v83;
  }

LABEL_90:
  if (v82 != v81 || v85 != v86)
  {
    v102 = v85 + 8;
    v103 = v82 + 8;
    do
    {
      do
      {
        v104 = v102;
        v105 = v103;
        *(v102 - 8) = *(v103 - 8);
        v102 += 8;
        v103 += 8;
      }

      while (v105 != v81);
    }

    while (v104 != v86);
  }

  v106 = a1[36];
  v107 = a1[37];
  v108 = v107 - v106;
  v109 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 2);
  v110 = *(a3 + 208);
  v111 = *(a3 + 216);
  v112 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v110) >> 2);
  if (v109 <= v112)
  {
    if (v109 < v112)
    {
      v111 = v110 + v108;
      *(a3 + 216) = v110 + v108;
    }
  }

  else
  {
    sub_2713565E0((a3 + 208), v109 - v112);
    v106 = a1[36];
    v107 = a1[37];
    v110 = *(a3 + 208);
    v111 = *(a3 + 216);
  }

  for (; v106 != v107 || v110 != v111; v110 += 12)
  {
    v113 = *(v106 + 8);
    *v110 = *v106;
    *(v110 + 8) = v113;
    v106 += 12;
  }

  if (*(a1 + 344) == 1)
  {
    v115 = *(a1 + 82);
    v116 = *(a1 + 332);
    v117 = *(a1 + 85);
    v118 = *(a3 + 380);
    *(a3 + 356) = a1[40];
    *(a3 + 364) = v115;
    *(a3 + 368) = v116;
    *(a3 + 376) = v117;
    if ((v118 & 1) == 0)
    {
      *(a3 + 380) = 1;
    }
  }

  *(a3 + 352) = *(a1 + 87);
  v119 = a1[44];
  v120 = a1[45];
  v121 = (v120 - v119) >> 2;
  result = *(a3 + 320);
  v123 = (*(a3 + 328) - result) >> 2;
  v124 = v121 >= v123;
  v125 = v121 > v123;
  v126 = v121 - v123;
  if (v125)
  {
    sub_2713591A4(a3 + 320, v126);
    v119 = a1[44];
    v120 = a1[45];
    result = *(a3 + 320);
  }

  else if (!v124)
  {
    *(a3 + 328) = &result[v120 - v119];
  }

  if (v120 != v119)
  {

    return memmove(result, v119, v120 - v119);
  }

  return result;
}

const void **sub_2717233A0(const void **result, unint64_t a2)
{
  v2 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v3 = result;
    v4 = result[1];
    LODWORD(v18) = a2;
    v5 = *(result + 7);
    if (v5 == -1)
    {
      sub_2711308D4();
    }

    v6 = v4 - v2;
    v16 = &v18;
    v7 = (off_288134130[v5])(&v16, result + 3);
    v8 = (v7 + v6);
    v10 = v7 + 12 * v9;
    v11 = v3[1] - *v3;
    v12 = (v7 + v6 - v11);
    result = memcpy(v12, *v3, v11);
    v13 = *v3;
    *v3 = v12;
    v3[1] = v8;
    v14 = v3[2];
    v3[2] = v10;
    if (v13)
    {
      v16 = v13;
      v17 = -1431655765 * ((v14 - v13) >> 2);
      v15 = *(v3 + 7);
      if (v15 == -1)
      {
        sub_2711308D4();
      }

      v18 = &v16;
      return (off_288134140[v15])(&v18, v3 + 3);
    }
  }

  return result;
}

unint64_t sub_2717234D0(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1555555555555555;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1555555555555555)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) < 0xAAAAAAAAAAAAAAALL)
  {
    v2 = v4;
  }

  if (v2)
  {
    LODWORD(v22) = v2;
    v7 = *(a1 + 28);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v20 = &v22;
    v8 = (off_288134130[v7])(&v20, a1 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8 + 12 * v3;
  v11 = v8 + 12 * v9;
  v12 = *a2;
  *(v10 + 8) = *(a2 + 2);
  *v10 = v12;
  v13 = v10 + 12;
  v14 = *(a1 + 8) - *a1;
  v15 = v10 - v14;
  memcpy((v10 - v14), *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v16)
  {
    v20 = v16;
    v21 = -1431655765 * ((v17 - v16) >> 2);
    v18 = *(a1 + 28);
    if (v18 == -1)
    {
      sub_2711308D4();
    }

    v22 = &v20;
    (off_288134140[v18])(&v22, a1 + 24);
  }

  return v13;
}

const void **sub_271723644(const void **result, unint64_t a2)
{
  v2 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_271135560();
    }

    v3 = result;
    v4 = result[1];
    LODWORD(v18) = a2;
    v5 = *(result + 7);
    if (v5 == -1)
    {
      sub_2711308D4();
    }

    v6 = v4 - v2;
    v16 = &v18;
    v7 = (off_288134150[v5])(&v16, result + 3);
    v8 = (v7 + v6);
    v10 = v7 + 12 * v9;
    v11 = v3[1] - *v3;
    v12 = (v7 + v6 - v11);
    result = memcpy(v12, *v3, v11);
    v13 = *v3;
    *v3 = v12;
    v3[1] = v8;
    v14 = v3[2];
    v3[2] = v10;
    if (v13)
    {
      v16 = v13;
      v17 = -1431655765 * ((v14 - v13) >> 2);
      v15 = *(v3 + 7);
      if (v15 == -1)
      {
        sub_2711308D4();
      }

      v18 = &v16;
      return (off_288134160[v15])(&v18, v3 + 3);
    }
  }

  return result;
}

unint64_t sub_271723774(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1555555555555555;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1555555555555555)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) < 0xAAAAAAAAAAAAAAALL)
  {
    v2 = v4;
  }

  if (v2)
  {
    LODWORD(v22) = v2;
    v7 = *(a1 + 28);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v20 = &v22;
    v8 = (off_288134150[v7])(&v20, a1 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8 + 12 * v3;
  v11 = v8 + 12 * v9;
  v12 = *a2;
  *(v10 + 8) = *(a2 + 2);
  *v10 = v12;
  v13 = v10 + 12;
  v14 = *(a1 + 8) - *a1;
  v15 = v10 - v14;
  memcpy((v10 - v14), *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v16)
  {
    v20 = v16;
    v21 = -1431655765 * ((v17 - v16) >> 2);
    v18 = *(a1 + 28);
    if (v18 == -1)
    {
      sub_2711308D4();
    }

    v22 = &v20;
    (off_288134160[v18])(&v22, a1 + 24);
  }

  return v13;
}

void sub_271723924(std::__fs::filesystem::path *a1@<X1>, std::__fs::filesystem::path *a2@<X8>)
{
  std::__fs::filesystem::__current_path(&v4, 0);
  sub_2717239A8(a2, a1, &v4);
  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_27172398C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717239A8(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *__p, const std::__fs::filesystem::path *a3)
{
  std::__fs::filesystem::__weakly_canonical(&v6, __p, 0);
  std::__fs::filesystem::__weakly_canonical(&__pa, a3, 0);
  std::__fs::filesystem::path::lexically_relative(a1, &v6, &__pa);
  if ((SHIBYTE(__pa.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__pa.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void sub_271723A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_271723A90(std::__fs::filesystem::path *a1@<X1>, std::__fs::filesystem::path *a2@<X8>)
{
  std::__fs::filesystem::__current_path(&v4, 0);
  sub_271723B14(a2, a1, &v4);
  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_271723AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271723B14(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *__p, const std::__fs::filesystem::path *a3)
{
  std::__fs::filesystem::__weakly_canonical(&v8, __p, 0);
  std::__fs::filesystem::__weakly_canonical(&__base, a3, 0);
  std::__fs::filesystem::path::lexically_relative(&v9, &v8, &__base);
  size = HIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]);
  if ((v9.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v9.__pn_.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *a1 = v9;
    goto LABEL_8;
  }

  if ((SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *a1 = v8;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_271127178(a1, v8.__pn_.__r_.__value_.__l.__data_, v8.__pn_.__r_.__value_.__l.__size_);
  if ((*(&v9.__pn_.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_7:
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_8:
  if ((SHIBYTE(__base.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__base.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }
}

void sub_271723C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a16);
  _Unwind_Resume(exception_object);
}

BOOL sub_271723E1C(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = *a2 == 255;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

BOOL sub_271723E84(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v2 == 255)
  {
    return 0;
  }

  return (v2 - 4) < 0xFFFFFFFD;
}

void sub_2717240AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_27172426C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2743BEF20](v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271724480(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_27172463C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2743BEF20](v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271724670(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  MEMORY[0x2743BEC30](&v14, a1, 0, a2);
  v13 = v14;
  if (v14.__imp_.__cntrl_)
  {
    atomic_fetch_add_explicit(&v14.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12[1] = 0;
  v12[2] = 0;
  while (v13.__imp_.__ptr_)
  {
    v5 = std::__fs::filesystem::directory_iterator::__dereference(&v13);
    v6 = std::__fs::filesystem::directory_iterator::__dereference(&v13);
    if (((1 << v6->__data_.__cache_type_) & 0x57) != 0)
    {
      std::__fs::filesystem::__status(&v6->__p_, 0);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      non_sym_perms = v6->__data_.__non_sym_perms_;
      LOBYTE(v12[0]) = v6->__data_.__type_;
      HIDWORD(v12[0]) = non_sym_perms;
      v7 = a3[1];
      if (v7 >= a3[2])
      {
LABEL_4:
        v4 = sub_2717248AC(a3, v5, v12);
        goto LABEL_5;
      }
    }

    if (SHIBYTE(v5->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(v7, v5->__p_.__pn_.__r_.__value_.__l.__data_, v5->__p_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = *&v5->__p_.__pn_.__r_.__value_.__l.__data_;
      *(v7 + 16) = *(&v5->__p_.__pn_.__r_.__value_.__l + 2);
      *v7 = v9;
    }

    *(v7 + 24) = v12[0];
    v4 = v7 + 32;
LABEL_5:
    a3[1] = v4;
    std::__fs::filesystem::directory_iterator::__increment(&v13, 0);
  }

  cntrl = v13.__imp_.__cntrl_;
  if (v13.__imp_.__cntrl_ && !atomic_fetch_add(&v13.__imp_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  v11 = v14.__imp_.__cntrl_;
  if (v14.__imp_.__cntrl_ && !atomic_fetch_add(&v14.__imp_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_271724860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  *(v3 + 8) = v4;
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(va2);
  sub_2711BEA2C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2717248AC(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_271135560();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v9 = 32 * v3;
  if (*(a2 + 23) < 0)
  {
    sub_271127178(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
  }

  *(v9 + 24) = *a3;
  v10 = v9 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      *(v15 + 24) = *(v14 + 3);
      v14 += 2;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 32;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_271724A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271724A64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271724A64(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_271724ACC(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_271120DA8();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void sub_271724C88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271724CDC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271724D60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271724D98(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_271724DC8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002718B468DLL)
  {
    if (((v2 & 0x80000002718B468DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002718B468DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B468DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271724E58(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271724EAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271724F30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271724F68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_271724F98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002718B4797)
  {
    if (((v2 & 0x80000002718B4797 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002718B4797))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002718B4797 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271725008(const std::__fs::filesystem::path *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(*a3 + 264))(&__dst, a3, a1);
  if ((*(*a3 + 320))(a3, &__dst))
  {
    a4[1] = 0;
    a4[2] = 0;
    *a4 = &unk_288115240;
    return;
  }

  v8 = std::__fs::filesystem::path::__parent_path(a1);
  if (v8.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v8.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v8.__size_;
  if (v8.__size_)
  {
    memmove(&__dst, v8.__data_, v8.__size_);
  }

  *(&__dst + v8.__size_) = 0;
  v11 = v13;
  *__p = __dst;
  v9 = HIBYTE(v13);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v9 = *(&__dst + 1);
  }

  if (!v9 || ((*(*a3 + 264))(&__dst, a3, __p), ((*(*a3 + 320))(a3, &__dst) & 1) != 0) || ((*(*a3 + 128))(a3, __p) & 1) != 0)
  {
    (*(*a3 + 376))(a3, a1, a2);
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = &unk_288115240;
  if (SHIBYTE(v11) < 0)
  {
LABEL_15:
    operator delete(__p[0]);
  }
}

void sub_2717252B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2717254C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271725540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717255F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27172566C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271725740(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288134220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

std::locale *sub_2717257BC(std::locale *a1)
{
  v2 = std::istream::~istream();
  MEMORY[0x2743BEF20](v2 + 88);
  a1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 4);
  return a1;
}

void sub_27172581C(std::locale *a1)
{
  v2 = std::istream::~istream();
  MEMORY[0x2743BEF20](v2 + 88);
  a1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 4);

  JUMPOUT(0x2743BF050);
}

void sub_2717258A0(std::locale *a1)
{
  std::istream::~istream();
  MEMORY[0x2743BEF20](&a1[9]);
  a1[1].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(a1 + 2);
}

void sub_27172590C(std::locale *a1)
{
  std::istream::~istream();
  MEMORY[0x2743BEF20](&a1[9]);
  a1[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 2);

  JUMPOUT(0x2743BF050);
}

void sub_27172599C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x2743BEF20](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(v1 + 4);
}

void sub_271725A1C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x2743BEF20](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 4);

  JUMPOUT(0x2743BF050);
}

void sub_271725AB4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x2743BEF20](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(v1 + 4);
}

void sub_271725B34(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x2743BEF20](&v1[11]);
  v1[3].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 4);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271725BCC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271725C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271725CD8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271725D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_271725DE4(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  v5 = sub_271120E64(a1, a2, v4);
  v6 = sub_271120E64(v5, ":", 1);
  std::to_string(&v11, *(v2 + 24));
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v11;
  }

  else
  {
    v7 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  result = sub_271120E64(v6, v7, size);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = result;
    operator delete(v11.__r_.__value_.__l.__data_);
    return v10;
  }

  return result;
}

void sub_271725E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271725EB4(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_2711BF108(&v4);
  sub_271726C08();
}

void sub_271725FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271725FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271725FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271726004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_271726018(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810CD90;
  v5 = *(a5 + 24);
  if (v5)
  {
    if (v5 == a5)
    {
      v7 = v6;
      (*(*v5 + 24))(v5, v6);
    }

    else
    {
      v7 = *(a5 + 24);
      *(a5 + 24) = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  operator new();
}

void sub_271726474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27172651C(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(result + 16))(v1);
    return v2;
  }

  return result;
}

void sub_27172655C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v1)
  {
    (*(a1 + 16))(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271726614(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = *v2;
  if (*v2)
  {
    if ((*(*result + 48))(result, a2, 3))
    {
      return 1;
    }

    else
    {
      result = *v2;
      *v2 = 0;
      if (result)
      {
        (*(*result + 8))(result);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2717266AC(uint64_t a1)
{
  result = **(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

void sub_2717268D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  __cxa_guard_abort(&qword_28087C2E0);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_271504934(&a17);
  MEMORY[0x2743BF050](v18, v17);
  _Unwind_Resume(a1);
}

uint64_t sub_271726938(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    sub_271727F98(*(v1 + 192), v1);
    if (*(v1 + 183) < 0)
    {
      operator delete(*(v1 + 160));
      if ((*(v1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v1 + 151) & 0x80000000) == 0)
    {
LABEL_4:
      std::condition_variable::~condition_variable((v1 + 72));
      std::mutex::~mutex((v1 + 8));
      MEMORY[0x2743BF050](v1, 0x10B3C4063A2C955);
      return v2;
    }

    operator delete(*(v1 + 128));
    goto LABEL_4;
  }

  return result;
}

void sub_2717269CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v1)
  {
    goto LABEL_5;
  }

  sub_271727F98(*(v1 + 192), v1);
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
    if ((*(v1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((*(v1 + 151) & 0x80000000) == 0)
  {
LABEL_4:
    std::condition_variable::~condition_variable((v1 + 72));
    std::mutex::~mutex((v1 + 8));
    MEMORY[0x2743BF050](v1, 0x10B3C4063A2C955);
LABEL_5:

    JUMPOUT(0x2743BF050);
  }

  operator delete(*(v1 + 128));
  goto LABEL_4;
}

uint64_t sub_271726AC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **v1;
  v3 = __dynamic_cast(v1, &unk_28811DD38, &unk_28811DED8, 0);
  m = (v3 + 8);
  v7.__m_ = (v3 + 8);
  v7.__owns_ = 1;
  std::mutex::lock((v3 + 8));
  if (v3[120])
  {
    v3[120] = 0;
LABEL_6:
    std::mutex::unlock(m);
    return 1;
  }

  do
  {
    std::condition_variable::wait((v3 + 72), &v7);
  }

  while (v3[120] != 1);
  owns = v7.__owns_;
  v3[120] = 0;
  if (owns)
  {
    m = v7.__m_;
    goto LABEL_6;
  }

  return 1;
}

uint64_t *sub_271726B88(uint64_t *result)
{
  if (result)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
      v1 = vars8;
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

void sub_271726E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271726E54(void *a1, std::mutex *this, int a3)
{
  std::mutex::lock(this);
  if (a3 == 1)
  {
    if (BYTE4(this[1].__m_.__sig) != 1 || (this[1].__m_.__sig & 0xFFFFFFFD) != 0)
    {
      LODWORD(this[1].__m_.__sig) = 1;
      BYTE4(this[1].__m_.__sig) = 1;
      goto LABEL_18;
    }

    LODWORD(this[1].__m_.__sig) = 2;
    BYTE4(this[1].__m_.__sig) = 1;
    *a1 = 0;
    a1[1] = 0;
    v7 = *&this[1].__m_.__opaque[8];
    if (!v7)
    {
LABEL_18:
      operator new();
    }
  }

  else
  {
    LODWORD(this[1].__m_.__sig) = a3;
    BYTE4(this[1].__m_.__sig) = 1;
    if (a3 != 2)
    {
      goto LABEL_18;
    }

    *a1 = 0;
    a1[1] = 0;
    v7 = *&this[1].__m_.__opaque[8];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v8 = std::__shared_weak_count::lock(v7);
  a1[1] = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = *this[1].__m_.__opaque;
  *a1 = v9;
  if (!v9)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_18;
  }

  std::mutex::unlock(this);
}

void sub_271726FF8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_27172702C(std::mutex *this, uint64_t a2)
{
  sub_271726E54(&v63, this, 3);
  (*(*a2 + 16))(__p, a2);
  if (v61 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v61 >= 0)
  {
    v5 = HIBYTE(v61);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_2711284DC(&v65, v4, v5);
  v7 = &this[2].__m_.__opaque[16];
  v8 = v62;
  v9 = (((v6 + 2654435769u) >> 2) + ((v6 + 2654435769u) << 6) + v62 + 2654435769) ^ (v6 + 2654435769u);
  v10 = *&this[2].__m_.__opaque[24];
  v59 = a2;
  if (!*&v10)
  {
    goto LABEL_49;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = (((v6 + 2654435769u) >> 2) + ((v6 + 2654435769u) << 6) + v62 + 2654435769) ^ (v6 + 2654435769u);
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*v7 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_49:
    operator new();
  }

  v15 = HIBYTE(v61);
  if (v61 >= 0)
  {
    v16 = HIBYTE(v61);
  }

  else
  {
    v16 = __p[1];
  }

  if (v61 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v22 = v14[1];
      if (v22 == v9)
      {
        v23 = *(v14 + 39);
        v24 = v23;
        if ((v23 & 0x80u) != 0)
        {
          v23 = v14[3];
        }

        if (v23 == v16)
        {
          v25 = v24 >= 0 ? v14 + 2 : v14[2];
          if (!memcmp(v25, v17, v16) && *(v14 + 20) == v8)
          {
            v7 = &this[2].__m_.__opaque[16];
            goto LABEL_50;
          }
        }
      }

      else if ((v22 & (*&v10 - 1)) != v12)
      {
        goto LABEL_49;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v18 = v14[1];
    if (v18 == v9)
    {
      break;
    }

    if (v18 >= *&v10)
    {
      v18 %= *&v10;
    }

    if (v18 != v12)
    {
      goto LABEL_49;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_49;
    }
  }

  v19 = *(v14 + 39);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v14[3];
  }

  if (v19 != v16)
  {
    goto LABEL_24;
  }

  v21 = v20 >= 0 ? v14 + 2 : v14[2];
  if (memcmp(v21, v17, v16) || *(v14 + 20) != v8)
  {
    goto LABEL_24;
  }

LABEL_50:
  if (v15 < 0)
  {
    operator delete(__p[0]);
    v26 = v14[15];
    v27 = v14 + 16;
    if (v26 == v14 + 16)
    {
      goto LABEL_85;
    }

    while (1)
    {
LABEL_56:
      v28 = (*(*v26[4] + 16))(v26[4]);
      if (*(v28 + 23) < 0)
      {
        v30 = v28;
        sub_271127178(__p, *v28, *(v28 + 8));
        v28 = v30;
      }

      else
      {
        v29 = *v28;
        v61 = *(v28 + 16);
        *__p = v29;
      }

      v62 = *(v28 + 24);
      v31 = (*(*v26[4] + 16))(v26[4]);
      LOBYTE(v65) = 2;
      v32 = v14[14];
      if (!v32)
      {
        sub_27112AFFC();
      }

      (*(*v32 + 48))(v32, v31, &v65);
      v65 = __p;
      v33 = sub_27172A96C(&this[3], __p);
      v34 = v33[8];
      if (v34)
      {
        v35 = v33 + 8;
        v36 = v33[8];
        do
        {
          v37 = *(v36 + 32);
          v38 = v37 >= v62;
          v39 = v37 < v62;
          if (v38)
          {
            v35 = v36;
          }

          v36 = *(v36 + 8 * v39);
        }

        while (v36);
        if (v35 != v33 + 8 && v62 >= *(v35 + 16))
        {
          v40 = v35[1];
          v41 = v35;
          if (v40)
          {
            do
            {
              v42 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v42 = v41[2];
              v43 = *v42 == v41;
              v41 = v42;
            }

            while (!v43);
          }

          if (v33[7] == v35)
          {
            v33[7] = v42;
          }

          --v33[9];
          sub_271128F64(v34, v35);
          operator delete(v35);
        }
      }

      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
        v44 = v26[1];
        if (v44)
        {
          do
          {
LABEL_80:
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
          goto LABEL_55;
        }
      }

      else
      {
        v44 = v26[1];
        if (v44)
        {
          goto LABEL_80;
        }
      }

      do
      {
        v45 = v26[2];
        v43 = *v45 == v26;
        v26 = v45;
      }

      while (!v43);
LABEL_55:
      v26 = v45;
      if (v45 == v27)
      {
        goto LABEL_85;
      }
    }
  }

  v26 = v14[15];
  v27 = v14 + 16;
  if (v26 != v14 + 16)
  {
    goto LABEL_56;
  }

LABEL_85:
  (*(*v59 + 16))(__p);
  v46 = sub_27172AB1C(v7, __p);
  if (v46)
  {
    v47 = *&this[2].__m_.__opaque[24];
    v48 = v46[1];
    v49 = vcnt_s8(v47);
    v49.i16[0] = vaddlv_u8(v49);
    if (v49.u32[0] > 1uLL)
    {
      if (v48 >= *&v47)
      {
        v48 = (v48 % *&v47);
      }
    }

    else
    {
      v48 = ((*&v47 - 1) & v48);
    }

    v50 = *v7;
    v51 = *(*v7 + 8 * v48);
    do
    {
      v52 = v51;
      v51 = *v51;
    }

    while (v51 != v46);
    if (v52 == &this[2].__m_.__opaque[32])
    {
      goto LABEL_103;
    }

    v53 = v52[1];
    if (v49.u32[0] > 1uLL)
    {
      if (v53 >= *&v47)
      {
        v53 = (v53 % *&v47);
      }
    }

    else
    {
      v53 = (v53 & (*&v47 - 1));
    }

    if (v53 != v48)
    {
LABEL_103:
      if (!*v46)
      {
        goto LABEL_104;
      }

      v54 = (*v46)[1];
      if (v49.u32[0] > 1uLL)
      {
        if (v54 >= *&v47)
        {
          v54 %= *&v47;
        }
      }

      else
      {
        v54 &= *&v47 - 1;
      }

      if (v54 != v48)
      {
LABEL_104:
        *(v50 + 8 * v48) = 0;
      }
    }

    v55 = *v46;
    if (*v46)
    {
      v56 = v55[1];
      if (v49.u32[0] > 1uLL)
      {
        if (v56 >= *&v47)
        {
          v56 = (v56 % *&v47);
        }
      }

      else
      {
        v56 = (v56 & (*&v47 - 1));
      }

      if (v56 != v48)
      {
        *(v50 + 8 * v56) = v52;
        v55 = *v46;
      }
    }

    *v52 = v55;
    *v46 = 0;
    --*&this[2].__m_.__opaque[40];
    v57 = v46;
    sub_27172A648((v46 + 2));
    operator delete(v57);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  v58 = v64;
  if (v64)
  {
    if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v58->__on_zero_shared)(v58);
      std::__shared_weak_count::__release_weak(v58);
    }
  }
}

void sub_2717278D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  sub_27172A5FC(&a21);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_271727950(std::mutex *this, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, char a6)
{
  sub_271726E54(&v59, this, 0);
  (*(*a2 + 16))(v57, a2);
  v12 = sub_27172AB1C(&this[2].__m_.__opaque[16], v57);
  if (v12)
  {
    v13 = v12;
    v50 = 1;
    v49 = &unk_28810CBA8;
    v51 = &unk_28810CCF0;
    sub_27172C134(a3, 0, &v52);
    *&v53 = 0;
    *(&v53 + 1) = v52.n128_u64[1] - v52.n128_u64[0];
    *v54 = 0u;
    *v55 = 0u;
    v56 = 0u;
    v46[0] = 0;
    v47 = 0;
    v48 = 0;
    sub_27172AD14(&v49, v46);
    v14 = v13[15];
    v15 = v13 + 16;
    if (v14 != v13 + 16)
    {
      v16 = 0;
      do
      {
        if ((a6 & 1) == 0)
        {
          goto LABEL_43;
        }

        v17 = (*(*v14[4] + 16))(v14[4]);
        v18 = v17;
        v19 = *(v17 + 23);
        if (v19 >= 0)
        {
          v20 = *(v17 + 23);
        }

        else
        {
          v20 = v17[1];
        }

        v21 = *(a5 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = a5[1];
        }

        if (v20 == v21)
        {
          if (v19 < 0)
          {
            v17 = *v17;
          }

          v23 = *a5;
          v24 = v22 >= 0 ? a5 : *a5;
          if (!memcmp(v17, v24, v20) && *(v18 + 12) == *(a5 + 12))
          {
LABEL_43:
            if (v16 == (v13[17] - 1))
            {
              v25 = v14[8];
              if (!v25)
              {
                sub_27112AFFC();
              }

              (*(*v25 + 48))(v25, v57, &v49);
            }

            else
            {
              v35[0] = &unk_28810CBA8;
              v35[1] = v50;
              v35[2] = &unk_28810CCF0;
              v37 = 0;
              v38 = 0;
              v36 = 0;
              if (v52.n128_u64[1] != v52.n128_u64[0])
              {
                if (((v52.n128_u64[1] - v52.n128_u64[0]) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_2711BE688();
              }

              v39 = v53;
              v41 = 0;
              v42 = 0;
              v40 = 0;
              if (v54[1] != v54[0])
              {
                if (((v54[1] - v54[0]) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_2711EB2F8();
              }

              __p = 0;
              v44 = 0;
              v45 = 0;
              if (v56 != v55[1])
              {
                if (((v56 - v55[1]) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_27172A554();
              }

              v26 = v14[8];
              if (!v26)
              {
                sub_27112AFFC();
              }

              (*(*v26 + 48))(v26, v57, v35);
              if (__p)
              {
                v44 = __p;
                operator delete(__p);
              }

              v15 = v13 + 16;
              if (v40)
              {
                v41 = v40;
                operator delete(v40);
              }

              if (v36)
              {
                v37 = v36;
                operator delete(v36);
              }
            }

            if (a4 == 2)
            {
              v27 = v14[4];
              if (v27)
              {
                v28 = **v27;
                v29 = __dynamic_cast(v27, &unk_28811DD38, &unk_28811DED8, 0);
              }

              else
              {
                v29 = 0;
              }

              std::mutex::lock((v29 + 8));
              v29[120] = 1;
              std::condition_variable::notify_all((v29 + 72));
              std::mutex::unlock((v29 + 8));
            }

            if (a6)
            {
              break;
            }
          }
        }

        v30 = v14[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v14[2];
            v32 = *v31 == v14;
            v14 = v31;
          }

          while (!v32);
        }

        v16 = (v16 + 1);
        v14 = v31;
      }

      while (v31 != v15);
    }

    if (v55[1])
    {
      *&v56 = v55[1];
      operator delete(v55[1]);
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    if (v52.n128_u64[0])
    {
      v52.n128_u64[1] = v52.n128_u64[0];
      operator delete(v52.n128_u64[0]);
    }
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  v33 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  return 1;
}

void sub_271727EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_271731568(&a28);
  if (*(v28 - 113) < 0)
  {
    operator delete(*(v28 - 136));
  }

  sub_27112F828(v28 - 104);
  _Unwind_Resume(a1);
}

void sub_271727F98(std::mutex *this, unint64_t a2)
{
  sub_271726E54(&v33, this, 3);
  v4 = (*(*a2 + 16))(a2);
  if (*(v4 + 23) < 0)
  {
    v6 = v4;
    sub_271127178(__p, *v4, *(v4 + 8));
    v4 = v6;
  }

  else
  {
    v5 = *v4;
    v31 = *(v4 + 16);
    *__p = v5;
  }

  v32 = *(v4 + 24);
  v35 = __p;
  v7 = sub_27172A96C(&this[3], __p);
  v8 = v7[8];
  if (v8)
  {
    v9 = v7 + 8;
    v10 = v7[8];
    do
    {
      v11 = *(v10 + 32);
      v12 = v11 >= v32;
      v13 = v11 < v32;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *(v10 + 8 * v13);
    }

    while (v10);
    if (v9 != v7 + 8 && v32 >= *(v9 + 16))
    {
      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v16 = v9;
        do
        {
          v15 = v16[2];
          v17 = *v15 == v16;
          v16 = v15;
        }

        while (!v17);
      }

      if (v7[7] == v9)
      {
        v7[7] = v15;
      }

      --v7[9];
      sub_271128F64(v8, v9);
      operator delete(v9);
    }
  }

  for (i = *&this[2].__m_.__opaque[32]; i; i = *i)
  {
    v19 = i[16];
    if (v19)
    {
      v20 = i + 16;
      do
      {
        v21 = v19[4];
        v12 = v21 >= a2;
        v22 = v21 < a2;
        if (v12)
        {
          v20 = v19;
        }

        v19 = v19[v22];
      }

      while (v19);
      if (v20 != i + 16 && v20[4] <= a2)
      {
        LOBYTE(v35) = 2;
        v23 = i[14];
        if (!v23)
        {
          sub_27112AFFC();
        }

        (*(*v23 + 48))(v23, __p, &v35);
        v24 = v20[1];
        v25 = v20;
        if (v24)
        {
          do
          {
            v26 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v26 = v25[2];
            v17 = *v26 == v25;
            v25 = v26;
          }

          while (!v17);
        }

        if (i[15] == v20)
        {
          i[15] = v26;
        }

        v27 = i[16];
        --i[17];
        sub_271128F64(v27, v20);
        v28 = v20[8];
        if (v28 == v20 + 5)
        {
          (*(*v28 + 32))(v28);
        }

        else if (v28)
        {
          (*(*v28 + 40))(v28);
        }

        operator delete(v20);
      }
    }
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v29 = v34;
  if (v34)
  {
    if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }
}

void sub_2717282B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_2717282F4(std::mutex *this, uint64_t a2, uint64_t a3)
{
  sub_271726E54(&v21, this, 1);
  v6 = (*(*a2 + 24))(a2);
  v7 = sub_27172AB1C(&this[2].__m_.__opaque[16], v6);
  if (v7)
  {
    v8 = v7;
    v14[1] = 1;
    v14[0] = &unk_28810CBA8;
    v14[2] = &unk_28810CCF0;
    sub_27172C134(a3, 0, &v15);
    v16 = 0;
    v17 = v15.n128_u64[1] - v15.n128_u64[0];
    *v18 = 0u;
    *__p = 0u;
    v20 = 0u;
    sub_27172AD14(v14, v13);
    v9 = (*(*a2 + 16))(a2);
    v10 = v8[10];
    if (!v10)
    {
      sub_27112AFFC();
    }

    (*(*v10 + 48))(v10, v9, v14);
    if (__p[1])
    {
      *&v20 = __p[1];
      operator delete(__p[1]);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }

    if (v15.n128_u64[0])
    {
      v15.n128_u64[1] = v15.n128_u64[0];
      operator delete(v15.n128_u64[0]);
    }
  }

  v11 = v22;
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  return 1;
}

void sub_271728504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271731568(va);
  sub_27112F828(v3 - 48);
  _Unwind_Resume(a1);
}

std::string::size_type sub_271728520(std::string::size_type a1, int a2, std::string *a3, __int128 *a4, std::mutex *this)
{
  v70[3] = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810CF40;
  if (*(a4 + 24) == 1)
  {
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      v9 = *a4;
      *(a1 + 24) = *(a4 + 2);
      *(a1 + 8) = v9;
      *(a1 + 32) = a2;
      *(a1 + 40) = this;
      v11 = &a3[1];
      data = a3[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        goto LABEL_4;
      }

LABEL_7:
      if (data == a3)
      {
        v52 = v51;
        (*(data->__r_.__value_.__r.__words[0] + 24))(data, v51);
        p_size = &a3[2].__r_.__value_.__l.__size_;
        size = a3[2].__r_.__value_.__l.__size_;
        if (size)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v52 = data;
        v11->__words[0] = 0;
        p_size = &a3[2].__r_.__value_.__l.__size_;
        size = a3[2].__r_.__value_.__l.__size_;
        if (size)
        {
          goto LABEL_11;
        }
      }

LABEL_9:
      p_size = &v54;
      goto LABEL_13;
    }

    sub_271127178((a1 + 8), *a4, *(a4 + 1));
    *(a1 + 32) = a2;
    *(a1 + 40) = this;
    v11 = &a3[1];
    data = a3[1].__r_.__value_.__l.__data_;
    if (data)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a1 + 31) = 9;
    strcpy((a1 + 8), "localhost");
    *(a1 + 32) = a2;
    *(a1 + 40) = this;
    v11 = &a3[1];
    data = a3[1].__r_.__value_.__l.__data_;
    if (data)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  v52 = 0;
  p_size = &a3[2].__r_.__value_.__l.__size_;
  size = a3[2].__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (size == &a3[1].__r_.__value_.__r.__words[1])
  {
    v54 = v53;
    (*(*size + 24))(size, v53);
    goto LABEL_15;
  }

  v54 = size;
LABEL_13:
  *p_size = 0;
LABEL_15:
  sub_271726E54(&v48, this, 3);
  (*(*a1 + 16))(&__p, a1);
  v14 = sub_27172AB1C(&this[2].__m_.__opaque[16], &__p);
  if (v14)
  {
    goto LABEL_16;
  }

  v55.__r_.__value_.__r.__words[0] = a1;
  if (v52)
  {
    if (v52 == v51)
    {
      v56 = &v55.__r_.__value_.__r.__words[1];
      (*(v52->__r_.__value_.__r.__words[0] + 24))();
    }

    else
    {
      v56 = v52;
      v52 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  if (v54)
  {
    if (v54 == v53)
    {
      v58 = v57;
      (*(*v54 + 24))();
    }

    else
    {
      v58 = v54;
      v54 = 0;
    }
  }

  else
  {
    v58 = 0;
  }

  v60 = 0;
  v61 = 0;
  v59 = &v60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v62, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = __p;
  }

  v63 = v47;
  v64 = v55.__r_.__value_.__r.__words[0];
  if (v56)
  {
    if (v56 == &v55.__r_.__value_.__r.__words[1])
    {
      v66 = v65;
      (*(v56->__r_.__value_.__r.__words[0] + 24))();
    }

    else
    {
      v66 = v56;
      v56 = 0;
    }
  }

  else
  {
    v66 = 0;
  }

  if (v58)
  {
    if (v58 == v57)
    {
      v68 = v67;
      (*(*v58 + 24))();
    }

    else
    {
      v68 = v58;
      v58 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = v59;
  v70[0] = v60;
  v70[1] = v61;
  if (v61)
  {
    v60[2] = v70;
    v59 = &v60;
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v69 = v70;
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v62;
  }

  else
  {
    v20 = v62.__r_.__value_.__r.__words[0];
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v62.__r_.__value_.__l.__size_;
  }

  v22 = sub_2711284DC(&v50, v20, v21);
  v23 = v63;
  v24 = (((v22 + 2654435769u) >> 2) + ((v22 + 2654435769u) << 6) + v63 + 2654435769) ^ (v22 + 2654435769u);
  v25 = *&this[2].__m_.__opaque[24];
  if (!*&v25)
  {
    goto LABEL_108;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = (((v22 + 2654435769u) >> 2) + ((v22 + 2654435769u) << 6) + v63 + 2654435769) ^ (v22 + 2654435769u);
    if (v24 >= *&v25)
    {
      v27 = v24 % *&v25;
    }
  }

  else
  {
    v27 = v24 & (*&v25 - 1);
  }

  v28 = *(*&this[2].__m_.__opaque[16] + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_108:
    operator new();
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v62.__r_.__value_.__l.__size_;
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v62;
  }

  else
  {
    v31 = v62.__r_.__value_.__r.__words[0];
  }

  if (v26.u32[0] < 2uLL)
  {
    while (1)
    {
      v36 = v29[1];
      if (v36 == v24)
      {
        v37 = *(v29 + 39);
        v38 = v37;
        if (v37 < 0)
        {
          v37 = v29[3];
        }

        if (v37 == v30)
        {
          v39 = v38 >= 0 ? (v29 + 2) : v29[2];
          if (!memcmp(v39, v31, v30) && *(v29 + 20) == v23)
          {
            goto LABEL_109;
          }
        }
      }

      else if ((v36 & (*&v25 - 1)) != v27)
      {
        goto LABEL_108;
      }

      v29 = *v29;
      if (!v29)
      {
        goto LABEL_108;
      }
    }
  }

  while (1)
  {
    v32 = v29[1];
    if (v32 == v24)
    {
      break;
    }

    if (v32 >= *&v25)
    {
      v32 %= *&v25;
    }

    if (v32 != v27)
    {
      goto LABEL_108;
    }

LABEL_83:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_108;
    }
  }

  v33 = *(v29 + 39);
  v34 = v33;
  if (v33 < 0)
  {
    v33 = v29[3];
  }

  if (v33 != v30)
  {
    goto LABEL_83;
  }

  v35 = v34 >= 0 ? (v29 + 2) : v29[2];
  if (memcmp(v35, v31, v30) || *(v29 + 20) != v23)
  {
    goto LABEL_83;
  }

LABEL_109:
  sub_27172A48C(v70[0]);
  if (v68 == v67)
  {
    (*(*v68 + 32))(v68);
    v14 = 0;
    v40 = v66;
    if (v66 != v65)
    {
      goto LABEL_113;
    }

LABEL_123:
    (*(v40->__r_.__value_.__r.__words[0] + 32))(v40);
    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_124;
  }

  v14 = 0;
  if (v68)
  {
    (*(*v68 + 40))();
  }

  v40 = v66;
  if (v66 == v65)
  {
    goto LABEL_123;
  }

LABEL_113:
  if (v40)
  {
    (*(v40->__r_.__value_.__r.__words[0] + 40))(v40);
  }

  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_116:
    sub_27172A48C(v60);
    v41 = v58;
    if (v58 != v57)
    {
      goto LABEL_117;
    }

LABEL_125:
    (*(*v41 + 32))(v41);
    v42 = v56;
    if (v56 == &v55.__r_.__value_.__r.__words[1])
    {
      goto LABEL_126;
    }

LABEL_120:
    if (v42)
    {
      (*(v42->__r_.__value_.__r.__words[0] + 40))(v42);
    }

    goto LABEL_16;
  }

LABEL_124:
  operator delete(v62.__r_.__value_.__l.__data_);
  sub_27172A48C(v60);
  v41 = v58;
  if (v58 == v57)
  {
    goto LABEL_125;
  }

LABEL_117:
  if (v41)
  {
    (*(*v41 + 40))(v41);
  }

  v42 = v56;
  if (v56 != &v55.__r_.__value_.__r.__words[1])
  {
    goto LABEL_120;
  }

LABEL_126:
  (*(v42->__r_.__value_.__r.__words[0] + 32))(v42);
LABEL_16:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = v49;
    if (!v49)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = v49;
    if (!v49)
    {
LABEL_24:
      v16 = v54;
      if (v54 != v53)
      {
        goto LABEL_25;
      }

LABEL_31:
      (*(*v16 + 32))(v16);
      v17 = v52;
      if (v52 == v51)
      {
        goto LABEL_32;
      }

LABEL_28:
      if (v17)
      {
        (*(v17->__r_.__value_.__r.__words[0] + 40))(v17);
      }

      goto LABEL_33;
    }
  }

  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_24;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  v16 = v54;
  if (v54 == v53)
  {
    goto LABEL_31;
  }

LABEL_25:
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  v17 = v52;
  if (v52 != v51)
  {
    goto LABEL_28;
  }

LABEL_32:
  (*(v17->__r_.__value_.__r.__words[0] + 32))(v17);
LABEL_33:
  if (v14)
  {
    std::to_string(&v55, a2);
    sub_2714D199C("Failed to start server on port ", &v55, &v62);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v44 = &exception->__vftable;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v62;
    }

    else
    {
      v45 = v62.__r_.__value_.__r.__words[0];
    }

    std::logic_error::logic_error(exception, v45);
    *v44 = MEMORY[0x277D828F8] + 16;
    __cxa_throw(v44, off_279E2F410, MEMORY[0x277D82610]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271729238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271729330(uint64_t a1)
{
  sub_27172702C(*(a1 + 40), a1);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_271729384(uint64_t a1)
{
  sub_27172702C(*(a1 + 40), a1);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

char *sub_2717293E8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[31] < 0)
  {
    result = sub_271127178(a2, *(result + 1), *(result + 2));
    *(a2 + 24) = *(v2 + 16);
  }

  else
  {
    *a2 = *(result + 8);
    *(a2 + 16) = *(result + 3);
    *(a2 + 24) = *(result + 16);
  }

  return result;
}

uint64_t sub_27172944C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 40);
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  sub_271727950(v5, a1, a2, v6, 0, 0);
  return 1;
}

uint64_t sub_27172948C(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 40);
  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_271727950(v6, a1, a3, v7, a2, 1);
  return 1;
}

std::string::size_type sub_2717294C4(std::string::size_type a1, __int128 *a2, int a3, int a4, uint64_t a5, uint64_t a6, std::mutex *this)
{
  v62 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810CFB8;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1018212795;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 105) = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_271127178((a1 + 128), *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(a1 + 144) = *(a2 + 2);
    *(a1 + 128) = v12;
  }

  v13 = *(a2 + 12);
  *(a1 + 160) = 0;
  v14 = (a1 + 160);
  *(a1 + 152) = v13;
  *(a1 + 183) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = this;
  v15 = *(a5 + 24);
  if (v15)
  {
    if (v15 == a5)
    {
      v58 = v57;
      (*(*v15 + 24))(v15, v57);
    }

    else
    {
      v58 = *(a5 + 24);
      *(a5 + 24) = 0;
    }
  }

  else
  {
    v58 = 0;
  }

  v48.__r_.__value_.__s.__data_[0] = 0;
  v49 = 0;
  if (*(a6 + 24) == 1)
  {
    if (*(a6 + 23) < 0)
    {
      sub_271127178(&v48, *a6, *(a6 + 8));
    }

    else
    {
      v48 = *a6;
    }

    v49 = 1;
  }

  sub_271726E54(&v54, this, 3);
  v16 = (*(*a1 + 24))(a1);
  v17 = sub_27172AB1C(&this[2].__m_.__opaque[16], v16);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v20 = v17 + 16;
  v19 = v17[16];
  if (v19)
  {
    v21 = v17 + 16;
    v22 = v17[16];
    do
    {
      v23 = v22[4];
      v24 = v23 >= a1;
      v25 = v23 < a1;
      if (v24)
      {
        v21 = v22;
      }

      v22 = v22[v25];
    }

    while (v22);
    if (v21 != v20 && v21[4] <= a1)
    {
LABEL_27:
      v50.__r_.__value_.__s.__data_[0] = 0;
      v52 = 0;
      v27 = v55;
      if (!v55)
      {
        goto LABEL_92;
      }

      goto LABEL_90;
    }
  }

  v59.__r_.__value_.__r.__words[0] = a1;
  if (!v58)
  {
    v61 = 0;
    v26 = a1;
    if (v19)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator new();
  }

  if (v58 != v57)
  {
    v61 = v58;
    v58 = 0;
    v26 = a1;
    if (v19)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  v61 = &v59.__r_.__value_.__r.__words[1];
  (*(v58->__r_.__value_.__r.__words[0] + 24))();
  v26 = v59.__r_.__value_.__r.__words[0];
  v19 = *v20;
  if (!*v20)
  {
    goto LABEL_37;
  }

  while (1)
  {
LABEL_34:
    while (1)
    {
      v28 = v19;
      v29 = v19[4];
      if (v29 <= v26)
      {
        break;
      }

      v19 = *v28;
      if (!*v28)
      {
        goto LABEL_37;
      }
    }

    if (v29 >= v26)
    {
      break;
    }

    v19 = v28[1];
    if (!v19)
    {
      goto LABEL_37;
    }
  }

  if (v61 != &v59.__r_.__value_.__r.__words[1])
  {
    if (v61)
    {
      (*(v61->__r_.__value_.__r.__words[0] + 40))();
    }

    if (v49 == 1)
    {
      goto LABEL_42;
    }

LABEL_45:
    *(&v59.__r_.__value_.__s + 23) = 9;
    strcpy(&v59, "localhost");
    goto LABEL_47;
  }

  (*(v61->__r_.__value_.__r.__words[0] + 32))(v61);
  if (v49 != 1)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v59, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v48;
  }

LABEL_47:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v59.__r_.__value_.__l.__size_ != 9 || (*v59.__r_.__value_.__l.__data_ == 0x736F686C61636F6CLL ? (v31 = *(v59.__r_.__value_.__r.__words[0] + 8) == 116) : (v31 = 0), !v31))
    {
      sub_271127178(&__p, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
      if ((*(&v59.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) != 9 || (v59.__r_.__value_.__r.__words[0] == 0x736F686C61636F6CLL ? (v30 = v59.__r_.__value_.__s.__data_[8] == 116) : (v30 = 0), !v30))
  {
    __p = v59;
    goto LABEL_61;
  }

  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "127.0.0.1");
  if ((*(&v59.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_60:
    operator delete(v59.__r_.__value_.__l.__data_);
  }

LABEL_61:
  v59.__r_.__value_.__r.__words[0] = &__p;
  v32 = sub_27172A96C(&this[3], &__p.__r_.__value_.__l.__data_);
  v34 = v32 + 8;
  v33 = v32[8];
  if (v33)
  {
    for (i = -15536; ; ++i)
    {
      v36 = v32 + 8;
      v37 = v32[8];
      do
      {
        v38 = *(v37 + 32);
        v24 = v38 >= i;
        v39 = v38 < i;
        if (v24)
        {
          v36 = v37;
        }

        v37 = *(v37 + 8 * v39);
      }

      while (v37);
      if (v36 == v34 || *(v36 + 16) > i)
      {
        break;
      }
    }
  }

  else
  {
    i = -15536;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v59 = __p;
    v60 = i;
    if (v33)
    {
      goto LABEL_78;
    }

LABEL_81:
    operator new();
  }

  sub_271127178(&v59, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  v33 = *v34;
  v60 = i;
  if (!v33)
  {
    goto LABEL_81;
  }

  while (1)
  {
LABEL_78:
    while (1)
    {
      v40 = v33;
      v41 = *(v33 + 32);
      if (v41 <= i)
      {
        break;
      }

      v33 = *v40;
      if (!*v40)
      {
        goto LABEL_81;
      }
    }

    if (v41 >= i)
    {
      break;
    }

    v33 = v40[1];
    if (!v33)
    {
      goto LABEL_81;
    }
  }

  v42 = (*(*a1 + 16))(a1);
  v56 = 1;
  v43 = v18[14];
  if (!v43)
  {
    sub_27112AFFC();
  }

  (*(*v43 + 48))(v43, v42, &v56);
  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v50 = v59;
    v51 = v60;
    v52 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_85;
    }

LABEL_89:
    v27 = v55;
    if (!v55)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  sub_271127178(&v50, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  v51 = v60;
  v52 = 1;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_89;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_85:
  operator delete(__p.__r_.__value_.__l.__data_);
  v27 = v55;
  if (!v55)
  {
    goto LABEL_92;
  }

LABEL_90:
  if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_92:
  if (v49 == 1 && SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v58 == v57)
  {
    (*(v58->__r_.__value_.__r.__words[0] + 32))(v58);
  }

  else if (v58)
  {
    (*(v58->__r_.__value_.__r.__words[0] + 40))();
  }

  if (v52 != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271725EB4("Client failed to connect to server at '");
  }

  if (v14 != &v50)
  {
    if (*(a1 + 183) < 0)
    {
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v50;
      }

      else
      {
        v44 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      sub_2711289F8((a1 + 160), v44, size);
    }

    else if ((*(&v50.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_271128928((a1 + 160), v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v14->__r_.__value_.__l.__data_ = *&v50.__r_.__value_.__l.__data_;
      *(a1 + 176) = *(&v50.__r_.__value_.__l + 2);
    }
  }

  *(a1 + 184) = v51;
  if (v52 == 1 && SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v46 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271729E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_271729F54(unint64_t a1)
{
  sub_271727F98(*(a1 + 192), a1);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator delete(*(a1 + 128));
    goto LABEL_3;
  }

  if (*(a1 + 151) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  std::condition_variable::~condition_variable((a1 + 72));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_271729FC4(unint64_t a1)
{
  sub_271727F98(*(a1 + 192), a1);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 128));
LABEL_3:
  std::condition_variable::~condition_variable((a1 + 72));
  std::mutex::~mutex((a1 + 8));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27172A08C(char **a1)
{
  v1 = **a1;
  v2 = __dynamic_cast(a1, &unk_28811DD38, &unk_28811DED8, 0);
  m = (v2 + 8);
  v6.__m_ = (v2 + 8);
  v6.__owns_ = 1;
  std::mutex::lock((v2 + 8));
  if (v2[120])
  {
    v2[120] = 0;
LABEL_6:
    std::mutex::unlock(m);
    return 1;
  }

  do
  {
    std::condition_variable::wait((v2 + 72), &v6);
  }

  while (v2[120] != 1);
  owns = v6.__owns_;
  v2[120] = 0;
  if (owns)
  {
    m = v6.__m_;
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_27172A150(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 3;
  *(a1 + 68) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  MEMORY[0x2743BE940](a1 + 88);
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  return a1;
}

void sub_27172A1D4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void sub_27172A214(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27172A274(uint64_t a1)
{
  sub_27172A48C(*(a1 + 112));
  v2 = a1 + 40;
  v3 = *(a1 + 96);
  if (v3 == a1 + 72)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 64);
    if (v4 != v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 64);
    if (v4 != v2)
    {
LABEL_5:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_11;
    }
  }

  (*(*v4 + 32))(v4);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*a1);
  return a1;
}

uint64_t sub_27172A38C(uint64_t a1)
{
  sub_27172A48C(*(a1 + 80));
  v2 = a1 + 8;
  v3 = *(a1 + 64);
  if (v3 != a1 + 40)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 32);
    if (v4 != v2)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 32);
  if (v4 == v2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void sub_27172A48C(void *a1)
{
  if (a1)
  {
    sub_27172A48C(*a1);
    sub_27172A48C(a1[1]);
    v2 = a1[8];
    if (v2 == a1 + 5)
    {
      (*(*v2 + 32))(v2);
      v3 = a1;
    }

    else
    {
      if (v2)
      {
        (*(*v2 + 40))(v2);
      }

      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t sub_27172A56C(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t sub_27172A5FC(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_27172A648(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_27172A648(uint64_t a1)
{
  sub_27172A48C(*(a1 + 112));
  v2 = a1 + 40;
  v3 = *(a1 + 96);
  if (v3 == a1 + 72)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 64);
    if (v4 != v2)
    {
      goto LABEL_5;
    }

LABEL_10:
    (*(*v4 + 32))(v4);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 64);
  if (v4 == v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  if (*(a1 + 23) < 0)
  {
LABEL_11:
    v5 = *a1;

    operator delete(v5);
  }
}

uint64_t sub_27172A7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3net15ServerCallbacks13data_receivedMUlDpOT_E_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3net15ServerCallbacks13data_receivedMUlDpOT_E_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3net15ServerCallbacks13data_receivedMUlDpOT_E_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3net15ServerCallbacks13data_receivedMUlDpOT_E_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27172A8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3net15ServerCallbacks18connection_changedMUlDpOT_E_E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3net15ServerCallbacks18connection_changedMUlDpOT_E_E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3net15ServerCallbacks18connection_changedMUlDpOT_E_E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3net15ServerCallbacks18connection_changedMUlDpOT_E_E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_27172A96C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_27172AB08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2714D97C0(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_27172AB1C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_2711284DC(&v26, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v2[12];
  v9 = (((v6 + 2654435769u) >> 2) + ((v6 + 2654435769u) << 6) + v8 + 2654435769) ^ (v6 + 2654435769u);
  v10 = vcnt_s8(v7);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (((v6 + 2654435769u) >> 2) + ((v6 + 2654435769u) << 6) + v8 + 2654435769) ^ (v6 + 2654435769u);
    if (v9 >= *&v7)
    {
      v11 = v9 % *&v7;
    }
  }

  else
  {
    v11 = v9 & (*&v7 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = *(v2 + 23);
    if (v14 >= 0)
    {
      v15 = *(v2 + 23);
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    if (v10.u32[0] < 2uLL)
    {
      v16 = *&v7 - 1;
      while (1)
      {
        v21 = v13[1];
        if (v21 == v9)
        {
          v22 = *(v13 + 39);
          v23 = v22;
          if (v22 < 0)
          {
            v22 = v13[3];
          }

          if (v22 == v15)
          {
            v24 = v23 >= 0 ? (v13 + 2) : v13[2];
            if (!memcmp(v24, v2, v15) && *(v13 + 20) == v8)
            {
              return v13;
            }
          }
        }

        else if ((v21 & v16) != v11)
        {
          return 0;
        }

        v13 = *v13;
        if (!v13)
        {
          return v13;
        }
      }
    }

    do
    {
      v17 = v13[1];
      if (v17 == v9)
      {
        v18 = *(v13 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v13[3];
        }

        if (v18 == v15)
        {
          v20 = v19 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v20, v2, v15) && *(v13 + 20) == v8)
          {
            return v13;
          }
        }
      }

      else
      {
        if (v17 >= *&v7)
        {
          v17 %= *&v7;
        }

        if (v17 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

void *sub_27172AD14(void *result, uint64_t a2)
{
  v3 = result[6];
  v2 = result[7];
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v4 = 0;
  }

  if (v4 <= 3)
  {
    goto LABEL_10;
  }

  v5 = result[3];
  v6 = v3 + 4;
  result[6] = v6;
  if (v2 <= v6)
  {
    goto LABEL_10;
  }

  *a2 = *(v5 + v6);
  v7 = result[7];
  v8 = result[6] + 1;
  result[6] = v8;
  v9 = v7 >= v8;
  v10 = v7 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 3 || (*(a2 + 4) = *(result[3] + v8), v11 = result[7], v12 = result[6] + 4, result[6] = v12, v11 <= v12))
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(a2 + 8) = *(result[3] + v12);
  ++result[6];
  return result;
}

void sub_27172AE90(uint64_t a1)
{
  *a1 = &unk_28810C9D0;
  *(a1 + 8) = -1;
  *(a1 + 39) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 71) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1018212795;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 850045863;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 1018212795;
  *(a1 + 185) = 0u;
  *(a1 + 264) = 850045863;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  sub_27174C01C();
}

void sub_27172B038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27174CBB4(va);
  sub_271504934(v5 + 120);
  std::mutex::~mutex(v6);
  std::thread::~thread((v5 + 48));
  std::condition_variable::~condition_variable(v5);
  std::mutex::~mutex(v4);
  std::condition_variable::~condition_variable(v3);
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_27172B0B4(uint64_t a1)
{
  std::mutex::lock((a1 + 264));
  atomic_store(0, (a1 + 81));
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    if (shutdown(*(a1 + 8), 2) < 0)
    {
      __error();
    }

    close(v2);
  }

  (*(**(a1 + 368) + 24))(*(a1 + 368));
  if (*(a1 + 256))
  {
    std::thread::join((a1 + 256));
  }

  std::condition_variable::notify_one((a1 + 488));
  *(a1 + 8) = -1;
  std::mutex::unlock((a1 + 264));
  std::condition_variable::~condition_variable((a1 + 488));
  v3 = *(a1 + 448);
  v4 = *(a1 + 456);
  if (v4 == v3)
  {
    v4 = *(a1 + 448);
    *(a1 + 480) = 0;
    v13 = 0;
  }

  else
  {
    v5 = *(a1 + 472);
    v6 = &v3[v5 / 0x24];
    v7 = *v6 + 112 * (v5 % 0x24);
    v8 = v3[(*(a1 + 480) + v5) / 0x24] + 112 * ((*(a1 + 480) + v5) % 0x24);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 11);
        if (v9)
        {
          *(v7 + 12) = v9;
          operator delete(v9);
        }

        v10 = *(v7 + 8);
        if (v10)
        {
          *(v7 + 9) = v10;
          operator delete(v10);
        }

        v11 = *(v7 + 3);
        if (v11)
        {
          *(v7 + 4) = v11;
          operator delete(v11);
        }

        v7 += 112;
        if (v7 - *v6 == 4032)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 448);
      v4 = *(a1 + 456);
    }

    *(a1 + 480) = 0;
    v13 = v4 - v3;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v3);
        v4 = *(a1 + 456);
        v3 = (*(a1 + 448) + 8);
        *(a1 + 448) = v3;
        v13 = v4 - v3;
      }

      while (v13 > 2);
    }
  }

  if (v13 == 1)
  {
    v14 = 18;
    goto LABEL_27;
  }

  if (v13 == 2)
  {
    v14 = 36;
LABEL_27:
    *(a1 + 472) = v14;
  }

  if (v3 != v4)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v4);
    v17 = *(a1 + 448);
    v16 = *(a1 + 456);
    if (v16 != v17)
    {
      *(a1 + 456) = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v18 = *(a1 + 440);
  if (v18)
  {
    operator delete(v18);
  }

  std::mutex::~mutex((a1 + 376));
  v19 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = *(a1 + 368);
    *(a1 + 368) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  v21 = *(a1 + 352);
  if (v21 == a1 + 328)
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  std::mutex::~mutex((a1 + 264));
  std::thread::~thread((a1 + 256));
  std::condition_variable::~condition_variable((a1 + 208));
  std::mutex::~mutex((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_45:
    operator delete(*(a1 + 16));
    return a1;
  }

  if (*(a1 + 39) < 0)
  {
    goto LABEL_45;
  }

  return a1;
}

void sub_27172B434(uint64_t a1)
{
  sub_27172B0B4(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27172B46C()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 1;
  v2 = socket(2, 1, 0);
  if (v2 >= 1)
  {
    operator new();
  }

  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27172B698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27172CC20(va);
  _Unwind_Resume(a1);
}

void sub_27172B6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27172CC20(va);
  _Unwind_Resume(a1);
}

void sub_27172B6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27172CC20(va);
  _Unwind_Resume(a1);
}

void sub_27172B6D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_27172B700(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) > 0 || (v14 = 16, v5 = accept(a2, &v16, &v14), v5 < 0))
  {
    result = 0;
    v3 = *MEMORY[0x277D85DE8];
    return result;
  }

  inet_ntop(2, &v16.sa_data[2], __s, 0x10u);
  v6 = *v16.sa_data;
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v7;
  if (v7)
  {
    memcpy(&v11, __s, v7);
    v9 = bswap32(v6) >> 16;
    *(&v11 + v8) = 0;
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    operator delete(*(a1 + 16));
    goto LABEL_9;
  }

  v9 = bswap32(*v16.sa_data) >> 16;
  LOBYTE(v11) = 0;
  if (*(a1 + 39) < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v9;
  *(a1 + 8) = v5;
  sub_27172B8D4(&v11, v5);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  result = 1;
  *(a1 + 80) = 1;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_27172B8D4(_WORD *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v7.sa_len = 0;
  *&v7.sa_data[6] = 0;
  v6 = 16;
  result = getsockname(a2, &v7, &v6);
  if ((result & 0x80000000) != 0)
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    a1[12] = 0;
  }

  else
  {
    inet_ntop(2, &v7.sa_data[2], __s, 0x10u);
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v4 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = result;
    if (result)
    {
      result = memcpy(a1, __s, result);
    }

    *(a1 + v4) = 0;
    a1[12] = bswap32(*v7.sa_data) >> 16;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27172BA14(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= 0)
  {
    v4 = *(a2 + 24);
    v6 = 1;
    v5 = socket(2, 1, 0);
    if ((v5 & 0x80000000) == 0)
    {
      v7 = 0;
      operator new();
    }
  }

  result = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27172BFB0(_Unwind_Exception *a1)
{
  sub_27172CC20(v1 - 136);
  sub_27172CC20(v1 - 88);
  _Unwind_Resume(a1);
}

void sub_27172BFDC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

uint64_t sub_27172C038(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a1 + 8) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  v4 = *(a2 + 24);
  v5 = 1;
  *v4 = 1;
  *(v4 + 4) = 10;
  *(v4 + 5) = v3 - v4 - 10;
  *(v4 + 9) = a3;
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    v9 = 0;
    v10 = *(a1 + 8);
    while (1)
    {
      v11 = send(v10, &v7[v9], v8 - v9, 0);
      if (v11 < 0)
      {
        break;
      }

      v9 += v11;
      if (v9 >= v8)
      {
        v5 = 1;
        goto LABEL_7;
      }
    }

    __error();
    v5 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

    return v5;
  }

LABEL_7:
  if (!v7)
  {
    return v5;
  }

LABEL_11:
  operator delete(v7);
  return v5;
}

void sub_27172C118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_27172C134@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 24);
  *v4 = 1;
  *(v4 + 4) = 10;
  *(v4 + 5) = v3 - v4 - 10;
  *(v4 + 9) = a2;
  result = *(a1 + 24);
  *a3 = result;
  a3[1].n128_u64[0] = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_27172C178(uint64_t a1, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 == a2)
      {
        p_lk = &__lk;
        (*(*v3 + 24))(v3, &__lk);
      }

      else
      {
        p_lk = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      p_lk = 0;
    }

    v4 = (a1 + 328);
    if ((a1 + 328) != &__lk)
    {
      v5 = p_lk;
      v6 = *(a1 + 352);
      if (p_lk == &__lk)
      {
        if (v6 == v4)
        {
          (*&p_lk->__m_->__m_.__opaque[16])();
          (*&p_lk->__m_->__m_.__opaque[24])(p_lk);
          p_lk = 0;
          (*(**(a1 + 352) + 24))(*(a1 + 352), &__lk);
          (*(**(a1 + 352) + 32))(*(a1 + 352));
          *(a1 + 352) = 0;
          p_lk = &__lk;
          (*(v13[0] + 24))(v13, a1 + 328);
          (*(v13[0] + 32))(v13);
          *(a1 + 352) = v4;
          v7 = p_lk;
          if (p_lk == &__lk)
          {
            goto LABEL_11;
          }
        }

        else
        {
          (*&p_lk->__m_->__m_.__opaque[16])();
          (*&p_lk->__m_->__m_.__opaque[24])(p_lk);
          p_lk = *(a1 + 352);
          v8 = p_lk;
          *(a1 + 352) = v4;
          v7 = v8;
          if (v8 == &__lk)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_17;
      }

      if (v6 != v4)
      {
        p_lk = *(a1 + 352);
        *(a1 + 352) = v5;
        v7 = v6;
        if (v6 == &__lk)
        {
LABEL_11:
          (*&v7->__m_->__m_.__opaque[24])(v7);
          goto LABEL_19;
        }

LABEL_17:
        if (v7)
        {
          (*&v7->__m_->__m_.__opaque[32])(v7);
        }

LABEL_19:
        operator new();
      }

      (*&v6->__m_->__m_.__opaque[16])(*(a1 + 352), &__lk);
      (*(**(a1 + 352) + 32))(*(a1 + 352));
      *(a1 + 352) = p_lk;
      p_lk = &__lk;
    }

    v7 = p_lk;
    if (p_lk == &__lk)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  result = 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27172C724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27172C788(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v35.__m_ = (a1 + 376);
  v35.__owns_ = 1;
  std::mutex::lock((a1 + 376));
  if ((a4 & 1) == 0)
  {
    while (!*(a1 + 480))
    {
      v9 = atomic_load((a1 + 81));
      if ((v9 & 1) == 0)
      {
        break;
      }

      std::condition_variable::wait((a1 + 488), &v35);
    }

    goto LABEL_14;
  }

  v8 = *&a3 * 1000000000.0 + std::chrono::steady_clock::now().__d_.__rep_;
  if (v8 >= 9.22337204e18)
  {
    while (1)
    {
      if (*(a1 + 480))
      {
        goto LABEL_14;
      }

      v26 = atomic_load((a1 + 81));
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v8 <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_12:
        if (!*(a1 + 480))
        {
          atomic_load((a1 + 81));
        }

        goto LABEL_14;
      }

      v27.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      if (v27.__d_.__rep_ != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

LABEL_39:
      if (v8 <= std::chrono::steady_clock::now().__d_.__rep_)
      {
        goto LABEL_12;
      }
    }

    rep = v27.__d_.__rep_;
    std::chrono::steady_clock::now();
    v29.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (v29.__d_.__rep_)
    {
      if (v29.__d_.__rep_ < 1)
      {
        if (v29.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v24 = 0x8000000000000000;
          goto LABEL_37;
        }
      }

      else if (v29.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        goto LABEL_51;
      }

      v24 = 1000 * v29.__d_.__rep_;
      if (1000 * v29.__d_.__rep_ > rep)
      {
LABEL_51:
        v25.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_38;
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_37:
    v25.__d_.__rep_ = v24 - rep + 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
    std::condition_variable::__do_timed_wait((a1 + 488), &v35, v25);
    std::chrono::steady_clock::now();
    goto LABEL_39;
  }

  if (v8 > -9.22337204e18)
  {
    while (1)
    {
      if (*(a1 + 480))
      {
        goto LABEL_14;
      }

      v32 = atomic_load((a1 + 81));
      if ((v32 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v8 <= std::chrono::steady_clock::now().__d_.__rep_)
      {
        goto LABEL_12;
      }

      v33.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v33.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_55:
      if (v8 <= std::chrono::steady_clock::now().__d_.__rep_)
      {
        goto LABEL_12;
      }
    }

    std::chrono::steady_clock::now();
    v34.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v34.__d_.__rep_)
    {
      v30 = 0;
      goto LABEL_53;
    }

    if (v34.__d_.__rep_ <= 0)
    {
      if (v34.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v30 = 0x8000000000000000;
        goto LABEL_53;
      }
    }

    else if (v34.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v33.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    v30 = 1000 * v34.__d_.__rep_;
    if (1000 * v34.__d_.__rep_ > (v33.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
LABEL_68:
      v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

LABEL_53:
    v31.__d_.__rep_ = v30 + v33.__d_.__rep_;
LABEL_54:
    std::condition_variable::__do_timed_wait((a1 + 488), &v35, v31);
    std::chrono::steady_clock::now();
    goto LABEL_55;
  }

  while (!*(a1 + 480))
  {
    v10 = atomic_load((a1 + 81));
    if ((v10 & 1) == 0)
    {
      break;
    }

    if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      std::chrono::steady_clock::now();
      if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  if (!*(a1 + 480) || (v11 = atomic_load((a1 + 81)), (v11 & 1) == 0))
  {
    v22 = 0;
    if (!v35.__owns_)
    {
      return v22;
    }

LABEL_33:
    std::mutex::unlock(v35.__m_);
    return v22;
  }

  v12 = *(*(a1 + 448) + 8 * (*(a1 + 472) / 0x24uLL)) + 112 * (*(a1 + 472) % 0x24uLL);
  v13 = *(a2 + 24);
  *(a2 + 8) = *(v12 + 8);
  if (v13)
  {
    *(a2 + 32) = v13;
    operator delete(v13);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  *(a2 + 24) = *(v12 + 24);
  *(a2 + 40) = *(v12 + 40);
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  v14 = *(a2 + 64);
  *(a2 + 48) = *(v12 + 48);
  if (v14)
  {
    *(a2 + 72) = v14;
    operator delete(v14);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
  }

  *(a2 + 64) = *(v12 + 64);
  *(a2 + 80) = *(v12 + 80);
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  v15 = *(a2 + 88);
  if (v15)
  {
    *(a2 + 96) = v15;
    operator delete(v15);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  *(a2 + 88) = *(v12 + 88);
  *(a2 + 104) = *(v12 + 104);
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  v16 = (*(*(a1 + 448) + 8 * (*(a1 + 472) / 0x24uLL)) + 112 * (*(a1 + 472) % 0x24uLL));
  v17 = v16[11];
  if (v17)
  {
    v16[12] = v17;
    operator delete(v17);
  }

  v18 = v16[8];
  if (v18)
  {
    v16[9] = v18;
    operator delete(v18);
  }

  v19 = (a1 + 472);
  v20 = v16[3];
  if (v20)
  {
    v16[4] = v20;
    operator delete(v20);
  }

  v21 = vaddq_s64(*v19, xmmword_2718B4C60);
  *v19 = v21;
  if (v21.i64[0] >= 0x48uLL)
  {
    operator delete(**(a1 + 448));
    *(a1 + 448) += 8;
    *(a1 + 472) -= 36;
  }

  v22 = 1;
  if (v35.__owns_)
  {
    goto LABEL_33;
  }

  return v22;
}