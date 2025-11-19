void specialized Interpreter.Iterator.iterate<A>()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v80[0] = *(v4 + 40);
  v80[1] = v6;
  v81[0] = *(v4 + 72);
  *(v81 + 9) = *(v4 + 81);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  while (1)
  {
    v11 = *v9;
    if (v3 < *v8)
    {
      v12 = (*v7 + v10);
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v80);
    }

    v7 = (v11 + 32);
    v8 = (v11 + 44);
    v9 = (v11 + 48);
    v5 = v11;
  }

  v13 = *v5;
  if (!v13)
  {
    goto LABEL_66;
  }

  v14 = (v13 + 24 * *v12);
  v15 = *v14;
  v16 = (*v14 + 56);
  v17 = *(*v14 + 72);
  v78[0] = *v16;
  v78[1] = v17;
  v79[0] = *(v15 + 88);
  *(v79 + 9) = *(v15 + 97);
  v18 = (v15 + 72);
  v19 = (v15 + 84);
  v20 = (v15 + 104);
  while (1)
  {
    v21 = *v20;
    if (*v19 > 0x59u)
    {
      v22 = *v18;
      if ((*(v22 + 716) & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x59u, 1, v78);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v16 = v21;
  }

  v23 = *v16;
  if (!v23)
  {
    goto LABEL_67;
  }

  v24 = v23 + 24 * *(v22 + 712);
  v25 = *(*v24 + 64);
  if (!*(*v24 + 64))
  {
    v42 = v76;
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v1 + 184), *(v1 + 184), v76);
LABEL_63:
    *a1 = *v42;
    *(a1 + 8) = *(v42 + 8);
    *(a1 + 24) = *(v42 + 24);
    return;
  }

  v67 = a1;
  v69 = v1;
  v28 = *(v1 + 72);
  v76[0] = *(v1 + 56);
  v27 = *&v76[0];
  v76[1] = v28;
  *(v77 + 9) = *(v1 + 97);
  v30 = (v1 + 88);
  v29 = *(v1 + 88);
  v31 = *(v1 + 88);
  v33 = (v1 + 100);
  v32 = *(v1 + 100);
  v26 = v1 + 56;
  v36 = *(v1 + 104);
  v34 = (v1 + 104);
  v35 = v36;
  v77[0] = v31;
  v70 = *(v26 + 128);
  v37 = *&v76[0];
  v38 = v29;
  v39 = v36;
  v68 = v25;
  if (v3 >= v32)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v40 = (v38 + v10);
    if ((v40[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v39)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v76);
      }

      v37 = *v39;
      v38 = v39[4];
      v41 = *(v39 + 11);
      v39 = v39[6];
    }

    while (v3 >= v41);
  }

  if (!v37)
  {
    goto LABEL_68;
  }

  v43 = v37 + 24 * *v40;
  v44 = *(*v43 + 136);
  v45 = *(*v43 + 144);
  if (v3 >= v32)
  {
    goto LABEL_26;
  }

  while ((*(v29 + v10 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v35)
      {
        v47 = *(*v43 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v76);
      }

      v27 = *v35;
      v29 = v35[4];
      v46 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v3 >= v46);
  }

  if (!v27)
  {
    goto LABEL_69;
  }

  v48 = v27 + 24 * *(v29 + 8 * v3);
  v42 = *(v26 + 128);
  v49 = *(*v48 + 136);
  if (!v49)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v44)
  {
    v50 = v45 - v44;
  }

  else
  {
    v50 = 0;
  }

  if (v50 < &v70[-v49])
  {
    __break(1u);
    goto LABEL_65;
  }

  v51 = specialized RandomAccessCollection<>.distance(from:to:)(&v70[-v49], v50, v44, v45);
  if (v51 >= v68)
  {
    v52 = v68;
  }

  else
  {
    v52 = v51;
  }

  v53 = &v70[v52];
  *(v69 + 184) = &v70[v52];
  v54 = *(v26 + 16);
  v74[0] = *v26;
  v74[1] = v54;
  v75[0] = *(v26 + 32);
  *(v75 + 9) = *(v26 + 41);
  v55 = v34;
  v56 = v33;
  v57 = v30;
  for (i = v26; ; i = v59)
  {
    v59 = *v55;
    if (v3 < *v56)
    {
      v60 = (*v57 + v10);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v57 = (v59 + 32);
    v56 = (v59 + 44);
    v55 = (v59 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v61 = *i + 24 * *v60;
  v62 = *(*v61 + 136);
  if (v62)
  {
    if (v53 >= v62 && v53 < *(*v61 + 144))
    {
      goto LABEL_60;
    }
  }

  v64 = *(v26 + 16);
  v72[0] = *v26;
  v72[1] = v64;
  v73[0] = *(v26 + 32);
  *(v73 + 9) = *(v26 + 41);
  while (1)
  {
    v65 = *v34;
    if (v3 < *v33)
    {
      v66 = (*v30 + v10);
      if ((v66[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v65)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v72);
    }

    v30 = (v65 + 32);
    v33 = (v65 + 44);
    v34 = (v65 + 48);
    v26 = v65;
  }

  if (*v26)
  {
    *(*(*v26 + 24 * *v66) + 41) = 1;
LABEL_60:
    if (v52 <= 39)
    {
      specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v70, &v70[v52], v71);
      v42 = v71;
    }

    a1 = v67;
    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
}

{
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v80[0] = *(v4 + 40);
  v80[1] = v6;
  v81[0] = *(v4 + 72);
  *(v81 + 9) = *(v4 + 81);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  while (1)
  {
    v11 = *v9;
    if (v3 < *v8)
    {
      v12 = (*v7 + v10);
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v80);
    }

    v7 = (v11 + 32);
    v8 = (v11 + 44);
    v9 = (v11 + 48);
    v5 = v11;
  }

  v13 = *v5;
  if (!v13)
  {
    goto LABEL_66;
  }

  v14 = (v13 + 24 * *v12);
  v15 = *v14;
  v16 = (*v14 + 56);
  v17 = *(*v14 + 72);
  v78[0] = *v16;
  v78[1] = v17;
  v79[0] = *(v15 + 88);
  *(v79 + 9) = *(v15 + 97);
  v18 = (v15 + 72);
  v19 = (v15 + 84);
  v20 = (v15 + 104);
  while (1)
  {
    v21 = *v20;
    if (*v19 > 0x54u)
    {
      v22 = *v18;
      if ((*(v22 + 676) & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x54u, 1, v78);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v16 = v21;
  }

  v23 = *v16;
  if (!v23)
  {
    goto LABEL_67;
  }

  v24 = v23 + 24 * *(v22 + 672);
  v25 = *(*v24 + 64);
  if (!*(*v24 + 64))
  {
    v42 = v76;
    specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(*(v1 + 184), *(v1 + 184), v76);
LABEL_63:
    *a1 = *v42;
    *(a1 + 8) = *(v42 + 8);
    *(a1 + 24) = *(v42 + 24);
    return;
  }

  v67 = a1;
  v69 = v1;
  v28 = *(v1 + 72);
  v76[0] = *(v1 + 56);
  v27 = *&v76[0];
  v76[1] = v28;
  *(v77 + 9) = *(v1 + 97);
  v30 = (v1 + 88);
  v29 = *(v1 + 88);
  v31 = *(v1 + 88);
  v33 = (v1 + 100);
  v32 = *(v1 + 100);
  v26 = v1 + 56;
  v36 = *(v1 + 104);
  v34 = (v1 + 104);
  v35 = v36;
  v77[0] = v31;
  v70 = *(v26 + 128);
  v37 = *&v76[0];
  v38 = v29;
  v39 = v36;
  v68 = v25;
  if (v3 >= v32)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v40 = (v38 + v10);
    if ((v40[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_18:
      if (!v39)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v76);
      }

      v37 = *v39;
      v38 = v39[4];
      v41 = *(v39 + 11);
      v39 = v39[6];
    }

    while (v3 >= v41);
  }

  if (!v37)
  {
    goto LABEL_68;
  }

  v43 = v37 + 24 * *v40;
  v44 = *(*v43 + 136);
  v45 = *(*v43 + 144);
  if (v3 >= v32)
  {
    goto LABEL_26;
  }

  while ((*(v29 + v10 + 4) & 1) != 0)
  {
    do
    {
LABEL_26:
      if (!v35)
      {
        v47 = *(*v43 + 136);
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v76);
      }

      v27 = *v35;
      v29 = v35[4];
      v46 = *(v35 + 11);
      v35 = v35[6];
    }

    while (v3 >= v46);
  }

  if (!v27)
  {
    goto LABEL_69;
  }

  v48 = v27 + 24 * *(v29 + 8 * v3);
  v42 = *(v26 + 128);
  v49 = *(*v48 + 136);
  if (!v49)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v44)
  {
    v50 = v45 - v44;
  }

  else
  {
    v50 = 0;
  }

  if (v50 < &v70[-v49])
  {
    __break(1u);
    goto LABEL_65;
  }

  v51 = specialized RandomAccessCollection<>.distance(from:to:)(&v70[-v49], v50, v44, v45);
  if (v51 >= v68)
  {
    v52 = v68;
  }

  else
  {
    v52 = v51;
  }

  v53 = &v70[v52];
  *(v69 + 184) = &v70[v52];
  v54 = *(v26 + 16);
  v74[0] = *v26;
  v74[1] = v54;
  v75[0] = *(v26 + 32);
  *(v75 + 9) = *(v26 + 41);
  v55 = v34;
  v56 = v33;
  v57 = v30;
  for (i = v26; ; i = v59)
  {
    v59 = *v55;
    if (v3 < *v56)
    {
      v60 = (*v57 + v10);
      if ((v60[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v59)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v57 = (v59 + 32);
    v56 = (v59 + 44);
    v55 = (v59 + 48);
  }

  if (!*i)
  {
    goto LABEL_70;
  }

  v61 = *i + 24 * *v60;
  v62 = *(*v61 + 136);
  if (v62)
  {
    if (v53 >= v62 && v53 < *(*v61 + 144))
    {
      goto LABEL_60;
    }
  }

  v64 = *(v26 + 16);
  v72[0] = *v26;
  v72[1] = v64;
  v73[0] = *(v26 + 32);
  *(v73 + 9) = *(v26 + 41);
  while (1)
  {
    v65 = *v34;
    if (v3 < *v33)
    {
      v66 = (*v30 + v10);
      if ((v66[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v65)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v72);
    }

    v30 = (v65 + 32);
    v33 = (v65 + 44);
    v34 = (v65 + 48);
    v26 = v65;
  }

  if (*v26)
  {
    *(*(*v26 + 24 * *v66) + 41) = 1;
LABEL_60:
    if (v52 <= 39)
    {
      specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v70, &v70[v52], v71);
      v42 = v71;
    }

    a1 = v67;
    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
}

{
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v80[0] = *(v4 + 40);
  v80[1] = v6;
  v81[0] = *(v4 + 72);
  *(v81 + 9) = *(v4 + 81);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  while (1)
  {
    v11 = *v9;
    if (v3 < *v8)
    {
      v12 = (*v7 + v10);
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v80);
    }

    v7 = (v11 + 32);
    v8 = (v11 + 44);
    v9 = (v11 + 48);
    v5 = v11;
  }

  v13 = *v5;
  if (!v13)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v14 = (v13 + 24 * *v12);
  v15 = *v14;
  v16 = (*v14 + 56);
  v17 = *(*v14 + 72);
  v78[0] = *v16;
  v78[1] = v17;
  v79[0] = *(v15 + 88);
  *(v79 + 9) = *(v15 + 97);
  v18 = (v15 + 72);
  v19 = (v15 + 84);
  v20 = (v15 + 104);
  while (1)
  {
    v21 = *v20;
    if (*v19 > 3u)
    {
      v22 = *v18;
      if ((*(v22 + 28) & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(3u, 1, v78);
    }

    v18 = (v21 + 16);
    v19 = (v21 + 28);
    v20 = (v21 + 48);
    v16 = v21;
  }

  v23 = *v16;
  if (!v23)
  {
    goto LABEL_69;
  }

  v24 = v23 + 24 * *(v22 + 24);
  v25 = *(*v24 + 64);
  if (*(*v24 + 64))
  {
    v68 = a1;
    v70 = v1;
    v28 = *(v1 + 56);
    v27 = v1 + 56;
    v26 = v28;
    v29 = *(v27 + 16);
    v76[0] = *v27;
    v76[1] = v29;
    *(v77 + 9) = *(v27 + 41);
    v31 = (v27 + 32);
    v33 = (v27 + 44);
    v32 = *(v27 + 44);
    v35 = (v27 + 48);
    v34 = *(v27 + 48);
    v77[0] = *(v27 + 32);
    v30 = *&v77[0];
    v71 = *(v27 + 128);
    v36 = v28;
    v37 = *&v77[0];
    v38 = v34;
    v69 = v25;
    if (v3 >= v32)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v39 = (v37 + v10);
      if ((v39[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_18:
        if (!v38)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v76);
        }

        v36 = *v38;
        v37 = v38[4];
        v40 = *(v38 + 11);
        v38 = v38[6];
      }

      while (v3 >= v40);
    }

    if (!v36)
    {
      goto LABEL_70;
    }

    v44 = v36 + 24 * *v39;
    v45 = *(*v44 + 136);
    v46 = *(*v44 + 144);
    if (v3 >= v32)
    {
      goto LABEL_26;
    }

    while ((*(v30 + v10 + 4) & 1) != 0)
    {
      do
      {
LABEL_26:
        if (!v34)
        {
          v48 = *(*v44 + 136);
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v76);
        }

        v26 = *v34;
        v30 = v34[4];
        v47 = *(v34 + 11);
        v34 = v34[6];
      }

      while (v3 >= v47);
    }

    if (!v26)
    {
      goto LABEL_71;
    }

    v49 = *(*(v26 + 24 * *(v30 + 8 * v3)) + 136);
    if (v49)
    {
      if (v45)
      {
        v50 = v46 - v45;
      }

      else
      {
        v50 = 0;
      }

      if (v50 >= v71 - v49)
      {
        v51 = specialized RandomAccessCollection<>.distance(from:to:)(v71 - v49, v50, v45, v46);
        if (v51 >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = v51;
        }

        v53 = v71 + v52;
        *(v70 + 184) = v71 + v52;
        v54 = *(v27 + 16);
        v74[0] = *v27;
        v74[1] = v54;
        v75[0] = *(v27 + 32);
        *(v75 + 9) = *(v27 + 41);
        v55 = (v27 + 48);
        v56 = (v27 + 44);
        v57 = (v27 + 32);
        for (i = v27; ; i = v59)
        {
          v59 = *v55;
          if (v3 < *v56)
          {
            v60 = (*v57 + v10);
            if ((v60[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v59)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
          }

          v57 = (v59 + 32);
          v56 = (v59 + 44);
          v55 = (v59 + 48);
        }

        if (*i)
        {
          v61 = *i + 24 * *v60;
          v62 = *(*v61 + 136);
          if (v62)
          {
            if (v53 >= v62 && v53 < *(*v61 + 144))
            {
              goto LABEL_60;
            }
          }

          v64 = *(v27 + 16);
          v72[0] = *v27;
          v72[1] = v64;
          v73[0] = *(v27 + 32);
          *(v73 + 9) = *(v27 + 41);
          while (1)
          {
            v65 = *v35;
            if (v3 < *v33)
            {
              v66 = (*v31 + v10);
              if ((v66[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v65)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v72);
            }

            v31 = (v65 + 32);
            v33 = (v65 + 44);
            v35 = (v65 + 48);
            v27 = v65;
          }

          if (*v27)
          {
            *(*(*v27 + 24 * *v66) + 41) = 1;
LABEL_60:
            if (v52 >= 36)
            {
              v67 = v71[1];
              *v68 = *v71;
              *(v68 + 16) = v67;
              *(v68 + 32) = *(v71 + 8);
              return;
            }

            v42 = v68;
            v41 = v71;
            v43 = v71 + v52;
            goto LABEL_62;
          }

LABEL_73:
          __break(1u);
          return;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_68;
  }

  v41 = *(v1 + 184);
  v42 = a1;
  v43 = v41;
LABEL_62:

  specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v41, v43, v42);
}

char *protocol witness for static Attachment.construct(attachment:from:) in conformance Address@<X0>(char **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (a1 && a2 - a1 >= 8)
  {
    result = *a1;
  }

  else
  {
    result = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance Address(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *))
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  result = a2(&v4, &v5);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

char *protocol witness for static Attachment.construct(attachment:from:) in conformance T_ValueDefinition@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a1 && a2 - a1 >= 20)
  {
    result = *a1;
    LODWORD(v7) = a1[1];
    LODWORD(v6) = a1[2];
    LODWORD(v9) = a1[3];
    v8 = a1[4];
  }

  else
  {
    result = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(a1, a2);
    v7 = result >> 32;
    v9 = HIDWORD(v6);
  }

  *a3 = result;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v9;
  a3[4] = v8;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_ValueDefinition(__int128 *a1, uint64_t (*a2)(__int128 *, _BYTE *))
{
  *&v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4);
  v5 = *a1;
  v6 = v2;
  result = a2(&v5, v7);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL static AttachmentRef.Typed.== infix(_:_:)(int a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a1 == -1 && a3 == -1)
  {
    return 1;
  }

  return a1 == a3 && (a4 ^ a2) >> 32 == 0;
}

uint64_t specialized Structure.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  v4 = *a1;
  v5 = a1[48];
  v6 = *(a1 + 22);
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v23[0] = *(a1 + 56);
  v23[1] = v8;
  v24[0] = *(a1 + 88);
  v9 = a1 + 88;
  v10 = a1 + 100;
  v11 = (a1 + 104);
  result = *(a1 + 29);
  *(v24 + 9) = *(a1 + 97);
  while (1)
  {
    v13 = *v11;
    if (result < *v10)
    {
      v14 = (*v9 + 8 * result);
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v23);
    }

    v9 = (v13 + 32);
    v10 = (v13 + 44);
    v11 = (v13 + 48);
    v7 = v13;
  }

  v22 = *v7;
  if (!v22)
  {
    goto LABEL_21;
  }

  result = v22 + 24 * *v14;
  if (v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *(v6 + 116))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = *(v6 + 104);
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *(*(v15 + 8 * v4) + 8);
  if (v3 >= *(v16 + 148))
  {
    goto LABEL_17;
  }

  v17 = *(v16 + 136);
  if (v17)
  {
    v18 = *(*result + 32);
    v19 = v17 + 80 * v3;
    v21 = *(v19 + 32);
    v20 = v19 + 32;
    if (v18 >= v21)
    {
      *(v20 + 8) = v18;
      return result;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_SubgraphTreeUpdate(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  v7 = *(v5 + 2);
  LOBYTE(v5) = *(v5 + 12);
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  *(v4 + 44) = v5;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_AssignRootSubgraph(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  v6 = *(a1 + 184);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  print(_:separator:terminator:)();
}

uint64_t protocol witness for static Tracepoint.peak(within:) in conformance T_RecordNamedProperty(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 56) = a2;
  v5 = *(a1 + 184);
  v6 = *v5;
  LODWORD(v5) = *(v5 + 1);
  *(v4 + 32) = v6;
  *(v4 + 34) = v5;
  print(_:separator:terminator:)();
}

BOOL static AttachmentRef.== infix(_:_:)(int a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a1 == -1 && a3 == -1)
  {
    return 1;
  }

  return a1 == a3 && (a4 ^ a2) >> 32 == 0;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v8 + 72);
  if (v15 > 0xF)
  {
    while (1)
    {
      v12 = swift_slowAlloc();
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v22 = v12;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v12 = v22;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v16 = (a2 + a1);
    v17 = v12;
    memcpy(v12, v16, v9);
    (*(v8 + 16))(a4, v17, a3);

LABEL_15:
    JUMPOUT(0x26D69EAB0);
  }

  if (v12 >= 1025)
  {
    goto LABEL_12;
  }

LABEL_8:
  MEMORY[0x28223BE20](v12);
  v19 = &v24 - v18;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  memcpy(&v24 - v18, (a2 + a1), v9);
  (*(v8 + 16))(v11, v19, a3);
  v20 = *(v8 + 32);
  v20(v14, v11, a3);
  return (v20)(a4, v14, a3);
}

char *specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(void *__src, uint64_t a2)
{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
}

double specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<D0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, __src, 1, a2, &v7);
  v4 = v9;
  result = *&v7;
  v6 = v8;
  *a3 = v7;
  *(a3 + 16) = v6;
  *(a3 + 24) = v4;
  return result;
}

{
  specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, __src, 1, a2, v7);
  result = *v7;
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v8;
  return result;
}

{
  specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, __src, 1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

unint64_t specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(void *__src, uint64_t a2)
{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2) & 0xFFFFFFFFFFLL;
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(&__dst, 1, __src, a2) & 0xFFFFFFFFFFFFLL;
}

{
  return specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2) & 0xFFFFFFFFFFFFLL;
}

uint64_t specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(void *__src, uint64_t a2)
{
  v2 = specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
  *(&v5 + 4) = __PAIR64__(v3, HIDWORD(v2));
  LODWORD(v5) = v2;
  return v5;
}

{
  v2 = specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(__dst, 1, __src, a2);
  *(&v5 + 4) = __PAIR64__(v3, HIDWORD(v2));
  LODWORD(v5) = v2;
  return v5;
}

char *specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(char *__dst, uint64_t a2, void *__src, uint64_t a4)
{
  v4 = __dst;
  if (__dst)
  {
    if ((a2 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 8 * a2;
    v6 = &__dst[8 * a2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      return *v4;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    return *v4;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    if ((a2 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 4 * a2;
    v6 = &__dst[4 * a2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      return *v4;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    return *v4;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 10 * a2;
    if ((a2 * 10) >> 64 != (10 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    LOWORD(v9) = *v4;
    *(&v9 + 2) = *(v4 + 2);
    return v9;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 12 * a2;
    if ((a2 * 12) >> 64 != (12 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    LODWORD(v9) = *v4;
    *(&v9 + 4) = *(v4 + 4);
    return v9;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 17 * a2;
    if ((a2 * 17) >> 64 != (17 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 1);
    v10 = v4[16];
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 13 * a2;
    if ((a2 * 13) >> 64 != (13 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 2) | (v4[12] << 32);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 26 * a2;
    if ((a2 * 26) >> 64 != (26 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 1);
    v10 = *(v4 + 2);
    v11 = *(v4 + 12);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    if ((a2 - 0x800000000000000) >> 60 != 15)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 16 * a2;
    v6 = &__dst[16 * a2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      return *v4;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    return *v4;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 6 * a2;
    if ((a2 * 6) >> 64 != (6 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      return (*v4 | (*(v4 + 2) << 32));
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    return (*v4 | (*(v4 + 2) << 32));
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 9 * a2;
    if ((a2 * 9) >> 64 != (9 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    LOBYTE(v9) = *v4;
    *(&v9 + 1) = *(v4 + 1);
    return v9;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 5 * a2;
    if ((a2 * 5) >> 64 != (5 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      return (*v4 | (v4[4] << 32));
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    return (*v4 | (v4[4] << 32));
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 12 * a2;
    if ((a2 * 12) >> 64 != (12 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 2);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    if ((a2 - 0x800000000000000) >> 60 != 15)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 16 * a2;
    v6 = &__dst[16 * a2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 1);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    if ((a2 - 0x400000000000000) >> 59 != 31)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 32 * a2;
    v6 = &__dst[32 * a2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 1);
    v10 = *(v4 + 2);
    v11 = *(v4 + 3);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 20 * a2;
    if ((a2 * 20) >> 64 != (20 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 1);
    v10 = *(v4 + 4);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 24 * a2;
    if ((a2 * 24) >> 64 != (24 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = *(v4 + 1);
    v10 = *(v4 + 2);
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

{
  v4 = __dst;
  if (__dst)
  {
    v5 = 9 * a2;
    if ((a2 * 9) >> 64 != (9 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(&v4[v7], v8);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
LABEL_17:
    __dst = *v4;
    v9 = v4[8];
    return __dst;
  }

LABEL_21:
  __break(1u);
  return __dst;
}

void specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(char *__dst@<X0>, void *__src@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__dst)
  {
    if ((a3 - 0x400000000000000) >> 59 != 31)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v7 = 32 * a3;
    v8 = &__dst[32 * a3];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (__src)
  {
    v9 = a4 - __src;
  }

  else
  {
    v9 = 0;
  }

  if (v7 < v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v10 = v8 - __dst - v9;
    if (v8 - __dst >= v9)
    {
      if (v10 > 0)
      {
        bzero(&__dst[v9], v10);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v9 <= 0)
  {
LABEL_17:
    v11 = *(__dst + 3);
    *a5 = *__dst;
    *(a5 + 16) = *(__dst + 2);
    *(a5 + 24) = v11;
    return;
  }

LABEL_21:
  __break(1u);
}

{
  if (__dst)
  {
    v7 = 40 * a3;
    if ((a3 * 40) >> 64 != (40 * a3) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = &__dst[v7];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (__src)
  {
    v9 = a4 - __src;
  }

  else
  {
    v9 = 0;
  }

  if (v7 < v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v10 = v8 - __dst - v9;
    if (v8 - __dst >= v9)
    {
      if (v10 > 0)
      {
        bzero(&__dst[v9], v10);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v9 <= 0)
  {
LABEL_17:
    *a5 = *__dst;
    *(a5 + 8) = *(__dst + 8);
    *(a5 + 24) = *(__dst + 24);
    return;
  }

LABEL_21:
  __break(1u);
}

{
  if (__dst)
  {
    v7 = 36 * a3;
    if ((a3 * 36) >> 64 != (36 * a3) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = &__dst[v7];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (__src)
  {
    v9 = a4 - __src;
  }

  else
  {
    v9 = 0;
  }

  if (v7 < v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v10 = v8 - __dst - v9;
    if (v8 - __dst >= v9)
    {
      if (v10 > 0)
      {
        bzero(&__dst[v9], v10);
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v9 <= 0)
  {
LABEL_17:
    v11 = *(__dst + 1);
    *a5 = *__dst;
    *(a5 + 16) = v11;
    *(a5 + 32) = *(__dst + 8);
    return;
  }

LABEL_21:
  __break(1u);
}

unsigned __int16 *specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(unsigned __int16 *__dst, uint64_t a2, void *__src, uint64_t a4)
{
  v4 = __dst;
  if (__dst)
  {
    v5 = 6 * a2;
    if ((a2 * 6) >> 64 != (6 * a2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = &__dst[v5 / 2];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (__src)
  {
    v7 = a4 - __src;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_13;
  }

  if (__dst)
  {
LABEL_13:
    v8 = v6 - v4 - v7;
    if (v6 - v4 >= v7)
    {
      if (v8 > 0)
      {
        bzero(v4 + v7, v8);
      }

      return (*v4 | (*(v4 + 1) << 16));
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    return (*v4 | (*(v4 + 1) << 16));
  }

LABEL_21:
  __break(1u);
  return __dst;
}

unsigned __int8 *specialized closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(unsigned __int8 *__dst, uint64_t a2, void *__src, uint64_t a4)
{
  if (__dst)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (__src)
  {
    v5 = a4 - __src;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = __dst;
  if (__dst && __src)
  {
    __dst = memmove(__dst, __src, a4 - __src);
    goto LABEL_12;
  }

  if (__dst)
  {
LABEL_12:
    v8 = a2 - v5;
    if (a2 >= v5)
    {
      if (v8 > 0)
      {
        bzero(&v7[v5], v8);
      }

      return *v7;
    }

    goto LABEL_18;
  }

  if (v5 <= 0)
  {
    return *v7;
  }

LABEL_19:
  __break(1u);
  return __dst;
}

void *Trace.SwiftUI.init(graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = Trace_Handle_Storage.init()(a2);
  v5 = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84F98];
  *(a2 + 128) = MEMORY[0x277D84FA0];
  *(a2 + 136) = v6;
  *(a2 + 144) = 0;
  *(a2 + 152) = v5;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  *(a2 + 192) = 0;
  *(a2 + 160) = a1;
  return result;
}

void Trace.add<A>(handle:)(void (*a1)(uint64_t, void (*)(void))@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v116 = a1;
  v114 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v118 = *(AssociatedTypeWitness - 8);
  v9 = *(v118 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v112 = &v104[-v11];
  Description = a2[-1].Description;
  v12 = Description[8];
  v13 = MEMORY[0x28223BE20](v10);
  v110 = &v104[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v115 = &v104[-v16];
  MEMORY[0x28223BE20](v15);
  AssociatedConformanceWitness = &v104[-v17];
  v19 = 0;
  v20 = *(v4 + 89);
  v21 = v4[5];
  v134[4] = v4[4];
  v135[0] = v21;
  *(v135 + 9) = v20;
  v22 = v4[1];
  v134[0] = *v4;
  v134[1] = v22;
  v23 = v4[3];
  v134[2] = v4[2];
  v134[3] = v23;
  v24 = *&v135[0];
  v25 = 24 * HIDWORD(v135[0]) + 24;
  do
  {
    v26 = v19 + 24;
    if (v25 == v19 + 24)
    {
      break;
    }

    if (!*&v135[0])
    {
      goto LABEL_66;
    }

    v27 = *(*&v135[0] + v19);
    v28 = v27 && v27 == a2;
    v19 = v26;
  }

  while (!v28);
  v29 = v5[3];
  v136[2] = v5[2];
  v136[3] = v29;
  v136[4] = v5[4];
  v30 = v5[1];
  v136[0] = *v5;
  v136[1] = v30;
  v136[5] = v135[0];
  v109 = DWORD2(v135[0]);
  v117 = HIDWORD(v135[0]);
  v137 = *(v5 + 12);
  v138 = *(v5 + 104);
  outlined init with copy of Trace(v134, &v121);
  outlined destroy of Trace(v136);
  if (v25 != v26)
  {
    (Description[2])(AssociatedConformanceWitness, v116, a2);
    (*(*(a3 + 8) + 8))(a2);
    if (a2 == &type metadata for Trace.Control)
    {
      v59 = 0;
    }

    else
    {
      v56 = *&v135[1];
      if (!*(*&v135[1] + 16))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v57 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v58 & 1) == 0)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v59 = *(*(v56 + 56) + 8 * v57);
    }

    if (v59 < v117)
    {
      if (v24)
      {
        v95 = (v24 + 24 * v59);
        if (*v95)
        {
          v96 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v95[2]);
          (*(v118 + 16))(v114, v96, AssociatedTypeWitness);
LABEL_54:
          (Description[1])(AssociatedConformanceWitness, a2);
          return;
        }

        goto LABEL_69;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_56;
  }

  v111 = AssociatedTypeWitness;
  v31 = v115;
  v107 = Description[2];
  v108 = (Description + 2);
  v107(v115, v116, a2);
  v32 = *(v5 + 7);
  v33 = *(v5 + 8);
  v113 = *(a3 + 64);
  v116 = (a3 + 64);
  v34 = v113(&v121, a2, a3);
  *(v35 + 8) = v32;
  *(v35 + 16) = v33;
  v36 = v31;
  v34(&v121, 0);
  (*(a3 + 48))(&v121, a2, a3);
  v37 = v123;
  v38 = v5[1];
  v130[0] = *v5;
  v130[1] = v38;
  v40 = *v5;
  v39 = v5[1];
  v130[2] = v5[2];
  v131 = *(v5 + 24);
  v41 = *v123;
  v42 = v123[2];
  v43 = *(v123 + 24);
  v132[1] = v123[1];
  v132[2] = v42;
  v133 = v43;
  v132[0] = v41;
  v44 = v5[2];
  *(v123 + 24) = *(v5 + 24);
  v37[1] = v39;
  v37[2] = v44;
  *v37 = v40;
  outlined init with copy of TraceConfig(v130, v120);
  outlined destroy of TraceConfig(v132);
  v45 = *(v5 + 49) | (a2 == &type metadata for Trace.Control) | (a2 == &type metadata for Trace.SwiftUI);
  v46 = v113(&v121, a2, a3);
  *v47 = v45 & 1;
  v46(&v121, 0);
  v48 = *(v5 + 49);
  if (v48 == 1)
  {
    v49 = (*(*(a3 + 16) + 24))(a2);
    v50 = v117;
    if (!(*(v5 + 49) & 1 | (a2 == &type metadata for Trace.Control)))
    {
LABEL_12:
      if (!v50)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (!v24)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v51 = v111;
      if (!*v24)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v52 = **(v24 + 16);
      os_unfair_lock_lock_with_options();
      v53 = *(v52 + 40);
      os_unfair_lock_unlock(v52);
      v54 = v113(&v121, a2, a3);
      *(v55 + 32) = v53;
      v54(&v121, 0);
      goto LABEL_24;
    }
  }

  else
  {
    v49 = 0;
    v50 = v117;
    if (a2 != &type metadata for Trace.Control)
    {
      goto LABEL_12;
    }
  }

  v106 = *(v5 + 56);
  v105 = v48 ^ 1;
  v60 = v49;
  v61 = a3;
  v62 = a3;
  v63 = v113;
  v64 = v113(&v121, a2, v61);
  *(v65 + 40) = 1;
  v64(&v121, 0);
  LODWORD(v121) = v60;
  BYTE4(v121) = v105;
  v122 = v106;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v127 = 2;
  v126 = 0;
  v128 = a2;
  v129 = 1;
  v66 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(&v121);
  v68 = v67;
  v69 = (v63)(v120, a2, v62, v66);
  a3 = v62;
  v36 = v31;
  *(v70 + 32) = v68;
  v69(v120, 0);
  v51 = v111;
  if (a2 == &type metadata for Trace.Control)
  {
    goto LABEL_26;
  }

  if (!v117)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v24)
  {
LABEL_24:
    if (!*v24)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v71 = **(v24 + 16);
    v72 = v113(v120, a2, a3);
    *(v73 + 48) = v71;
    v72(v120, 0);
LABEL_26:
    v74 = v110;
    v107(v110, v36, a2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v75 = v112;
    (*(AssociatedConformanceWitness + 5))(v74, v51, AssociatedConformanceWitness);
    v76 = specialized Strong.init(_:)(v75, v51);
    v77 = (v118 + 8);
    v116 = *(v118 + 8);
    v116(v75, v51);
    v78 = Strong.opaque.getter(v76, v51);
    if (v117 == v109)
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v109);
    }

    v79 = *(v5 + 10);
    if (!v79)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v80 = *(v5 + 23);
    v81 = (v79 + 24 * v80);
    *v81 = a2;
    v81[1] = a3;
    v81[2] = v78;
    v82 = v80 + 1;
    if (v80 != -1)
    {
      v113 = v77;
      *(v5 + 23) = v82;
      v83 = *(v5 + 12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120[0] = *(v5 + 12);
      v117 = v82 - 1;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82 - 1, a2, isUniquelyReferenced_nonNull_native);
      v85 = v120[0];
      *(v5 + 12) = v120[0];
      if (!*v79)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v86 = **(v79 + 16);
      os_unfair_lock_lock_with_options();
      Trace.Control.write<A>(mode:)(a2, a2, a3);
      os_unfair_lock_unlock(v86);
      if (a2 == &type metadata for Trace.Control)
      {
        v89 = 0;
        if (v82)
        {
LABEL_35:
          v90 = (v79 + 24 * v89);
          if (!*v90)
          {
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          UnsafeMutableRawPointer.subscript.getter(v51, v90[2]);
          v91 = (*(AssociatedConformanceWitness + 8))(v120, v51, AssociatedConformanceWitness);
          v51 = (*(a3 + 72))(a2, a3);
          v91(v120, 0);
          AssociatedConformanceWitness = v115;
          if (!v51)
          {
LABEL_52:
            v101 = (v79 + 24 * v117);
            if (*v101)
            {
              v102 = v111;
              v103 = UnsafeMutableRawPointer.subscript.getter(v111, v101[2]);
              (*(v118 + 16))(v114, v103, v102);
              goto LABEL_54;
            }

            goto LABEL_72;
          }

          if (a2 != &type metadata for Trace.Control)
          {
            if (!*(v85 + 16))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v92 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
            if ((v93 & 1) == 0)
            {
              goto LABEL_65;
            }

            v94 = *(*(v85 + 56) + 8 * v92);
            goto LABEL_49;
          }

LABEL_48:
          v94 = 0;
LABEL_49:
          if (v94 < v82)
          {
            v97 = (v79 + 24 * v94);
            if (!*v97)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v98 = v111;
            v99 = UnsafeMutableRawPointer.subscript.getter(v111, v97[2]);
            v100 = v112;
            (*(v118 + 16))(v112, v99, v98);
            v51(v100);
            outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v51);
            v116(v100, v98);
            goto LABEL_52;
          }

          goto LABEL_62;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (*(v85 + 16))
      {
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
        if (v88)
        {
          v89 = *(*(v85 + 56) + 8 * v87);
          if (v89 < v82)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_77:
  __break(1u);
}

SwiftUITracingSupport::Stats __swiftcall Stats.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ATRCWriter.init(file:config:stats:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v41 = a3;
  v45 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = *(a2 + 16);
  v57[0] = *a2;
  v57[1] = v13;
  v57[2] = *(a2 + 32);
  v58 = *(a2 + 48);
  v42 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  *&v52 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v43 + 104))(v8, *MEMORY[0x277D85260], v44);
  v14 = v45;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = *(v14 + 16);
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v15;
  v18 = *(v16 + 16);
  v19 = BYTE11(v57[0]);
  appended = ktrace_file_append_start();
  if (appended)
  {
    v21 = appended;
    if (!v19)
    {
      outlined destroy of TraceConfig(v57);
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = xmmword_26C32F2B0;
      goto LABEL_8;
    }

    v22 = NSPageSize();
    if ((v22 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_17;
    }

    v23 = 8 * v22;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = compression_stream_init(v25, COMPRESSION_STREAM_ENCODE, COMPRESSION_LZ4);
    v25->dst_ptr = v24;
    v25->dst_size = v23;
    if (v26 == COMPRESSION_STATUS_OK)
    {
      outlined destroy of TraceConfig(v57);
      LODWORD(v52) = 0;
      *(&v52 + 1) = v23;
      LODWORD(v53) = 256;
      *(&v53 + 1) = v25;
      LOBYTE(v54) = 0;
      *(&v54 + 1) = v24;
      v55 = (v24 + v23);
      v56 = 0uLL;
LABEL_8:

      outlined init with copy of ResourceSet<Interpreter, ()>(&v52, &v47, &_s21SwiftUITracingSupport16BufferCompressorVSgMd, &_s21SwiftUITracingSupport16BufferCompressorVSgMR);
      v27 = NSPageSize();
      if ((v27 - 0x1000000000000000) >> 61 == 7)
      {
        v28 = v27;
        v49 = v54;
        v50 = v55;
        v51 = v56;
        v47 = v52;
        v48 = v53;
        v29 = swift_slowAlloc();
        *v29 = 0;
        *(v29 + 4) = 0;
        os_unfair_lock_lock_with_options();
        os_unfair_lock_assert_owner(v29);
        if ((*(v29 + 5) & 1) == 0)
        {
          v30 = v47;
          *(v29 + 56) = v48;
          v31 = v50;
          *(v29 + 72) = v49;
          *(v29 + 88) = v31;
          *(v29 + 104) = v51;
          *(v29 + 8) = v14;
          *(v29 + 16) = v21;
          *(v29 + 24) = 0;
          *(v29 + 32) = 0;
          *(v29 + 40) = v30;
          *(v29 + 120) = v19;
          *(v29 + 128) = 8 * v28;
          *(v29 + 136) = 1;
          *(v29 + 144) = v41;
          *(v29 + 5) = 1;
          os_unfair_lock_unlock(v29);
          v33 = specialized Atomic.subscript.modify(v46, 1, v29);
          if (v32[12] == 1)
          {
            v33(v46, 0);
LABEL_14:
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v52, &_s21SwiftUITracingSupport16BufferCompressorVSgMd, &_s21SwiftUITracingSupport16BufferCompressorVSgMR);

            v39 = v40;
            *v40 = v17;
            v39[1] = v29;
            return result;
          }

          v34 = v32;
          v35 = swift_allocObject();
          *(v35 + 16) = v29;
          if (!v34[11])
          {
            v37 = v34[12];
            v36 = v34[13];
            v34[12] = partial apply for closure #1 in ATRCWriter.init(file:config:stats:);
            v34[13] = v35;
            outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v37);
            v33(v46, 0);
            goto LABEL_14;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 Trace.init<A>(config:consumer:stats:onInit:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = *v15;
  *(&v29 + 7) = *(v15 + 7);
  v18 = *(v15 + 32);
  v30 = *(v15 + 16);
  v31 = v18;
  *v32 = *(v15 + 48);
  v19 = *(v15 + 15);
  v20 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5TraceV9HandleBoxVSg_SayAKGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v33[8] = v21;
  *&v33[16] = MEMORY[0x277D84F98];
  v33[24] = 0;
  *&v32[24] = a3;
  *v33 = v20;
  (*(v13 + 16))(v17, a2, a5);
  CircularBuffer.init<A>(consumer:stats:sync:)(v17, a3, v19 & 1, a5, a6, v34);
  *&v32[8] = v34[0];
  HIBYTE(v29) = v19;
  Trace_Handle_Storage.init()(v34);
  specialized Trace.add<A>(handle:)(v34);
  v22 = *(a4 + 16);
  if (v22)
  {
    v23 = (a4 + 40);
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;

      v25(&v29);

      v23 += 2;
      --v22;
    }

    while (v22);
  }

  (*(v13 + 8))(a2, a5);
  v26 = *v33;
  *(a7 + 64) = *&v32[16];
  *(a7 + 80) = v26;
  *(a7 + 89) = *&v33[9];
  v27 = v30;
  *a7 = v29;
  *(a7 + 16) = v27;
  result = *v32;
  *(a7 + 32) = v31;
  *(a7 + 48) = result;
  return result;
}

Swift::Void __swiftcall Trace.deallocate()()
{
  if ((*(v1 + 104) & 1) == 0)
  {
    *(v1 + 104) = 1;
    v2 = *(v1 + 80);
    v3 = *(v1 + 92);
    if (v3)
    {
      v4 = v2 + 24 * v3 - 24;
      while (v2)
      {
        v5 = *v4;
        if (*v4)
        {
          *v18 = *v4;
          *&v18[8] = *(v4 + 8);
          Trace.remove<A>(box:type:)(v18, v0, v5, *&v18[8]);
        }

        v4 -= 24;
        if (!--v3)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_19:
      *v18 = 0;
      *&v18[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      strcpy(v18, "emitted: ");
      *&v18[10] = 0;
      *&v18[12] = -385875968;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v13);

      MEMORY[0x26D69CDB0](0x736E6F63203D2120, 0xEE00203A64656D75);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v14);

      MEMORY[0x26D69CDB0](10272, 0xE200000000000000);
      if (!__OFSUB__(v4, v2))
      {
        goto LABEL_20;
      }

      __break(1u);
LABEL_22:
      *v18 = 0;
      *&v18[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      strcpy(v18, "written: ");
      *&v18[10] = 0;
      *&v18[12] = -385875968;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v15);

      MEMORY[0x26D69CDB0](0x736E6F63203D2120, 0xEE00203A64656D75);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v16);

      goto LABEL_23;
    }

    if (v2)
    {
LABEL_9:
      MEMORY[0x26D69EAB0](v2, -1, -1);
      *(v1 + 80) = 0;
    }

    CircularBuffer.deallocate()();
    v6 = *(v1 + 72);
    v2 = *v6;
    v4 = v6[1];
    if (*v6 != v4)
    {
      goto LABEL_19;
    }

    v7 = v6[3];
    if (*(v1 + 11) == 1)
    {
      v8 = v6[2];
      if (v8 == v7)
      {
        return;
      }

      *v18 = 0;
      *&v18[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      strcpy(v18, "compressed: ");
      v18[13] = 0;
      *&v18[14] = -5120;
      v9 = v7;
      v2 = MEMORY[0x277D83BF8];
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v11;
      MEMORY[0x26D69CDB0](v10);

      MEMORY[0x26D69CDB0](0x74697277203D2120, 0xED0000203A6E6574);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v12);

      MEMORY[0x26D69CDB0](2629664, 0xE300000000000000);
      if (!__OFSUB__(v9, v8))
      {
        while (1)
        {
LABEL_20:
          v17 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v17);

          MEMORY[0x26D69CDB0](41, 0xE100000000000000);
LABEL_23:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      __break(1u);
    }

    if (v7 != v2)
    {
      goto LABEL_22;
    }
  }
}

void *Trace_Handle_Storage.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  TraceConfig.init(_:)(v2, v11);
  v3 = v12;
  v4 = swift_slowAlloc();
  *v4 = *v11;
  *(v4 + 7) = *&v11[7];
  *(v4 + 11) = 257;
  *(v4 + 13) = v3;
  *(v4 + 15) = 0;
  v5 = v14;
  *(v4 + 16) = v13;
  *(v4 + 32) = v5;
  *(v4 + 48) = v15;
  *(v4 + 49) = 0;
  v16 = 1;
  v6 = swift_slowAlloc();
  v7 = MEMORY[0x277D84F98];
  *v6 = MEMORY[0x277D84F98];
  v8 = swift_slowAlloc();
  *v8 = v7;
  result = swift_slowAlloc();
  *result = v7;
  v10 = v16;
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = v10;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  *(a1 + 96) = v8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = result;
  return result;
}

Swift::Void __swiftcall Trace_Handle_Storage.deallocate()()
{
  v1 = v0[11];
  if (v1)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[11], &_sSDySO21SwiftUITracingSupport20Trace_Handle_StorageV12WritableTypeVGMd, &_sSDySO21SwiftUITracingSupport20Trace_Handle_StorageV12WritableTypeVGMR);
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[11] = 0;
    v2 = v0[3];
    if (v2)
    {
      outlined destroy of TraceConfig(v0[3]);
      MEMORY[0x26D69EAB0](v2, -1, -1);
      v0[3] = 0;
      v3 = v0[12];
      if (v3)
      {
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[12], &_sSDySS21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGGMd, &_sSDySS21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGGMR);
        MEMORY[0x26D69EAB0](v3, -1, -1);
        v0[12] = 0;
        v4 = v0[13];
        if (v4)
        {
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[13], &_sSDy9CryptoKit12SHA256DigestV21SwiftUITracingSupport12AttachmentIDV5TypedVy_AD06BufferH0VyAD7AddressVGGGMd, &_sSDy9CryptoKit12SHA256DigestV21SwiftUITracingSupport12AttachmentIDV5TypedVy_AD06BufferH0VyAD7AddressVGGGMR);
          MEMORY[0x26D69EAB0](v4, -1, -1);
          v0[13] = 0;
          return;
        }

        _StringGuts.grow(_:)(25);
        MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
        v5 = &_s21SwiftUITracingSupport6UniqueVySDy9CryptoKit12SHA256DigestVAA12AttachmentIDV5TypedVy_AA06BufferI0VyAA7AddressVGGGGMd;
        v6 = &_s21SwiftUITracingSupport6UniqueVySDy9CryptoKit12SHA256DigestVAA12AttachmentIDV5TypedVy_AA06BufferI0VyAA7AddressVGGGGMR;
      }

      else
      {
        _StringGuts.grow(_:)(25);
        MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
        v5 = &_s21SwiftUITracingSupport6UniqueVySDySSAA12AttachmentIDV5TypedVy_SSGGGMd;
        v6 = &_s21SwiftUITracingSupport6UniqueVySDySSAA12AttachmentIDV5TypedVy_SSGGGMR;
      }
    }

    else
    {
      _StringGuts.grow(_:)(25);
      MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
      v5 = &_s21SwiftUITracingSupport6UniqueVyAA11TraceConfigVGMd;
      v6 = &_s21SwiftUITracingSupport6UniqueVyAA11TraceConfigVGMR;
    }
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    v5 = &_s21SwiftUITracingSupport6UniqueVySDySOAA20Trace_Handle_StorageV12WritableTypeVGGMd;
    v6 = &_s21SwiftUITracingSupport6UniqueVySDySOAA20Trace_Handle_StorageV12WritableTypeVGGMR;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t (*Trace_Handle.finalize()(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return partial apply for closure #1 in Trace_Handle.finalize();
}

{
  Trace_Handle.finalize()(a1, a2);
  return partial apply for closure #1 in Trace_Handle.finalize();
}

Swift::Void __swiftcall Trace_Handle.flushWrittenTypes()()
{
  (*(v0 + 48))(v2);
  v1 = v3;
  if (v3)
  {
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Trace_Handle.write<A>(_:omit:)(const void *a1, unsigned int a2, uint64_t a3, void (*a4)(uint64_t *, void), uint64_t a5, uint64_t a6)
{
  v92 = a2;
  v89 = *(a4 - 1);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](a1);
  v91 = v12;
  v90 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  result = v14(v95, v15, v13);
  if (LOBYTE(v95[0]) != 1)
  {
    return result;
  }

  v87 = a1;
  v17 = *(a6 + 8);
  (*(v17 + 48))(v93, a4, v17);
  v18 = LOBYTE(v93[0]);
  v19 = v14;
  v20 = BYTE1(v93[0]);
  v88 = v19;
  result = v19(v95, a3, a5);
  v21 = *(v96 + 49);
  if (v21 != 1 && v18 != 0)
  {
    return result;
  }

  v23 = v21 & (v20 ^ 1);
  v24 = v88;
  if (v23)
  {
    return result;
  }

  v88(v95, a3, a5);
  v86 = v98;
  v24(v95, a3, a5);
  if (*(v96 + 49) == 1 && (v92 & 4) == 0)
  {
    v85 = *(a6 + 16);
    if ((v85(a4, a6) & 4) != 0 || (v85(a4, a6) & 2) != 0)
    {
      Trace_Handle.updateThread()();
    }
  }

  v26 = (*(v17 + 72))(a4, v17);
  if (prepareTrace || (v92 & 1) != 0)
  {
    v28 = v88;
    v88(v95, a3, a5);
  }

  else
  {
    v27 = (*(a6 + 16))(a4, a6);
    v28 = v88;
    if (v27)
    {
      if (kdebug_using_continuous_time())
      {
        v29 = mach_continuous_time();
      }

      else
      {
        v29 = mach_absolute_time();
      }

      v86 = v29;
    }

    v28(v95, a3, a5);
  }

  if (*(v96 + 49) == 1)
  {
    v30 = (*(a6 + 16))(a4, a6);
    v31 = 0;
    if ((v30 & 2) != 0 && (v92 & 2) == 0)
    {
      v31 = Trace_Handle.writtenBacktrace()(a3, a5);
    }
  }

  else
  {
    v31 = 0;
  }

  LODWORD(v85) = v31;
  if (!tracepointAssertion.value._rawValue)
  {
    goto LABEL_33;
  }

  v84 = (*(*(a5 + 16) + 24))(a3);
  v28(v95, a3, a5);
  result = tracepointAssertion.value._rawValue;
  if (tracepointAssertion.value._rawValue)
  {
    v83 = v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v84, v83, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v95[0];

LABEL_33:
    v28(v95, a3, a5);
    v33 = v97;
    v28(v95, a3, a5);
    if (*(v96 + 49))
    {
      v34 = (v28)(v95, a3, a5);
      if (v86 < v98)
      {
        __break(1u);
        goto LABEL_77;
      }

      static T_TracepointID.initialize<A>(_:code:delta:omit:)(v34, v26, v86 - v98, v92, a4, a6);
      v92 = v35;
      v82 = v36;
      v84 = v37;
      if (!readingDebug)
      {
        goto LABEL_39;
      }

      if (one-time initialization token for readingDebugLog != -1)
      {
        goto LABEL_81;
      }

      while (1)
      {
        v38 = readingDebugLog;
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v83 = v38;
          v41 = v33;
          v42 = v40;
          v43 = swift_slowAlloc();
          v95[0] = v43;
          *v42 = 134218498;
          *(v42 + 4) = v41;
          *(v42 + 12) = 2080;
          v44 = T_TracepointID.describe(state:)(v43, v92);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v95);

          *(v42 + 14) = v46;
          *(v42 + 22) = 1024;
          *(v42 + 24) = v85;
          _os_log_impl(&dword_26C161000, v83, v39, "w %ld: %s, back: %u", v42, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x26D69EAB0](v43, -1, -1);
          MEMORY[0x26D69EAB0](v42, -1, -1);
        }

LABEL_39:
        v33 = (a5 + 64);
        v47 = *(a5 + 64);
        result = v47(v95, a3, a5);
        v49 = *(v48 + 32);
        if (!*(v49 + 56))
        {
          goto LABEL_85;
        }

        v50 = v91 + 17;
        if (__OFADD__(v91, 17))
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v51 = *(v49 + 52);
        v83 = result;
        if (v51 == 2)
        {
          goto LABEL_59;
        }

        v52 = *(v49 + 32);
        v53 = *(v49 + 48);
        v54 = v53 | (v51 << 32);
        if (v52)
        {
          v55 = *(v49 + 40) - v52;
          v56 = v55 < v53;
          v57 = v55 - v53;
          if (v56)
          {
            goto LABEL_82;
          }

          if (v57 < v50)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (*(v49 + 48))
          {
            goto LABEL_83;
          }

          if (v50 >= 1)
          {
LABEL_58:
            CircularBuffer.Transaction.commit()();
LABEL_59:
            result = CircularBuffer.Transaction.begin()();
            v58 = result + 4;
            v54 = *(v49 + 48) | (*(v49 + 52) << 32);
            v53 = *(v49 + 48);
            goto LABEL_60;
          }
        }

        v58 = 4;
LABEL_60:
        if (BYTE4(v54) == 2)
        {
          goto LABEL_86;
        }

        *(*(v49 + 32) + v53) = v92;
        *(v49 + 48) = v53 + 4;
        if (v84 != 0xFF)
        {
          result = CircularBuffer.Transaction.write(size:)(v82, v84);
          v58 += result;
        }

        if (!v85)
        {
          goto LABEL_66;
        }

        if (*(v49 + 52) == 2)
        {
          goto LABEL_87;
        }

        v69 = *(v49 + 48);
        *(*(v49 + 32) + v69) = v85;
        *(v49 + 48) = v69 + 4;
        v70 = __OFADD__(v58, 4);
        v58 += 4;
        if (!v70)
        {
LABEL_66:
          (v83)(v95, 0);
          v71 = v47(v95, a3, a5);
          *(v72 + 120) += v58;
          v71(v95, 0);
          v73 = v47(v95, a3, a5);
          *(v74 + 112) = v86;
          v73(v95, 0);
          v60 = v87;
          v28 = v88;
          goto LABEL_67;
        }

LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
      }
    }

    if (((*(a6 + 16))(a4, a6) & 1) == 0)
    {
      if (WORD1(v26))
      {
        goto LABEL_79;
      }

      LODWORD(v95[0]) = v26 << 24;
      type metadata accessor for T_TracepointIDV0(0);
      Trace_Handle.write<A>(struct:)(v95, a3, v59, a5);
      v60 = v87;
LABEL_67:
      v28(v95, a3, a5);
      if ((*(v96 + 49) & 1) == 0)
      {
        v75 = swift_conformsToProtocol2();
        if (v75)
        {
          v76 = (*(v75 + 24))(a4, v75);
          if (v91 != v76)
          {
            (*(v89 + 16))(v90, v60, a4);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
            if (swift_dynamicCast())
            {
              outlined init with take of Inspectable(v93, v95);
              v77 = v96;
              v78 = __swift_project_boxed_opaque_existential_1(v95, v96);
              Trace_Handle.write<A>(v0:)(v78, a3, v77, a5);
              __swift_destroy_boxed_opaque_existential_1(v95);
LABEL_74:
              v79 = (*(a5 + 64))(v95, a3, a5);
              ++*(v80 + 56);
              return v79(v95, 0);
            }

            v94 = 0;
            memset(v93, 0, sizeof(v93));
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v93, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
          }
        }
      }

      Trace_Handle.write<A>(struct:)(v60, a3, a4, a5);
      goto LABEL_74;
    }

    result = (v28)(v95, a3, a5);
    if (WORD1(v26))
    {
      goto LABEL_80;
    }

    v61 = v86;
    v62 = v86 - v98;
    if (v86 >= v98)
    {
      v63 = v26 << 24;
      if (v62 >> 22)
      {
        LODWORD(v95[0]) = 0x2000000;
        type metadata accessor for T_TracepointIDV0(0);
        Trace_Handle.write<A>(struct:)(v95, a3, v64, a5);
        v95[0] = v61;
        type metadata accessor for T_TimeSync(0);
        Trace_Handle.write<A>(struct:)(v95, a3, v65, a5);
      }

      else
      {
        v63 |= v62;
      }

      v60 = v87;
      LODWORD(v95[0]) = v63;
      type metadata accessor for T_TracepointIDV0(0);
      Trace_Handle.write<A>(struct:)(v95, a3, v66, a5);
      v67 = (*(a5 + 64))(v95, a3, a5);
      *(v68 + 112) = v61;
      v67(v95, 0);
      goto LABEL_67;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t (*ReferenceAccessor.subscript.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t MethodDispatch.describe(state:)()
{
  v1 = *v0;
  v2 = 0x737961776C61;
  v3 = 0x656D686361747461;
  if (v1 != 5)
  {
    v3 = 1885956979;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x73657461647075;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701603654;
  if (v1 != 1)
  {
    v5 = 0x7275746375727473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int MethodDispatch.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance MethodDispatch()
{
  v1 = *v0;
  v2 = 0x737961776C61;
  v3 = 0x656D686361747461;
  if (v1 != 5)
  {
    v3 = 1885956979;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x73657461647075;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701603654;
  if (v1 != 1)
  {
    v5 = 0x7275746375727473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s21SwiftUITracingSupport5TraceV0A2UIV5FlagsVs25ExpressibleByArrayLiteralAAsAHP05arrayJ0x0iJ7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

_BYTE *specialized StateUpdateWithStructure.model(within:)(_BYTE *result, unint64_t a2, void (*a3)(void))
{
  if (!result[48])
  {
    v4 = &v58;
    v5 = result[1];
    if (v5 != 4)
    {
      if (v5 != 2)
      {
        return result;
      }

      v6 = *(result + 22);
      v7 = *(v6 + 168);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        v10 = result;
        *(v6 + 168) = v9;
        v11 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, result);
        v12 = (v10 + 56);
        v13 = *(v10 + 72);
        v58 = *(v10 + 56);
        v59 = v13;
        v60[0] = *(v10 + 88);
        *(v60 + 9) = *(v10 + 97);
        v14 = (v10 + 72);
        v15 = v10 + 84;
        v16 = (v10 + 104);
        while (1)
        {
          v17 = *v16;
          if (*v15)
          {
            v18 = *v14;
            if ((v18[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v17)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v58);
          }

          v14 = (v17 + 16);
          v15 = (v17 + 28);
          v16 = (v17 + 48);
          v12 = v17;
        }

        v45 = *v12;
        if (!v45)
        {
          goto LABEL_63;
        }

        result = (v45 + 24 * *v18);
        v46 = *(*result + 112);
        if (!v46)
        {
          goto LABEL_59;
        }

        v47 = *(v46 + 60);
        if (v47 == *(v46 + 56))
        {
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v47);
        }

        v48 = *(v46 + 48);
        if (!v48)
        {
          goto LABEL_61;
        }

        v49 = *(v46 + 60);
        *(v48 + 4 * v49) = v11;
        if (v49 != -1)
        {
          *(v46 + 60) = v49 + 1;
          return result;
        }

        goto LABEL_55;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v19 = result;
    a3();
    v20 = v19 + 56;
    v21 = *(v19 + 72);
    v58 = *(v19 + 56);
    v59 = v21;
    v60[0] = *(v19 + 88);
    v22 = v19 + 88;
    v23 = v19 + 100;
    v24 = (v19 + 104);
    v25 = *(v19 + 29);
    v26 = 8 * v25;
    *(v60 + 9) = *(v19 + 97);
    v27 = (v19 + 56);
    v28 = v19 + 88;
    v29 = v19 + 100;
    v30 = (v19 + 104);
    while (1)
    {
      v31 = *v30;
      if (v25 < *v29)
      {
        v32 = (*v28 + v26);
        if ((v32[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v31)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, &v58);
      }

      v28 = (v31 + 32);
      v29 = (v31 + 44);
      v30 = (v31 + 48);
      v27 = v31;
    }

    v50 = *v27;
    if (!v50)
    {
      goto LABEL_64;
    }

    v37 = *v32;
    result = (v50 + 24 * v37);
    v33 = v19[48];
    if (v19[48])
    {
      __break(1u);
    }

    else
    {
      v4 = *(v19 + 22);
      v3 = *v19;
      if (v3 >= *(v4 + 29))
      {
        goto LABEL_54;
      }

      v33 = *(v4 + 13);
      if (!v33)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v34 = *(*(*(v33 + 8 * v3) + 8) + 24);
      if (v34 >= *(*result + 32))
      {
        if (v34 != -1)
        {
          return result;
        }

        v38 = *(v19 + 72);
        v56[0] = *v20;
        v56[1] = v38;
        v57[0] = *(v19 + 88);
        *(v57 + 9) = *(v19 + 97);
        v39 = (v19 + 56);
        v40 = v19 + 88;
        v41 = v19 + 100;
        v42 = (v19 + 104);
        while (1)
        {
          v43 = *v42;
          if (v25 < *v41)
          {
            v44 = (*v40 + v26);
            if ((v44[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v43)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v56);
          }

          v40 = (v43 + 32);
          v41 = (v43 + 44);
          v42 = (v43 + 48);
          v39 = v43;
        }

        v53 = *v39;
        if (!v53)
        {
          __break(1u);
LABEL_67:
          JUMPOUT(0x26C2FC2FCLL);
        }

        result = (v53 + 24 * *v44);
        v3 = *v19;
        if (v3 >= *(v4 + 29))
        {
          goto LABEL_58;
        }

        if (*(*(*(v33 + 8 * v3) + 8) + 16) >= *(*result + 32))
        {
          return result;
        }
      }

      v35 = *(v19 + 72);
      v54[0] = *v20;
      v54[1] = v35;
      v55[0] = *(v19 + 88);
      *(v55 + 9) = *(v19 + 97);
      while (1)
      {
        v36 = *v24;
        if (v25 < *v23)
        {
          v37 = (*v22 + v26);
          if ((v37[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v36)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v25, 0, v54);
        }

        v22 = (v36 + 32);
        v23 = (v36 + 44);
        v24 = (v36 + 48);
        v20 = v36;
      }
    }

    if (!*v20)
    {
LABEL_65:
      __break(1u);
      __break(1u);
      goto LABEL_67;
    }

    result = (*v20 + 24 * *v37);
    if (v3 < *(v4 + 29))
    {
      if (!v33)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v51 = *(*result + 32);
      v52 = *(*(v33 + 8 * v3) + 8);
      if (v51 >= *(v52 + 16))
      {
        *(v52 + 24) = v51;
        return result;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  return result;
}

unsigned __int8 *specialized StateUpdateWithStructure.model(within:)(unsigned __int8 *result, uint64_t a2)
{
  if (!result[48])
  {
    v3 = &v49;
    v4 = result[1];
    if (v4 != 4)
    {
      if (v4 != 2)
      {
        return result;
      }

      v5 = (result + 56);
      v6 = *(result + 72);
      v49 = *(result + 56);
      v50 = v6;
      v51[0] = *(result + 88);
      *(v51 + 9) = *(result + 97);
      v7 = (result + 72);
      v8 = result + 84;
      v9 = (result + 104);
      while (1)
      {
        v10 = *v9;
        if (*v8)
        {
          v11 = *v7;
          if ((v11[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v49);
        }

        v7 = (v10 + 16);
        v8 = (v10 + 28);
        v9 = (v10 + 48);
        v5 = v10;
      }

      v38 = *v5;
      if (!v38)
      {
        goto LABEL_59;
      }

      result = (v38 + 24 * *v11);
      v39 = *(*result + 112);
      if (!v39)
      {
        goto LABEL_55;
      }

      if (!*(v39 + 48))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v40 = *(v39 + 60);
      if (v40)
      {
        *(v39 + 60) = v40 - 1;
        return result;
      }

      goto LABEL_51;
    }

    v12 = result;
    T_EndValueUpdate.updateState(within:)(result, a2 & 0xFFFFFFFFFFLL);
    v13 = v12 + 56;
    v14 = *(v12 + 72);
    v49 = *(v12 + 56);
    v50 = v14;
    v51[0] = *(v12 + 88);
    v15 = v12 + 88;
    v16 = v12 + 100;
    v17 = (v12 + 104);
    v18 = *(v12 + 29);
    v19 = 8 * v18;
    *(v51 + 9) = *(v12 + 97);
    v20 = (v12 + 56);
    v21 = v12 + 88;
    v22 = v12 + 100;
    v23 = (v12 + 104);
    while (1)
    {
      v24 = *v23;
      if (v18 < *v22)
      {
        v25 = (*v21 + v19);
        if ((v25[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v24)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, &v49);
      }

      v21 = (v24 + 32);
      v22 = (v24 + 44);
      v23 = (v24 + 48);
      v20 = v24;
    }

    v41 = *v20;
    if (!v41)
    {
      goto LABEL_60;
    }

    v30 = *v25;
    result = (v41 + 24 * v30);
    v26 = v12[48];
    if (v12[48])
    {
      __break(1u);
    }

    else
    {
      v3 = *(v12 + 22);
      v2 = *v12;
      if (v2 >= *(v3 + 29))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v26 = *(v3 + 13);
      if (!v26)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v27 = *(*(*(v26 + 8 * v2) + 8) + 24);
      if (v27 >= *(*result + 32))
      {
        if (v27 != -1)
        {
          return result;
        }

        v31 = *(v12 + 72);
        v47[0] = *v13;
        v47[1] = v31;
        v48[0] = *(v12 + 88);
        *(v48 + 9) = *(v12 + 97);
        v32 = (v12 + 56);
        v33 = v12 + 88;
        v34 = v12 + 100;
        v35 = (v12 + 104);
        while (1)
        {
          v36 = *v35;
          if (v18 < *v34)
          {
            v37 = (*v33 + v19);
            if ((v37[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v36)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v47);
          }

          v33 = (v36 + 32);
          v34 = (v36 + 44);
          v35 = (v36 + 48);
          v32 = v36;
        }

        v44 = *v32;
        if (!v44)
        {
          __break(1u);
LABEL_63:
          JUMPOUT(0x26C2FC6CCLL);
        }

        result = (v44 + 24 * *v37);
        v2 = *v12;
        if (v2 >= *(v3 + 29))
        {
          goto LABEL_54;
        }

        if (*(*(*(v26 + 8 * v2) + 8) + 16) >= *(*result + 32))
        {
          return result;
        }
      }

      v28 = *(v12 + 72);
      v45[0] = *v13;
      v45[1] = v28;
      v46[0] = *(v12 + 88);
      *(v46 + 9) = *(v12 + 97);
      while (1)
      {
        v29 = *v17;
        if (v18 < *v16)
        {
          v30 = (*v15 + v19);
          if ((v30[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v29)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v18, 0, v45);
        }

        v15 = (v29 + 32);
        v16 = (v29 + 44);
        v17 = (v29 + 48);
        v13 = v29;
      }
    }

    if (!*v13)
    {
LABEL_61:
      __break(1u);
      __break(1u);
      goto LABEL_63;
    }

    result = (*v13 + 24 * *v30);
    if (v2 < *(v3 + 29))
    {
      if (!v26)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v42 = *(*result + 32);
      v43 = *(*(v26 + 8 * v2) + 8);
      if (v42 >= *(v43 + 16))
      {
        *(v43 + 24) = v42;
        return result;
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  return result;
}

_BYTE *specialized StateUpdateWithStructure.model(within:)(_BYTE *result, unint64_t a2)
{
  if (!result[48])
  {
    v2 = result;
    v3 = result[1];
    if (v3 == 2)
    {
      v35 = (result + 56);
      v36 = *(result + 72);
      v101 = *(result + 56);
      v102 = v36;
      *v103 = *(result + 88);
      *&v103[9] = *(result + 97);
      v37 = (result + 72);
      v38 = result + 84;
      v39 = (result + 104);
      while (1)
      {
        v40 = *v39;
        if (*v38)
        {
          v41 = *v37;
          if ((v41[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v40)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v101);
        }

        v37 = (v40 + 16);
        v38 = (v40 + 28);
        v39 = (v40 + 48);
        v35 = v40;
      }

      v42 = *v35;
      if (!v42)
      {
        goto LABEL_89;
      }

      result = (v42 + 24 * *v41);
      v43 = *(*result + 112);
      if (!v43)
      {
        goto LABEL_80;
      }

      if (!*(v43 + 48))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v44 = *(v43 + 60);
      if (v44)
      {
        *(v43 + 60) = v44 - 1;
        return result;
      }
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, result);
      v5 = *(v2 + 9);
      *&v107[16] = *(v2 + 8);
      *&v107[32] = v5;
      *&v107[48] = *(v2 + 10);
      v6 = *(v2 + 5);
      v104 = *(v2 + 4);
      v105 = v6;
      v7 = *(v2 + 7);
      v106 = *(v2 + 6);
      *v107 = v7;
      v8 = *(v2 + 1);
      v101 = *v2;
      v102 = v8;
      v9 = *(v2 + 3);
      *v103 = *(v2 + 2);
      *&v103[16] = v9;
      v107[80] = v2[192];
      v11 = *(v2 + 22);
      v10 = *(v2 + 23);
      *&v107[64] = v11;
      *&v107[72] = v10;
      Interpreter.Iterator.updatingStack.getter();
      if (v13)
      {
        goto LABEL_79;
      }

      if (v4 == v12)
      {
        if (v2[48])
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v14 = *v2;
        if (v14 < *(v11 + 116))
        {
          v15 = *(v11 + 104);
          if (!v15)
          {
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          v16 = *(*(v15 + 8 * v14) + 8);
          v17 = *(v2 + 5);
          v104 = *(v2 + 4);
          v105 = v17;
          v106 = *(v2 + 6);
          v18 = *(v2 + 1);
          v101 = *v2;
          v102 = v18;
          v19 = *(v2 + 3);
          *v103 = *(v2 + 2);
          *&v103[16] = v19;
          v20 = *(v2 + 28);
          v21 = *(v2 + 29);
          *&v107[24] = *(v2 + 136);
          *&v107[40] = *(v2 + 152);
          *&v107[56] = *(v2 + 168);
          *&v107[65] = *(v2 + 177);
          *&v107[8] = *(v2 + 120);
          *v107 = v20;
          *&v107[4] = v21;
          Interpreter.Iterator.updatingStack.getter();
          if (v23)
          {
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v24 = v2 + 56;
          v25 = *(v2 + 72);
          v114[0] = *(v2 + 56);
          v114[1] = v25;
          v115[0] = *(v2 + 88);
          v26 = v2 + 88;
          v27 = v2 + 100;
          v28 = (v2 + 104);
          *(v115 + 9) = *(v2 + 97);
          v29 = (v2 + 56);
          v30 = v2 + 88;
          v31 = v2 + 100;
          v32 = (v2 + 104);
          while (1)
          {
            v33 = *v32;
            if (v21 < *v31)
            {
              v34 = (*v30 + 8 * v21);
              if ((v34[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v33)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v21, 0, v114);
            }

            v30 = (v33 + 32);
            v31 = (v33 + 44);
            v32 = (v33 + 48);
            v29 = v33;
          }

          v45 = *v29;
          if (!*v29)
          {
            goto LABEL_90;
          }

          if (v22 < *(v16 + 44))
          {
            v46 = *(v16 + 32);
            if (!v46)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v87 = *(*(v45 + 24 * *v34) + 32);
            v47 = v46 + (v22 << 7);
            v48 = *(v47 + 8);
            v49 = *(v47 + 16);
            v50 = *(v47 + 24);
            v51 = *(v47 + 25);
            v54 = v47 + 28;
            v52 = *(v47 + 28);
            v53 = *(v54 + 4);
            v55 = v51 == 0;
            v56 = 256;
            if (v55)
            {
              v56 = 0;
            }

            v57 = v56 | (v52 << 32);
            updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(v48, v49, v57 | v50, v53);
            v59 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v48, v49, v57 | v50, v53);
            if (v87 >= v59->Kind)
            {
              v59->Description = v87;
              v98 = *(v2 + 10);
              v99 = *(v2 + 11);
              v100 = v2[192];
              v94 = *(v2 + 6);
              v95 = *(v2 + 7);
              v96 = *(v2 + 8);
              v97 = *(v2 + 9);
              v90 = *(v2 + 2);
              v91 = *(v2 + 3);
              v92 = *(v2 + 4);
              v93 = *(v2 + 5);
              v88 = *v2;
              v89 = *(v2 + 1);
              Interpreter.Iterator.updatingStack.getter();
              if (v61)
              {
LABEL_86:
                __break(1u);
                goto LABEL_87;
              }

              Interpreter.Iterator.finalize(update:observer:)(v60, 0, 0);
              v62 = *(v2 + 72);
              v112[0] = *v24;
              v112[1] = v62;
              v113[0] = *(v2 + 88);
              v63 = *(v2 + 29);
              v64 = 8 * v63;
              *(v113 + 9) = *(v2 + 97);
              v65 = (v2 + 56);
              v66 = v2 + 88;
              v67 = v2 + 100;
              v68 = (v2 + 104);
              while (1)
              {
                v69 = *v68;
                if (v63 < *v67)
                {
                  v70 = (*v66 + v64);
                  if ((v70[1] & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v69)
                {
                  specialized error #1 <A>() in EvolutionTable.address(of:in:)(v63, 0, v112);
                }

                v66 = (v69 + 32);
                v67 = (v69 + 44);
                v68 = (v69 + 48);
                v65 = v69;
              }

              v83 = *v65;
              if (!v83)
              {
                goto LABEL_91;
              }

              v75 = 24;
              result = (v83 + 24 * *v70);
              v71 = v2[48];
              if (v2[48])
              {
                __break(1u);
                goto LABEL_60;
              }

              v53 = *(v2 + 22);
              v57 = *v2;
              if (v57 < *(v53 + 116))
              {
                v71 = *(v53 + 104);
                if (!v71)
                {
LABEL_87:
                  __break(1u);
                  goto LABEL_88;
                }

                v72 = *(*(*(v71 + 8 * v57) + 8) + 24);
                if (v72 >= *(*result + 32))
                {
                  if (v72 != -1)
                  {
                    return result;
                  }

                  v76 = *(v2 + 72);
                  v110[0] = *v24;
                  v110[1] = v76;
                  v111[0] = *(v2 + 88);
                  *(v111 + 9) = *(v2 + 97);
                  v77 = (v2 + 56);
                  v78 = v2 + 88;
                  v79 = v2 + 100;
                  v80 = (v2 + 104);
                  while (1)
                  {
                    v81 = *v80;
                    if (v63 < *v79)
                    {
                      v82 = (*v78 + v64);
                      if ((v82[1] & 1) == 0)
                      {
                        break;
                      }
                    }

                    if (!v81)
                    {
                      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v63, 0, v110);
                    }

                    v78 = (v81 + 32);
                    v79 = (v81 + 44);
                    v80 = (v81 + 48);
                    v77 = v81;
                  }

                  v86 = *v77;
                  if (!v86)
                  {
                    __break(1u);
LABEL_94:
                    JUMPOUT(0x26C2FCD28);
                  }

                  result = (v86 + 24 * *v82);
                  v57 = *v2;
                  if (v57 >= *(v53 + 116))
                  {
                    goto LABEL_78;
                  }

                  if (*(*(*(v71 + 8 * v57) + 8) + 16) >= *(*result + 32))
                  {
                    return result;
                  }
                }

                v73 = *(v2 + 72);
                v108[0] = *v24;
                v108[1] = v73;
                v109[0] = *(v2 + 88);
                *(v109 + 9) = *(v2 + 97);
                while (1)
                {
                  v74 = *v28;
                  if (v63 < *v27)
                  {
                    v75 = *v26 + v64;
                    if ((*(v75 + 4) & 1) == 0)
                    {
                      break;
                    }
                  }

                  if (!v74)
                  {
                    specialized error #1 <A>() in EvolutionTable.address(of:in:)(v63, 0, v108);
                  }

                  v26 = (v74 + 32);
                  v27 = (v74 + 44);
                  v28 = (v74 + 48);
                  v24 = v74;
                }

LABEL_60:
                if (!*v24)
                {
LABEL_92:
                  __break(1u);
                  __break(1u);
                  goto LABEL_94;
                }

                result = (*v24 + 24 * *v75);
                if (v57 < *(v53 + 116))
                {
                  if (!v71)
                  {
LABEL_88:
                    __break(1u);
LABEL_89:
                    __break(1u);
LABEL_90:
                    __break(1u);
LABEL_91:
                    __break(1u);
                    goto LABEL_92;
                  }

                  v84 = *(*result + 32);
                  v85 = *(*(v71 + 8 * v57) + 8);
                  if (v84 >= *(v85 + 16))
                  {
                    *(v85 + 24) = v84;
                    return result;
                  }

                  goto LABEL_77;
                }

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
                goto LABEL_81;
              }

LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  return result;
}

__n128 Trace_Handle_Storage.circularBuffer.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 Trace_Handle_Storage.circularBuffer.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t Trace_Handle_Storage.config.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  v10 = *(v2 + 24);
  v9[1] = v4;
  v9[2] = v3;
  v9[0] = v5;
  v6 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2[2];
  *(a1 + 48) = *(v2 + 24);
  return outlined init with copy of TraceConfig(v9, v8);
}

__n128 Trace_Handle_Storage.Indirected.transaction.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 Trace_Handle_Storage.Indirected.transaction.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

uint64_t Trace_Handle_Storage.executionContext.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t Trace_Handle_Storage.executionContext.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

void Trace_Handle_Storage.control.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = *(v1 + 48);
    os_unfair_lock_lock_with_options();
    v5 = *(v2 + 88);
    a1[4] = *(v2 + 72);
    a1[5] = v5;
    v6 = *(v2 + 120);
    a1[6] = *(v2 + 104);
    a1[7] = v6;
    v7 = *(v2 + 24);
    *a1 = *(v2 + 8);
    a1[1] = v7;
    v8 = *(v2 + 56);
    a1[2] = *(v2 + 40);
    a1[3] = v8;

    os_unfair_lock_unlock(v2);
  }

  else
  {
    __break(1u);
  }
}

void key path getter for Trace_Handle_Storage.control : Trace_Handle_Storage(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = *(a1 + 48);
    os_unfair_lock_lock_with_options();
    v9 = *(v2 + 72);
    v10 = *(v2 + 88);
    v11 = *(v2 + 104);
    v12 = *(v2 + 120);
    v5 = *(v2 + 8);
    v6 = *(v2 + 24);
    v7 = *(v2 + 40);
    v8 = *(v2 + 56);
    os_unfair_lock_unlock(v2);
    a2[4] = v9;
    a2[5] = v10;
    a2[6] = v11;
    a2[7] = v12;
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*Trace_Handle_Storage.control.read(uint64_t (**a1)()))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v4 = *(v1 + 48);
  if (v4)
  {
    *(result + 4) = specialized AtomicAccessor.subscript.read(result, v4);
    return UnsafeTree.subjectsMap.readspecialized ;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void key path setter for Trace_Handle_Storage.control : Trace_Handle_Storage(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    v4 = *(a2 + 48);
    os_unfair_lock_lock_with_options();
    v5 = a1[5];
    *(v2 + 72) = a1[4];
    *(v2 + 88) = v5;
    v6 = a1[7];
    *(v2 + 104) = a1[6];
    *(v2 + 120) = v6;
    v7 = a1[1];
    *(v2 + 8) = *a1;
    *(v2 + 24) = v7;
    v8 = a1[3];
    *(v2 + 40) = a1[2];
    *(v2 + 56) = v8;

    os_unfair_lock_unlock(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*Trace_Handle_Storage.control.modify(uint64_t (**a1)()))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v4 = *(v1 + 48);
  if (v4)
  {
    *(result + 4) = specialized AtomicAccessor.subscript.modify(result, v4);
    return UnsafeTree.storage.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*specialized AtomicAccessor.subscript.read(void *a1, os_unfair_lock *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Atomic.subscript.read(v4, 1, a2);
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*AtomicAccessor.subscript.read(uint64_t *a1, os_unfair_lock *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = Atomic.subscript.read(v4, 1, a2);
  return UnsafeTree.subjectsMap.read;
}

uint64_t (*specialized AtomicAccessor.subscript.modify(void *a1, os_unfair_lock *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Atomic.subscript.modify(v4, 1, a2);
  return UnsafeTree.storage.modify;
}

uint64_t (*AtomicAccessor.subscript.modify(uint64_t *a1, os_unfair_lock *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = Atomic.subscript.modify(v4, 1, a2);
  return UnsafeTree.subjectsMap.modify;
}

void Trace_Handle_Storage.control.setter(_OWORD *a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = *(v1 + 48);
    os_unfair_lock_lock_with_options();
    v5 = a1[5];
    *(v2 + 72) = a1[4];
    *(v2 + 88) = v5;
    v6 = a1[7];
    *(v2 + 104) = a1[6];
    *(v2 + 120) = v6;
    v7 = a1[1];
    *(v2 + 8) = *a1;
    *(v2 + 24) = v7;
    v8 = a1[3];
    *(v2 + 40) = a1[2];
    *(v2 + 56) = v8;

    os_unfair_lock_unlock(v2);
  }

  else
  {
    __break(1u);
  }
}

void Trace_Handle_Storage.transaction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(v2 + 32);
    *(a1 + 48) = v4;
    *(a1 + 56) = v3;
  }

  else
  {
    __break(1u);
  }
}

void (*Trace_Handle_Storage.transaction.read(void (**a1)(void **a1)))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x40uLL);
  }

  *a1 = result;
  v4 = *(v1 + 32);
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[3];
  *(result + 2) = v4[2];
  *(result + 3) = v7;
  *result = v6;
  *(result + 1) = v5;
  if (*(result + 7))
  {
    return Snapshot.subscript.read;
  }

  __break(1u);
  return result;
}

uint64_t (*Trace_Handle_Storage.transaction.modify())()
{
  if (*(*(v0 + 32) + 56))
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

_OWORD *Trace_Handle_Storage.transaction.setter(_OWORD *result)
{
  v2 = *(v1 + 32);
  if (*(v2 + 56))
  {
    v3 = result[1];
    *v2 = *result;
    *(v2 + 16) = v3;
    v4 = result[3];
    *(v2 + 32) = result[2];
    *(v2 + 48) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Trace_Handle_Accessor.deref<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v12, v5, v13);
  v14 = (*(a5 + 64))(v17, a4, a5);
  a1(v15);
  v14(v17, 0);
  return (*(v9 + 8))(v12, a4);
}

{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v12, v5);
  v13 = (*(a5 + 64))(v16, a3, a5);
  a1(v14);
  v13(v16, 0);
  return (*(v9 + 8))(v12, a3);
}

Swift::Void __swiftcall AtomicAccessor.deallocate()()
{
  v1 = *(v0 + 16);
  type metadata accessor for Atomic();

  Atomic.deallocate()();
}

void AtomicAccessor.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Atomic.lock()();
  v6 = type metadata accessor for Atomic.Storage();
  (*(*(a2 - 8) + 16))(a3, a1 + *(v6 + 32), a2);

  Atomic.unlock()();
}

void key path getter for AtomicAccessor.subscript() : <A>AtomicAccessor<A>A(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  Atomic.lock()();
  v7 = type metadata accessor for Atomic.Storage();
  (*(*(v5 - 8) + 16))(a4, v6 + *(v7 + 32), v5);

  Atomic.unlock()();
}

void key path setter for AtomicAccessor.subscript() : <A>AtomicAccessor<A>A(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *a2;
  Atomic.lock()();
  v7 = type metadata accessor for Atomic.Storage();
  (*(*(v5 - 8) + 24))(v6 + *(v7 + 32), a1, v5);

  Atomic.unlock()();
}

uint64_t AtomicAccessor.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Atomic.lock()();
  v6 = *(type metadata accessor for Atomic.Storage() + 32);
  v9 = *(a3 - 8);
  (*(v9 + 24))(a2 + v6, a1, a3);
  Atomic.unlock()();
  v7 = *(v9 + 8);

  return v7(a1, a3);
}

void protocol witness for Trace_Handle_Accessor.subscript.getter in conformance AtomicAccessor<A>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  Atomic.lock()();
  v6 = type metadata accessor for Atomic.Storage();
  (*(*(v5 - 8) + 16))(a2, v4 + *(v6 + 32), v5);

  Atomic.unlock()();
}

uint64_t protocol witness for Trace_Handle_Accessor.subscript.setter in conformance AtomicAccessor<A>(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  Atomic.lock()();
  v6 = *(type metadata accessor for Atomic.Storage() + 32);
  v9 = *(v5 - 8);
  (*(v9 + 24))(v4 + v6, a1, v5);
  Atomic.unlock()();
  v7 = *(v9 + 8);

  return v7(a1, v5);
}

uint64_t (*protocol witness for Trace_Handle_Accessor.subscript.modify in conformance AtomicAccessor<A>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *(a2 + 16);
  *(v5 + 32) = Atomic.subscript.modify(v5, 1, *v2);
  return UnsafeTree.storage.modify;
}

void protocol witness for Trace_Handle_Accessor.deref<A>(_:) in conformance AtomicAccessor<A>(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(a4 + 16);
  Atomic.lock()();
  v8 = type metadata accessor for Atomic.Storage();
  a1(v6 + *(v8 + 32));

  Atomic.unlock()();
}

uint64_t protocol witness for OpaqueConvertable.init(opaque:) in conformance AtomicAccessor<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AtomicAccessor.init(opaque:)(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t AtomicAccessor.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t (*ReferenceAccessor.subscript.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

Swift::Void __swiftcall ReferenceAccessor.deallocate()()
{
  v1 = *(v0 + 16);
  type metadata accessor for Strong();

  Strong.deallocate()();
}

uint64_t protocol witness for Trace_Handle_Accessor.init(_:) in conformance AtomicAccessor<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = a3(a1, v6, *(a2 + 24));
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t (*specialized protocol witness for Trace_Handle_Accessor.subscript.modify in conformance ReferenceAccessor<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t (*protocol witness for Trace_Handle_Accessor.subscript.modify in conformance ReferenceAccessor<A>(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *v2;
  v7 = *(a2 + 16);
  *(v5 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Trace_Handle.config.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 48))(v9);
  v3 = v10;
  v5 = v10[1];
  v4 = v10[2];
  v6 = *v10;
  v12 = *(v10 + 24);
  v11[1] = v5;
  v11[2] = v4;
  v11[0] = v6;
  v7 = v10[1];
  *a2 = *v10;
  *(a2 + 16) = v7;
  *(a2 + 32) = v3[2];
  *(a2 + 48) = *(v3 + 24);
  return outlined init with copy of TraceConfig(v11, v9);
}

void *Trace_Handle.version.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 48))(v4);
  *a2 = *(v4[3] + 49);
  return result;
}

void Trace_Handle.control.getter(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  (*(a1 + 48))(v12);
  v3 = v13;
  if (v13)
  {
    os_unfair_lock_lock_with_options();
    v8 = *(v3 + 72);
    v9 = *(v3 + 88);
    v10 = *(v3 + 104);
    v11 = *(v3 + 120);
    v4 = *(v3 + 8);
    v5 = *(v3 + 24);
    v6 = *(v3 + 40);
    v7 = *(v3 + 56);
    os_unfair_lock_unlock(v3);
    a2[4] = v8;
    a2[5] = v9;
    a2[6] = v10;
    a2[7] = v11;
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  else
  {
    __break(1u);
  }
}

void key path getter for Trace_Handle.control : <A>A(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 48))(v13, *(a1 + a2 - 16));
  v4 = v14;
  if (v14)
  {
    os_unfair_lock_lock_with_options();
    v9 = *(v4 + 72);
    v10 = *(v4 + 88);
    v11 = *(v4 + 104);
    v12 = *(v4 + 120);
    v5 = *(v4 + 8);
    v6 = *(v4 + 24);
    v7 = *(v4 + 40);
    v8 = *(v4 + 56);
    os_unfair_lock_unlock(v4);
    a3[4] = v9;
    a3[5] = v10;
    a3[6] = v11;
    a3[7] = v12;
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*Trace_Handle.control.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0xA8uLL);
  }

  v7 = v6;
  *a1 = v6;
  (*(a3 + 48))(a2, a3);
  *(v7 + 160) = Trace_Handle_Storage.control.read((v7 + 128));
  return Trace_Handle.control.read;
}

void key path setter for Trace_Handle.control : <A>A(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 + a4 - 8) + 48))(v10, *(a3 + a4 - 16), *(a3 + a4 - 8));
  v5 = v11;
  if (v11)
  {
    os_unfair_lock_lock_with_options();
    v6 = a1[5];
    *(v5 + 72) = a1[4];
    *(v5 + 88) = v6;
    v7 = a1[7];
    *(v5 + 104) = a1[6];
    *(v5 + 120) = v7;
    v8 = a1[1];
    *(v5 + 8) = *a1;
    *(v5 + 24) = v8;
    v9 = a1[3];
    *(v5 + 40) = a1[2];
    *(v5 + 56) = v9;

    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void (*Trace_Handle.control.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0xA8uLL);
  }

  v7 = v6;
  *a1 = v6;
  (*(a3 + 48))(a2, a3);
  *(v7 + 160) = Trace_Handle_Storage.control.modify((v7 + 128));
  return Snapshot.subscript.modify;
}

void Trace_Handle.control.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(v9, a2, a3);
  v4 = v10;
  if (v10)
  {
    os_unfair_lock_lock_with_options();
    v5 = a1[5];
    *(v4 + 72) = a1[4];
    *(v4 + 88) = v5;
    v6 = a1[7];
    *(v4 + 104) = a1[6];
    *(v4 + 120) = v6;
    v7 = a1[1];
    *(v4 + 8) = *a1;
    *(v4 + 24) = v7;
    v8 = a1[3];
    *(v4 + 40) = a1[2];
    *(v4 + 56) = v8;

    os_unfair_lock_unlock(v4);
  }

  else
  {
    __break(1u);
  }
}

void *Trace_Handle.transaction.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 48))(v8);
  v4 = v9;
  v5 = *(v9 + 56);
  if (v5)
  {
    v6 = *(v9 + 48);
    v7 = *(v9 + 16);
    *a2 = *v9;
    *(a2 + 16) = v7;
    *(a2 + 32) = *(v4 + 32);
    *(a2 + 48) = v6;
    *(a2 + 56) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Trace_Handle.transaction.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0xA8uLL);
  }

  v7 = v6;
  *a1 = v6;
  (*(a3 + 48))(a2, a3);
  *(v7 + 160) = Trace_Handle_Storage.transaction.read((v7 + 128));
  return Trace_Handle.transaction.read;
}

uint64_t (*key path setter for Trace_Handle.transaction : <A>A(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4))(_BYTE *, void)
{
  result = (*(*(a3 + a4 - 8) + 64))(v10, *(a3 + a4 - 16));
  v7 = *(v6 + 32);
  if (*(v7 + 56))
  {
    v8 = a1[1];
    *v7 = *a1;
    *(v7 + 16) = v8;
    v9 = a1[3];
    *(v7 + 32) = a1[2];
    *(v7 + 48) = v9;
    return result(v10, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Trace_Handle.transaction.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 64) = (*(a3 + 64))();
  *(v6 + 72) = Trace_Handle_Storage.transaction.modify();
  return Trace_Handle.transaction.modify;
}

uint64_t (*Trace_Handle.transaction.setter(_OWORD *a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  result = (*(a3 + 64))(v9);
  v6 = *(v5 + 32);
  if (*(v6 + 56))
  {
    v7 = a1[1];
    *v6 = *a1;
    *(v6 + 16) = v7;
    v8 = a1[3];
    *(v6 + 32) = a1[2];
    *(v6 + 48) = v8;
    return result(v9, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Trace_Handle.enabled.setter(char a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 64))(v7);
  *v5 = a1;
  return v4(v7, 0);
}

void (*Trace_Handle.enabled.modify(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  (*(a3 + 48))(v10, a2, a3);
  *(v8 + 56) = v10[0];
  return Trace_Handle.enabled.modify;
}

void Trace_Handle.enabled.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 48);
  v4 = (*(*(*a1 + 40) + 64))(*a1, *(*a1 + 32));
  *v5 = v2;
  v4(v1, 0);

  free(v1);
}

Swift::Void __swiftcall Trace_Handle.deallocate()()
{
  v1 = (*(v0 + 64))(v2);
  Trace_Handle_Storage.deallocate()();
  v1(v2, 0);
}

void specialized closure #1 in Trace_Handle.finalize()(uint64_t *a1)
{
  v1 = *a1;
  os_unfair_lock_lock_with_options();
  v2 = *(v1 + 56);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + 56);
  os_unfair_lock_lock_with_options();
  Trace.Control.flushWrittenTypes()();
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v1);
  os_unfair_lock_lock_with_options();
  if (!*(*(v1 + 40) + 56))
  {
LABEL_7:
    __break(1u);
    return;
  }

  CircularBuffer.Transaction.commit()();

  os_unfair_lock_unlock(v1);
}

{
  v1 = *a1;
  os_unfair_lock_lock_with_options();
  Trace.Control.flushWrittenTypes()();
  os_unfair_lock_unlock(v1);
  os_unfair_lock_lock_with_options();
  if (*(*(v1 + 40) + 56))
  {
    CircularBuffer.Transaction.commit()();

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2)
  {
    v3 = *(*a1 + 48);
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();
    os_unfair_lock_unlock(v2);
    if (*(*(v1 + 32) + 56))
    {
      CircularBuffer.Transaction.commit()();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in Trace_Handle.finalize()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 64);
  v7 = swift_checkMetadataState();
  v8 = v6(v14, v7, AssociatedConformanceWitness);
  (*(a3 + 88))(a2, a3);
  v8(v14, 0);
  v9 = v6(v14, v7, AssociatedConformanceWitness);
  result = (*(a3 + 64))(v13, a2, a3);
  if (*(*(v11 + 32) + 56))
  {
    v12 = result;
    CircularBuffer.Transaction.commit()();
    v12(v13, 0);
    return v9(v14, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.Transaction.commit()()
{
  if ((*(v0 + 4) & 1) == 0 && ((*(v0 + 48) | (*(v0 + 52) << 32)) & 0xFF00000000) != 0x200000000)
  {
    *(v0 + 52);
    *(*(v0 + 32) + 4) = *(v0 + 48);
  }

  if (readingDebug)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v1 = swift_allocObject();
    v2 = MEMORY[0x277D837D0];
    *(v1 + 16) = xmmword_26C328DC0;
    *(v1 + 56) = v2;
    *(v1 + 32) = 0x54494D4D4F432077;
    *(v1 + 40) = 0xEA00000000002021;
    print(_:separator:terminator:)();
  }

  v5[4] = *(v0 + 8);
  v3 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v3;
  v4 = *(v0 + 48);
  v5[2] = *(v0 + 32);
  v5[3] = v4;
  CircularBuffer.commit(_:)(v5);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 52) = 2;
  *(v0 + 48) = 0;
}

__n128 CircularBuffer.Transaction.init(kind:for:owner:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 4);
  *a4 = *a1;
  *(a4 + 4) = v4;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  *(a4 + 48) = 0;
  *(a4 + 52) = 2;
  *(a4 + 56) = a3;
  return result;
}

Swift::Void __swiftcall Trace_Handle.updateThread()()
{
  v2 = v1;
  v3 = v0;
  v11 = *MEMORY[0x277D85DE8];
  v9[0] = -1;
  pthread_threadid_np(0, v9);
  v4 = v9[0];
  if (v9[0] == -1)
  {
    __break(1u);
  }

  (*(v2 + 48))(v9, v3, v2);
  if ((v10 & 1) != 0 || v4 != v9[8])
  {
    v5 = (*(v2 + 64))(v9, v3, v2);
    *(v6 + 64) = v4;
    *(v6 + 72) = 0;
    v5(v9, 0);
    v9[0] = v4;
    type metadata accessor for T_ExecutionContext(0);
    Trace_Handle.write<A>(_:omit:)(v9, 0, v3, v7, v2, &protocol witness table for T_ExecutionContext);
  }

  v8 = *MEMORY[0x277D85DE8];
}

__uint64_t executionContext()()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = -1;
  pthread_threadid_np(0, v2);
  result = v2[0];
  if (v2[0] == -1)
  {
    __break(1u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::UInt64 __swiftcall system_time()()
{
  if (kdebug_using_continuous_time())
  {

    return mach_continuous_time();
  }

  else
  {

    return mach_absolute_time();
  }
}

uint64_t Trace_Handle.writtenBacktrace()(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v57 - v9;
  v10 = type metadata accessor for SHA256();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  backtrace()();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v69 = v26;
  v72 = v5;
  v62 = *(v5 + 56);
  v63 = v5 + 56;
  v62(v19, 1, 1, v4);
  v27 = *(a2 + 48);
  v28 = v74;
  v73 = a2;
  v70 = a2 + 48;
  v71 = v27;
  v27(v85);
  v30 = v86[1];
  v29 = v86[2];
  v31 = *v86;
  v91 = *(v86 + 24);
  v89 = v30;
  v90 = v29;
  v88 = v31;
  v79 = *v86;
  v80 = v86[1];
  v81 = v86[2];
  v82 = *(v86 + 24);
  outlined init with copy of TraceConfig(&v88, v85);
  v83[0] = v79;
  v83[1] = v80;
  v83[2] = v81;
  v84 = v82;
  outlined destroy of TraceConfig(v83);
  v32 = v69;
  if (HIBYTE(v84) != 1)
  {
    goto LABEL_11;
  }

  v57 = v25;
  v58 = v17;
  v60 = v23;
  v61 = v19;
  v34 = v72;
  v33 = v73;
  v59 = v2;
  v71(v85, v28, v73);
  v36 = v86[1];
  v35 = v86[2];
  v37 = *v86;
  v91 = *(v86 + 24);
  v89 = v36;
  v90 = v35;
  v88 = v37;
  v38 = v86[1];
  v75 = *v86;
  v76 = v38;
  v77 = v86[2];
  v78 = *(v86 + 24);
  outlined init with copy of TraceConfig(&v88, v85);
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = v78;
  outlined destroy of TraceConfig(&v79);
  if (BYTE1(v79) != 1)
  {
LABEL_10:
    v28 = v74;
    v25 = v57;
    v17 = v58;
    v23 = v60;
    v19 = v61;
LABEL_11:
    v85[0] = v21;
    v85[1] = v23;
    v85[2] = v25;
    v86 = v32;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
    v49 = v28;
    v50 = v73;
    v46 = Trace_Handle.write<A>(attachment:)(v85, v28, v48, v73, &protocol witness table for BufferAttachment<A>);
    outlined init with copy of ResourceSet<Interpreter, ()>(v19, v17, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    v51 = v72;
    if ((*(v72 + 48))(v17, 1, v4) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v19, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      v47 = v17;
    }

    else
    {
      v52 = v68;
      (*(v51 + 32))(v68, v17, v4);
      v71(v85, v49, v50);
      v53 = v87;
      v54 = *v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v88 = *v53;
      *v53 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v52, isUniquelyReferenced_nonNull_native);
      v56 = *v53;
      *v53 = v88;

      (*(v51 + 8))(v52, v4);
      v47 = v19;
    }

    goto LABEL_14;
  }

  v39 = v67;
  result = SHA256.init()();
  if (v60 < 0)
  {
    __break(1u);
  }

  else if ((v60 * v32) >> 64 == (v60 * v32) >> 63)
  {
    MEMORY[0x26D69C930](v21, v21 + v60 * v32);
    v41 = v64;
    SHA256.finalize()();
    v42 = v61;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v61, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    (*(v34 + 16))(v42, v41, v4);
    v62(v42, 0, 1, v4);
    v71(v85, v74, v33);
    v43 = *v87;
    if (*(*v87 + 16))
    {
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      if (v45)
      {
        v46 = *(*(v43 + 56) + 4 * v44);
        (*(v34 + 8))(v41, v4);
        (*(v65 + 8))(v39, v66);
        v47 = v61;
LABEL_14:
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v47, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
        return v46;
      }
    }

    (*(v34 + 8))(v41, v4);
    (*(v65 + 8))(v39, v66);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t T_TracepointIDV0.init(id:current:previous:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (WORD1(result))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2 - a3;
  if (a2 < a3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = v3 >> 22 == 0;
  v5 = v3 >> 22 != 0;
  v6 = v3 | (result << 24);
  if (!v4)
  {
    v6 = 0;
  }

  return v6 | (v5 << 32);
}

uint64_t T_TracepointIDV0.init(code:unused:)(uint64_t result)
{
  if (!WORD1(result))
  {
    return (result << 24);
  }

  __break(1u);
  return result;
}

Swift::Int Trace_Handle.write<A>(struct:)(const void *a1, uint64_t a2, void (*a3)(uint64_t *, void), uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v47 = a1;
  v8 = *(a3 - 1);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](a1);
  v11 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v46 = v12;
  if (!readingDebug)
  {
    goto LABEL_7;
  }

  v15 = *(a4 + 48);
  v45 = v4;
  v15(v48, v12, a4);
  v44 = v48[7];
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v16 = readingDebugLog;
    v17 = v8[2];
    v17(v14, v47, v7);
    v18 = v16;
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v19;
      v21 = v20;
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v21 = 134218242;
      *(v21 + 4) = v44;
      *(v21 + 12) = 2080;
      v17(v11, v14, v7);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      v25 = v8[1];
      ++v8;
      v25(v14, v7);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v48);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_26C161000, v18, v43, "w %ld: %s", v21, 0x16u);
      v27 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D69EAB0](v27, -1, -1);
      MEMORY[0x26D69EAB0](v21, -1, -1);
    }

    else
    {

      v28 = v8[1];
      ++v8;
      v28(v14, v7);
    }

    v5 = v45;
LABEL_7:
    v29 = *(a4 + 64);
    result = v29(v48);
    v32 = *(v31 + 32);
    if (!*(v32 + 56))
    {
      break;
    }

    v7 = result;
    if (*(v32 + 52) != 2)
    {
      v33 = *(v32 + 32);
      v14 = *(v32 + 48);
      v34 = v14 | (*(v32 + 52) << 32);
      if (v33)
      {
        v35 = *(v32 + 40) - v33;
        v36 = v35 < v14;
        v37 = v35 - v14;
        if (v36)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          break;
        }

        if (v37 >= v9)
        {
LABEL_12:
          v11 = v5;
          v38 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        if (*(v32 + 48))
        {
          goto LABEL_25;
        }

        if (v9 < 1)
        {
          goto LABEL_12;
        }
      }

      CircularBuffer.Transaction.commit()();
    }

    v11 = v5;
    result = CircularBuffer.Transaction.begin()();
    v38 = result;
    v14 = *(v32 + 48);
    v34 = v14 | (*(v32 + 52) << 32);
LABEL_17:
    if (BYTE4(v34) == 2)
    {
      goto LABEL_27;
    }

    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      memcpy((*(v32 + 32) + v14), v47, v9);
      if (!HIDWORD(v9))
      {
        *(v32 + 48) = v14 + v9;
        v7(v48, 0);
        v39 = (v29)(v48, v46, a4);
        *(v40 + 120) += v38 + v9;
        return v39(v48, 0);
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void static T_TracepointID.initialize<A>(_:code:delta:omit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 1) != 0 && a3)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a6 + 16);
    v8(a5, a6);
    v8(a5, a6);
  }
}

Swift::Int static CircularBuffer.Transaction.write(tracepointID:size:backtrace:valueSize:transaction:)(Swift::Int result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = a5 + 17;
  if (__OFADD__(a5, 17))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  if (*(a6 + 52) != 2)
  {
    v12 = *(a6 + 32);
    v13 = *(a6 + 48);
    v14 = v13 | (*(a6 + 52) << 32);
    if (v12)
    {
      v15 = *(a6 + 40) - v12;
      v16 = v15 < v13;
      v17 = v15 - v13;
      if (v16)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v17 >= v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (*(a6 + 48))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v6 < 1)
      {
LABEL_6:
        v18 = 4;
        goto LABEL_11;
      }
    }

    CircularBuffer.Transaction.commit()();
  }

  result = CircularBuffer.Transaction.begin()();
  v18 = result + 4;
  v14 = *(a6 + 48) | (*(a6 + 52) << 32);
  v13 = *(a6 + 48);
LABEL_11:
  if (BYTE4(v14) == 2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(*(a6 + 32) + v13) = v11;
  *(a6 + 48) = v13 + 4;
  if (a3 != 0xFF)
  {
    result = CircularBuffer.Transaction.write(size:)(a2, a3);
    v18 += result;
  }

  if (!a4)
  {
    return v18;
  }

  if (*(a6 + 52) != 2)
  {
    v19 = *(a6 + 48);
    *(*(a6 + 32) + v19) = a4;
    *(a6 + 48) = v19 + 4;
    v20 = __OFADD__(v18, 4);
    v18 += 4;
    if (!v20)
    {
      return v18;
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Trace_Handle.write<A>(v0:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v17 = &v34 - v16;
  if (readingDebug)
  {
    v38 = v15;
    v39 = v4;
    v18 = *(a4 + 48);
    v37 = v14;
    v18(v40, v14, a4);
    v35 = v40[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v19 = readingDebugLog;
    v20 = *(v8 + 16);
    v20(v17, v7, a3);
    v21 = static os_log_type_t.default.getter();
    v36 = v19;
    if (os_log_type_enabled(v19, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v7;
      v23 = v22;
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 134218498;
      *(v23 + 4) = v35;
      *(v23 + 12) = 2080;
      v20(v12, v17, a3);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      (*(v8 + 8))(v17, a3);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v40);

      *(v23 + 14) = v28;
      *(v23 + 22) = 512;
      *(v23 + 24) = (*(v38 + 24))(a3, v38);
      _os_log_impl(&dword_26C161000, v36, v21, "w %ld: %s (FIRST: %hu)", v23, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D69EAB0](v24, -1, -1);
      v29 = v23;
      v7 = v34;
      v13 = MEMORY[0x26D69EAB0](v29, -1, -1);
    }

    else
    {
      v13 = (*(v8 + 8))(v17, a3);
    }

    v4 = v39;
  }

  MEMORY[0x28223BE20](v13);
  *(&v34 - 6) = v30;
  *(&v34 - 5) = a3;
  *(&v34 - 4) = a4;
  *(&v34 - 3) = v31;
  *(&v34 - 2) = v4;
  return _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, partial apply for closure #1 in Trace_Handle.write<A>(v0:), (&v34 - 8), a3, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v32);
}

void *Trace_Handle.writtenOnce(type:lazy:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 48))(v9, a3, a4);
  v7 = v10;
  if (v10)
  {
    os_unfair_lock_lock_with_options();
    v8 = Trace.Control.writtenOnce(type:lazy:flush:)(a1, a2 & 1, 1u);
    os_unfair_lock_unlock(v7);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Trace.Control.writtenOnce(type:lazy:flush:)(uint64_t result, int a2, unsigned __int8 a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*(v3 + 24) + 49);
  v8 = v7 & a2;
  v9 = *(v3 + 88);
  v10 = *v9;
  if (!*(*v9 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(result), (v11 & 1) == 0))
  {
    v16 = *(v4 + 76);
    v14 = (v16 + 1);
    if (v16 == -1)
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    *(v4 + 76) = v14;
    if ((v8 & 1) == 0)
    {
      v13 = v6;
      goto LABEL_12;
    }

    LOBYTE(v15) = 0;
    v13 = v6;
LABEL_8:
    v17 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *v9;
    *v9 = 0x8000000000000000;
    v19 = 0x100000000;
    if ((v15 & 1) == 0)
    {
      v19 = 0;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v19 | v14, v6, isUniquelyReferenced_nonNull_native);
    v20 = *v9;
    *v9 = v50[0];
    goto LABEL_54;
  }

  v12 = *(v10 + 56) + 16 * result;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 12);
  if ((v8 | v15))
  {
    goto LABEL_8;
  }

LABEL_12:
  v48 = v13;
  v21 = a3;
  v22 = AGTypeID.description.getter();
  v47 = specialized Trace_Handle.writtenOnce(string:)(v22, v23);

  v24 = _mangledTypeName(_:)();
  if (v25)
  {
    v46 = specialized Trace_Handle.writtenOnce(string:)(v24, v25);
  }

  else
  {
    v46 = 0;
  }

  v45 = MEMORY[0x26D69DF00](v6);
  if (*(*(v4 + 24) + 49) == 1)
  {
    v26 = Trace.Control.writeFields(of:)();
  }

  else
  {
    v26 = 0;
  }

  v27 = *(*(v6 - 8) + 64);
  v28 = *(*(v6 - 8) + 82);
  v29 = swift_conformsToProtocol2();
  v30 = swift_conformsToProtocol2();
  v31 = swift_conformsToProtocol2() == 0;
  if (!v6)
  {
    v31 = 1;
  }

  v32 = v30 == 0;
  if (!v6)
  {
    v32 = 1;
  }

  v33 = v29 == 0;
  if (!v6)
  {
    v33 = 1;
  }

  if (v33)
  {
    v34 = (v28 & 1) == 0;
  }

  else
  {
    v34 = ((v28 & 1) == 0) | 2;
  }

  if (v32)
  {
    v35 = v34;
  }

  else
  {
    v35 = v34 | 8;
  }

  if (v31)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 | 0x10;
  }

  if (swift_conformsToProtocol2() && v6)
  {
    if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
    {
      v37 = 68;
    }

    else
    {
      v37 = 4;
    }

    v36 |= v37;
  }

  result = swift_conformsToProtocol2();
  if (result && v6)
  {
    result = swift_getAssociatedTypeWitness();
    if ((v36 & 0x40) == 0 && result == MEMORY[0x277D84A98])
    {
      v39 = 96;
    }

    else
    {
      v39 = 32;
    }

    v36 |= v39;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (HIDWORD(v27))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  Kind = AGTypeGetKind();
  v50[0] = __PAIR64__(v47, v14);
  v50[1] = v45;
  v51 = v27;
  v52 = v26;
  v53 = v36;
  LOBYTE(v54) = specialized PType.Kind.init(metadataKind:)(Kind);
  v54 = v54;
  v55 = v46;
  result = specialized Trace_Handle.write<A>(_:omit:)(v50);
  if ((v7 & v21 & 1) == 0)
  {
LABEL_53:
    v41 = *(v4 + 88);
    v42 = *v41;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v41;
    *v41 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v14 | 0x100000000, v6, v43);
    v44 = *v41;
    *v41 = v49;
LABEL_54:

    return v14;
  }

  if (*(*(v4 + 32) + 56))
  {
    CircularBuffer.Transaction.commit()();
    goto LABEL_53;
  }

LABEL_58:
  __break(1u);
  return result;
}

void *Trace_Handle.write(keypath:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 48))(v17, a2, a3);
  v5 = v18;
  if (v18)
  {
    result = os_unfair_lock_lock_with_options();
    os_unfair_lock_opaque = v5[22]._os_unfair_lock_opaque;
    v7 = os_unfair_lock_opaque + 1;
    if (os_unfair_lock_opaque != -1)
    {
      v5[22]._os_unfair_lock_opaque = v7;
      v8 = HIDWORD(*a1);
      v9 = dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
      v10 = Trace.Control.writtenOnce(type:lazy:flush:)(v9, 1, 1u);
      dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
      v12 = Trace.Control.writtenOnce(type:lazy:flush:)(v11, 1, 1u);
      type metadata accessor for AnyKeyPath();

      v13 = String.init<A>(reflecting:)();
      v15 = specialized Trace_Handle.writtenOnce(string:)(v13, v14);

      specialized Trace_Handle.write<A>(_:omit:)(v7 | (v10 << 32), v12 | (v15 << 32));
      v16 = v5[22]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v5);
      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *Trace.Control.write(keypath:)(void *result)
{
  v2 = *(v1 + 80);
  v3 = (v2 + 1);
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    v4 = v1;
    *(v1 + 80) = v3;
    v5 = HIDWORD(*result);
    v6 = dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    v7 = Trace.Control.writtenOnce(type:lazy:flush:)(v6, 1, 1u);
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    v9 = Trace.Control.writtenOnce(type:lazy:flush:)(v8, 1, 1u);
    type metadata accessor for AnyKeyPath();

    v10 = String.init<A>(reflecting:)();
    v12 = specialized Trace_Handle.writtenOnce(string:)(v10, v11);

    specialized Trace_Handle.write<A>(_:omit:)(v3 | (v7 << 32), v9 | (v12 << 32));
    return *(v4 + 80);
  }

  return result;
}

Swift::Void __swiftcall Trace.Control.flushWrittenTypes()()
{
  v1 = **(v0 + 88);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = **(v0 + 88);

  v7 = 0;
  while (v4)
  {
LABEL_10:
    v12 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v13 = *(v1 + 56) + ((v7 << 10) | (16 * v12));
    if ((*(v13 + 12) & 1) == 0)
    {
      Trace.Control.writtenOnce(type:lazy:flush:)(*v13, 0, 0);
      v14 = *(v0 + 32);
      if (!*(v14 + 56))
      {
LABEL_21:
        __break(1u);
        return;
      }

      if ((*(v14 + 4) & 1) == 0 && ((*(v14 + 48) | (*(v14 + 52) << 32)) & 0xFF00000000) != 0x200000000)
      {
        *(v14 + 52);
        *(*(v14 + 32) + 4) = *(v14 + 48);
      }

      if (readingDebug)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_26C328DC0;
        *(v15 + 56) = MEMORY[0x277D837D0];
        *(v15 + 32) = 0x54494D4D4F432077;
        *(v15 + 40) = 0xEA00000000002021;
        print(_:separator:terminator:)();
      }

      v8 = *(v14 + 8);
      v9 = *(v14 + 16);
      v16[0] = *v14;
      v16[1] = v9;
      v10 = *(v14 + 48);
      v16[2] = *(v14 + 32);
      v16[3] = v10;
      v16[4] = v8;
      CircularBuffer.commit(_:)(v16);
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 52) = 2;
      *(v14 + 48) = 0;
    }
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      v7 = v11;
      goto LABEL_10;
    }
  }
}

void *specialized Trace_Handle.writtenOnce(string:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = **(v2 + 96);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 4 * v7);
    }
  }

  v9 = specialized Trace_Handle.write<A>(attachment:)(a1, a2);
  v10 = *(v3 + 96);
  v11 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  v13 = *v10;
  *v10 = v15;

  return v9;
}

char *specialized Trace_Handle.writtenOnce(string:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = **(v2 + 96);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 4 * v7);
    }
  }

  v9 = specialized Trace_Handle.write<A>(attachment:)(a1, a2);
  v10 = *(v3 + 96);
  v11 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
  v13 = *v10;
  *v10 = v15;

  return v9;
}

void (*Trace_Handle.writtenOnce(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *, void)
{
  v8 = *(a4 + 48);
  v8(v19, a3, a4);
  v9 = *v20;
  if (*(*v20 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v11)
    {
      return *(*(v9 + 56) + 4 * v10);
    }
  }

  v19[0] = a1;
  v19[1] = a2;
  v12 = Trace_Handle.write<A>(attachment:)(v19, a3, MEMORY[0x277D837D0], a4, &protocol witness table for String);
  v8(v19, a3, a4);
  v13 = v20;
  v14 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v13;
  *v13 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, a2, isUniquelyReferenced_nonNull_native);
  v16 = *v13;
  *v13 = v18;

  return v12;
}

uint64_t specialized Trace_Handle.write<A>(attachment:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4 != 1)
  {
    return 0;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = 20 * a2;
  if ((a2 * 20) >> 64 != (20 * a2) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v4[4] + 64);
  if (v5 == 0x8000000000000000 && a4 == -1)
  {
    goto LABEL_19;
  }

  if (v5 % a4)
  {
    goto LABEL_16;
  }

  result = specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(result, result + v5, *(v4[4] + 64), v4, result, a2, a3, a4);
  v7 = v4[4];
  v8 = *(v7 + 64);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 64) = v10;
    v11 = v4[7];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      v4[7] = v13;
      return v6;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void *specialized Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2)
{
  if (*v2 != 1)
  {
    return 0;
  }

  v5 = *(v2[4] + 64);

  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v20[0] = v7;
    v20[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    result = v20;
    v10 = v20 + (HIBYTE(v6) & 0xF);
    goto LABEL_10;
  }

  v7 = static String._copying(_:)();
  v6 = v11;

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_16;
  }

  result = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v9 = v7 & 0xFFFFFFFFFFFFLL;
  do
  {
    v10 = result + v9;
LABEL_10:
    v12 = a2;
    a2 = 0;
    specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(result, v10, v5, v2, a1, v12);

    v13 = v2[4];
    v14 = *(v13 + 64);
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v13 + 64) = v16;
      v17 = v2[7];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        v2[7] = v19;
        return v5;
      }
    }

    __break(1u);
LABEL_16:
    result = _StringObject.sharedUTF8.getter();
  }

  while (result);
  __break(1u);
  return result;
}

char *specialized Trace_Handle.write<A>(attachment:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4 != 1)
  {
    return 0;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = 12 * a2;
  if ((a2 * 12) >> 64 != (12 * a2) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v4[4] + 64);
  if (v5 == 0x8000000000000000 && a4 == -1)
  {
    goto LABEL_19;
  }

  if (v5 % a4)
  {
    goto LABEL_16;
  }

  result = specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(result, &result[v5], *(v4[4] + 64), v4, result, a2, a3, a4);
  v7 = v4[4];
  v8 = *(v7 + 64);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 64) = v10;
    v11 = v4[7];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      v4[7] = v13;
      return v6;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

char *specialized Trace_Handle.write<A>(attachment:)(char *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4 != 1)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 >> 60)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v4[4] + 64);
  v6 = 8 * a2;
  if (8 * a2 == 0x8000000000000000 && a4 == -1)
  {
    goto LABEL_19;
  }

  if (v6 % a4)
  {
    goto LABEL_16;
  }

  result = specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(result, &result[v6], *(v4[4] + 64), v4, result, a2, a3, a4);
  v7 = v4[4];
  v8 = *(v7 + 64);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 64) = v10;
    v11 = v4[7];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      v4[7] = v13;
      return v5;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Trace_Handle.write<A>(attachment:)(a1, a2, a3, a4);
}

{
  return specialized Trace_Handle.write<A>(attachment:)(a1, a2, a3, a4);
}

{
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  if (*v4 != 1)
  {
    return 0;
  }

  v5 = *(*(v4 + 32) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v16 = v5;
  v17 = v4;
  v18 = v19;
  result = v7(v6);
  v9 = *(v4 + 32);
  v10 = *(v9 + 64);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 64) = v12;
    v13 = *(v4 + 56);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *(v4 + 56) = v15;
      return v5;
    }
  }

  __break(1u);
  return result;
}

char *specialized Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2)
{
  if (*v2 != 1)
  {
    return 0;
  }

  v5 = *(v2[4] + 64);

  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v20[0] = v7;
    v20[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    result = v20;
    v10 = v20 + (HIBYTE(v6) & 0xF);
    goto LABEL_10;
  }

  v7 = static String._copying(_:)();
  v6 = v11;

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_16;
  }

  result = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v9 = v7 & 0xFFFFFFFFFFFFLL;
  do
  {
    v10 = &result[v9];
LABEL_10:
    v12 = a2;
    a2 = 0;
    specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(result, v10, v5, v2, a1, v12);

    v13 = v2[4];
    v14 = *(v13 + 64);
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v13 + 64) = v16;
      v17 = v2[7];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        v2[7] = v19;
        return v5;
      }
    }

    __break(1u);
LABEL_16:
    result = _StringObject.sharedUTF8.getter();
  }

  while (result);
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(attachment:)(uint64_t a1)
{
  if (*v1 != 1)
  {
    return 0;
  }

  v2 = *(v1[4] + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v4 = MEMORY[0x28223BE20](v3);
  if (v6)
  {
    result = _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFyt_Tg589_s21SwiftUITracingSupport10ByteStringV7StorageO17withBufferPointeryxxSWXElFxSWXEfU_yt_Tg5SWxRi_zRi0_zlyytIsgyr_Tf1ncn_n(v4, v5, _sSWIgy_SWytIegyr_TRTA_0);
  }

  else
  {
    result = specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(v4, v5, v2, v1, v4, v5, 0);
  }

  v8 = v1[4];
  v9 = *(v8 + 64);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 64) = v11;
    v12 = v1[7];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      v1[7] = v14;
      return v2;
    }
  }

  __break(1u);
  return result;
}

void (*Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *, void)
{
  v9 = *(a4 + 48);
  v9(v23, a2, a4);
  if (LOBYTE(v23[0]) != 1)
  {
    return 0;
  }

  v10 = (v9)(v23, a2, a4);
  v11 = *(v23[4] + 64);
  MEMORY[0x28223BE20](v10);
  (*(a5 + 24))(a1, partial apply for closure #1 in Trace_Handle.write<A>(attachment:));
  v12 = *(a4 + 64);
  result = v12(v23, a2, a4);
  v15 = *(v14 + 32);
  v16 = *(v15 + 64);
  v17 = __CFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 64) = v18;
    result(v23, 0);
    result = v12(v23, a2, a4);
    v20 = *(v19 + 56);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v19 + 56) = v22;
      result(v23, 0);
      return v11;
    }
  }

  __break(1u);
  return result;
}

void backtrace()()
{
  if (one-time initialization token for backtraceBuffer != -1)
  {
    swift_once();
  }

  v0 = backtraceBuffer;
  if ((byte_280483B00 & 1) == 0)
  {
    if (lastBacktrace)
    {
      v1 = *algn_280483AF8 - lastBacktrace;
    }

    else
    {
      v1 = 0;
    }

    bzero(backtraceBuffer, v1);
  }

  if (v0)
  {
    v2 = &v0[backtrace(v0, 512)];
    lastBacktrace = v0;
    *algn_280483AF8 = v2;
    byte_280483B00 = 0;

    _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCAA7AddressV_Tt1g5Tf4nd_n(v0, v2);
  }

  else
  {
    __break(1u);
  }
}

void BufferAttachment.filled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if ((a2 * a4) >> 64 != (a2 * a4) >> 63)
  {
LABEL_5:
    __break(1u);
  }
}

const void *static CircularBuffer.Transaction.write<A>(_:transaction:)(const void *__src, uint64_t a2, uint64_t a3)
{
  v4 = __src;
  v5 = *(*(a3 - 8) + 64);
  if (*(a2 + 52) != 2)
  {
    v6 = *(a2 + 32);
    LODWORD(v7) = *(a2 + 48);
    v8 = v7 | (*(a2 + 52) << 32);
    if (v6)
    {
      v9 = *(a2 + 40) - v6;
      v10 = v9 < v7;
      v11 = v9 - v7;
      if (v10)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v11 >= v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (*(a2 + 48))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v5 < 1)
      {
LABEL_5:
        v12 = 0;
        goto LABEL_10;
      }
    }

    CircularBuffer.Transaction.commit()();
  }

  __src = CircularBuffer.Transaction.begin()();
  v12 = __src;
  v7 = *(a2 + 48);
  v8 = v7 | (*(a2 + 52) << 32);
LABEL_10:
  if (BYTE4(v8) != 2)
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    else
    {
      __src = memcpy((*(a2 + 32) + v7), v4, v5);
      if (!HIDWORD(v5))
      {
        *(a2 + 48) = v7 + v5;
        return (v12 + v5);
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return __src;
}

uint64_t closure #1 in Trace_Handle.write<A>(v0:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 24))(a5, a7);
  v11 = *(a6 + 64);
  result = v11(v21, a4, a6);
  v14 = *(v13 + 32);
  if (*(v14 + 56))
  {
    v15 = result;
    if (a1)
    {
      v16 = &a1[v10];
    }

    else
    {
      v16 = 0;
    }

    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, v16, v14);
    v18 = v17;
    v15(v21, 0);
    v19 = v11(v21, a4, a6);
    *(v20 + 120) += v18;
    return v19(v21, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v111 + 1) = a8;
  *&v111 = a7;
  *(&v110 + 1) = a6;
  *&v110 = a5;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v120 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v25 = 0;
    goto LABEL_14;
  }

  v128 = a3;
  v121 = a2;
  v122 = a1;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v18 = v17;
  a2 = a4;
  LODWORD(a3) = *(a4[3] + 49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  *&v123 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a1 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v18);
  v22 = *(rawValue + 16);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  LOBYTE(v25) = v21;
  if (*(rawValue + 24) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v123;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v18);
    if ((v25 & 1) == (v27 & 1))
    {
      a1 = v26;
      goto LABEL_8;
    }

    goto LABEL_160;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_149;
  }

  while (1)
  {
LABEL_8:
    v28 = *(v16 + 1248);
    *(v16 + 1248) = rawValue;

    v29 = *(v16 + 1248);
    if ((v25 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(a1, v8, v18, MEMORY[0x277D84F90], *(v16 + 1248));
      outlined copy of Data._Representation(v8, v18);
    }

    isUniquelyReferenced_nonNull_native = *(v29 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * a1);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * a1) = rawValue;
    if ((v30 & 1) == 0)
    {
LABEL_145:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 16) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * a1) = rawValue;
    }

    v16 = *(rawValue + 16);
    v31 = *(rawValue + 24);
    if (v16 >= v31 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v16 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * a1) = rawValue;
    }

    a4 = a2;
    a1 = v122;
    v32 = a3 ^ 1;
    *(rawValue + 16) = v16 + 1;
    v33 = rawValue + 8 * v16;
    a3 = v128;
    *(v33 + 32) = v128;
    *(v33 + 36) = v32;
    outlined consume of Data._Representation(v8, v18);
    v25 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v121;
LABEL_14:
    v34 = *(a4[3] + 49);
    v113 = a2 - a1;
    v18 = a1 ? a2 - a1 : 0;
    if (v34)
    {
      break;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_147;
    }

    if (!HIDWORD(v18))
    {
      specialized Trace_Handle.write<A>(_:omit:)(a3 | (v18 << 32));
      if (!a1)
      {
LABEL_69:
        v73 = v25;
        return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v73);
      }

LABEL_57:
      if (v113 <= 0)
      {
        goto LABEL_69;
      }

      v112 = v25;
      if (readingDebug)
      {
        v128 = a3;
        *&v123 = specialized Collection.prefix(_:)(40, a1, a2);
        *(&v123 + 1) = v61;
        *&v124 = v62;
        *(&v124 + 1) = v63;
        a2 = v120;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
        v64 = String.init<A>(bytes:encoding:)();
        if (v65)
        {
          v66 = v64;
        }

        else
        {
          v66 = 0;
        }

        if (v65)
        {
          v67 = v65;
        }

        else
        {
          v67 = 0xE000000000000000;
        }

        v68 = a4;
        v69 = a4[7];
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v70 = readingDebugLog;
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          a2 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v123 = v18;
          *a2 = 134219010;
          *(a2 + 4) = v69;
          *(a2 + 12) = 1024;
          *(a2 + 14) = v128;
          *(a2 + 18) = 2080;
          *(a2 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000026C33E330, &v123);
          *(a2 + 28) = 2048;
          *(a2 + 30) = v113;
          *(a2 + 38) = 2080;
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v123);

          *(a2 + 40) = v72;
          _os_log_impl(&dword_26C161000, v70, v71, "w a %ld: (%u)  %s %ld bytes %s", a2, 0x30u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v18, -1, -1);
          MEMORY[0x26D69EAB0](a2, -1, -1);
        }

        else
        {
        }

        a4 = v68;
      }

      v109 = a4;
      v74 = a4[4];
      if (!*(v74 + 7))
      {
        goto LABEL_159;
      }

      v75 = 0;
      v114 = xmmword_26C328DC0;
      isUniquelyReferenced_nonNull_native = v113;
      while (2)
      {
        if (*(v74 + 52) == 2)
        {
          v122 = a1;
          a1 = *(v74 + 1);
          v8 = *(v74 + 2);
          a3 = *(v74 + 7);
          v128 = *v74;
          a2 = *(v74 + 4);
          v77 = *a1;
          OS_dispatch_semaphore.wait()();

          os_unfair_lock_lock_with_options();
          rawValue = *(v8 + 40);
          v18 = *(rawValue + 16);
          if (!v18)
          {
            goto LABEL_139;
          }

          v78 = *(rawValue + 32);
          v119 = *(rawValue + 40);
          v120 = a3;
          v79 = *(rawValue + 48);
          v117 = v78;
          v118 = v79;
          a3 = *(rawValue + 56);
          v115 = *(rawValue + 60);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 40) = rawValue;
          if (!v80 || v18 - 1 > *(rawValue + 24) >> 1)
          {
            rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80, v18, 1, rawValue);
            *(v8 + 40) = rawValue;
          }

          v81 = *(rawValue + 16);
          memmove((rawValue + 32), (rawValue + 64), 32 * v81 - 32);
          *(rawValue + 16) = v81 - 1;
          *(v8 + 40) = rawValue;
          v82 = *(v8 + 56);
          v83 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 56) = v82;
          v121 = v75;
          if ((v83 & 1) == 0)
          {
            v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v82 + 2) + 1, 1, v82);
            *(v8 + 56) = v82;
          }

          v116 = a1;
          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          v86 = a2;
          if (v85 >= v84 >> 1)
          {
            v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v82);
            *(v8 + 56) = v82;
          }

          *(v82 + 2) = v85 + 1;
          v87 = &v82[16 * v85];
          v88 = v120;
          a2 = v117;
          *(v87 + 4) = v120;
          *(v87 + 5) = a2;
          if (v115)
          {
            v18 = 0x100000000;
          }

          else
          {
            v18 = 0;
          }

          rawValue = v18 | a3;
          os_unfair_lock_unlock(v8);
          v89 = v128;
          *v74 = v128;
          *(v74 + 4) = v86;
          *(v74 + 1) = v116;
          *(v74 + 2) = v8;
          v91 = v118;
          v90 = v119;
          *(v74 + 3) = a2;
          *(v74 + 4) = v90;
          *(v74 + 5) = v91;
          *(v74 + 52) = BYTE4(v18);
          *(v74 + 12) = a3;
          *(v74 + 7) = v88;
          if (v86)
          {
            v8 = 0;
            v75 = v121;
            a1 = v122;
            goto LABEL_102;
          }

          v75 = v121;
          a1 = v122;
          if (v89 > 0x7FF)
          {
            goto LABEL_141;
          }

          if (v90)
          {
            if (v91 - v90 < a3)
            {
              goto LABEL_142;
            }

            if (v91 - v90 - a3 > 16)
            {
              v8 = 12;
              goto LABEL_98;
            }
          }

          else if (a3)
          {
            goto LABEL_143;
          }

          CircularBuffer.Transaction.commit()();
          v92 = CircularBuffer.Transaction.begin()();
          v89 = v128;
          v8 = v92 + 12;
          a3 = *(v74 + 12);
          rawValue = a3 | (*(v74 + 52) << 32);
LABEL_98:
          if (BYTE4(rawValue) == 2)
          {
            goto LABEL_156;
          }

          *(*(v74 + 4) + a3) = v89 | 0xB000;
          *(v74 + 12) = a3 + 4;
          if (*(v74 + 52) == 2)
          {
            goto LABEL_155;
          }

          *(*(v74 + 4) + (a3 + 4)) = -1;
          *(v74 + 12) = a3 + 12;
          if (*(v74 + 52) << 32 == 0x200000000)
          {
            goto LABEL_154;
          }

          *(v74 + 52) = 1;
          a3 = *(v74 + 12);
          rawValue = a3 | 0x100000000;
        }

        else
        {
          v8 = 0;
          a3 = *(v74 + 12);
          rawValue = a3 & 0xFFFFFF00FFFFFFFFLL | (*(v74 + 52) << 32);
        }

LABEL_102:
        if (BYTE4(rawValue) == 2)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v93 = *(v74 + 4);
        if (v93)
        {
          v94 = *(v74 + 5) - v93;
          rawValue = v94 - a3;
          if (v94 < a3)
          {
            goto LABEL_138;
          }

          if (isUniquelyReferenced_nonNull_native >= rawValue)
          {
            v18 = v94 - a3;
          }

          else
          {
            v18 = isUniquelyReferenced_nonNull_native;
          }

          if ((rawValue & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
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
            goto LABEL_144;
          }

          a2 = a1 + v18;
          if (a1)
          {
            memmove((v93 + a3), a1, v18);
          }

          if (HIDWORD(v18))
          {
            goto LABEL_134;
          }

          v95 = *(v74 + 12);
          v96 = __CFADD__(v95, v18);
          v97 = v95 + v18;
          if (v96)
          {
            goto LABEL_135;
          }
        }

        else
        {
          if (a3)
          {
            goto LABEL_140;
          }

          rawValue = 0;
          v18 = 0;
          a2 = a1;
          v97 = 0;
        }

        *(v74 + 12) = v97;
        v98 = v8 + v18;
        if (__OFADD__(v8, v18))
        {
          goto LABEL_136;
        }

        v99 = __OFADD__(v75, v98);
        v75 += v98;
        if (v99)
        {
          goto LABEL_137;
        }

        if (rawValue < isUniquelyReferenced_nonNull_native)
        {
          if ((*(v74 + 4) & 1) == 0 && ((*(v74 + 12) | (*(v74 + 52) << 32)) & 0xFF00000000) != 0x200000000)
          {
            *(v74 + 52);
            *(*(v74 + 4) + 4) = *(v74 + 12);
          }

          if (readingDebug)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
            v100 = swift_allocObject();
            *(v100 + 16) = v114;
            *(v100 + 56) = MEMORY[0x277D837D0];
            *(v100 + 32) = 0x54494D4D4F432077;
            *(v100 + 40) = 0xEA00000000002021;
            print(_:separator:terminator:)();
          }

          v76 = *(v74 + 8);
          v123 = *v74;
          v124 = v74[1];
          v125 = v74[2];
          v126 = v74[3];
          v127 = v76;
          CircularBuffer.commit(_:)(&v123);
          *(v74 + 3) = 0;
          *(v74 + 4) = 0;
          *(v74 + 5) = 0;
          *(v74 + 52) = 2;
          *(v74 + 12) = 0;
        }

        isUniquelyReferenced_nonNull_native = a1 + isUniquelyReferenced_nonNull_native - a2;
        a1 = a2;
        if (isUniquelyReferenced_nonNull_native <= 0)
        {
          v109[15] += v75;
          if (!readingDebug)
          {
            v73 = v112;
            return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v73);
          }

          a3 = v112;
          if (v113 >= v75)
          {
            goto LABEL_130;
          }

          if (one-time initialization token for readingDebugLog != -1)
          {
            goto LABEL_152;
          }

          goto LABEL_128;
        }

        continue;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    specialized _NativeDictionary.copy()();
    rawValue = v123;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v112 = v25;
  if (v18 < 0xFFFFFFFF)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  if (v18 >= 0xFFFFFFFF)
  {
    v36 = 28676;
  }

  else
  {
    v36 = 24580;
  }

  if (v18 >= 0xFFFF)
  {
    v37 = v35;
  }

  else
  {
    v37 = 1;
  }

  if (v18 >= 0xFFFF)
  {
    v38 = v36;
  }

  else
  {
    v38 = 20484;
  }

  if (v18 >= 0xFF)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v18 >= 0xFF)
  {
    v40 = v38;
  }

  else
  {
    v40 = 16388;
  }

  v128 = v40;
  if (readingDebug)
  {
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v41 = readingDebugLog;
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v109 = a4;
      v44 = v43;
      v45 = swift_slowAlloc();
      v122 = v41;
      *&v123 = v45;
      v46 = v45;
      *v44 = 136315138;
      v47 = T_TracepointID.describe(state:)(v45, v128);
      v121 = a2;
      v49 = v39;
      v50 = a1;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v123);
      a2 = v121;

      *(v44 + 4) = v51;
      a1 = v50;
      v39 = v49;
      _os_log_impl(&dword_26C161000, v122, v42, "id: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v52 = v44;
      a4 = v109;
      MEMORY[0x26D69EAB0](v52, -1, -1);
    }
  }

  v53 = a4[4];
  if (!*(v53 + 56))
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v25 = v112;
  if (*(v53 + 52) == 2)
  {
    goto LABEL_54;
  }

  v54 = *(v53 + 32);
  LODWORD(v55) = *(v53 + 48);
  v56 = v55 | (*(v53 + 52) << 32);
  if (v54)
  {
    v57 = *(v53 + 40) - v54;
    v58 = v57 < v55;
    v59 = v57 - v55;
    if (!v58)
    {
      if (v59 > 16)
      {
        v60 = 4;
LABEL_55:
        if (BYTE4(v56) != 2)
        {
          *(*(v53 + 32) + v55) = v128;
          *(v53 + 48) = v55 + 4;
          a4[15] += CircularBuffer.Transaction.write(size:)(v18, v39) + v60;
          if (!a1)
          {
            goto LABEL_69;
          }

          goto LABEL_57;
        }

LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_53:
      CircularBuffer.Transaction.commit()();
LABEL_54:
      v60 = CircularBuffer.Transaction.begin()() + 4;
      v55 = *(v53 + 48);
      v56 = v55 | (*(v53 + 52) << 32);
      goto LABEL_55;
    }

    __break(1u);
  }

  else if (!*(v53 + 48))
  {
    goto LABEL_53;
  }

  __break(1u);
LABEL_152:
  swift_once();
LABEL_128:
  v101 = readingDebugLog;
  v102 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v127 = v104;
    *v103 = 136315138;
    v123 = v110;
    v124 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo17T_ValueDefinitionaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo17T_ValueDefinitionaGMR);
    v105 = String.init<A>(describing:)();
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &v127);

    *(v103 + 4) = v107;
    _os_log_impl(&dword_26C161000, v101, v102, "w a Spread %s!", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x26D69EAB0](v104, -1, -1);
    MEMORY[0x26D69EAB0](v103, -1, -1);
  }

LABEL_130:
  v73 = a3;
  return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v73);
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(const void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  *(&v107 + 1) = a6;
  *&v107 = a5;
  LODWORD(v8) = a3;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &unk_280495000;
  v110 = a4;
  if (!attachmentAssertion.value._rawValue)
  {
    v109 = 0;
    goto LABEL_14;
  }

  v125 = v8;
  v119 = a1;
  v15 = a2;
  v6 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v17 = v16;
  LODWORD(v8) = *(a4[3] + 49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  *&v120 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v17);
  v21 = *(rawValue + 16);
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  LOBYTE(a4) = v20;
  if (*(rawValue + 24) < v23)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
    rawValue = v120;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v17);
    if ((a4 & 1) == (v25 & 1))
    {
      a2 = v24;
      goto LABEL_8;
    }

LABEL_156:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_145;
  }

  while (1)
  {
LABEL_8:
    v26 = *(v14 + 1248);
    *(v14 + 1248) = rawValue;

    v27 = *(v14 + 1248);
    if ((a4 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(a2, v6, v17, MEMORY[0x277D84F90], *(v14 + 1248));
      outlined copy of Data._Representation(v6, v17);
    }

    v14 = *(v27 + 56);
    rawValue = *(v14 + 8 * a2);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 8 * a2) = rawValue;
    if ((v28 & 1) == 0)
    {
LABEL_141:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 16) + 1, 1, rawValue);
      *(v14 + 8 * a2) = rawValue;
    }

    v30 = *(rawValue + 16);
    v29 = *(rawValue + 24);
    if (v30 >= v29 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, rawValue);
      *(v14 + 8 * a2) = rawValue;
    }

    a2 = v15;
    v31 = v8 ^ 1;
    *(rawValue + 16) = v30 + 1;
    v32 = rawValue + 8 * v30;
    LODWORD(v8) = v125;
    *(v32 + 32) = v125;
    *(v32 + 36) = v31;
    outlined consume of Data._Representation(v6, v17);
    v109 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a4 = v110;
    a1 = v119;
LABEL_14:
    v15 = a2 - a1;
    if (a1)
    {
      v17 = a2 - a1;
    }

    else
    {
      v17 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v17 & 0x8000000000000000) == 0)
      {
        v108 = a2 - a1;
        if (v17 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v17 >= 0xFFFFFFFF)
        {
          v34 = 28674;
        }

        else
        {
          v34 = 24578;
        }

        if (v17 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v17 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20482;
        }

        if (v17 >= 0xFF)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0;
        }

        if (v17 >= 0xFF)
        {
          v38 = v36;
        }

        else
        {
          v38 = 16386;
        }

        v125 = v38;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v39 = readingDebugLog;
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v119 = a1;
            v42 = v41;
            v43 = swift_slowAlloc();
            *&v120 = v43;
            *v42 = 136315138;
            v44 = T_TracepointID.describe(state:)(v43, v125);
            LODWORD(v117) = v37;
            v46 = a2;
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v120);
            LOBYTE(v37) = v117;

            *(v42 + 4) = v47;
            a2 = v46;
            _os_log_impl(&dword_26C161000, v39, v40, "id: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            MEMORY[0x26D69EAB0](v43, -1, -1);
            v48 = v42;
            a1 = v119;
            MEMORY[0x26D69EAB0](v48, -1, -1);
          }
        }

        a4 = v110;
        v49 = v110[4];
        if (!*(v49 + 56))
        {
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        v15 = v108;
        if (*(v49 + 52) == 2)
        {
          goto LABEL_54;
        }

        v50 = *(v49 + 32);
        LODWORD(v51) = *(v49 + 48);
        v52 = v51 | (*(v49 + 52) << 32);
        if (v50)
        {
          v53 = *(v49 + 40) - v50;
          v54 = v53 < v51;
          v55 = v53 - v51;
          if (!v54)
          {
            if (v55 > 16)
            {
              v56 = 4;
              goto LABEL_55;
            }

            goto LABEL_53;
          }

          __break(1u);
        }

        else if (!*(v49 + 48))
        {
LABEL_53:
          CircularBuffer.Transaction.commit()();
LABEL_54:
          v56 = CircularBuffer.Transaction.begin()() + 4;
          v51 = *(v49 + 48);
          v52 = v51 | (*(v49 + 52) << 32);
LABEL_55:
          if (BYTE4(v52) != 2)
          {
            *(*(v49 + 32) + v51) = v125;
            *(v49 + 48) = v51 + 4;
            a4[15] += CircularBuffer.Transaction.write(size:)(v17, v37) + v56;
            if (!a1)
            {
              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v109);
            }

            goto LABEL_57;
          }

          goto LABEL_154;
        }

        __break(1u);
LABEL_148:
        swift_once();
        goto LABEL_126;
      }

      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_143;
    }

    if (!HIDWORD(v17))
    {
      break;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    specialized _NativeDictionary.copy()();
    rawValue = v120;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v8 | (v17 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v109);
  }

LABEL_57:
  if (v15 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v109);
  }

  if (readingDebug)
  {
    v125 = v8;
    *&v120 = specialized Collection.prefix(_:)(40, a1, a2);
    *(&v120 + 1) = v57;
    *&v121 = v58;
    *(&v121 + 1) = v59;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    v60 = String.init<A>(bytes:encoding:)();
    if (v61)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0xE000000000000000;
    }

    v64 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v17 = readingDebugLog;
    a2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, a2))
    {
      v65 = v15;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v120 = v67;
      *v66 = 134219010;
      *(v66 + 4) = v64;
      *(v66 + 12) = 1024;
      *(v66 + 14) = v125;
      *(v66 + 18) = 2080;
      *(v66 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x676E69727453, 0xE600000000000000, &v120);
      *(v66 + 28) = 2048;
      *(v66 + 30) = v65;
      *(v66 + 38) = 2080;
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v120);

      *(v66 + 40) = v68;
      _os_log_impl(&dword_26C161000, v17, a2, "w a %ld: (%u)  %s %ld bytes %s", v66, 0x30u);
      swift_arrayDestroy();
      v69 = v67;
      a4 = v110;
      MEMORY[0x26D69EAB0](v69, -1, -1);
      v70 = v66;
      v15 = v65;
      MEMORY[0x26D69EAB0](v70, -1, -1);
    }

    else
    {
    }
  }

  v71 = a4[4];
  if (!*(v71 + 7))
  {
    goto LABEL_155;
  }

  v14 = 0;
  v111 = xmmword_26C328DC0;
  v108 = v15;
  while (2)
  {
    if (*(v71 + 52) == 2)
    {
      v119 = a1;
      a2 = *(v71 + 1);
      v6 = *(v71 + 2);
      v8 = *(v71 + 7);
      v125 = *v71;
      v73 = *(v71 + 4);
      v74 = *a2;
      OS_dispatch_semaphore.wait()();

      os_unfair_lock_lock_with_options();
      rawValue = *(v6 + 40);
      v17 = *(rawValue + 16);
      if (!v17)
      {
        goto LABEL_135;
      }

      v75 = *(rawValue + 32);
      v116 = *(rawValue + 40);
      v117 = v8;
      v76 = *(rawValue + 48);
      v114 = v75;
      v115 = v76;
      v8 = *(rawValue + 56);
      v112 = *(rawValue + 60);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 40) = rawValue;
      if (!v77 || v17 - 1 > *(rawValue + 24) >> 1)
      {
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77, v17, 1, rawValue);
        *(v6 + 40) = rawValue;
      }

      v78 = *(rawValue + 16);
      memmove((rawValue + 32), (rawValue + 64), 32 * v78 - 32);
      *(rawValue + 16) = v78 - 1;
      *(v6 + 40) = rawValue;
      v79 = *(v6 + 56);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 56) = v79;
      v118 = v14;
      if ((v80 & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
        *(v6 + 56) = v79;
      }

      v113 = a2;
      v82 = *(v79 + 2);
      v81 = *(v79 + 3);
      a2 = v73;
      if (v82 >= v81 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v79);
        *(v6 + 56) = v79;
      }

      *(v79 + 2) = v82 + 1;
      v83 = &v79[16 * v82];
      v84 = v117;
      v85 = v114;
      *(v83 + 4) = v117;
      *(v83 + 5) = v85;
      if (v112)
      {
        v17 = 0x100000000;
      }

      else
      {
        v17 = 0;
      }

      rawValue = v17 | v8;
      os_unfair_lock_unlock(v6);
      v86 = v125;
      *v71 = v125;
      *(v71 + 4) = a2;
      *(v71 + 1) = v113;
      *(v71 + 2) = v6;
      v88 = v115;
      v87 = v116;
      *(v71 + 3) = v85;
      *(v71 + 4) = v87;
      *(v71 + 5) = v88;
      *(v71 + 52) = BYTE4(v17);
      *(v71 + 12) = v8;
      *(v71 + 7) = v84;
      if (a2)
      {
        v6 = 0;
        v14 = v118;
        a1 = v119;
        goto LABEL_100;
      }

      v14 = v118;
      if (v86 > 0x7FF)
      {
        goto LABEL_137;
      }

      if (v87)
      {
        if (v88 - v87 < v8)
        {
          goto LABEL_138;
        }

        if ((v88 - v87 - v8) > 16)
        {
          v6 = 12;
          goto LABEL_96;
        }
      }

      else if (v8)
      {
        goto LABEL_139;
      }

      CircularBuffer.Transaction.commit()();
      v89 = CircularBuffer.Transaction.begin()();
      v86 = v125;
      v6 = v89 + 12;
      v8 = *(v71 + 12);
      rawValue = v8 | (*(v71 + 52) << 32);
LABEL_96:
      a1 = v119;
      if (BYTE4(rawValue) == 2)
      {
        goto LABEL_152;
      }

      *(*(v71 + 4) + v8) = v86 | 0xB000;
      *(v71 + 12) = v8 + 4;
      if (*(v71 + 52) == 2)
      {
        goto LABEL_151;
      }

      *(*(v71 + 4) + (v8 + 4)) = -1;
      *(v71 + 12) = v8 + 12;
      if (*(v71 + 52) << 32 == 0x200000000)
      {
        goto LABEL_150;
      }

      *(v71 + 52) = 1;
      v8 = *(v71 + 12);
      rawValue = v8 | 0x100000000;
    }

    else
    {
      v6 = 0;
      v8 = *(v71 + 12);
      rawValue = v8 & 0xFFFFFF00FFFFFFFFLL | (*(v71 + 52) << 32);
    }

LABEL_100:
    if (BYTE4(rawValue) == 2)
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v90 = *(v71 + 4);
    if (v90)
    {
      v91 = v8;
      v92 = *(v71 + 5) - v90;
      rawValue = v92 - v8;
      if (v92 < v8)
      {
        goto LABEL_134;
      }

      if (v15 >= rawValue)
      {
        v8 = v92 - v8;
      }

      else
      {
        v8 = v15;
      }

      if ((rawValue & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v17 = a1 + v8;
      if (a1)
      {
        memmove((v90 + v91), a1, v8);
      }

      if (HIDWORD(v8))
      {
        goto LABEL_130;
      }

      v93 = *(v71 + 12);
      v94 = __CFADD__(v93, v8);
      v95 = v93 + v8;
      if (v94)
      {
        goto LABEL_131;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_136;
      }

      rawValue = 0;
      v8 = 0;
      v17 = a1;
      v95 = 0;
    }

    *(v71 + 12) = v95;
    v96 = v6 + v8;
    if (__OFADD__(v6, v8))
    {
      goto LABEL_132;
    }

    v97 = __OFADD__(v14, v96);
    v14 += v96;
    if (v97)
    {
      goto LABEL_133;
    }

    if (rawValue < v15)
    {
      if ((*(v71 + 4) & 1) == 0 && ((*(v71 + 12) | (*(v71 + 52) << 32)) & 0xFF00000000) != 0x200000000)
      {
        *(v71 + 52);
        *(*(v71 + 4) + 4) = *(v71 + 12);
      }

      if (readingDebug)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v98 = swift_allocObject();
        *(v98 + 16) = v111;
        *(v98 + 56) = MEMORY[0x277D837D0];
        *(v98 + 32) = 0x54494D4D4F432077;
        *(v98 + 40) = 0xEA00000000002021;
        print(_:separator:terminator:)();
      }

      v72 = *(v71 + 8);
      v120 = *v71;
      v121 = v71[1];
      v122 = v71[2];
      v123 = v71[3];
      v124 = v72;
      CircularBuffer.commit(_:)(&v120);
      *(v71 + 3) = 0;
      *(v71 + 4) = 0;
      *(v71 + 5) = 0;
      *(v71 + 52) = 2;
      *(v71 + 12) = 0;
    }

    v15 = a1 + v15 - v17;
    a1 = v17;
    if (v15 > 0)
    {
      continue;
    }

    break;
  }

  v110[15] += v14;
  if (!readingDebug || v108 >= v14)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v109);
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_148;
  }

LABEL_126:
  v99 = readingDebugLog;
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v124 = v102;
    *v101 = 136315138;
    v120 = v107;

    v103 = String.init<A>(describing:)();
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v124);

    *(v101 + 4) = v105;
    _os_log_impl(&dword_26C161000, v99, v100, "w a Spread %s!", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    MEMORY[0x26D69EAB0](v102, -1, -1);
    MEMORY[0x26D69EAB0](v101, -1, -1);
  }

  return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v109);
}