uint64_t sub_29C1CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = *(a1 + 16);
  v61 = *(v5 - 8);
  v6 = __chkstk_darwin(a1);
  v62 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = v53 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(a1 + 36);
  v15 = *(*(AssociatedConformanceWitness + 8) + 8);
  v16 = *(v15 + 24);
  v63 = v3;
  v17 = v64;
  v16(v73, &v3[v14], AssociatedTypeWitness, v15);
  if (v17)
  {
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  v57 = v10;
  v56 = v73[0];
  v19 = *(v15 + 16);
  v58 = AssociatedTypeWitness;
  v19(AssociatedTypeWitness, v15);
  LOBYTE(v73[0]) = *v63;
  v20 = *(v8 + 8);
  v21 = *(v20 + 16);
  v59 = v21(v73, v5, v20);
  v64 = v22;
  (*(v61 + 8))(v62, v5);
  LOBYTE(v73[0]) = *v63;
  v23 = v21(v73, v5, v20);
  v25 = v24;
  v54 = 0;
  v26 = v23;
  v62 = v12;
  v73[3] = &type metadata for SharedSecret;
  v73[4] = sub_293060();
  v73[0] = v56;
  v27 = *v63;
  v28 = 8 * *v63;
  if (qword_5187C0 != -1)
  {
    swift_once();
  }

  v29 = 0x20100uLL >> v28;
  v71 = qword_519380;
  v72 = *algn_519388;
  v30 = qword_33FEB8[v27];
  sub_2582E4(qword_519380, *algn_519388);
  v31 = sub_28D524(v30, 2);
  v33 = v32;
  sub_3035C8();
  sub_258780(v31, v33);
  v68 = xmmword_33DAD0;
  sub_3035C8();
  v56 = v26;
  sub_3035C8();
  v55 = *(&v68 + 1);
  v63 = v68;
  if (qword_5187F0 != -1)
  {
    swift_once();
  }

  v61 = v25;
  sub_28C748(v73, &v68);
  if (qword_5187E8 != -1)
  {
    swift_once();
  }

  v66 = qword_519670;
  v67 = *algn_519678;
  sub_2582E4(qword_519670, *algn_519678);
  sub_3035C8();
  sub_3035C8();
  v34 = v54;
  sub_28AF4C(&v68);
  v53[1] = v34;
  v35 = v66;
  v36 = v67;
  sub_26DE98(v66, v67);
  sub_28ABAC(0, 0xC000000000000000, v29, &v74);

  sub_27CF48(&v68);
  sub_258780(v35, v36);
  v54 = v74;
  if (qword_5187F8 != -1)
  {
    swift_once();
  }

  v37 = 32;
  if (v27 == 2)
  {
    v37 = 64;
  }

  if (v27 == 1)
  {
    v38 = 48;
  }

  else
  {
    v38 = v37;
  }

  v66 = sub_28D524(v38, 2);
  v67 = v39;
  sub_3035C8();
  sub_3035C8();
  sub_3035C8();
  v69 = &type metadata for Data;
  v70 = &protocol witness table for Data;
  v40 = v63;
  v41 = v55;
  *&v68 = v63;
  *(&v68 + 1) = v55;
  v42 = __swift_project_boxed_opaque_existential_1(&v68, &type metadata for Data);
  v43 = *v42;
  v44 = v42[1];
  sub_2582E4(v40, v41);
  sub_273900(v43, v44);
  __swift_destroy_boxed_opaque_existential_0(&v68);
  if (v29)
  {
    v45 = v60;
    v46 = v58;
    v47 = v57;
    v48 = v62;
    if (v29 == 1)
    {
      sub_27E4A0(v54, v66, v67, v38, &v74);
    }

    else
    {
      sub_27E8A8(v54, v66, v67, v38, &v74);
    }

    v51 = v74;
    swift_beginAccess();
    sub_299C98(v51 + 32, v51 + 32 + *(v51 + 16), &v65);
    v50 = v65;

    sub_258780(v56, v61);
    sub_258780(v63, v41);
  }

  else
  {
    sub_27E0B4(v54, v66, v67, v38, &v74);
    v49 = v74;
    swift_beginAccess();
    sub_299C98(v49 + 32, v49 + 32 + *(v49 + 16), &v65);
    v50 = v65;

    sub_258780(v56, v61);
    sub_258780(v63, v41);
    v45 = v60;
    v46 = v58;
    v47 = v57;
    v48 = v62;
  }

  (*(v47 + 8))(v48, v46);
  sub_258780(v66, v67);

  sub_258780(v71, v72);
  result = __swift_destroy_boxed_opaque_existential_0(v73);
  v52 = v59;
  *v45 = v50;
  v45[1] = v52;
  v45[2] = v64;
  return result;
}

uint64_t sub_29C9D0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v22 = a5;
  v9 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v22 - v12;
  v14 = *a2;
  v15 = *(v9 + 16);
  v23 = a1;
  v15(a3, v9);
  v24 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(*(AssociatedConformanceWitness + 8) + 16))(&v24, AssociatedTypeWitness);
  if (v5)
  {
    (*(*(a3 - 8) + 8))(v23, a3);
    return (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    sub_258780(v17, v18);
    (*(v11 + 8))(v13, AssociatedTypeWitness);
    v20 = _s5DHKEMO10PrivateKeyVMa();
    v21 = v22;
    result = (*(*(a3 - 8) + 32))(&v22[*(v20 + 36)], v23, a3);
    *v21 = v14;
  }

  return result;
}

uint64_t sub_29CBEC(void *a1, unint64_t a2, uint64_t a3)
{
  v95 = a2;
  v84 = a1;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v89 = a3;
  v91 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v79 - v8;
  v90 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v14 = swift_getAssociatedConformanceWitness();
  (*(v14 + 16))(v10, v14);
  v15 = *(_s5DHKEMO9PublicKeyVMa() + 36);
  v16 = *(*(v14 + 8) + 8);
  v17 = *(v16 + 24);
  v105 = &type metadata for SharedSecret;
  v88 = sub_293060();
  v106 = v88;
  v92 = v15;
  v18 = v95 + v15;
  v19 = v16;
  v20 = v94;
  v17(&v104, v18, v10, v16);
  if (v20)
  {
    (*(v11 + 8))(v13, v10);
    __swift_deallocate_boxed_opaque_existential_1(&v104);
  }

  else
  {
    v81 = AssociatedTypeWitness;
    v94 = v13;
    v82 = v11;
    v83 = v10;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
    __chkstk_darwin(v21);
    v23 = (&v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;
    swift_beginAccess();
    sub_28A5D0(v25 + 32, v25 + 32 + *(v25 + 16), &v99);

    v26 = v99;
    __swift_destroy_boxed_opaque_existential_0(&v104);
    v107 = v26;
    v27 = *(v89 + 36);
    v28 = *(v91 + 24);
    v105 = &type metadata for SharedSecret;
    v106 = v88;
    v28(&v104, v95 + v92, v90);
    v88 = v27;
    v30 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
    __chkstk_darwin(v30);
    v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = *v32;
    swift_beginAccess();
    sub_28A5D0(v34 + 32, v34 + 32 + *(v34 + 16), &v99);

    v35 = v99;
    __swift_destroy_boxed_opaque_existential_0(&v104);
    sub_3035C8();
    sub_258780(v35, *(&v35 + 1));
    v36 = v86;
    (*(v19 + 16))(v83, v19);
    LOBYTE(v104) = *v93;
    v37 = *(AssociatedConformanceWitness + 8);
    v38 = v81;
    v89 = *(v37 + 16);
    v39 = (v89)(&v104, v81, v37);
    v79 = v40;
    v80 = v39;
    v41 = v87 + 8;
    v42 = *(v87 + 8);
    v42(v36, v38);
    v105 = &type metadata for Data;
    v106 = &protocol witness table for Data;
    v104 = v107;
    LOBYTE(v99) = *v93;
    sub_2582E4(v107, *(&v107 + 1));
    v43 = v89;
    v44 = (v89)(&v99, v38, v37);
    v87 = v41;
    v92 = v44;
    v95 = v45;
    v46 = v93;
    v47 = v85;
    (*(v91 + 16))(v90);
    LOBYTE(v99) = *v46;
    v48 = v43(&v99, v38, v37);
    v50 = v42;
    v51 = v48;
    v52 = v49;
    v50(v47, v38);
    v53 = *v93;
    v54 = 8 * *v93;
    if (qword_5187C0 != -1)
    {
      swift_once();
    }

    v91 = 0;
    v55 = 0x20100uLL >> v54;
    v102 = qword_519380;
    v103 = *algn_519388;
    v56 = qword_33FEB8[v53];
    sub_2582E4(qword_519380, *algn_519388);
    v57 = sub_28D524(v56, 2);
    v59 = v58;
    sub_3035C8();
    sub_258780(v57, v59);
    v99 = xmmword_33DAD0;
    sub_3035C8();
    sub_3035C8();
    sub_2582E4(v51, v52);
    sub_3035C8();
    v89 = v51;
    v90 = v52;
    sub_258780(v51, v52);
    v88 = *(&v99 + 1);
    v93 = v99;
    if (qword_5187F0 != -1)
    {
      swift_once();
    }

    sub_28C748(&v104, &v99);
    if (qword_5187E8 != -1)
    {
      swift_once();
    }

    v97 = qword_519670;
    v98 = *algn_519678;
    sub_2582E4(qword_519670, *algn_519678);
    sub_3035C8();
    sub_3035C8();
    v60 = v91;
    sub_28AF4C(&v99);
    v87 = v60;
    v61 = v97;
    v62 = v98;
    sub_26DE98(v97, v98);
    sub_28ABAC(0, 0xC000000000000000, v55, &v108);

    sub_27CF48(&v99);
    sub_258780(v61, v62);
    v91 = v108;
    if (qword_5187F8 != -1)
    {
      swift_once();
    }

    v63 = 32;
    if (v53 == 2)
    {
      v63 = 64;
    }

    if (v53 == 1)
    {
      v64 = 48;
    }

    else
    {
      v64 = v63;
    }

    v97 = sub_28D524(v64, 2);
    v98 = v65;
    sub_3035C8();
    sub_3035C8();
    sub_3035C8();
    v100 = &type metadata for Data;
    v101 = &protocol witness table for Data;
    v66 = v93;
    v67 = v88;
    *&v99 = v93;
    *(&v99 + 1) = v88;
    v68 = __swift_project_boxed_opaque_existential_1(&v99, &type metadata for Data);
    v69 = *v68;
    v70 = v68[1];
    sub_2582E4(v66, v67);
    sub_273900(v69, v70);
    __swift_destroy_boxed_opaque_existential_0(&v99);
    v71 = v55;
    if (v55)
    {
      v72 = v83;
      v73 = v82;
      v10 = v80;
      v74 = v90;
      if (v71 == 1)
      {
        sub_27E4A0(v91, v97, v98, v64, &v108);
      }

      else
      {
        sub_27E8A8(v91, v97, v98, v64, &v108);
      }

      v77 = v108;
      swift_beginAccess();
      sub_299C98(v77 + 32, v77 + 32 + *(v77 + 16), &v96);
      v78 = v96;

      sub_258780(v93, v67);
      sub_258780(v89, v74);
      sub_258780(v92, v95);
      *v84 = v78;
    }

    else
    {
      sub_27E0B4(v91, v97, v98, v64, &v108);
      v75 = v108;
      swift_beginAccess();
      sub_299C98(v75 + 32, v75 + 32 + *(v75 + 16), &v96);
      v76 = v96;

      sub_258780(v93, v67);
      sub_258780(v89, v90);
      sub_258780(v92, v95);
      *v84 = v76;
      v72 = v83;
      v73 = v82;
      v10 = v80;
    }

    sub_258780(v107, *(&v107 + 1));
    (*(v73 + 8))(v94, v72);
    sub_258780(v97, v98);

    sub_258780(v102, v103);
    __swift_destroy_boxed_opaque_existential_0(&v104);
  }

  return v10;
}

uint64_t sub_29D9E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v89 = a3;
  v88 = a5;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v90 = a4;
  v91 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v81 - v14;
  *&v104 = a1;
  *(&v104 + 1) = a2;
  v92 = v5;
  LOBYTE(v99) = *v5;
  v94 = v9;
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 1);
  sub_2582E4(a1, a2);
  v18 = v95;
  result = v17(&v104, &v99, &type metadata for Data, &protocol witness table for Data, AssociatedTypeWitness, v16);
  if (!v18)
  {
    v85 = a2;
    v86 = v16;
    v87 = v13;
    v84 = a1;
    v95 = AssociatedTypeWitness;
    v20 = *(v90 + 9);
    v21 = v91;
    v22 = *(v91 + 24);
    v105 = &type metadata for SharedSecret;
    v23 = sub_293060();
    v106 = v23;
    v24 = v92;
    v90 = v22;
    (v22)(&v104, v15, v94, v21);
    v83 = v15;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
    __chkstk_darwin(v25);
    v27 = v20;
    v28 = (&v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = *v28;
    swift_beginAccess();
    sub_28A5D0(v30 + 32, v30 + 32 + *(v30 + 16), &v99);
    v82 = 0;

    v31 = v99;
    __swift_destroy_boxed_opaque_existential_0(&v104);
    v107 = v31;
    v105 = &type metadata for SharedSecret;
    v106 = v23;
    v81 = v27;
    v32 = v82;
    v90(&v104, v89, v94, v21);
    if (v32)
    {
      sub_258780(v31, *(&v31 + 1));
      (*(v93 + 8))(v83, v95);
      return __swift_deallocate_boxed_opaque_existential_1(&v104);
    }

    else
    {
      v33 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
      __chkstk_darwin(v33);
      v35 = (&v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      v37 = *v35;
      swift_beginAccess();
      sub_28A5D0(v37 + 32, v37 + 32 + *(v37 + 16), &v99);

      v38 = v99;
      __swift_destroy_boxed_opaque_existential_0(&v104);
      sub_3035C8();
      sub_258780(v38, *(&v38 + 1));
      v105 = &type metadata for Data;
      v106 = &protocol witness table for Data;
      v104 = v107;
      v39 = *(v21 + 16);
      sub_2582E4(v107, *(&v107 + 1));
      v40 = v87;
      v39(v94, v21);
      LOBYTE(v99) = *v24;
      v41 = v86;
      v42 = *(v86 + 2);
      v43 = v95;
      v44 = v42(&v99, v95, v86);
      v94 = 0;
      v90 = v44;
      v91 = v45;
      v46 = v40;
      v47 = v93 + 8;
      v48 = *(v93 + 8);
      v48(v46, v43);
      LOBYTE(v99) = *v24;
      v49 = v94;
      v50 = v42(&v99, v43, v41);
      if (v49)
      {
        sub_258780(v90, v91);
        sub_258780(v107, *(&v107 + 1));
        v48(v83, v43);
        return __swift_destroy_boxed_opaque_existential_0(&v104);
      }

      else
      {
        v89 = v50;
        v94 = v51;
        v93 = v47;
        v52 = *v92;
        v53 = 8 * *v92;
        if (qword_5187C0 != -1)
        {
          swift_once();
        }

        v86 = v48;
        v54 = 0x20100uLL >> v53;
        v102 = qword_519380;
        v103 = *algn_519388;
        v82 = v52;
        v55 = qword_33FEB8[v52];
        sub_2582E4(qword_519380, *algn_519388);
        v56 = sub_28D524(v55, 2);
        v58 = v57;
        sub_3035C8();
        sub_258780(v56, v58);
        v99 = xmmword_33DAD0;
        sub_3035C8();
        sub_3035C8();
        v59 = v89;
        v60 = v94;
        sub_2582E4(v89, v94);
        sub_3035C8();
        sub_258780(v59, v60);
        v92 = *(&v99 + 1);
        v87 = v99;
        if (qword_5187F0 != -1)
        {
          swift_once();
        }

        sub_28C748(&v104, &v99);
        if (qword_5187E8 != -1)
        {
          swift_once();
        }

        v97 = qword_519670;
        v98 = *algn_519678;
        sub_2582E4(qword_519670, *algn_519678);
        sub_3035C8();
        sub_3035C8();
        sub_28AF4C(&v99);
        v85 = 0;
        v61 = v97;
        v62 = v98;
        sub_26DE98(v97, v98);
        sub_28ABAC(0, 0xC000000000000000, v54, &v108);

        sub_27CF48(&v99);
        sub_258780(v61, v62);
        v63 = v108;
        if (qword_5187F8 != -1)
        {
          swift_once();
        }

        v64 = 32;
        if (v82 == 2)
        {
          v64 = 64;
        }

        if (v82 == 1)
        {
          v65 = 48;
        }

        else
        {
          v65 = v64;
        }

        v97 = sub_28D524(v65, 2);
        v98 = v66;
        sub_3035C8();
        sub_3035C8();
        sub_3035C8();
        v100 = &type metadata for Data;
        v101 = &protocol witness table for Data;
        v67 = v87;
        v68 = v92;
        *&v99 = v87;
        *(&v99 + 1) = v92;
        v69 = __swift_project_boxed_opaque_existential_1(&v99, &type metadata for Data);
        v70 = *v69;
        v71 = v69[1];
        sub_2582E4(v67, v68);
        sub_273900(v70, v71);
        __swift_destroy_boxed_opaque_existential_0(&v99);
        v72 = v54;
        if (v54)
        {
          v73 = v95;
          v74 = v83;
          v75 = v88;
          v76 = v86;
          if (v72 == 1)
          {
            sub_27E4A0(v63, v97, v98, v65, &v108);
          }

          else
          {
            sub_27E8A8(v63, v97, v98, v65, &v108);
          }

          v79 = v108;
          swift_beginAccess();
          sub_299C98(v79 + 32, v79 + 32 + *(v79 + 16), &v96);
          v80 = v96;

          sub_258780(v87, v92);
          sub_258780(v89, v94);
          sub_258780(v90, v91);
          *v75 = v80;
        }

        else
        {
          sub_27E0B4(v63, v97, v98, v65, &v108);
          v77 = v108;
          swift_beginAccess();
          sub_299C98(v77 + 32, v77 + 32 + *(v77 + 16), &v96);
          v78 = v96;

          sub_258780(v87, v92);
          sub_258780(v89, v94);
          sub_258780(v90, v91);
          *v88 = v78;
          v73 = v95;
          v74 = v83;
          v76 = v86;
        }

        sub_258780(v107, *(&v107 + 1));
        v76(v74, v73);
        sub_258780(v97, v98);

        sub_258780(v102, v103);
        return __swift_destroy_boxed_opaque_existential_0(&v104);
      }
    }
  }

  return result;
}

uint64_t sub_29E61C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v57 = a4;
  v8 = *(a3 + 2);
  v7 = *(a3 + 3);
  v58 = a3;
  v59 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v72[0] = a1;
  v72[1] = a2;
  v61 = v8;
  v62 = v4;
  LOBYTE(v67) = *v4;
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v15 + 8);
  sub_2582E4(a1, a2);
  v17 = v63;
  result = v16(v72, &v67, &type metadata for Data, &protocol witness table for Data, AssociatedTypeWitness, v15);
  if (!v17)
  {
    v19 = v12;
    v55 = a1;
    v56 = a2;
    v63 = AssociatedTypeWitness;
    v20 = v59;
    v21 = v60;
    (*(v59 + 24))(v72, v14, v61, v59);
    v58 = v14;
    v22 = v72[0];
    v72[3] = &type metadata for SharedSecret;
    v72[4] = sub_293060();
    v72[0] = v22;
    v23 = v62;
    (*(v20 + 16))(v61, v20);
    LOBYTE(v67) = *v23;
    v24 = v63;
    v25 = (*(v15 + 16))(&v67, v63, v15);
    v61 = 0;
    v26 = v25;
    v28 = v27;
    v59 = *(v21 + 8);
    v60 = v21 + 8;
    (v59)(v19, v24);
    v29 = *v62;
    v30 = 8 * *v62;
    if (qword_5187C0 != -1)
    {
      swift_once();
    }

    v31 = 0x20100uLL >> v30;
    v70 = qword_519380;
    v71 = *algn_519388;
    v53 = v29;
    v32 = qword_33FEB8[v29];
    sub_2582E4(qword_519380, *algn_519388);
    v33 = sub_28D524(v32, 2);
    v35 = v34;
    sub_3035C8();
    sub_258780(v33, v35);
    v67 = xmmword_33DAD0;
    sub_3035C8();
    v56 = v28;
    sub_3035C8();
    v54 = *(&v67 + 1);
    v62 = v67;
    if (qword_5187F0 != -1)
    {
      swift_once();
    }

    v55 = v26;
    sub_28C748(v72, &v67);
    if (qword_5187E8 != -1)
    {
      swift_once();
    }

    v65 = qword_519670;
    v66 = *algn_519678;
    sub_2582E4(qword_519670, *algn_519678);
    sub_3035C8();
    sub_3035C8();
    sub_28AF4C(&v67);
    v36 = v65;
    v37 = v66;
    sub_26DE98(v65, v66);
    sub_28ABAC(0, 0xC000000000000000, v31, &v73);

    sub_27CF48(&v67);
    sub_258780(v36, v37);
    v61 = v73;
    if (qword_5187F8 != -1)
    {
      swift_once();
    }

    v38 = 32;
    if (v53 == 2)
    {
      v38 = 64;
    }

    if (v53 == 1)
    {
      v39 = 48;
    }

    else
    {
      v39 = v38;
    }

    v65 = sub_28D524(v39, 2);
    v66 = v40;
    sub_3035C8();
    sub_3035C8();
    sub_3035C8();
    v68 = &type metadata for Data;
    v69 = &protocol witness table for Data;
    v41 = v62;
    v42 = v54;
    *&v67 = v62;
    *(&v67 + 1) = v54;
    v43 = __swift_project_boxed_opaque_existential_1(&v67, &type metadata for Data);
    v44 = *v43;
    v45 = v43[1];
    sub_2582E4(v41, v42);
    sub_273900(v44, v45);
    __swift_destroy_boxed_opaque_existential_0(&v67);
    v46 = v31;
    if (v31)
    {
      v47 = v63;
      v48 = v55;
      if (v46 == 1)
      {
        sub_27E4A0(v61, v65, v66, v39, &v73);
      }

      else
      {
        sub_27E8A8(v61, v65, v66, v39, &v73);
      }

      v51 = v73;
      swift_beginAccess();
      sub_299C98(v51 + 32, v51 + 32 + *(v51 + 16), &v64);
      v52 = v64;

      sub_258780(v62, v42);
      sub_258780(v48, v56);
      *v57 = v52;
    }

    else
    {
      sub_27E0B4(v61, v65, v66, v39, &v73);
      v49 = v73;
      swift_beginAccess();
      sub_299C98(v49 + 32, v49 + 32 + *(v49 + 16), &v64);
      v50 = v64;

      sub_258780(v62, v42);
      sub_258780(v55, v56);
      *v57 = v50;
      v47 = v63;
    }

    (v59)(v58, v47);
    sub_258780(v65, v66);

    sub_258780(v70, v71);
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  return result;
}

uint64_t sub_29EE04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v5 + 16))(v4, v5);
  v12 = *v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_29C0D0(v8, &v12, AssociatedTypeWitness, AssociatedConformanceWitness, a2);
}

uint64_t sub_29EFA0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_29F03C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-2 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))(&a1[v5 + 1] & v6, &a2[v5 + 1] & v6);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 + 16) & v6));
  }

  return v3;
}

_BYTE *sub_29F160(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

_BYTE *sub_29F1D0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

_BYTE *sub_29F240(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

_BYTE *sub_29F2B0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t sub_29F320(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFB)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 5)
      {
        return v15 - 4;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_29F4A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFB)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 4;
  }
}

uint64_t sub_29F718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_303B08() >= 12)
  {
    v10 = sub_2A0C94(a1, a2, *(v7 + 8));
    v12 = v11;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v10;
    a4[1] = v12;
  }

  else
  {
    sub_273BE4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t sub_29F82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_303B08() == 12)
  {
    v8 = sub_2A0C94(a1, a2, *(v7 + 8));
    v10 = v9;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v8;
    a4[1] = v10;
  }

  else
  {
    sub_273BE4();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

double sub_29F940@<D0>(__int128 *a1@<X8>)
{
  v3 = xmmword_33E1E0;
  sub_2A0140(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_29F9BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v8, 0, 14);
      goto LABEL_10;
    }

    a1 = *(a1 + 16);
    v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_8:
    v6 = sub_2A1240(a1, v5, a3);

    return v6;
  }

  if (v4)
  {
    if (a1 > a1 >> 32)
    {
      __break(1u);
    }

    v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
    goto LABEL_8;
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
LABEL_10:
  if (qword_5187C8 != -1)
  {
    swift_once();
  }

  v6 = ccchacha20poly1305_setnonce(qword_520870, *(a3 + 16), v8);

  return v6;
}

char *sub_29FB48(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      __src = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v4 = BYTE6(a2);
      v14 = BYTE5(a2);
      if (!BYTE6(a2))
      {
        return _swiftEmptyArrayStorage;
      }

      v5 = sub_252148(BYTE6(a2), 0);
      memcpy(v5 + 32, &__src, v4);
      return v5;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2A07A4(v7, v8);
  }

  if (v3 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_2A07A4(v7, v8);
  }

  memset(v15, 0, 14);
  result = sub_29BA74(v15, v15, &__src);
  if (!v2)
  {
    return __src;
  }

  return result;
}

void *sub_29FCC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_28A310(v1, v2);
  sub_258780(v1, v2);
  return v3;
}

char *sub_29FD14()
{

  return sub_29FD6C();
}

char *sub_29FD6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(__src, 0, 14);
      v19 = __src;
      v18 = __src;
      return sub_2A0B58(v19, v18);
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = sub_303388();
    if (v8)
    {
      v9 = sub_3033B8();
      v1 = v6 - v9;
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_28;
      }

      v8 += v1;
    }

    v10 = __OFSUB__(v7, v6);
    v11 = v7 - v6;
    if (!v10)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v12 = v1;
    v13 = v1 >> 32;
    v11 = v13 - v12;
    if (v13 >= v12)
    {
      v8 = sub_303388();
      if (!v8)
      {
LABEL_16:
        v15 = sub_3033A8();
        if (v15 >= v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v16 + v8);
        if (v8)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v8;
        return sub_2A0B58(v19, v18);
      }

      v14 = sub_3033B8();
      if (!__OFSUB__(v12, v14))
      {
        v8 += v12 - v14;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v3)
  {
    goto LABEL_12;
  }

  __src[0] = *v0;
  LOWORD(__src[1]) = v2;
  BYTE2(__src[1]) = BYTE2(v2);
  BYTE3(__src[1]) = BYTE3(v2);
  BYTE4(__src[1]) = BYTE4(v2);
  BYTE5(__src[1]) = BYTE5(v2);
  if (!BYTE6(v2))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_252148(BYTE6(v2), 0);
  memcpy(v4 + 32, __src, BYTE6(v2));
  return v4;
}

uint64_t sub_29FF3C@<X0>(char **a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_29FB48(v4, v3);
  v7 = v6;
  result = sub_258780(v4, v3);
  *a1 = v5;
  a1[1] = v7;
  return result;
}

unint64_t sub_29FFA0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2AA770(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_3033D8();
      swift_allocObject();
      v8 = sub_303378();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_3034F8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_2A0068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_2A0548(&type metadata for UInt8, sub_2A1318, v10, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v9);
}

uint64_t sub_2A0140(uint64_t result)
{
  v1 = result;
  v3 = *result;
  v2 = *(result + 8);
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {

      sub_258780(v3, v2);
      v16 = v3;
      v17 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v1 = xmmword_33DAD0;
      sub_258780(0, 0xC000000000000000);
      sub_303498();
      v7 = v16;
      v6 = v17;
      v8 = *(v16 + 2);
      v9 = *(v16 + 3);
      result = sub_303388();
      if (result)
      {
        if (__OFSUB__(v8, sub_3033B8()))
        {
          goto LABEL_21;
        }

        v10 = __OFSUB__(v9, v8);
        v11 = v9 - v8;
        if (v10)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v12 = sub_3033A8();
        if (v12 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        if (v13 < 12)
        {
          goto LABEL_24;
        }

        v15 = 0;
        result = ccrng(&v15);
        if (!result)
        {
          goto LABEL_29;
        }

        if (v15)
        {
          goto LABEL_25;
        }

        result = ccrng_generate_bridge(result);
        *v1 = v7;
        *(v1 + 8) = v6 | 0x8000000000000000;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    sub_258780(v3, v2);
    v16 = v3;
    LOWORD(v17) = v2;
    BYTE2(v17) = BYTE2(v2);
    BYTE3(v17) = BYTE3(v2);
    BYTE4(v17) = BYTE4(v2);
    BYTE5(v17) = BYTE5(v2);
    BYTE6(v17) = BYTE6(v2);
    if (((v2 >> 50) & 0x3F) >= 3)
    {
      v15 = 0;
      result = ccrng(&v15);
      if (result)
      {
        if (!v15)
        {
          result = ccrng_generate_bridge(result);
          v5 = v17 | ((WORD2(v17) | (BYTE6(v17) << 16)) << 32);
          *v1 = v16;
          *(v1 + 8) = v5;
          return result;
        }

        goto LABEL_22;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_258780(v3, v2);
  v16 = v3;
  v17 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *v1 = xmmword_33DAD0;
  sub_258780(0, 0xC000000000000000);
  result = sub_2A06A8(&v16);
  v14 = v17 | 0x4000000000000000;
  *v1 = v16;
  *(v1 + 8) = v14;
  return result;
}

uint64_t sub_2A0400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v9, a2, a3);
  result = sub_303A38();
  *(a4 + v10) = result;
  return result;
}

uint64_t sub_2A0548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = (__chkstk_darwin)();
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_2A06A8(int *a1)
{
  sub_3034C8();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!sub_303388())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (__OFSUB__(v2, sub_3033B8()))
  {
    goto LABEL_12;
  }

  v4 = v3 - v2;
  v5 = sub_3033A8();
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 12)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v7 = ccrng(&v9);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    goto LABEL_14;
  }

  ccrng_generate_bridge(v7);
}

uint64_t sub_2A07A4(uint64_t a1, uint64_t a2)
{
  result = sub_303388();
  v6 = result;
  if (result)
  {
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_3033A8();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_29BA74(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

void sub_2A0848(uint64_t *a1, int a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_258780(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_33DAD0;
      sub_258780(0, 0xC000000000000000);
      sub_2A0AB0(&__b, a2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      sub_258780(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  sub_258780(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_33DAD0;
  sub_258780(0, 0xC000000000000000);
  sub_303498();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = sub_303388();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_3033B8();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = sub_3033A8();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), a2, v19);
  *a1 = __b;
  a1[1] = v9 | 0x8000000000000000;
}

void sub_2A0AB0(int *a1, int a2)
{
  sub_3034C8();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_303388();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_3033B8();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_3033A8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

void *sub_2A0B58(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_252148(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2A0BD4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2A0BF4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_3033D8();
      swift_allocObject();
      sub_303398();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_3034F8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2A0C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(v8);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FD0);
  if (swift_dynamicCast())
  {
    sub_258288(v32, &v34);
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    sub_3033E8();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_0(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_27CF48(v32);
  sub_303A58();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = sub_303A48();
  *&v32[0] = sub_2A0BF4(v17);
  *(&v32[0] + 1) = v18;
  __chkstk_darwin(*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  sub_303538();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      sub_303518();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  sub_303C08();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      sub_303548();
      LOBYTE(v26) = 0;
    }

    sub_303C08();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    sub_303548();
    sub_EB18(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_EB18(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_2582E4(*&v32[0], *(&v32[0] + 1));
  sub_258780(v27, *(&v27 + 1));
  return v27;
}

uint64_t sub_2A1240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_303388();
  if (v5)
  {
    v6 = v5;
    result = sub_3033B8();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_10;
    }

    v8 = (a1 - result + v6);
  }

  else
  {
    v8 = 0;
  }

  result = sub_3033A8();
  if (qword_5187C8 == -1)
  {
    if (v8)
    {
      return ccchacha20poly1305_setnonce(qword_520870, *(a3 + 16), v8);
    }
  }

  else
  {
    result = swift_once();
    if (v8)
    {
      return ccchacha20poly1305_setnonce(qword_520870, *(a3 + 16), v8);
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

char *sub_2A13AC()
{

  return sub_29FD14();
}

double sub_2A1404@<D0>(__int128 *a1@<X8>)
{

  return sub_29F940(a1);
}

uint64_t sub_2A1484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void *sub_2A15F0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v6 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v5, &v6);
  v5 = v1;
  sub_28F9DC(&v5, &v6);
  v5 = v2;
  sub_28F9DC(&v5, &v6);
  v5 = v3;
  sub_28F9DC(&v5, &v6);
  return v6;
}

void *sub_2A16D8()
{
  v17 = 0x6420363532414853;
  v18 = 0xEF203A7473656769;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  result = sub_2A15F0();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_303AE8();
    v11[2] = v7;
    bzero(v11 + 4, v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_303C28();
  sub_26FA54(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_303958();
  v14 = v13;
  swift_unknownObjectRelease();

  v19._countAndFlagsBits = v12;
  v19._object = v14;
  sub_303988(v19);

  return v17;
}

void *sub_2A18C8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *v0;
  v8 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v7, &v8);
  v7 = v1;
  sub_28F9DC(&v7, &v8);
  v7 = v2;
  sub_28F9DC(&v7, &v8);
  v7 = v3;
  sub_28F9DC(&v7, &v8);
  v7 = v4;
  sub_28F9DC(&v7, &v8);
  v7 = v5;
  sub_28F9DC(&v7, &v8);
  return v8;
}

void *sub_2A19E4()
{
  v17 = 0x6420343833414853;
  v18 = 0xEF203A7473656769;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  v16[2] = v0[2];
  result = sub_2A18C8();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_303AE8();
    v11[2] = v7;
    bzero(v11 + 4, v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_303C28();
  sub_26FA54(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_303958();
  v14 = v13;
  swift_unknownObjectRelease();

  v19._countAndFlagsBits = v12;
  v19._object = v14;
  sub_303988(v19);

  return v17;
}

void *sub_2A1B64()
{
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  v3[2] = v0[2];
  return sub_28A244(v3);
}

void *sub_2A1C34()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = *v0;
  v10 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v9, &v10);
  v9 = v1;
  sub_28F9DC(&v9, &v10);
  v9 = v2;
  sub_28F9DC(&v9, &v10);
  v9 = v3;
  sub_28F9DC(&v9, &v10);
  v9 = v4;
  sub_28F9DC(&v9, &v10);
  v9 = v5;
  sub_28F9DC(&v9, &v10);
  v9 = v6;
  sub_28F9DC(&v9, &v10);
  v9 = v7;
  sub_28F9DC(&v9, &v10);
  return v10;
}

void *sub_2A1D84()
{
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  v2 = v0[3];
  v17[2] = v0[2];
  v17[3] = v2;
  v18 = 0x6420323135414853;
  v19 = 0xEF203A7473656769;
  result = sub_2A1C34();
  v7 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 2 * v7;
  if (((2 * v7) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v8)
  {
    v12 = sub_303AE8();
    v12[2] = v8;
    bzero(v12 + 4, v8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v16 = 0;
  *&v17[0] = v12;
  sub_303C28();
  sub_26FA54(v9, v10, v11, v17, &v16);
  swift_unknownObjectRelease();
  v13 = sub_303958();
  v15 = v14;
  swift_unknownObjectRelease();

  v20._countAndFlagsBits = v13;
  v20._object = v15;
  sub_303988(v20);

  return v18;
}

void *sub_2A1F04()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v2 = v0[3];
  v4[2] = v0[2];
  v4[3] = v2;
  return sub_28A29C(v4);
}

uint64_t sub_2A1F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 2);
  v10 = *v3;
  v11 = v5;
  v13 = a3;
  v14 = a1;
  v15 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519DF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
  return sub_2A1484(&v10, sub_2A3DC4, v12, v6, v7, a3, &protocol self-conformance witness table for Error, &v9);
}

void *sub_2A2064()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = *v0;
  v5 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v4, &v5);
  v4 = v1;
  sub_28F9DC(&v4, &v5);
  v4 = v2;
  sub_28F9DC(&v4, &v5);
  return v5;
}

void *sub_2A2130()
{
  v1 = *(v0 + 2);
  strcpy(v18, "SHA1 digest: ");
  HIWORD(v18[1]) = -4864;
  v16 = *v0;
  v17 = v1;
  result = sub_2A2064();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_303AE8();
    v11[2] = v7;
    bzero(v11 + 4, v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = 0;
  *&v16 = v11;
  sub_303C28();
  sub_26FA54(v8, v9, v10, &v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_303958();
  v14 = v13;
  swift_unknownObjectRelease();

  v19._countAndFlagsBits = v12;
  v19._object = v14;
  sub_303988(v19);

  return v18[0];
}

Swift::Int sub_2A230C()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

Swift::Int sub_2A239C()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

void *sub_2A2444@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v5 = *v1;
  v6 = v3;
  result = sub_2A0B58(&v5, &v6 + 4);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_2A24D4(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v8 = *a1;
  v9 = v2;
  v6 = *a2;
  v7 = v3;
  sub_293F00(&v6, &v7 + 4, &v8, &v9 + 4, &v5);
  return v5;
}

uint64_t sub_2A256C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v11 = a3;
  v12 = a1;
  v13 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519DF8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
  return sub_2A1484(&v9, sub_2A3E08, v10, v5, v6, a3, &protocol self-conformance witness table for Error, &v8);
}

void *sub_2A2654()
{
  v1 = v0[1];
  v3 = *v0;
  v4 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v3, &v4);
  v3 = v1;
  sub_28F9DC(&v3, &v4);
  return v4;
}

void *sub_2A2708()
{
  strcpy(v16, "MD5 digest: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  v15 = *v0;
  result = sub_2A2654();
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v5 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = 2 * v5;
  if (((2 * v5) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v6)
  {
    v10 = sub_303AE8();
    v10[2] = v6;
    bzero(v10 + 4, v6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v14 = 0;
  *&v15 = v10;
  sub_303C28();
  sub_26FA54(v7, v8, v9, &v15, &v14);
  swift_unknownObjectRelease();
  v11 = sub_303958();
  v13 = v12;
  swift_unknownObjectRelease();

  v17._countAndFlagsBits = v11;
  v17._object = v13;
  sub_303988(v17);

  return v16[0];
}

Swift::Int sub_2A28D0()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

Swift::Int sub_2A2950()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

void *sub_2A29E8@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = sub_2A0B58(&v4, v5);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_2A2A68(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  sub_293F00(&v5, &v6, &v6, &v7, &v4);
  return v4;
}

uint64_t sub_2A2B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[1];
  v12[0] = *v4;
  v12[1] = v7;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519DD8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
  return sub_2A1484(v12, a4, v13, v8, v9, a3, &protocol self-conformance witness table for Error, &v11);
}

void *sub_2A2C30()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v6 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v5, &v6);
  v5 = v1;
  sub_28F9DC(&v5, &v6);
  v5 = v2;
  sub_28F9DC(&v5, &v6);
  v5 = v3;
  sub_28F9DC(&v5, &v6);
  result = v6;
  if (v6[2] < 0x20uLL)
  {
    __break(1u);
  }

  return result;
}

void *sub_2A2D14()
{
  v17 = 0xD000000000000011;
  v18 = 0x8000000000439EF0;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  result = sub_2A2C30();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_303AE8();
    v11[2] = v7;
    bzero(v11 + 4, v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_303C28();
  sub_26FA54(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_303958();
  v14 = v13;
  swift_unknownObjectRelease();

  v19._countAndFlagsBits = v12;
  v19._object = v14;
  sub_303988(v19);

  return v17;
}

Swift::Int sub_2A2ED8()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

Swift::Int sub_2A2F58()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

void *sub_2A2FF0@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  result = sub_2A0B58(v5, v6);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_2A3060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  sub_293F00(v6, v7, v7, &v8, &v5);
  return v5;
}

uint64_t sub_2A3148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[1];
  v12[0] = *v4;
  v12[1] = v7;
  v12[2] = v4[2];
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519DE0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
  return sub_2A1484(v12, a4, v13, v8, v9, a3, &protocol self-conformance witness table for Error, &v11);
}

void *sub_2A3234()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *v0;
  v8 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v7, &v8);
  v7 = v1;
  sub_28F9DC(&v7, &v8);
  v7 = v2;
  sub_28F9DC(&v7, &v8);
  v7 = v3;
  sub_28F9DC(&v7, &v8);
  v7 = v4;
  sub_28F9DC(&v7, &v8);
  v7 = v5;
  sub_28F9DC(&v7, &v8);
  result = v8;
  if (v8[2] < 0x30uLL)
  {
    __break(1u);
  }

  return result;
}

void *sub_2A334C()
{
  v17 = 0xD000000000000011;
  v18 = 0x8000000000439F10;
  v1 = v0[1];
  v16[0] = *v0;
  v16[1] = v1;
  v16[2] = v0[2];
  result = sub_2A3234();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_303AE8();
    v11[2] = v7;
    bzero(v11 + 4, v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = 0;
  *&v16[0] = v11;
  sub_303C28();
  sub_26FA54(v8, v9, v10, v16, &v15);
  swift_unknownObjectRelease();
  v12 = sub_303958();
  v14 = v13;
  swift_unknownObjectRelease();

  v19._countAndFlagsBits = v12;
  v19._object = v14;
  sub_303988(v19);

  return v17;
}

Swift::Int sub_2A3520()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

Swift::Int sub_2A35B0()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

void *sub_2A3658@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  result = sub_2A0B58(v5, v6);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_2A36D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = a1[2];
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v6[2] = a2[2];
  sub_293F00(v6, v7, v7, &v8, &v5);
  return v5;
}

uint64_t sub_2A37C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[1];
  v13[0] = *v4;
  v13[1] = v7;
  v8 = v4[3];
  v13[2] = v4[2];
  v13[3] = v8;
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519DE8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
  return sub_2A1484(v13, a4, v14, v9, v10, a3, &protocol self-conformance witness table for Error, &v12);
}

void *sub_2A38B4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = *v0;
  v10 = _swiftEmptyArrayStorage;
  sub_28F9DC(&v9, &v10);
  v9 = v1;
  sub_28F9DC(&v9, &v10);
  v9 = v2;
  sub_28F9DC(&v9, &v10);
  v9 = v3;
  sub_28F9DC(&v9, &v10);
  v9 = v4;
  sub_28F9DC(&v9, &v10);
  v9 = v5;
  sub_28F9DC(&v9, &v10);
  v9 = v6;
  sub_28F9DC(&v9, &v10);
  v9 = v7;
  sub_28F9DC(&v9, &v10);
  result = v10;
  if (v10[2] < 0x40uLL)
  {
    __break(1u);
  }

  return result;
}

void *sub_2A3A00()
{
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  v2 = v0[3];
  v17[2] = v0[2];
  v17[3] = v2;
  v18 = 0xD000000000000011;
  v19 = 0x8000000000439F30;
  result = sub_2A38B4();
  v7 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 2 * v7;
  if (((2 * v7) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v8)
  {
    v12 = sub_303AE8();
    v12[2] = v8;
    bzero(v12 + 4, v8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v16 = 0;
  *&v17[0] = v12;
  sub_303C28();
  sub_26FA54(v9, v10, v11, v17, &v16);
  swift_unknownObjectRelease();
  v13 = sub_303958();
  v15 = v14;
  swift_unknownObjectRelease();

  v20._countAndFlagsBits = v13;
  v20._object = v15;
  sub_303988(v20);

  return v18;
}

Swift::Int sub_2A3B5C()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

Swift::Int sub_2A3BE4()
{
  sub_303D98();
  sub_303DA8();
  return sub_303DE8();
}

void *sub_2A3C84@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v4 = v1[3];
  v6[2] = v1[2];
  v6[3] = v4;
  result = sub_2A0B58(v6, v7);
  *a1 = result;
  a1[1] = 0;
  return result;
}

BOOL sub_2A3CFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  sub_293F00(v8, v9, v9, &v10, &v7);
  return v7;
}

uint64_t sub_2A3DC4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 20;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2A3E08(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 16;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2A3E4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 32;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2A3E90(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 48;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2A3ED4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = a1 + 64;
  }

  else
  {
    v6 = 0;
  }

  result = (*(v3 + 24))(a1, v6);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

unint64_t sub_2A3F18(uint64_t a1)
{
  result = sub_28D2F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A3F94()
{
  result = qword_519E00;
  if (!qword_519E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E00);
  }

  return result;
}

unint64_t sub_2A3FE8()
{
  result = qword_519E08;
  if (!qword_519E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E08);
  }

  return result;
}

unint64_t sub_2A403C()
{
  result = qword_519E10;
  if (!qword_519E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E10);
  }

  return result;
}

unint64_t sub_2A4090()
{
  result = qword_519E18;
  if (!qword_519E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E18);
  }

  return result;
}

unint64_t sub_2A40E8()
{
  result = qword_519E20;
  if (!qword_519E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E20);
  }

  return result;
}

unint64_t sub_2A413C(uint64_t a1)
{
  result = sub_28D3C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A41B8()
{
  result = qword_519E28;
  if (!qword_519E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E28);
  }

  return result;
}

unint64_t sub_2A420C()
{
  result = qword_519E30;
  if (!qword_519E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E30);
  }

  return result;
}

unint64_t sub_2A4260()
{
  result = qword_519E38;
  if (!qword_519E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E38);
  }

  return result;
}

unint64_t sub_2A42B4()
{
  result = qword_519E40;
  if (!qword_519E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E40);
  }

  return result;
}

unint64_t sub_2A430C()
{
  result = qword_519E48;
  if (!qword_519E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E48);
  }

  return result;
}

unint64_t sub_2A4360(uint64_t a1)
{
  result = sub_28D4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A43DC()
{
  result = qword_519E50;
  if (!qword_519E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E50);
  }

  return result;
}

unint64_t sub_2A4430()
{
  result = qword_519E58;
  if (!qword_519E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E58);
  }

  return result;
}

unint64_t sub_2A4484()
{
  result = qword_519E60;
  if (!qword_519E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E60);
  }

  return result;
}

unint64_t sub_2A44D8()
{
  result = qword_519E68;
  if (!qword_519E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E68);
  }

  return result;
}

unint64_t sub_2A4530()
{
  result = qword_519E70;
  if (!qword_519E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E70);
  }

  return result;
}

unint64_t sub_2A4584(uint64_t a1)
{
  result = sub_27912C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A4600()
{
  result = qword_519E78;
  if (!qword_519E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E78);
  }

  return result;
}

unint64_t sub_2A4654()
{
  result = qword_519E80;
  if (!qword_519E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E80);
  }

  return result;
}

unint64_t sub_2A46A8()
{
  result = qword_519E88;
  if (!qword_519E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E88);
  }

  return result;
}

unint64_t sub_2A46FC()
{
  result = qword_519E90;
  if (!qword_519E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E90);
  }

  return result;
}

unint64_t sub_2A4754()
{
  result = qword_519E98;
  if (!qword_519E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519E98);
  }

  return result;
}

unint64_t sub_2A47A8(uint64_t a1)
{
  result = sub_279258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A4824()
{
  result = qword_519EA0;
  if (!qword_519EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EA0);
  }

  return result;
}

unint64_t sub_2A4878()
{
  result = qword_519EA8;
  if (!qword_519EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EA8);
  }

  return result;
}

unint64_t sub_2A48CC()
{
  result = qword_519EB0;
  if (!qword_519EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EB0);
  }

  return result;
}

unint64_t sub_2A4920()
{
  result = qword_519EB8;
  if (!qword_519EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EB8);
  }

  return result;
}

unint64_t sub_2A4978()
{
  result = qword_519EC0;
  if (!qword_519EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EC0);
  }

  return result;
}

unint64_t sub_2A49CC(uint64_t a1)
{
  result = sub_268E9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A4A48()
{
  result = qword_519EC8;
  if (!qword_519EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EC8);
  }

  return result;
}

unint64_t sub_2A4A9C()
{
  result = qword_519ED0;
  if (!qword_519ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519ED0);
  }

  return result;
}

unint64_t sub_2A4AF0()
{
  result = qword_519ED8;
  if (!qword_519ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519ED8);
  }

  return result;
}

unint64_t sub_2A4B44()
{
  result = qword_519EE0;
  if (!qword_519EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EE0);
  }

  return result;
}

unint64_t sub_2A4B9C()
{
  result = qword_519EE8;
  if (!qword_519EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EE8);
  }

  return result;
}

unint64_t sub_2A4BF0(uint64_t a1)
{
  result = sub_268FC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A4C6C()
{
  result = qword_519EF0;
  if (!qword_519EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EF0);
  }

  return result;
}

unint64_t sub_2A4CC0()
{
  result = qword_519EF8;
  if (!qword_519EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519EF8);
  }

  return result;
}

unint64_t sub_2A4D14()
{
  result = qword_519F00;
  if (!qword_519F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F00);
  }

  return result;
}

unint64_t sub_2A4D68()
{
  result = qword_519F08;
  if (!qword_519F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F08);
  }

  return result;
}

unint64_t sub_2A4DC0()
{
  result = qword_519F10;
  if (!qword_519F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F10);
  }

  return result;
}

unint64_t sub_2A4E14(uint64_t a1)
{
  result = sub_2690F4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2A4E90(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_2A4EF4()
{
  result = qword_519F18;
  if (!qword_519F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F18);
  }

  return result;
}

unint64_t sub_2A4F48()
{
  result = qword_519F20;
  if (!qword_519F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F20);
  }

  return result;
}

unint64_t sub_2A4F9C()
{
  result = qword_519F28;
  if (!qword_519F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F28);
  }

  return result;
}

unint64_t sub_2A4FF0()
{
  result = qword_519F30;
  if (!qword_519F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F30);
  }

  return result;
}

unint64_t sub_2A5048()
{
  result = qword_519F38;
  if (!qword_519F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F38);
  }

  return result;
}

uint64_t _s10SHA1DigestVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10SHA1DigestVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2A5168()
{

  return sub_EB74();
}

uint64_t sub_2A51C0()
{

  return sub_EC34();
}

Swift::Int sub_2A5218()
{

  return sub_E600();
}

void *sub_2A5270@<X0>(void *a1@<X8>)
{

  return sub_E658(a1);
}

uint64_t sub_2A52C8()
{

  return sub_ECE4();
}

Swift::Int sub_2A5320()
{

  return sub_E708();
}

void *sub_2A5378@<X0>(void *a1@<X8>)
{

  return sub_E760(a1);
}

Swift::Int sub_2A53D0()
{

  return sub_E810();
}

void *sub_2A5428@<X0>(void *a1@<X8>)
{

  return sub_E868(a1);
}

BOOL sub_2A5480(_OWORD *a1, _OWORD *a2)
{

  return sub_E6B0(a1, a2);
}

BOOL sub_2A54D8(_OWORD *a1, _OWORD *a2)
{

  return sub_E7B8(a1, a2);
}

BOOL sub_2A5530(_OWORD *a1, _OWORD *a2)
{

  return sub_E8C0(a1, a2);
}

Swift::Int sub_2A5588()
{

  return sub_EC8C();
}

Swift::Int sub_2A55E0()
{

  return sub_ED3C();
}

Swift::Int sub_2A5638()
{

  return sub_ED94();
}

void sub_2A56E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_3035D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_258780(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_252148(v9, 0);
      v12 = sub_3034D8();
      sub_258780(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t *sub_2A59C4(uint64_t a1, uint64_t a2, uint64_t ***a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v5 = *a3;
  if (!*a3)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = a4();
  if (!v9)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_28;
  }

  v10 = ccec_raw_import_priv_only(v9, a2 - a1, a1, v5);
  if (v10)
  {
    v11 = v10;
    sub_273BE4();
    swift_allocError();
    *v12 = v11;
    *(v12 + 4) = 0;
    return swift_willThrow();
  }

  v14 = ccec_der_export_priv_size(v5, 0, 0);
  if (!v14)
  {
    if (qword_518860 == -1)
    {
LABEL_17:
      v22 = off_519B88[0];

      goto LABEL_18;
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

  v15 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v14))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | HIWORD(v17);
  v19 = __CFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = v20;
  }

  type metadata accessor for SecureBytes.Backing();
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = v21;
  if ((_swift_stdlib_malloc_size(v22) - 32) < v15)
  {
    goto LABEL_23;
  }

  v26[0] = 0;
  result = ccrng(v26);
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (v26[0])
  {
    goto LABEL_24;
  }

  ccrng_generate_bridge(result);
  swift_beginAccess();
  *(v22 + 2) = v15;
LABEL_18:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_beginAccess();
    sub_299C98((v22 + 8), v22 + *(v22 + 2) + 32, &v25);
    v23 = v25;

    v22 = v23;
  }

  swift_beginAccess();
  sub_2A5C48(v22 + 4, v22 + *(v22 + 2) + 32, &v24, v5, a5);
}

uint64_t *sub_2A5C48(uint64_t *result, uint64_t a2, _DWORD *a3, uint64_t **a4, uint64_t (*a5)(void))
{
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  v9 = a2 - result;
  LODWORD(result) = ccec_der_export_priv(a4, 0, 0, a2 - result, result);
  *a3 = result;
  if (!result)
  {
    result = a5();
    if (result)
    {
      result = ccec_der_import_priv(result, v9, v8, a4);
      *a3 = result;
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    return result;
  }

LABEL_5:
  v10 = result;
  sub_273BE4();
  swift_allocError();
  *v11 = v10;
  *(v11 + 4) = 0;
  return swift_willThrow();
}

void sub_2A5D1C(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_3034B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(a1);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = ccec_ctx_k(v10);
  v14 = a2();
  if (v14)
  {
    v15 = groupOrderByteCountForCP(v14);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = sub_2A5EC4(v13, v15);
      v17 = sub_26DDAC(v16);

      swift_beginAccess();
      v18 = *(v17 + 16);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *v12 = a3;
      v12[1] = v19;
      (*(v9 + 104))(v12, enum case for Data.Deallocator.custom(_:), v8);

      v20 = sub_2AAB40(v17 + 32, v18, v12);
      v22 = v21;

      *a4 = v20;
      a4[1] = v22;
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2A5EC4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v2 = result;
  v4 = sub_252148(a2, 0);
  result = sub_29AC10(v4 + 4, a2, v2, a2);
  if (v5 != a2)
  {
    __break(1u);
LABEL_4:
    v4 = _swiftEmptyArrayStorage;
  }

  v6 = v4[2];
  if (v6 < 2)
  {
    return v4;
  }

  v7 = v6 >> 1;
  v8 = v6 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_9;
    }

    v10 = v4[2];
    if (i - 32 >= v10)
    {
      break;
    }

    if (v8 - 32 >= v10)
    {
      goto LABEL_16;
    }

    v11 = *(v4 + i);
    v12 = *(v4 + v8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29550C(v4);
      v4 = result;
    }

    *(v4 + i) = v12;
    *(v4 + v8) = v11;
LABEL_9:
    --v8;
    if (!--v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2A5FBC(int64_t a1, int64_t a2, uint64_t a3)
{
  result = sub_2878F4(a1, a2, a3);
  v4 = result;
  v5 = *(result + 16);
  if (v5 < 2)
  {
    return v4;
  }

  v6 = v5 >> 1;
  v7 = v5 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v7)
    {
      goto LABEL_5;
    }

    v9 = *(v4 + 16);
    if (i - 4 >= v9)
    {
      break;
    }

    if (v7 - 4 >= v9)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + 8 * i);
    v11 = *(v4 + 8 * v7);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_295520(v4);
      v4 = result;
    }

    *(v4 + 8 * i) = v11;
    *(v4 + 8 * v7) = v10;
LABEL_5:
    --v7;
    if (!--v6)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void *sub_2A6078(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(unint64_t), uint64_t (*a7)(void *, uint64_t *))
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_2A61A0((a2 + a3), (a2 + (a4 >> 1)), a5);
    if (v7)
    {
      return swift_unknownObjectRelease();
    }

    result = a6(v10);
    if (result)
    {
      v11 = getccec_pub_ctx_size(result);
      __chkstk_darwin(v11);
      v13 = sub_27103C(v12, a7);
      swift_unknownObjectRelease();
      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2A61A0(_BYTE *a1, _BYTE *a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!result)
  {
    goto LABEL_15;
  }

  result = groupOrderByteCountForCP(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((result + 0x4000000000000000) < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!a1)
  {
    v6 = 1;
    goto LABEL_10;
  }

  v6 = 1;
  if (a2 - a1 == ((2 * result) | 1))
  {
    if (a2 != a1)
    {
      if (*a1 == 4)
      {
        return result;
      }

      v6 = 5;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_10:
  sub_273BE4();
  swift_allocError();
  *v7 = v6;
  *(v7 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_2A6278(char *a1, uint64_t (*a2)(void))
{

  v5 = ccec_export_pub_size((v4 + 32));
  v6 = sub_303AE8();
  *(v6 + 16) = v5;
  ccec_export_pub(a1 + 4, (v6 + 32));
  *(v6 + 16) = v5;
  v7 = sub_271344(v6);
  v9 = v8;

  v11 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v11)
    {
      v28[0] = v7;
      LOWORD(v28[1]) = v9;
      BYTE2(v28[1]) = BYTE2(v9);
      BYTE3(v28[1]) = BYTE3(v9);
      BYTE4(v28[1]) = BYTE4(v9);
      BYTE5(v28[1]) = BYTE5(v9);
      result = (a2)(v10);
      if (result)
      {
        v13 = result;
        v14 = BYTE6(v9);
        v15 = v28;
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v16 = *(v7 + 16);
    v17 = *(v7 + 24);
    v18 = sub_303388();
    if (v18)
    {
      v19 = sub_3033B8();
      if (__OFSUB__(v16, v19))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v18 += v16 - v19;
    }

    v20 = __OFSUB__(v17, v16);
    v21 = v17 - v16;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_3033A8();
    if (result >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = result;
    }

    if (!v18)
    {
      goto LABEL_42;
    }

    result = a2();
    if (result)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_16:
    if (v7 >> 32 >= v7)
    {
      v18 = sub_303388();
      if (!v18)
      {
LABEL_20:
        result = sub_3033A8();
        if (result >= (v7 >> 32) - v7)
        {
          v22 = (v7 >> 32) - v7;
        }

        else
        {
          v22 = result;
        }

        if (!v18)
        {
          goto LABEL_43;
        }

        result = a2();
        if (!result)
        {
LABEL_44:
          __break(1u);
          return result;
        }

LABEL_25:
        v13 = result;
        v15 = v18;
        v14 = v22;
        goto LABEL_28;
      }

      v23 = sub_3033B8();
      if (!__OFSUB__(v7, v23))
      {
        v18 += v7 - v23;
        goto LABEL_20;
      }

LABEL_39:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  result = (a2)(v10);
  memset(v28, 0, 14);
  if (!result)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = result;
  v15 = v28;
  v14 = 0;
LABEL_28:
  IsCompactRepresentable = keyIsCompactRepresentable(v15, v14, v13);
  sub_258780(v7, v9);
  if (IsCompactRepresentable)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_29550C(a1);
    }

    v25 = ccec_signature_r_s_size(a1 + 4);
    if (v25)
    {
      v26 = sub_303AE8();
      *(v26 + 2) = v25;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    ccec_compact_export_pub(v26 + 32, a1 + 4);
    *(v26 + 2) = v25;
    v27 = sub_271344(v26);

    return v27;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2A6584()
{
  v1 = *v0;
  if (qword_5187D0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_520878;
  v12 = *(&xmmword_520878 + 8);
  v13 = unk_520890;
  swift_unknownObjectRetain();

  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_303AE8();
  *(v4 + 16) = v3;
  ccec_export_pub((v1 + 32), (v4 + 32));
  *(v4 + 16) = v3;
  v5 = sub_271344(v4);
  v7 = v6;

  sub_2A56E8(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAD78(&v16, v14);
  sub_2862AC(0x30uLL, &v15, &v16);
  v10 = sub_271344(v15);

  sub_283218(&v16);
  return v10;
}

uint64_t sub_2A67E0()
{
  v1 = *v0;
  if (qword_5187D0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_520878;
  v17 = unk_520890;
  v18 = *(&xmmword_520878 + 8);
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_2A5D1C(v1 + 32, ccec_cp_256, sub_2AB224, &v21);
  sub_2A56E8(v21, v22);
  v4 = v3;
  v5 = ccec_cp_256();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = getccec_pub_ctx_size(v5);
  if (v6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_303AE8();
    v8[2] = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  memcpy(v8 + 4, (v1 + 32), v7);
  v8[2] = v7;

  v9 = ccec_export_pub_size(v8 + 4);
  v10 = sub_303AE8();
  *(v10 + 16) = v9;
  ccec_export_pub(v8 + 4, (v10 + 32));
  *(v10 + 16) = v9;
  v11 = sub_271344(v10);
  v13 = v12;

  sub_2A56E8(v11, v13);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  sub_2807D4(v4, v25, v14, &v24);
  v21 = v2;
  v23 = v17;
  v22 = v18;
  v20 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAE9C(&v21, v19);
  sub_2895D0(48, &v20, &v21);
  sub_28476C(&v21);
  v15 = sub_271344(v20);

  sub_28476C(&v21);
  return v15;
}

uint64_t sub_2A6C70()
{
  v1 = *v0;
  if (qword_5187D0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_520878;
  v12 = *(&xmmword_520878 + 8);
  v13 = unk_520890;
  swift_unknownObjectRetain();

  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_303AE8();
  *(v4 + 16) = v3;
  ccec_export_pub((v1 + 32), (v4 + 32));
  *(v4 + 16) = v3;
  v5 = sub_271344(v4);
  v7 = v6;

  sub_2A56E8(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAD78(&v16, v14);
  sub_2862AC(0x30uLL, &v15, &v16);
  v10 = sub_271344(v15);

  sub_283218(&v16);
  return v10;
}

uint64_t sub_2A6E24(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v4 = sub_281018(0x4B2043494C425550, 0xEA00000000005945);

  sub_258780(v1, v3);
  return v4;
}

uint64_t sub_2A6F88@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t)@<X4>, unint64_t *a6@<X8>)
{
  v10 = sub_2AA92C(a1, a2, a3, a4, a5);
  result = sub_258780(a1, a2);
  if (!v6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t sub_2A7084(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  swift_beginAccess();
  sub_2A5D1C(v6 + 32, a1, a3, &v8);
  return v8;
}

uint64_t sub_2A7108()
{
  v1 = *v0;
  if (qword_5187D0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_520878;
  v17 = unk_520890;
  v18 = *(&xmmword_520878 + 8);
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_2A5D1C(v1 + 32, ccec_cp_256, sub_2AB224, &v21);
  sub_2A56E8(v21, v22);
  v4 = v3;
  v5 = ccec_cp_256();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = getccec_pub_ctx_size(v5);
  if (v6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_303AE8();
    v8[2] = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  memcpy(v8 + 4, (v1 + 32), v7);
  v8[2] = v7;

  v9 = ccec_export_pub_size(v8 + 4);
  v10 = sub_303AE8();
  *(v10 + 16) = v9;
  ccec_export_pub(v8 + 4, (v10 + 32));
  *(v10 + 16) = v9;
  v11 = sub_271344(v10);
  v13 = v12;

  sub_2A56E8(v11, v13);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  sub_2807D4(v4, v25, v14, &v24);
  v21 = v2;
  v23 = v17;
  v22 = v18;
  v20 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAE9C(&v21, v19);
  sub_2895D0(48, &v20, &v21);
  sub_28476C(&v21);
  v15 = sub_271344(v20);

  sub_28476C(&v21);
  return v15;
}

uint64_t sub_2A73CC(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v4 = sub_281018(0x2045544156495250, 0xEB0000000059454BLL);

  sub_258780(v1, v3);
  return v4;
}

uint64_t sub_2A746C()
{
  v1 = *v0;
  if (qword_5187D8 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208A0;
  v12 = *(&xmmword_5208A0 + 8);
  v13 = unk_5208B8;
  swift_unknownObjectRetain();

  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_303AE8();
  *(v4 + 16) = v3;
  ccec_export_pub((v1 + 32), (v4 + 32));
  *(v4 + 16) = v3;
  v5 = sub_271344(v4);
  v7 = v6;

  sub_2A56E8(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAD78(&v16, v14);
  sub_2862AC(0x30uLL, &v15, &v16);
  v10 = sub_271344(v15);

  sub_283218(&v16);
  return v10;
}

uint64_t sub_2A76C8()
{
  v1 = *v0;
  if (qword_5187D8 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208A0;
  v17 = unk_5208B8;
  v18 = *(&xmmword_5208A0 + 8);
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_2A5D1C(v1 + 32, ccec_cp_384, sub_2AB224, &v21);
  sub_2A56E8(v21, v22);
  v4 = v3;
  v5 = ccec_cp_384();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = getccec_pub_ctx_size(v5);
  if (v6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_303AE8();
    v8[2] = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  memcpy(v8 + 4, (v1 + 32), v7);
  v8[2] = v7;

  v9 = ccec_export_pub_size(v8 + 4);
  v10 = sub_303AE8();
  *(v10 + 16) = v9;
  ccec_export_pub(v8 + 4, (v10 + 32));
  *(v10 + 16) = v9;
  v11 = sub_271344(v10);
  v13 = v12;

  sub_2A56E8(v11, v13);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  sub_2807D4(v4, v25, v14, &v24);
  v21 = v2;
  v23 = v17;
  v22 = v18;
  v20 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAE9C(&v21, v19);
  sub_2895D0(48, &v20, &v21);
  sub_28476C(&v21);
  v15 = sub_271344(v20);

  sub_28476C(&v21);
  return v15;
}

uint64_t sub_2A7B54()
{
  v1 = *v0;
  if (qword_5187D8 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208A0;
  v12 = *(&xmmword_5208A0 + 8);
  v13 = unk_5208B8;
  swift_unknownObjectRetain();

  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_303AE8();
  *(v4 + 16) = v3;
  ccec_export_pub((v1 + 32), (v4 + 32));
  *(v4 + 16) = v3;
  v5 = sub_271344(v4);
  v7 = v6;

  sub_2A56E8(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAD78(&v16, v14);
  sub_2862AC(0x30uLL, &v15, &v16);
  v10 = sub_271344(v15);

  sub_283218(&v16);
  return v10;
}

uint64_t sub_2A7E78()
{
  v1 = *v0;
  if (qword_5187D8 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208A0;
  v17 = unk_5208B8;
  v18 = *(&xmmword_5208A0 + 8);
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_2A5D1C(v1 + 32, ccec_cp_384, sub_2AB224, &v21);
  sub_2A56E8(v21, v22);
  v4 = v3;
  v5 = ccec_cp_384();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = getccec_pub_ctx_size(v5);
  if (v6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_303AE8();
    v8[2] = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  memcpy(v8 + 4, (v1 + 32), v7);
  v8[2] = v7;

  v9 = ccec_export_pub_size(v8 + 4);
  v10 = sub_303AE8();
  *(v10 + 16) = v9;
  ccec_export_pub(v8 + 4, (v10 + 32));
  *(v10 + 16) = v9;
  v11 = sub_271344(v10);
  v13 = v12;

  sub_2A56E8(v11, v13);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  sub_2807D4(v4, v25, v14, &v24);
  v21 = v2;
  v23 = v17;
  v22 = v18;
  v20 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAE9C(&v21, v19);
  sub_2895D0(48, &v20, &v21);
  sub_28476C(&v21);
  v15 = sub_271344(v20);

  sub_28476C(&v21);
  return v15;
}

uint64_t sub_2A813C()
{
  v1 = *v0;
  v2 = ccec_export_pub_size((*v0 + 32));
  v3 = sub_303AE8();
  *(v3 + 16) = v2;
  ccec_export_pub((v1 + 32), (v3 + 32));
  *(v3 + 16) = v2;
  v4 = sub_271344(v3);

  return v4;
}

uint64_t sub_2A81B4()
{
  v1 = *v0;
  if (qword_5187E0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208C8;
  v12 = *(&xmmword_5208C8 + 8);
  v13 = unk_5208E0;
  swift_unknownObjectRetain();

  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_303AE8();
  *(v4 + 16) = v3;
  ccec_export_pub((v1 + 32), (v4 + 32));
  *(v4 + 16) = v3;
  v5 = sub_271344(v4);
  v7 = v6;

  sub_2A56E8(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAD78(&v16, v14);
  sub_2862AC(0x30uLL, &v15, &v16);
  v10 = sub_271344(v15);

  sub_283218(&v16);
  return v10;
}

void *sub_2A8368@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, void, uint64_t)@<X2>, void *a4@<X8>)
{
  result = a2();
  if (result)
  {
    v8 = getccec_full_ctx_size(result);
    result = a3(v8, a1 & 1, v8);
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2A8474()
{
  v1 = *v0;
  if (qword_5187E0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208C8;
  v17 = unk_5208E0;
  v18 = *(&xmmword_5208C8 + 8);
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_2A5D1C(v1 + 32, ccec_cp_521, sub_2AB100, &v21);
  sub_2A56E8(v21, v22);
  v4 = v3;
  v5 = ccec_cp_521();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = getccec_pub_ctx_size(v5);
  if (v6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_303AE8();
    v8[2] = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  memcpy(v8 + 4, (v1 + 32), v7);
  v8[2] = v7;

  v9 = ccec_export_pub_size(v8 + 4);
  v10 = sub_303AE8();
  *(v10 + 16) = v9;
  ccec_export_pub(v8 + 4, (v10 + 32));
  *(v10 + 16) = v9;
  v11 = sub_271344(v10);
  v13 = v12;

  sub_2A56E8(v11, v13);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  sub_2807D4(v4, v25, v14, &v24);
  v21 = v2;
  v23 = v17;
  v22 = v18;
  v20 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAE9C(&v21, v19);
  sub_2895D0(48, &v20, &v21);
  sub_28476C(&v21);
  v15 = sub_271344(v20);

  sub_28476C(&v21);
  return v15;
}

uint64_t sub_2A8810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v14 = a4();
  v15 = a6(a1, a5, a2, v14, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v7)
  {
    *a7 = v15;
  }

  return result;
}

uint64_t sub_2A8920@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(unint64_t)@<X3>, uint64_t (*a5)(void *, uint64_t *)@<X4>, void *a6@<X8>)
{
  result = sub_281F64(a1, a2);
  if (!v6)
  {
    v15 = v13;
    v16 = v14;
    if (result == 0x4B2043494C425550 && v12 == 0xEA00000000005945 || (sub_303D08() & 1) != 0)
    {
      sub_2582E4(v15, v16);
      sub_2A56E8(v15, v16);
      sub_289100(v17, v17 + 32, 0, (2 * *(v17 + 16)) | 1, v23);

      sub_282F84(v23, 0x30u, v24);
      v19 = v25;
      v20 = v26;
      v28 = v27;
      v21 = swift_unknownObjectRetain();
      v22 = sub_2A6078(v21, v19, v20, v28, a3, a4, a5);
      sub_283218(v24);

      result = sub_258780(v15, v16);
      *a6 = v22;
    }

    else
    {
      sub_2809A8();
      swift_allocError();
      *v18 = 7;
      swift_willThrow();

      return sub_258780(v15, v16);
    }
  }

  return result;
}

uint64_t sub_2A8B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(unint64_t)@<X4>, uint64_t (*a5)(void *, uint64_t *)@<X5>, void *a6@<X8>)
{
  v30 = a5;
  v12 = *(a2 - 8);
  v13 = __chkstk_darwin(a1);
  (*(v12 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v13);
  v15 = sub_303AF8();
  sub_289100(v15, v15 + 32, 0, (2 * *(v15 + 16)) | 1, v25);
  if (v6)
  {
    (*(v12 + 8))(a1, a2);
  }

  else
  {
    v17 = v30;
    v24 = a6;

    sub_282F84(v25, 0x30u, v26);
    v18 = v27;
    v20 = v28;
    v19 = v29;
    v21 = swift_unknownObjectRetain();
    v22 = sub_2A6078(v21, v18, v20, v19, a3, a4, v17);
    sub_283218(v26);
    result = (*(v12 + 8))(a1, a2);
    *v24 = v22;
  }

  return result;
}

uint64_t sub_2A8DCC()
{
  v1 = *v0;
  v2 = ccec_export_pub_size((*v0 + 32));
  v3 = sub_303AE8();
  *(v3 + 16) = v2;
  ccec_export_pub((v1 + 32), (v3 + 32));
  *(v3 + 16) = v2;
  v4 = sub_271344(v3);
  v6 = v5;

  sub_272414(1, v4, v6, &v8);
  return v8;
}

uint64_t sub_2A8E74(uint64_t (*a1)(void))
{
  v2 = *v1;
  result = a1();
  if (result)
  {
    result = ccec_compressed_x962_export_pub_size(result);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      if (result)
      {
        v5 = sub_303AE8();
        *(v5 + 2) = v4;
      }

      else
      {
        v5 = _swiftEmptyArrayStorage;
      }

      result = ccec_compressed_x962_export_pub((v2 + 32), v5 + 32);
      if (!result)
      {
        *(v5 + 2) = v4;
        v6 = sub_271344(v5);

        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2A8F1C()
{
  v1 = *v0;
  if (qword_5187E0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208C8;
  v12 = *(&xmmword_5208C8 + 8);
  v13 = unk_5208E0;
  swift_unknownObjectRetain();

  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_303AE8();
  *(v4 + 16) = v3;
  ccec_export_pub((v1 + 32), (v4 + 32));
  *(v4 + 16) = v3;
  v5 = sub_271344(v4);
  v7 = v6;

  sub_2A56E8(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAD78(&v16, v14);
  sub_2862AC(0x30uLL, &v15, &v16);
  v10 = sub_271344(v15);

  sub_283218(&v16);
  return v10;
}

uint64_t sub_2A9160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v14 = a4();
  v15 = a6(a1, a5, a2, v14, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v7)
  {
    *a7 = v15;
  }

  return result;
}

uint64_t sub_2A92B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(void *, uint64_t *)@<X3>, void (*a5)(void *, uint64_t *)@<X4>, unint64_t *a6@<X8>)
{
  result = sub_281F64(a1, a2);
  if (!v6)
  {
    v15 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v44 = a6;
    if (result == 0x4156495250204345 && v12 == 0xEE0059454B204554 || (sub_303D08() & 1) != 0)
    {
      sub_2582E4(v17, v18);
      sub_2A56E8(v17, v18);
      sub_289100(v19, v19 + 32, 0, (2 * *(v19 + 16)) | 1, v36);

      v20 = sub_2805FC(v36, 0x30u, v37);
      v42[0] = v38;
      v42[1] = v39;
      result = a3(v20);
      if (result)
      {
        v22 = result;
        swift_unknownObjectRetain();
        v23 = getccec_full_ctx_size(v22);
        __chkstk_darwin(v23);
        v25 = sub_29B110(v24, a4);
        v26 = v44;
        v29 = v25;
        sub_280ABC(v37);

        sub_258780(v17, v18);
        result = sub_2AAE18(v42);
        *v26 = v29;
        return result;
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if ((v15 != 0x2045544156495250 || v16 != 0xEB0000000059454BLL) && (sub_303D08() & 1) == 0)
    {
      sub_2809A8();
      swift_allocError();
      *v28 = 7;
      swift_willThrow();

      return sub_258780(v17, v18);
    }

    sub_2582E4(v17, v18);
    sub_2A56E8(v17, v18);
    sub_289100(v21, v21 + 32, 0, (2 * *(v21 + 16)) | 1, v40);

    v27 = sub_284590(v40, 0x30u, v41);
    v43[0] = v41[5];
    v43[1] = v41[6];
    result = a3(v27);
    if (!result)
    {
      goto LABEL_17;
    }

    v30 = result;
    swift_unknownObjectRetain();
    v31 = getccec_full_ctx_size(v30);
    __chkstk_darwin(v31);
    v33 = sub_29B110(v32, a5);
    v34 = v44;
    v35 = v33;
    sub_28476C(v41);

    sub_258780(v17, v18);
    result = sub_2AAE18(v43);
    *v34 = v35;
  }

  return result;
}

uint64_t sub_2A9700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X3>, void (*a4)(void *, uint64_t *)@<X4>, void (*a5)(void *, uint64_t *)@<X5>, unint64_t *a6@<X8>)
{
  v41 = a5;
  v28 = a6;
  v11 = *(a2 - 8);
  v12 = __chkstk_darwin(a1);
  (*(v11 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v12);
  v14 = sub_303AF8();
  v15 = (2 * *(v14 + 16)) | 1;
  sub_289100(v14, v14 + 32, 0, v15, v31);
  if (v6)
  {
    sub_289100(v14, v14 + 32, 0, v15, v35);

    v17 = sub_2805FC(v35, 0x30u, v36);
    v39[0] = v37;
    v39[1] = v38;
    v29 = v37;
    v30 = v38;
    result = a3(v17);
    if (result)
    {
      v22 = result;
      swift_unknownObjectRetain();
      v23 = getccec_full_ctx_size(v22);
      __chkstk_darwin(v23);
      *(&v27 - 2) = &v29;
      *(&v27 - 1) = v24;
      v25 = sub_29B110(v24, v41);

      sub_280ABC(v36);
      (*(v11 + 8))(a1, a2);
      result = sub_2AAE18(v39);
      v26 = v25;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = sub_284590(v31, 0x30u, v32);
    v40[0] = v33;
    v40[1] = v34;
    v29 = v33;
    v30 = v34;
    result = a3(v16);
    if (result)
    {
      v19 = result;
      swift_unknownObjectRetain();
      v20 = getccec_full_ctx_size(v19);
      v27 = &v27;
      __chkstk_darwin(v20);
      *(&v27 - 2) = &v29;
      *(&v27 - 1) = v21;
      v26 = sub_29B110(v21, a4);
      sub_28476C(v32);

      (*(v11 + 8))(a1, a2);
      result = sub_2AAE18(v40);
LABEL_8:
      *v28 = v26;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2A9AA8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = a1();
  if (!result)
  {
    goto LABEL_8;
  }

  result = getccec_pub_ctx_size(result);
  if (result < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;

  if (v6)
  {
    v7 = sub_303AE8();
    v7[2] = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  memcpy(v7 + 4, (v4 + 32), v6);
  v7[2] = v6;

  *a2 = v7;
  return result;
}

uint64_t sub_2A9B78()
{
  v1 = *v0;
  v2 = ccec_x963_export_size((*v0 + 32));
  v3 = sub_303AE8();
  *(v3 + 16) = v2;
  ccec_x963_export(1, (v3 + 32), (v1 + 32));
  *(v3 + 16) = v2;
  v4 = sub_271344(v3);

  return v4;
}

uint64_t sub_2A9BF4()
{
  v1 = *v0;
  if (qword_5187E0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_5208C8;
  v17 = unk_5208E0;
  v18 = *(&xmmword_5208C8 + 8);
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_2A5D1C(v1 + 32, ccec_cp_521, sub_2AB100, &v21);
  sub_2A56E8(v21, v22);
  v4 = v3;
  v5 = ccec_cp_521();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = getccec_pub_ctx_size(v5);
  if (v6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_303AE8();
    v8[2] = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  memcpy(v8 + 4, (v1 + 32), v7);
  v8[2] = v7;

  v9 = ccec_export_pub_size(v8 + 4);
  v10 = sub_303AE8();
  *(v10 + 16) = v9;
  ccec_export_pub(v8 + 4, (v10 + 32));
  *(v10 + 16) = v9;
  v11 = sub_271344(v10);
  v13 = v12;

  sub_2A56E8(v11, v13);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  sub_2807D4(v4, v25, v14, &v24);
  v21 = v2;
  v23 = v17;
  v22 = v18;
  v20 = sub_2AA23C(0, 1024, 0, _swiftEmptyArrayStorage, &qword_5186A8);
  sub_2AAE9C(&v21, v19);
  sub_2895D0(48, &v20, &v21);
  sub_28476C(&v21);
  v15 = sub_271344(v20);

  sub_28476C(&v21);
  return v15;
}

uint64_t sub_2AA074@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(unint64_t, uint64_t, uint64_t, unint64_t *, unint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = *v4;
  v10 = a2();
  if (!v10)
  {
LABEL_7:
    __break(1u);
  }

  v11 = groupOrderByteCountForCP(v10);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  swift_beginAccess();
  v14 = v12;
  result = a3(v12, v9 + 32, v8 + 32, &v14, v12);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2AA160@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  result = a1();
  if (!result)
  {
    goto LABEL_8;
  }

  result = getccec_pub_ctx_size(result);
  if (result < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;

  if (v6)
  {
    v7 = sub_303AE8();
    v7[2] = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  memcpy(v7 + 4, (v4 + 32), v6);
  v7[2] = v6;

  *a2 = v7;
  return result;
}

char *sub_2AA23C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_2AA350(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_2AA44C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_51A138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2AA558(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_51A140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_2AA678(uint64_t *result, void *a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(void))
{
  v6 = *result;
  if (!*result)
  {
    goto LABEL_6;
  }

  v7 = a4[2];
  v8 = a4[3] >> 1;
  v9 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = a4[1];
  result = a6();
  if (result)
  {
    result = ccec_import_pub(result, v9, v13 + v7, v6);
    *a5 = result;
    *a2 = a3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_2AA710(uint64_t *result, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = a3[2];
  v8 = a3[3] >> 1;
  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = sub_2A59C4(a3[1] + v7, a3[1] + v7 + v10, result, a5, a6);
    if (!v6)
    {
      *a2 = a4;
    }
  }

  return result;
}

unint64_t sub_2AA770(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_2A0BD4(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_2AA830()
{
  result = qword_519F40;
  if (!qword_519F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F40);
  }

  return result;
}

unint64_t sub_2AA884()
{
  result = qword_519F48;
  if (!qword_519F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F48);
  }

  return result;
}

unint64_t sub_2AA8D8()
{
  result = qword_519F50;
  if (!qword_519F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519F50);
  }

  return result;
}

unint64_t sub_2AA92C(unint64_t result, unint64_t a2, char a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = result;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(result + 16);
  v11 = *(result + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = HIDWORD(result) - result;
  }

LABEL_11:
  result = a4();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v13 = result;
  result = groupOrderByteCountForCP(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(result, 8))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 == result + 8)
  {
    v14 = getccec_full_ctx_size(v13);
    if (a3)
    {
      v15 = 9;
    }

    else
    {
      v15 = 1;
    }

    return a5(v14, v8, a2, v15, v14);
  }

  else
  {
    sub_273BE4();
    swift_allocError();
    *v16 = 1;
    *(v16 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_2AAA5C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_3034F8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_303388();
  if (v3)
  {
    result = sub_3033B8();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_3033A8();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2AA770(v3, v7);

  return v8;
}

uint64_t sub_2AAB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3034B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3034A8();
  if (a2)
  {
    sub_3033D8();
    swift_allocObject();

    v10 = sub_303368();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == enum case for Data.Deallocator.none(_:))
    {
      v11 = sub_3033C8();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_2AAA5C(v10, a2);
  }

  else
  {
    v13 = sub_3034A8();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

void *aaSequentialDecompressionIStreamOpen(uint64_t a1, int a2)
{
  if (!a2)
  {
    getDefaultNThreads();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 266;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", v18, 20, v16, v17, v14, v15, v20);
    free(v3);
    aaDecompressionStreamClose(v5);
    return 0;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v17 = "allocating buffer";
    v18 = 273;
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (aaDecompressionStreamRefill(v5, 0xCuLL) < 0)
  {
    v17 = "reading magic";
    v18 = 276;
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = aaDecompressionStreamClose;
  v3[2] = aaDecompressionStreamRead;
  v3[7] = aaDecompressionStreamAbort;
  return v3;
}

uint64_t aaDecompressionStreamRefill(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v6 = (a1 + 8);
  v5 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    v9 = v7 + 0x40000;
    if ((v7 + 0x40000) < 0)
    {
      return -1;
    }

    if (v7 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v8 = v7;
LABEL_14:
    v11 = v7;
LABEL_18:
    if (v11 - v8 >= v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = v11 - v8;
    }

    v15 = AAByteStreamRead(v5, (*(a1 + 24) + v8), v14);
    if (v15 < 0)
    {
      return -1;
    }

    if (!v15)
    {
      return v4;
    }

    v8 = *v6 + v15;
    if (__CFADD__(*v6, v15))
    {
      return -1;
    }

    v7 = *(a1 + 16);
    if (v8 > v7)
    {
      return -1;
    }

    *v6 = v8;
    v4 += v15;
    v2 -= v15;
    if (!v2)
    {
      return v4;
    }
  }

  do
  {
    while (!v7)
    {
      v7 = 0x4000;
      v11 = 0x4000;
      if (v9 <= 0x4000)
      {
        goto LABEL_16;
      }
    }

    v10 = v7 >> 1;
    if ((v7 & (v7 >> 1)) != 0)
    {
      v10 = v7 & (v7 >> 1);
    }

    v7 += v10;
  }

  while (v7 < v9);
  v11 = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_32;
  }

LABEL_16:
  v12 = *(a1 + 24);
  v13 = realloc(v12, v11);
  if (v13)
  {
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    goto LABEL_18;
  }

  free(v12);
LABEL_32:
  *v6 = 0;
  v6[1] = 0;
  v4 = -1;
  v6[2] = 0;
  return v4;
}

size_t aaDecompressionStreamReadInput(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (nbyte)
  {
    v3 = nbyte;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v3 >= v7)
        {
          v8 = *(a1 + 8);
        }

        else
        {
          v8 = v3;
        }

        memcpy((a2 + v6), *(a1 + 24), v8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          return v8;
        }

        v9 = *(a1 + 8);
        v10 = v9 - v8;
        if (v9 >= v8)
        {
          if (v9 != v8)
          {
            memmove(*(a1 + 24), (*(a1 + 24) + v8), v9 - v8);
          }

          *(a1 + 8) = v10;
        }
      }

      else
      {
        if (*(a1 + 60))
        {
          return v6;
        }

        v11 = AAByteStreamRead(*a1, (a2 + v6), v3);
        v8 = v11;
        if (v11 < 0)
        {
          return v8;
        }

        if (!v11)
        {
          *(a1 + 60) = 1;
          return v6;
        }
      }

      v6 += v8;
      v3 -= v8;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t aaDecompressionStreamClose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    switch(v2)
    {
      case 2:
        compression_stream_destroy((a1 + 312));
        break;
      case 4:
        BZ2_bzDecompressEnd((a1 + 96));
        break;
      case 3:
        lzma_end();
        break;
    }

    IDecoderStreamDestroy(*(a1 + 72));
    free(*(a1 + 24));
    memset_s((a1 + 8), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 48));
    memset_s((a1 + 32), 0x18uLL, 0, 0x18uLL);
    free(a1);
  }

  return 0;
}

size_t aaDecompressionStreamRead(uint64_t a1, uint64_t a2, size_t nbyte, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 68))
  {
    return -1;
  }

  v10 = nbyte;
  v13 = *(a1 + 72);
  if (v13)
  {

    return IDecoderStreamRead(v13, a2, nbyte);
  }

  v14 = *(a1 + 56);
  if (v14 == -1)
  {
    return -1;
  }

  if (!v14)
  {

    return aaDecompressionStreamReadInput(a1, a2, nbyte);
  }

  if (!nbyte)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      if (v10 >= v17)
      {
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = v10;
      }

      memcpy((a2 + v16), *(a1 + 48), v8);
      if ((v8 & 0x8000000000000000) != 0)
      {
        return v8;
      }

      v18 = *(a1 + 32);
      v19 = v18 - v8;
      if (v18 >= v8)
      {
        if (v18 != v8)
        {
          memmove(*(a1 + 48), (*(a1 + 48) + v8), v18 - v8);
        }

        *(a1 + 32) = v19;
      }

      v16 += v8;
      v10 -= v8;
      goto LABEL_148;
    }

    if (*(a1 + 64))
    {
      return v16;
    }

    v21 = *(a1 + 8);
    v20 = *(a1 + 16);
    if (v20 == v21)
    {
      goto LABEL_57;
    }

    if (*(a1 + 60))
    {
      goto LABEL_56;
    }

    v22 = v20 - v21;
    if (v20 == v21)
    {
      goto LABEL_55;
    }

    v8 = 0;
    v23 = *a1;
    do
    {
      if (v21 == v20)
      {
        v24 = v20 + 0x40000;
        if ((v20 + 0x40000) < 0)
        {
          goto LABEL_151;
        }

        if (v20 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v20)
            {
              v20 = 0x4000;
              v26 = 0x4000;
              if (v24 <= 0x4000)
              {
                goto LABEL_43;
              }
            }

            v25 = v20 >> 1;
            if ((v20 & (v20 >> 1)) != 0)
            {
              v25 = v20 & (v20 >> 1);
            }

            v20 += v25;
          }

          while (v20 < v24);
          v26 = v20;
          if (v20 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_165;
          }

LABEL_43:
          v27 = *(a1 + 24);
          v28 = realloc(v27, v26);
          if (v28)
          {
            *(a1 + 16) = v26;
            *(a1 + 24) = v28;
            v21 = *(a1 + 8);
            goto LABEL_45;
          }

          free(v27);
LABEL_165:
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v8 = -1;
          *(a1 + 24) = 0;
          goto LABEL_152;
        }

        v21 = v20;
      }

      v26 = v20;
LABEL_45:
      if (v26 - v21 >= v22)
      {
        v29 = v22;
      }

      else
      {
        v29 = v26 - v21;
      }

      v30 = AAByteStreamRead(v23, (*(a1 + 24) + v21), v29);
      if (v30 < 0)
      {
        goto LABEL_151;
      }

      if (!v30)
      {
        break;
      }

      v31 = *(a1 + 8);
      v21 = v31 + v30;
      if (__CFADD__(v31, v30) || (v20 = *(a1 + 16), v21 > v20))
      {
LABEL_151:
        v8 = -1;
LABEL_152:
        v82 = "stream read failed";
        v83 = 144;
        goto LABEL_153;
      }

      *(a1 + 8) = v21;
      v8 += v30;
      v22 -= v30;
    }

    while (v22);
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (v8)
    {
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 60) = 1;
LABEL_56:
    v21 = *(a1 + 8);
LABEL_57:
    v33 = *(a1 + 24);
    v32 = *(a1 + 32);
    v34 = *(a1 + 40) - v32;
    v35 = (*(a1 + 48) + v32);
    v36 = *(a1 + 56);
    v8 = -1;
    if (v36 <= 2)
    {
      break;
    }

    if (v36 == 3)
    {
      *(a1 + 176) = v33;
      *(a1 + 184) = v21;
      *(a1 + 200) = v35;
      *(a1 + 208) = v34;
      v67 = lzma_code();
      v68 = v67;
      if (v67 <= 0xA && ((1 << v67) & 0x403) != 0)
      {
        v69 = v15;
        v70 = *(a1 + 176);
        v71 = *(a1 + 200);
        v72 = v70 - v33;
        if (v70 != v33)
        {
          v73 = *(a1 + 8);
          v44 = v73 >= v72;
          v74 = v73 - v72;
          if (v44)
          {
            if (v74)
            {
              v90 = v74;
              memmove(*(a1 + 24), (*(a1 + 24) + v72), v74);
              v74 = v90;
            }

            *(a1 + 8) = v74;
          }
        }

        if (v71 != v35)
        {
          v75 = *(a1 + 32);
          v76 = v75 + v71 - v35;
          if (!__CFADD__(v75, v71 - v35) && v76 <= *(a1 + 40))
          {
            *(a1 + 32) = v76;
          }
        }

        if (v71 == v35 && v70 == v33)
        {
          v15 = v69 + 1;
        }

        else
        {
          v15 = 0;
        }

        if (v68 == 1)
        {
          goto LABEL_131;
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 194, 20, 0, "decoding lzma payload", a7, a8, v86);
      }

      v8 = -1;
      if (v68 <= 0xA && ((1 << v68) & 0x403) != 0)
      {
        goto LABEL_147;
      }

      return v8;
    }

    if (v36 != 4)
    {
      return v8;
    }

    *(a1 + 96) = v33;
    *(a1 + 104) = v21;
    *(a1 + 120) = v35;
    *(a1 + 128) = v34;
    v49 = BZ2_bzDecompress((a1 + 96));
    if (v49 < 0)
    {
      v82 = "decoding bzip2 payload";
      v83 = 178;
      goto LABEL_153;
    }

    v50 = v49;
    v51 = v15;
    v52 = *(a1 + 96);
    v53 = *(a1 + 120);
    v54 = v52 - v33;
    if (v52 != v33)
    {
      v55 = *(a1 + 8);
      v44 = v55 >= v54;
      v56 = v55 - v54;
      if (v44)
      {
        if (v56)
        {
          v88 = v56;
          memmove(*(a1 + 24), (*(a1 + 24) + v54), v56);
          v56 = v88;
        }

        *(a1 + 8) = v56;
      }
    }

    if (v53 != v35)
    {
      v57 = *(a1 + 32);
      v58 = v57 + v53 - v35;
      if (!__CFADD__(v57, v53 - v35) && v58 <= *(a1 + 40))
      {
        *(a1 + 32) = v58;
      }
    }

    if (v53 == v35 && v52 == v33)
    {
      v15 = v51 + 1;
    }

    else
    {
      v15 = 0;
    }

    if (v50 == 4)
    {
      goto LABEL_131;
    }

LABEL_147:
    if (v15 >= 3)
    {
      v84 = "truncated stream";
      v85 = 240;
      goto LABEL_156;
    }

LABEL_148:
    v8 = v16;
    if (!v10)
    {
      return v8;
    }
  }

  if (v36 == 1)
  {
    if (!v21)
    {
      if (*(a1 + 60))
      {
        goto LABEL_131;
      }

LABEL_158:
      v82 = "truncated stream header";
      v83 = 208;
      goto LABEL_153;
    }

    if (v21 <= 0xF)
    {
      goto LABEL_158;
    }

    v60 = v33[1];
    v61 = bswap64(*v33);
    v62 = bswap64(v60);
    v63 = *(a1 + 80);
    if (v61 > v63 || v62 > v63)
    {
      v84 = "corrupted stream header";
      v85 = 217;
      goto LABEL_156;
    }

    v89 = v15;
    v65 = v62 + 16;
    if (v62 + 16 > v21)
    {
      v84 = "truncated stream payload";
      v85 = 218;
      goto LABEL_156;
    }

    if (v61 > v34)
    {
      v84 = "unexpected output buffer size";
      v85 = 219;
      goto LABEL_156;
    }

    v66 = *v33;
    if (*v33 == v60)
    {
      memcpy(v35, v33 + 2, v61);
    }

    else if ((*(a1 + 88))(v35, v34, v33 + 2) != v61)
    {
      v84 = "block decompression failed";
      v85 = 229;
LABEL_156:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", v85, 20, 0, v84, a7, a8, v86);
      return -1;
    }

    if (v65)
    {
      v78 = *(a1 + 8);
      v79 = v78 - v65;
      if (v78 >= v65)
      {
        if (v78 != v65)
        {
          memmove(*(a1 + 24), (*(a1 + 24) + v65), v78 - v65);
        }

        *(a1 + 8) = v79;
      }
    }

    if (v66)
    {
      v80 = *(a1 + 32);
      v44 = __CFADD__(v80, v61);
      v81 = v80 + v61;
      v15 = v89;
      if (!v44 && v81 <= *(a1 + 40))
      {
        *(a1 + 32) = v81;
      }
    }

    else
    {
      v15 = v89;
    }

    goto LABEL_147;
  }

  if (v36 == 2)
  {
    *(a1 + 328) = v33;
    *(a1 + 336) = v21;
    *(a1 + 312) = v35;
    *(a1 + 320) = v34;
    v37 = compression_stream_process((a1 + 312), *(a1 + 60) != 0);
    if ((v37 & 0x80000000) == 0)
    {
      v38 = v37;
      v39 = v15;
      v40 = *(a1 + 336);
      v41 = *(a1 + 320);
      v42 = v21 - v40;
      if (v21 != v40)
      {
        v43 = *(a1 + 8);
        v44 = v43 >= v42;
        v45 = v43 - v42;
        if (v44)
        {
          if (v45)
          {
            v87 = v45;
            memmove(*(a1 + 24), (*(a1 + 24) + v42), v45);
            v45 = v87;
          }

          *(a1 + 8) = v45;
        }
      }

      if (v34 != v41)
      {
        v46 = *(a1 + 32);
        v47 = v46 + v34 - v41;
        if (!__CFADD__(v46, v34 - v41) && v47 <= *(a1 + 40))
        {
          *(a1 + 32) = v47;
        }
      }

      if (v34 == v41 && v21 == v40)
      {
        v15 = v39 + 1;
      }

      else
      {
        v15 = 0;
      }

      if (v38 != COMPRESSION_STATUS_END)
      {
        goto LABEL_147;
      }

LABEL_131:
      *(a1 + 64) = 1;
      goto LABEL_147;
    }

    v82 = "decoding compression payload";
    v83 = 162;
LABEL_153:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", v83, 20, 0, v82, a7, a8, v86);
  }

  return v8;
}

uint64_t aaDecompressionStreamAbort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 68) = 1;
  result = *(a1 + 72);
  if (result)
  {
    return IDecoderStreamAbort(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

size_t PCompressLZ4Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZ4Decode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t pc_log_error(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v14 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v14);
  }

  v15 = v13 & 0xFFFFFC00 | a5 & 0x3FF;
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a6, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    pc_log_error_cold_1(__str, v15 | 0x80000000);
  }

  return ParallelCompressionUpdateError(v15 | 0x80000000, __str);
}

uint64_t pc_log_warning(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__s, 0x400uLL);
  v12 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
  v13 = strlen(__s);
  vsnprintf(&__s[v13], 1024 - v13, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v16 = v12;
    v17 = 2082;
    v18 = __s;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v12, __s);
}

void pc_log_error_cold_1(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

_WORD *enterThreadErrorContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v11 = calloc(1uLL, 0x2000uLL);
    if (v11)
    {
      v11[2] = 1;
      *(v11 + 18) = 531890176;

      return setThreadErrorContext(v11, v12, v13, v14, v15, v16, v17, v18, a9);
    }

    else
    {
      v19 = *__error();

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v19, "malloc", v20, v21, a9);
    }
  }

  return result;
}

uint64_t setThreadErrorContext(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_setspecific(ErrorContextKey, a1);
  if (result)
  {
    v12 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v12, "pthread_setspecific", v13, v14, a9);
  }

  return result;
}

uint64_t leaveThreadErrorContext(__CFError **a1, const __CFString **a2, int a3)
{
  ErrorContextKey = getErrorContextKey();
  v7 = pthread_getspecific(ErrorContextKey);
  if (v7)
  {
    v15 = v7;
    v16 = v7[2] - 1;
    v7[2] = v16;
    if (!v16)
    {
      v18 = v7[36];
      v17 = *v7;
      if (!v7[36] && (v17 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v33 = 0;
        do
        {
          v34 = strlen(userInfoKeys);
          if (v34 + 20 > 0x3FF)
          {
            break;
          }

          if (v34)
          {
            snprintf(userInfoKeys + v34, 1024 - v34, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v33;
        }

        while (v33 < v15[3]);
        v35 = CFStringCreateWithCString(kCFAllocatorDefault, userInfoKeys, 0x600u);
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = v35;
        if (a2)
        {
          *a2 = v35;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v35);
        v44 = calloc(1uLL, Length + 1);
        if (v44)
        {
          v45 = v44;
          CFStringGetCString(v36, v44, Length + 1, 0x600u);
          fprintf(__stderrp, "%s\n", v45);
          free(v45);
        }

        v42 = v36;
LABEL_45:
        CFRelease(v42);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v19 = calloc(v18 + 32, 1uLL);
      if (!v19)
      {
        goto LABEL_46;
      }

      v20 = v19;
      v21 = v19;
      if ((v17 & 0x80000000) != 0)
      {
        snprintf(v19, v18 + 32, "Error 0x%08x\n", v17);
        v21 = &v20[strlen(v20)];
      }

      v22 = v15[36];
      if (v15[36])
      {
        v23 = 0;
        do
        {
          v24 = (v15 + v23 + 76);
          v25 = *v24;
          v26 = v25 + v23;
          if (v25 < 4 || v26 > v22)
          {
            break;
          }

          v28 = v25 - 3;
          memcpy(v21, v24 + 1, v28);
          v29 = &v21[v28];
          *v29 = 10;
          v21 = v29 + 1;
          v23 = v26;
          v22 = v15[36];
        }

        while (v22 > v26);
      }

      if (v21 > v20)
      {
        *(v21 - 1) = 0;
      }

      v30 = CFStringCreateWithCString(kCFAllocatorDefault, v20, 0x600u);
      if (!v30)
      {
        free(v20);
        goto LABEL_46;
      }

      v31 = v30;
      userInfoKeys[0] = kCFErrorLocalizedDescriptionKey;
      userInfoValues = v30;
      v32 = CFErrorCreateWithUserInfoKeysAndValues(kCFAllocatorDefault, @"com.apple.ParallelCompression", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v31);
      free(v20);
      if (v32)
      {
        if (!a1)
        {
          v37 = CFErrorCopyDescription(v32);
          if (v37)
          {
            v38 = v37;
            v39 = CFStringGetLength(v37);
            v40 = calloc(1uLL, v39 + 1);
            if (v40)
            {
              v41 = v40;
              CFStringGetCString(v38, v40, v39 + 1, 0x600u);
              fprintf(__stderrp, "%s\n", v41);
              free(v41);
            }

            CFRelease(v38);
          }

          v42 = v32;
          goto LABEL_45;
        }

        *a1 = v32;
      }

LABEL_46:
      setThreadErrorContext(0, v8, v9, v10, v11, v12, v13, v14, v47);
      free(v15);
      return v17;
    }
  }

  return 0;
}

size_t appendThreadErrorContextString(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      ErrorContextKey = getErrorContextKey();
      result = pthread_getspecific(ErrorContextKey);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *updateThreadErrorContextErrorCode(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *updateThreadErrorContextWarningCode(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t createThread(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v19, "malloc", v20, v21, v36[0]);
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v22, "malloc", v23, v24, v36[0]);
    v25 = __error();
    v13 = -*v25;
    if (!*v25)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    v17 = "pthread_attr_init";
    v18 = 558;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", v18, 5, v14, v17, v15, v16, v36[0]);
    goto LABEL_6;
  }

  if (a4)
  {
    v28 = pthread_attr_setstacksize(v11, a4);
    if (v28)
    {
      v13 = v28;
      v14 = *__error();
      v17 = "pthread_attr_setstacksize";
      v18 = 564;
      goto LABEL_5;
    }
  }

  v29 = pthread_self();
  qos_class_np = pthread_get_qos_class_np(v29, &__relative_priority[1], __relative_priority);
  if (qos_class_np)
  {
    v13 = qos_class_np;
    v14 = *__error();
    v17 = "pthread_get_qos_class_np";
    v18 = 570;
    goto LABEL_5;
  }

  v31 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
  if (v31)
  {
    v13 = v31;
    v14 = *__error();
    v17 = "pthread_attr_set_qos_class_np";
    v18 = 572;
    goto LABEL_5;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 0x40000000;
  v36[2] = __createThread_block_invoke;
  v36[3] = &__block_descriptor_tmp_0;
  v36[4] = v9;
  v32 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v36);
  v9[2] = v32;
  if (v32)
  {
    *v9 = a2;
    v9[1] = a3;
    *(v9 + 7) = 1;
    *(v9 + 24) = 530317312;
    v13 = pthread_create(a1, v11, threadWrapperProc, v9);
    if (v13)
    {
      v14 = *__error();
      v17 = "pthread_create";
      v18 = 591;
      goto LABEL_5;
    }
  }

  else
  {
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v33, "dispatch_block_create", v34, v35, v36[0]);
    v13 = -*__error();
  }

LABEL_6:
  pthread_attr_destroy(v11);
  free(v11);
  if (!v13)
  {
    return v13;
  }

LABEL_10:
  v26 = v9[2];
  if (v26)
  {
    _Block_release(v26);
  }

  free(v9);
  return v13;
}

uint64_t threadWrapperProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  setThreadErrorContext((a1 + 24), a2, a3, a4, a5, a6, a7, a8, v17);
  (*(*(a1 + 16) + 16))();
  setThreadErrorContext(0, v9, v10, v11, v12, v13, v14, v15, v18);
  return a1;
}

uint64_t joinThread(_opaque_pthread_t *a1)
{
  v23 = 0;
  if (pthread_join(a1, &v23))
  {
    joinThread_cold_1();
  }

  v3 = v23;
  if (*(v23 + 14) != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread", v1, v2, v22);
    v13 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  ErrorContextKey = getErrorContextKey();
  v5 = pthread_getspecific(ErrorContextKey);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
    v8 = v3[6];
    if (v8 < 0)
    {
      *v5 = v8;
      v7 = v8;
    }
  }

  v9 = *(v3 + 48);
  if (!*(v3 + 48))
  {
LABEL_14:
    if (v7)
    {
      v13 = 0;
      *(v6 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v3 + 15))
    {
      v15 = 0;
      v16 = *(v6 + 3);
      LODWORD(v17) = 16 - v16;
      if (v16 <= 0x10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      v18 = &v6[v16 + 2];
      v19 = v16 + 1;
      while (v17 != v15)
      {
        v13 = 0;
        *(v18 + 4 * v15) = v3[v15 + 8];
        *(v6 + 3) = v19 + v15++;
        if (v15 >= *(v3 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (v3 + v11 + 100);
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v10 += v13;
    if (v10 > v9)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 36);
    if (v14 + v13 <= *(v6 + 37))
    {
      memcpy(v6 + v14 + 76, v12, *v12);
      *(v6 + 36) += v13;
      v11 = v10;
      v9 = *(v3 + 48);
      if (v9 > v10)
      {
        continue;
      }
    }

    v7 = *v6;
    goto LABEL_14;
  }

LABEL_26:
  v20 = *(v3 + 2);
  if (v20)
  {
    _Block_release(v20);
  }

  free(v3);
  return v13;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  updateThreadErrorContextErrorCode(a1);

  return appendThreadErrorContextString(a2);
}

uint64_t getErrorContextKey()
{
  if (pthread_once(&getErrorContextKey_errorContextOnce, createErrorContextKey))
  {
    v0 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once", v1, v2, vars0);
  }

  return gErrorContextKey;
}

uint64_t createErrorContextKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = pthread_key_create(&gErrorContextKey, 0);
  if (result)
  {
    v10 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v10, "pthread_key_create", v11, v12, a9);
  }

  return result;
}

void joinThread_cold_1()
{
  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join", v1, v2, vars0);
  __break(1u);
}

size_t PCompressLZMA6Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZMADecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t PCompressZLIB5Encode(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t PCompressZLIBDecode(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t getDefaultNThreads()
{
  v5 = 0;
  v4 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v5, &v4, 0, 0))
  {
    return v5;
  }

  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname", v1, v2, v4);
  return 1;
}

char *SharedBufferCreate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v9 = getpagesize();
    if (v9 <= 0x197)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size", v10, v11, v39);
      return 0;
    }

    v14 = v9;
    if (a1 >> 2 < v9)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a1 >> 2) / v9;
    }

    v16 = v15 * v9;
    v17 = valloc(v9 + 4 * v16);
    v12 = v17;
    if (!v17)
    {
      v24 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v24, "malloc", v25, v26, v39);
      return v12;
    }

    *(v17 + 50) = 0;
    *(v17 + 23) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 21) = 0u;
    *(v17 + 22) = 0u;
    *(v17 + 19) = 0u;
    *(v17 + 20) = 0u;
    *(v17 + 17) = 0u;
    *(v17 + 18) = 0u;
    *(v17 + 15) = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 13) = 0u;
    *(v17 + 14) = 0u;
    *(v17 + 11) = 0u;
    *(v17 + 12) = 0u;
    *(v17 + 9) = 0u;
    *(v17 + 10) = 0u;
    *(v17 + 7) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 5) = 0u;
    *(v17 + 6) = 0u;
    *(v17 + 3) = 0u;
    *(v17 + 4) = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *v17 = 0u;
    *(v17 + 48) = -1;
    atomic_store(2u, v17 + 101);
    *v17 = 0x600000000;
    v18 = calloc(6uLL, 4uLL);
    *(v12 + 1) = v18;
    if (v18)
    {
      if (pthread_mutex_init((v12 + 4), 0))
      {
        v22 = "SharedArrayInit: pthread_mutex_init failed\n";
        v23 = 56;
      }

      else
      {
        if (!pthread_cond_init((v12 + 20), 0))
        {
          *(v12 + 16) = 0x600000000;
          v31 = calloc(6uLL, 4uLL);
          *(v12 + 17) = v31;
          if (v31)
          {
            if (pthread_mutex_init((v12 + 36), 0))
            {
              v35 = "SharedArrayInit: pthread_mutex_init failed\n";
              v36 = 56;
            }

            else
            {
              if (!pthread_cond_init((v12 + 52), 0))
              {
                v37 = 0;
                for (i = v12 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v12 + v14;
                  *(i - 1) = v16;
                  if ((SharedArrayPush(v12 + 32, v37) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v37;
                  v14 += v16;
                  if (v37 == 4)
                  {
                    return v12;
                  }
                }

                v29 = "SharedArrayPush";
                v30 = 283;
                goto LABEL_19;
              }

              v35 = "SharedArrayInit: pthread_cond_init failed\n";
              v36 = 57;
            }
          }

          else
          {
            v35 = "SharedArrayInit: malloc failed\n";
            v36 = 55;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v36, 0, v35, v32, v33, v34, v39);
          v29 = "SharedArrayInit";
          v30 = 270;
LABEL_19:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", v30, 73, 0, v29, v27, v28, v39);
          if (!pthread_mutex_destroy((v12 + 4)) && !pthread_cond_destroy((v12 + 20)))
          {
            free(*(v12 + 1));
          }

          if (!pthread_mutex_destroy((v12 + 36)) && !pthread_cond_destroy((v12 + 52)))
          {
            free(*(v12 + 17));
          }

          free(v12);
          return 0;
        }

        v22 = "SharedArrayInit: pthread_cond_init failed\n";
        v23 = 57;
      }
    }

    else
    {
      v22 = "SharedArrayInit: malloc failed\n";
      v23 = 55;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v23, 0, v22, v19, v20, v21, v39);
    v29 = "SharedArrayInit";
    v30 = 269;
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu", a7, a8, a1);
  return 0;
}

uint64_t SharedArrayPush(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = *a1;
    if (*a1 < v10)
    {
      *(*(a1 + 1) + 4 * v9) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 122;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

void SharedBufferDestroy(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t SharedBufferFillFromStream(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        v11 = "write after EOF";
        v12 = 365;
LABEL_25:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", v12, 73, 0, v11, a7, a8, v38);
      }

      else
      {
        v15 = a2;
        v16 = 0;
        v17 = a1 + 256;
        while (1)
        {
          v18 = *(a1 + 384);
          if (v18 <= 3)
          {
            v23 = *(v17 + 32 * v18 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              v35 = "SharedArrayPop: pthread_mutex_lock failed\n";
              v36 = 91;
LABEL_24:
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v36, 0, v35, v19, v20, v21, v38);
              v11 = "SharedArrayPop";
              v12 = 378;
              goto LABEL_25;
            }

            while (1)
            {
              v22 = *(a1 + 128);
              if (v22)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                v35 = "SharedArrayPop: pthread_cond_wait failed\n";
                v36 = 94;
                goto LABEL_24;
              }
            }

            v24 = v22 - 1;
            *(a1 + 128) = v24;
            v18 = *(*(a1 + 136) + 4 * v24);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              v35 = "SharedArrayPop: pthread_mutex_unlock failed\n";
              v36 = 98;
              goto LABEL_24;
            }

            if (v18 > 3)
            {
              goto LABEL_26;
            }

            v23 = 0;
            *(a1 + 384) = v18;
            v29 = (a1 + 272 + 32 * v18);
            *v29 = 0;
            v29[1] = 0;
          }

          v30 = (v17 + 32 * v18);
          if (v30[1] - v23 >= v15)
          {
            v31 = v15;
          }

          else
          {
            v31 = v30[1] - v23;
          }

          v32 = a3(a4, *v30 + v23, v31);
          if (v32 < 0)
          {
            v11 = "stream read";
            v12 = 393;
            goto LABEL_25;
          }

          v33 = v32;
          if (!v32)
          {
            break;
          }

          v34 = v30[3] + v32;
          v30[3] = v34;
          if (v34 == v30[1] && (currentWriteBufferFull(a1) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }

          v16 += v33;
          v15 -= v33;
          if (!v15)
          {
            goto LABEL_31;
          }
        }

        if ((sendEOF(a1) & 0x80000000) == 0)
        {
LABEL_31:
          if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
          {
            return v16;
          }
        }
      }

LABEL_26:
      SharedBufferAbort(a1, v25, v26, v27, v28, v19, v20, v21, v38);
    }
  }

  return -1;
}

uint64_t sendEOF(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
  {
    if ((SharedArrayEnqueue(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue", v3, v4, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t currentWriteBufferFull(unsigned int *a1)
{
  v2 = a1[96];
  a1[96] = -1;
  if (v2 > 3)
  {
    return 0;
  }

  if ((SharedArrayEnqueue(a1, v2) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v4, v5, v1);
  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferAbort(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    v10 = 0;
    atomic_compare_exchange_strong((result + 400), &v10, 1u);
    if (!v10)
    {
      if ((SharedArrayPush((result + 128), -1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush", v11, v12, v15);
      }

      result = SharedArrayEnqueue(v9, -1);
      if ((result & 0x80000000) != 0)
      {

        return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush", v13, v14, a9);
      }
    }
  }

  return result;
}

uint64_t SharedBufferFlushToStream(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          v31 = "SharedArrayPop: pthread_mutex_lock failed\n";
          v32 = 91;
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            v31 = "SharedArrayPop: pthread_cond_wait failed\n";
            v32 = 94;
            goto LABEL_26;
          }
        }

        v16 = *a1 - 1;
        *a1 = v16;
        v12 = *(*(a1 + 8) + 4 * v16);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          v31 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v32 = 98;
LABEL_26:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v32, 0, v31, v13, v14, v15, v37);
          v33 = "SharedBufferFlushToStream";
          v34 = "SharedArrayDequeue";
          v35 = 448;
LABEL_27:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", v33, v35, 73, 0, v34, v25, v26, v37);
LABEL_28:
          SharedBufferAbort(a1, v17, v18, v19, v20, v13, v14, v15, v37);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v36 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v36, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_28;
        }

        *(a1 + 388) = v12;
      }

      v21 = (a1 + 256 + 32 * v12);
      v22 = v21[2];
      if (v21[3] - v22 >= v11)
      {
        v23 = v11;
      }

      else
      {
        v23 = v21[3] - v22;
      }

      v24 = a3(a4, *v21 + v22, v23);
      if (v24 <= 0)
      {
        v33 = "SharedBufferFlushToStream";
        v34 = "stream write";
        v35 = 469;
        goto LABEL_27;
      }

      v27 = v24;
      v28 = v21[3];
      v29 = v21[2] + v24;
      v21[2] = v29;
      if (v29 == v28)
      {
        v30 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v30 <= 3 && (SharedArrayPush((a1 + 128), v30) & 0x80000000) != 0)
        {
          v33 = "currentReadBufferEmpty";
          v34 = "SharedArrayPush";
          v35 = 337;
          goto LABEL_27;
        }
      }

      v6 += v27;
      v11 -= v27;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t SharedArrayEnqueue(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 157;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    if (v9 >= v10)
    {
      v11 = *a1;
    }

    else
    {
      if (v9)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v9);
      }

      **(a1 + 1) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 168;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 169;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 166;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferWrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sendEOF(a1);
  }

  v10 = a2;
  return SharedBufferFillFromStream(a1, a3, SharedBufferReadFromBufferProc, &v10, a5, a6, a7, a8);
}

size_t SharedBufferReadFromBufferProc(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t SharedBufferRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return SharedBufferFlushToStream(a1, a3, SharedBufferWriteToBufferProc, v7);
}

size_t SharedBufferWriteToBufferProc(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

unsigned int *ThreadPipelineCreate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v12 = calloc(1uLL, 0x1A8uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    v14 = calloc(a1, 0x198uLL);
    *(v13 + 1) = v14;
    if (v14)
    {
      v15 = calloc(1uLL, 0x20uLL);
      *(v13 + 2) = v15;
      if (v15)
      {
        v16 = *v13;
        v13[10] = 0;
        v13[11] = v16;
        v17 = calloc(v16, 4uLL);
        *(v13 + 6) = v17;
        if (v17)
        {
          if (pthread_mutex_init((v13 + 14), 0))
          {
            v21 = "SharedArrayInit: pthread_mutex_init failed\n";
            v22 = 56;
          }

          else
          {
            if (!pthread_cond_init((v13 + 30), 0))
            {
              v29 = *v13 + 1;
              v13[42] = 0;
              v13[43] = v29;
              v30 = calloc(v29, 4uLL);
              *(v13 + 22) = v30;
              if (v30)
              {
                if (pthread_mutex_init((v13 + 46), 0))
                {
                  v34 = "SharedArrayInit: pthread_mutex_init failed\n";
                  v35 = 56;
                }

                else
                {
                  if (!pthread_cond_init((v13 + 62), 0))
                  {
                    v13[6] = -1;
                    v13[74] = 0;
                    if (pthread_mutex_init((v13 + 76), 0) || pthread_cond_init((v13 + 92), 0))
                    {
                      v26 = "SemInit";
                      v27 = 184;
                    }

                    else if (*v13)
                    {
                      v36 = 0;
                      v37 = 352;
                      while (1)
                      {
                        v38 = *(v13 + 1);
                        v39 = v38 + v37;
                        *(v38 + v37 - 336) = v13;
                        *(v38 + v37 - 344) = v36;
                        v43 = v36;
                        *(v38 + v37 - 328) = *(a2 + 8 * v36);
                        *(v38 + v37 - 320) = a3;
                        *(v38 + v37 - 312) = 0;
                        if (pthread_mutex_init((v38 + v37 - 304), 0) || pthread_cond_init((v39 - 240), 0))
                        {
                          v26 = "SemInit";
                          v27 = 194;
                          goto LABEL_14;
                        }

                        *(v38 + v37 - 192) = 0;
                        if (pthread_mutex_init((v38 + v37 - 184), 0) || pthread_cond_init((v38 + v37 - 120), 0))
                        {
                          v26 = "SemInit";
                          v27 = 195;
                          goto LABEL_14;
                        }

                        v40 = (v38 + v37);
                        *&v40[-2].__opaque[16] = 0;
                        if (pthread_mutex_init(&v40[-2].__opaque[24], 0) || pthread_cond_init(v40, 0))
                        {
                          v26 = "SemInit";
                          v27 = 196;
                          goto LABEL_14;
                        }

                        if ((createThread((v39 - 352), threadPipelineWorkerThreadProc, v39 - 352, a6) & 0x80000000) != 0)
                        {
                          break;
                        }

                        v36 = v43 + 1;
                        v37 += 408;
                        if (v43 + 1 >= *v13)
                        {
                          goto LABEL_37;
                        }
                      }

                      v26 = "Thread creation";
                      v27 = 197;
                    }

                    else
                    {
LABEL_37:
                      v41 = *(v13 + 2);
                      *(v41 + 8) = v13;
                      *(v41 + 16) = a4;
                      *(v41 + 24) = a5;
                      if ((createThread(v41, threadPipelineConsumerThreadProc, v41, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v26 = "Thread creation";
                      v27 = 206;
                    }

                    goto LABEL_14;
                  }

                  v34 = "SharedArrayInit: pthread_cond_init failed\n";
                  v35 = 57;
                }
              }

              else
              {
                v34 = "SharedArrayInit: malloc failed\n";
                v35 = 55;
              }

              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v35, 0, v34, v31, v32, v33, v42);
              v26 = "SharedArrayInit";
              v27 = 182;
LABEL_14:
              v23 = 0;
              goto LABEL_15;
            }

            v21 = "SharedArrayInit: pthread_cond_init failed\n";
            v22 = 57;
          }
        }

        else
        {
          v21 = "SharedArrayInit: malloc failed\n";
          v22 = 55;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20, v42);
        v26 = "SharedArrayInit";
        v27 = 180;
        goto LABEL_14;
      }

      v23 = *__error();
      v26 = "malloc";
      v27 = 179;
    }

    else
    {
      v23 = *__error();
      v26 = "malloc";
      v27 = 177;
    }
  }

  else
  {
    v23 = *__error();
    v26 = "malloc";
    v27 = 172;
  }

LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v27, 87, v23, v26, v24, v25, v42);
  ThreadPipelineDestroy(v13);
  return 0;
}

uint64_t threadPipelineWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      v20 = "SharedArrayPush: pthread_mutex_lock failed\n";
      v21 = 117;
      goto LABEL_35;
    }

    v7 = *(v2 + 40);
    v8 = *(v2 + 44);
    v9 = v7;
    if (v7 < v8)
    {
      *(*(v2 + 48) + 4 * v7) = v3;
      v9 = *(v2 + 40);
    }

    *(v2 + 40) = v9 + 1;
    if (!v9)
    {
      if (pthread_cond_broadcast((v2 + 120)))
      {
        break;
      }
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      v20 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      v21 = 124;
      goto LABEL_35;
    }

    if (v7 >= v8)
    {
      v20 = "SharedArrayPush: stack is full\n";
      v21 = 125;
      goto LABEL_35;
    }

    if (pthread_mutex_lock((a1 + 48)))
    {
      goto LABEL_27;
    }

    while (1)
    {
      v12 = *(a1 + 40);
      if (v12 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 48)))
      {
        goto LABEL_27;
      }
    }

    *(a1 + 40) = v12 - 1;
    if (pthread_mutex_unlock((a1 + 48)))
    {
LABEL_27:
      v17 = "SemAcquire";
      v18 = 72;
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error", v13, v14, v22);
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v15 = *(a1 + 160), *(a1 + 160) = v15 + 1, !v15) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      v17 = "SemRelease";
      v18 = 85;
      goto LABEL_28;
    }

    if (!pthread_mutex_lock((a1 + 288)))
    {
      while (1)
      {
        v16 = *(a1 + 280);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 352), (a1 + 288)))
        {
          goto LABEL_26;
        }
      }

      *(a1 + 280) = v16 - 1;
      if (!pthread_mutex_unlock((a1 + 288)))
      {
        continue;
      }
    }

LABEL_26:
    v17 = "SemAcquire";
    v18 = 88;
    goto LABEL_28;
  }

  v20 = "SharedArrayPush: pthread_cond_broadcast failed\n";
  v21 = 122;
LABEL_35:
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v21, 0, v20, v4, v5, v6, v22);
  v17 = "SharedArrayPush";
  v18 = 69;
LABEL_28:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", v18, 87, 0, v17, v10, v11, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t threadPipelineConsumerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (!pthread_mutex_lock((v2 + 184)))
  {
    while (1)
    {
      v12 = *(v2 + 168);
      if (v12)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 248), (v2 + 184)))
      {
        v6 = "SharedArrayPop: pthread_cond_wait failed\n";
        v7 = 94;
        goto LABEL_3;
      }
    }

    v13 = v12 - 1;
    *(v2 + 168) = v13;
    v14 = *(*(v2 + 176) + 4 * v13);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      v6 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      v7 = 98;
      goto LABEL_3;
    }

    if (v14 == -2)
    {
      if (!pthread_mutex_lock((v2 + 304)))
      {
        v17 = *(v2 + 296);
        *(v2 + 296) = v17 + 1;
        if (v17 || !pthread_cond_broadcast((v2 + 368)))
        {
          pthread_mutex_unlock((v2 + 304));
        }
      }
    }

    else
    {
      if (v14 == -1)
      {
        return a1;
      }

      v15 = *(v2 + 8) + 408 * v14;
      if (pthread_mutex_lock((v15 + 168)))
      {
        goto LABEL_28;
      }

      while (1)
      {
        v16 = *(v15 + 160);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v15 + 232), (v15 + 168)))
        {
          goto LABEL_28;
        }
      }

      *(v15 + 160) = v16 - 1;
      if (pthread_mutex_unlock((v15 + 168)))
      {
LABEL_28:
        v10 = "SemAcquire";
        v11 = 134;
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v15 + 24)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error", v18, v19, v22);
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v15 + 288)) || (v20 = *(v15 + 280), *(v15 + 280) = v20 + 1, !v20) && pthread_cond_broadcast((v15 + 352)) || pthread_mutex_unlock((v15 + 288)))
      {
        v10 = "SemRelease";
        v11 = 144;
        goto LABEL_29;
      }
    }
  }

  v6 = "SharedArrayPop: pthread_mutex_lock failed\n";
  v7 = 91;
LABEL_3:
  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v7, 0, v6, v3, v4, v5, v22);
  v10 = "SharedArrayDequeue";
  v11 = 114;
LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", v11, 87, 0, v10, v8, v9, v22);
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPipelineDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v6 = 1;
        goto LABEL_41;
      }

      v4 = 0;
      do
      {
        if (*v2)
        {
          ++v4;
        }

        v2 += 51;
        --v3;
      }

      while (v3);
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 14)))
          {
            v10 = 91;
            v11 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v10, 0, v11, v7, v8, v9, v39);
            v15 = -1;
          }

          else
          {
            while (1)
            {
              v12 = v1[10];
              if (v12)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 30), (v1 + 14)))
              {
                v10 = 94;
                v11 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v20 = v12 - 1;
            v1[10] = v20;
            v15 = *(*(v1 + 6) + 4 * v20);
            if (!pthread_mutex_unlock((v1 + 14)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v21, v22, v23, v39);
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop", v13, v14, v40);
          v6 = 0;
LABEL_17:
          v16 = *(v1 + 1) + 408 * v15;
          *(v16 + 400) = -1;
          if (pthread_mutex_lock((v16 + 48)) || (v19 = *(v16 + 40), *(v16 + 40) = v19 + 1, !v19) && pthread_cond_broadcast((v16 + 112)) || pthread_mutex_unlock((v16 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease", v17, v18, v39);
            v6 = 0;
          }

          if ((joinThread(*v16) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread", v24, v25, v39);
            v6 = 0;
          }

          *v16 = 0;
          if (++v5 == v4)
          {
            if (!*v1)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }
      }

      v6 = 1;
LABEL_33:
      v26 = 0;
      v27 = 352;
      do
      {
        v28 = *(v1 + 1);
        v29 = v28 + v27;
        if (!pthread_mutex_destroy((v28 + v27 - 304)))
        {
          pthread_cond_destroy((v29 - 240));
        }

        if (!pthread_mutex_destroy((v29 - 184)))
        {
          pthread_cond_destroy((v28 + v27 - 120));
        }

        v30 = (v28 + v27);
        if (!pthread_mutex_destroy(&v30[-2].__opaque[24]))
        {
          pthread_cond_destroy(v30);
        }

        ++v26;
        v27 += 408;
      }

      while (v26 < *v1);
LABEL_41:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v6 = 1;
    }

    v31 = *(v1 + 2);
    if (v31)
    {
      if (*v31)
      {
        if ((SharedArrayEnqueue(v1 + 42, -1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue", v32, v33, v39);
          v6 = 0;
        }

        if ((joinThread(*v31) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread", v34, v35, v39);
          v6 = 0;
        }

        *v31 = 0;
        v31 = *(v1 + 2);
      }

      free(v31);
      *(v1 + 2) = 0;
    }

    if (!pthread_mutex_destroy((v1 + 14)) && !pthread_cond_destroy((v1 + 30)))
    {
      free(*(v1 + 6));
    }

    if (!pthread_mutex_destroy((v1 + 46)) && !pthread_cond_destroy((v1 + 62)))
    {
      free(*(v1 + 22));
    }

    if (!pthread_mutex_destroy((v1 + 76)))
    {
      pthread_cond_destroy((v1 + 92));
    }

    v38 = atomic_load(v1 + 104);
    if (v38 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors", v36, v37, v39);
      v6 = 0;
    }

    free(v1);
    if (v6)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ThreadPipelineGetWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24) != -1)
  {
    v8 = "Missing call to RunWorker before GetWorker";
    v9 = 294;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", v9, 87, 0, v8, a7, a8, v20);
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v15 = 91;
LABEL_10:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v15, 0, v14, v11, v12, v13, v20);
    v8 = "SharedArrayPop failed";
    v9 = 298;
    goto LABEL_11;
  }

  while (1)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      v14 = "SharedArrayPop: pthread_cond_wait failed\n";
      v15 = 94;
      goto LABEL_10;
    }
  }

  v17 = v16 - 1;
  *(a1 + 40) = v17;
  v18 = *(*(a1 + 48) + 4 * v17);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    v14 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v15 = 98;
    goto LABEL_10;
  }

  *(a1 + 24) = v18;
  return *(*(a1 + 8) + 408 * v18 + 24);
}

uint64_t ThreadPipelineRunWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 == -1)
  {
    v13 = "Missing call to GetWorker before RunWorker";
    v14 = 311;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", v14, 87, 0, v13, a7, a8, v15);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v9 = *(a1 + 8) + 408 * v8;
  v10 = *(a1 + 32);
  *(a1 + 32) = v10 + 1;
  *(v9 + 400) = v10;
  if ((SharedArrayEnqueue((a1 + 168), v8) & 0x80000000) != 0)
  {
    v13 = "SharedArrayEnqueue failed";
    v14 = 324;
    goto LABEL_11;
  }

  if (pthread_mutex_lock((v9 + 48)) || (v11 = *(v9 + 40), *(v9 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v9 + 112)) || (result = pthread_mutex_unlock((v9 + 48)), result))
  {
    v13 = "SemRelease failed";
    v14 = 325;
    goto LABEL_11;
  }

  return result;
}

uint64_t compressionWorkerProc(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (atomic_load((*a1 + 112)))
  {
    result = 0;
    a1[6] = -1;
    return result;
  }

  v12 = a1[2];
  a1[6] = v12;
  if (v12 == -2)
  {
    return 0;
  }

  if (v12 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received", a7, a8, v20);
    return 0;
  }

  if (v12 < 0)
  {
    v14 = "Invalid iBlock received";
    v15 = 246;
  }

  else
  {
    if (!*(v9 + 4))
    {
      v16 = (*(v9 + 96))(a1[5], *(v9 + 16), a1[1], a1[3]);
      v17 = a1[3];
      if ((v16 & 0x8000000000000000) != 0 || v16 >= v17)
      {
        memcpy(a1[5], a1[1], v17);
        v16 = a1[3];
        v17 = v16;
      }

      a1[7] = v16;
      a1[8] = v17;
      if (*(v9 + 24) >= 2)
      {
        fprintf(__stderrp, "Worker: encode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    if (a1[3] == a1[4])
    {
      memcpy(a1[5], a1[1], a1[3]);
      v13 = a1[3];
      a1[7] = v13;
      goto LABEL_19;
    }

    v18 = (*(v9 + 96))(a1[5]);
    if ((v18 & 0x8000000000000000) == 0 && v18 == a1[4])
    {
      a1[7] = v18;
      v13 = a1[3];
LABEL_19:
      a1[8] = v13;
      if (*(v9 + 24) >= 2)
      {
        fprintf(__stderrp, "Worker: decode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    v20 = a1[6];
    v14 = "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld";
    v15 = 292;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", v15, 37, 0, v14, a7, a8, v20);
  v19 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v9 + 112), &v19, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t outputStreamProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 112)))
  {
    return 0;
  }

  v12 = *(a2 + 48);
  if (v12 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = 0;
LABEL_5:
    result = 0;
    *(a1 + 88) += v13;
    return result;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld", a7, a8, *(a2 + 48));
LABEL_20:
    v13 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 4) != 1)
  {
    v17 = vrev64q_s8(*(a2 + 56));
    v26 = vextq_s8(v17, v17, 8uLL);
    v18 = pcWrite(*(a1 + 56), *(a1 + 72), &v26, 16);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v13 = v18;
      if (v18 == 16)
      {
        v19 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v19 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload", v20, v21, v25);
          v13 = 16;
        }

        else
        {
          v13 = v19 + 16;
          if (v19 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v20, v21, v19);
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)", v15, v16, v18);
      }

      goto LABEL_22;
    }

    v22 = "writing block header";
    v23 = 345;
    goto LABEL_19;
  }

  v14 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v14 < 0)
  {
    v22 = "writing block";
    v23 = 334;
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", v23, 37, 0, v22, v15, v16, v25);
    goto LABEL_20;
  }

  v13 = v14;
  if (v14 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)", v15, v16, v14);
LABEL_22:
  v24 = 0;
  *(a1 + 88) += v13;
  atomic_compare_exchange_strong((a1 + 112), &v24, 1u);
  return 0xFFFFFFFFLL;
}