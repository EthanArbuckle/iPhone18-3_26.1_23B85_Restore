uint64_t sub_1D218ADC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v53 = *(v51 - 8);
  v10 = MEMORY[0x1EEE9AC00](v51);
  v50 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v42 - v12;
  v13 = type metadata accessor for VUGallery.TagView(0);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v42 - v17;
  v19 = *(*(a1 + 16) + 16);
  v20 = sub_1D225055C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v46 = v20;
  v22(v18, 1, 1);
  v23 = *(v19 + 16);
  v54 = a2;
  v55 = 0;
  v56 = a3;
  v57 = 0;
  v58 = v18;
  v59 = v19;

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  sub_1D2250DBC();

  v25 = v60;
  sub_1D2176170(v18, &qword_1EC6D2110);
  v26 = *(v25 + 16);
  if (v26)
  {
    v42[2] = v5;
    v43 = a4;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7CC(0, v26, 0);
    v27 = v60;
    v28 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v42[1] = v25;
    v29 = v25 + v28;
    v30 = *(v53 + 72);
    v44 = (v21 + 32);
    v45 = v30;
    do
    {
      v52 = v27;
      v53 = v26;
      v31 = v47;
      sub_1D2174DA8(v29, v47, &qword_1EC6D2128);
      if (*(v31 + 8) >= 6u)
      {
        v32 = 5;
      }

      else
      {
        v32 = *(v31 + 8);
      }

      v33 = v50;
      sub_1D2174DA8(v31, v50, &qword_1EC6D2128);
      v34 = *(v51 + 64);
      v35 = *(v31 + *(v51 + 80));
      v36 = *v31;
      v37 = v31;
      v27 = v52;
      sub_1D2176170(v37, &qword_1EC6D2128);
      *v15 = v32;
      v38 = v49;
      (*v44)(&v15[*(v49 + 20)], v33 + v34, v46);
      v15[*(v38 + 24)] = v35;
      *&v15[*(v38 + 28)] = v36;
      v60 = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D21AF7CC(v39 > 1, v40 + 1, 1);
        v27 = v60;
      }

      *(v27 + 16) = v40 + 1;
      sub_1D21A6320(v15, v27 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, type metadata accessor for VUGallery.TagView);
      v29 += v45;
      v26 = v53 - 1;
    }

    while (v53 != 1);

    a4 = v43;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v27;
  return result;
}

uint64_t sub_1D218B2A8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20[-v9];
  v11 = *(*(a1 + 16) + 16);
  v12 = a2;
  v13 = sub_1D225055C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a3, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v15 = *(v11 + 16);
  v21 = 0;
  v22 = 1;
  v23 = v12;
  v24 = 0;
  v25 = v10;
  v26 = v11;

  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  sub_1D2250DBC();

  v17 = v27;
  sub_1D2176170(v10, &qword_1EC6D2110);
  v18 = *(v17 + 16);

  *a4 = v18 != 0;
  return result;
}

uint64_t sub_1D218B47C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B0);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D218B4F8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2128);
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = *(*(a1 + 16) + 16);
  v16 = a2;
  v17 = sub_1D225055C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v11, a3, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  v19 = *(v15 + 16);
  v27 = 0;
  v28 = 1;
  v29 = v16;
  v30 = 0;
  v31 = v11;
  v32 = v15;

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2140);
  sub_1D2250DBC();

  v21 = v33;
  sub_1D2176170(v11, &qword_1EC6D2110);
  if (*(v21 + 16))
  {
    sub_1D2174DA8(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v14, &qword_1EC6D2128);

    v22 = *(v12 + 64);
    *a5 = *v14;
    *(a5 + 8) = 0;
    return (*(v18 + 8))(&v14[v22], v17);
  }

  else
  {

    *a5 = 0;
    *(a5 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D218B7CC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_1D2250D5C();
  return v2;
}

uint64_t sub_1D218B824@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(*(a1 + 16) + 16) + 16);

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21C0);
  sub_1D2250DBC();

  v6 = *(*(*(a1 + 16) + 16) + 16);

  v7 = v6;
  sub_1D2250DBC();

  result = sub_1D2202B1C(v9);
  *a2 = v9;
  return result;
}

uint64_t sub_1D218B9A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(*(a1 + 16) + 16) + 16);

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21C0);
  sub_1D2250DBC();

  *a2 = v6;
  return result;
}

uint64_t sub_1D218BB00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(*(a1 + 16) + 16) + 16);

  v4 = v3;
  sub_1D2250DBC();

  *a2 = v6;
  return result;
}

uint64_t VUGallery.ObservationView.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VUGallery.ObservationView(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t VUGallery.ObservationView.embedding.getter()
{
  v1 = v0 + *(type metadata accessor for VUGallery.ObservationView(0) + 72);
  v2 = *v1;
  sub_1D21A3B64(*v1, *(v1 + 8));
  return v2;
}

uint64_t VUGallery.ObservationView.contextualEmbedding.getter()
{
  v1 = v0 + *(type metadata accessor for VUGallery.ObservationView(0) + 76);
  v2 = *v1;
  sub_1D21A3B64(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1D218BDF8@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v87[-v7];
  v99 = sub_1D225055C();
  v8 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2340);
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v87[-v11];
  v91 = a1;
  v12 = [a1 tags];
  if (!v12 || (v13 = v12, v14 = [v12 allObjects], v13, v15 = sub_1D2250AFC(), v14, v16 = sub_1D218C634(v15), , !v16))
  {
  }

  v101 = sub_1D21A1B90(v17);
  v18 = 0;
  sub_1D2195514(&v101);

  v19 = v101;
  v89 = a3;
  v90 = v8;
  v88 = a2;
  if (v101 < 0 || (v101 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  for (i = *(v101 + 16); i; i = sub_1D2250F4C())
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1D21AF9C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_69;
    }

    v21 = 0;
    v22 = v101;
    v93 = (v8 + 32);
    v94 = v19 & 0xC000000000000001;
    v8 = v95;
    while (!__OFADD__(v21, 1))
    {
      v100 = v21 + 1;
      if (v94)
      {
        v23 = MEMORY[0x1D3898A80](v21, v19);
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_25;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v22;
      v26 = [v23 uuid];
      if (!v26)
      {
        goto LABEL_71;
      }

      v27 = v26;
      v18 = v97;
      v28 = v98;
      v29 = v97[12];
      sub_1D225054C();

      (*v93)(v8, v28, v99);
      *(v8 + v29) = [v24 isPrimary];
      v30 = [v24 type];

      if (v30 == 2)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      if (!v30)
      {
        v31 = 0;
      }

      *(v8 + v18[16]) = v31;
      v22 = v25;
      v101 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D21AF9C8(v32 > 1, v33 + 1, 1);
        v22 = v101;
      }

      *(v22 + 16) = v33 + 1;
      sub_1D21A6938(v8, v22 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v33, &unk_1EC6D2340);
      ++v21;
      if (v100 == i)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v34 = v91;
  v35 = [v91 identifier];
  v36 = [v34 client];
  v37 = [v34 type];
  v38 = v92;
  if ((v37 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  v39 = v37;
  if (v37 > 0xFF)
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

  LODWORD(v100) = v36;
  v98 = v22;
  if (v37 > 5u)
  {
    if (v37 == 63)
    {
      v39 = 2;
    }

    else
    {
      if (v37 != 6)
      {
        goto LABEL_70;
      }

      v39 = 3;
    }
  }

  else if (v37)
  {
    if (v37 != 2)
    {
      goto LABEL_70;
    }

    v39 = 1;
  }

  v18 = &off_1E83FA000;
  v40 = [v34 embedding];
  if (v40)
  {
    v41 = sub_1D225046C();
    v43 = v42;

    sub_1D21A1ED8(v41, v43);
  }

  v44 = [v34 asset];
  if (v44)
  {
    v45 = v44;
    sub_1D225054C();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v90 + 56))(v38, v46, 1, v99);
  [v34 quality];
  v48 = v47;
  [v34 confidence];
  v50 = v49;
  v51 = [v34 mapping];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 label];
  }

  else
  {
    v53 = -1;
  }

  v54 = [v34 source];
  if (v54 > 2)
  {
LABEL_72:
    __break(1u);

    __break(1u);
    return result;
  }

  v55 = v54;
  LODWORD(v97) = [v34 isPrimary];
  v56 = [v34 mapping];
  if (v56)
  {
    v57 = v56;
    [v56 similarity];
    v59 = v58;
  }

  else
  {
    v59 = -1.0;
  }

  v60 = [v34 mapping];
  if (v60)
  {
    v61 = v60;
    v99 = [v60 partner];
  }

  else
  {
    v99 = -1;
  }

  v62 = [v34 mapping];
  if (v62)
  {
    v63 = v62;
    [v62 density];
    v65 = v64;

    if (v88)
    {
LABEL_55:
      v66 = [v34 embedding];
      v67 = v55;
      if (v66)
      {
        v68 = v66;
        v69 = sub_1D225046C();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0xF000000000000000;
      }

      v72 = v53;
      v75 = [v34 contextualEmbedding];
      if (v75)
      {
        v76 = v75;
        v73 = sub_1D225046C();
        v74 = v77;
      }

      else
      {
        v73 = 0;
        v74 = 0xF000000000000000;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v65 = -1.0;
    if (v88)
    {
      goto LABEL_55;
    }
  }

  v67 = v55;
  v72 = v53;
  v73 = 0;
  v69 = 0;
  v74 = 0xF000000000000000;
  v71 = 0xF000000000000000;
LABEL_63:
  v78 = v40 == 0;
  v79 = v100;
  v80 = v89;
  v81 = v98;
  *v89 = v35;
  v80[1] = v81;
  if (v79 >= 6)
  {
    v82 = 5;
  }

  else
  {
    v82 = v79;
  }

  *(v80 + 16) = v82;
  *(v80 + 17) = v39;
  *(v80 + 18) = v78;
  v83 = type metadata accessor for VUGallery.ObservationView(0);
  result = sub_1D21A6938(v92, v80 + v83[9], &qword_1EC6D2110);
  *(v80 + v83[10]) = v48;
  *(v80 + v83[11]) = v50;
  *(v80 + v83[12]) = v72;
  *(v80 + v83[13]) = v67;
  *(v80 + v83[14]) = v97;
  *(v80 + v83[15]) = v59;
  *(v80 + v83[16]) = v99;
  *(v80 + v83[17]) = v65;
  v85 = (v80 + v83[18]);
  *v85 = v69;
  v85[1] = v71;
  v86 = (v80 + v83[19]);
  *v86 = v73;
  v86[1] = v74;
  return result;
}

uint64_t sub_1D218C634(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1D22510BC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1D21763A8(i, v5);
    type metadata accessor for VUIndexTag();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1D225109C();
    sub_1D22510CC();
    sub_1D22510DC();
    sub_1D22510AC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1D218C720(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D22510BC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2250F4C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3898A80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D225109C();
      sub_1D22510CC();
      sub_1D22510DC();
      sub_1D22510AC();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D2250F4C();
    sub_1D22510BC();
  }

  return v8;
}

uint64_t sub_1D218C888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21C8);
  sub_1D2250D5C();
  return v1;
}

size_t sub_1D218C908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v26 = a4;
  v7 = type metadata accessor for VUGallery.ObservationView(0);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(a1 + 16) + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3 & 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = &v29;
  *(v13 + 48) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D21A72DC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1D21A732C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_369;
  v15 = _Block_copy(aBlock);
  swift_retain_n();
  v16 = v12;

  [v16 performBlockAndWait_];

  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v14 = v29;

    if (!(v14 >> 62))
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_15:

      v20 = MEMORY[0x1E69E7CC0];
LABEL_16:
      *v26 = v20;
      return result;
    }
  }

  v17 = sub_1D2250F4C();
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_4:
  aBlock[0] = v11;
  result = sub_1D21AFA08(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = aBlock[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1D3898A80](v19, v14);
      }

      else
      {
        v21 = *(v14 + 8 * v19 + 32);
      }

      v22 = v21;
      sub_1D218BDF8(v21, 0, v9);

      aBlock[0] = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D21AFA08(v23 > 1, v24 + 1, 1);
        v20 = aBlock[0];
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      sub_1D21A6320(v9, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for VUGallery.ObservationView);
    }

    while (v17 != v19);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D218CC64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21C8);
  sub_1D2250D5C();
  return v1;
}

size_t sub_1D218CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v25 = a4;
  v26 = a3;
  v6 = type metadata accessor for VUGallery.ObservationView(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(a1 + 16) + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v11 = *(v10 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  *(v12 + 32) = a2;
  *(v12 + 40) = &v28;
  *(v12 + 48) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D21A72DC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1D21A732C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_358;
  v14 = _Block_copy(aBlock);
  swift_retain_n();
  v15 = v11;

  [v15 performBlockAndWait_];

  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = v28;

    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_4;
      }

LABEL_15:

      v19 = MEMORY[0x1E69E7CC0];
LABEL_16:
      *v25 = v19;
      return result;
    }
  }

  v16 = sub_1D2250F4C();
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_4:
  aBlock[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D21AFA08(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = aBlock[0];
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1D3898A80](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      sub_1D218BDF8(v20, v26 & 1, v9);

      aBlock[0] = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D21AFA08(v22 > 1, v23 + 1, 1);
        v19 = aBlock[0];
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      sub_1D21A6320(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, type metadata accessor for VUGallery.ObservationView);
    }

    while (v16 != v18);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D218D04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
  sub_1D2250D5C();
  if (*(v2 + 16))
  {
    v0 = *(v2 + 32);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t sub_1D218D0F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D218D174@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(*(*(a1 + 16) + 16) + 16);

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
  sub_1D2250DBC();
  if (v3)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    swift_arrayDestroy();

    *a2 = v8;
  }

  return result;
}

uint64_t sub_1D218D2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D218D348@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(*(*(a1 + 16) + 16) + 16);
  MEMORY[0x1EEE9AC00](a1);

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
  sub_1D2250DBC();

  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    *a2 = v8;
  }

  return result;
}

uint64_t VUGallery.SimilarityMetric.hashValue.getter()
{
  sub_1D225132C();
  MEMORY[0x1D3898D70](0);
  return sub_1D225137C();
}

uint64_t sub_1D218D524()
{
  sub_1D225132C();
  MEMORY[0x1D3898D70](0);
  return sub_1D225137C();
}

uint64_t sub_1D218D590()
{
  sub_1D225132C();
  MEMORY[0x1D3898D70](0);
  return sub_1D225137C();
}

uint64_t sub_1D218D5E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v6 = sub_1D2211928(a1, a2);

  *a3 = v6;
  *(a3 + 4) = BYTE4(v6) & 1;
  return result;
}

unint64_t sub_1D218D66C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D0);
  sub_1D2250D5C();
  return v1 | (v2 << 32);
}

uint64_t sub_1D218D6EC@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (HIBYTE(a1) > 0x3F || ((1 << SHIBYTE(a1)) & 0x8000000000000044) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = HIBYTE(a1);
  }

  v8 = sub_1D22109C8(v7, a1, a2, 0);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v8 + 40);
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 == 0;

  *a3 = v10;
  *(a3 + 4) = v11;
  return result;
}

uint64_t sub_1D218D7AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  sub_1D2250D5C();
  return v1;
}

void sub_1D218D838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21E0);
  sub_1D2250D5C();

  v6 = sub_1D225080C();
  v7 = sub_1D2250CCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = *(v10 + 16);

    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_1D2171000, v6, v7, "Found %ld entities similar to %ld", v8, 0x16u);
    MEMORY[0x1D3899640](v8, -1, -1);
  }

  else
  {
  }

  v9 = *(v10 + 16);
  if (v9 <= a3)
  {
  }

  else if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D218DFF0(a2, v10, v10 + 32, a3, (2 * v9) | 1);
  }
}

uint64_t sub_1D218D9C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v3 = a2;
  v5 = HIBYTE(a1);
  if (!HIBYTE(a1) || v5 > 0x3F || (v6 = HIBYTE(a1), ((1 << SHIBYTE(a1)) & 0x8000000000000044) == 0))
  {
    LODWORD(v6) = 0;
  }

  v7 = *(*(a2 + 16) + 16);
  v8 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (*(v9 + 16) && (v10 = sub_1D2176DFC(v6), (v11 & 1) != 0))
  {
    v12 = *(*(*(v9 + 56) + 8 * v10) + 80);
  }

  else
  {
    v12 = INFINITY;
  }

  v13 = sub_1D22109C8(v6, a1, 0, 1);

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v60 = v13;
  if (v14)
  {
    v57 = v3;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v14, 0);
    v15 = aBlock[0];
    v16 = (v13 + 32);
    v17 = *(aBlock[0] + 2);
    do
    {
      v19 = *v16;
      v16 += 2;
      v18 = v19;
      aBlock[0] = v15;
      v20 = *(v15 + 3);
      if (v17 >= v20 >> 1)
      {
        sub_1D21AF7AC((v20 > 1), v17 + 1, 1);
        v15 = aBlock[0];
      }

      *(v15 + 2) = v17 + 1;
      *&v15[8 * v17++ + 32] = v18;
      --v14;
    }

    while (v14);
    v3 = v57;
  }

  v21 = sub_1D2206838(v15);

  v22 = *(*(v3 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D22526F0;
  if (v5)
  {
    switch(v5)
    {
      case 0x3F:
        v5 = 63;
        break;
      case 6:
        v5 = 6;
        break;
      case 2:
        v5 = 2;
        break;
      default:
        v5 = 0;
        break;
    }
  }

  sub_1D2174E10(0, &unk_1EDC886D0);
  v24 = MEMORY[0x1E69E65A8];
  *(v23 + 56) = MEMORY[0x1E69E6530];
  *(v23 + 64) = v24;
  *(v23 + 32) = v5;
  *(v23 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21A0);
  *(v23 + 104) = sub_1D2177F3C(&qword_1EC6D2568, &qword_1EC6D21A0);
  *(v23 + 72) = v21;

  v25 = sub_1D2250C5C();
  v62 = MEMORY[0x1E69E7CC8];
  v26 = *(v22 + 16);
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v22;
  v27[4] = &v62;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1D21A749C;
  *(v28 + 24) = v27;
  aBlock[4] = sub_1D21A732C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_346;
  v29 = _Block_copy(aBlock);

  v30 = v26;
  v31 = v25;

  [v30 performBlockAndWait_];

  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
LABEL_49:

    __break(1u);
    return result;
  }

  v32 = v62;

  v33 = *(v60 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v35 = (v60 + 40);
    do
    {
      v39 = *(v35 - 1);
      v40 = *v35;
      if (v39 != a1 && v12 <= v40)
      {
        if (*(v32 + 16))
        {
          v42 = sub_1D2176758(*(v35 - 1));
          if ((v43 & 1) != 0 && *(*(v32 + 56) + 8 * v42) > 1)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D21AFA4C(0, *(v34 + 2) + 1, 1);
              v34 = aBlock[0];
            }

            v37 = *(v34 + 2);
            v36 = *(v34 + 3);
            if (v37 >= v36 >> 1)
            {
              sub_1D21AFA4C((v36 > 1), v37 + 1, 1);
              v34 = aBlock[0];
            }

            *(v34 + 2) = v37 + 1;
            v38 = &v34[16 * v37];
            *(v38 + 4) = v39;
            *(v38 + 10) = v40;
          }
        }
      }

      v35 += 4;
      --v33;
    }

    while (v33);
  }

  aBlock[0] = v34;

  sub_1D2195590(aBlock);
  v30 = v58;
  if (v58)
  {
    goto LABEL_49;
  }

  v45 = aBlock[0];
  v46 = *(aBlock[0] + 2);
  if (v46)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D21AFA7C(0, v46, 0);
    v47 = 0;
    v48 = aBlock[0];
    v49 = *(aBlock[0] + 2);
    v50 = 16 * v49;
    do
    {
      v51 = *&v45[v47 + 32];
      v52 = *&v45[v47 + 40];
      aBlock[0] = v48;
      v53 = *(v48 + 3);
      v54 = v49 + 1;
      if (v49 >= v53 >> 1)
      {
        sub_1D21AFA7C((v53 > 1), v49 + 1, 1);
        v48 = aBlock[0];
      }

      *(v48 + 2) = v54;
      v55 = &v48[v50 + v47];
      *(v55 + 4) = v51;
      *(v55 + 10) = v52;
      v47 += 16;
      v49 = v54;
      --v46;
    }

    while (v46);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v48;
  return result;
}

uint64_t sub_1D218DFF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = result;
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v7 = a5 >> 1;
  v8 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    goto LABEL_29;
  }

  if (v8 >= result)
  {
    v8 = result;
  }

  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1D21AFA7C(0, v8 & ~(v8 >> 63), 0);
  v10 = v24;
  v11 = v7 - a4;
  if (v7 == a4)
  {
    swift_unknownObjectRelease();
    return v10;
  }

  if (v7 <= a4)
  {
    goto LABEL_30;
  }

  v12 = 0;
  v13 = (a3 + 16 * a4 + 8);
  do
  {
    v16 = *(v13 - 1);
    v17 = *v13;
    v18 = *(v24 + 16);
    if (v18 < v5)
    {
      v14 = *(v24 + 24);
      if (v18 >= v14 >> 1)
      {
        result = sub_1D21AFA7C((v14 > 1), v18 + 1, 1);
      }

      *(v24 + 16) = v18 + 1;
      v15 = v24 + 16 * v18;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
    }

    else
    {
      if (v12 >= v18)
      {
        __break(1u);
        goto LABEL_28;
      }

      v19 = v24 + 16 * v12;
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;
      if ((v12 + 1) < v5)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }
    }

    v13 += 4;
    --v11;
  }

  while (v11);
  swift_unknownObjectRelease();
  if (!v12)
  {
    return v10;
  }

  v20 = *(v24 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1D21AFA7C(0, v20, 0);
  if (v20 >= v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v21 = *(v24 + 16);
    if (v21 >= v12 && v21 >= v20)
    {

      sub_1D21A13C0(v22, v24 + 32, v12, (2 * v20) | 1);
      sub_1D21A13C0(v24, v24 + 32, 0, (2 * v12) | 1);
      return v23;
    }

    goto LABEL_33;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D218E228(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1D2250D5C();
  return v3;
}

uint64_t sub_1D218E294@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t **a3@<X8>)
{
  v91 = a1;
  v90 = a3;
  v3 = *(*(a1 + 16) + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v100 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0;
  *(v6 + 40) = &v100;
  *(v6 + 48) = v3;
  v7 = swift_allocObject();
  v7[2] = sub_1D21A69A0;
  v7[3] = v6;
  aBlock[4] = sub_1D21A732C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_335;
  v8 = _Block_copy(aBlock);
  swift_retain_n();
  v9 = v5;

  [v9 performBlockAndWait_];

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    goto LABEL_34;
  }

  v10 = v100;

  v6 = v10;

  aBlock[0] = v4;
  if (v10 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2250F4C())
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v13 = 0;
    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    v96 = i;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3898A80](v13, v6);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(v6 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v15 type] == ((0x63F0200u >> (8 * a2)) & 0x3F))
      {
        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
        i = v96;
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v13;
      if (v17 == i)
      {
        v18 = aBlock[0];
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v97 = v18;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = sub_1D2250F4C();
    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v18 + 16);
    if (v19)
    {
LABEL_20:
      aBlock[0] = v12;
      sub_1D21AFADC(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        goto LABEL_90;
      }

      v20 = 0;
      v21 = aBlock[0];
      v22 = v18;
      v23 = v18 & 0xC000000000000001;
      do
      {
        if (v23)
        {
          v24 = MEMORY[0x1D3898A80](v20, v22);
        }

        else
        {
          v24 = *(v22 + 8 * v20 + 32);
        }

        v25 = v24;
        v26 = [v24 identifier];
        v27 = [v25 mapping];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 partner];
        }

        else
        {
          v29 = -1;
        }

        aBlock[0] = v21;
        v31 = v21[2];
        v30 = v21[3];
        if (v31 >= v30 >> 1)
        {
          sub_1D21AFADC((v30 > 1), v31 + 1, 1);
          v21 = aBlock[0];
        }

        ++v20;
        v21[2] = v31 + 1;
        v32 = &v21[2 * v31];
        v32[4] = v26;
        v32[5] = v29;
        v22 = v97;
      }

      while (v19 != v20);
      v18 = v97;
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_38;
    }
  }

  if (!v12[2])
  {
    v33 = MEMORY[0x1E69E7CC8];
    goto LABEL_39;
  }

LABEL_38:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2550);
  v33 = sub_1D225114C();
LABEL_39:
  aBlock[0] = v33;

  sub_1D21A1840(v34, 1, aBlock);
  if (v92)
  {
    goto LABEL_93;
  }

  v35 = aBlock[0];
  if (v19)
  {
    aBlock[0] = v12;
    sub_1D21AFAAC(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      goto LABEL_91;
    }

    v93 = v35;
    v36 = 0;
    v37 = aBlock[0];
    v38 = v18;
    v39 = v18 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        v40 = MEMORY[0x1D3898A80](v36, v38);
      }

      else
      {
        v40 = *(v38 + 8 * v36 + 32);
      }

      v41 = v40;
      v42 = [v40 identifier];
      v43 = [v41 mapping];
      if (v43)
      {
        v44 = v43;
        [v43 similarity];
        v46 = v45;
      }

      else
      {
        v46 = -1.0;
      }

      aBlock[0] = v37;
      v48 = v37[2];
      v47 = v37[3];
      if (v48 >= v47 >> 1)
      {
        sub_1D21AFAAC((v47 > 1), v48 + 1, 1);
        v37 = aBlock[0];
      }

      ++v36;
      v37[2] = v48 + 1;
      v49 = &v37[2 * v48];
      v49[4] = v42;
      *(v49 + 10) = v46;
      v38 = v97;
    }

    while (v19 != v36);

    v35 = v93;
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  v50 = MEMORY[0x1E69E7CC8];
  if (v37[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2558);
    v51 = sub_1D225114C();
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC8];
  }

  aBlock[0] = v51;

  sub_1D21A14E0(v52, 1, aBlock);

  v53 = aBlock[0];

  LOBYTE(aBlock[0]) = 1;
  v54 = sub_1D2231568(0x63F0200u >> (8 * a2), 0x100000000, v35, v53, 1, 0, 0, 0);

  v55 = 0;
  v100 = v50;
  v56 = v54 + 64;
  v98 = v54;
  v57 = 1 << *(v54 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v54 + 64);
  v60 = (v57 + 63) >> 6;
  while (v59)
  {
LABEL_66:
    v62 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v63 = (v55 << 9) | (8 * v62);
    v64 = *(*(v98 + 48) + v63);
    v65 = *(*(v98 + 56) + v63);
    v66 = v100;
    if (v100[2] && (sub_1D2176758(v65), (v67 & 1) != 0))
    {
      v68 = sub_1D21DF1F8(aBlock, v65);
      v70 = *v69;
      if (*v69)
      {
        v71 = v69;
        v95 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = sub_1D2196A4C(0, *(v70 + 2) + 1, 1, v70, &qword_1EC6D24C0);
          *v71 = v70;
        }

        v74 = *(v70 + 2);
        v73 = *(v70 + 3);
        if (v74 >= v73 >> 1)
        {
          v70 = sub_1D2196A4C((v73 > 1), v74 + 1, 1, v70, &qword_1EC6D24C0);
          *v71 = v70;
        }

        *(v70 + 2) = v74 + 1;
        *&v70[8 * v74 + 32] = v64;
        (v95)(aBlock, 0);
      }

      else
      {
        (v68)(aBlock, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1D22526E0;
      *(v75 + 32) = v64;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v66;
      v77 = sub_1D2176758(v65);
      v79 = v66[2];
      v80 = (v78 & 1) == 0;
      v81 = __OFADD__(v79, v80);
      v82 = v79 + v80;
      if (v81)
      {
        goto LABEL_88;
      }

      v83 = v78;
      if (v66[3] >= v82)
      {
        if (v76)
        {
          goto LABEL_79;
        }

        v88 = v77;
        sub_1D21B7130();
        v77 = v88;
        v85 = aBlock[0];
        if (v83)
        {
          goto LABEL_60;
        }

LABEL_80:
        v85[(v77 >> 6) + 8] |= 1 << v77;
        *(v85[6] + 8 * v77) = v65;
        *(v85[7] + 8 * v77) = v75;
        v86 = v85[2];
        v81 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v81)
        {
          goto LABEL_89;
        }

        v85[2] = v87;
        v100 = v85;
      }

      else
      {
        sub_1D21B1C6C(v82, v76);
        v77 = sub_1D2176758(v65);
        if ((v83 & 1) != (v84 & 1))
        {
          goto LABEL_92;
        }

LABEL_79:
        v85 = aBlock[0];
        if ((v83 & 1) == 0)
        {
          goto LABEL_80;
        }

LABEL_60:
        *(v85[7] + 8 * v77) = v75;

        v100 = v85;
      }
    }
  }

  while (1)
  {
    v61 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v61 >= v60)
    {

      *v90 = v100;
      return result;
    }

    v59 = *(v56 + 8 * v61);
    ++v55;
    if (v59)
    {
      v55 = v61;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_1D22512AC();
  __break(1u);
LABEL_93:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t VUGallery.ClusteringOptions.threshold.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void __swiftcall VUGallery.ClusteringOptions.init(threshold:forceFullClustering:)(VisualUnderstanding::VUGallery::ClusteringOptions *__return_ptr retstr, Swift::Float_optional *threshold, Swift::Bool forceFullClustering)
{
  LODWORD(retstr->threshold.value) = threshold;
  retstr->threshold.is_nil = BYTE4(threshold) & 1;
  retstr->forceFullClustering = forceFullClustering;
}

uint64_t sub_1D218ED1C(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CD0];
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(swift_allocObject() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D21F0);
  sub_1D2250D5C();
  if (v12)
  {
  }

  else
  {
    v6 = CFAbsoluteTimeGetCurrent();

    v7 = sub_1D225080C();
    v8 = sub_1D2250CBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218496;
      *(v9 + 4) = *(v13 + 16);

      *(v9 + 12) = 2048;
      *(v9 + 14) = *(a2 + 16);

      *(v9 + 22) = 2048;
      *(v9 + 24) = (v6 - Current) * 1000.0;
      _os_log_impl(&dword_1D2171000, v7, v8, "Extracting %ld clusters out of %ld assets took %fms", v9, 0x20u);
      MEMORY[0x1D3899640](v9, -1, -1);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v10);
    sub_1D2250D5C();
  }
}

id sub_1D218EFE0(uint64_t a1, void *a2)
{
  v4 = sub_1D225055C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  result = [a2 label];
  if (result != -1)
  {
    [a2 density];
    (*(v5 + 16))(v8, a1, v4);
    swift_beginAccess();
    sub_1D2198104(v10, v8);
    swift_endAccess();
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_1D218F184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v137 = a5;
  v134 = a4;
  v125 = a7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
  v11 = *(v123 - 8);
  v12 = MEMORY[0x1EEE9AC00](v123);
  v122 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v117 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v124 = v117 - v17;
  v18 = sub_1D225055C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v131 = v117 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2530);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  *&v139 = v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  *&v136 = v117 - v27;
  v145 = MEMORY[0x1E69E7CC8];
  if ((a1 & 0xFF0000000000) == 0x20000000000 || (a1 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
    v38 = swift_allocObject();
    v139 = xmmword_1D2252720;
    *(v38 + 16) = xmmword_1D2252720;
    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v39 = swift_allocObject();
    v136 = xmmword_1D22526E0;
    *(v39 + 16) = xmmword_1D22526E0;
    v40 = MEMORY[0x1E69E7558];
    *(v39 + 56) = MEMORY[0x1E69E7508];
    *(v39 + 64) = v40;
    *(v39 + 32) = 0x63F0200u >> (8 * a3);
    *(v38 + 32) = sub_1D2250C5C();
    v144 = v38;
    if (*(a6 + 16) >> 4 < 0x271uLL)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v139;
      v42 = swift_allocObject();
      *(v42 + 16) = v136;
      *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21C0);
      *(v42 + 64) = sub_1D2177F3C(&qword_1EC6D2538, &qword_1EC6D21C0);
      *(v42 + 32) = a6;

      *(inited + 32) = sub_1D2250C5C();
      sub_1D217A694(inited);
    }

    v44 = sub_1D22068AC(v43);

    v45 = *(*(a2 + 16) + 16);

    v46 = sub_1D2250AEC();

    v47 = [objc_opt_self() andPredicateWithSubpredicates_];

    v49 = MEMORY[0x1EEE9AC00](v48);
    v117[-4] = v44;
    v117[-3] = &v145;
    v50 = v137;
    v117[-2] = v134;
    v117[-1] = v50;
    MEMORY[0x1EEE9AC00](v49);
    v117[-10] = v47;
    v117[-9] = &unk_1F4DADE00;
    v117[-8] = &unk_1F4DADE40;
    v117[-7] = 1024;
    v117[-6] = v45;
    v117[-5] = sub_1D21A68E4;
    v117[-4] = v51;
    v117[-3] = 0;
    v117[-2] = 0;
    v53 = v52;
    v54 = v138;
    sub_1D2250DBC();
    v22 = v54;
    if (v54)
    {
      swift_arrayDestroy();
    }

    swift_arrayDestroy();

    v56 = v125;
  }

  else
  {
    v135 = a6;
    v133 = a1;
    v118 = v16;
    v120 = v11;
    v144 = MEMORY[0x1E69E7CC8];
    v142 = MEMORY[0x1E69E7CC8];
    v143 = MEMORY[0x1E69E7CC8];
    v141 = MEMORY[0x1E69E7CC8];
    v132 = a2;
    v28 = *(*(a2 + 16) + 16);
    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v29 = swift_allocObject();
    v119 = xmmword_1D22526E0;
    *(v29 + 16) = xmmword_1D22526E0;
    v30 = MEMORY[0x1E69E7558];
    *(v29 + 56) = MEMORY[0x1E69E7508];
    *(v29 + 64) = v30;
    LODWORD(v130) = 0x63F0200u >> (8 * a3);
    *(v29 + 32) = v130;

    v31 = sub_1D2250C5C();
    v32 = MEMORY[0x1EEE9AC00](v31);
    v117[-6] = &v144;
    v117[-5] = &v143;
    v117[-4] = &v142;
    v117[-3] = &v141;
    v33 = v137;
    v117[-2] = v134;
    v117[-1] = v33;
    v117[-10] = MEMORY[0x1EEE9AC00](v32);
    v117[-9] = &unk_1F4DADD90;
    v117[-8] = &unk_1F4DADDD0;
    v117[-7] = 1024;
    v117[-6] = v28;
    v117[-5] = sub_1D21A68F0;
    v117[-4] = v34;
    v117[-3] = 0;
    v117[-2] = 0;
    v36 = v35;
    v37 = v138;
    sub_1D2250DBC();
    swift_arrayDestroy();

    v121 = v37;
    if (v37)
    {
    }

    v57 = v144;
    v58 = v143;

    LOBYTE(v140) = 0;
    v117[1] = v57;
    v117[2] = v58;
    v127 = sub_1D2231568(v130, v133, v57, v58, 1, 1, 0, 0);

    v59 = v141 + 64;
    v60 = 1 << *(v141 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v141 + 64);
    v126 = (v60 + 63) >> 6;
    v128 = (v19 + 16);
    v138 = (v19 + 32);
    v132 = (v19 + 8);
    v129 = v141;

    v63 = 0;
    v117[0] = MEMORY[0x1E69E7CC8];
    v133 = v59;
    v134 = v22;
    v64 = v139;
    if (!v62)
    {
      goto LABEL_15;
    }

    while (2)
    {
      v65 = v63;
LABEL_23:
      v68 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v69 = v68 | (v65 << 6);
      v70 = *(*(v129 + 48) + 8 * v69);
      v71 = v131;
      (*(v19 + 16))(v131, *(v129 + 56) + *(v19 + 72) * v69, v18);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2540);
      v73 = *(v72 + 48);
      v74 = v139;
      *v139 = v70;
      v64 = v74;
      (*(v19 + 32))(v74 + v73, v71, v18);
      (*(*(v72 - 8) + 56))(v64, 0, 1, v72);
LABEL_24:
      v75 = v136;
      sub_1D21A6938(v64, v136, &qword_1EC6D2530);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2540);
      if ((*(*(v76 - 8) + 48))(v75, 1, v76) != 1)
      {
        v137 = *v75;
        v77 = v75 + *(v76 + 48);
        v22 = v134;
        v130 = *v138;
        v130(v134, v77, v18);
        v78 = 0;
        v79 = *(v135 + 16);
        do
        {
          if (v79 == v78)
          {
            goto LABEL_30;
          }

          v80 = v78 + 1;
          sub_1D21A4090(&qword_1EDC87220, 255, MEMORY[0x1E69695A8]);
          v81 = sub_1D225091C();
          v78 = v80;
        }

        while ((v81 & 1) == 0);
        v82 = v127;
        if (!*(v127 + 16))
        {
          goto LABEL_30;
        }

        v83 = sub_1D2176758(v137);
        if ((v84 & 1) == 0)
        {
          goto LABEL_30;
        }

        v86 = *(*(v82 + 56) + 8 * v83);
        v87 = *(v123 + 48);
        (*v128)(v124, v22, v18);
        v88 = v142;
        v89 = 0;
        if (*(v142 + 16))
        {
          v90 = sub_1D2176758(v137);
          if (v91)
          {
            v89 = *(*(v88 + 56) + 4 * v90);
          }
        }

        *(v124 + v87) = v89;
        if (!*(v117[0] + 16) || (sub_1D2176758(v86), (v92 & 1) == 0))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2548);
          v106 = (*(v120 + 80) + 32) & ~*(v120 + 80);
          v107 = swift_allocObject();
          *(v107 + 16) = v119;
          v108 = v124;
          v137 = v86;
          sub_1D2174DA8(v124, v107 + v106, &qword_1EC6D2528);
          v109 = v145;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140 = v109;
          sub_1D21BA4BC(v107, v137, isUniquelyReferenced_nonNull_native);
          v117[0] = v140;
          v145 = v140;
          sub_1D2176170(v108, &qword_1EC6D2528);
LABEL_30:
          (*v132)(v22, v18);
          goto LABEL_31;
        }

        v93 = v118;
        sub_1D2174DA8(v124, v118, &qword_1EC6D2528);
        v94 = *(v123 + 48);
        v95 = *(v93 + v94);
        v96 = v122;
        v130(v122, v93, v18);
        *(v96 + v94) = v95;
        v97 = v145;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v140 = v97;
        v100 = sub_1D2176758(v86);
        v101 = *(v97 + 16);
        v102 = (v99 & 1) == 0;
        v103 = v101 + v102;
        if (__OFADD__(v101, v102))
        {
          goto LABEL_58;
        }

        if (*(v97 + 24) < v103)
        {
          LODWORD(v137) = v99;
          sub_1D21B22B0(v103, v98);
          v104 = sub_1D2176758(v86);
          if ((v137 & 1) != (v105 & 1))
          {
            goto LABEL_59;
          }

          v100 = v104;
          if ((v137 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_47:
          v111 = *(*(v140 + 56) + 8 * v100);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1D2196730(0, v111[2] + 1, 1, v111, &qword_1EC6D2548, &unk_1D22544B0, &qword_1EC6D2528);
          }

          v113 = v111[2];
          v112 = v111[3];
          v137 = v100;
          if (v113 >= v112 >> 1)
          {
            v111 = sub_1D2196730(v112 > 1, v113 + 1, 1, v111, &qword_1EC6D2548, &unk_1D22544B0, &qword_1EC6D2528);
          }

          v111[2] = v113 + 1;
          sub_1D21A6938(v122, v111 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v113, &qword_1EC6D2528);
          *(*(v140 + 56) + 8 * v137) = v111;

          sub_1D2176170(v124, &qword_1EC6D2528);
          (*v132)(v22, v18);

          v117[0] = v140;
          v145 = v140;
LABEL_31:
          v59 = v133;
          v64 = v139;
          if (v62)
          {
            continue;
          }

LABEL_15:
          if (v126 <= v63 + 1)
          {
            v66 = v63 + 1;
          }

          else
          {
            v66 = v126;
          }

          v67 = v66 - 1;
          while (1)
          {
            v65 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            if (v65 >= v126)
            {
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2540);
              (*(*(v85 - 8) + 56))(v64, 1, 1, v85);
              v62 = 0;
              v63 = v67;
              goto LABEL_24;
            }

            v62 = *(v59 + 8 * v65);
            ++v63;
            if (v62)
            {
              v63 = v65;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          sub_1D22512AC();
          __break(1u);
          goto LABEL_60;
        }

        if (v98)
        {
          if (v99)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v114 = v99;
          sub_1D21B7538();
          if (v114)
          {
            goto LABEL_47;
          }
        }

LABEL_53:
        __break(1u);
      }

      break;
    }

    v56 = v125;
    v22 = v121;
  }

  v116 = sub_1D2182094(v115);

  v144 = v116;

  sub_1D21956E4(&v144);
  if (!v22)
  {

    *v56 = v144;
    return result;
  }

LABEL_60:

  __break(1u);
  return result;
}

uint64_t sub_1D2190214(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a6;
  v46 = a7;
  v42 = a4;
  v43 = a5;
  v44 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v41 - v18;
  v20 = sub_1D225055C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a2 observation];
  if (!v24)
  {
    (*(v21 + 56))(v19, 1, 1, v20);
    return sub_1D2176170(v19, &qword_1EC6D2110);
  }

  v25 = v24;
  v41[1] = a8;
  v26 = [v24 asset];

  if (v26)
  {
    sub_1D225054C();

    v27 = *(v21 + 56);
    v27(v17, 0, 1, v20);
  }

  else
  {
    v27 = *(v21 + 56);
    v27(v17, 1, 1, v20);
  }

  sub_1D21A6938(v17, v19, &qword_1EC6D2110);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1D2176170(v19, &qword_1EC6D2110);
  }

  (*(v21 + 32))(v23, v19, v20);
  v29 = [a2 partner];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *a3;
  *a3 = 0x8000000000000000;
  v31 = v29;
  v32 = v44;
  sub_1D21B9BE8(v31, v44, isUniquelyReferenced_nonNull_native);
  *a3 = v47;

  [a2 similarity];
  v34 = v33;
  v35 = v42;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v35;
  *v35 = 0x8000000000000000;
  sub_1D21B9EA4(v32, v36, v34);
  *v35 = v47;

  [a2 diversity];
  v38 = v37;
  v39 = v43;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v39;
  *v39 = 0x8000000000000000;
  sub_1D21B9EA4(v32, v40, v38);
  *v39 = v47;

  (*(v21 + 16))(v14, v23, v20);
  v27(v14, 0, 1, v20);
  sub_1D21DE890(v14, v32);
  sub_1D218EFE0(v23, a2);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_1D2190618(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  v69 = a6;
  v70 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
  v67 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v63 - v20;
  v22 = sub_1D225055C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v26 = [a2 observation];
  if (!v26)
  {
    (*(v23 + 56))(v21, 1, 1, v22);
    return sub_1D2176170(v21, &qword_1EC6D2110);
  }

  v27 = v26;
  v65 = v15;
  v28 = a4;
  v29 = [v26 asset];

  if (v29)
  {
    sub_1D225054C();

    (*(v23 + 56))(v19, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(v19, 1, 1, v22);
  }

  sub_1D21A6938(v19, v21, &qword_1EC6D2110);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_1D2176170(v21, &qword_1EC6D2110);
  }

  v31 = v28;
  v32 = *(v23 + 32);
  v33 = v71;
  v32(v71, v21, v22);
  if ((sub_1D21D3300(v33, v70) & 1) == 0)
  {
    return (*(v23 + 8))(v33, v22);
  }

  v64 = v32;
  v34 = v31;
  v35 = [v25 label];
  v36 = *(v8 + 48);
  v37 = v33;
  v38 = v65;
  (*(v23 + 16))(v65, v37, v22);
  v70 = v25;
  [v25 diversity];
  *(v38 + v36) = v39;
  v40 = v35;
  v41 = v34;
  if (!*(*v34 + 16) || (sub_1D2176758(v40), (v42 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2548);
    v56 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D22526E0;
    sub_1D2174DA8(v38, v57 + v56, &qword_1EC6D2528);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *v34;
    *v34 = 0x8000000000000000;
    sub_1D21BA4BC(v57, v40, isUniquelyReferenced_nonNull_native);
    v59 = v72;
LABEL_24:
    *v41 = v59;
    v62 = v71;
    sub_1D218EFE0(v71, v70);
    sub_1D2176170(v38, &qword_1EC6D2528);
    return (*(v23 + 8))(v62, v22);
  }

  sub_1D2174DA8(v38, v13, &qword_1EC6D2528);
  v43 = *(v8 + 48);
  v44 = *&v13[v43];
  v45 = v66;
  v64(v66, v13, v22);
  *(v45 + v43) = v44;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v41;
  v47 = v72;
  *v41 = 0x8000000000000000;
  v49 = sub_1D2176758(v40);
  v50 = v47[2];
  v51 = (v48 & 1) == 0;
  v52 = v50 + v51;
  if (__OFADD__(v50, v51))
  {
    __break(1u);
    goto LABEL_26;
  }

  v53 = v48;
  if (v47[3] >= v52)
  {
    if (v46)
    {
      if (v48)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D21B7538();
      if (v53)
      {
        goto LABEL_20;
      }
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1D21B22B0(v52, v46);
  v54 = sub_1D2176758(v40);
  if ((v53 & 1) == (v55 & 1))
  {
    v49 = v54;
    if ((v53 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_20:
    v47 = *(v72[7] + 8 * v49);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_21:
      v61 = v47[2];
      v60 = v47[3];
      if (v61 >= v60 >> 1)
      {
        v47 = sub_1D2196730(v60 > 1, v61 + 1, 1, v47, &qword_1EC6D2548, &unk_1D22544B0, &qword_1EC6D2528);
      }

      v47[2] = v61 + 1;
      sub_1D21A6938(v66, v47 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v61, &qword_1EC6D2528);
      v59 = v72;
      *(v72[7] + 8 * v49) = v47;
      goto LABEL_24;
    }

LABEL_26:
    v47 = sub_1D2196730(0, v47[2] + 1, 1, v47, &qword_1EC6D2548, &unk_1D22544B0, &qword_1EC6D2528);
    goto LABEL_21;
  }

LABEL_29:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D2190CB4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = v25 - v9;
  v10 = sub_1D225055C();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;

  sub_1D2195788(&v32);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v13 = v32;
    v14 = v32[2];
    if (v14)
    {
      v25[1] = 0;
      v26 = a2;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1D21AF8C0(0, v14, 0);
      v15 = v32;
      v16 = *(v6 + 80);
      v25[0] = v13;
      v17 = v13 + ((v16 + 32) & ~v16);
      v27 = *(v6 + 72);
      v18 = (v30 + 32);
      do
      {
        v31 = v14;
        v19 = v28;
        sub_1D2174DA8(v17, v28, &qword_1EC6D2528);
        v20 = v29;
        sub_1D21A6938(v19, v29, &qword_1EC6D2528);
        v21 = *v18;
        (*v18)(v12, v20, v10);
        v32 = v15;
        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          sub_1D21AF8C0(v22 > 1, v23 + 1, 1);
          v15 = v32;
        }

        v15[2] = v23 + 1;
        v21(v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, v12, v10);
        v17 += v27;
        v14 = v31 - 1;
      }

      while (v31 != 1);

      a2 = v26;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v15;
  }

  return result;
}

uint64_t sub_1D2190FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(*a2 + 16);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    swift_beginAccess();
    v9 = *(*a3 + 16) != 0;
  }

  swift_beginAccess();
  v10 = *(*a3 + 16);
  *a4 = a1;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v8;
}

uint64_t sub_1D21911A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v98 = MEMORY[0x1E69E7CC8];
  v97 = MEMORY[0x1E69E7CC8];
  v10 = *(*(a1 + 16) + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D22526F0;
  v12 = 0x63F0200u >> (8 * a2);
  v13 = MEMORY[0x1E69E7558];
  *(v11 + 56) = MEMORY[0x1E69E7508];
  *(v11 + 64) = v13;
  v14 = MEMORY[0x1E69E7290];
  *(v11 + 32) = v12;
  v15 = MEMORY[0x1E69E72E8];
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = 0;

  v16 = sub_1D2250C5C();
  v17 = *(v10 + 16);
  sub_1D2250DBC();
  if (v6)
  {
  }

  sub_1D21A65D8(aIdentifier_5);

  v18 = sub_1D2231568(v12, 0x100000000, v98, v97, 1, 0, 0, 0);

  v20 = sub_1D21DF564(v19);

  v22 = sub_1D21DF564(v21);
  v23 = sub_1D21C8BC4(v22, v20);

  v24 = sub_1D21A2E34(v23, v18);
  swift_bridgeObjectRelease_n();

  v90 = v23;
  v25 = sub_1D21A2E34(v23, a3);

  if (a4)
  {
    sub_1D21D2A74(v24, v25);
  }

  else
  {
    sub_1D21D218C(v24, v25);
  }

  v28 = v26;
  v29 = v27;
  if (a5)
  {

    v31 = sub_1D21DF65C(v30);
    v32 = v31;
    v33 = 0;
    v86 = v31 + 56;
    v34 = 1 << *(v31 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v31 + 56);
    v85 = (v34 + 63) >> 6;
    v87 = (v25 + 32);
    v81 = MEMORY[0x1E69E7CC8];
    v83 = MEMORY[0x1E69E7CC8];
    v92 = v24;
    v88 = v31;
    v89 = v25;
    while (v36)
    {
LABEL_20:
      v43 = *(*(v32 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v36)))));
      v44 = *(v25 + 16);
      if (v44)
      {
        v94 = MEMORY[0x1E69E7CC0];
        sub_1D21AF7AC(0, v44, 0);
        v45 = v94;
        v46 = *(v94 + 16);
        v47 = v87;
        do
        {
          v49 = *v47++;
          v48 = v49;
          if (v49 == v43)
          {
            v50 = v48;
          }

          else
          {
            v50 = -1;
          }

          v51 = *(v94 + 24);
          if (v46 >= v51 >> 1)
          {
            sub_1D21AF7AC((v51 > 1), v46 + 1, 1);
          }

          *(v94 + 16) = v46 + 1;
          *(v94 + 8 * v46++ + 32) = v50;
          --v44;
        }

        while (v44);
        v32 = v88;
        v25 = v89;
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      if (a4)
      {
        sub_1D21D2A74(v92, v45);
      }

      else
      {
        sub_1D21D218C(v92, v45);
      }

      v39 = v37;
      v40 = v38;
      v36 &= v36 - 1;

      if ((~v39 & 0x7F800000) != 0 || (v39 & 0x7FFFFF) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v83;
        v54 = sub_1D2176758(v43);
        v55 = v83[2];
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_56;
        }

        if (v83[3] >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = v53;
            sub_1D21B6D70();
            v53 = v75;
          }
        }

        else
        {
          v84 = v53;
          sub_1D21B1670(v57, isUniquelyReferenced_nonNull_native);
          v58 = sub_1D2176758(v43);
          v60 = v59 & 1;
          v53 = v84;
          if ((v84 & 1) != v60)
          {
            goto LABEL_60;
          }

          v54 = v58;
        }

        v83 = v95;
        if (v53)
        {
          *(v95[7] + 4 * v54) = v39;
        }

        else
        {
          v95[(v54 >> 6) + 8] |= 1 << v54;
          *(v95[6] + 8 * v54) = v43;
          *(v95[7] + 4 * v54) = v39;
          v61 = v95[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_58;
          }

          v95[2] = v63;
        }

        v64 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v81;
        v66 = sub_1D2176758(v43);
        v67 = v81[2];
        v68 = (v65 & 1) == 0;
        v69 = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_57;
        }

        if (v81[3] >= v69)
        {
          if ((v64 & 1) == 0)
          {
            v76 = v65;
            sub_1D21B6D70();
            v65 = v76;
          }
        }

        else
        {
          v82 = v65;
          sub_1D21B1670(v69, v64);
          v70 = sub_1D2176758(v43);
          v72 = v71 & 1;
          v65 = v82;
          if ((v82 & 1) != v72)
          {
            goto LABEL_60;
          }

          v66 = v70;
        }

        v81 = v96;
        if (v65)
        {
          *(v96[7] + 4 * v66) = v40;
        }

        else
        {
          v96[(v66 >> 6) + 8] |= 1 << v66;
          *(v96[6] + 8 * v66) = v43;
          *(v96[7] + 4 * v66) = v40;
          v73 = v96[2];
          v62 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v62)
          {
            goto LABEL_59;
          }

          v96[2] = v74;
        }
      }
    }

    while (1)
    {
      v42 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v42 >= v85)
      {

        v77 = v81;
        v78 = v83;
        goto LABEL_54;
      }

      v36 = *(v86 + 8 * v42);
      ++v33;
      if (v36)
      {
        v33 = v42;
        goto LABEL_20;
      }
    }

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
    result = sub_1D22512AC();
    __break(1u);
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC8];
    v78 = MEMORY[0x1E69E7CC8];
LABEL_54:

    v79 = *(v90 + 16);

    *a6 = v28;
    *(a6 + 4) = v29;
    *(a6 + 8) = v78;
    *(a6 + 16) = v77;
    *(a6 + 24) = v79;
  }

  return result;
}

uint64_t sub_1D21918B4(uint64_t a1, id a2, uint64_t *a3, uint64_t *a4)
{
  v8 = [a2 partner];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a3;
  *a3 = 0x8000000000000000;
  sub_1D21B9BE8(v8, a1, isUniquelyReferenced_nonNull_native);
  *a3 = v14;

  [a2 similarity];
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a4;
  *a4 = 0x8000000000000000;
  sub_1D21B9EA4(a1, v12, v11);
  *a4 = v15;
}

void sub_1D21919B0()
{
  v1 = sub_1D225092C();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    v3 = sub_1D225092C();
    v15 = sub_1D21A3DEC;
    v16 = v0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D2182414;
    v14 = &block_descriptor_78;
    v4 = _Block_copy(&v11);

    AnalyticsSendEventLazy();
    _Block_release(v4);

    v5 = sub_1D225092C();
    v15 = sub_1D21A3DF4;
    v16 = v0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1D2182414;
    v14 = &block_descriptor_81;
    v6 = _Block_copy(&v11);

    AnalyticsSendEventLazy();
    _Block_release(v6);

    v7 = sub_1D2193904();
    if (*(v7 + 16))
    {
      v8 = sub_1D225092C();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v15 = sub_1D21A3DF8;
      v16 = v9;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1D2182414;
      v14 = &block_descriptor_87;
      v10 = _Block_copy(&v11);

      AnalyticsSendEventLazy();
      _Block_release(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_1D2191C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2520);
  sub_1D2250D5C();
  return v1;
}

void sub_1D2191CA8(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{

  v4 = sub_1D2219F2C(0, 0, 1);

  sub_1D2174E10(0, &unk_1EDC886D0);

  v5 = sub_1D2250C5C();
  v6 = sub_1D2219F2C(v5, 0, 1);

  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_6;
  }

  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D22526E0;
  v8 = MEMORY[0x1E69E7290];
  v9 = MEMORY[0x1E69E72E8];
  *(v7 + 56) = MEMORY[0x1E69E7290];
  *(v7 + 64) = v9;
  *(v7 + 32) = 2;

  v10 = sub_1D2250C5C();
  sub_1D2219F2C(v10, 0, 1);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D22526E0;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 32) = 63;

  v12 = sub_1D2250C5C();
  sub_1D2219F2C(v12, 0, 1);

  v13 = *(*(a1 + 16) + 16);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E6530];
  *(v14 + 16) = xmmword_1D22526E0;
  v16 = MEMORY[0x1E69E65A8];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = 2;

  v17 = sub_1D2250C5C();
  v52[0] = MEMORY[0x1E69E7CC8];
  v18 = *(v13 + 16);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v13;
  v19[4] = v52;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D21A749C;
  *(v20 + 24) = v19;
  v50 = sub_1D21A732C;
  v51 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1D2179EE8;
  v49 = &block_descriptor_312;
  v21 = _Block_copy(&aBlock);

  v22 = v18;
  v23 = v17;

  [v22 performBlockAndWait_];

  _Block_release(v21);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(a1 + 16) + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D22526E0;
  *(v25 + 56) = MEMORY[0x1E69E6530];
  *(v25 + 64) = MEMORY[0x1E69E65A8];
  *(v25 + 32) = 63;

  v26 = sub_1D2250C5C();
  v52[0] = MEMORY[0x1E69E7CC8];
  v27 = *(v24 + 16);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v24;
  v28[4] = v52;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D21A749C;
  *(v29 + 24) = v28;
  v50 = sub_1D21A732C;
  v51 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1D2179EE8;
  v49 = &block_descriptor_323;
  v30 = _Block_copy(&aBlock);

  v31 = v27;
  v32 = v26;

  [v31 performBlockAndWait_];

  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if ((v30 & 1) == 0)
  {

    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D22526F0;
    v34 = MEMORY[0x1E69E7290];
    *(v33 + 56) = MEMORY[0x1E69E7290];
    v35 = MEMORY[0x1E69E72E8];
    *(v33 + 64) = MEMORY[0x1E69E72E8];
    *(v33 + 32) = 0;
    *(v33 + 96) = v34;
    *(v33 + 104) = v35;
    *(v33 + 72) = 2;

    v36 = sub_1D2250C5C();
    sub_1D221AA88(v36);

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D22526F0;
    *(v37 + 56) = v34;
    *(v37 + 64) = v35;
    *(v37 + 32) = 1;
    *(v37 + 96) = v34;
    *(v37 + 104) = v35;
    *(v37 + 72) = 2;

    v38 = sub_1D2250C5C();
    sub_1D221AA88(v38);

    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D22526F0;
    *(v39 + 56) = v34;
    *(v39 + 64) = v35;
    *(v39 + 32) = 0;
    *(v39 + 96) = v34;
    *(v39 + 104) = v35;
    *(v39 + 72) = 63;

    v40 = sub_1D2250C5C();
    sub_1D221AA88(v40);

    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D22526F0;
    *(v41 + 56) = v34;
    *(v41 + 64) = v35;
    *(v41 + 32) = 1;
    *(v41 + 96) = v34;
    *(v41 + 104) = v35;
    *(v41 + 72) = 63;

    v42 = sub_1D2250C5C();
    sub_1D221AA88(v42);

    sub_1D221B400();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2408);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2252730;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001D22572C0;
    *(inited + 48) = sub_1D2250C1C();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x80000001D22572E0;
    *(inited + 72) = sub_1D2250C1C();
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x80000001D2257300;
    *(inited + 96) = sub_1D2250C1C();
    *(inited + 104) = 0xD000000000000010;
    *(inited + 112) = 0x80000001D2257320;
    *(inited + 120) = sub_1D2250C1C();
    *(inited + 128) = 0x655F6E6F73726570;
    *(inited + 136) = 0xEF7365697469746ELL;
    *(inited + 144) = sub_1D2250C1C();
    strcpy((inited + 152), "pet_entities");
    *(inited + 165) = 0;
    *(inited + 166) = -5120;
    *(inited + 168) = sub_1D2250C1C();
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001D2257340;
    *(inited + 192) = sub_1D2250C1C();
    *(inited + 200) = 0xD000000000000014;
    *(inited + 208) = 0x80000001D2257360;
    *(inited + 216) = sub_1D2250C1C();
    *(inited + 224) = 0xD000000000000012;
    *(inited + 232) = 0x80000001D2257380;
    *(inited + 240) = sub_1D2250C1C();
    *(inited + 248) = 0xD000000000000011;
    *(inited + 256) = 0x80000001D22573A0;
    *(inited + 264) = sub_1D2250C1C();
    *(inited + 272) = 0xD000000000000014;
    *(inited + 280) = 0x80000001D22573C0;
    *(inited + 288) = sub_1D2250C1C();
    v44 = sub_1D21A26F8(inited, &qword_1EC6D2418);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2410);
    swift_arrayDestroy();
    *v45 = v44;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1D21926EC()
{
  v1 = v0;
  v53 = type metadata accessor for VUGallery.TagView(0);
  v2 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1E69E7CC8];
  v5 = *(v0 + 24);
  v56 = v1;
  v57 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
  v54 = v5;
  v55 = v6;
  v7 = 0;
  sub_1D2250D5C();
  v8 = aBlock[0];
  v9 = *(aBlock[0] + 16);
  v51 = v2;
  v52 = v1;
  if (v9)
  {
    v50 = 0;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v9, 0);
    v10 = aBlock[0];
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    v13 = v53;
    do
    {
      sub_1D21A6388(v11, v4, type metadata accessor for VUGallery.TagView);
      v14 = *&v4[*(v13 + 28)];
      sub_1D21A63F0(v4, type metadata accessor for VUGallery.TagView);
      aBlock[0] = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D21AF7AC((v15 > 1), v16 + 1, 1);
        v13 = v53;
        v10 = aBlock[0];
      }

      *(v10 + 16) = v16 + 1;
      *(v10 + 8 * v16 + 32) = v14;
      v11 += v12;
      --v9;
    }

    while (v9);

    v2 = v51;
    v1 = v52;
    v7 = v50;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(aBlock[0]) = 2;
  v50 = sub_1D218320C(0);
  LOBYTE(aBlock[0]) = 1;
  v49 = sub_1D218320C(0);
  LOBYTE(aBlock[0]) = 2;
  v48 = sub_1D218320C(2);
  LOBYTE(aBlock[0]) = 1;
  v47 = sub_1D218320C(2);
  MEMORY[0x1EEE9AC00](v47);
  v45[-2] = v1;
  LOWORD(v45[-1]) = 1;
  sub_1D2250D5C();
  v17 = aBlock[0];
  v18 = *(aBlock[0] + 16);
  if (v18)
  {
    v46 = v7;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v18, 0);
    v19 = aBlock[0];
    v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v45[1] = v17;
    v21 = v17 + v20;
    v22 = *(v2 + 72);
    v23 = v53;
    do
    {
      sub_1D21A6388(v21, v4, type metadata accessor for VUGallery.TagView);
      v24 = *&v4[*(v23 + 28)];
      sub_1D21A63F0(v4, type metadata accessor for VUGallery.TagView);
      aBlock[0] = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D21AF7AC((v25 > 1), v26 + 1, 1);
        v23 = v53;
        v19 = aBlock[0];
      }

      *(v19 + 16) = v26 + 1;
      *(v19 + 8 * v26 + 32) = v24;
      v21 += v22;
      --v18;
    }

    while (v18);

    v1 = v52;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v27);
  v45[-2] = v1;
  LOWORD(v45[-1]) = 2;
  sub_1D2250D5C();
  v28 = aBlock[0];
  v29 = *(aBlock[0] + 16);
  if (v29)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v29, 0);
    v30 = aBlock[0];
    v31 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v46 = v28;
    v32 = v28 + v31;
    v55 = *(v51 + 72);
    v33 = v53;
    do
    {
      sub_1D21A6388(v32, v4, type metadata accessor for VUGallery.TagView);
      v34 = *&v4[*(v33 + 28)];
      sub_1D21A63F0(v4, type metadata accessor for VUGallery.TagView);
      aBlock[0] = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D21AF7AC((v35 > 1), v36 + 1, 1);
        v33 = v53;
        v30 = aBlock[0];
      }

      *(v30 + 16) = v36 + 1;
      *(v30 + 8 * v36 + 32) = v34;
      v32 += v55;
      --v29;
    }

    while (v29);

    v1 = v52;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v37 = swift_allocObject();
  v37[2] = v1;
  v37[3] = v10;
  v38 = v50;
  v37[4] = v49;
  v37[5] = v19;
  v37[6] = v30;
  v37[7] = v38;
  v39 = v47;
  v37[8] = v48;
  v37[9] = v39;
  v37[10] = &v59;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1D21A62E8;
  *(v40 + 24) = v37;
  aBlock[4] = sub_1D21A7328;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_267;
  v41 = _Block_copy(aBlock);

  dispatch_sync(v54, v41);
  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v44 = v59;

    return v44;
  }

  return result;
}

uint64_t sub_1D2192D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9)
{
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D22526F0;
  v10 = MEMORY[0x1E69E7290];
  v11 = MEMORY[0x1E69E72E8];
  *(v9 + 56) = MEMORY[0x1E69E7290];
  *(v9 + 64) = v11;
  *(v9 + 32) = 2;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 1;

  v12 = sub_1D2250C5C();
  sub_1D2219F2C(v12, 0, 1);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D22526F0;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 32) = 2;
  *(v13 + 96) = v10;
  *(v13 + 104) = v11;
  *(v13 + 72) = 2;

  v14 = sub_1D2250C5C();
  sub_1D2219F2C(v14, 0, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D22526F0;
  *(v15 + 56) = v10;
  *(v15 + 64) = v11;
  *(v15 + 32) = 0;
  *(v15 + 96) = v10;
  *(v15 + 104) = v11;
  *(v15 + 72) = 2;

  v16 = sub_1D2250C5C();
  sub_1D221AA88(v16);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D22526F0;
  *(v17 + 56) = v10;
  *(v17 + 64) = v11;
  *(v17 + 32) = 0;
  *(v17 + 96) = v10;
  *(v17 + 104) = v11;
  *(v17 + 72) = 1;

  v18 = sub_1D2250C5C();
  sub_1D221AA88(v18);

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D22526F0;
  *(v19 + 56) = v10;
  *(v19 + 64) = v11;
  *(v19 + 32) = 0;
  *(v19 + 96) = v10;
  *(v19 + 104) = v11;
  *(v19 + 72) = 0;

  v20 = sub_1D2250C5C();
  sub_1D221AA88(v20);

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D22526F0;
  *(v21 + 56) = v10;
  *(v21 + 64) = v11;
  *(v21 + 32) = 2;
  *(v21 + 96) = v10;
  *(v21 + 104) = v11;
  *(v21 + 72) = 1;

  v22 = sub_1D2250C5C();
  sub_1D2219F2C(v22, 0, 1);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D22526F0;
  *(v23 + 56) = v10;
  *(v23 + 64) = v11;
  *(v23 + 32) = 2;
  *(v23 + 96) = v10;
  *(v23 + 104) = v11;
  *(v23 + 72) = 2;

  v24 = sub_1D2250C5C();
  sub_1D2219F2C(v24, 0, 1);

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D22526F0;
  *(v25 + 56) = v10;
  *(v25 + 64) = v11;
  *(v25 + 32) = 2;
  *(v25 + 96) = v10;
  *(v25 + 104) = v11;
  *(v25 + 72) = 0;

  v26 = sub_1D2250C5C();
  sub_1D2219F2C(v26, 0, 1);

  v28 = sub_1D2206838(v27);

  v30 = sub_1D2206838(v29);

  sub_1D21C8BC4(v30, v28);

  v32 = sub_1D2206838(v31);

  v34 = sub_1D2206838(v33);

  sub_1D21C8BC4(v34, v32);

  v36 = sub_1D2206838(v35);

  v38 = sub_1D2206838(v37);

  sub_1D21C8BC4(v38, v36);

  v40 = sub_1D2206838(v39);

  v42 = sub_1D2206838(v41);

  sub_1D21C8BC4(v42, v40);

  v44 = sub_1D2206838(v43);

  v46 = sub_1D2206838(v45);

  sub_1D21C8BC4(v46, v44);

  sub_1D221B0E0(3);

  sub_1D221B0E0(0);

  sub_1D221B0E0(2);

  sub_1D221B0E0(1);

  v47 = sub_1D221B7FC(0, 0, 0);
  sub_1D221BF60(3, v47);

  v48 = sub_1D221B7FC(0, 0, 0);
  sub_1D221BF60(0, v48);

  v49 = sub_1D221B7FC(2, 0, 0);
  sub_1D221BF60(2, v49);

  v50 = sub_1D221B7FC(1, 0, 0);
  sub_1D221BF60(1, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2252740;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001D2256D60;
  *(inited + 48) = sub_1D2250C1C();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000001D2256D80;
  *(inited + 72) = sub_1D2250C1C();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001D2256DA0;
  *(inited + 96) = sub_1D2250C1C();
  *(inited + 104) = 0xD000000000000016;
  *(inited + 112) = 0x80000001D2256DC0;
  *(inited + 120) = sub_1D2250C1C();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001D2256DE0;
  *(inited + 144) = sub_1D2250C1C();
  *(inited + 152) = 0xD000000000000029;
  *(inited + 160) = 0x80000001D2256E00;
  *(inited + 168) = sub_1D2250C1C();
  *(inited + 176) = 0xD00000000000002ALL;
  *(inited + 184) = 0x80000001D2256E30;
  *(inited + 192) = sub_1D2250C1C();
  *(inited + 200) = 0xD000000000000029;
  *(inited + 208) = 0x80000001D2256E60;
  *(inited + 216) = sub_1D2250C1C();
  *(inited + 224) = 0xD000000000000028;
  *(inited + 232) = 0x80000001D2256E90;
  *(inited + 240) = sub_1D2250C1C();
  *(inited + 248) = 0xD00000000000002ALL;
  *(inited + 256) = 0x80000001D2256EC0;
  *(inited + 264) = sub_1D2250C1C();
  *(inited + 272) = 0xD00000000000001DLL;
  *(inited + 280) = 0x80000001D2256EF0;
  *(inited + 288) = sub_1D2250C1C();
  *(inited + 296) = 0xD00000000000001FLL;
  *(inited + 304) = 0x80000001D2256F10;
  *(inited + 312) = sub_1D2250C1C();
  *(inited + 320) = 0xD000000000000029;
  *(inited + 328) = 0x80000001D2256F30;
  *(inited + 336) = sub_1D2250C1C();
  *(inited + 344) = 0xD000000000000021;
  *(inited + 352) = 0x80000001D2256F60;
  *(inited + 360) = sub_1D2250C1C();
  *(inited + 368) = 0xD00000000000001DLL;
  *(inited + 376) = 0x80000001D2256F90;
  *(inited + 384) = sub_1D2250C1C();
  *(inited + 392) = 0xD00000000000001FLL;
  *(inited + 400) = 0x80000001D2256FB0;
  *(inited + 408) = sub_1D2250C1C();
  *(inited + 416) = 0xD00000000000001ELL;
  *(inited + 424) = 0x80000001D2256FD0;
  *(inited + 432) = sub_1D2250C1C();
  *(inited + 440) = 0xD000000000000038;
  *(inited + 448) = 0x80000001D2256FF0;
  *(inited + 456) = sub_1D2250C1C();
  *(inited + 464) = 0xD000000000000034;
  *(inited + 472) = 0x80000001D2257030;
  *(inited + 480) = sub_1D2250C1C();
  *(inited + 488) = 0xD000000000000036;
  *(inited + 496) = 0x80000001D2257070;
  *(inited + 504) = sub_1D2250C1C();
  *(inited + 512) = 0xD000000000000035;
  *(inited + 520) = 0x80000001D22570B0;
  *(inited + 528) = sub_1D2250C1C();
  v52 = sub_1D21A26F8(inited, &qword_1EC6D2418);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2410);
  swift_arrayDestroy();
  *a9 = v52;
}

uint64_t sub_1D2193904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2148);
  sub_1D2250D5C();
  sub_1D2250D5C();
  sub_1D2250D5C();
  sub_1D2250D5C();
  if (*(v43 + 16))
  {
    v0 = swift_bridgeObjectRelease_n();
    MEMORY[0x1EEE9AC00](v0);
    sub_1D2250D5C();
    v1 = v45;
    v42 = v44;
    if (*(v43 + 16))
    {
      v2 = swift_bridgeObjectRelease_n();
      MEMORY[0x1EEE9AC00](v2);
      sub_1D2250D5C();
      v3 = v44;
      v4 = v45;
      goto LABEL_6;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
    v42 = MEMORY[0x1E69E7CC8];
  }

  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CC8];
LABEL_6:
  v5 = sub_1D21A26F8(MEMORY[0x1E69E7CC0], &qword_1EC6D2418);
  if (!v43)
  {

    return v5;
  }

  v6 = sub_1D2250B8C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v6, 0xD000000000000010, 0x80000001D22571B0, isUniquelyReferenced_nonNull_native);
  v8 = sub_1D2250B8C();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v8, 0x725F6E6F73726570, 0xED00006C6C616365, v9);
  v10 = v5;
  if (*(v42 + 16))
  {

    v12 = sub_1D21D3AC0(v11);

    if ((v12 & 0x100000000) != 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v14 = sub_1D2250B8C();
  }

  else
  {
    sub_1D2174E10(0, &qword_1EDC876F8);
    v14 = sub_1D2250E1C();
  }

  v23 = v14;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v23, 0xD000000000000016, 0x80000001D22571D0, v24);
  if (*(v1 + 16))
  {

    v26 = sub_1D21D3AC0(v25);

    if ((v26 & 0x100000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v27 = sub_1D2250B8C();
  }

  else
  {
    sub_1D2174E10(0, &qword_1EDC876F8);
    v27 = sub_1D2250E1C();
  }

  v33 = v27;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v33, 0xD000000000000013, 0x80000001D22571F0, v34);
  v35 = v10;
  v36 = sub_1D2250C1C();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v36, 0xD000000000000017, 0x80000001D2257210, v37);
  v15 = sub_1D2250B8C();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v15, 0x636572705F746570, 0xED00006E6F697369, v16);
  v17 = sub_1D2250B8C();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v17, 0x616365725F746570, 0xEA00000000006C6CLL, v18);
  v19 = v35;
  if (!*(v3 + 16))
  {
    sub_1D2174E10(0, &qword_1EDC876F8);
    v22 = sub_1D2250E1C();
    goto LABEL_19;
  }

  v21 = sub_1D21D3AC0(v20);

  if ((v21 & 0x100000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = sub_1D2250B8C();
LABEL_19:
  v28 = v22;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D21BA62C(v28, 0xD000000000000013, 0x80000001D2257150, v29);
  if (!*(v4 + 16))
  {

    sub_1D2174E10(0, &qword_1EDC876F8);
    v32 = sub_1D2250E1C();
    goto LABEL_25;
  }

  v31 = sub_1D21D3AC0(v30);

  if ((v31 & 0x100000000) == 0)
  {

    v32 = sub_1D2250B8C();
LABEL_25:
    v38 = v32;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D21BA62C(v38, 0xD000000000000010, 0x80000001D2257170, v39);

    v40 = sub_1D2250C1C();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D21BA62C(v40, 0xD000000000000015, 0x80000001D2257190, v41);
    return v19;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D2194030@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{

  v4 = sub_1D221E9C4(a1);

  *a2 = v4;
  return result;
}

void sub_1D219408C(__int16 a1@<W1>, BOOL *a2@<X8>)
{
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D22526F0;
  v5 = MEMORY[0x1E69E7290];
  v6 = MEMORY[0x1E69E72E8];
  *(v4 + 56) = MEMORY[0x1E69E7290];
  *(v4 + 64) = v6;
  *(v4 + 32) = 0;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = a1;

  v7 = sub_1D2250C5C();
  v8 = sub_1D221AA88(v7);

  *a2 = v8 > 0;
}

uint64_t VUGallery.SocialGroup.init(numberOfMomentsNodes:tags:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t VUGallery.inferredDeviceOwner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VUGallery.RecognitionResult(0);
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = 0xD000000000000013;
  v5[4] = 0x80000001D2256AE0;
  v5[5] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D21A3E00;
  *(v6 + 24) = v5;
  v10[4] = sub_1D2179F10;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D2179EE8;
  v10[3] = &block_descriptor_96;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t VUGallery.inferredDeviceOwner(ignoreMeGroundTruth:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D3080);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  v9 = type metadata accessor for VUGallery.RecognitionResult(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  if (a1)
  {
    v10 = 0xD000000000000028;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (a1)
  {
    v11 = "inferredDeviceOwner";
  }

  else
  {
    v11 = "ing/VUGallery.swift";
  }

  v12 = v11 | 0x8000000000000000;
  v13 = *(v3 + 24);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D21A7498;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1D21A7328;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_107;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1D21A6938(v8, a2, &qword_1EC6D3080);
  }

  return result;
}

uint64_t sub_1D2194610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v7 = type metadata accessor for VUGallery.TagView(0);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D3080);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = (&v40 - v13);
  v14 = *(*(a1 + 16) + 16);
  v51 = 0u;
  v52 = 0u;
  v15 = *(v14 + 16);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = &v51;
  v16[4] = a2;
  v16[5] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D21A647C;
  *(v17 + 24) = v16;
  v49 = sub_1D21A732C;
  v50 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D2179EE8;
  v48 = &block_descriptor_298;
  v18 = _Block_copy(&aBlock);
  swift_retain_n();
  v19 = v15;

  [v19 performBlockAndWait_];

  _Block_release(v18);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else if (*(&v52 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2518);
    result = swift_dynamicCast();
    if (result)
    {
      v21 = aBlock;
      if (*(aBlock + 16) && (v22 = sub_1D2196C7C(0xD000000000000010, 0x80000001D2256900), (v23 & 1) != 0) && (v24 = *(*(v21 + 56) + 8 * v22), aBlock = 0, LOBYTE(v46) = 1, v25 = v24, sub_1D2250C2C(), v25, (v46 & 1) == 0) && (v27 = aBlock) != 0)
      {
        MEMORY[0x1EEE9AC00](v26);
        *(&v40 - 4) = a1;
        *(&v40 - 3) = v27;
        *(&v40 - 8) = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21B8);
        sub_1D2250D5C();
        if (*(aBlock + 16))
        {
          sub_1D21A6388(aBlock + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v9, type metadata accessor for VUGallery.TagView);

          v29 = *(v7 + 20);
          v30 = sub_1D225055C();
          v31 = *(v30 - 8);
          v32 = v42;
          (*(v31 + 16))(v42, &v9[v29], v30);
          sub_1D21A63F0(v9, type metadata accessor for VUGallery.TagView);
          (*(v31 + 56))(v32, 0, 1, v30);
        }

        else
        {

          v33 = sub_1D225055C();
          v32 = v42;
          (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
        }

        if (*(v21 + 16) && (v34 = sub_1D2196C7C(0x6E656469666E6F63, 0xEA00000000006563), (v35 & 1) != 0))
        {
          v36 = *(*(v21 + 56) + 8 * v34);

          LODWORD(aBlock) = 0;
          BYTE4(aBlock) = 1;
          MEMORY[0x1D38985D0](v36, &aBlock);

          if (BYTE4(aBlock))
          {
            v37 = 1.0;
          }

          else
          {
            v37 = *&aBlock;
          }
        }

        else
        {

          v37 = 1.0;
        }

        v38 = v43;
        *v43 = v27;
        v39 = type metadata accessor for VUGallery.RecognitionResult(0);
        sub_1D21A6938(v32, v38 + *(v39 + 20), &qword_1EC6D2110);
        *(v38 + *(v39 + 24)) = v37;
        (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
        return sub_1D21A6488(v38, v44, &qword_1EC6D3080);
      }

      else
      {
      }
    }
  }

  else
  {
    return sub_1D2176170(&v51, &unk_1EC6D2180);
  }

  return result;
}

uint64_t sub_1D2194C6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2148);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D2194CF4@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  LOBYTE(v5) = a2;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D2252750;
  sub_1D2174E10(0, &unk_1EDC886D0);
  *(v8 + 32) = sub_1D2250C5C();
  *(v8 + 40) = sub_1D2250C5C();
  v26 = v8;
  v9 = &off_1D2252000;
  if (v7 == 4)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D22526E0;
  v11 = MEMORY[0x1E69E7558];
  *(v10 + 56) = MEMORY[0x1E69E7508];
  *(v10 + 64) = v11;
  *(v10 + 32) = 0x63F0200u >> (8 * v7);
  sub_1D2250C5C();
  MEMORY[0x1D3898510]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    sub_1D2250B3C();
LABEL_4:
    if (v5 != 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
      v12 = swift_allocObject();
      *(v12 + 16) = *(v9 + 110);
      v13 = MEMORY[0x1E69E65A8];
      *(v12 + 56) = MEMORY[0x1E69E6530];
      *(v12 + 64) = v13;
      *(v12 + 32) = v5;
      sub_1D2250C5C();
      MEMORY[0x1D3898510]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2250B1C();
      }

      sub_1D2250B3C();
    }

    v14 = *(a3[2] + 16);

    v15 = sub_1D2250AEC();

    v16 = [objc_opt_self() andPredicateWithSubpredicates_];

    v25 = MEMORY[0x1E69E7CC8];
    v17 = *(v14 + 16);
    a3 = swift_allocObject();
    a3[2] = v16;
    a3[3] = v14;
    a3[4] = &v25;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1D21A6470;
    *(v18 + 24) = a3;
    aBlock[4] = sub_1D21A732C;
    v24 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D2179EE8;
    aBlock[3] = &block_descriptor_288;
    v19 = _Block_copy(aBlock);
    v9 = v24;

    v20 = v17;
    v5 = v16;

    [v20 performBlockAndWait_];

    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_11:
    sub_1D2250B1C();
  }

  v21 = v25;

  *a4 = v21;
  return result;
}

uint64_t sub_1D2195154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D225085C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D225084C();
  v13 = v3;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  sub_1D2250D4C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2195288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 16) + 16);
  v7 = *(v6 + 16);
  sub_1D21763A8(a4, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  sub_1D21A6450(v14, (v8 + 40));
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D21A6460;
  *(v9 + 24) = v8;
  v13[4] = sub_1D2179F38;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D2179EE8;
  v13[3] = &block_descriptor_278;
  v10 = _Block_copy(v13);
  swift_retain_n();
  v11 = v7;

  [v11 performBlockAndWait_];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {

    sub_1D22299E0(16);
  }

  return result;
}

uint64_t sub_1D2195470(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8AC0(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1D219DD70(v5, &qword_1EC6D2580, &unk_1D22543A0, sub_1D219E420, sub_1D219DFD4);
  *a1 = v2;
  return result;
}

uint64_t sub_1D2195514(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D21C8AD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D219DC6C(v6);
  return sub_1D22510AC();
}

uint64_t sub_1D2195590(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8AFC(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D225124C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2570);
      v8 = sub_1D2250B2C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_1D219F074(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D21956E4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8B10(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1D219DD70(v5, &qword_1EC6D21C0, &unk_1D2252858, sub_1D219F634, sub_1D219E14C);
  *a1 = v2;
  return result;
}

uint64_t sub_1D2195788(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D21C8B24(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D219DE90(v6);
  *a1 = v3;
  return result;
}

void *sub_1D219583C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D2195860(uint64_t a1, id *a2)
{
  result = sub_1D225093C();
  *a2 = 0;
  return result;
}

uint64_t sub_1D21958D8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D225095C();
  v2 = sub_1D225092C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D219591C()
{
  v0 = sub_1D225095C();
  v1 = MEMORY[0x1D38984C0](v0);

  return v1;
}

uint64_t sub_1D2195958()
{
  sub_1D225095C();
  sub_1D22509EC();
}

uint64_t sub_1D21959AC(uint64_t a1)
{
  v2 = sub_1D21A4090(&qword_1EDC88690, 255, type metadata accessor for NSPersistentHistoryTrackingOptionKey);
  v3 = sub_1D21A4090(&qword_1EC6D2668, 255, type metadata accessor for NSPersistentHistoryTrackingOptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D2195A70(uint64_t a1)
{
  v2 = sub_1D21A4090(&qword_1EC6D2670, 255, type metadata accessor for MLModelMetadataKey);
  v3 = sub_1D21A4090(&qword_1EC6D2678, 255, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D2195B34@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D225092C();

  *a1 = v2;
  return result;
}

uint64_t sub_1D2195B7C(uint64_t a1)
{
  v2 = sub_1D21A4090(&qword_1EC6D2680, 255, type metadata accessor for VNImageOption);
  v3 = sub_1D21A4090(&qword_1EC6D2688, 255, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

size_t sub_1D2195C40(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D2195E44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2195F8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D21960E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1D2196230(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D219639C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1D21964D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_1D21965E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 24 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

size_t sub_1D2196730(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D2196918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2196A4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    v11 = MEMORY[0x1E69E7CC0];
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

char *sub_1D2196B48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D25D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1D2196C7C(uint64_t a1, uint64_t a2)
{
  sub_1D225132C();
  sub_1D22509EC();
  v4 = sub_1D225137C();

  return sub_1D2197128(a1, a2, v4);
}

unint64_t sub_1D2196CF4(uint64_t a1)
{
  v2 = sub_1D2250F9C();

  return sub_1D21971E0(a1, v2);
}

unint64_t sub_1D2196D38(uint64_t a1)
{
  sub_1D225055C();
  sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
  v2 = sub_1D22508CC();

  return sub_1D21972A8(a1, v2);
}

unint64_t sub_1D2196DD8(unsigned __int8 a1)
{
  sub_1D225132C();
  MEMORY[0x1D3898D70](a1);
  v2 = sub_1D225137C();
  return sub_1D2176E3C(a1, v2);
}

unint64_t sub_1D2196E40(uint64_t a1)
{
  v2 = sub_1D225055C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D225132C();
  sub_1D21A6388(a1, v8, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1D3898D70](*v8);
  }

  v9 = sub_1D225137C();
  return sub_1D219746C(a1, v9);
}

unint64_t sub_1D2197034(uint64_t a1)
{
  sub_1D225132C();
  sub_1D21F7C2C();
  v2 = sub_1D225137C();

  return sub_1D2197928(a1, v2);
}

unint64_t sub_1D21970A0(uint64_t a1)
{
  v2 = sub_1D2250E2C();

  return sub_1D2197E8C(a1, v2);
}

unint64_t sub_1D21970E4(uint64_t a1)
{
  v2 = sub_1D2250E2C();

  return sub_1D2197F60(a1, v2);
}

unint64_t sub_1D2197128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D225126C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D21971E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D21A6C84(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38989E0](v9, a1);
      sub_1D21A389C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D21972A8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1D225055C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1D21A4090(&qword_1EDC87220, 255, MEMORY[0x1E69695A8]);
      v15 = sub_1D225091C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1D219746C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v47 = sub_1D225055C();
  v4 = *(v47 - 8);
  v5 = MEMORY[0x1EEE9AC00](v47);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for VUStreamingGallery.Label(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v48 = (&v39 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v52 = v2;
  v20 = *(v2 + 32);
  v21 = v2 + 64;
  v22 = -1 << v20;
  v23 = a2 & ~v22;
  if ((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = *(v17 + 72);
    v49 = ~v22;
    v50 = v24;
    v46 = (v4 + 8);
    v40 = (v4 + 32);
    v41 = v11;
    v42 = v14;
    v43 = v8;
    do
    {
      sub_1D21A6388(*(v52 + 48) + v50 * v23, v19, type metadata accessor for VUStreamingGallery.Label);
      v25 = *(v8 + 48);
      sub_1D21A6388(v19, v10, type metadata accessor for VUStreamingGallery.Label);
      sub_1D21A6388(v51, &v10[v25], type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D21A6388(v10, v14, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D21A63F0(v19, type metadata accessor for VUStreamingGallery.Label);
          (*v46)(v14, v47);
LABEL_4:
          sub_1D2176170(v10, &qword_1EC6D2460);
          goto LABEL_5;
        }

        v26 = *v40;
        v27 = v44;
        v28 = v14;
        v29 = v47;
        (*v40)(v44, v28, v47);
        v30 = v21;
        v31 = v45;
        v26(v45, &v10[v25], v29);
        LOBYTE(v26) = sub_1D225053C();
        v32 = *v46;
        v33 = v31;
        v21 = v30;
        (*v46)(v33, v29);
        v34 = v27;
        v35 = v29;
        v14 = v42;
        v8 = v43;
        v32(v34, v35);
        sub_1D21A63F0(v19, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21A63F0(v10, type metadata accessor for VUStreamingGallery.Label);
        if (v26)
        {
          return v23;
        }
      }

      else
      {
        sub_1D21A63F0(v19, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21A6388(v10, v48, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_4;
        }

        v36 = *v48;
        v37 = *&v10[v25];
        sub_1D21A63F0(v10, type metadata accessor for VUStreamingGallery.Label);
        if (v36 == v37)
        {
          return v23;
        }
      }

LABEL_5:
      v23 = (v23 + 1) & v49;
    }

    while (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
  }

  return v23;
}

unint64_t sub_1D2197928(uint64_t a1, uint64_t a2)
{
  v48 = sub_1D225055C();
  v5 = *(v48 - 8);
  v6 = MEMORY[0x1EEE9AC00](v48);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v39 - v8;
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = (&v39 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v45 = type metadata accessor for VUStreamingGallery.RecognitionKey(0);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v2 + 64;
  v53 = v2;
  v19 = -1 << *(v2 + 32);
  v20 = a2 & ~v19;
  if ((*(v2 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v54 = a1;
    v21 = *(v17 + 72);
    v50 = ~v19;
    v51 = v21;
    v47 = (v5 + 8);
    v40 = (v5 + 32);
    v41 = v14;
    v23 = v44;
    v22 = v45;
    do
    {
      sub_1D21A6388(*(v53 + 48) + v51 * v20, v23, type metadata accessor for VUStreamingGallery.RecognitionKey);
      v24 = *(v14 + 48);
      sub_1D21A6388(v23, v16, type metadata accessor for VUStreamingGallery.Label);
      sub_1D21A6388(v54, &v16[v24], type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D21A6388(v16, v12, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D21A63F0(v23, type metadata accessor for VUStreamingGallery.RecognitionKey);
          (*v47)(v12, v48);
          goto LABEL_12;
        }

        v25 = *v40;
        v26 = v42;
        v27 = v48;
        (*v40)(v42, v12, v48);
        v28 = v12;
        v29 = v43;
        v25(v43, &v16[v24], v27);
        v46 = sub_1D225053C();
        v30 = *v47;
        v31 = v29;
        v12 = v28;
        v14 = v41;
        (*v47)(v31, v27);
        v32 = v26;
        v33 = v27;
        v23 = v44;
        v22 = v45;
        v30(v32, v33);
        sub_1D21A63F0(v16, type metadata accessor for VUStreamingGallery.Label);
        if ((v46 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D21A6388(v16, v49, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D21A63F0(v23, type metadata accessor for VUStreamingGallery.RecognitionKey);
LABEL_12:
          sub_1D2176170(v16, &qword_1EC6D2460);
          goto LABEL_4;
        }

        v34 = *v49;
        v35 = *&v16[v24];
        sub_1D21A63F0(v16, type metadata accessor for VUStreamingGallery.Label);
        if (v34 != v35)
        {
LABEL_3:
          sub_1D21A63F0(v23, type metadata accessor for VUStreamingGallery.RecognitionKey);
          goto LABEL_4;
        }
      }

      v36 = v54;
      if (*(v23 + *(v22 + 20)) != *(v54 + *(v22 + 20)))
      {
        goto LABEL_3;
      }

      v37 = *(v23 + *(v22 + 24));
      sub_1D21A63F0(v23, type metadata accessor for VUStreamingGallery.RecognitionKey);
      if (v37 == *(v36 + *(v22 + 24)))
      {
        return v20;
      }

LABEL_4:
      v20 = (v20 + 1) & v50;
    }

    while (((*(v52 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  return v20;
}

unint64_t sub_1D2197E8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D2174E10(0, &qword_1EDC876F8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D2250E3C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D2197F60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for VUWGalleryObservationIdentifier(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D2250E3C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1D2198024(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D225131C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D219A9D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D2198104(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1D22508CC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D21A4090(&qword_1EDC87220, 255, MEMORY[0x1E69695A8]);
      v21 = sub_1D225091C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D219AAF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D21983EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D225132C();
  sub_1D22509EC();
  v8 = sub_1D225137C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D225126C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D219ADA4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D219853C(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  MEMORY[0x1EEE9AC00](v61);
  v5 = &v47 - v4;
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for VUStreamingGallery.Label(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v47 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v47 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v48 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v47 - v22);
  v49 = v2;
  v63 = *v2;
  sub_1D225132C();
  v62 = a2;
  sub_1D21A6388(a2, v23, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v11, v23, v6);
    sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    MEMORY[0x1D3898D70](*v23);
  }

  v24 = sub_1D225137C();
  v25 = -1 << *(v63 + 32);
  v26 = v24 & ~v25;
  v60 = v63 + 56;
  if ((*(v63 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v58 = ~v25;
    v59 = *(v13 + 72);
    v55 = (v7 + 8);
    v56 = v6;
    v51 = (v7 + 32);
    v28 = v53;
    v27 = v54;
    do
    {
      v29 = v64;
      v30 = *(v63 + 48);
      v57 = v59 * v26;
      sub_1D21A6388(v30 + v59 * v26, v64, type metadata accessor for VUStreamingGallery.Label);
      v31 = *(v61 + 48);
      sub_1D21A6388(v29, v5, type metadata accessor for VUStreamingGallery.Label);
      sub_1D21A6388(v62, &v5[v31], type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D21A6388(v5, v27, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D21A63F0(v64, type metadata accessor for VUStreamingGallery.Label);
          (*v55)(v27, v56);
LABEL_7:
          sub_1D2176170(v5, &qword_1EC6D2460);
          goto LABEL_8;
        }

        v32 = *v51;
        v33 = v56;
        (*v51)(v11, v27, v56);
        v34 = v12;
        v35 = v11;
        v36 = v52;
        v32(v52, &v5[v31], v33);
        LOBYTE(v32) = sub_1D225053C();
        v37 = *v55;
        v38 = v36;
        v11 = v35;
        v12 = v34;
        (*v55)(v38, v33);
        v39 = v33;
        v28 = v53;
        v27 = v54;
        v37(v11, v39);
        sub_1D21A63F0(v64, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21A63F0(v5, type metadata accessor for VUStreamingGallery.Label);
        if (v32)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1D21A63F0(v64, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21A6388(v5, v28, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_7;
        }

        v40 = *v28;
        v41 = *&v5[v31];
        sub_1D21A63F0(v5, type metadata accessor for VUStreamingGallery.Label);
        if (v40 == v41)
        {
LABEL_15:
          sub_1D21A63F0(v62, type metadata accessor for VUStreamingGallery.Label);
          sub_1D21A6388(*(v63 + 48) + v57, v50, type metadata accessor for VUStreamingGallery.Label);
          return 0;
        }
      }

LABEL_8:
      v26 = (v26 + 1) & v58;
    }

    while (((*(v60 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
  }

  v43 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v62;
  v46 = v48;
  sub_1D21A6388(v62, v48, type metadata accessor for VUStreamingGallery.Label);
  v65 = *v43;
  sub_1D219AF24(v46, v26, isUniquelyReferenced_nonNull_native);
  *v43 = v65;
  sub_1D21A6320(v45, v50, type metadata accessor for VUStreamingGallery.Label);
  return 1;
}

uint64_t sub_1D2198C2C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_1D225132C();
  sub_1D225134C();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1D3898DA0](a2);
  }

  v8 = sub_1D225137C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_1D219B5DC(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_12:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_1D2198D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D225132C();
  sub_1D225135C();
  MEMORY[0x1D3898D70](a3);
  v8 = sub_1D225137C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12;
      v14 = *(v12 + 1);
      if (v13 == a2 && v14 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D219B780(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_1D2198EA4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1D3898D40](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D219B8F8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D2198F8C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D2250F5C();

    if (v9)
    {

      type metadata accessor for VUWGalleryObservationIdentifier(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1D2250F4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D21991A4(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1D219A72C();
    }

    v18 = v8;
    sub_1D219A954(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for VUWGalleryObservationIdentifier(0);
  v11 = sub_1D2250E2C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1D219BA1C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D2250E3C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1D21991A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2438);
    v2 = sub_1D2250FEC();
    v14 = v2;
    sub_1D2250F0C();
    if (sub_1D2250F7C())
    {
      type metadata accessor for VUWGalleryObservationIdentifier(0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D219A72C();
        }

        v2 = v14;
        result = sub_1D2250E2C();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1D2250F7C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D2199384()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2478);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D225131C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D21995A8()
{
  v1 = v0;
  v35 = sub_1D225055C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2480);
  result = sub_1D2250FDC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
      result = sub_1D22508CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D2199908()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24E0);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D225132C();
      sub_1D22509EC();
      result = sub_1D225137C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D2199B68()
{
  v1 = v0;
  v43 = sub_1D225055C();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VUStreamingGallery.Label(0);
  v45 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v39 - v7;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2468);
  result = sub_1D2250FDC();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v41 = (v2 + 32);
    v39 = v0;
    v40 = (v2 + 8);
    v17 = result + 56;
    v18 = v44;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = *(v8 + 48);
      v46 = *(v45 + 72);
      v24 = v47;
      sub_1D21A6320(v23 + v46 * (v20 | (v11 << 6)), v47, type metadata accessor for VUStreamingGallery.Label);
      sub_1D225132C();
      sub_1D21A6388(v24, v18, type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v42;
        v26 = v18;
        v27 = v4;
        v28 = v8;
        v29 = v43;
        (*v41)(v42, v26, v43);
        sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
        sub_1D22508DC();
        v30 = v29;
        v8 = v28;
        v4 = v27;
        v18 = v44;
        (*v40)(v25, v30);
      }

      else
      {
        MEMORY[0x1D3898D70](*v18);
      }

      result = sub_1D225137C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D21A6320(v47, *(v10 + 48) + v19 * v46, type metadata accessor for VUStreamingGallery.Label);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
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
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v8 + 32);
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    v1 = v39;
    *(v8 + 16) = 0;
  }

  *v1 = v10;
  return result;
}

uint64_t sub_1D219A008()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23A0);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1D225132C();
      sub_1D225134C();
      if (v19 != 1)
      {
        MEMORY[0x1D3898DA0](v18);
      }

      result = sub_1D225137C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D219A28C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2380);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1D225132C();
      sub_1D225135C();
      MEMORY[0x1D3898D70](v19);
      result = sub_1D225137C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D219A4FC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2428);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      result = MEMORY[0x1D3898D40](*(v4 + 40), v16, 1);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D219A72C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2438);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D2250E2C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D219A954(uint64_t a1, uint64_t a2)
{
  sub_1D2250E2C();
  result = sub_1D2250EEC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D219A9D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D2199384();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D219BB7C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D219C794();
  }

  v8 = *v3;
  result = sub_1D225131C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D225129C();
  __break(1u);
  return result;
}

uint64_t sub_1D219AAF8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D21995A8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D219BCBC();
      goto LABEL_12;
    }

    sub_1D219C984();
  }

  v12 = *v3;
  sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
  v13 = sub_1D22508CC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D21A4090(&qword_1EDC87220, 255, MEMORY[0x1E69695A8]);
      v21 = sub_1D225091C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D225129C();
  __break(1u);
  return result;
}

uint64_t sub_1D219ADA4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D2199908();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D219BEF4();
      goto LABEL_16;
    }

    sub_1D219CCA4();
  }

  v10 = *v4;
  sub_1D225132C();
  sub_1D22509EC();
  result = sub_1D225137C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D225126C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D225129C();
  __break(1u);
  return result;
}

uint64_t sub_1D219AF24(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v67 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v52 - v7;
  v62 = sub_1D225055C();
  v60 = *(v62 - 8);
  v9 = MEMORY[0x1EEE9AC00](v62);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v52 - v11;
  v12 = type metadata accessor for VUStreamingGallery.Label(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v63 = (&v52 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v52 - v22);
  v24 = *(*v4 + 16);
  v25 = *(*v4 + 24);
  v53 = v4;
  v52 = v13;
  if (v25 > v24 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_1D2199B68();
  }

  else
  {
    if (v25 > v24)
    {
      sub_1D219C050();
      goto LABEL_23;
    }

    sub_1D219CEDC();
  }

  v57 = *v4;
  sub_1D225132C();
  sub_1D21A6388(v67, v23, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v59;
    v27 = v60;
    v28 = v23;
    v29 = v62;
    (*(v60 + 32))(v59, v28, v62);
    sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v27 + 8))(v26, v29);
  }

  else
  {
    MEMORY[0x1D3898D70](*v23);
  }

  v30 = sub_1D225137C();
  v31 = v57;
  v32 = -1 << *(v57 + 32);
  a2 = v30 & ~v32;
  v56 = v57 + 56;
  if ((*(v57 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v65 = ~v32;
    v64 = *(v13 + 72);
    v61 = (v60 + 8);
    v54 = (v60 + 32);
    v33 = v56;
    v55 = v21;
    do
    {
      sub_1D21A6388(*(v31 + 48) + v64 * a2, v21, type metadata accessor for VUStreamingGallery.Label);
      v34 = *(v66 + 48);
      sub_1D21A6388(v21, v8, type metadata accessor for VUStreamingGallery.Label);
      sub_1D21A6388(v67, &v8[v34], type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D21A6388(v8, v16, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D21A63F0(v21, type metadata accessor for VUStreamingGallery.Label);
          (*v61)(v16, v62);
LABEL_14:
          sub_1D2176170(v8, &qword_1EC6D2460);
          goto LABEL_15;
        }

        v35 = *v54;
        v36 = v59;
        v37 = v62;
        (*v54)(v59, v16, v62);
        v38 = v12;
        v39 = v16;
        v40 = v58;
        v35(v58, &v8[v34], v37);
        LODWORD(v60) = sub_1D225053C();
        v41 = *v61;
        v42 = v40;
        v16 = v39;
        v12 = v38;
        v21 = v55;
        (*v61)(v42, v37);
        v43 = v36;
        v44 = v37;
        v33 = v56;
        v31 = v57;
        v41(v43, v44);
        sub_1D21A63F0(v21, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21A63F0(v8, type metadata accessor for VUStreamingGallery.Label);
        if (v60)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D21A63F0(v21, type metadata accessor for VUStreamingGallery.Label);
        sub_1D21A6388(v8, v63, type metadata accessor for VUStreamingGallery.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_14;
        }

        v45 = *v63;
        v46 = *&v8[v34];
        sub_1D21A63F0(v8, type metadata accessor for VUStreamingGallery.Label);
        if (v45 == v46)
        {
LABEL_22:
          sub_1D225129C();
          __break(1u);
          break;
        }
      }

LABEL_15:
      a2 = (a2 + 1) & v65;
    }

    while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_23:
  v47 = *v53;
  *(*v53 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D21A6320(v67, *(v47 + 48) + *(v52 + 72) * a2, type metadata accessor for VUStreamingGallery.Label);
  v49 = *(v47 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    *(v47 + 16) = v51;
  }

  return result;
}

uint64_t sub_1D219B5DC(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a4)
  {
    sub_1D219A008();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1D219C25C();
      a3 = v9;
      goto LABEL_18;
    }

    sub_1D219D324();
  }

  v10 = *v4;
  sub_1D225132C();
  sub_1D225134C();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1D3898DA0](v6);
  }

  result = sub_1D225137C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 16 * a3;
      if (*(v13 + 8))
      {
        if (a2)
        {
          goto LABEL_17;
        }
      }

      else if ((a2 & 1) == 0 && *v13 == v6)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2398);
        result = sub_1D225129C();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_18:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v6;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_1D219B780(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1D219A28C();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1D219C3B0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_1D219D578();
  }

  v10 = *v4;
  sub_1D225132C();
  sub_1D225135C();
  MEMORY[0x1D3898D70](a2);
  result = sub_1D225137C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v14 = *v13;
      v15 = *(v13 + 1);
      if (v14 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = *(v17 + 48) + 16 * a3;
  *v18 = v6;
  *(v18 + 8) = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1D225129C();
  __break(1u);
  return result;
}

uint64_t sub_1D219B8F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D219A4FC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D219C504();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D219D7B8();
  }

  v8 = *v3;
  result = MEMORY[0x1D3898D40](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D225129C();
  __break(1u);
  return result;
}

void sub_1D219BA1C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D219A72C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D219C644();
      goto LABEL_12;
    }

    sub_1D219D9AC();
  }

  v8 = *v3;
  v9 = sub_1D2250E2C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for VUWGalleryObservationIdentifier(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D2250E3C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D225129C();
  __break(1u);
}

void *sub_1D219BB7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2478);
  v2 = *v0;
  v3 = sub_1D2250FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D219BCBC()
{
  v1 = v0;
  v2 = sub_1D225055C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2480);
  v6 = *v0;
  v7 = sub_1D2250FCC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1D219BEF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24E0);
  v2 = *v0;
  v3 = sub_1D2250FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D219C050()
{
  v1 = v0;
  v2 = type metadata accessor for VUStreamingGallery.Label(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2468);
  v6 = *v0;
  v7 = sub_1D2250FCC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D21A6388(*(v6 + 48) + v21, v5, type metadata accessor for VUStreamingGallery.Label);
        result = sub_1D21A6320(v5, *(v8 + 48) + v21, type metadata accessor for VUStreamingGallery.Label);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D219C25C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23A0);
  v2 = *v0;
  v3 = sub_1D2250FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D219C3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2380);
  v2 = *v0;
  v3 = sub_1D2250FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D219C504()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2428);
  v2 = *v0;
  v3 = sub_1D2250FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1D219C644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2438);
  v2 = *v0;
  v3 = sub_1D2250FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D219C794()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2478);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D225131C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D219C984()
{
  v1 = v0;
  v32 = sub_1D225055C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2480);
  v6 = sub_1D2250FDC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
      result = sub_1D22508CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D219CCA4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24E0);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D225132C();

      sub_1D22509EC();
      result = sub_1D225137C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D219CEDC()
{
  v1 = v0;
  v40 = sub_1D225055C();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VUStreamingGallery.Label(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v42 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2468);
  result = sub_1D2250FDC();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v0;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = (v2 + 8);
    v38 = (v2 + 32);
    v18 = result + 56;
    v41 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v24 = *(v43 + 72);
      sub_1D21A6388(v23 + v24 * (v20 | (v12 << 6)), v8, type metadata accessor for VUStreamingGallery.Label);
      sub_1D225132C();
      v25 = v42;
      sub_1D21A6388(v8, v42, type metadata accessor for VUStreamingGallery.Label);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v39;
        v27 = v25;
        v28 = v40;
        (*v38)(v39, v27, v40);
        sub_1D21A4090(&qword_1EDC87228, 255, MEMORY[0x1E69695A8]);
        sub_1D22508DC();
        (*v37)(v26, v28);
      }

      else
      {
        MEMORY[0x1D3898D70](*v25);
      }

      result = sub_1D225137C();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D21A6320(v8, *(v11 + 48) + v19 * v24, type metadata accessor for VUStreamingGallery.Label);
      ++*(v11 + 16);
      v9 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v36;
        goto LABEL_29;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v11;
  }

  return result;
}

uint64_t sub_1D219D324()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23A0);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      sub_1D225132C();
      sub_1D225134C();
      if (v18 != 1)
      {
        MEMORY[0x1D3898DA0](v17);
      }

      result = sub_1D225137C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_28;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D219D578()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2380);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      sub_1D225132C();
      sub_1D225135C();
      MEMORY[0x1D3898D70](v18);
      result = sub_1D225137C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D219D7B8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2428);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      result = MEMORY[0x1D3898D40](*(v4 + 40), v15, 1);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}