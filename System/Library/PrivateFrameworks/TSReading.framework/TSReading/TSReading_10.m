void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::lazy_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 32);
  v10 = (v9 >> 2) & 8;
  v11 = *(a2 + (v10 ^ 8));
  v12 = *(a2 + v10);
  v13 = v11 - v12;
  if ((v9 & 0x20) != 0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 12;
  }

  v15 = *(a2 + v14);
  if ((*(a2 + 32) & 0x20) != 0)
  {
    v16 = 12;
  }

  else
  {
    v16 = 4;
  }

  v17 = *(a2 + v16);
  v18 = v15 - v17;
  v108 = v11 - v12;
  v101 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v12, v17, v11, v15);
  v19 = *(a3 + 32);
  v20 = (v19 >> 2) & 8;
  v21 = *(a3 + (v20 ^ 8));
  v22 = *(a3 + v20);
  v23 = v21 - v22;
  v99 = v23;
  if ((v19 & 0x20) != 0)
  {
    v24 = 4;
  }

  else
  {
    v24 = 12;
  }

  v25 = *(a3 + v24);
  if ((*(a3 + 32) & 0x20) != 0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 4;
  }

  v27 = *(a3 + v26);
  v28 = v25 - v27;
  v103 = v28;
  v102 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v22, v27, v21, v25);
  v29 = *(a4 + 32);
  v30 = (v29 >> 2) & 8;
  v31 = *(a4 + (v30 ^ 8));
  v32 = *(a4 + v30);
  v33 = v31 - v32;
  v100 = v33;
  if ((v29 & 0x20) != 0)
  {
    v34 = 4;
  }

  else
  {
    v34 = 12;
  }

  v35 = *(a4 + v34);
  if ((*(a4 + 32) & 0x20) != 0)
  {
    v36 = 12;
  }

  else
  {
    v36 = 4;
  }

  v37 = *(a4 + v36);
  v38 = v35 - v37;
  v104 = v38;
  v98 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v32, v37, v31, v35);
  *&v117 = v13 * v13;
  *(&v117 + 1) = 0x3FF0000000000000;
  *v116 = v18 * v18;
  *(&v116[0] + 1) = 0x3FF0000000000000;
  v39 = boost::polygon::detail::robust_fpt<double>::operator+(&v117, v116);
  v106 = v40 * 0.5 + 1.0;
  *&v117 = v23 * v23;
  *(&v117 + 1) = 0x3FF0000000000000;
  *v116 = v28 * v28;
  *(&v116[0] + 1) = 0x3FF0000000000000;
  v41 = sqrt(v39);
  v42 = boost::polygon::detail::robust_fpt<double>::operator+(&v117, v116);
  v107 = v43 * 0.5 + 1.0;
  *&v117 = v33 * v33;
  *(&v117 + 1) = 0x3FF0000000000000;
  *v116 = v38 * v38;
  *(&v116[0] + 1) = 0x3FF0000000000000;
  v44 = sqrt(v42);
  v45 = boost::polygon::detail::robust_fpt<double>::operator+(&v117, v116);
  v47 = *(a2 + 32);
  v105 = sqrt(v45);
  v48 = *(a2 + ((v47 >> 2) & 8 ^ 8)) - *(a2 + ((v47 >> 2) & 8));
  if ((v47 & 0x20) != 0)
  {
    v49 = 4;
  }

  else
  {
    v49 = 12;
  }

  v50 = *(a2 + v49);
  if ((*(a2 + 32) & 0x20) != 0)
  {
    v51 = 12;
  }

  else
  {
    v51 = 4;
  }

  v52 = v50 - *(a2 + v51);
  v53 = *(a3 + 32);
  v54 = v46 * 0.5 + 1.0;
  v55 = *(a3 + ((v53 >> 2) & 8 ^ 8)) - *(a3 + ((v53 >> 2) & 8));
  if ((v53 & 0x20) != 0)
  {
    v56 = 4;
  }

  else
  {
    v56 = 12;
  }

  v57 = *(a3 + v56);
  if ((*(a3 + 32) & 0x20) != 0)
  {
    v58 = 12;
  }

  else
  {
    v58 = 4;
  }

  v59 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v48, v52, v55, v57 - *(a3 + v58));
  v60 = *(a3 + 32);
  v61 = *(a3 + ((v60 >> 2) & 8 ^ 8)) - *(a3 + ((v60 >> 2) & 8));
  if ((v60 & 0x20) != 0)
  {
    v62 = 4;
  }

  else
  {
    v62 = 12;
  }

  v63 = *(a3 + v62);
  if ((*(a3 + 32) & 0x20) != 0)
  {
    v64 = 12;
  }

  else
  {
    v64 = 4;
  }

  v65 = *(a4 + 32);
  v66 = v63 - *(a3 + v64);
  if ((v65 & 0x20) != 0)
  {
    v67 = 4;
  }

  else
  {
    v67 = 12;
  }

  v68 = *(a4 + v67);
  if ((v65 & 0x20) != 0)
  {
    v69 = 12;
  }

  else
  {
    v69 = 4;
  }

  v70 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v61, v66, *(a4 + ((v65 >> 2) & 8 ^ 8)) - *(a4 + ((v65 >> 2) & 8)), v68 - *(a4 + v69));
  v71 = *(a4 + 32);
  v72 = *(a4 + ((v71 >> 2) & 8 ^ 8)) - *(a4 + ((v71 >> 2) & 8));
  if ((v71 & 0x20) != 0)
  {
    v73 = 4;
  }

  else
  {
    v73 = 12;
  }

  v74 = *(a4 + v73);
  if ((*(a4 + 32) & 0x20) != 0)
  {
    v75 = 12;
  }

  else
  {
    v75 = 4;
  }

  v76 = *(a2 + 32);
  v77 = v74 - *(a4 + v75);
  if ((v76 & 0x20) != 0)
  {
    v78 = 4;
  }

  else
  {
    v78 = 12;
  }

  v79 = *(a2 + v78);
  if ((v76 & 0x20) != 0)
  {
    v80 = 12;
  }

  else
  {
    v80 = 4;
  }

  v81 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::robust_cross_product(v72, v77, *(a2 + ((v76 >> 2) & 8 ^ 8)) - *(a2 + ((v76 >> 2) & 8)), v79 - *(a2 + v80));
  v117 = 0u;
  v118 = 0u;
  *v116 = v105 * v59;
  *(v116 + 1) = v54 + 1.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v117, v116);
  *v116 = v41 * v70;
  *(v116 + 1) = v106 + 1.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v117, v116);
  *v116 = v44 * v81;
  *(v116 + 1) = v107 + 1.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v117, v116);
  memset(v116, 0, sizeof(v116));
  *&v114 = v98 * v59;
  *(&v114 + 1) = 0x4008000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v116, &v114);
  *&v114 = v101 * v70;
  *(&v114 + 1) = 0x4008000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v116, &v114);
  *&v114 = v102 * v81;
  *(&v114 + 1) = 0x4008000000000000;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(v116, &v114);
  v114 = 0u;
  v115 = 0u;
  *&v112 = v108 * v102 * v105;
  *(&v112 + 1) = v54 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v114, &v112);
  *&v112 = v101 * v99 * v105;
  *(&v112 + 1) = v54 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v114, &v112);
  *&v112 = v99 * v98 * v41;
  *(&v112 + 1) = v106 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v114, &v112);
  *&v112 = v102 * v100 * v41;
  *(&v112 + 1) = v106 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v114, &v112);
  *&v112 = v101 * v100 * v44;
  *(&v112 + 1) = v107 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v114, &v112);
  *&v112 = v108 * v98 * v44;
  *(&v112 + 1) = v107 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v114, &v112);
  v112 = 0u;
  v113 = 0u;
  v109 = v18 * v102 * v105;
  v110 = v54 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v112, &v109);
  v109 = v101 * v103 * v105;
  v110 = v54 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v112, &v109);
  v109 = v103 * v98 * v41;
  v110 = v106 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v112, &v109);
  v109 = v102 * v104 * v41;
  v110 = v106 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v112, &v109);
  v109 = v101 * v104 * v44;
  v110 = v107 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(&v112, &v109);
  v109 = v18 * v98 * v44;
  v110 = v107 + 2.0 + 1.0;
  boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(&v112, &v109);
  v109 = boost::polygon::detail::operator+<boost::polygon::detail::robust_fpt<double>>(&v114, v116);
  v110 = v82;
  v111[0] = v83;
  v111[1] = v84;
  v85 = boost::polygon::detail::robust_fpt<double>::operator-(&v117, &v118);
  v87 = v86;
  v88 = boost::polygon::detail::robust_fpt<double>::operator-(&v114, &v115);
  v90 = v87 + v89 + 1.0;
  v91 = v88 / v85;
  v92 = boost::polygon::detail::robust_fpt<double>::operator-(&v112, &v113);
  v94 = v87 + v93 + 1.0;
  v95 = v92 / v85;
  v97 = boost::polygon::detail::robust_fpt<double>::operator-(&v109, v111) / v85;
  *a5 = v91;
  *(a5 + 8) = v95;
  *(a5 + 16) = v97;
  *(a5 + 24) = 1;
  if (v90 > 64.0 || v94 > 64.0 || v87 + v96 + 1.0 > 64.0)
  {
    boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss();
  }
}

double *boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator+=(double *a1, double *a2)
{
  if (*a2 >= 0.0)
  {
    boost::polygon::detail::robust_fpt<double>::operator+=(a1, a2);
  }

  else
  {
    boost::polygon::detail::robust_fpt<double>::operator-=(a1 + 2, a2);
  }

  return a1;
}

double *boost::polygon::detail::robust_dif<boost::polygon::detail::robust_fpt<double>>::operator-=(double *a1, double *a2)
{
  if (*a2 >= 0.0)
  {
    boost::polygon::detail::robust_fpt<double>::operator+=(a1 + 2, a2);
  }

  else
  {
    boost::polygon::detail::robust_fpt<double>::operator-=(a1, a2);
  }

  return a1;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::ppp()
{
  MEMORY[0x28223BE20]();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v107 = *MEMORY[0x277D85DE8];
  v11 = *v0;
  v12 = *v1;
  v13 = v11 - v12;
  if (v11 > v12)
  {
    v14 = 1;
LABEL_3:
    v101[0] = v13;
    goto LABEL_6;
  }

  if (v13 < 0)
  {
    v13 = v12 - v11;
    v14 = -1;
    goto LABEL_3;
  }

  v14 = 0;
LABEL_6:
  v102 = v14;
  v15 = *v2;
  v16 = v12 - v15;
  if (v12 > v15)
  {
    v17 = 1;
LABEL_8:
    v103[0] = v16;
    goto LABEL_11;
  }

  if (v16 < 0)
  {
    v16 = v15 - v12;
    v17 = -1;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_11:
  v104 = v17;
  v18 = v11 - v15;
  if (v11 > v15)
  {
    v19 = 1;
LABEL_13:
    v105[0] = v18;
    goto LABEL_16;
  }

  if (v18 < 0)
  {
    v18 = v15 - v11;
    v19 = -1;
    goto LABEL_13;
  }

  v19 = 0;
LABEL_16:
  v106 = v19;
  v20 = v0[1];
  v21 = v1[1];
  v22 = v20 - v21;
  if (v20 > v21)
  {
    v23 = 1;
LABEL_18:
    *v95 = v22;
    goto LABEL_21;
  }

  if (v22 < 0)
  {
    v22 = v21 - v20;
    v23 = -1;
    goto LABEL_18;
  }

  v23 = 0;
LABEL_21:
  v96 = v23;
  v24 = v2[1];
  v25 = v21 - v24;
  if (v21 > v24)
  {
    v26 = 1;
LABEL_23:
    v97[0] = v25;
    goto LABEL_26;
  }

  if (v25 < 0)
  {
    v25 = v24 - v21;
    v26 = -1;
    goto LABEL_23;
  }

  v26 = 0;
LABEL_26:
  v98 = v26;
  v27 = v20 - v24;
  if (v20 > v24)
  {
    v28 = 1;
LABEL_28:
    *v99 = v27;
    goto LABEL_31;
  }

  if (v27 < 0)
  {
    v27 = v24 - v20;
    v28 = -1;
    goto LABEL_28;
  }

  v28 = 0;
LABEL_31:
  v100 = v28;
  v29 = v12 + v11;
  if (v29 < 1)
  {
    if (v29 < 0)
    {
      v91[0] = -v29;
      if (-v29 >> 32)
      {
        v30 = -2;
      }

      else
      {
        v30 = -1;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v91[0] = v29;
    v30 = 1;
  }

  v92 = v30;
  v31 = v15 + v12;
  if (v31 < 1)
  {
    if (v31 < 0)
    {
      v93[0] = -v31;
      if (-v31 >> 32)
      {
        v32 = -2;
      }

      else
      {
        v32 = -1;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v93[0] = v31;
    v32 = 1;
  }

  v94 = v32;
  v33 = v21 + v20;
  if (v21 + v20 < 1)
  {
    if (v33 < 0)
    {
      v87[0] = -v33;
      if (-v33 >> 32)
      {
        v34 = -2;
      }

      else
      {
        v34 = -1;
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v87[0] = v21 + v20;
    v34 = 1;
  }

  v88 = v34;
  v35 = v24 + v21;
  if (v24 + v21 < 1)
  {
    if (v35 < 0)
    {
      v89[0] = -v35;
      if (-v35 >> 32)
      {
        v36 = -2;
      }

      else
      {
        v36 = -1;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v89[0] = v24 + v21;
    v36 = 1;
  }

  v90 = v36;
  boost::polygon::detail::extended_int<64ul>::mul(__src, v101, v97);
  boost::polygon::detail::extended_int<64ul>::mul(v84, v103, v95);
  boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v84);
  boost::polygon::detail::extended_int<64ul>::p(__dst, v37, v38, v39);
  v42 = 0.5 / ldexp(v40, v41);
  boost::polygon::detail::extended_int<64ul>::mul(__src, v101, v91);
  boost::polygon::detail::extended_int<64ul>::mul(v84, v95, v87);
  boost::polygon::detail::extended_int<64ul>::add(__dst, __src, v84);
  boost::polygon::detail::extended_int<64ul>::mul(v84, v103, v93);
  boost::polygon::detail::extended_int<64ul>::mul(v83, v97, v89);
  boost::polygon::detail::extended_int<64ul>::add(__src, v84, v83);
  if ((v8 & 1) != 0 || v4)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v83, __dst, v97);
    boost::polygon::detail::extended_int<64ul>::mul(v82, __src, v95);
    boost::polygon::detail::extended_int<64ul>::dif (v84, v83, v82);
    boost::polygon::detail::extended_int<64ul>::p(v84, v43, v44, v45);
    *v10 = v42 * ldexp(v46, v47);
    if (v4)
    {
      boost::polygon::detail::extended_int<64ul>::mul(v80, v101, v101);
      boost::polygon::detail::extended_int<64ul>::mul(v79, v95, v95);
      boost::polygon::detail::extended_int<64ul>::add(v81, v80, v79);
      boost::polygon::detail::extended_int<64ul>::mul(v77, v103, v103);
      boost::polygon::detail::extended_int<64ul>::mul(v76, v97, v97);
      boost::polygon::detail::extended_int<64ul>::add(v78, v77, v76);
      boost::polygon::detail::extended_int<64ul>::mul(v82, v81, v78);
      boost::polygon::detail::extended_int<64ul>::mul(v74, v105, v105);
      boost::polygon::detail::extended_int<64ul>::mul(v73, v99, v99);
      boost::polygon::detail::extended_int<64ul>::add(v75, v74, v73);
      boost::polygon::detail::extended_int<64ul>::mul(v83, v82, v75);
      boost::polygon::detail::extended_int<64ul>::p(v83, v48, v49, v50);
      v53 = ldexp(v51, v52);
      v54 = *v10;
      v55 = sqrt(v53);
      if (*v10 >= 0.0)
      {
        if (v42 >= 0.0)
        {
          v67 = v54 + v55 * v42;
        }

        else
        {
          v67 = v54 - v55 * v42;
        }
      }

      else
      {
        boost::polygon::detail::extended_int<64ul>::mul(v81, v84, v84);
        boost::polygon::detail::extended_int<64ul>::dif (v82, v81, v83);
        boost::polygon::detail::extended_int<64ul>::p(v82, v56, v57, v58);
        v61 = ldexp(v59, v60);
        v62 = v42 * v61;
        boost::polygon::detail::extended_int<64ul>::p(v84, v61, v63, v64);
        v67 = v62 / (v55 + ldexp(v65, v66));
      }

      *(v10 + 16) = v67;
    }
  }

  if (v6)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v83, __src, v101);
    boost::polygon::detail::extended_int<64ul>::mul(v82, __dst, v103);
    boost::polygon::detail::extended_int<64ul>::dif (v84, v83, v82);
    boost::polygon::detail::extended_int<64ul>::p(v84, v68, v69, v70);
    *(v10 + 8) = v42 * ldexp(v71, v72);
  }
}

double *boost::polygon::detail::robust_fpt<double>::operator+=(double *result, double *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result + *a2;
  if ((*result < 0.0 || v3 < 0.0) && (v2 > 0.0 || v3 > 0.0))
  {
    v5 = (v2 * result[1] - v3 * a2[1]) / v4;
    v6 = -v5;
    v7 = v5 < 0.0;
  }

  else
  {
    v5 = result[1];
    v6 = a2[1];
    v7 = v5 < v6;
  }

  if (v7)
  {
    v5 = v6;
  }

  *result = v4;
  result[1] = v5 + 1.0;
  return result;
}

double *boost::polygon::detail::robust_fpt<double>::operator-=(double *result, double *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result - *a2;
  if ((*result < 0.0 || v3 > 0.0) && (v2 > 0.0 || v3 < 0.0))
  {
    v5 = (v3 * a2[1] + v2 * result[1]) / v4;
    v6 = -v5;
    v7 = v5 < 0.0;
  }

  else
  {
    v5 = result[1];
    v6 = a2[1];
    v7 = v5 < v6;
  }

  if (v7)
  {
    v5 = v6;
  }

  *result = v4;
  result[1] = v5 + 1.0;
  return result;
}

double boost::polygon::detail::extended_int<64ul>::p(_DWORD *a1, double result, double a3, double a4)
{
  v4 = a1[64];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      LODWORD(result) = *a1;
      result = *&result;
    }

    else if (v5 == 2)
    {
      LODWORD(a3) = *a1;
      LODWORD(result) = a1[1];
      result = *&a3 + *&result * 4294967300.0;
    }

    else
    {
      v6 = 0;
      result = 0.0;
      do
      {
        LODWORD(a4) = a1[v5 - 1 + v6];
        a4 = *&a4;
        result = result * 4294967300.0 + a4;
        --v6;
      }

      while (v6 != -3);
    }

    if (v4 < 0)
    {
      return -result;
    }
  }

  return result;
}

uint64_t boost::polygon::detail::extended_int<64ul>::mul(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = result;
  v4 = a2[64];
  if (v4 && (v6 = *(a3 + 256)) != 0)
  {
    if (v4 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = -v4;
    }

    if (v6 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = -v6;
    }

    result = boost::polygon::detail::extended_int<64ul>::mul(result, a2, v8, a3, v9);
    if (a2[64] > 0 != *(a3 + 256) > 0)
    {
      *(v3 + 256) = -*(v3 + 256);
    }
  }

  else
  {
    *(result + 256) = 0;
  }

  return result;
}

uint64_t boost::polygon::detail::extended_int<64ul>::mul(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a3 - 1 + a5;
  v6 = 64;
  if (v5 < 0x40)
  {
    v6 = a3 - 1 + a5;
  }

  *(result + 256) = v6;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 >= a3 - 1)
      {
        v9 = a3 - 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = 0;
      if (a3)
      {
        v11 = v9 + 1;
        v12 = v8;
        v13 = a2;
        do
        {
          if (v12 < a5)
          {
            v14 = *(a4 + 4 * v12) * *v13;
            v7 += v14;
            v10 += HIDWORD(v14);
          }

          ++v13;
          --v12;
          --v11;
        }

        while (v11);
      }

      *(result + 4 * v8) = v7;
      v7 = v10 + HIDWORD(v7);
      ++v8;
      v15 = *(result + 256);
    }

    while (v8 < v15);
    if (v7)
    {
      if (v15 != 64)
      {
        *(result + 4 * v15) = v7;
        ++*(result + 256);
      }
    }
  }

  return result;
}

void *boost::polygon::detail::extended_int<64ul>::dif (_DWORD *__dst, unsigned int *__src, int *a3)
{
  v5 = __src[64];
  if (!v5)
  {
    result = memcpy(__dst, a3, 0x104uLL);
LABEL_17:
    __dst[64] = -__dst[64];
    return result;
  }

  v7 = a3[64];
  if (v7)
  {
    if (v5 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = -v5;
    }

    if (v7 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = -v7;
    }

    if (v5 > 0 == v7 > 0)
    {
      result = boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v8, a3, v9, 0);
    }

    else
    {
      result = boost::polygon::detail::extended_int<64ul>::add(__dst, __src, v8, a3, v9);
    }

    if ((__src[64] & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    return memcpy(__dst, __src, 0x104uLL);
  }

  return result;
}

_DWORD *boost::polygon::detail::extended_int<64ul>::add(_DWORD *result, unsigned int *a2, unint64_t a3, unsigned int *a4, unint64_t a5)
{
  do
  {
    v5 = a5;
    v6 = a4;
    a5 = a3;
    a4 = a2;
    a2 = v6;
    a3 = v5;
  }

  while (a5 < v5);
  result[64] = a5;
  v7 = 0;
  if (v5)
  {
    v8 = a4;
    v9 = result;
    v10 = v5;
    do
    {
      v12 = *v8++;
      v11 = v12;
      v13 = *v6++;
      v14 = v7 + v11 + v13;
      *v9++ = v14;
      v7 = HIDWORD(v14);
      --v10;
    }

    while (v10);
  }

  v15 = a5 - v5;
  if (a5 > v5)
  {
    v16 = &result[v5];
    v17 = &a4[v5];
    do
    {
      v18 = *v17++;
      v19 = v7 + v18;
      *v16++ = v19;
      v7 = HIDWORD(v19);
      --v15;
    }

    while (v15);
  }

  if (v7)
  {
    v20 = result[64];
    if (v20 != 64)
    {
      result[v20] = 1;
      ++result[64];
    }
  }

  return result;
}

uint64_t boost::polygon::detail::extended_int<64ul>::dif (uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v6 = a3;
  v8 = result;
  if (a3 >= a5)
  {
    if (a3 != a5 || (a6 & 1) != 0)
    {
      v14 = (result + 256);
      *(result + 256) = a3 - 1;
      if (a5)
      {
LABEL_15:
        v16 = 0;
        v15 = 0;
        do
        {
          *(result + 4 * v16) = *(a2 + 4 * v16) - (v15 & 1) - *(a4 + 4 * v16);
          v17 = *(a2 + 4 * v16);
          v18 = *(a4 + 4 * v16);
          v15 &= v17 == v18;
          if (v17 < v18)
          {
            v15 = 1;
          }

          ++v16;
        }

        while (a5 != v16);
      }

      else
      {
        v15 = 0;
      }

      v19 = v6 > a5;
      v20 = v6 - a5;
      if (v19)
      {
        v21 = (result + 4 * a5);
        v22 = (a2 + 4 * a5);
        do
        {
          *v21++ = *v22 - (v15 & 1);
          v23 = *v22++;
          v15 &= v23 == 0;
          --v20;
        }

        while (v20);
      }

      v24 = *(result + 256);
      if (*(result + 4 * v24))
      {
        *v14 = v24 + 1;
      }
    }

    else
    {
      while (1)
      {
        v11 = v6 - 1;
        v12 = *(a2 - 4 + 4 * v6);
        v13 = *(a4 - 4 + 4 * v6);
        if (v12 < v13)
        {
          v9 = a4;
          v10 = v6;
          goto LABEL_3;
        }

        if (v12 > v13)
        {
          break;
        }

        --v6;
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      if (v6)
      {
        v14 = (result + 256);
        *(result + 256) = v6 - 1;
        a5 = v6;
        goto LABEL_15;
      }

LABEL_25:
      *(result + 256) = 0;
    }
  }

  else
  {
    v9 = a4;
    v10 = a5;
LABEL_3:
    result = boost::polygon::detail::extended_int<64ul>::dif (result, v9, v10, a2, v6, 1);
    *(v8 + 256) = -*(v8 + 256);
  }

  return result;
}

void *boost::polygon::detail::extended_int<64ul>::add(_DWORD *__dst, unsigned int *__src, unsigned int *a3)
{
  v5 = __src[64];
  if (v5)
  {
    v6 = __src;
    v7 = a3[64];
    if (v7)
    {
      if (v5 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = -v5;
      }

      if (v7 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = -v7;
      }

      if (v5 > 0 == v7 > 0)
      {
        result = boost::polygon::detail::extended_int<64ul>::add(__dst, __src, v8, a3, v9);
      }

      else
      {
        result = boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v8, a3, v9, 0);
      }

      if ((v6[64] & 0x80000000) != 0)
      {
        __dst[64] = -__dst[64];
      }

      return result;
    }
  }

  else
  {
    __src = a3;
  }

  return memcpy(__dst, __src, 0x104uLL);
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v9;
  v169 = *MEMORY[0x277D85DE8];
  v25 = (*(v18 + 32) >> 2) & 8;
  v26 = (v18 + (v25 ^ 8));
  v27 = v26[1];
  v28 = (v18 + v25);
  v29 = v28[1];
  v30 = v27 <= v29;
  v31 = v27 - v29;
  if (!v30)
  {
    v32 = 1;
LABEL_3:
    *v139 = v31;
    goto LABEL_6;
  }

  if (v31 < 0)
  {
    v31 = -v31;
    v32 = -1;
    goto LABEL_3;
  }

  v32 = 0;
LABEL_6:
  v140 = v32;
  v33 = *v28;
  v34 = *v26;
  v35 = __OFSUB__(v33, v34);
  v36 = v33 - v34;
  if (!((v36 < 0) ^ v35 | (v36 == 0)))
  {
    v37 = 1;
LABEL_8:
    v137[0] = v36;
    goto LABEL_11;
  }

  if (v36 < 0)
  {
    v36 = -v36;
    v37 = -1;
    goto LABEL_8;
  }

  v37 = 0;
LABEL_11:
  v138 = v37;
  boost::polygon::detail::extended_int<64ul>::mul(v148, v139, v139);
  boost::polygon::detail::extended_int<64ul>::mul(v143, v137, v137);
  boost::polygon::detail::extended_int<64ul>::add(__src, v148, v143);
  v38 = v21[1];
  v39 = v23[1];
  v40 = v38 - v39;
  if (v38 > v39)
  {
    v41 = 1;
LABEL_13:
    *&v134[0] = v40;
    goto LABEL_16;
  }

  if (v40 < 0)
  {
    v40 = v39 - v38;
    v41 = -1;
    goto LABEL_13;
  }

  v41 = 0;
LABEL_16:
  v135 = v41;
  v42 = *v23;
  v43 = *v21;
  v44 = v42 - v43;
  if (v42 > v43)
  {
    v45 = 1;
LABEL_18:
    *&v132[0] = v44;
    goto LABEL_21;
  }

  if (v44 < 0)
  {
    v44 = v43 - v42;
    v45 = -1;
    goto LABEL_18;
  }

  v45 = 0;
LABEL_21:
  v133 = v45;
  v46 = v43 + v42;
  if (v46 < 1)
  {
    if (v46 < 0)
    {
      *v130 = -v46;
      if (-v46 >> 32)
      {
        v47 = -2;
      }

      else
      {
        v47 = -1;
      }
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    *v130 = v46;
    v47 = 1;
  }

  v131 = v47;
  v48 = v39 + v38;
  if (v48 < 1)
  {
    if (v48 < 0)
    {
      v128[0] = -v48;
      if (-v48 >> 32)
      {
        v49 = -2;
      }

      else
      {
        v49 = -1;
      }
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v128[0] = v48;
    v49 = 1;
  }

  v129 = v49;
  boost::polygon::detail::extended_int<64ul>::mul(v148, v139, v134);
  boost::polygon::detail::extended_int<64ul>::mul(v143, v137, v132);
  boost::polygon::detail::extended_int<64ul>::add(__dst, v148, v143);
  boost::polygon::detail::extended_int<64ul>::mul(v148, v134, v137);
  boost::polygon::detail::extended_int<64ul>::mul(v143, v132, v139);
  boost::polygon::detail::extended_int<64ul>::dif (v125, v148, v143);
  v50 = *(v19 + 12);
  v51 = v23[1];
  v30 = v50 <= v51;
  v52 = v50 - v51;
  if (!v30)
  {
    v53 = 1;
LABEL_41:
    v123[0] = v52;
    goto LABEL_44;
  }

  if (v52 < 0)
  {
    v52 = -v52;
    v53 = -1;
    goto LABEL_41;
  }

  v53 = 0;
LABEL_44:
  v124 = v53;
  v54 = *v23;
  v55 = *(v19 + 8);
  v30 = v54 <= v55;
  v56 = v54 - v55;
  if (!v30)
  {
    v57 = 1;
LABEL_46:
    v121[0] = v56;
    goto LABEL_49;
  }

  if (v56 < 0)
  {
    v56 = -v56;
    v57 = -1;
    goto LABEL_46;
  }

  v57 = 0;
LABEL_49:
  v122 = v57;
  boost::polygon::detail::extended_int<64ul>::mul(v148, v139, v121);
  boost::polygon::detail::extended_int<64ul>::mul(v143, v137, v123);
  boost::polygon::detail::extended_int<64ul>::dif (v120, v148, v143);
  v58 = *(v19 + 12);
  v59 = v21[1];
  v30 = v58 <= v59;
  v60 = v58 - v59;
  if (!v30)
  {
    v61 = 1;
LABEL_51:
    v123[0] = v60;
    goto LABEL_54;
  }

  if (v60 < 0)
  {
    v60 = -v60;
    v61 = -1;
    goto LABEL_51;
  }

  v61 = 0;
LABEL_54:
  v124 = v61;
  v62 = *v21;
  v63 = *(v19 + 8);
  v30 = v62 <= v63;
  v64 = v62 - v63;
  if (!v30)
  {
    v65 = 1;
LABEL_56:
    v121[0] = v64;
    goto LABEL_59;
  }

  if (v64 < 0)
  {
    v64 = -v64;
    v65 = -1;
    goto LABEL_56;
  }

  v65 = 0;
LABEL_59:
  v122 = v65;
  boost::polygon::detail::extended_int<64ul>::mul(v148, v139, v121);
  boost::polygon::detail::extended_int<64ul>::mul(v143, v137, v123);
  boost::polygon::detail::extended_int<64ul>::dif (v119, v148, v143);
  boost::polygon::detail::extended_int<64ul>::add(v118, v120, v119);
  if (!v125[64])
  {
    boost::polygon::detail::extended_int<64ul>::mul(v148, __dst, __dst);
    boost::polygon::detail::extended_int<64ul>::mul(v143, v118, v118);
    boost::polygon::detail::extended_int<64ul>::dif (v142, v148, v143);
    boost::polygon::detail::extended_int<64ul>::mul(v117, __dst, v118);
    boost::polygon::detail::extended_int<64ul>::mul(v141, v117, v130);
    v148[0] = 2;
    v149 = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v143, v141, v148);
    boost::polygon::detail::extended_int<64ul>::mul(v116, v142, v134);
    boost::polygon::detail::extended_int<64ul>::add(v148, v143, v116);
    memcpy(v143, __src, sizeof(v143));
    boost::polygon::detail::extended_int<64ul>::mul(v115, v117, v118);
    v141[0] = 2;
    v141[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v116, v115, v141);
    boost::polygon::detail::extended_int<64ul>::mul(v114, v142, __dst);
    boost::polygon::detail::extended_int<64ul>::add(v141, v116, v114);
    memcpy(v150, v141, sizeof(v150));
    v144[0] = 1;
    v144[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v115, v117, v128);
    v141[0] = 2;
    v141[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v116, v115, v141);
    boost::polygon::detail::extended_int<64ul>::mul(v114, v142, v132);
    boost::polygon::detail::extended_int<64ul>::add(v141, v116, v114);
    memcpy(v151, v141, sizeof(v151));
    boost::polygon::detail::extended_int<64ul>::p(v117, v94, v95, v96);
    v99 = ldexp(v97, v98);
    v101 = 1.0;
    v72 = 1.0 / v99;
    if (v13)
    {
      boost::polygon::detail::extended_int<64ul>::p(v148, v99, 1.0, v100);
      v104 = ldexp(v102, v103);
      v101 = 0.25;
      v99 = v72 * (v104 * 0.25);
      *v15 = v99;
      if (!v11)
      {
LABEL_78:
        if (!a9)
        {
          return;
        }

LABEL_82:
        v108 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v24, v148, v143, v99, v101, v100);
        v91 = ldexp(*&v108, v109);
        v93 = 0.25;
LABEL_83:
        v110 = v91 * v93;
        v111 = v72 * v110;
        boost::polygon::detail::extended_int<64ul>::p(__src, v110, v93, v92);
        v15[2] = v111 / sqrt(ldexp(v112, v113));
        return;
      }
    }

    else if (!v11)
    {
      goto LABEL_78;
    }

    boost::polygon::detail::extended_int<64ul>::p(v151, v99, v101, v100);
    v107 = ldexp(v105, v106);
    v101 = 0.25;
    v99 = v72 * (v107 * 0.25);
    v15[1] = v99;
    if (!a9)
    {
      return;
    }

    goto LABEL_82;
  }

  boost::polygon::detail::extended_int<64ul>::mul(v116, __dst, __dst);
  boost::polygon::detail::extended_int<64ul>::mul(v115, v125, v125);
  boost::polygon::detail::extended_int<64ul>::add(v117, v116, v115);
  boost::polygon::detail::extended_int<64ul>::mul(v142, v117, v120);
  boost::polygon::detail::extended_int<64ul>::mul(v143, v142, v119);
  v148[0] = 4;
  v149 = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v141, v143, v148);
  boost::polygon::detail::extended_int<64ul>::p(v125, v66, v67, v68);
  v71 = ldexp(v69, v70);
  v72 = 1.0 / v71 * (1.0 / v71);
  if ((v13 & 1) != 0 || a9)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v142, v130, v125);
    boost::polygon::detail::extended_int<64ul>::mul(v143, v142, v125);
    boost::polygon::detail::extended_int<64ul>::mul(v116, __dst, v118);
    boost::polygon::detail::extended_int<64ul>::mul(v117, v116, v134);
    boost::polygon::detail::extended_int<64ul>::add(v148, v143, v117);
    v143[0] = 1;
    v143[64] = 1;
    *&v142[192] = v134[12];
    *&v142[208] = v134[13];
    *&v142[224] = v134[14];
    *&v142[240] = v134[15];
    *&v142[128] = v134[8];
    *&v142[144] = v134[9];
    *&v142[160] = v134[10];
    *&v142[176] = v134[11];
    *&v142[64] = v134[4];
    *&v142[80] = v134[5];
    *&v142[96] = v134[6];
    *&v142[112] = v134[7];
    *v142 = v134[0];
    *&v142[16] = v134[1];
    *&v142[32] = v134[2];
    *&v142[48] = v134[3];
    v73 = v135;
    if (v17 == 2)
    {
      v73 = -v135;
    }

    *&v150[192] = *&v142[192];
    *&v150[208] = *&v142[208];
    *&v150[224] = *&v142[224];
    *&v150[240] = *&v142[240];
    *&v150[128] = *&v142[128];
    *&v150[144] = *&v142[144];
    *&v150[160] = *&v142[160];
    *&v150[176] = *&v142[176];
    *&v150[64] = *&v142[64];
    *&v150[80] = *&v142[80];
    *&v150[96] = *&v142[96];
    *&v150[112] = *&v142[112];
    *v150 = *v142;
    *&v150[16] = *&v142[16];
    *&v150[32] = *&v142[32];
    *&v150[48] = *&v142[48];
    *&v150[256] = v73;
    memcpy(v144, v141, sizeof(v144));
    if (v13)
    {
      v77 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v24, v148, v143, v74, v75, v76);
      *v15 = v72 * (ldexp(*&v77, v78) * 0.5);
    }
  }

  if ((v11 & 1) != 0 || a9)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v116, v128, v125);
    boost::polygon::detail::extended_int<64ul>::mul(v117, v116, v125);
    boost::polygon::detail::extended_int<64ul>::mul(v114, __dst, v118);
    boost::polygon::detail::extended_int<64ul>::mul(v115, v114, v132);
    boost::polygon::detail::extended_int<64ul>::add(v142, v117, v115);
    memcpy(v151, v142, sizeof(v151));
    v145[0] = 1;
    v146 = 1;
    *&v142[192] = v132[12];
    *&v142[208] = v132[13];
    *&v142[224] = v132[14];
    *&v142[240] = v132[15];
    *&v142[128] = v132[8];
    *&v142[144] = v132[9];
    *&v142[160] = v132[10];
    *&v142[176] = v132[11];
    *&v142[64] = v132[4];
    *&v142[80] = v132[5];
    *&v142[96] = v132[6];
    *&v142[112] = v132[7];
    *v142 = v132[0];
    *&v142[16] = v132[1];
    *&v142[32] = v132[2];
    *&v142[48] = v132[3];
    v79 = v133;
    if (v17 == 2)
    {
      v79 = -v133;
    }

    v164 = *&v142[192];
    v165 = *&v142[208];
    v166 = *&v142[224];
    v167 = *&v142[240];
    v160 = *&v142[128];
    v161 = *&v142[144];
    v162 = *&v142[160];
    v163 = *&v142[176];
    v156 = *&v142[64];
    v157 = *&v142[80];
    v158 = *&v142[96];
    v159 = *&v142[112];
    v152 = *v142;
    v153 = *&v142[16];
    v154 = *&v142[32];
    v155 = *&v142[48];
    v168 = v79;
    memcpy(v147, v141, sizeof(v147));
    if (v11)
    {
      v83 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v24, v151, v145, v80, v81, v82);
      v15[1] = v72 * (ldexp(*&v83, v84) * 0.5);
    }
  }

  if (a9)
  {
    boost::polygon::detail::extended_int<64ul>::mul(v142, v143, __src);
    memcpy(v143, v142, sizeof(v143));
    boost::polygon::detail::extended_int<64ul>::mul(v142, v144, __src);
    memcpy(v144, v142, sizeof(v144));
    boost::polygon::detail::extended_int<64ul>::mul(v116, v125, v125);
    boost::polygon::detail::extended_int<64ul>::mul(v115, __dst, __dst);
    boost::polygon::detail::extended_int<64ul>::add(v117, v116, v115);
    boost::polygon::detail::extended_int<64ul>::mul(v142, v118, v117);
    memcpy(v151, v142, sizeof(v151));
    v145[0] = 1;
    v146 = 1;
    *&v142[192] = __dst[12];
    *&v142[208] = __dst[13];
    *&v142[224] = __dst[14];
    *&v142[240] = __dst[15];
    *&v142[128] = __dst[8];
    *&v142[144] = __dst[9];
    *&v142[160] = __dst[10];
    *&v142[176] = __dst[11];
    *&v142[64] = __dst[4];
    *&v142[80] = __dst[5];
    *&v142[96] = __dst[6];
    *&v142[112] = __dst[7];
    *v142 = __dst[0];
    *&v142[16] = __dst[1];
    *&v142[32] = __dst[2];
    *&v142[48] = __dst[3];
    v85 = v127;
    if (v17 == 2)
    {
      v85 = -v127;
    }

    v164 = *&v142[192];
    v165 = *&v142[208];
    v166 = *&v142[224];
    v167 = *&v142[240];
    v160 = *&v142[128];
    v161 = *&v142[144];
    v162 = *&v142[160];
    v163 = *&v142[176];
    v156 = *&v142[64];
    v157 = *&v142[80];
    v158 = *&v142[96];
    v159 = *&v142[112];
    v152 = *v142;
    v153 = *&v142[16];
    v154 = *&v142[32];
    v155 = *&v142[48];
    v168 = v85;
    memcpy(v147, v141, sizeof(v147));
    v89 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(v24, v148, v143, v86, v87, v88);
    v91 = ldexp(*&v89, v90);
    v93 = 0.5;
    goto LABEL_83;
  }
}

uint64_t boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4, double a5, double a6)
{
  v9 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(a4, a5, a6, a1, a2, a3);
  v11 = v10;
  v31 = v10;
  v32 = v12;
  boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v9, v13, v14, a1, a2 + 65, a3 + 65);
  v29 = v15;
  v30 = v16;
  if (v11 >= 0.0 && v15 >= 0.0 || v11 <= 0.0 && v15 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v31, &v29);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v26, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(__src, v26, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v24, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v25, v24, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::dif (__dst, __src, v25);
  boost::polygon::detail::extended_int<64ul>::p(__dst, v18, v19, v20);
  v22 = frexp(v21, &v33);
  v23 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v31, &v29));
  return frexp(v22 / v23, &v33);
}

uint64_t boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(unsigned int *a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6)
{
  v9 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2, a3, a4, a5, a6));
  v34 = v9;
  v35 = v10;
  v14 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2 + 130, a3 + 130, v11, v12, v13));
  v32 = v14;
  v33 = v15;
  if (v9 >= 0.0 && v14 >= 0.0 || v9 <= 0.0 && v14 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v34, &v32);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v28, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(v29, v28, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v26, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v27, v26, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::add(__dst, v29, v27);
  boost::polygon::detail::extended_int<64ul>::mul(v24, a2 + 130, (a2 + 130));
  boost::polygon::detail::extended_int<64ul>::mul(v25, v24, (a3 + 130));
  boost::polygon::detail::extended_int<64ul>::dif (v31, __dst, v25);
  boost::polygon::detail::extended_int<64ul>::mul(v22, a2 + 195, (a2 + 195));
  boost::polygon::detail::extended_int<64ul>::mul(v23, v22, (a3 + 195));
  boost::polygon::detail::extended_int<64ul>::dif (__src, v31, v23);
  memcpy(a1, __src, 0x104uLL);
  a1[325] = 1;
  a1[389] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(__dst, a2, (a2 + 65));
  LODWORD(__src[0]) = 2;
  LODWORD(__src[32]) = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v31, __dst, __src);
  memcpy(a1 + 65, v31, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__src, a3, (a3 + 65));
  memcpy(a1 + 390, __src, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__dst, a2 + 130, (a2 + 195));
  LODWORD(__src[0]) = 2;
  LODWORD(__src[32]) = -1;
  boost::polygon::detail::extended_int<64ul>::mul(v31, __dst, __src);
  memcpy(a1 + 130, v31, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__src, a3 + 130, (a3 + 195));
  memcpy(a1 + 455, __src, 0x104uLL);
  v20 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(a1, a1, a1 + 325, v17, v18, v19));
  v21 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v34, &v32));
  return frexp(v20 / v21, &__src[1]);
}

long double boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(double a1, double a2, double a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  boost::polygon::detail::extended_int<64ul>::p(a5, a1, a2, a3);
  v8 = frexp(v7, &v18);
  boost::polygon::detail::extended_int<64ul>::p(a6, v8, v9, v10);
  LODWORD(a6) = v11;
  v13 = frexp(v12, &v18);
  LODWORD(v18) = v18 + a6;
  v16 = v13;
  v17 = v18;
  boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(&v16);
  return frexp(v8 * v14, &v18);
}

uint64_t boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(_DWORD *a1, long double *a2)
{
  v2 = *a1;
  if (*a1 == 0.0)
  {
    return *a2;
  }

  v3 = *(a2 + 2);
  v4 = a1[2];
  if (v3 > v4 + 54)
  {
    return *a2;
  }

  v7 = *a2;
  if (*a2 == 0.0 || v4 > v3 + 54)
  {
    return *a1;
  }

  if (v4 >= v3)
  {
    v11 = ldexp(v2, v4 - v3);
    *&v12 = frexp(v7 + v11, &v12 + 2);
    v10 = DWORD2(v12) + v3;
  }

  else
  {
    v9 = ldexp(*a2, v3 - v4);
    *&v12 = frexp(v2 + v9, &v12 + 2);
    v10 = DWORD2(v12) + v4;
  }

  DWORD2(v12) = v10;
  return v12;
}

uint64_t boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(_DWORD *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (*a1 == 0.0 || (v4 = a1[2], v3 > v4 + 54))
  {
    v5 = -*a2;
    goto LABEL_4;
  }

  v9 = *a2;
  if (*a2 != 0.0 && v4 <= v3 + 54)
  {
    if (v4 < v3)
    {
      v11 = ldexp(-v9, v3 - v4);
      v6 = frexp(v2 + v11, &v12 + 2);
      v7 = DWORD2(v12) + v4;
      goto LABEL_5;
    }

    v5 = ldexp(v2, v4 - v3) - v9;
LABEL_4:
    v6 = frexp(v5, &v12 + 2);
    v7 = DWORD2(v12) + v3;
LABEL_5:
    DWORD2(v12) = v7;
    return *&v6;
  }

  return *a1;
}

long double boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    v1 = v1 + v1;
  }

  return frexp(sqrt(v1), &v3);
}

uint64_t boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(_DWORD *a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6)
{
  v9 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2, a3, a4, a5, a6));
  v31 = v9;
  v32 = v10;
  boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v11, v12, v13, a1, a2 + 130, a3 + 130);
  v29 = v14;
  v30 = v15;
  if (v9 >= 0.0 && v14 >= 0.0 || v9 <= 0.0 && v14 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v31, &v29);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v26, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(v27, v26, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v24, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v25, v24, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::add(__dst, v27, v25);
  boost::polygon::detail::extended_int<64ul>::mul(v22, a2 + 130, (a2 + 130));
  boost::polygon::detail::extended_int<64ul>::mul(v23, v22, (a3 + 130));
  boost::polygon::detail::extended_int<64ul>::dif (__src, __dst, v23);
  memcpy(a1 + 195, __src, 0x104uLL);
  a1[520] = 1;
  a1[584] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v27, a2, (a2 + 65));
  __src[0] = 2;
  __src[64] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(__dst, v27, __src);
  memcpy(a1 + 260, __dst, 0x104uLL);
  boost::polygon::detail::extended_int<64ul>::mul(__src, a3, (a3 + 65));
  memcpy(a1 + 585, __src, 0x104uLL);
  v20 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a1 + 195, a1 + 520, v17, v18, v19));
  v21 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v31, &v29));
  return frexp(v20 / v21, &__src[2]);
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::pss(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v11 = v10;
  v117 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v118 = v9;
  v154 = *MEMORY[0x277D85DE8];
  v20 = (*(v19 + 32) >> 2) & 8;
  v21 = (v19 + (v20 ^ 8));
  v22 = (v19 + v20);
  v24 = (*(v23 + 32) >> 2) & 8;
  v25 = (v23 + v24);
  v26 = (v23 + (v24 ^ 8));
  v27 = *v22;
  v28 = *v21;
  v29 = v27 <= v28;
  v30 = v27 - v28;
  if (!v29)
  {
    v31 = 1;
LABEL_3:
    *v149 = v30;
    goto LABEL_6;
  }

  if (v30 < 0)
  {
    v30 = -v30;
    v31 = -1;
    goto LABEL_3;
  }

  v31 = 0;
LABEL_6:
  v150 = v31;
  v32 = v22[1];
  v33 = v21[1];
  v29 = v32 <= v33;
  v34 = v32 - v33;
  if (!v29)
  {
    v35 = 1;
LABEL_8:
    *v145 = v34;
    goto LABEL_11;
  }

  if (v34 < 0)
  {
    v34 = -v34;
    v35 = -1;
    goto LABEL_8;
  }

  v35 = 0;
LABEL_11:
  v146 = v35;
  v36 = *v26;
  v37 = *v25;
  v29 = v36 <= v37;
  v38 = v36 - v37;
  if (!v29)
  {
    v39 = 1;
LABEL_13:
    v151[0] = v38;
    goto LABEL_16;
  }

  if (v38 < 0)
  {
    v38 = -v38;
    v39 = -1;
    goto LABEL_13;
  }

  v39 = 0;
LABEL_16:
  v152 = v39;
  v40 = v26[1];
  v41 = v25[1];
  v29 = v40 <= v41;
  v42 = v40 - v41;
  if (!v29)
  {
    v43 = 1;
LABEL_18:
    v147[0] = v42;
    goto LABEL_21;
  }

  if (v42 < 0)
  {
    v42 = -v42;
    v43 = -1;
    goto LABEL_18;
  }

  v43 = 0;
LABEL_21:
  v148 = v43;
  boost::polygon::detail::extended_int<64ul>::mul(v138, v151, v145);
  boost::polygon::detail::extended_int<64ul>::mul(v134, v149, v147);
  boost::polygon::detail::extended_int<64ul>::dif (v132, v138, v134);
  if (v133)
  {
    v44 = *v22;
    if (*v22 <= 0)
    {
      if ((v44 & 0x80000000) == 0)
      {
        v45 = 0;
LABEL_44:
        v138[64] = v45;
        boost::polygon::detail::extended_int<64ul>::mul(v134, v145, v138);
        v72 = v22[1];
        if (v72 <= 0)
        {
          if ((v72 & 0x80000000) == 0)
          {
            v73 = 0;
LABEL_49:
            v138[64] = v73;
            boost::polygon::detail::extended_int<64ul>::mul(v153, v149, v138);
            boost::polygon::detail::extended_int<64ul>::dif (v142, v134, v153);
            v74 = v26[1];
            if (v74 <= 0)
            {
              if ((v74 & 0x80000000) == 0)
              {
                v75 = 0;
LABEL_54:
                v138[64] = v75;
                boost::polygon::detail::extended_int<64ul>::mul(v134, v151, v138);
                v76 = *v26;
                if (*v26 <= 0)
                {
                  if ((v76 & 0x80000000) == 0)
                  {
                    v77 = 0;
LABEL_59:
                    v138[64] = v77;
                    boost::polygon::detail::extended_int<64ul>::mul(v153, v147, v138);
                    boost::polygon::detail::extended_int<64ul>::dif (v138, v134, v153);
                    memcpy(v144, v138, sizeof(v144));
                    boost::polygon::detail::extended_int<64ul>::mul(v138, v149, v144);
                    boost::polygon::detail::extended_int<64ul>::mul(v134, v151, v142);
                    boost::polygon::detail::extended_int<64ul>::add(v131, v138, v134);
                    boost::polygon::detail::extended_int<64ul>::mul(v138, v145, v144);
                    boost::polygon::detail::extended_int<64ul>::mul(v134, v147, v142);
                    boost::polygon::detail::extended_int<64ul>::add(v130, v138, v134);
                    v78 = *v18;
                    if (*v18 <= 0)
                    {
                      if ((v78 & 0x80000000) == 0)
                      {
                        v79 = 0;
LABEL_64:
                        v138[64] = v79;
                        boost::polygon::detail::extended_int<64ul>::mul(v134, v132, v138);
                        boost::polygon::detail::extended_int<64ul>::dif (__src, v131, v134);
                        v80 = v18[1];
                        if (v80 <= 0)
                        {
                          if ((v80 & 0x80000000) == 0)
                          {
                            v81 = 0;
LABEL_69:
                            v138[64] = v81;
                            boost::polygon::detail::extended_int<64ul>::mul(v134, v132, v138);
                            boost::polygon::detail::extended_int<64ul>::dif (v128, v130, v134);
                            if (!(__src[64] | v128[64]))
                            {
                              boost::polygon::detail::extended_int<64ul>::p(v132, v82, v83, v84);
                              v87 = ldexp(v85, v86);
                              boost::polygon::detail::extended_int<64ul>::p(v131, v87, v88, v89);
                              v92 = ldexp(v90, v91);
                              v93 = v92 / v87;
                              boost::polygon::detail::extended_int<64ul>::p(v130, v92, v94, v95);
                              v98 = ldexp(v96, v97);
                              *v14 = v93;
                              *(v14 + 8) = v98 / v87;
                              *(v14 + 16) = v93;
                              *(v14 + 24) = 1;
                              return;
                            }

                            if (v133 >= 0)
                            {
                              v99 = -1;
                            }

                            else
                            {
                              v99 = 1;
                            }

                            if (v16 == 2)
                            {
                              v100 = v99;
                            }

                            else
                            {
                              v100 = -v99;
                            }

                            v101 = 1;
                            if (v100 <= 0)
                            {
                              if ((v100 & 0x80000000) == 0)
                              {
                                v101 = 0;
LABEL_85:
                                v127[64] = v101;
                                memcpy(v153, __src, sizeof(v153));
                                *&v153[256] = -*&v153[256];
                                boost::polygon::detail::extended_int<64ul>::mul(v134, v151, v153);
                                memcpy(__dst, v128, sizeof(__dst));
                                __dst[64] = -__dst[64];
                                boost::polygon::detail::extended_int<64ul>::mul(v126, v147, __dst);
                                boost::polygon::detail::extended_int<64ul>::add(v138, v134, v126);
                                memcpy(v126, __src, sizeof(v126));
                                v126[64] = -v126[64];
                                boost::polygon::detail::extended_int<64ul>::mul(v153, v149, v126);
                                memcpy(v124, v128, sizeof(v124));
                                v124[64] = -v124[64];
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v145, v124);
                                boost::polygon::detail::extended_int<64ul>::add(v134, v153, __dst);
                                memcpy(v139, v134, sizeof(v139));
                                memcpy(v140, v127, sizeof(v140));
                                v141[64] = 0;
                                boost::polygon::detail::extended_int<64ul>::mul(v153, v149, v149);
                                boost::polygon::detail::extended_int<64ul>::mul(v126, v145, v145);
                                boost::polygon::detail::extended_int<64ul>::add(v134, v153, v126);
                                boost::polygon::detail::extended_int<64ul>::mul(v126, v151, v151);
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v147, v147);
                                boost::polygon::detail::extended_int<64ul>::add(v153, v126, __dst);
                                memcpy(v135, v153, sizeof(v135));
                                boost::polygon::detail::extended_int<64ul>::mul(v126, v149, v151);
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v145, v147);
                                boost::polygon::detail::extended_int<64ul>::add(v153, v126, __dst);
                                memcpy(v136, v153, sizeof(v136));
                                boost::polygon::detail::extended_int<64ul>::mul(v123, v149, v128);
                                boost::polygon::detail::extended_int<64ul>::mul(v122, v145, __src);
                                boost::polygon::detail::extended_int<64ul>::dif (v124, v123, v122);
                                boost::polygon::detail::extended_int<64ul>::mul(v120, v151, v128);
                                boost::polygon::detail::extended_int<64ul>::mul(v119, v147, __src);
                                boost::polygon::detail::extended_int<64ul>::dif (v121, v120, v119);
                                boost::polygon::detail::extended_int<64ul>::mul(__dst, v124, v121);
                                *v153 = 2;
                                *&v153[256] = -1;
                                boost::polygon::detail::extended_int<64ul>::mul(v126, __dst, v153);
                                memcpy(v137, v126, sizeof(v137));
                                v102 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                v104 = ldexp(*&v102, v103);
                                boost::polygon::detail::extended_int<64ul>::p(v132, v104, v105, v106);
                                v109 = v104 * ldexp(v107, v108);
                                if (v11)
                                {
                                  boost::polygon::detail::extended_int<64ul>::mul(v124, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v128, v128);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v124, v123);
                                  boost::polygon::detail::extended_int<64ul>::mul(v126, v147, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, __src, v151);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v128, v147);
                                  boost::polygon::detail::extended_int<64ul>::add(v121, v120, v119);
                                  boost::polygon::detail::extended_int<64ul>::mul(v122, v130, v121);
                                  boost::polygon::detail::extended_int<64ul>::dif (v153, v126, v122);
                                  memcpy(v138, v153, sizeof(v138));
                                  boost::polygon::detail::extended_int<64ul>::mul(v124, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v128, v128);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v124, v123);
                                  boost::polygon::detail::extended_int<64ul>::mul(v126, v145, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, __src, v149);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v128, v145);
                                  boost::polygon::detail::extended_int<64ul>::add(v121, v120, v119);
                                  boost::polygon::detail::extended_int<64ul>::mul(v122, v130, v121);
                                  boost::polygon::detail::extended_int<64ul>::dif (v153, v126, v122);
                                  memcpy(v139, v153, sizeof(v139));
                                  boost::polygon::detail::extended_int<64ul>::mul(v153, v130, v127);
                                  memcpy(v140, v153, sizeof(v140));
                                  v110 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                  *(v14 + 8) = ldexp(*&v110, v111) / v109;
                                }

                                if ((v117 & 1) != 0 || a9)
                                {
                                  boost::polygon::detail::extended_int<64ul>::mul(v124, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v128, v128);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v124, v123);
                                  boost::polygon::detail::extended_int<64ul>::mul(v126, v151, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, __src, v151);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v128, v147);
                                  boost::polygon::detail::extended_int<64ul>::add(v121, v120, v119);
                                  boost::polygon::detail::extended_int<64ul>::mul(v122, v131, v121);
                                  boost::polygon::detail::extended_int<64ul>::dif (v153, v126, v122);
                                  memcpy(v138, v153, sizeof(v138));
                                  boost::polygon::detail::extended_int<64ul>::mul(v124, __src, __src);
                                  boost::polygon::detail::extended_int<64ul>::mul(v123, v128, v128);
                                  boost::polygon::detail::extended_int<64ul>::add(__dst, v124, v123);
                                  boost::polygon::detail::extended_int<64ul>::mul(v126, v149, __dst);
                                  boost::polygon::detail::extended_int<64ul>::mul(v120, __src, v149);
                                  boost::polygon::detail::extended_int<64ul>::mul(v119, v128, v145);
                                  boost::polygon::detail::extended_int<64ul>::add(v121, v120, v119);
                                  boost::polygon::detail::extended_int<64ul>::mul(v122, v131, v121);
                                  boost::polygon::detail::extended_int<64ul>::dif (v153, v126, v122);
                                  memcpy(v139, v153, sizeof(v139));
                                  boost::polygon::detail::extended_int<64ul>::mul(v153, v131, v127);
                                  memcpy(v140, v153, sizeof(v140));
                                  if (v117)
                                  {
                                    v112 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                    *v14 = ldexp(*&v112, v113) / v109;
                                  }

                                  if (a9)
                                  {
                                    boost::polygon::detail::extended_int<64ul>::mul(v123, __src, __src);
                                    boost::polygon::detail::extended_int<64ul>::mul(v122, v128, v128);
                                    boost::polygon::detail::extended_int<64ul>::add(v124, v123, v122);
                                    boost::polygon::detail::extended_int<64ul>::mul(__dst, v132, v124);
                                    if (v104 >= 0.0)
                                    {
                                      v114 = 1;
                                    }

                                    else
                                    {
                                      v114 = -1;
                                    }

                                    *v153 = 1;
                                    *&v153[256] = v114;
                                    boost::polygon::detail::extended_int<64ul>::mul(v126, __dst, v153);
                                    memcpy(v141, v126, sizeof(v141));
                                    v115 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>();
                                    v71 = ldexp(*&v115, v116) / v109;
LABEL_96:
                                    *(v14 + 16) = v71;
                                    return;
                                  }
                                }

                                return;
                              }

                              v101 = -1;
                            }

                            v127[0] = 1;
                            goto LABEL_85;
                          }

                          v80 = -v80;
                          v81 = -1;
                        }

                        else
                        {
                          v81 = 1;
                        }

                        v138[0] = v80;
                        goto LABEL_69;
                      }

                      v78 = -v78;
                      v79 = -1;
                    }

                    else
                    {
                      v79 = 1;
                    }

                    v138[0] = v78;
                    goto LABEL_64;
                  }

                  v76 = -v76;
                  v77 = -1;
                }

                else
                {
                  v77 = 1;
                }

                v138[0] = v76;
                goto LABEL_59;
              }

              v74 = -v74;
              v75 = -1;
            }

            else
            {
              v75 = 1;
            }

            v138[0] = v74;
            goto LABEL_54;
          }

          v72 = -v72;
          v73 = -1;
        }

        else
        {
          v73 = 1;
        }

        v138[0] = v72;
        goto LABEL_49;
      }

      v44 = -v44;
      v45 = -1;
    }

    else
    {
      v45 = 1;
    }

    v138[0] = v44;
    goto LABEL_44;
  }

  boost::polygon::detail::extended_int<64ul>::mul(v134, v149, v149);
  boost::polygon::detail::extended_int<64ul>::mul(v142, v145, v145);
  boost::polygon::detail::extended_int<64ul>::add(v138, v134, v142);
  boost::polygon::detail::extended_int<64ul>::p(v138, v46, v47, v48);
  v51 = ldexp(v49, v50);
  v52 = v51 + v51;
  boost::polygon::detail::extended_int<64ul>::operator*(v145, *v25 - *v21, v138);
  boost::polygon::detail::extended_int<64ul>::operator*(v149, v25[1] - v21[1], v134);
  boost::polygon::detail::extended_int<64ul>::dif (v142, v138, v134);
  boost::polygon::detail::extended_int<64ul>::operator*(v149, v18[1] - v21[1], v138);
  boost::polygon::detail::extended_int<64ul>::operator*(v145, *v18 - *v21, v134);
  boost::polygon::detail::extended_int<64ul>::dif (v131, v138, v134);
  boost::polygon::detail::extended_int<64ul>::operator*(v145, *v18 - *v25, v138);
  boost::polygon::detail::extended_int<64ul>::operator*(v149, v18[1] - v25[1], v134);
  boost::polygon::detail::extended_int<64ul>::dif (v130, v138, v134);
  boost::polygon::detail::extended_int<64ul>::mul(v134, v131, v130);
  v135[0] = 1;
  v135[64] = 1;
  if (v11)
  {
    if (v16 == 2)
    {
      v53 = 1;
    }

    else
    {
      v53 = -1;
    }

    *v153 = 2;
    *&v153[256] = v53;
    boost::polygon::detail::extended_int<64ul>::mul(v138, v145, v153);
    boost::polygon::detail::extended_int<64ul>::mul(v127, v149, v149);
    boost::polygon::detail::extended_int<64ul>::operator*(v127, v25[1] + v21[1], v128);
    boost::polygon::detail::extended_int<64ul>::mul(__dst, v149, v145);
    boost::polygon::detail::extended_int<64ul>::operator*(__dst, *v25 + *v21 - 2 * *v18, v126);
    boost::polygon::detail::extended_int<64ul>::dif (__src, v128, v126);
    boost::polygon::detail::extended_int<64ul>::mul(v123, v145, v145);
    boost::polygon::detail::extended_int<64ul>::operator*(v123, 2 * v18[1], v124);
    boost::polygon::detail::extended_int<64ul>::add(v153, __src, v124);
    memcpy(v139, v153, sizeof(v139));
    v57 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v118, v138, v134, v54, v55, v56);
    *(v14 + 8) = ldexp(*&v57, v58) / v52;
  }

  if ((v117 & 1) != 0 || a9)
  {
    if (v16 == 2)
    {
      v59 = 1;
    }

    else
    {
      v59 = -1;
    }

    *v153 = 2;
    *&v153[256] = v59;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v149, v153);
    memcpy(v138, __src, sizeof(v138));
    boost::polygon::detail::extended_int<64ul>::mul(v127, v145, v145);
    boost::polygon::detail::extended_int<64ul>::operator*(v127, *v25 + *v21, v128);
    boost::polygon::detail::extended_int<64ul>::mul(__dst, v149, v145);
    boost::polygon::detail::extended_int<64ul>::operator*(__dst, v25[1] + v21[1] - 2 * v18[1], v126);
    boost::polygon::detail::extended_int<64ul>::dif (__src, v128, v126);
    boost::polygon::detail::extended_int<64ul>::mul(v123, v149, v149);
    boost::polygon::detail::extended_int<64ul>::operator*(v123, 2 * *v18, v124);
    boost::polygon::detail::extended_int<64ul>::add(v153, __src, v124);
    memcpy(v139, v153, sizeof(v139));
    if (v117)
    {
      v63 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v118, v138, v134, v60, v61, v62);
      *v14 = ldexp(*&v63, v64) / v52;
    }

    if (a9)
    {
      *&v153[192] = v142[12];
      *&v153[208] = v142[13];
      *&v153[224] = v142[14];
      *&v153[240] = v142[15];
      *&v153[128] = v142[8];
      *&v153[144] = v142[9];
      *&v153[160] = v142[10];
      *&v153[176] = v142[11];
      *&v153[64] = v142[4];
      *&v153[80] = v142[5];
      *&v153[96] = v142[6];
      *&v153[112] = v142[7];
      *v153 = v142[0];
      *&v153[16] = v142[1];
      *&v153[32] = v142[2];
      *&v153[48] = v142[3];
      if (v143 >= 0)
      {
        v65 = v143;
      }

      else
      {
        v65 = -v143;
      }

      *&v140[192] = *&v153[192];
      *&v140[208] = *&v153[208];
      *&v140[224] = *&v153[224];
      *&v140[240] = *&v153[240];
      *&v140[128] = *&v153[128];
      *&v140[144] = *&v153[144];
      *&v140[160] = *&v153[160];
      *&v140[176] = *&v153[176];
      *&v140[64] = *&v153[64];
      *&v140[80] = *&v153[80];
      *&v140[96] = *&v153[96];
      *&v140[112] = *&v153[112];
      *v140 = *v153;
      *&v140[16] = *&v153[16];
      *&v140[32] = *&v153[32];
      *&v140[48] = *&v153[48];
      *&v140[256] = v65;
      boost::polygon::detail::extended_int<64ul>::mul(__src, v149, v149);
      boost::polygon::detail::extended_int<64ul>::mul(v128, v145, v145);
      boost::polygon::detail::extended_int<64ul>::add(v153, __src, v128);
      memcpy(v136, v153, sizeof(v136));
      v69 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v118, v138, v134, v66, v67, v68);
      v71 = ldexp(*&v69, v70) / v52;
      goto LABEL_96;
    }
  }
}

uint64_t boost::polygon::detail::extended_int<64ul>::operator*@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      v7[0] = -a2;
      if (-a2 >> 32)
      {
        v5 = -2;
      }

      else
      {
        v5 = -1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v7[0] = a2;
    if (HIDWORD(a2))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  v8 = v5;
  return boost::polygon::detail::extended_int<64ul>::mul(a3, a1, v7);
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss4<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>()
{
  v0 = MEMORY[0x28223BE20]();
  v6 = v2;
  v7 = v1;
  v8 = v0;
  v83 = *MEMORY[0x277D85DE8];
  if (v1[259])
  {
    __dst[0] = 1;
    __dst[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v76, v2, (v2 + 65));
    memcpy(v80, v6 + 130, sizeof(v80));
    v77[0] = 1;
    v77[64] = 1;
    v12 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v9, v10, v11, v8, v7 + 130, v6 + 195);
    v14 = v13;
    v16 = v15;
    __src[0] = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v8, __dst, v76, v12, v17, v18);
    LODWORD(__src[1]) = v19;
    boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(__src);
    v22 = v21 + v14;
    v23 = frexp(v16 * v20, &v75[1]);
    LODWORD(v75[1]) += v22;
    v65 = v23;
    v66 = v75[1];
    memcpy(__dst, v7, sizeof(__dst));
    memcpy(v76, v6, sizeof(v76));
    memcpy(v80, v7 + 65, sizeof(v80));
    memcpy(v77, v6 + 65, 0x104uLL);
    memcpy(v81, v7 + 195, sizeof(v81));
    v77[65] = 1;
    v77[129] = 1;
    v27 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v8, __dst, v76, v24, v25, v26));
    v63 = v27;
    v64 = v28;
    if (v27 >= 0.0 && v23 >= 0.0 || v27 <= 0.0 && v23 <= 0.0)
    {
      v29 = &v63;
      v30 = &v65;
      return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(v29, v30);
    }

    boost::polygon::detail::extended_int<64ul>::mul(v73, v7 + 195, v7);
    LODWORD(v75[0]) = 2;
    LODWORD(v75[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v73, v75);
    memcpy(__dst, __src, sizeof(__dst));
    boost::polygon::detail::extended_int<64ul>::mul(v73, v7 + 195, (v7 + 65));
    LODWORD(v75[0]) = 2;
    LODWORD(v75[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v73, v75);
    memcpy(v80, __src, sizeof(v80));
    boost::polygon::detail::extended_int<64ul>::mul(v71, v7, v7);
    boost::polygon::detail::extended_int<64ul>::mul(v72, v71, v6);
    boost::polygon::detail::extended_int<64ul>::mul(v69, v7 + 65, (v7 + 65));
    boost::polygon::detail::extended_int<64ul>::mul(v70, v69, (v6 + 65));
    boost::polygon::detail::extended_int<64ul>::add(v73, v72, v70);
    boost::polygon::detail::extended_int<64ul>::mul(v68, v7 + 195, (v7 + 195));
    boost::polygon::detail::extended_int<64ul>::add(__src, v73, v68);
    boost::polygon::detail::extended_int<64ul>::mul(&v59, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(&v61, &v59, (v6 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v67, &v61, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v75, __src, v67);
    memcpy(v81, v75, sizeof(v81));
    boost::polygon::detail::extended_int<64ul>::mul(v73, v7, (v7 + 65));
    LODWORD(v75[0]) = 2;
    LODWORD(v75[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v73, v75);
    boost::polygon::detail::extended_int<64ul>::mul(v71, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v72, v71, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v75, __src, v72);
    memcpy(v82, v75, sizeof(v82));
    boost::polygon::detail::extended_int<64ul>::mul(v75, v6, (v6 + 65));
    memcpy(v78, v75, sizeof(v78));
    v52 = COERCE_DOUBLE(boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss3<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>(v8, __dst, v76, v49, v50, v51));
    v53 = &v63;
    v54 = &v65;
  }

  else
  {
    v31 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v0, v1, v2, v3, v4, v5));
    v61 = v31;
    v62 = v32;
    __dst[0] = 1;
    __dst[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v76, v6, (v6 + 65));
    memcpy(v80, v6 + 130, sizeof(v80));
    v77[0] = 1;
    v77[64] = 1;
    v36 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval1(v33, v34, v35, v8, v7 + 130, v6 + 195);
    v38 = v37;
    v40 = v39;
    __src[0] = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v8, __dst, v76, v36, v41, v42);
    LODWORD(__src[1]) = v43;
    boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::sqrt(__src);
    v46 = v45 + v38;
    v47 = frexp(v40 * v44, &v75[1]);
    LODWORD(v75[1]) += v46;
    v59 = v47;
    v60 = v75[1];
    if (v31 >= 0.0 && v47 >= 0.0 || v31 <= 0.0 && v47 <= 0.0)
    {
      v29 = &v61;
      v30 = &v59;
      return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(v29, v30);
    }

    boost::polygon::detail::extended_int<64ul>::mul(v72, v7, v7);
    boost::polygon::detail::extended_int<64ul>::mul(v73, v72, v6);
    boost::polygon::detail::extended_int<64ul>::mul(v70, v7 + 65, (v7 + 65));
    boost::polygon::detail::extended_int<64ul>::mul(v71, v70, (v6 + 65));
    boost::polygon::detail::extended_int<64ul>::add(__src, v73, v71);
    boost::polygon::detail::extended_int<64ul>::mul(v67, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v68, v67, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::mul(v69, v68, (v6 + 130));
    boost::polygon::detail::extended_int<64ul>::dif (v75, __src, v69);
    memcpy(__dst, v75, sizeof(__dst));
    v76[0] = 1;
    v76[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v73, v7, (v7 + 65));
    LODWORD(v75[0]) = 2;
    LODWORD(v75[32]) = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v73, v75);
    boost::polygon::detail::extended_int<64ul>::mul(v71, v7 + 130, (v7 + 130));
    boost::polygon::detail::extended_int<64ul>::mul(v72, v71, (v6 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v75, __src, v72);
    memcpy(v80, v75, sizeof(v80));
    boost::polygon::detail::extended_int<64ul>::mul(v75, v6, (v6 + 65));
    memcpy(v77, v75, 0x104uLL);
    v52 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(v8, __dst, v76, v55, v56, v57));
    v53 = &v61;
    v54 = &v59;
  }

  v58 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(v53, v54));
  return frexp(v52 / v58, &v75[1]);
}

uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss3<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4, double a5, double a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2, a3, a4, a5, a6));
  v32 = v9;
  v33 = v10;
  v14 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2 + 130, a3 + 130, v11, v12, v13));
  v30 = v14;
  v31 = v15;
  if (v9 >= 0.0 && v14 >= 0.0 || v9 <= 0.0 && v14 <= 0.0)
  {
    return boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v32, &v30);
  }

  boost::polygon::detail::extended_int<64ul>::mul(v28, a2, a2);
  boost::polygon::detail::extended_int<64ul>::mul(__src, v28, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v26, a2 + 65, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v27, v26, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::add(&__dst, __src, v27);
  boost::polygon::detail::extended_int<64ul>::mul(v25, a2 + 130, (a2 + 130));
  boost::polygon::detail::extended_int<64ul>::dif (v37, &__dst, v25);
  boost::polygon::detail::extended_int<64ul>::mul(v22, a2 + 195, (a2 + 195));
  boost::polygon::detail::extended_int<64ul>::mul(v23, v22, a3);
  boost::polygon::detail::extended_int<64ul>::mul(v24, v23, (a3 + 65));
  boost::polygon::detail::extended_int<64ul>::dif (v39, v37, v24);
  v37[0] = 1;
  v37[64] = 1;
  boost::polygon::detail::extended_int<64ul>::mul(v27, a2, (a2 + 65));
  boost::polygon::detail::extended_int<64ul>::mul(v26, a2 + 130, (a2 + 195));
  boost::polygon::detail::extended_int<64ul>::dif (v28, v27, v26);
  __dst = 2;
  v36 = 1;
  boost::polygon::detail::extended_int<64ul>::mul(__src, v28, &__dst);
  memcpy(v40, __src, sizeof(v40));
  memcpy(v38, a3 + 195, sizeof(v38));
  v20 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, v39, v37, v17, v18, v19));
  v21 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v32, &v30));
  return frexp(v20 / v21, v35);
}

double boost::polygon::detail::operator+<boost::polygon::detail::robust_fpt<double>>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v10 = *a2;
  v11 = v4;
  v5 = boost::polygon::detail::robust_fpt<double>::operator+(&v11, &v10);
  v6 = a1[1];
  v8 = a2[1];
  v9 = v6;
  boost::polygon::detail::robust_fpt<double>::operator+(&v9, &v8);
  return v5;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss()
{
  v0 = MEMORY[0x28223BE20]();
  v97 = v4;
  v93 = v5;
  v95 = v6;
  v8 = v7;
  v96 = v0;
  v122 = *MEMORY[0x277D85DE8];
  v9 = *(v1 + 32);
  v10 = (v9 >> 2) & 8;
  v11 = *(v1 + (v10 ^ 8));
  v12 = *(v1 + v10);
  v13 = v11 - v12;
  if (v11 > v12)
  {
    v14 = 1;
LABEL_3:
    v116[0] = v13;
    goto LABEL_6;
  }

  if (v13 < 0)
  {
    v13 = v12 - v11;
    v14 = -1;
    goto LABEL_3;
  }

  v14 = 0;
LABEL_6:
  v117 = v14;
  v15 = *(v2 + 32);
  v16 = (v15 >> 2) & 8;
  v17 = *(v2 + (v16 ^ 8));
  v18 = *(v2 + v16);
  v19 = v17 - v18;
  if (v17 > v18)
  {
    v20 = 1;
LABEL_8:
    v118 = v19;
    goto LABEL_11;
  }

  if (v19 < 0)
  {
    v19 = v18 - v17;
    v20 = -1;
    goto LABEL_8;
  }

  v20 = 0;
LABEL_11:
  v119 = v20;
  v21 = *(v3 + 32);
  v22 = (v21 >> 2) & 8;
  v23 = *(v3 + (v22 ^ 8));
  v24 = *(v3 + v22);
  v25 = v23 - v24;
  if (v23 > v24)
  {
    v26 = 1;
LABEL_13:
    v120 = v25;
    goto LABEL_16;
  }

  if (v25 < 0)
  {
    v25 = v24 - v23;
    v26 = -1;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_16:
  v121 = v26;
  v27 = (v9 & 0x20) == 0;
  v28 = 4;
  if (v27)
  {
    v29 = 12;
  }

  else
  {
    v29 = 4;
  }

  v30 = *(v1 + v29);
  if (!v27)
  {
    v28 = 12;
  }

  v31 = *(v1 + v28);
  v32 = v30 - v31;
  if (v30 > v31)
  {
    v33 = 1;
LABEL_23:
    v110[0] = v32;
    goto LABEL_26;
  }

  if (v32 < 0)
  {
    v32 = v31 - v30;
    v33 = -1;
    goto LABEL_23;
  }

  v33 = 0;
LABEL_26:
  v111 = v33;
  v34 = (v15 & 0x20) == 0;
  v35 = 4;
  if (v34)
  {
    v36 = 12;
  }

  else
  {
    v36 = 4;
  }

  v37 = *(v2 + v36);
  if (!v34)
  {
    v35 = 12;
  }

  v38 = *(v2 + v35);
  v39 = v37 - v38;
  if (v37 > v38)
  {
    v40 = 1;
LABEL_33:
    v112 = v39;
    goto LABEL_36;
  }

  if (v39 < 0)
  {
    v39 = v38 - v37;
    v40 = -1;
    goto LABEL_33;
  }

  v40 = 0;
LABEL_36:
  v113 = v40;
  v41 = 4;
  if ((v21 & 0x20) != 0)
  {
    v42 = 4;
  }

  else
  {
    v42 = 12;
  }

  v43 = *(v3 + v42);
  if ((v21 & 0x20) != 0)
  {
    v41 = 12;
  }

  v44 = *(v3 + v41);
  v45 = v43 - v44;
  if (v43 <= v44)
  {
    if ((v45 & 0x8000000000000000) == 0)
    {
      v46 = 0;
      goto LABEL_46;
    }

    v45 = v44 - v43;
    v46 = -1;
  }

  else
  {
    v46 = 1;
  }

  v114 = v45;
LABEL_46:
  v115 = v46;
  v47 = v30 * v12 - v31 * v11;
  if (v47 < 1)
  {
    if (v47 < 0)
    {
      v104[0] = -v47;
      if (-v47 >> 32)
      {
        v48 = -2;
      }

      else
      {
        v48 = -1;
      }
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v104[0] = v47;
    if (HIDWORD(v47))
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }
  }

  v105 = v48;
  v49 = v37 * v18 - v38 * v17;
  if (v49 < 1)
  {
    if (v49 < 0)
    {
      v106 = -v49;
      if (-v49 >> 32)
      {
        v50 = -2;
      }

      else
      {
        v50 = -1;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v106 = v49;
    if (HIDWORD(v49))
    {
      v50 = 2;
    }

    else
    {
      v50 = 1;
    }
  }

  v107 = v50;
  v51 = v43 * v24 - v44 * v23;
  if (v51 < 1)
  {
    if (v51 < 0)
    {
      v108 = -v51;
      if (-v51 >> 32)
      {
        v52 = -2;
      }

      else
      {
        v52 = -1;
      }
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v108 = v51;
    if (HIDWORD(v51))
    {
      v52 = 2;
    }

    else
    {
      v52 = 1;
    }
  }

  v53 = 0;
  v109 = v52;
  do
  {
    boost::polygon::detail::extended_int<64ul>::mul(__dst, (v116 + v53), v116 + v53);
    boost::polygon::detail::extended_int<64ul>::mul(v99, (v110 + v53), v110 + v53);
    boost::polygon::detail::extended_int<64ul>::add(__src, __dst, v99);
    memcpy(&v101[v53 / 4], __src, 0x104uLL);
    v53 += 260;
  }

  while (v53 != 780);
  v54 = 0;
  v55 = -1;
  v56 = 1;
  do
  {
    v57 = v55;
    if (v54 == 130)
    {
      v58 = 0;
    }

    else
    {
      v58 = v56;
    }

    v59 = 65 * v58;
    if (!(v54 * 4))
    {
      v57 = 2;
    }

    v60 = 65 * v57;
    boost::polygon::detail::extended_int<64ul>::mul(v99, v116 + 65 * v58, v110 + 260 * v57);
    boost::polygon::detail::extended_int<64ul>::mul(v98, v116 + v60, v110 + 4 * v59);
    boost::polygon::detail::extended_int<64ul>::dif (__dst, v99, v98);
    memcpy(&__src[v54], __dst, 0x104uLL);
    ++v55;
    v54 += 65;
    ++v56;
  }

  while (v54 != 195);
  v64 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v96, __src, v101, v61, v62, v63);
  v66 = ldexp(*&v64, v65);
  if (v93)
  {
    v67 = 0;
    v68 = -1;
    v69 = 1;
    do
    {
      v70 = v68;
      if (v67 == 130)
      {
        v71 = 0;
      }

      else
      {
        v71 = v69;
      }

      v72 = 65 * v71;
      if (!(v67 * 4))
      {
        v70 = 2;
      }

      v73 = 65 * v70;
      boost::polygon::detail::extended_int<64ul>::mul(v99, v110 + 65 * v71, v104 + 260 * v70);
      boost::polygon::detail::extended_int<64ul>::mul(v98, v110 + v73, v104 + 4 * v72);
      boost::polygon::detail::extended_int<64ul>::dif (__dst, v99, v98);
      memcpy(&__src[v67], __dst, 0x104uLL);
      ++v68;
      v67 += 65;
      ++v69;
    }

    while (v67 != 195);
    v77 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v96, __src, v101, v74, v75, v76);
    *(v8 + 8) = ldexp(*&v77, v78) / v66;
  }

  if ((v95 & 1) != 0 || v97)
  {
    v94 = v8;
    v79 = 0;
    v103[64] = 0;
    v80 = -1;
    v81 = 1;
    do
    {
      v82 = v80;
      if (v79 == 130)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v84 = 65 * v83;
      if (!(v79 * 4))
      {
        v82 = 2;
      }

      v85 = 65 * v82;
      boost::polygon::detail::extended_int<64ul>::mul(v99, v116 + 65 * v83, v104 + 260 * v82);
      boost::polygon::detail::extended_int<64ul>::mul(v98, v116 + v85, v104 + 4 * v84);
      boost::polygon::detail::extended_int<64ul>::dif (__dst, v99, v98);
      memcpy(&__src[v79], __dst, 0x104uLL);
      if (v97)
      {
        boost::polygon::detail::extended_int<64ul>::mul(v99, &__src[v79], v110 + v79 * 4);
        boost::polygon::detail::extended_int<64ul>::add(__dst, v103, v99);
        memcpy(v103, __dst, sizeof(v103));
      }

      ++v80;
      v79 += 65;
      ++v81;
    }

    while (v79 != 195);
    if (v95)
    {
      v89 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v96, __src, v101, v86, v87, v88);
      v86 = ldexp(*&v89, v90) / v66;
      *v94 = v86;
    }

    if (v97)
    {
      v101[195] = 1;
      v101[259] = 1;
      v91 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(v96, __src, v101, v86, v87, v88);
      *(v94 + 16) = ldexp(*&v91, v92) / v66;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, *(a2 - 8) + 16, *v8 + 16);
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v9;
        v9 = v8;
        *v11 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a3, v10 + 16, *v8 + 16);
      }

      while (result);
      *v9 = v10;
    }
  }

  return result;
}

BOOL boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a3 + 16);
  if (v3 >= 0)
  {
    v3 = 0x8000000000000000 - v3;
  }

  if (v4 >= 0)
  {
    v4 = 0x8000000000000000 - v4;
  }

  if ((v3 - v4) <= 0x80)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 > v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = (v4 - v3) > 0x80;
  }

  if (!v6)
  {
    v7 = *(a2 + 8);
    v8 = *(a3 + 8);
    if (v7 >= 0)
    {
      v7 = 0x8000000000000000 - v7;
    }

    v9 = 0x8000000000000000 - v8;
    if (v8 < 0)
    {
      v9 = *(a3 + 8);
    }

    if (v7 - v9 <= 0x80)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (v7 > v9)
    {
      v6 = v10;
    }

    else
    {
      v6 = v9 - v7 > 0x80;
    }
  }

  return v6 == -1;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = a1[4];
  v14 = a1[5];
  if (v13 >= v14)
  {
    v16 = a1[3];
    v17 = (v13 - v16) >> 5;
    v18 = v17 + 1;
    if ((v17 + 1) >> 59)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v19 = v14 - v16;
    if (v19 >> 4 > v18)
    {
      v18 = v19 >> 4;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFE0)
    {
      v20 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>((a1 + 3), v20);
    }

    v21 = (32 * v17);
    *v21 = v12;
    v21[1] = v11;
    v21[2] = 0;
    v21[3] = 0;
    v15 = 32 * v17 + 32;
    v22 = a1[3];
    v23 = a1[4] - v22;
    v24 = 32 * v17 - v23;
    memcpy(v21 - v23, v22, v23);
    v25 = a1[3];
    a1[3] = v24;
    a1[4] = v15;
    a1[5] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v13 = v12;
    v13[1] = v11;
    v15 = (v13 + 4);
    v13[2] = 0;
    v13[3] = 0;
  }

  a1[4] = v15;
  v26 = v15 - 32;
  a5[1] = v26;
  a6[1] = v26;
  v27 = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3);
  v34 = 0u;
  v35 = 0u;
  if (boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    v28 = v27 | 2;
  }

  else
  {
    v28 = v27;
  }

  v36 = 0;
  v37 = v28;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v34);
  v29 = a1[7];
  *(v29 - 48) = *a1 + 24 * *(a2 + 16);
  v29 -= 48;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = v28;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v34);
  v30 = a1[7];
  *(v30 - 6) = *a1 + 24 * *(a3 + 16);
  v30 -= 6;
  *(v29 + 16) = v30;
  v30[1] = v26;
  v30[2] = v29;
  a5[4] = v29;
  *(v29 + 24) = a5;
  v31 = a5[2];
  *(v31 + 24) = a6;
  a6[4] = v31;
  v32 = a6[2];
  *(v32 + 24) = v30;
  v30[4] = v32;
  return v29;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::event_comparison_predicate<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::operator()(a2, a1[v6 + 2] + 16, a1[v6 + 1] + 16);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

BOOL boost::polygon::voronoi_diagram_traits<double>::vertex_equality_predicate_type::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v3 = 0x8000000000000000 - *a2;
  }

  if (v4 >= 0)
  {
    v4 = 0x8000000000000000 - v4;
  }

  if (v3 - v4 <= 0x80)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 > v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 - v3 > 0x80;
  }

  if (v6)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a3[1];
  if (v8 >= 0)
  {
    v8 = 0x8000000000000000 - v8;
  }

  v10 = 0x8000000000000000 - v9;
  if (v9 < 0)
  {
    v10 = a3[1];
  }

  if (v8 - v10 <= 0x80)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v8 > v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10 - v8 > 0x80;
  }

  return !v12;
}

void boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::remove_edge(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v3 = *(v2[4] + 16);
  if (v3 != v2)
  {
    v4 = a2[1];
    v5 = *(v2[4] + 16);
    do
    {
      v5[1] = v4;
      v5 = *(v5[4] + 16);
    }

    while (v5 != v2);
  }

  v6 = v2[3];
  v7 = *(v2[2] + 24);
  v8 = *(*(a2[4] + 16) + 16);
  *(v8 + 24) = v7;
  *(v7 + 32) = v8;
  v9 = v3[2];
  *(v6 + 32) = v9;
  *(v9 + 24) = v6;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::~voronoi_builder(uint64_t a1)
{
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(a1 + 128, *(a1 + 136));
  std::__list_imp<EQKit::StemStretch::FeatureRange::Span>::clear((a1 + 104));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::vector<boost::polygon::segment_data<double>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<boost::polygon::segment_data<double>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<boost::polygon::segment_data<double>>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<boost::polygon::segment_data<double>>::__emplace_back_slow_path<boost::polygon::segment_data<double> const&>(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *v8 = *a2;
  *(v8 + 8) = a2[1];
  *(v8 + 16) = a2[2];
  *(v8 + 24) = a2[3];
  v13 = 32 * v2 + 32;
  std::vector<boost::polygon::segment_data<double>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26C8834C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<boost::polygon::segment_data<double>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *v5 = *v2;
      *(v5 + 8) = v2[1];
      *(v5 + 16) = v2[2];
      *(v5 + 24) = v2[3];
      v2 += 4;
      v5 += 32;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<std::vector<boost::polygon::segment_data<double>>>::__construct_one_at_end[abi:ne200100]<std::vector<boost::polygon::segment_data<double>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 5);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<boost::polygon::segment_data<double>>>::__emplace_back_slow_path<std::vector<boost::polygon::segment_data<double>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<boost::polygon::segment_data<double>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 5);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<boost::polygon::segment_data<double>>>::~__split_buffer(&v14);
  return v8;
}

void sub_26C883700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<boost::polygon::segment_data<double>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<boost::polygon::segment_data<double>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<boost::polygon::segment_data<double>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<boost::polygon::segment_data<double>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<boost::polygon::segment_data<double>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

double std::vector<boost::polygon::segment_data<double>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = 0uLL;
    v7 = *(a1 + 8);
    do
    {
      *v7 = 0uLL;
      *(v7 + 16) = 0uLL;
      *v7 = *v5;
      *(v7 + 8) = v5[1];
      *(v7 + 16) = v5[2];
      *(v7 + 24) = v5[3];
      v5 += 4;
      v7 += 32;
    }

    while (v5 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = a4 - v4;
    v9 = (v4 - 16);
    v10 = (v9 + a2 - a4);
    do
    {
      *(v9 - 2) = *(v10 - 2);
      *(v9 - 1) = *(v10 - 1);
      *v9 = *v10;
      *&v6 = v10[1];
      v9[1] = v6;
      v10 -= 4;
      v9 -= 4;
      v8 += 32;
    }

    while (v8);
  }

  return *&v6;
}

double std::__split_buffer<boost::polygon::segment_data<double>>::emplace_back<boost::polygon::segment_data<double> const&>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v7 = v2 - *a1;
      v6 = v7 == 0;
      v8 = v7 >> 4;
      if (v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(a1[4], v9);
    }

    v5 = &v4[-4 * ((((v4 - *a1) >> 5) + 1 + ((((v4 - *a1) >> 5) + 1) >> 63)) >> 1)];
    v3 = v5;
    if (v4 != v2)
    {
      v3 = &v4[-4 * ((((v4 - *a1) >> 5) + 1 + ((((v4 - *a1) >> 5) + 1) >> 63)) >> 1)];
      do
      {
        *v3 = *v4;
        v3[1] = v4[1];
        v3[2] = v4[2];
        v3[3] = v4[3];
        v4 += 4;
        v3 += 4;
      }

      while (v4 != v2);
    }

    a1[1] = v5;
    a1[2] = v3;
  }

  *v3 = 0u;
  *(v3 + 1) = 0u;
  *v3 = *a2;
  v3[1] = *(a2 + 8);
  v3[2] = *(a2 + 16);
  result = *(a2 + 24);
  *(v3 + 3) = result;
  a1[2] += 32;
  return result;
}

uint64_t std::vector<boost::polygon::segment_data<double>>::__swap_out_circular_buffer(uint64_t a1, void *a2, char *a3)
{
  v4 = *(a1 + 8);
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v9 = a2[1];
    v8 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      *v6 = 0uLL;
      *(v6 + 16) = 0uLL;
      *v6 = *v7;
      *(v6 + 8) = *(v7 + 1);
      *(v6 + 16) = *(v7 + 2);
      *(v6 + 24) = *(v7 + 3);
      v7 += 32;
      v6 += 32;
    }

    while (v7 != v4);
    v8 = *(a1 + 8);
    v9 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v8 - a3;
  v10 = *a1;
  v11 = v9 + *a1 - a3;
  if (*a1 != a3)
  {
    v12 = v11;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *v12 = *v10;
      *(v12 + 8) = *(v10 + 1);
      *(v12 + 16) = *(v10 + 2);
      *(v12 + 24) = *(v10 + 3);
      v10 += 32;
      v12 += 32;
    }

    while (v10 != a3);
    v10 = *a1;
  }

  a2[1] = v11;
  *a1 = v11;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

id PerformXPathQuery(xmlDoc *a1, void *a2)
{
  v3 = a2;
  v4 = xmlXPathNewContext(a1);
  if (!v4)
  {
    NSLog(@"Unable to create XPath context.");
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  xmlXPathRegisterNs(v4, "svg", "http://www.w3.org/2000/svg");
  v6 = MEMORY[0x26D6AA990]([v3 cStringUsingEncoding:4], v5);
  if (!v6)
  {
    NSLog(@"Unable to evaluate XPath.");
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(v6 + 8);
  if (!v8)
  {
    NSLog(@"Nodes was nil.");
    goto LABEL_13;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  if (*v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = DictionaryForNode(*(*(v8 + 1) + 8 * v10), 0);
      if (v11)
      {
        [v9 addObject:v11];
      }

      ++v10;
    }

    while (v10 < *v8);
  }

  xmlXPathFreeObject(v7);
  xmlXPathFreeContext(v5);
LABEL_14:

  return v9;
}

id DictionaryForNode(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = a1[2];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:4];
    [v4 setObject:v6 forKey:@"nodeName"];
  }

  if ((a1[10] + 1) >= 2)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithCString:? encoding:?];
    v21 = [v4 objectForKey:@"nodeName"];
    v22 = [v21 isEqual:@"text"];

    if (v3 && v22)
    {
      v23 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v24 = [v20 stringByTrimmingCharactersInSet:v23];

      v25 = [v3 objectForKey:@"nodeContent"];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 stringByAppendingString:v24];
      }

      else
      {
        v27 = v24;
      }

      v28 = v27;
      [v3 setObject:v27 forKey:@"nodeContent"];

      v18 = 0;
      goto LABEL_22;
    }

    [v4 setObject:v20 forKey:@"nodeContent"];
  }

  v7 = a1[11];
  if (v7)
  {
    v29 = v3;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    do
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v7[2] encoding:4];
      v11 = v7[3];
      if (v11)
      {
        v12 = DictionaryForNode(v11, v9);
      }

      if (v10)
      {
        v13 = [v9 objectForKey:@"nodeContent"];

        if (v13)
        {
          v14 = [v9 objectForKey:@"nodeContent"];
          [v8 setObject:v14 forKey:v10];
        }
      }

      v7 = v7[6];
    }

    while (v7);
    [v4 setObject:v8 forKey:@"nodeAttributes"];

    v3 = v29;
  }

  v15 = a1[3];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEB18] array];
    do
    {
      v17 = DictionaryForNode(v15, v4);
      if (v17)
      {
        [v16 addObject:v17];
      }

      v15 = *(v15 + 48);
    }

    while (v15);
    if ([v16 count])
    {
      [v4 setObject:v16 forKey:@"nodeChildArray"];
    }
  }

  v18 = v4;
LABEL_22:

  return v18;
}

id PerformXMLXPathQuery(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 >> 31)
  {
    PerformXMLXPathQuery_cold_1();
  }

  else
  {
    Memory = xmlReadMemory([v3 bytes], v5, "", 0, 1);
    if (Memory)
    {
      v7 = Memory;
      v8 = PerformXPathQuery(Memory, v4);
      xmlFreeDoc(v7);
      goto LABEL_6;
    }

    NSLog(@"Unable to parse.");
  }

  v8 = 0;
LABEL_6:

  return v8;
}

void PerformXMLXPathQuery_cold_1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray * _Nullable PerformXMLXPathQuery(NSData * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
  [v0 handleFailureInFunction:v1 file:v2 lineNumber:689 description:@"Out-of-bounds type assignment failed"];

  v5 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray * _Nullable PerformXMLXPathQuery(NSData * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStrokeLoader.m"];
  [v5 handleFailureInFunction:v3 file:v4 lineNumber:690 description:@"Document too long to load with xmlReadMemory."];
}

uint64_t TSDGPUDataBufferDataTypeSize(uint64_t a1)
{
  if (a1 > 2)
  {
    v1 = 2;
    v2 = 2;
    v4 = 4;
    if (a1 != 5)
    {
      v4 = 0;
    }

    if (a1 != 4)
    {
      v2 = v4;
    }

    v3 = a1 == 3;
  }

  else
  {
    if (!a1)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"size_t TSDGPUDataBufferDataTypeSize(TSDGPUDataBufferDataType)"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:42 description:@"Unknown TSDGPUDataBufferDataType!"];

      return 0;
    }

    v1 = 1;
    v2 = a1 == 2;
    v3 = a1 == 1;
  }

  if (v3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

float TSDGPUDataBufferMetalfloatWithDataType(__int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = -1.0;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"float TSDGPUDataBufferMetalfloatWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL)"}];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
        [v7 handleFailureInFunction:v8 file:v9 lineNumber:71 description:@"Unknown data type!"];

        return v4;
      case 1:
        LOBYTE(a4) = *a1;
        v5 = LODWORD(a4);
        v6 = 1123942400;
        break;
      case 2:
        LOBYTE(a4) = *a1;
        v5 = LODWORD(a4);
        v6 = 1132396544;
        break;
      default:
        return v4;
    }

    v10 = *&v6;
    goto LABEL_15;
  }

  switch(a2)
  {
    case 3:
      v5 = *a1;
      v10 = 32767.0;
      goto LABEL_15;
    case 4:
      LOWORD(a4) = *a1;
      v5 = LODWORD(a4);
      v10 = 65535.0;
LABEL_15:
      v11 = v5 / v10;
      if (a3)
      {
        return v11;
      }

      else
      {
        return v5;
      }

    case 5:
      return *a1;
  }

  return v4;
}

void TSDGPUDataBufferSetMetalfloatWithDataType(float *a1, uint64_t a2, int a3, float a4)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = 32767.0;
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          *a1 = a4;
        }

        return;
      }

      v8 = 65535.0;
    }

    v9 = a4 * v8;
    if (a3)
    {
      a4 = v9;
    }

    *a1 = llroundf(a4);
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v5 = 127.0;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v5 = 255.0;
    }

    if (a3)
    {
      a4 = a4 * v5;
    }

    *a1 = llroundf(a4);
  }

  else
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDGPUDataBufferSetMetalfloatWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL, float)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v10 handleFailureInFunction:v6 file:v7 lineNumber:99 description:@"Unknown data type!"];
  }
}

float TSDGPUDataBufferMetalPoint2DWithDataType(__int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = 0.0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a3)
        {
          return *a1 / 32767.0;
        }

        else
        {
          return *a1;
        }

      case 4:
        LOWORD(a4) = *a1;
        v10 = LODWORD(a4);
        if (a3)
        {
          return v10 / 65535.0;
        }

        else
        {
          return v10;
        }

      case 5:
        return *a1;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDMetalPoint2D TSDGPUDataBufferMetalPoint2DWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL)"}];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
        [v7 handleFailureInFunction:v8 file:v9 lineNumber:123 description:@"Unknown data type!"];

        return v4;
      case 1:
        LOBYTE(a4) = *a1;
        v5 = LODWORD(a4);
        v6 = 127.0;
        break;
      case 2:
        LOBYTE(a4) = *a1;
        v5 = LODWORD(a4);
        v6 = 255.0;
        break;
      default:
        return v4;
    }

    if (a3)
    {
      return v5 / v6;
    }

    else
    {
      return v5;
    }
  }

  return v4;
}

void TSDGPUDataBufferSetMetalPoint2DWithDataType(float *a1, uint64_t a2, int a3, float a4, float a5)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3)
      {
        a4 = a4 * 32767.0;
      }

      v9 = llroundf(a4);
      v10 = a5 * 32767.0;
      if (!a3)
      {
        v10 = a5;
      }

      v11 = v9 | (llroundf(v10) << 16);
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          *a1 = a4;
          a1[1] = a5;
        }

        return;
      }

      if (a3)
      {
        a4 = a4 * 65535.0;
      }

      v15 = llroundf(a4);
      v16 = a5 * 65535.0;
      if (!a3)
      {
        v16 = a5;
      }

      v11 = v15 | (llroundf(v16) << 16);
    }

    *a1 = v11;
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 127.0;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v6 = 255.0;
    }

    v12 = v6;
    if (a3)
    {
      a4 = a4 * v6;
    }

    v13 = llroundf(a4);
    v14 = a5 * v12;
    if (!a3)
    {
      v14 = a5;
    }

    *a1 = v13 | (llroundf(v14) << 8);
  }

  else
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDGPUDataBufferSetMetalPoint2DWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL, TSDMetalPoint2D)"}];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v17 handleFailureInFunction:v7 file:v8 lineNumber:151 description:@"Unknown data type!"];
  }
}

float TSDGPUDataBufferMetalPoint3DWithDataType(__int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = 0.0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a3)
        {
          return *a1 / 32767.0;
        }

        else
        {
          return *a1;
        }

      case 4:
        LOWORD(a4) = *a1;
        v10 = LODWORD(a4);
        if (a3)
        {
          return v10 / 65535.0;
        }

        else
        {
          return v10;
        }

      case 5:
        return *a1;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDMetalPoint3D TSDGPUDataBufferMetalPoint3DWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL)"}];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
        [v7 handleFailureInFunction:v8 file:v9 lineNumber:175 description:@"Unknown data type!"];

        return v4;
      case 1:
        LOBYTE(a4) = *a1;
        v5 = LODWORD(a4);
        v6 = 127.0;
        break;
      case 2:
        LOBYTE(a4) = *a1;
        v5 = LODWORD(a4);
        v6 = 255.0;
        break;
      default:
        return v4;
    }

    if (a3)
    {
      return v5 / v6;
    }

    else
    {
      return v5;
    }
  }

  return v4;
}

void TSDGPUDataBufferSetMetalPoint3DWithDataType(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3)
      {
        a4 = a4 * 32767.0;
      }

      v10 = llroundf(a4);
      v11 = a5 * 32767.0;
      if (!a3)
      {
        v11 = a5;
      }

      v12 = llroundf(v11);
      v13 = a6 * 32767.0;
      if (!a3)
      {
        v13 = a6;
      }

      v14 = llroundf(v13);
      v15 = v10 | (v12 << 16);
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          *a1 = a4;
          *(a1 + 4) = a5;
          *(a1 + 8) = a6;
        }

        return;
      }

      if (a3)
      {
        a4 = a4 * 65535.0;
      }

      v21 = llroundf(a4);
      v22 = a5 * 65535.0;
      if (!a3)
      {
        v22 = a5;
      }

      v23 = llroundf(v22);
      v24 = a6 * 65535.0;
      if (!a3)
      {
        v24 = a6;
      }

      v14 = llroundf(v24);
      v15 = v21 | (v23 << 16);
    }

    *a1 = v15;
    *(a1 + 4) = v14;
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v7 = 127.0;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v7 = 255.0;
    }

    v16 = v7;
    if (a3)
    {
      a4 = a4 * v7;
    }

    v17 = llroundf(a4);
    v18 = a5 * v16;
    if (!a3)
    {
      v18 = a5;
    }

    v19 = llroundf(v18);
    v20 = a6 * v16;
    if (!a3)
    {
      v20 = a6;
    }

    *(a1 + 2) = llroundf(v20);
    *a1 = v17 | (v19 << 8);
  }

  else
  {
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDGPUDataBufferSetMetalPoint3DWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL, TSDMetalPoint3D)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v25 handleFailureInFunction:v8 file:v9 lineNumber:203 description:@"Unknown data type!"];
  }
}

int8x16_t TSDGPUDataBufferMetalPoint4DWithDataType(int16x4_t *a1, uint64_t a2, unsigned int a3)
{
  result = TSDMetalPoint4DZero;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v6 = [MEMORY[0x277D6C290] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDMetalPoint4D TSDGPUDataBufferMetalPoint4DWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL)"}];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
        [v6 handleFailureInFunction:v7 file:v8 lineNumber:227 description:@"Unknown data type!"];

        return TSDMetalPoint4DZero;
      case 1:
        result.i32[0] = a1->i32[0];
        v4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*result.i8)));
        v5 = 1123942400;
        break;
      case 2:
        result.i32[0] = a1->i32[0];
        v4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*result.i8)));
        v5 = 1132396544;
        break;
      default:
        return result;
    }

    return vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a3)), 0x1FuLL)), vdivq_f32(v4, vdupq_n_s32(v5)), v4);
  }

  switch(a2)
  {
    case 3:
      v4 = vcvtq_f32_s32(vmovl_s16(*a1));
      v5 = 1191181824;
      return vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a3)), 0x1FuLL)), vdivq_f32(v4, vdupq_n_s32(v5)), v4);
    case 4:
      v4 = vcvtq_f32_u32(vmovl_u16(*a1));
      v5 = 1199570688;
      return vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a3)), 0x1FuLL)), vdivq_f32(v4, vdupq_n_s32(v5)), v4);
    case 5:
      result = *a1->i8;
      break;
  }

  return result;
}

void TSDGPUDataBufferSetMetalPoint4DWithDataType(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6, float a7)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a3)
        {
          a4 = a4 * 32767.0;
        }

        v14 = llroundf(a4);
        v15 = a5 * 32767.0;
        if (!a3)
        {
          v15 = a5;
        }

        v16 = llroundf(v15);
        v17 = a6 * 32767.0;
        if (!a3)
        {
          v17 = a6;
        }

        v18 = llroundf(v17);
        v19 = a7 * 32767.0;
        if (!a3)
        {
          v19 = a7;
        }

        LODWORD(v9) = llroundf(v19);
        *a1 = (v18 << 32) | (v9 << 48) | (v16 << 16) | v14;
        break;
      case 4:
        v27 = &p_configureOrientationAndSizeFromImageSource_andImage____orientationMapping[4];
        if (a3)
        {
          a4 = a4 * 65535.0;
        }

        LODWORD(v27) = llroundf(a4);
        v28 = a5 * 65535.0;
        if (!a3)
        {
          v28 = a5;
        }

        LODWORD(v7) = llroundf(v28);
        v29 = a6 * 65535.0;
        if (!a3)
        {
          v29 = a6;
        }

        LODWORD(v8) = llroundf(v29);
        v30 = a7 * 65535.0;
        if (!a3)
        {
          v30 = a7;
        }

        LODWORD(v9) = llroundf(v30);
        *a1 = (v8 << 32) | (v9 << 48) | (v7 << 16) | v27;
        break;
      case 5:
        *a1 = a4;
        *(a1 + 4) = a5;
        *(a1 + 8) = a6;
        *(a1 + 12) = a7;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 127.0;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v11 = 255.0;
    }

    v20 = v11;
    if (a3)
    {
      a4 = a4 * v11;
    }

    v21 = llroundf(a4);
    v22 = a5 * v20;
    if (!a3)
    {
      v22 = a5;
    }

    v23 = llroundf(v22);
    v24 = a6 * v20;
    if (!a3)
    {
      v24 = a6;
    }

    v25 = llroundf(v24);
    v26 = a7 * v20;
    if (!a3)
    {
      v26 = a7;
    }

    *a1 = (v25 << 16) | (llroundf(v26) << 24) | (v23 << 8) | v21;
  }

  else
  {
    v31 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDGPUDataBufferSetMetalPoint4DWithDataType(uint8_t *, TSDGPUDataBufferDataType, BOOL, TSDMetalPoint4D)"}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v31 handleFailureInFunction:v12 file:v13 lineNumber:255 description:@"Unknown data type!"];
  }
}

uint64_t TSDGLGetRenderQueue()
{
  if (TSDGLGetRenderQueue_pred != -1)
  {
    TSDGLGetRenderQueue_cold_1();
  }

  return TSDGLGetRenderQueue_renderQueue;
}

void __TSDGLGetRenderQueue_block_invoke()
{
  v0 = dispatch_queue_create("TSDGLRenderQueue", 0);
  TSDGLGetRenderQueue_renderQueue = v0;
  if (v0)
  {
    v1 = TSDGLRenderQueueContext;
    v2 = TSDGLRenderQueueContext;

    dispatch_queue_set_specific(v0, v1, v2, 0);
  }
}

void TSDTransform3DMakeProjection(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  if (a2 <= 0.0)
  {
    v10 = MEMORY[0x277CD9DE8];
    v11 = *(MEMORY[0x277CD9DE8] + 80);
    *(a1 + 64) = *(MEMORY[0x277CD9DE8] + 64);
    *(a1 + 80) = v11;
    v12 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v12;
    v13 = v10[1];
    *a1 = *v10;
    *(a1 + 16) = v13;
    v14 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v14;
  }

  else
  {
    v9 = 1.0 / tan(a2 * 0.5);
    *a1 = v9 / a3;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = v9;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = a5 / (a4 - a5);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0xBFF0000000000000;
    *(a1 + 112) = a4 * a5 / (a4 - a5);
    *(a1 + 120) = 0;
  }
}

CATransform3D *TSDTransform3DMakeProjectionWithSlideSubrect@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, double a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>, double a10, double a11, double a12)
{
  v17 = TSDCenterOfRect(a2, a3, a4, a5);
  v18 = TSDSubtractPoints(a6, a7, v17);
  v33 = v19;
  v34 = v18;
  v37.origin.x = TSDMultiplyRectScalar(v18, v19, a8, a9, a10 / a12);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxY = CGRectGetMaxY(v40);
  *a1 = (a10 + a10) / (MaxX - MinX);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = (a10 + a10) / (MaxY - MinY);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = (MinX + MaxX) / (MaxX - MinX);
  *(a1 + 72) = (MinY + MaxY) / (MaxY - MinY);
  *(a1 + 80) = (a10 + a11) / (a10 - a11);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 112) = (a11 + a11) * a10 / (a10 - a11);
  *(a1 + 120) = 0;
  CATransform3DMakeTranslation(&a, v34, v33, 0.0);
  v28 = *(a1 + 80);
  *&b.m31 = *(a1 + 64);
  *&b.m33 = v28;
  v29 = *(a1 + 112);
  *&b.m41 = *(a1 + 96);
  *&b.m43 = v29;
  v30 = *(a1 + 16);
  *&b.m11 = *a1;
  *&b.m13 = v30;
  v31 = *(a1 + 48);
  *&b.m21 = *(a1 + 32);
  *&b.m23 = v31;
  return CATransform3DConcat(a1, &a, &b);
}

double TSDTransform3DMakeOrtho@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = 2.0 / (a3 - a2);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2.0 / (a5 - a4);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = -2.0 / (a7 - a6);
  *(a1 + 88) = 0;
  *(a1 + 96) = -(a2 + a3) / (a3 - a2);
  *(a1 + 104) = -(a4 + a5) / (a5 - a4);
  result = -(a6 + a7) / (a7 - a6);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

uint64_t p_URLFromPathname(void *a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 stringByDeletingPathExtension];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  if ([v2 fileExistsAtPath:v4] && objc_msgSend(v2, "fileExistsAtPath:", v4))
  {
    v5 = 1;
    do
    {
      v6 = (v5 + 1);
      v4 = [objc_msgSend(v3 stringByAppendingFormat:@"-%d", v5), "stringByAppendingPathExtension:", @"png"];
      v7 = [v2 fileExistsAtPath:v4];
      v5 = v6;
    }

    while ((v7 & 1) != 0);
  }

  v8 = MEMORY[0x277CBEBC0];

  return [v8 fileURLWithPath:v4 isDirectory:0];
}

uint64_t p_writeDataToPNG(const void *a1, uint64_t a2, CGFloat *a3, size_t a4, void *a5)
{
  if (!a1)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *p_writeDataToPNG(uint8_t *, int32_t, int32_t, size_t, NSString *)"}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUUtility.m"];
    v11 = @"buffer is NULL!";
    v12 = v8;
    v13 = v9;
    v14 = 208;
LABEL_7:
    [v12 handleFailureInFunction:v13 file:v10 lineNumber:v14 description:{v11, decode}];
    return 0;
  }

  if ((a2 - 32769) <= 0xFFFF7FFF)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *p_writeDataToPNG(uint8_t *, int32_t, int32_t, size_t, NSString *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUUtility.m"), 212, @"width is invalid: %d", a2}];
    return 0;
  }

  if ((a3 - 32769) <= 0xFFFF7FFF)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *p_writeDataToPNG(uint8_t *, int32_t, int32_t, size_t, NSString *)"}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUUtility.m"];
    v11 = @"height is invalid: %d";
    decode = a3;
    v12 = v16;
    v13 = v17;
    v14 = 216;
    goto LABEL_7;
  }

  v21 = p_URLFromPathname(a5);
  v22 = CGImageDestinationCreateWithURL(v21, [*MEMORY[0x277CE1E10] identifier], 1uLL, 0);
  if (v22)
  {
    v23 = v22;
    v24 = a2;
    v25 = ((a4 >> 1) & 0x1FFFFFFFFFFFFFFFLL) * a2;
    v26 = a3;
    v27 = CGDataProviderCreateWithData(0, a1, v25 * a3, 0);
    if (v27)
    {
      v28 = v27;
      v29 = TSUDeviceRGBColorSpace();
      v30 = CGImageCreate(v24, v26, a4, 4 * a4, v25, v29, 1u, v28, 0, 0, kCGRenderingIntentDefault);
      if (v30)
      {
        v31 = v30;
        CGImageDestinationAddImage(v23, v30, 0);
        CGImageDestinationFinalize(v23);
        CGImageRelease(v31);
      }

      else
      {
        v36 = [MEMORY[0x277D6C290] currentHandler];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *p_writeDataToPNG(uint8_t *, int32_t, int32_t, size_t, NSString *)"}];
        [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUUtility.m"), 244, @"Couldn't create CGImage!"}];
        v21 = 0;
      }

      CGDataProviderRelease(v28);
    }

    else
    {
      v34 = [MEMORY[0x277D6C290] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *p_writeDataToPNG(uint8_t *, int32_t, int32_t, size_t, NSString *)"}];
      [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUUtility.m"), 234, @"Couldn't create CGDataProvider!"}];
      v21 = 0;
    }

    CFRelease(v23);
  }

  else
  {
    v32 = [MEMORY[0x277D6C290] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *p_writeDataToPNG(uint8_t *, int32_t, int32_t, size_t, NSString *)"}];
    [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUUtility.m"), 223, @"Couldn't create CGImageDestination for URL %@!", v21}];
    v21 = 0;
  }

  return [(__CFURL *)v21 path];
}

__CFString *NSStringFromTSDGestureState(unsigned int a1)
{
  if (a1 < 5)
  {
    return off_279D48F98[a1];
  }

  if (a1 == 5)
  {
    return @"TSDGestureStateFailed";
  }

  return @"#Unknown TSDGestureState#";
}

void sub_26C8982F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSDBrushStrokeDirectSurfaceRenderingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::vector<TSDBrushVertexData>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSDBrushVertexData>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_26C89BC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<CGPoint>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void __destroy_helper_block_ea8_56c60_ZTSNSt3__16vectorI18TSDBrushVertexDataNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void sub_26C89E6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C89EA10(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

void sub_26C89EBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_26C89EDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_26C89EF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_26C89F154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSDBrushVertexData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<TSDBrushVertexData>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TSDBrushVertexData>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<TSDBrushVertexData>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TSDBrushVertexData>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 5);
  }

  return result;
}

uint64_t TSDMixingTypeBestFromMixingTypes(uint64_t result, uint64_t a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

__CFString *TSDMixingTypeAsString(unint64_t a1)
{
  if (a1 < 6)
  {
    return off_279D49150[a1];
  }

  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSDMixingTypeAsString(TSDMixingType)"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 67, @"Unknown mixing type (%ld)!", a1}];
  return 0;
}

uint64_t TSDMixingTypeWithPossiblyNilObjects(unint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 5;
  }

  if (!a1 || [MEMORY[0x277CBEB68] null] == a1)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v7 = [objc_opt_class() canMixWithNilObjects];
    }

    else
    {
      v7 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || v7)
    {
      v4 = a2;
      v5 = a1;
      goto LABEL_17;
    }

    return 1;
  }

  if (!a2 || [MEMORY[0x277CBEB68] null] == a2)
  {
    objc_opt_class();
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_opt_class() canMixWithNilObjects])
    {
      return 1;
    }
  }

  v4 = a1;
  v5 = a2;
LABEL_17:

  return [v4 mixingTypeWithObject:v5];
}

uint64_t TSDMixedObjectWithPossiblyNilObjects(void *a1, void *a2, double a3)
{
  if (!a1 || [MEMORY[0x277CBEB68] null] == a1)
  {
    v7 = 1.0 - a3;
    v6 = a2;
    v8 = a1;
  }

  else
  {
    v6 = a1;
    v7 = a3;
    v8 = a2;
  }

  return [v6 mixedObjectWithFraction:v8 ofObject:v7];
}

uint64_t TSDMixingTypeWithObjects(unint64_t a1, unint64_t a2)
{
  v3 = (a1 | a2) == 0;
  result = 5;
  if (a1 != a2 && !v3)
  {
    if ([a1 isEqual:a2])
    {
      return 5;
    }

    if (!a1 || [MEMORY[0x277CBEB68] null] == a1)
    {
      if ([a2 conformsToProtocol:&unk_287E2BA38] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
      {
        v6 = [objc_opt_class() canMixWithNilObjects];
      }

      else
      {
        v6 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && !v6)
      {
        return 1;
      }
    }

    else
    {
      if (!a2 || [MEMORY[0x277CBEB68] null] == a2)
      {
        if (![a1 conformsToProtocol:&unk_287E2BA38])
        {
          return 1;
        }

        objc_opt_class();
        if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_opt_class() canMixWithNilObjects])
        {
          return 1;
        }

        goto LABEL_27;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_respondsToSelector() & 1) == 0 || (v11 = [objc_opt_class() mixableObjectClasses], (objc_msgSend(v11, "containsObject:", objc_opt_class()) & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              return 1;
            }

            v12 = [objc_opt_class() mixableObjectClasses];
            if (![v12 containsObject:objc_opt_class()])
            {
              return 1;
            }
          }
        }
      }

      if (![a1 conformsToProtocol:&unk_287E2BA38] || !objc_msgSend(a2, "conformsToProtocol:", &unk_287E2BA38))
      {
        return 2;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_27:
        v7 = a1;
        v8 = a2;
LABEL_22:
        result = [v7 mixingTypeWithObject:v8];
        if (!result)
        {
          v9 = [MEMORY[0x277D6C290] currentHandler];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDMixingType TSDMixingTypeWithObjects(NSObject<TSDMixing> *, NSObject<TSDMixing> *)"}];
          [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 168, @"TSDMixingType is Undefined!"}];
          return 0;
        }

        return result;
      }
    }

    v7 = a2;
    v8 = a1;
    goto LABEL_22;
  }

  return result;
}

uint64_t TSDMixingTypeWithObject(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (a1 | a2) == 0;
  result = 5;
  if (a1 == a2 || v4)
  {
    return result;
  }

  if ([a1 isEqual:a2])
  {
    return 5;
  }

  if (!a1 || [MEMORY[0x277CBEB68] null] == a1)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
LABEL_16:
      if ([objc_opt_class() canMixWithNilObjects])
      {
        return 4;
      }
    }

    return 1;
  }

  if (!a2 || [MEMORY[0x277CBEB68] null] == a2)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_16;
    }

    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_respondsToSelector() & 1) == 0 || (v10 = [objc_opt_class() mixableObjectClasses], (objc_msgSend(v10, "containsObject:", objc_opt_class()) & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          return 1;
        }

        v11 = [objc_opt_class() mixableObjectClasses];
        if (![v11 containsObject:objc_opt_class()])
        {
          return 1;
        }
      }
    }
  }

  result = (*(a3 + 16))(a3);
  if (!result)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDMixingType TSDMixingTypeWithObject(NSObject<TSDMixing> *, NSObject<TSDMixing> *, TSDMixingType (^)(void))"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 222, @"TSDMixingType is Undefined!"}];
    return 0;
  }

  return result;
}

uint64_t TSDMixingMixedObjectWithFraction(void *a1, void *a2, uint64_t a3)
{
  if ([a1 mixingTypeWithObject:a2] == 1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSDMixingMixedObjectWithFraction(NSObject<TSDMixing> *, NSObject<TSDMixing> *, CGFloat, id (^)(void))"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 230, @"Cannot mix with object!"}];
  }

  if (a1 == a2 || ([a1 isEqual:a2] & 1) != 0)
  {
    return a1;
  }

  v9 = *(a3 + 16);

  return v9(a3);
}

uint64_t TSDMixingMixedObjectWithFractionEx(void *a1, unint64_t a2, double a3)
{
  if (TSDMixingTypeWithObjects(a1, a2) == 1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id TSDMixingMixedObjectWithFractionEx(NSObject<TSDMixing> *, NSObject<TSDMixing> *, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 243, @"Cannot mix with object!"}];
  }

  if (a1 == a2 || ([a1 isEqual:a2] & 1) != 0)
  {
    return a1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = a1;
    v10 = a3;
    v11 = a2;
  }

  else
  {
    v10 = 1.0 - a3;
    v9 = a2;
    v11 = a1;
  }

  return [v9 mixedObjectWithFraction:v11 ofObject:v10];
}

uint64_t TSKPlayerRepeatModeForMovieLoopOption(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

id universalReset(void *a1, const char *a2)
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  Class = object_getClass(a1);
  if ([NSStringFromClass(Class) hasPrefix:@"__TSDResetNotifying"])
  {
    v7.receiver = a1;
    v5 = object_getClass(a1);
    v7.super_class = class_getSuperclass(v5);
    return objc_msgSendSuper(&v7, a2);
  }

  else
  {

    return [a1 reset];
  }
}

void sub_26C8AC928(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_26C8B2B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double calculateReflectionShadingValues(double *a1, double *a2, uint64_t a3)
{
  v4 = 1.0 - *a2;
  v5 = a1[1];
  result = *a1 * powf(v4, v5);
  *a3 = 0;
  *(a3 + 8) = result;
  return result;
}

void sub_26C8CC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSDCapabilitiesDeviceTypeFromHWModelString(void *a1)
{
  v1 = [objc_msgSend(a1 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "decimalDigitCharacterSet")), "firstObject"}];
  result = [v1 length];
  if (result)
  {
    if ([v1 isEqualToString:@"iPad"])
    {
      return 1;
    }

    else if ([v1 isEqualToString:@"iPhone"])
    {
      return 2;
    }

    else if ([v1 isEqualToString:@"iPod"])
    {
      return 3;
    }

    else if ([v1 isEqualToString:@"iMac"])
    {
      return 4;
    }

    else if ([v1 isEqualToString:@"MacBook"])
    {
      return 5;
    }

    else if ([v1 isEqualToString:@"MacBookAir"])
    {
      return 6;
    }

    else if ([v1 isEqualToString:@"MacBookPro"])
    {
      return 7;
    }

    else if ([v1 isEqualToString:@"Macmini"])
    {
      return 8;
    }

    else if ([v1 isEqualToString:@"MacPro"])
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TSDBundle()
{
  if (TSDBundle::onceToken != -1)
  {
    TSDBundle_cold_1();
  }

  return TSDBundle::bundle;
}

uint64_t __TSDBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  TSDBundle::bundle = result;
  return result;
}

__CFString *KNAnimationTypeAsString(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_279D495F8[a1 - 1];
  }
}

uint64_t KNAnimationTypeFromString(void *a1)
{
  if ([a1 isEqualToString:@"None"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"In"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"Out"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"Transition"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"Action"])
  {
    return 4;
  }

  return 0;
}

uint64_t KNAnimationTypeFromNumber(void *a1)
{
  LODWORD(result) = [a1 intValue];
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t KNEffectIsEmphasisEffect(uint64_t a1)
{
  if (KNEffectIsEmphasisEffect_onceToken != -1)
  {
    KNEffectIsEmphasisEffect_cold_1();
  }

  v2 = KNEffectIsEmphasisEffect_sEmphasisEffectsSet;

  return [v2 containsObject:a1];
}

uint64_t __KNEffectIsEmphasisEffect_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"apple:action-pop", @"apple:action-pulse", @"apple:action-blink", @"apple:action-flip", @"apple:action-bounce", @"apple:action-jiggle", 0}];
  KNEffectIsEmphasisEffect_sEmphasisEffectsSet = result;
  return result;
}

uint64_t KNEffectIsActionEffect(uint64_t a1)
{
  if (KNEffectIsActionEffect_onceToken != -1)
  {
    KNEffectIsActionEffect_cold_1();
  }

  if ([KNEffectIsActionEffect_sActionEffectsSet containsObject:a1])
  {
    return 1;
  }

  return KNEffectIsEmphasisEffect(a1);
}

uint64_t __KNEffectIsActionEffect_block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"apple:action-opacity", @"apple:action-motion-path", @"apple:action-rotation", @"apple:action-scale", 0}];
  KNEffectIsActionEffect_sActionEffectsSet = result;
  return result;
}

void TSDgpc_free_polygon(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 16);
    v5 = 8;
    do
    {
      v6 = *(v4 + v5);
      if (v6)
      {
        gpc_free(v6);
        v4 = *(a1 + 16);
        *(v4 + v5) = 0;
        v2 = *a1;
      }

      ++v3;
      v5 += 16;
    }

    while (v3 < v2);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    gpc_free(v7);
    *(a1 + 8) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    gpc_free(v8);
    *(a1 + 16) = 0;
  }

  *a1 = 0;
}

uint64_t TSDgpc_dump_polygon(char *a1, size_t a2, int a3, int *a4)
{
  result = snprintf(a1, a2, "contours: %d\n", *a4);
  if (result != -1 && a2 > result && *a4 >= 1)
  {
    v9 = 0;
    v10 = a2 - result;
    v11 = &a1[result];
    v12 = *(a4 + 2);
    do
    {
      result = snprintf(v11, v10, "vertices: %d\n", *(v12 + 16 * v9));
      if (result == -1 || v10 <= result)
      {
        break;
      }

      v11 += result;
      v10 -= result;
      if (a3)
      {
        result = snprintf(v11, v10, "flag: %d\n", *(*(a4 + 1) + 4 * v9));
        if (result == -1 || v10 <= result)
        {
          return result;
        }

        v11 += result;
        v10 -= result;
      }

      v12 = *(a4 + 2);
      if (*(v12 + 16 * v9) >= 1)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = (*(v12 + 16 * v9 + 8) + v13);
          result = snprintf(v11, v10, "% .*f\t% .*f\n", 15, *v15, 15, v15[1]);
          if (result == -1 || v10 <= result)
          {
            return result;
          }

          v11 += result;
          v10 -= result;
          ++v14;
          v12 = *(a4 + 2);
          v13 += 16;
        }

        while (v14 < *(v12 + 16 * v9));
      }

      ++v9;
    }

    while (v9 < *a4);
  }

  return result;
}

size_t TSDgpc_write_polygon(FILE *a1, int a2, int *a3)
{
  result = fprintf(a1, "%d\n", *a3);
  if (*(a3 + 2))
  {
    if (*a3 >= 1)
    {
      v7 = 0;
      do
      {
        result = fprintf(a1, "%d\n", *(*(a3 + 2) + 16 * v7));
        if (a2)
        {
          result = fprintf(a1, "%d\n", *(*(a3 + 1) + 4 * v7));
        }

        v8 = *(a3 + 2);
        if (*(v8 + 16 * v7 + 8))
        {
          if (*(v8 + 16 * v7) >= 1)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              v11 = (*(v8 + 16 * v7 + 8) + v9);
              result = fprintf(a1, "% .*f % .*f\n", 15, *v11, 15, v11[1]);
              ++v10;
              v8 = *(a3 + 2);
              v9 += 16;
            }

            while (v10 < *(v8 + 16 * v7));
          }
        }

        else
        {
          result = fwrite("### NIL VERTEX PTR\n", 0x13uLL, 1uLL, a1);
        }

        ++v7;
      }

      while (v7 < *a3);
    }
  }

  else
  {

    return fwrite("### NIL CONTOUR PTR\n", 0x14uLL, 1uLL, a1);
  }

  return result;
}

void TSDgpc_add_contour(int *a1, int *a2, int a3)
{
  if (*a1 == -1)
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    LODWORD(v8) = -1;
LABEL_6:
    v8 = v8;
    goto LABEL_7;
  }

  v7 = gpc_malloc(4 * (*a1 + 1));
  if (*a1 == -1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v17 = gpc_malloc(16 * (*a1 + 1));
  v6 = v17;
  LODWORD(v8) = *a1;
  if (*a1 <= 0)
  {
    goto LABEL_6;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(a1 + 2);
    v7[v19] = *(*(a1 + 1) + 4 * v19);
    *&v17[v18] = *(v20 + v18);
    ++v19;
    v8 = *a1;
    v18 += 16;
  }

  while (v19 < v8);
LABEL_7:
  v7[v8] = a3;
  v9 = *a2;
  v10 = &v6[16 * v8];
  *v10 = v9;
  if (v9)
  {
    v11 = gpc_malloc(16 * v9);
    v12 = *a2;
    *(v10 + 1) = v11;
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        *(*(v10 + 1) + v13) = *(*(a2 + 1) + v13);
        ++v14;
        v13 += 16;
      }

      while (v14 < *a2);
    }
  }

  else
  {
    *(v10 + 1) = 0;
  }

  v15 = *(a1 + 2);
  if (v15)
  {
    gpc_free(v15);
    *(a1 + 2) = 0;
  }

  v16 = *(a1 + 1);
  if (v16)
  {
    gpc_free(v16);
  }

  ++*a1;
  *(a1 + 1) = v7;
  *(a1 + 2) = v6;
}

int *clean_polygon(int *result)
{
  if (*result >= 1)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = *(v1 + 2) + 16 * v2;
      v4 = *v3;
      v5 = *(v3 + 8);
      if (*v3 < 2)
      {
        break;
      }

      v6 = 0;
      v7 = v4 - 1;
      v8 = (v5 + 2);
      v9 = -1;
      do
      {
        result = (v8 - 2);
        if (vabdd_f64(*(v8 - 2), *v8) <= 2.22044605e-16 && vabdd_f64(*(v8 - 1), v8[1]) <= 2.22044605e-16)
        {
          result = memmove(result, v8, 16 * (v4 + v9));
          v4 = v7;
        }

        ++v6;
        v7 = v4 - 1;
        v8 += 2;
        --v9;
      }

      while (v6 < v4 - 1);
      if (v4 < 3)
      {
        goto LABEL_12;
      }

      v10 = *v1;
LABEL_14:
      if (++v2 >= v10)
      {
        return result;
      }
    }

    if (v5)
    {
LABEL_12:
      gpc_free(v5);
    }

    result = memmove((*(v1 + 2) + 16 * v2), (*(v1 + 2) + 16 * v2 + 16), 16 * (*v1 + ~v2));
    v10 = *v1 - 1;
    *v1 = v10;
    goto LABEL_14;
  }

  return result;
}

uint64_t TSDprint_polygon(int *a1)
{
  puts("begin poly");
  if (*a1 >= 1)
  {
    v2 = 0;
    do
    {
      v3 = (*(a1 + 2) + 16 * v2);
      v4 = *v3;
      v5 = *(v3 + 1);
      puts("\tbegin contour");
      if (v4 >= 1)
      {
        v6 = (v5 + 8);
        do
        {
          printf("\t\t%g, %g\n", *(v6 - 1), *v6);
          v6 += 2;
          --v4;
        }

        while (v4);
      }

      puts("\tend contour");
      ++v2;
    }

    while (v2 < *a1);
  }

  return puts("end poly\n");
}

void TSDgpc_polygon_clip(unsigned int a1, unsigned int *a2, int *a3, unsigned int *a4)
{
  v4 = a4;
  v7 = a1;
  v221 = 0;
  v222[0] = 0;
  v219 = 0;
  v220 = 0;
  v218 = 0;
  v8 = *a2;
  v9 = *a3;
  if (!*a2)
  {
    if (a1 >= 2 && v9)
    {
      v10 = 0;
      goto LABEL_15;
    }

LABEL_18:
    if (a2 == a4)
    {
      TSDgpc_free_polygon(a2);
    }

    if (a3 == v4)
    {
      TSDgpc_free_polygon(a3);
    }

    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    return;
  }

  if (a1 == 1 && !v9)
  {
    goto LABEL_18;
  }

  v10 = a1 == 0;
  if (a1 <= 1 && v8 >= 1 && v9 >= 1)
  {
    minimax_test(a2, a3, a1);
    v7 = a1;
    v8 = *a2;
  }

  if (v8 >= 1)
  {
    v12 = build_lmt(&v219, v222, &v218, a2, 1, v7);
    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
LABEL_16:
  if (*a3 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = build_lmt(&v219, v222, &v218, a3, 0, a1);
  }

  v200 = v219;
  if (v219)
  {
    v198 = v12;
    v14 = v218;
    if (v218)
    {
      v15 = gpc_malloc(8 * v218);
    }

    else
    {
      v15 = 0;
    }

    v199 = v15;
    build_sbt(&v218 + 1, v15, v222[0]);
    free_sbtree(v222);
    if (a2 == v4)
    {
      TSDgpc_free_polygon(a2);
    }

    v197 = v13;
    if (a3 == v4)
    {
      TSDgpc_free_polygon(a3);
    }

    if (v14 <= 0)
    {
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
    }

    else
    {
      v196 = v4;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v217 = 0;
      v216 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v213 = 0;
      v214 = 0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = a1;
      do
      {
        v26 = v19 + 1;
        HIDWORD(v218) = v26;
        v27 = v199[v19];
        if (v26 < v14)
        {
          v24 = v199[v26];
          v23 = v24 - v27;
        }

        v28 = v200;
        if (v200 && *v200 == v27)
        {
          v29 = *(v200 + 1);
          if (v29)
          {
            v30 = v21;
            v31 = v20;
            do
            {
              add_edge_to_aet(&v220, v29, 0);
              v29 = *(v29 + 160);
            }

            while (v29);
            v17 = v220;
            v25 = a1;
            v20 = v31;
            v21 = v30;
          }

          v28 = *(v200 + 2);
          v18 = v17;
        }

        *(v18 + 76 + 4 * *(v18 + 72)) = *(v18 + 40) != v27;
        *(v18 + 76 + 4 * (*(v18 + 72) == 0)) = 0;
        *(v18 + 100) = 0;
        v32 = *(v18 + 136);
        v33 = v18;
        v200 = v28;
        if (!v32)
        {
          goto LABEL_61;
        }

        do
        {
          v34 = v32 + 76;
          *(v32 + 76 + 4 * *(v32 + 72)) = *(v32 + 40) != v27;
          v35 = *(v32 + 72);
          *(v32 + 76 + 4 * (*(v32 + 72) == 0)) = 0;
          *(v32 + 100) = 0;
          v36 = *(v32 + 76 + 4 * v35);
          if (v36)
          {
            v37 = v32;
            if (vabdd_f64(*(v33 + 48), *(v32 + 48)) <= 2.22044605e-16)
            {
              v37 = v32;
              if (vabdd_f64(*(v33 + 64), *(v32 + 64)) <= 2.22044605e-16)
              {
                v37 = v32;
                if (*(v33 + 40) != v27)
                {
                  *(v34 + 4 * v35) = *(v33 + 76 + 4 * v35) ^ v36;
                  v38 = *(v32 + 72) == 0;
                  v39 = *(v33 + 76 + 4 * (*(v32 + 72) == 0));
                  *(v32 + 100) = 1;
                  *(v34 + 4 * v38) = v39;
                  *(v33 + 76) = 0;
                  *(v33 + 80) = 0;
                  *(v33 + 100) = 2;
                  v37 = v32;
                }
              }
            }
          }

          else
          {
            v37 = v33;
          }

          v32 = *(v32 + 136);
          v33 = v37;
        }

        while (v32);
        if (v18)
        {
LABEL_61:
          v40 = 0;
          v41 = 0;
          v42 = -1.79769313e308;
          v43 = v18;
          while (1)
          {
            v45 = *(v43 + 76);
            v44 = *(v43 + 80);
            v47 = *(v43 + 84);
            v46 = *(v43 + 88);
            v48 = v45 + 2 * v47;
            v49 = v44 + 2 * v46;
            if (!(v48 | v49))
            {
LABEL_184:
              v72 = v42;
              goto LABEL_185;
            }

            *(v43 + 92) = v10;
            *(v43 + 96) = v22;
            if (v25 < 2)
            {
              break;
            }

            if (v25 == 2)
            {
              HIDWORD(v217) = v22 ^ v10;
              v20 = v22 ^ v10 ^ v45 ^ v44;
              v216 = v10 ^ v22 ^ (v40 != 0) ^ (v41 != 0) ^ v47 ^ v46;
              LODWORD(v217) = v10 ^ v22 ^ (v40 != 0) ^ (v41 != 0);
              v21 = 1;
            }

            else if (v25 == 3)
            {
              if (v48)
              {
                if (v22)
                {
                  v50 = v41 == 0;
                }

                else
                {
                  v50 = 0;
                }

                v21 = !v50;
                if (!v50 || !v49)
                {
                  goto LABEL_141;
                }

LABEL_105:
                v21 = 1;
                if (v10)
                {
                  if (v48)
                  {
                    v55 = v49 == 0;
                  }

                  else
                  {
                    v55 = 1;
                  }

                  v57 = !v55 && v10 == v22;
                  if (v40)
                  {
                    v21 = 1;
                  }

                  else
                  {
                    v21 = v57;
                  }
                }
              }

              else
              {
                if (v49)
                {
                  goto LABEL_105;
                }

                v21 = 0;
              }

LABEL_141:
              HIDWORD(v217) = (v10 | v22) != 0;
              v20 = v10 != v45 || v22 != v44;
              v67 = v40 != 0;
              v68 = v41 != 0;
              v70 = v10 != v67 || v22 != v68;
              LODWORD(v217) = v70;
              v65 = (v46 ^ v68) != v22;
              if ((v47 ^ v67) != v10)
              {
                v65 = 1;
              }

LABEL_155:
              v216 = v65;
            }

            v10 ^= v45;
            if (v48)
            {
              v40 = TSDnext_h_state[6 * v40 - 2 + 2 * v48 + v10];
            }

            v22 ^= v44;
            if (v49)
            {
              v41 = TSDnext_h_state[6 * v41 + (v22 + 2 * v49 - 2)];
            }

            if (!v21)
            {
              goto LABEL_184;
            }

            v71 = 4 * HIDWORD(v217) + 8 * v20 + 2 * v216 + v217;
            v72 = *(v43 + 48);
            v21 = 1;
            if (v71 > 6)
            {
              if (v71 > 10)
              {
                if (v71 == 11)
                {
                  if (v72 != v42)
                  {
                    v99 = v20;
                    v100 = gpc_malloc(0x18uLL);
                    v20 = v99;
                    v25 = a1;
                    *v100 = v72;
                    v100[1] = v27;
                    v101 = *(v213 + 32);
                    v100[2] = *(v101 + 8);
                    *(v101 + 8) = v100;
                    v42 = v72;
                  }

                  *(v43 + 112) = v213;
                  v21 = 1;
                  v72 = v42;
                  v213 = 0;
                  goto LABEL_185;
                }

                v77 = v20;
                if (v71 != 13)
                {
                  if (v71 == 14)
                  {
                    if (v72 != v42)
                    {
                      v81 = gpc_malloc(0x18uLL);
                      *v81 = v72;
                      v81[1] = v27;
                      v81[2] = 0.0;
                      v82 = *(v213 + 32);
                      *(*(v82 + 16) + 16) = v81;
                      *(v82 + 16) = v81;
                      v42 = v72;
                    }

                    merge_left(v213, *(v43 + 120), v214);
                    v213 = 0;
                    *(v43 + 120) = 0;
                    goto LABEL_191;
                  }

                  goto LABEL_192;
                }

                v106 = *(v43 + 120);
                v107 = gpc_malloc(0x18uLL);
                *v107 = v72;
                v107[1] = v27;
                v107[2] = 0.0;
                v108 = *(v106 + 32);
                *(*(v108 + 16) + 16) = v107;
                *(v108 + 16) = v107;
                v213 = *(v43 + 120);
                *(v43 + 120) = 0;
                v21 = 1;
LABEL_208:
                v25 = a1;
                goto LABEL_209;
              }

              if ((v71 - 7) < 2)
              {
                v87 = v20;
                v88 = gpc_malloc(0x28uLL);
                v89 = gpc_malloc(0x18uLL);
                v20 = v87;
                *v89 = v72;
                v89[1] = v27;
                v89[2] = 0.0;
                v21 = 1;
                *v88 = 1;
                v88[3] = v214;
                v88[4] = v88;
                v88[1] = v89;
                v88[2] = v89;
                v213 = v88;
                v214 = v88;
                *(v43 + 112) = v88;
              }

              else
              {
                if (v71 == 9)
                {
                  v77 = v20;
                  if (v72 != v42)
                  {
                    v92 = gpc_malloc(0x18uLL);
                    *v92 = v72;
                    v92[1] = v27;
                    v93 = *(v213 + 32);
                    v92[2] = *(v93 + 8);
                    *(v93 + 8) = v92;
                    v42 = v72;
                  }

                  v80 = v214;
                  merge_right(v213, *(v43 + 120), v214);
                  goto LABEL_196;
                }

                if (v71 == 10)
                {
                  if (*(v43 + 24) == v27)
                  {
                    v73 = *(v43 + 120);
                    v74 = v20;
                    v75 = gpc_malloc(0x18uLL);
                    v20 = v74;
                    *v75 = v72;
                    v75[1] = v27;
                    v76 = *(v73 + 32);
                    v75[2] = *(v76 + 8);
                    *(v76 + 8) = v75;
                  }

                  *(v43 + 112) = *(v43 + 120);
                  v21 = 1;
                }

                else
                {
                  v72 = v42;
                }
              }

LABEL_200:
              v25 = a1;
              goto LABEL_185;
            }

            if (v71 > 3)
            {
              if (v71 != 4)
              {
                if (v71 == 5)
                {
                  if (*(v43 + 24) == v27)
                  {
                    v102 = *(v43 + 120);
                    v103 = v20;
                    v104 = gpc_malloc(0x18uLL);
                    v20 = v103;
                    *v104 = v72;
                    v104[1] = v27;
                    v104[2] = 0.0;
                    v105 = *(v102 + 32);
                    *(*(v105 + 16) + 16) = v104;
                    *(v105 + 16) = v104;
                  }

                  *(v43 + 112) = *(v43 + 120);
                  v21 = 1;
                  v25 = a1;
                  goto LABEL_185;
                }

                v77 = v20;
                if (v72 != v42)
                {
                  v78 = gpc_malloc(0x18uLL);
                  *v78 = v72;
                  v78[1] = v27;
                  v78[2] = 0.0;
                  v79 = *(v213 + 32);
                  *(*(v79 + 16) + 16) = v78;
                  *(v79 + 16) = v78;
                  v42 = v72;
                }

                v80 = v214;
                merge_left(v213, *(v43 + 120), v214);
LABEL_196:
                *(v43 + 120) = 0;
                v94 = gpc_malloc(0x28uLL);
                v95 = gpc_malloc(0x18uLL);
                *v95 = v72;
                v95[1] = v27;
                v95[2] = 0.0;
                v21 = 1;
                *v94 = 1;
                v94[3] = v80;
                v94[4] = v94;
                v94[1] = v95;
                v94[2] = v95;
                v213 = v94;
                v214 = v94;
                v72 = v42;
                *(v43 + 112) = v94;
                v25 = a1;
LABEL_209:
                v20 = v77;
                goto LABEL_185;
              }

              if (v72 != v42)
              {
                v96 = v20;
                v97 = gpc_malloc(0x18uLL);
                v20 = v96;
                *v97 = v72;
                v97[1] = v27;
                v97[2] = 0.0;
                v98 = *(v213 + 32);
                *(*(v98 + 16) + 16) = v97;
                *(v98 + 16) = v97;
                v42 = v72;
              }

              *(v43 + 112) = v213;
              v21 = 1;
              v72 = v42;
              v213 = 0;
              goto LABEL_200;
            }

            if (v71 == 1)
            {
              v77 = v20;
              if (v72 != v42)
              {
                v90 = gpc_malloc(0x18uLL);
                *v90 = v72;
                v90[1] = v27;
                v91 = *(v213 + 32);
                v90[2] = *(v91 + 8);
                *(v91 + 8) = v90;
                v42 = v72;
              }

              merge_right(v213, *(v43 + 120), v214);
              v213 = 0;
LABEL_191:
              v21 = 1;
LABEL_192:
              v72 = v42;
              goto LABEL_208;
            }

            if (v71 != 2)
            {
              goto LABEL_184;
            }

            v83 = *(v43 + 120);
            v84 = v20;
            v85 = gpc_malloc(0x18uLL);
            v20 = v84;
            v25 = a1;
            *v85 = v72;
            v85[1] = v27;
            v86 = *(v83 + 32);
            v85[2] = *(v86 + 8);
            *(v86 + 8) = v85;
            v213 = *(v43 + 120);
            v21 = 1;
LABEL_185:
            v43 = *(v43 + 136);
            v42 = v72;
            if (!v43)
            {
              do
              {
                v109 = *(v18 + 40);
                if (v109 == v27)
                {
                  v110 = *(v18 + 128);
                  v111 = *(v18 + 136);
                  v112 = v111;
                  if (v110)
                  {
                    *(v110 + 136) = v111;
                    v112 = v17;
                  }

                  if (v111)
                  {
                    *(v111 + 128) = v110;
                  }

                  if (v110)
                  {
                    if (*(v18 + 104) == 1 && *(v110 + 104) == 2)
                    {
                      *(v110 + 120) = *(v18 + 120);
                      *(v110 + 104) = 0;
                      v113 = *(v110 + 128);
                      if (v113)
                      {
                        if (*(v113 + 104) == 2)
                        {
                          *(v110 + 104) = 1;
                        }
                      }
                    }
                  }

                  v17 = v112;
                }

                else
                {
                  if (v109 == v24)
                  {
                    v114 = *(v18 + 32);
                  }

                  else
                  {
                    v114 = *(v18 + 16) + *(v18 + 64) * (v24 - *(v18 + 24));
                  }

                  *(v18 + 56) = v114;
                }

                v18 = *(v18 + 136);
              }

              while (v18);
              v220 = v17;
              v18 = v17;
              goto LABEL_229;
            }
          }

          if (v48)
          {
            if (v22)
            {
              v51 = 0;
            }

            else
            {
              v51 = v41 == 0;
            }

            v21 = !v51;
            if (!v51 || !v49)
            {
LABEL_119:
              if (v10)
              {
                v58 = v22 == 0;
              }

              else
              {
                v58 = 1;
              }

              v59 = !v58;
              HIDWORD(v217) = v59;
              v20 = v10 != v45 && v22 != v44;
              v61 = v40 != 0;
              v62 = v41 != 0;
              v64 = v10 != v61 && v22 != v62;
              LODWORD(v217) = v64;
              v65 = (v46 ^ v62) != v22;
              if ((v47 ^ v61) == v10)
              {
                v65 = 0;
              }

              goto LABEL_155;
            }
          }

          else if (!v49)
          {
            v21 = 0;
            goto LABEL_119;
          }

          if (v48)
          {
            v52 = v49 == 0;
          }

          else
          {
            v52 = 1;
          }

          v54 = !v52 && v22 == 0;
          if (v40)
          {
            v54 = 1;
          }

          if (v10)
          {
            v21 = 1;
          }

          else
          {
            v21 = v54;
          }

          goto LABEL_119;
        }

LABEL_229:
        v14 = v218;
        v19 = HIDWORD(v218);
        if (SHIDWORD(v218) < v218)
        {
          v205 = v21;
          v115 = v20;
          build_intersection_table(&v221, v17, v23);
          v116 = v221;
          if (v221)
          {
            v25 = a1;
            v20 = v115;
            v21 = v205;
            while (1)
            {
              v118 = *v116;
              v117 = v116[1];
              v119 = *(*v116 + 76);
              if (v119)
              {
                v120 = *(v117 + 76);
                if (v120)
                {
                  v121 = (v118 + 112);
                  v122 = *(v118 + 112);
                  v124 = (v117 + 112);
                  v123 = *(v117 + 112);
                  v125 = *(v116 + 1);
                  if (*(v118 + 92))
                  {
                    goto LABEL_235;
                  }

                  v127 = 1;
                }

                else
                {
                  if (!*(v117 + 80))
                  {
                    goto LABEL_271;
                  }

                  v120 = 0;
                  v121 = (v118 + 112);
                  v122 = *(v118 + 112);
                  v124 = (v117 + 112);
                  v123 = *(v117 + 112);
                  v125 = *(v116 + 1);
                  v127 = *(v118 + 92) == 0;
                }
              }

              else
              {
                if (!*(v118 + 80))
                {
                  goto LABEL_271;
                }

                v120 = *(v117 + 76);
                if (v120)
                {
                  v121 = (v118 + 112);
                  v122 = *(v118 + 112);
                  v124 = (v117 + 112);
                  v123 = *(v117 + 112);
                  v125 = *(v116 + 1);
                  v126 = *(v117 + 92);
                  goto LABEL_239;
                }

                if (!*(v117 + 80))
                {
LABEL_271:
                  v136 = v20;
                  goto LABEL_324;
                }

                v121 = (v118 + 112);
                v122 = *(v118 + 112);
                v124 = (v117 + 112);
                v123 = *(v117 + 112);
                v125 = *(v116 + 1);
                v120 = *(v118 + 92);
                if (v120)
                {
                  v120 = 0;
LABEL_235:
                  v126 = *(v117 + 92);
LABEL_239:
                  v127 = v126 != 0;
                  goto LABEL_243;
                }

                v127 = 0;
              }

LABEL_243:
              v128 = *(v118 + 80);
              if (v128)
              {
                if (*(v118 + 96))
                {
                  v129 = *(v117 + 80);
                  if (v129)
                  {
                    goto LABEL_249;
                  }
                }

                else
                {
                  v129 = 1;
                }
              }

              else if (*(v117 + 80) || (v129 = *(v118 + 96)) != 0)
              {
LABEL_249:
                v129 = *(v117 + 96) != 0;
              }

              if (v25 < 2)
              {
                v216 = v120 != v127 && *(v117 + 80) != v129;
                LODWORD(v217) = v127 & v129;
                v135 = v119 != v127 && v128 != v129;
                HIDWORD(v217) = v135;
                if ((v120 ^ v119) == v127)
                {
                  v20 = 0;
                  goto LABEL_282;
                }

LABEL_280:
                v20 = (*(v117 + 80) ^ v128) != v129;
                goto LABEL_282;
              }

              if (v25 == 2)
              {
                LODWORD(v217) = v129 ^ v127;
                v131 = v120 ^ v127;
                v132 = *(v117 + 80) ^ v129;
                v216 = v132 ^ v131;
                v133 = v128 ^ v119;
                HIDWORD(v217) = v133 ^ v127 ^ v129;
                v20 = v133 ^ v131 ^ v132;
                goto LABEL_282;
              }

              if (v25 != 3)
              {
                goto LABEL_282;
              }

              v130 = v120 != v127 || *(v117 + 80) != v129;
              v216 = v130;
              v138 = v119 != v127 || v128 != v129;
              LODWORD(v217) = (v127 | v129) & 1;
              HIDWORD(v217) = v138;
              if ((v120 ^ v119) == v127)
              {
                goto LABEL_280;
              }

              v20 = 1;
LABEL_282:
              v139 = v27 + *(&v125 + 1);
              v140 = 4 * HIDWORD(v217) + 8 * v20 + 2 * v216 + v217;
              if (v140 > 7)
              {
                if (v140 <= 10)
                {
                  if (v140 == 8)
                  {
                    v136 = v20;
LABEL_309:
                    v208 = v125;
LABEL_318:
                    v156 = gpc_malloc(0x28uLL);
                    v157 = gpc_malloc(0x18uLL);
                    v21 = v205;
                    v25 = a1;
                    *v157 = v208;
                    v157[1] = v139;
                    v157[2] = 0.0;
                    *v156 = 1;
                    v156[3] = v214;
                    v156[4] = v156;
                    v156[1] = v157;
                    v156[2] = v157;
                    *v121 = v156;
                    v214 = v156;
                    *v124 = v156;
                    goto LABEL_324;
                  }

                  if (v140 == 9 && v122)
                  {
                    v136 = v20;
                    if (!v123)
                    {
                      goto LABEL_324;
                    }

                    v208 = v125;
                    v202 = v123;
                    v146 = gpc_malloc(0x18uLL);
                    *v146 = v208;
                    v146[1] = v139;
                    v147 = *(v122 + 32);
                    v146[2] = *(v147 + 8);
                    *(v147 + 8) = v146;
                    merge_right(v122, v202, v214);
                    goto LABEL_318;
                  }

                  goto LABEL_319;
                }

                if (v140 == 11)
                {
                  v136 = v20;
                  if (!v122)
                  {
                    goto LABEL_324;
                  }

                  v211 = v125;
                  v152 = gpc_malloc(0x18uLL);
                  v21 = v205;
                  v25 = a1;
                  *v152 = v211;
                  v152[1] = v139;
                  v153 = *(v122 + 32);
                  v152[2] = *(v153 + 8);
                  *(v153 + 8) = v152;
                  goto LABEL_314;
                }

                if (v140 != 13)
                {
                  if (v140 != 14 || !v122)
                  {
                    goto LABEL_319;
                  }

                  v136 = v20;
                  if (!v123)
                  {
                    goto LABEL_324;
                  }

                  v206 = v125;
                  v201 = v123;
                  v141 = gpc_malloc(0x18uLL);
                  *v141 = v206;
                  v141[1] = v139;
                  v141[2] = 0.0;
                  v142 = *(v122 + 32);
                  *(*(v142 + 16) + 16) = v141;
                  *(v142 + 16) = v141;
                  merge_left(v122, v201, v214);
                  goto LABEL_307;
                }

                v136 = v20;
                if (!v123)
                {
                  goto LABEL_324;
                }

                v212 = v125;
                v143 = v123;
                v158 = gpc_malloc(0x18uLL);
                v21 = v205;
                v25 = a1;
                *v158 = v212;
                v158[1] = v139;
                v158[2] = 0.0;
                v159 = *(v143 + 32);
                *(*(v159 + 16) + 16) = v158;
                *(v159 + 16) = v158;
LABEL_322:
                *v121 = v143;
LABEL_323:
                *v124 = 0;
                goto LABEL_324;
              }

              if (v140 <= 3)
              {
                if (v140 != 1)
                {
                  if (v140 != 2)
                  {
                    goto LABEL_319;
                  }

                  v136 = v20;
                  if (!v123)
                  {
                    goto LABEL_324;
                  }

                  v207 = v125;
                  v143 = v123;
                  v144 = gpc_malloc(0x18uLL);
                  v21 = v205;
                  v25 = a1;
                  *v144 = v207;
                  v144[1] = v139;
                  v145 = *(v143 + 32);
                  v144[2] = *(v145 + 8);
                  *(v145 + 8) = v144;
                  goto LABEL_322;
                }

                if (!v122)
                {
                  goto LABEL_319;
                }

                v136 = v20;
                if (!v123)
                {
                  goto LABEL_324;
                }

                v209 = v125;
                v203 = v123;
                v148 = gpc_malloc(0x18uLL);
                *v148 = v209;
                v148[1] = v139;
                v149 = *(v122 + 32);
                v148[2] = *(v149 + 8);
                *(v149 + 8) = v148;
                merge_right(v122, v203, v214);
LABEL_307:
                v21 = v205;
                v25 = a1;
                *v121 = 0;
                goto LABEL_323;
              }

              if (v140 == 4)
              {
                v136 = v20;
                if (!v122)
                {
                  goto LABEL_324;
                }

                v210 = v125;
                v150 = gpc_malloc(0x18uLL);
                v21 = v205;
                v25 = a1;
                *v150 = v210;
                v150[1] = v139;
                v150[2] = 0.0;
                v151 = *(v122 + 32);
                *(*(v151 + 16) + 16) = v150;
                *(v151 + 16) = v150;
LABEL_314:
                *v124 = v122;
                *v121 = 0;
                goto LABEL_324;
              }

              if (v140 == 6)
              {
                if (v122)
                {
                  v136 = v20;
                  if (!v123)
                  {
                    goto LABEL_324;
                  }

                  v208 = v125;
                  v204 = v123;
                  v154 = gpc_malloc(0x18uLL);
                  *v154 = v208;
                  v154[1] = v139;
                  v154[2] = 0.0;
                  v155 = *(v122 + 32);
                  *(*(v155 + 16) + 16) = v154;
                  *(v155 + 16) = v154;
                  merge_left(v122, v204, v214);
                  goto LABEL_318;
                }

LABEL_319:
                v136 = v20;
                goto LABEL_324;
              }

              v136 = v20;
              if (v140 == 7)
              {
                goto LABEL_309;
              }

LABEL_324:
              if (*(v118 + 76))
              {
                *(v117 + 92) = *(v117 + 92) == 0;
              }

              v20 = v136;
              if (*(v117 + 76))
              {
                *(v118 + 92) = *(v118 + 92) == 0;
              }

              if (*(v118 + 80))
              {
                *(v117 + 96) = *(v117 + 96) == 0;
              }

              if (*(v117 + 80))
              {
                *(v118 + 96) = *(v118 + 96) == 0;
              }

              v160 = *(v118 + 128);
              v161 = *(v117 + 136);
              if (v161)
              {
                *(v161 + 128) = v118;
              }

              if (*(v118 + 100) == 1)
              {
                while (1)
                {
                  v160 = *(v160 + 128);
                  if (!v160)
                  {
                    break;
                  }

                  if (*(v160 + 100) != 2)
                  {
                    goto LABEL_339;
                  }
                }

LABEL_340:
                v160 = 0;
                *(v17 + 128) = v117;
                *(v117 + 136) = v17;
                v163 = *(v118 + 136);
                v164 = v17;
                v17 = v163;
                goto LABEL_341;
              }

              if (!v160)
              {
                goto LABEL_340;
              }

LABEL_339:
              v162 = *(v160 + 136);
              *(v162 + 128) = v117;
              *(v117 + 136) = v162;
              v163 = *(v118 + 136);
              *(v160 + 136) = v163;
              v164 = *(v117 + 136);
LABEL_341:
              *(v163 + 128) = v160;
              *(v164 + 128) = v117;
              *(v118 + 136) = v161;
              v116 = v116[4];
              if (!v116)
              {
                goto LABEL_345;
              }
            }
          }

          v25 = a1;
          v20 = v115;
          v21 = v205;
LABEL_345:
          if (v17)
          {
            v165 = v17;
            do
            {
              v166 = *(v17 + 136);
              v167 = *(v17 + 152);
              v168 = *(v17 + 112);
              if (*(v17 + 40) != v24 || v167 == 0)
              {
                *(v17 + 120) = v168;
                *(v17 + 104) = *(v17 + 100);
                *(v17 + 84) = *(v17 + 76);
                *(v17 + 48) = *(v17 + 56);
                v18 = v165;
              }

              else
              {
                *(v167 + 120) = v168;
                *(v167 + 104) = *(v17 + 100);
                *(v167 + 84) = *(v17 + 76);
                *(v167 + 88) = *(v17 + 80);
                v170 = *(v17 + 128);
                v18 = v167;
                if (v170)
                {
                  *(v170 + 136) = v167;
                  v18 = v165;
                }

                if (v166)
                {
                  *(v166 + 128) = v167;
                }

                *(v167 + 128) = v170;
                *(v167 + 136) = v166;
                v165 = v18;
              }

              *(v17 + 112) = 0;
              v17 = v166;
            }

            while (v166);
          }

          else
          {
            v18 = 0;
          }

          v220 = v18;
          v14 = v218;
          v19 = HIDWORD(v218);
          v17 = v18;
        }
      }

      while (v19 < v14);
      v4 = v196;
      *(v196 + 1) = 0;
      *(v196 + 2) = 0;
      v171 = v214;
      if (v214)
      {
        v172 = 0;
        v173 = v214;
        v174 = v197;
        while (1)
        {
          if (*v173)
          {
            v175 = *(*(v173 + 32) + 8);
            if (!v175)
            {
              goto LABEL_372;
            }

            v176 = -1;
            v177 = *(*(v173 + 32) + 8);
            do
            {
              v177 = *(v177 + 16);
              ++v176;
            }

            while (v177);
            if (v176 <= 1)
            {
              do
              {
                v178 = v175[2];
                gpc_free(v175);
                v175 = v178;
              }

              while (v178);
LABEL_372:
              *v173 = 0;
              goto LABEL_373;
            }

            *v173 = v176 + 1;
            ++v172;
          }

LABEL_373:
          v173 = *(v173 + 24);
          if (!v173)
          {
            *v196 = v172;
            if (v172 >= 1)
            {
              *(v196 + 1) = gpc_malloc(4 * v172);
              v179 = *v196;
              if (v179)
              {
                v180 = gpc_malloc(16 * v179);
              }

              else
              {
                v180 = 0;
              }

              v181 = 0;
              *(v196 + 2) = v180;
              do
              {
                v182 = v171[3];
                if (*v171)
                {
                  v183 = v171[4];
                  v184 = *(v196 + 2);
                  *(*(v196 + 1) + 4 * v181) = *(v183 + 4);
                  v185 = *v171;
                  *(v184 + 16 * v181) = v185;
                  if (v185)
                  {
                    v186 = gpc_malloc(16 * v185);
                    v187 = (*(v196 + 2) + 16 * v181);
                    *(v187 + 1) = v186;
                    v188 = *v187;
                    v183 = v171[4];
                  }

                  else
                  {
                    v188 = 0;
                    *(v184 + 16 * v181 + 8) = 0;
                  }

                  v189 = *(v183 + 8);
                  if (v189)
                  {
                    v190 = 16 * v188 - 16;
                    do
                    {
                      v191 = v189[2];
                      *(*(*(v196 + 2) + 16 * v181 + 8) + v190) = *v189;
                      gpc_free(v189);
                      v190 -= 16;
                      v189 = v191;
                    }

                    while (v191);
                  }

                  ++v181;
                }

                gpc_free(v171);
                v171 = v182;
              }

              while (v182);
            }

LABEL_390:
            clean_polygon(v4);
            v192 = v221;
            if (v221)
            {
              do
              {
                v193 = v192[4];
                gpc_free(v192);
                v192 = v193;
              }

              while (v193);
            }

            v194 = v219;
            if (v219)
            {
              do
              {
                v195 = v194[2];
                gpc_free(v194);
                v194 = v195;
              }

              while (v195);
            }

            if (v174)
            {
              gpc_free(v174);
            }

            if (v198)
            {
              gpc_free(v198);
            }

            v16 = v199;
            if (v199)
            {
LABEL_399:

              gpc_free(v16);
            }

            return;
          }
        }
      }
    }

    *v4 = 0;
    v174 = v197;
    goto LABEL_390;
  }

  if (a2 == v4)
  {
    TSDgpc_free_polygon(a2);
  }

  if (a3 == v4)
  {
    TSDgpc_free_polygon(a3);
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  if (v12)
  {
    gpc_free(v12);
  }

  if (v13)
  {
    v16 = v13;
    goto LABEL_399;
  }
}

void minimax_test(uint64_t a1, int *a2, int a3)
{
  contour_bboxes = create_contour_bboxes(a1);
  v7 = create_contour_bboxes(a2);
  v8 = *a1;
  LODWORD(v9) = *a2;
  v10 = *a2 * *a1;
  if (v10)
  {
    v11 = gpc_malloc(4 * v10);
    v8 = *a1;
    LODWORD(v9) = *a2;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (v9 >= 1)
      {
        v13 = 0;
        v14 = &contour_bboxes[32 * i];
        v15 = v14[2];
        v16 = (v7 + 16);
        do
        {
          v17 = v15 >= *(v16 - 2) && *v14 <= *v16 && v14[3] >= *(v16 - 1) && v14[1] <= v16[1];
          *(v11 + i + *a1 * v13++) = v17;
          v9 = *a2;
          v16 += 4;
        }

        while (v13 < v9);
        v8 = *a1;
      }
    }
  }

  if (v9 >= 1)
  {
    v18 = 0;
    v19 = v11;
    do
    {
      v20 = v19;
      v21 = v8 & ~(v8 >> 31);
      while (v21)
      {
        v22 = *v20++;
        --v21;
        if (v22)
        {
          goto LABEL_23;
        }
      }

      *(*(a2 + 2) + 16 * v18) = -*(*(a2 + 2) + 16 * v18);
LABEL_23:
      ++v18;
      v19 += v8;
    }

    while (v18 != v9);
  }

  if (a3 == 1 && v8 >= 1)
  {
    v23 = 0;
    v24 = v8;
    v25 = (v9 & ~(v9 >> 31)) + 1;
    v26 = 4 * v8;
    v27 = v11;
    do
    {
      v28 = v27;
      v29 = v25;
      while (--v29)
      {
        v30 = *v28;
        v28 = (v28 + v26);
        if (v30)
        {
          goto LABEL_32;
        }
      }

      *(*(a1 + 16) + 16 * v23) = -*(*(a1 + 16) + 16 * v23);
LABEL_32:
      ++v23;
      ++v27;
    }

    while (v23 != v24);
  }

  if (contour_bboxes)
  {
    gpc_free(contour_bboxes);
  }

  if (v7)
  {
    gpc_free(v7);
  }

  if (v11)
  {

    gpc_free(v11);
  }
}

double *build_lmt(double **a1, double **a2, _DWORD *a3, unsigned int *a4, int a5, int a6)
{
  v6 = *a4;
  if (v6 < 1)
  {
    return 0;
  }

  v9 = a4;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = (*(a4 + 2) + 16 * v10);
    v13 = *v12;
    v14 = 0;
    v15 = *v12 - 1;
    if (*v12 >= 1)
    {
      v16 = v12[1];
      v17 = v13 & 0x7FFFFFFF;
      v18 = (v16 + 8);
      v19 = 1;
      do
      {
        if (*(v16 + 16 * ((v15 + v19 - 1) % v13) + 8) != *v18)
        {
          goto LABEL_9;
        }

        v20 = v19;
        if (v17 == 1)
        {
          v20 = 0;
        }

        if (*(v16 + 16 * v20 + 8) != *v18)
        {
LABEL_9:
          ++v14;
        }

        ++v19;
        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v11 += v14;
    ++v10;
  }

  while (v10 != v6);
  if (v11)
  {
    v21 = gpc_malloc(168 * v11);
    if (*v9 <= 0)
    {
      return v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = a6 == 0;
  v25 = 0uLL;
  v86 = v9;
  v26 = a3;
  do
  {
    v27 = *(v9 + 2);
    v28 = (v27 + 16 * v22);
    LODWORD(v29) = *v28;
    v89 = v23;
    if ((*v28 & 0x80000000) != 0)
    {
      *v28 = -v29;
    }

    else if (v29)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(v27 + 16 * v22 + 8);
        v33 = *(v32 + 16 * v30 + 8);
        if (*(v32 + 16 * ((v30 + v29 - 1) % v29) + 8) == v33 && *(v32 + 16 * ((v30 + 1) % v29) + 8) == v33)
        {
          ++v30;
        }

        else
        {
          v34 = &v21[21 * v31];
          *v34 = *(v32 + 16 * v30);
          v34[1] = v33;
          v35 = a2;
          v36 = *a2;
          if (*a2)
          {
            do
            {
              v37 = v36;
              if (*v36 <= v33)
              {
                if (*v36 >= v33)
                {
                  goto LABEL_31;
                }

                v38 = 2;
              }

              else
              {
                v38 = 1;
              }

              v36 = *&v36[v38];
            }

            while (v36);
            v35 = &v37[v38];
          }

          v39 = gpc_malloc(0x18uLL);
          v25 = 0uLL;
          *v35 = v39;
          *v39 = v33;
          v39[1] = 0.0;
          (*v35)[2] = 0.0;
          ++*v26;
          v27 = *(v9 + 2);
LABEL_31:
          ++v31;
          ++v30;
        }

        v29 = *(v27 + 16 * v22);
      }

      while (v30 < v29);
      v40 = v31 - 1;
      if (v31 >= 1)
      {
        v41 = 0;
        do
        {
          v42 = v41;
          v43 = v21[21 * ((v40 + v41) % v31) + 1];
          v44 = v21[21 * v41++ + 1];
          if (v43 >= v44)
          {
            v45 = v41 == v31 ? 0 : v41;
            v46 = v21[21 * v45 + 1];
            if (v46 > v44)
            {
              v47 = 0;
              do
              {
                v48 = v47;
                v45 = (v45 + 1) % v31;
                --v47;
                v59 = v21[21 * v45 + 1] <= v46;
                v46 = v21[21 * v45 + 1];
              }

              while (!v59);
              v49 = 0;
              v50 = 0;
              v51 = &v21[21 * v89];
              *(v51 + 26) = 0;
              *(v51 + 21) = 0;
              *(v51 + 22) = 0;
              v52 = &v21[21 * v42];
              v54 = *v52;
              v53 = v52[1];
              do
              {
                v42 = (v42 + 1) % v31;
                v55 = &v51[v49];
                v55[6] = v54;
                v55[2] = v54;
                v55[3] = v53;
                v56 = &v21[21 * v42];
                v57 = *v56;
                v58 = v56[1];
                v55[4] = *v56;
                v55[5] = v58;
                v55[8] = (v57 - v54) / (v58 - v53);
                v59 = v50 < ~v47 && -v47 > 1;
                *(v55 + 18) = a5;
                v60 = v55 + 21;
                if (!v59)
                {
                  v60 = 0;
                }

                *(v55 + 7) = v25;
                *(v55 + 8) = v25;
                v61 = v55 - 21;
                if (!(v49 * 8))
                {
                  v61 = 0;
                }

                *(v55 + 18) = v61;
                *(v55 + 19) = v60;
                v55[20] = 0.0;
                *(v55 + 23) = v24;
                *(v55 + 24) = 0;
                ++v50;
                v49 += 21;
                v53 = v58;
                v54 = v57;
              }

              while (v48 + v50 != 1);
              v89 -= v47;
              v62 = bound_list(a1, v44);
              insert_bound(v62, v51);
              v25 = 0uLL;
              v26 = a3;
            }
          }
        }

        while (v41 != v31);
        v63 = 0;
        do
        {
          v64 = v63;
          v65 = (v40 + v63) % v31;
          v66 = v21[21 * v65 + 1];
          v67 = v21[21 * v63++ + 1];
          if (v66 > v67)
          {
            v68 = v63;
            if (v63 == v31)
            {
              v68 = 0;
            }

            if (v21[21 * v68 + 1] >= v67)
            {
              v69 = 0;
              do
              {
                v70 = v69;
                v65 = (v40 + v65) % v31;
                --v69;
                v59 = v21[21 * v65 + 1] <= v66;
                v66 = v21[21 * v65 + 1];
              }

              while (!v59);
              v71 = 0;
              v72 = 0;
              v73 = &v21[21 * v89];
              *(v73 + 26) = 0;
              *(v73 + 21) = 0;
              *(v73 + 22) = 0;
              v74 = &v21[21 * v64];
              v76 = *v74;
              v75 = v74[1];
              do
              {
                v64 = (v40 + v64) % v31;
                v77 = &v73[v71];
                v77[6] = v76;
                v77[2] = v76;
                v77[3] = v75;
                v78 = &v21[21 * v64];
                v79 = *v78;
                v80 = v78[1];
                v77[4] = *v78;
                v77[5] = v80;
                v77[8] = (v79 - v76) / (v80 - v75);
                v81 = v72 < ~v69 && -v69 > 1;
                *(v77 + 18) = a5;
                v82 = v77 + 21;
                if (!v81)
                {
                  v82 = 0;
                }

                *(v77 + 7) = v25;
                *(v77 + 8) = v25;
                v83 = v77 - 21;
                if (!(v71 * 8))
                {
                  v83 = 0;
                }

                *(v77 + 18) = v83;
                *(v77 + 19) = v82;
                v77[20] = 0.0;
                *(v77 + 23) = v24;
                *(v77 + 24) = 0;
                ++v72;
                v71 += 21;
                v75 = v80;
                v76 = v79;
              }

              while (v70 + v72 != 1);
              v89 -= v69;
              v84 = bound_list(a1, v67);
              insert_bound(v84, v73);
              v25 = 0uLL;
              v26 = a3;
            }
          }
        }

        while (v63 != v31);
      }
    }

    ++v22;
    v9 = v86;
    v23 = v89;
  }

  while (v22 < *v86);
  return v21;
}

double build_sbt(int *a1, uint64_t a2, uint64_t a3)
{
  do
  {
    if (*(a3 + 8))
    {
      build_sbt(a1, a2);
    }

    result = *a3;
    v7 = *a1;
    *(a2 + 8 * v7) = *a3;
    *a1 = v7 + 1;
    a3 = *(a3 + 16);
  }

  while (a3);
  return result;
}

void free_sbtree(void **a1)
{
  if (*a1)
  {
    free_sbtree(*a1 + 1);
    free_sbtree(*a1 + 2);
    if (*a1)
    {
      gpc_free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t *add_edge_to_aet(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(a2 + 48);
    while (1)
    {
      v5 = *(v3 + 48);
      if (v4 < v5)
      {
        break;
      }

      v6 = v3;
      if (v4 == v5 && *(a2 + 64) < *(v3 + 64))
      {
        break;
      }

      result = (v3 + 136);
      v3 = *(v3 + 136);
      a3 = v6;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    *(a2 + 128) = a3;
    v7 = *result;
    *(a2 + 136) = *result;
    *(v7 + 128) = a2;
    *result = a2;
  }

  else
  {
    v6 = a3;
LABEL_10:
    *result = a2;
    *(a2 + 128) = v6;
    *(a2 + 136) = 0;
  }

  return result;
}

uint64_t merge_right(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  *(v3 + 4) = 0;
  v4 = *(result + 32);
  if (v4 != v3)
  {
    *(*(v3 + 16) + 16) = *(v4 + 8);
    *(v3 + 16) = *(v4 + 16);
    if (a3)
    {
      v5 = *(result + 32);
      do
      {
        if (*(a3 + 32) == v5)
        {
          *a3 = 0;
          *(a3 + 32) = *(a2 + 32);
        }

        a3 = *(a3 + 24);
      }

      while (a3);
    }
  }

  return result;
}

uint64_t merge_left(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  *(v3 + 4) = 1;
  v4 = *(result + 32);
  if (v4 != v3)
  {
    *(*(v4 + 16) + 16) = *(v3 + 8);
    *(v3 + 8) = *(v4 + 8);
    if (a3)
    {
      v5 = *(result + 32);
      do
      {
        if (*(a3 + 32) == v5)
        {
          *a3 = 0;
          *(a3 + 32) = *(a2 + 32);
        }

        a3 = *(a3 + 24);
      }

      while (a3);
    }
  }

  return result;
}

double *build_intersection_table(double **a1, uint64_t a2, double a3)
{
  result = *a1;
  if (result)
  {
    do
    {
      v7 = *(result + 4);
      gpc_free(result);
      *a1 = v7;
      result = v7;
    }

    while (v7);
  }

  v34 = 0;
  if (a2)
  {
    do
    {
      if (*(a2 + 100) == 1 || *(a2 + 76) || *(a2 + 80))
      {
        v8 = v34;
        if (v34)
        {
          v9 = (a2 + 64);
          v10 = &v34;
          while (1)
          {
            v11 = v8[2];
            v12 = *(a2 + 56);
            if (v12 >= v11)
            {
              break;
            }

            v13 = v8[1];
            v14 = v11 - v13;
            v15 = *(a2 + 48);
            v16 = v14 - (v12 - v15);
            v17 = fabs(v16);
            if (*v9 == v8[3] || v17 <= 2.22044605e-16)
            {
              break;
            }

            v19 = (v15 - v13) / v16;
            v20 = v19 * a3;
            v21 = *a1;
            if (*a1)
            {
              v22 = a1;
              if (v21[3] <= v20)
              {
                do
                {
                  v23 = v21;
                  v21 = *(v21 + 4);
                }

                while (v21 && v21[3] <= v20);
                v22 = (v23 + 4);
              }
            }

            else
            {
              v22 = a1;
            }

            v24 = v13 + v19 * v14;
            v25 = *v8;
            v26 = gpc_malloc(0x28uLL);
            *v22 = v26;
            *v26 = v25;
            *(*v22 + 1) = a2;
            v27 = *v22;
            v27[2] = v24;
            v27[3] = v20;
            *(v27 + 4) = v21;
            v28 = *v10;
            v29 = *(v28 + 4);
            v10 = (v28 + 32);
            v8 = v29;
            if (!v29)
            {
              goto LABEL_25;
            }
          }

          v30 = gpc_malloc(0x28uLL);
          *v10 = v30;
          *v30 = a2;
          v31 = *v10;
          *(*v10 + 8) = *(a2 + 48);
        }

        else
        {
          v10 = &v34;
LABEL_25:
          v32 = gpc_malloc(0x28uLL);
          v8 = 0;
          *v10 = v32;
          *v32 = a2;
          v31 = *v10;
          *(*v10 + 8) = *(a2 + 48);
          v9 = (a2 + 64);
        }

        v31[3] = *v9;
        *(v31 + 4) = v8;
      }

      a2 = *(a2 + 136);
    }

    while (a2);
    result = v34;
    if (v34)
    {
      do
      {
        v33 = *(result + 4);
        gpc_free(result);
        result = v33;
      }

      while (v33);
    }
  }

  return result;
}

void TSDgpc_free_tristrip(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(*(a1 + 8) + v4);
      if (v5)
      {
        gpc_free(v5);
        *(*(a1 + 8) + v4) = 0;
        v2 = *a1;
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    gpc_free(v6);
    *(a1 + 8) = 0;
  }

  *a1 = 0;
}

void TSDgpc_tristrip_clip(unsigned int a1, unsigned int *a2, int *a3, uint64_t a4)
{
  v5 = a1;
  v396 = 0;
  v397[0] = 0;
  v394 = 0;
  v395 = 0;
  v392 = 0;
  v393 = 0;
  v6 = *a2;
  v7 = *a3;
  if (!*a2)
  {
    if (a1 >= 2 && v7)
    {
      v12 = a1;
      v362 = a4;
      v9 = 0;
      goto LABEL_18;
    }

LABEL_15:
    *a4 = 0;
    *(a4 + 8) = 0;
    return;
  }

  if (a1 == 1 && !v7)
  {
    goto LABEL_15;
  }

  v362 = a4;
  v9 = a1 == 0;
  if (a1 <= 1 && v6 >= 1 && v7 >= 1)
  {
    minimax_test(a2, a3, a1);
    v5 = a1;
    v6 = *a2;
  }

  if (v6 >= 1)
  {
    v12 = v5;
    v13 = build_lmt(&v394, v397, &v392, a2, 1, v5);
    goto LABEL_19;
  }

  v12 = v5;
LABEL_18:
  v13 = 0;
LABEL_19:
  if (*a3 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = build_lmt(&v394, v397, &v392, a3, 0, v12);
  }

  v365 = v394;
  if (v394)
  {
    v361 = v13;
    v15 = v392;
    if (v392)
    {
      v16 = gpc_malloc(8 * v392);
    }

    else
    {
      v16 = 0;
    }

    build_sbt(&v392 + 1, v16, v397[0]);
    free_sbtree(v397);
    v360 = v14;
    if (v15 <= 0)
    {
      v339 = v362;
      *(v362 + 8) = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v367 = 0;
      v363 = 0;
      v364 = v16;
      v27 = 0.0;
      v28 = 0.0;
      v29 = v12;
      v391 = v12;
      do
      {
        v30 = v20 + 1;
        HIDWORD(v392) = v30;
        v31 = v16[v20];
        if (v30 < v15)
        {
          v28 = v16[v30];
          v27 = v28 - v31;
        }

        v32 = v365;
        if (v365 && *v365 == v31)
        {
          v33 = *(v365 + 1);
          if (v33)
          {
            v34 = v25;
            v35 = v24;
            v36 = v22;
            v37 = v23;
            do
            {
              add_edge_to_aet(&v395, v33, 0);
              v33 = *(v33 + 160);
            }

            while (v33);
            v18 = v395;
            v23 = v37;
            v22 = v36;
            v24 = v35;
            v25 = v34;
            v16 = v364;
            v29 = v391;
          }

          v32 = *(v365 + 2);
          v19 = v18;
        }

        *(v19 + 76 + 4 * *(v19 + 72)) = *(v19 + 40) != v31;
        *(v19 + 76 + 4 * (*(v19 + 72) == 0)) = 0;
        *(v19 + 100) = 0;
        v38 = *(v19 + 136);
        v39 = v19;
        v365 = v32;
        if (!v38)
        {
          goto LABEL_50;
        }

        do
        {
          v40 = v38 + 76;
          *(v38 + 76 + 4 * *(v38 + 72)) = *(v38 + 40) != v31;
          v41 = *(v38 + 72);
          *(v38 + 76 + 4 * (*(v38 + 72) == 0)) = 0;
          *(v38 + 100) = 0;
          v42 = *(v38 + 76 + 4 * v41);
          if (v42)
          {
            v43 = v38;
            if (vabdd_f64(*(v39 + 48), *(v38 + 48)) <= 2.22044605e-16)
            {
              v43 = v38;
              if (vabdd_f64(*(v39 + 64), *(v38 + 64)) <= 2.22044605e-16)
              {
                v43 = v38;
                if (*(v39 + 40) != v31)
                {
                  *(v40 + 4 * v41) = *(v39 + 76 + 4 * v41) ^ v42;
                  v44 = *(v38 + 72) == 0;
                  v45 = *(v39 + 76 + 4 * (*(v38 + 72) == 0));
                  *(v38 + 100) = 1;
                  *(v40 + 4 * v44) = v45;
                  *(v39 + 76) = 0;
                  *(v39 + 80) = 0;
                  *(v39 + 100) = 2;
                  v43 = v38;
                }
              }
            }
          }

          else
          {
            v43 = v39;
          }

          v38 = *(v38 + 136);
          v39 = v43;
        }

        while (v38);
        if (v19)
        {
LABEL_50:
          v46 = 0;
          v47 = 0;
          v48 = v363;
          while (1)
          {
            v50 = *(v19 + 76);
            v49 = *(v19 + 80);
            v52 = *(v19 + 84);
            v51 = *(v19 + 88);
            v53 = v50 + 2 * v52;
            v54 = v49 + 2 * v51;
            if (!(v53 | v54))
            {
              goto LABEL_228;
            }

            *(v19 + 92) = v9;
            *(v19 + 96) = v26;
            if (v29 >= 2)
            {
              if (v29 == 2)
              {
                v23 = v26 ^ v9;
                v24 = v23 ^ v50 ^ v49;
                v21 = v9 ^ v26 ^ (v46 != 0) ^ (v47 != 0);
                v22 = v21 ^ v52 ^ v51;
                v25 = 1;
                goto LABEL_145;
              }

              if (v29 != 3)
              {
                goto LABEL_145;
              }

              if (v53)
              {
                if (v26)
                {
                  v55 = v47 == 0;
                }

                else
                {
                  v55 = 0;
                }

                v25 = !v55;
                if (!v55 || !v54)
                {
                  goto LABEL_130;
                }
              }

              else if (!v54)
              {
                v25 = 0;
LABEL_130:
                v23 = (v9 | v26) != 0;
                v24 = v9 != v50 || v26 != v49;
                v70 = v46 != 0;
                v71 = v47 != 0;
                v21 = v9 != v70 || v26 != v71;
                v73 = (v51 ^ v71) != v26;
                v22 = (v52 ^ v70) != v9 || v73;
                goto LABEL_145;
              }

              v25 = 1;
              if (v9)
              {
                if (v53)
                {
                  v60 = v54 == 0;
                }

                else
                {
                  v60 = 1;
                }

                v62 = !v60 && v9 == v26;
                if (v46)
                {
                  v25 = 1;
                }

                else
                {
                  v25 = v62;
                }
              }

              goto LABEL_130;
            }

            if (v53)
            {
              if (v26)
              {
                v56 = 0;
              }

              else
              {
                v56 = v47 == 0;
              }

              v25 = !v56;
              if (v56 && v54)
              {
LABEL_79:
                if (v53)
                {
                  v57 = v54 == 0;
                }

                else
                {
                  v57 = 1;
                }

                v59 = !v57 && v26 == 0;
                if (v46)
                {
                  v59 = 1;
                }

                if (v9)
                {
                  v25 = 1;
                }

                else
                {
                  v25 = v59;
                }
              }
            }

            else
            {
              if (v54)
              {
                goto LABEL_79;
              }

              v25 = 0;
            }

            if (v9)
            {
              v63 = v26 == 0;
            }

            else
            {
              v63 = 1;
            }

            v23 = !v63;
            v24 = v9 != v50 && v26 != v49;
            v65 = v46 != 0;
            v66 = v47 != 0;
            v21 = v9 != v65 && v26 != v66;
            v68 = (v51 ^ v66) != v26;
            v22 = (v52 ^ v65) != v9 && v68;
LABEL_145:
            v9 ^= v50;
            if (v53)
            {
              v46 = TSDnext_h_state[6 * v46 + (v9 + 2 * v53 - 2)];
            }

            v26 ^= v49;
            if (v54)
            {
              v47 = TSDnext_h_state[6 * v47 - 2 + 2 * v54 + v26];
            }

            if (!v25)
            {
              goto LABEL_228;
            }

            v74 = 4 * v23 + 8 * v24 + 2 * v22 + v21;
            v75 = *(v19 + 48);
            v25 = 1;
            if (v74 > 7)
            {
              if (v74 <= 10)
              {
                if (v74 == 8)
                {
                  v125 = v23;
                  v126 = v22;
                  v127 = v24;
                  new_tristrip(&v393, v19, *(v19 + 48), v31);
                  v24 = v127;
                  v22 = v126;
                  v23 = v125;
                  v25 = 1;
                  v48 = v19;
                  goto LABEL_227;
                }

                if (v74 == 9)
                {
                  v372 = v24;
                  v138 = v22;
                  v139 = v21;
                  v140 = v23;
                  v141 = *(v19 + 120);
                  do
                  {
                    v142 = v141;
                    v141 = *(v141 + 16);
                  }

                  while (v141);
                  v143 = gpc_malloc(0x18uLL);
                  *(v142 + 16) = v143;
                  *v143 = v75;
                  v143[1] = v31;
                  v143[2] = 0.0;
                  ++**(v19 + 120);
                  *(v19 + 112) = 0;
                  new_tristrip(&v393, v19, v75, v31);
                  v25 = 1;
                  v48 = v19;
                  v23 = v140;
                  v21 = v139;
                  v22 = v138;
                  v24 = v372;
                  goto LABEL_227;
                }

                v83 = *(v19 + 120);
                v29 = v391;
                if (*(v19 + 24) == v31)
                {
                  v84 = v24;
                  v85 = v22;
                  v86 = v21;
                  v87 = v23;
                  v88 = (v83 + 2);
                  do
                  {
                    v89 = v88;
                    v90 = *v88;
                    v88 = (*v88 + 2);
                  }

                  while (v90);
                  v91 = gpc_malloc(0x18uLL);
                  *v89 = v91;
                  *v91 = v75;
                  v91[1] = v31;
                  v91[2] = 0.0;
                  v83 = *(v19 + 120);
                  ++*v83;
                  v23 = v87;
                  v21 = v86;
                  v22 = v85;
                  v24 = v84;
                  v29 = v391;
                }

                *(v19 + 112) = v83;
                v25 = 1;
                v92 = 10;
                goto LABEL_196;
              }

              switch(v74)
              {
                case 11:
                  v131 = v23;
                  v132 = v22;
                  v133 = v24;
                  new_tristrip(&v393, v19, *(v19 + 48), v31);
                  v29 = v391;
                  v24 = v133;
                  v22 = v132;
                  v23 = v131;
                  v25 = 1;
                  v92 = 11;
LABEL_196:
                  v367 = v92;
                  v48 = v19;
                  break;
                case 13:
                  v387 = v21;
                  if (v367 == 10)
                  {
                    v155 = v24;
                    v156 = v22;
                    v157 = v23;
                    if (*(v48 + 24) != v31)
                    {
                      v158 = (*(v48 + 120) + 8);
                      v159 = v48;
                      v160 = *(v48 + 48);
                      do
                      {
                        v161 = v158;
                        v162 = *v158;
                        v158 = (*v158 + 2);
                      }

                      while (v162);
                      v163 = gpc_malloc(0x18uLL);
                      *v161 = v163;
                      *v163 = v160;
                      v163[1] = v31;
                      v163[2] = 0.0;
                      v48 = v159;
                      ++**(v159 + 120);
                    }

                    v164 = v48;
                    new_tristrip(&v393, v48, *(v48 + 48), v31);
                    v48 = v164;
                    v23 = v157;
                    v22 = v156;
                    v24 = v155;
                  }

                  v106 = v48;
                  v103 = v24;
                  v104 = v22;
                  v105 = v23;
                  v165 = *(v19 + 120);
                  do
                  {
                    v166 = v165;
                    v165 = *(v165 + 16);
                  }

                  while (v165);
                  v167 = gpc_malloc(0x18uLL);
                  *(v166 + 16) = v167;
                  *v167 = v75;
                  v167[1] = v31;
                  v167[2] = 0.0;
                  ++**(v19 + 120);
                  *(v19 + 112) = 0;
                  goto LABEL_220;
                case 14:
                  v110 = v48;
                  v371 = v24;
                  v111 = v22;
                  v112 = v21;
                  v113 = v23;
                  v114 = (*(v19 + 120) + 8);
                  do
                  {
                    v115 = v114;
                    v116 = *v114;
                    v114 = (*v114 + 2);
                  }

                  while (v116);
                  v117 = gpc_malloc(0x18uLL);
                  *v115 = v117;
                  *v117 = v75;
                  v117[1] = v31;
                  v117[2] = 0.0;
                  ++**(v19 + 120);
                  *(v19 + 112) = 0;
                  v367 = 14;
                  v23 = v113;
                  v21 = v112;
                  v22 = v111;
                  v24 = v371;
                  v48 = v110;
                  goto LABEL_201;
              }
            }

            else
            {
              if (v74 > 4)
              {
                if (v74 == 5)
                {
                  *(v19 + 112) = *(v48 + 112);
                  if (v367 == 10)
                  {
                    if (*(v48 + 24) == v31)
                    {
                      v77 = v24;
                      v78 = v22;
                      v79 = v21;
                      v80 = v23;
                      v128 = *(v19 + 120);
                      do
                      {
                        v129 = v128;
                        v128 = *(v128 + 16);
                      }

                      while (v128);
                      v130 = gpc_malloc(0x18uLL);
                      v48 = 0;
                      *(v129 + 16) = v130;
                      *v130 = v75;
                      v130[1] = v31;
                      v130[2] = 0.0;
                      ++**(v19 + 120);
                      v367 = 10;
                      goto LABEL_200;
                    }

                    if (*(v19 + 24) != v31)
                    {
                      v48 = 0;
                      v367 = 10;
                      goto LABEL_228;
                    }

                    v145 = v24;
                    v383 = v22;
                    v146 = v21;
                    v147 = v23;
                    v174 = (*(v48 + 120) + 8);
                    v175 = v48;
                    v176 = *(v48 + 48);
                    do
                    {
                      v177 = v174;
                      v178 = *v174;
                      v174 = (*v174 + 2);
                    }

                    while (v178);
                    v179 = gpc_malloc(0x18uLL);
                    *v177 = v179;
                    *v179 = v176;
                    v179[1] = v31;
                    v179[2] = 0.0;
                    ++**(v175 + 120);
                    v180 = *(v19 + 120);
                    do
                    {
                      v181 = v180;
                      v180 = *(v180 + 16);
                    }

                    while (v180);
                    v182 = gpc_malloc(0x18uLL);
                    v48 = 0;
                    *(v181 + 16) = v182;
                    *v182 = v75;
                    v182[1] = v31;
                    v182[2] = 0.0;
                    ++**(v19 + 120);
                    v25 = 1;
                    v367 = 10;
                  }

                  else
                  {
                    v145 = v24;
                    v383 = v22;
                    v146 = v21;
                    v147 = v23;
                    v168 = *(v19 + 120);
                    do
                    {
                      v169 = v168;
                      v168 = *(v168 + 16);
                    }

                    while (v168);
                    v170 = gpc_malloc(0x18uLL);
                    *(v169 + 16) = v170;
                    *v170 = v75;
                    v170[1] = v31;
                    v170[2] = 0.0;
                    v171 = *(v19 + 112);
                    ++**(v19 + 120);
                    do
                    {
                      v172 = v171;
                      v171 = *(v171 + 16);
                    }

                    while (v171);
                    v173 = gpc_malloc(0x18uLL);
                    v48 = 0;
                    *(v172 + 16) = v173;
                    *v173 = v75;
                    v173[1] = v31;
                    v173[2] = 0.0;
                    ++**(v19 + 112);
                    v25 = 1;
                  }
                }

                else
                {
                  if (v74 != 6)
                  {
                    v387 = v21;
                    if (v367 == 10)
                    {
                      v93 = v24;
                      v94 = v22;
                      v95 = v23;
                      if (*(v48 + 24) != v31)
                      {
                        v96 = (*(v48 + 120) + 8);
                        v97 = v48;
                        v98 = *(v48 + 48);
                        do
                        {
                          v99 = v96;
                          v100 = *v96;
                          v96 = (*v96 + 2);
                        }

                        while (v100);
                        v101 = gpc_malloc(0x18uLL);
                        *v99 = v101;
                        *v101 = v98;
                        v101[1] = v31;
                        v101[2] = 0.0;
                        v48 = v97;
                        ++**(v97 + 120);
                      }

                      v102 = v48;
                      new_tristrip(&v393, v48, *(v48 + 48), v31);
                      v48 = v102;
                      v23 = v95;
                      v22 = v94;
                      v24 = v93;
                    }

                    v103 = v24;
                    v104 = v22;
                    v105 = v23;
                    v106 = v48;
                    v107 = *(v48 + 112);
                    *(v19 + 112) = v107;
                    do
                    {
                      v108 = v107;
                      v107 = *(v107 + 16);
                    }

                    while (v107);
                    v109 = gpc_malloc(0x18uLL);
                    *(v108 + 16) = v109;
                    *v109 = v75;
                    v109[1] = v31;
                    v109[2] = 0.0;
                    ++**(v19 + 112);
LABEL_220:
                    v23 = v105;
                    v21 = v387;
                    v22 = v104;
                    v24 = v103;
                    v25 = 1;
                    v48 = v106;
                    goto LABEL_227;
                  }

                  v144 = v48;
                  v145 = v24;
                  v383 = v22;
                  v146 = v21;
                  v147 = v23;
                  v148 = (*(v19 + 120) + 8);
                  do
                  {
                    v149 = v148;
                    v150 = *v148;
                    v148 = (*v148 + 2);
                  }

                  while (v150);
                  v151 = gpc_malloc(0x18uLL);
                  *v149 = v151;
                  *v151 = v75;
                  v151[1] = v31;
                  v151[2] = 0.0;
                  ++**(v19 + 120);
                  v152 = *(v144 + 112);
                  *(v19 + 112) = v152;
                  if (v75 != *(v144 + 48))
                  {
                    do
                    {
                      v153 = v152;
                      v152 = *(v152 + 16);
                    }

                    while (v152);
                    v154 = gpc_malloc(0x18uLL);
                    *(v153 + 16) = v154;
                    *v154 = v75;
                    v154[1] = v31;
                    v154[2] = 0.0;
                    ++**(v144 + 112);
                  }

                  v25 = 1;
                  v48 = v19;
                }

                v23 = v147;
                v21 = v146;
                v22 = v383;
                v24 = v145;
                goto LABEL_227;
              }

              switch(v74)
              {
                case 1:
                  if (v75 != *(v48 + 48))
                  {
                    v118 = v24;
                    v119 = v22;
                    v120 = v21;
                    v121 = v23;
                    v122 = *(v19 + 120);
                    do
                    {
                      v123 = v122;
                      v122 = *(v122 + 16);
                    }

                    while (v122);
                    v124 = gpc_malloc(0x18uLL);
                    *(v123 + 16) = v124;
                    *v124 = v75;
                    v124[1] = v31;
                    v124[2] = 0.0;
                    ++**(v19 + 120);
                    v23 = v121;
                    v21 = v120;
                    v22 = v119;
                    v24 = v118;
                    v29 = v391;
                  }

                  v48 = 0;
                  *(v19 + 112) = 0;
                  v25 = 1;
                  break;
                case 2:
                  v77 = v24;
                  v78 = v22;
                  v79 = v21;
                  v80 = v23;
                  v134 = (*(v19 + 120) + 8);
                  do
                  {
                    v135 = v134;
                    v136 = *v134;
                    v134 = (*v134 + 2);
                  }

                  while (v136);
                  v137 = gpc_malloc(0x18uLL);
                  *v135 = v137;
                  *v137 = v75;
                  v137[1] = v31;
                  v137[2] = 0.0;
                  ++**(v19 + 120);
                  *(v19 + 112) = 0;
                  v48 = v19;
                  goto LABEL_200;
                case 4:
                  v76 = *(v48 + 112);
                  *(v19 + 112) = v76;
                  if (v75 == *(v48 + 48))
                  {
                    v48 = 0;
                    break;
                  }

                  v77 = v24;
                  v78 = v22;
                  v79 = v21;
                  v80 = v23;
                  do
                  {
                    v81 = v76;
                    v76 = *(v76 + 16);
                  }

                  while (v76);
                  v82 = gpc_malloc(0x18uLL);
                  v48 = 0;
                  *(v81 + 16) = v82;
                  *v82 = v75;
                  v82[1] = v31;
                  v82[2] = 0.0;
                  ++**(v19 + 112);
LABEL_200:
                  v23 = v80;
                  v21 = v79;
                  v22 = v78;
                  v24 = v77;
LABEL_201:
                  v25 = 1;
LABEL_227:
                  v29 = v391;
                  break;
              }
            }

LABEL_228:
            v19 = *(v19 + 136);
            if (!v19)
            {
              v363 = v48;
              v18 = v395;
              v183 = v395;
              v16 = v364;
              if (v395)
              {
                do
                {
                  v184 = *(v183 + 40);
                  if (v184 == v31)
                  {
                    v185 = *(v183 + 128);
                    v186 = *(v183 + 136);
                    v187 = v186;
                    if (v185)
                    {
                      *(v185 + 136) = v186;
                      v187 = v18;
                    }

                    if (v186)
                    {
                      *(v186 + 128) = v185;
                    }

                    if (v185)
                    {
                      if (*(v183 + 104) == 1 && *(v185 + 104) == 2)
                      {
                        *(v185 + 120) = *(v183 + 120);
                        *(v185 + 104) = 0;
                        v188 = *(v185 + 128);
                        if (v188)
                        {
                          if (*(v188 + 104) == 2)
                          {
                            *(v185 + 104) = 1;
                          }
                        }
                      }
                    }

                    v18 = v187;
                  }

                  else
                  {
                    if (v184 == v28)
                    {
                      v189 = *(v183 + 32);
                    }

                    else
                    {
                      v189 = *(v183 + 16) + *(v183 + 64) * (v28 - *(v183 + 24));
                    }

                    *(v183 + 56) = v189;
                  }

                  v183 = *(v183 + 136);
                }

                while (v183);
                v395 = v18;
                v19 = v18;
              }

              else
              {
                v19 = 0;
              }

              break;
            }
          }
        }

        v15 = v392;
        v20 = HIDWORD(v392);
        if (SHIDWORD(v392) < v392)
        {
          v366 = v25;
          v190 = v24;
          v191 = v22;
          v192 = v23;
          build_intersection_table(&v396, v18, v27);
          v193 = v396;
          if (v396)
          {
            v23 = v192;
            v22 = v191;
            v24 = v190;
            v25 = v366;
            while (1)
            {
              v195 = *v193;
              v194 = v193[1];
              v196 = *(*v193 + 76);
              if (v196)
              {
                v197 = *(v194 + 76);
                if (v197)
                {
                  v199 = (v195 + 112);
                  v198 = *(v195 + 112);
                  v201 = (v194 + 112);
                  v200 = *(v194 + 112);
                  v202 = *(v193 + 1);
                  if (*(v195 + 92))
                  {
                    goto LABEL_264;
                  }

                  v204 = 1;
                }

                else
                {
                  if (!*(v194 + 80))
                  {
                    goto LABEL_415;
                  }

                  v197 = 0;
                  v199 = (v195 + 112);
                  v198 = *(v195 + 112);
                  v201 = (v194 + 112);
                  v200 = *(v194 + 112);
                  v202 = *(v193 + 1);
                  v204 = *(v195 + 92) == 0;
                }
              }

              else
              {
                if (!*(v195 + 80))
                {
                  goto LABEL_415;
                }

                v197 = *(v194 + 76);
                if (v197)
                {
                  v199 = (v195 + 112);
                  v198 = *(v195 + 112);
                  v201 = (v194 + 112);
                  v200 = *(v194 + 112);
                  v202 = *(v193 + 1);
                  v203 = *(v194 + 92);
                  goto LABEL_268;
                }

                if (!*(v194 + 80))
                {
                  goto LABEL_415;
                }

                v199 = (v195 + 112);
                v198 = *(v195 + 112);
                v201 = (v194 + 112);
                v200 = *(v194 + 112);
                v202 = *(v193 + 1);
                v197 = *(v195 + 92);
                if (v197)
                {
                  v197 = 0;
LABEL_264:
                  v203 = *(v194 + 92);
LABEL_268:
                  v204 = v203 != 0;
                  goto LABEL_272;
                }

                v204 = 0;
              }

LABEL_272:
              v205 = *(v195 + 80);
              if (v205)
              {
                if (*(v195 + 96))
                {
                  v206 = *(v194 + 80);
                  if (v206)
                  {
                    goto LABEL_278;
                  }
                }

                else
                {
                  v206 = 1;
                }
              }

              else if (*(v194 + 80) || (v206 = *(v195 + 96)) != 0)
              {
LABEL_278:
                v206 = *(v194 + 96) != 0;
              }

              if (v391 < 2)
              {
                v22 = v197 != v204 && *(v194 + 80) != v206;
                v21 = v204 & v206;
                v23 = v196 != v204 && v205 != v206;
                if ((v197 ^ v196) == v204)
                {
                  v24 = 0;
                  goto LABEL_310;
                }

LABEL_308:
                v24 = (*(v194 + 80) ^ v205) != v206;
                goto LABEL_310;
              }

              if (v391 == 2)
              {
                v21 = v206 ^ v204;
                v207 = v197 ^ v204;
                v208 = *(v194 + 80) ^ v206;
                v22 = v208 ^ v207;
                v209 = v205 ^ v196;
                v23 = v209 ^ v204 ^ v206;
                v24 = v209 ^ v207 ^ v208;
                goto LABEL_310;
              }

              if (v391 != 3)
              {
                goto LABEL_310;
              }

              v22 = v197 != v204 || *(v194 + 80) != v206;
              v21 = (v204 | v206) & 1;
              v23 = v196 != v204 || v205 != v206;
              if ((v197 ^ v196) == v204)
              {
                goto LABEL_308;
              }

              v24 = 1;
LABEL_310:
              v212 = v31 + *(&v202 + 1);
              v213 = 4 * v23 + 8 * v24 + 2 * v22 + v21;
              if (v213 > 7)
              {
                if (v213 <= 10)
                {
                  if (v213 == 8)
                  {
                    v276 = v23;
                    v277 = v22;
                    v278 = v24;
                    new_tristrip(&v393, v193[1], *&v202, v31 + *(&v202 + 1));
                    v24 = v278;
                    v25 = v366;
                    v22 = v277;
                    v23 = v276;
                    *v199 = *(v194 + 112);
                  }

                  else if (v213 == 9 && v198 && v200)
                  {
                    v377 = *&v202;
                    v266 = v24;
                    v386 = v22;
                    v390 = v21;
                    v267 = v23;
                    v268 = (v198 + 8);
                    do
                    {
                      v269 = v268;
                      v270 = *v268;
                      v268 = (*v268 + 2);
                    }

                    while (v270);
                    v271 = gpc_malloc(0x18uLL);
                    *v269 = v271;
                    *v271 = v377;
                    v271[1] = v212;
                    v271[2] = 0.0;
                    ++**v199;
                    new_tristrip(&v393, v194, v377, v212);
                    *v199 = *(v194 + 112);
                    v23 = v267;
                    goto LABEL_368;
                  }
                }

                else
                {
                  if (v213 == 11)
                  {
                    if (!v198)
                    {
                      goto LABEL_415;
                    }

                    v380 = v202;
                    v368 = v23;
                    v373 = v24;
                    v384 = v22;
                    v388 = v21;
                    v290 = (v198 + 8);
                    do
                    {
                      v291 = v290;
                      v292 = *v290;
                      v290 = (*v290 + 2);
                    }

                    while (v292);
                    v293 = gpc_malloc(0x18uLL);
                    *v291 = v293;
                    *v293 = v380;
                    v293[1] = v212;
                    v293[2] = 0.0;
                    ++**v199;
                    v294 = v194;
                    do
                    {
                      v294 = *(v294 + 136);
                      v295 = *(v294 + 112);
                    }

                    while (!v295);
                    do
                    {
                      v296 = v295;
                      v295 = *(v295 + 16);
                    }

                    while (v295);
                    v297 = *(v294 + 16) + *(v294 + 64) * (v212 - *(v294 + 24));
                    v298 = gpc_malloc(0x18uLL);
                    *(v296 + 16) = v298;
                    *v298 = v297;
                    v298[1] = v212;
                    v298[2] = 0.0;
                    ++**(v294 + 112);
                    v289 = *v199;
                    goto LABEL_385;
                  }

                  if (v213 == 13)
                  {
                    if (!v200)
                    {
                      goto LABEL_415;
                    }

                    v382 = v202;
                    v368 = v23;
                    v373 = v24;
                    v384 = v22;
                    v388 = v21;
                    do
                    {
                      v321 = v200;
                      v200 = *(v200 + 16);
                    }

                    while (v200);
                    v322 = gpc_malloc(0x18uLL);
                    *(v321 + 16) = v322;
                    *v322 = v382;
                    v322[1] = v212;
                    v322[2] = 0.0;
                    ++**v201;
                    v254 = v195;
                    do
                    {
                      v254 = *(v254 + 128);
                      v323 = *(v254 + 112);
                    }

                    while (!v323);
                    v324 = (v323 + 8);
                    do
                    {
                      v325 = v324;
                      v326 = *v324;
                      v324 = (*v324 + 2);
                    }

                    while (v326);
                    v264 = *(v254 + 16) + *(v254 + 64) * (v212 - *(v254 + 24));
                    v265 = gpc_malloc(0x18uLL);
                    *v325 = v265;
LABEL_413:
                    *v265 = v264;
                    v265[1] = v212;
                    v265[2] = 0.0;
                    ++**(v254 + 112);
                    *v199 = *v201;
                    *v201 = 0;
                    goto LABEL_414;
                  }

                  if (v213 == 14 && v198 && v200)
                  {
                    v375 = v202;
                    v232 = v24;
                    v385 = v22;
                    v389 = v21;
                    v369 = v23;
                    do
                    {
                      v233 = v198;
                      v198 = *(v198 + 16);
                    }

                    while (v198);
                    v234 = gpc_malloc(0x18uLL);
                    *(v233 + 16) = v234;
                    *v234 = v375;
                    v234[1] = v212;
                    v234[2] = 0.0;
                    ++**v199;
                    v235 = (*v201 + 2);
                    do
                    {
                      v236 = v235;
                      v237 = *v235;
                      v235 = (*v235 + 2);
                    }

                    while (v237);
                    v238 = gpc_malloc(0x18uLL);
                    *v236 = v238;
                    *v238 = v375;
                    v238[1] = v212;
                    v238[2] = 0.0;
                    ++**v201;
                    *v199 = 0;
                    *v201 = 0;
                    v239 = v195;
                    do
                    {
                      v239 = *(v239 + 128);
                      v240 = *(v239 + 112);
                    }

                    while (!v240);
                    v241 = (v240 + 8);
                    do
                    {
                      v242 = v241;
                      v243 = *v241;
                      v241 = (*v241 + 2);
                    }

                    while (v243);
                    v244 = *(v239 + 16) + *(v239 + 64) * (v212 - *(v239 + 24));
                    v245 = gpc_malloc(0x18uLL);
                    *v242 = v245;
                    *v245 = v244;
                    v245[1] = v212;
                    v245[2] = 0.0;
                    ++**(v239 + 112);
                    new_tristrip(&v393, v239, v244, v212);
                    v246 = v194;
                    do
                    {
                      v246 = *(v246 + 136);
                      v247 = *(v246 + 112);
                    }

                    while (!v247);
                    do
                    {
                      v248 = v247;
                      v247 = *(v247 + 16);
                    }

                    while (v247);
                    v249 = *(v246 + 16) + *(v246 + 64) * (v212 - *(v246 + 24));
                    v250 = gpc_malloc(0x18uLL);
                    *(v248 + 16) = v250;
                    *v250 = v249;
                    v250[1] = v212;
                    v250[2] = 0.0;
                    ++**(v246 + 112);
                    v251 = *(v239 + 112);
                    *(v246 + 112) = v251;
                    do
                    {
                      v252 = v251;
                      v251 = *(v251 + 16);
                    }

                    while (v251);
                    v253 = gpc_malloc(0x18uLL);
                    *(v252 + 16) = v253;
                    *v253 = v249;
                    v253[1] = v212;
                    v253[2] = 0.0;
                    ++**(v246 + 112);
                    v23 = v369;
                    v22 = v385;
                    v21 = v389;
                    v24 = v232;
                  }
                }
              }

              else if (v213 <= 3)
              {
                if (v213 == 1)
                {
                  if (v198 && v200)
                  {
                    v378 = v202;
                    v266 = v24;
                    v386 = v22;
                    v390 = v21;
                    v370 = v23;
                    v272 = (v198 + 8);
                    do
                    {
                      v273 = v272;
                      v274 = *v272;
                      v272 = (*v272 + 2);
                    }

                    while (v274);
                    v275 = gpc_malloc(0x18uLL);
                    *v273 = v275;
                    *v275 = v378;
                    v275[1] = v212;
                    v275[2] = 0.0;
                    ++**v199;
                    *v199 = 0;
                    *v201 = 0;
                    v23 = v370;
LABEL_368:
                    v22 = v386;
                    v21 = v390;
                    v24 = v266;
                    v25 = v366;
                  }
                }

                else if (v213 == 2 && v200)
                {
                  v388 = v21;
                  v254 = v193[1];
                  do
                  {
                    v254 = *(v254 + 136);
                  }

                  while (!*(v254 + 112));
                  v376 = v202;
                  v368 = v23;
                  v373 = v24;
                  v384 = v22;
                  v255 = *(v254 + 64);
                  v256 = *(v254 + 16);
                  v257 = v212 - *(v254 + 24);
                  v258 = (v200 + 8);
                  do
                  {
                    v259 = v258;
                    v260 = *v258;
                    v258 = (*v258 + 2);
                  }

                  while (v260);
                  v261 = gpc_malloc(0x18uLL);
                  *v259 = v261;
                  *v261 = v376;
                  v261[1] = v212;
                  v261[2] = 0.0;
                  ++**v201;
                  v262 = *(v254 + 112);
                  do
                  {
                    v263 = v262;
                    v262 = *(v262 + 16);
                  }

                  while (v262);
                  v264 = v256 + v255 * v257;
                  v265 = gpc_malloc(0x18uLL);
                  *(v263 + 16) = v265;
                  goto LABEL_413;
                }
              }

              else
              {
                if (v213 == 4)
                {
                  if (!v198)
                  {
                    goto LABEL_415;
                  }

                  v379 = v202;
                  v388 = v21;
                  v279 = *v193;
                  do
                  {
                    v279 = *(v279 + 128);
                    v280 = *(v279 + 112);
                  }

                  while (!v280);
                  v368 = v23;
                  v373 = v24;
                  v384 = v22;
                  v281 = (v280 + 8);
                  do
                  {
                    v282 = v281;
                    v283 = *v281;
                    v281 = (*v281 + 2);
                  }

                  while (v283);
                  v284 = *(v279 + 16) + *(v279 + 64) * (v212 - *(v279 + 24));
                  v285 = gpc_malloc(0x18uLL);
                  *v282 = v285;
                  *v285 = v284;
                  v285[1] = v212;
                  v285[2] = 0.0;
                  ++**(v279 + 112);
                  v286 = *v199;
                  do
                  {
                    v287 = v286;
                    v286 = *(v286 + 2);
                  }

                  while (v286);
                  v288 = gpc_malloc(0x18uLL);
                  *(v287 + 2) = v288;
                  *v288 = v379;
                  v288[1] = v212;
                  v288[2] = 0.0;
                  v289 = *v199;
                  ++**v199;
LABEL_385:
                  *v201 = v289;
                  *v199 = 0;
                  goto LABEL_414;
                }

                if (v213 != 6)
                {
                  v214 = *v193;
                  if (v213 != 7)
                  {
                    goto LABEL_415;
                  }

                  do
                  {
                    v214 = *(v214 + 128);
                    v215 = *(v214 + 112);
                  }

                  while (!v215);
                  v374 = *&v202;
                  v368 = v23;
                  v373 = v24;
                  v384 = v22;
                  v388 = v21;
                  v216 = (v215 + 8);
                  do
                  {
                    v217 = v216;
                    v218 = *v216;
                    v216 = (*v216 + 2);
                  }

                  while (v218);
                  v219 = *(v214 + 16) + *(v214 + 64) * (v212 - *(v214 + 24));
                  v220 = gpc_malloc(0x18uLL);
                  *v217 = v220;
                  *v220 = v219;
                  v220[1] = v212;
                  v220[2] = 0.0;
                  ++**(v214 + 112);
                  v221 = v194;
                  do
                  {
                    v221 = *(v221 + 136);
                    v222 = *(v221 + 112);
                  }

                  while (!v222);
                  do
                  {
                    v223 = v222;
                    v222 = *(v222 + 16);
                  }

                  while (v222);
                  v224 = *(v221 + 16) + *(v221 + 64) * (v212 - *(v221 + 24));
                  v225 = gpc_malloc(0x18uLL);
                  *(v223 + 16) = v225;
                  *v225 = v224;
                  v225[1] = v212;
                  v225[2] = 0.0;
                  ++**(v221 + 112);
                  new_tristrip(&v393, v214, v219, v212);
                  v226 = *(v214 + 112);
                  *v201 = v226;
                  do
                  {
                    v227 = v226;
                    v226 = *(v226 + 16);
                  }

                  while (v226);
                  v228 = gpc_malloc(0x18uLL);
                  *(v227 + 16) = v228;
                  *v228 = v374;
                  v228[1] = v212;
                  v228[2] = 0.0;
                  ++**v201;
                  new_tristrip(&v393, v195, v374, v212);
                  v229 = *(v195 + 112);
                  *(v221 + 112) = v229;
                  do
                  {
                    v230 = v229;
                    v229 = *(v229 + 16);
                  }

                  while (v229);
                  v231 = gpc_malloc(0x18uLL);
                  *(v230 + 16) = v231;
                  *v231 = v224;
LABEL_404:
                  v231[1] = v212;
                  v231[2] = 0.0;
                  ++**(v221 + 112);
LABEL_414:
                  v23 = v368;
                  v24 = v373;
                  v22 = v384;
                  v21 = v388;
                  goto LABEL_415;
                }

                if (v198 && v200)
                {
                  v381 = *&v202;
                  v368 = v23;
                  v373 = v24;
                  v384 = v22;
                  v388 = v21;
                  do
                  {
                    v299 = v198;
                    v198 = *(v198 + 16);
                  }

                  while (v198);
                  v300 = gpc_malloc(0x18uLL);
                  *(v299 + 16) = v300;
                  *v300 = v381;
                  v300[1] = v212;
                  v300[2] = 0.0;
                  ++**v199;
                  v301 = (*v201 + 2);
                  do
                  {
                    v302 = v301;
                    v303 = *v301;
                    v301 = (*v301 + 2);
                  }

                  while (v303);
                  v304 = gpc_malloc(0x18uLL);
                  *v302 = v304;
                  *v304 = v381;
                  v304[1] = v212;
                  v304[2] = 0.0;
                  ++**v201;
                  v305 = v195;
                  do
                  {
                    v305 = *(v305 + 128);
                    v306 = *(v305 + 112);
                  }

                  while (!v306);
                  v307 = (v306 + 8);
                  do
                  {
                    v308 = v307;
                    v309 = *v307;
                    v307 = (*v307 + 2);
                  }

                  while (v309);
                  v310 = *(v305 + 16) + *(v305 + 64) * (v212 - *(v305 + 24));
                  v311 = gpc_malloc(0x18uLL);
                  *v308 = v311;
                  *v311 = v310;
                  v311[1] = v212;
                  v311[2] = 0.0;
                  ++**(v305 + 112);
                  new_tristrip(&v393, v305, v310, v212);
                  v221 = v194;
                  do
                  {
                    v221 = *(v221 + 136);
                    v312 = *(v221 + 112);
                  }

                  while (!v312);
                  do
                  {
                    v313 = v312;
                    v312 = *(v312 + 16);
                  }

                  while (v312);
                  v314 = *(v221 + 16) + *(v221 + 64) * (v212 - *(v221 + 24));
                  v315 = gpc_malloc(0x18uLL);
                  *(v313 + 16) = v315;
                  *v315 = v314;
                  v315[1] = v212;
                  v315[2] = 0.0;
                  ++**(v221 + 112);
                  v316 = *(v305 + 112);
                  *v201 = v316;
                  do
                  {
                    v317 = v316;
                    v316 = *(v316 + 16);
                  }

                  while (v316);
                  v318 = gpc_malloc(0x18uLL);
                  *(v317 + 16) = v318;
                  *v318 = v381;
                  v318[1] = v212;
                  v318[2] = 0.0;
                  ++**v201;
                  new_tristrip(&v393, v195, v381, v212);
                  v319 = *(v195 + 112);
                  *(v221 + 112) = v319;
                  do
                  {
                    v320 = v319;
                    v319 = *(v319 + 16);
                  }

                  while (v319);
                  v231 = gpc_malloc(0x18uLL);
                  *(v320 + 16) = v231;
                  *v231 = v314;
                  goto LABEL_404;
                }
              }

LABEL_415:
              if (*(v195 + 76))
              {
                *(v194 + 92) = *(v194 + 92) == 0;
              }

              if (*(v194 + 76))
              {
                *(v195 + 92) = *(v195 + 92) == 0;
              }

              if (*(v195 + 80))
              {
                *(v194 + 96) = *(v194 + 96) == 0;
              }

              if (*(v194 + 80))
              {
                *(v195 + 96) = *(v195 + 96) == 0;
              }

              v327 = *(v195 + 128);
              v328 = *(v194 + 136);
              if (v328)
              {
                *(v328 + 128) = v195;
              }

              if (*(v195 + 100) == 1)
              {
                while (1)
                {
                  v327 = *(v327 + 128);
                  if (!v327)
                  {
                    break;
                  }

                  if (*(v327 + 76) || *(v327 + 80) || *(v327 + 100) == 1)
                  {
                    goto LABEL_432;
                  }
                }

LABEL_433:
                v327 = 0;
                v330 = v395;
                *(v194 + 136) = v395;
                v329 = *(v195 + 136);
                v395 = v329;
                goto LABEL_434;
              }

              if (!v327)
              {
                goto LABEL_433;
              }

LABEL_432:
              *(v194 + 136) = *(v327 + 136);
              v329 = *(v195 + 136);
              *(v327 + 136) = v329;
              v330 = *(v194 + 136);
LABEL_434:
              *(v329 + 128) = v327;
              *(v330 + 128) = v194;
              *(v195 + 136) = v328;
              v193 = v193[4];
              if (!v193)
              {
                goto LABEL_438;
              }
            }
          }

          v23 = v192;
          v22 = v191;
          v24 = v190;
          v25 = v366;
LABEL_438:
          v331 = v395;
          if (v395)
          {
            v332 = v395;
            v16 = v364;
            v29 = v391;
            do
            {
              v333 = *(v331 + 136);
              v334 = *(v331 + 152);
              v335 = *(v331 + 112);
              if (*(v331 + 40) != v28 || v334 == 0)
              {
                *(v331 + 120) = v335;
                *(v331 + 104) = *(v331 + 100);
                *(v331 + 84) = *(v331 + 76);
                *(v331 + 48) = *(v331 + 56);
                v18 = v332;
              }

              else
              {
                *(v334 + 120) = v335;
                *(v334 + 104) = *(v331 + 100);
                *(v334 + 84) = *(v331 + 76);
                *(v334 + 88) = *(v331 + 80);
                v337 = *(v331 + 128);
                v18 = v334;
                if (v337)
                {
                  *(v337 + 136) = v334;
                  v18 = v332;
                }

                if (v333)
                {
                  *(v333 + 128) = v334;
                }

                *(v334 + 128) = v337;
                *(v334 + 136) = v333;
                v332 = v18;
              }

              *(v331 + 112) = 0;
              v331 = v333;
            }

            while (v333);
          }

          else
          {
            v18 = 0;
            v16 = v364;
            v29 = v391;
          }

          v395 = v18;
          v15 = v392;
          v20 = HIDWORD(v392);
          v19 = v18;
        }
      }

      while (v20 < v15);
      v338 = v393;
      v339 = v362;
      *(v362 + 8) = 0;
      if (v338)
      {
        v340 = 0;
        v341 = v338;
        do
        {
          if (*v341 > 2)
          {
            ++v340;
          }

          v341 = *(v341 + 3);
        }

        while (v341);
        *v362 = v340;
        if (v340)
        {
          v342 = 0;
          *(v362 + 8) = gpc_malloc(16 * v340);
          do
          {
            v343 = v338;
            v338 = *(v338 + 3);
            v344 = *v343;
            if (v344 < 3)
            {
              v352 = *(v343 + 1);
              if (v352)
              {
                do
                {
                  v353 = v352[2];
                  gpc_free(v352);
                  v352 = v353;
                }

                while (v353);
              }

              v354 = *(v343 + 2);
              if (v354)
              {
                do
                {
                  v355 = v354[2];
                  gpc_free(v354);
                  v354 = v355;
                }

                while (v355);
              }
            }

            else
            {
              *(*(v362 + 8) + 16 * v342) = v344;
              *(*(v362 + 8) + 16 * v342 + 8) = gpc_malloc(16 * v344);
              v345 = *(v343 + 1);
              v346 = *(v343 + 2);
              v347 = v345 != 0;
              v348 = v346 != 0;
              if (v345 != 0 || v346 != 0)
              {
                v349 = 0;
                do
                {
                  if (v347)
                  {
                    v350 = *(v345 + 16);
                    *(*(*(v362 + 8) + 16 * v342 + 8) + 16 * v349++) = *v345;
                    gpc_free(v345);
                    v345 = v350;
                    if (v348)
                    {
                      goto LABEL_470;
                    }
                  }

                  else
                  {
                    v345 = 0;
                    if (v348)
                    {
LABEL_470:
                      v351 = *(v346 + 16);
                      *(*(*(v362 + 8) + 16 * v342 + 8) + 16 * v349++) = *v346;
                      gpc_free(v346);
                      v346 = v351;
                      goto LABEL_471;
                    }
                  }

                  v346 = 0;
LABEL_471:
                  v347 = v345 != 0;
                  v348 = v346 != 0;
                }

                while (v345 | v346);
              }

              ++v342;
              v16 = v364;
            }

            gpc_free(v343);
          }

          while (v338);
        }

LABEL_481:
        v356 = v396;
        if (v396)
        {
          do
          {
            v357 = v356[4];
            gpc_free(v356);
            v356 = v357;
          }

          while (v357);
        }

        v358 = v394;
        if (v394)
        {
          do
          {
            v359 = v358[2];
            gpc_free(v358);
            v358 = v359;
          }

          while (v359);
        }

        if (v360)
        {
          gpc_free(v360);
        }

        if (v361)
        {
          gpc_free(v361);
        }

        if (v16)
        {
          v17 = v16;
          goto LABEL_491;
        }

        return;
      }
    }

    *v339 = 0;
    goto LABEL_481;
  }

  *v362 = 0;
  *(v362 + 8) = 0;
  if (v13)
  {
    gpc_free(v13);
  }

  if (v14)
  {
    v17 = v14;
LABEL_491:

    gpc_free(v17);
  }
}