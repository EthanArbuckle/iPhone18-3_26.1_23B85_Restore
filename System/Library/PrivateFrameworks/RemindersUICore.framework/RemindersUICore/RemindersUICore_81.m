uint64_t destroy for TTRReminderAndComputedProperties(id *a1)
{
}

uint64_t initializeWithCopy for TTRReminderAndComputedProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderAndComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderAndComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t objectdestroy_19Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_21D884388(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void **), uint64_t a3, char a4, void *a5)
{
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v72 = v7 & *(a1 + 64);
  v53 = (63 - v6) >> 6;
  sub_21DBF8E0C();

  v8 = 0;
  for (i = v5; ; v5 = i)
  {
    v14 = v72;
    v15 = v8;
    if (!v72)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = *(a1 + 56) + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    v61 = v18;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v65 = v23;
    v66 = v24;
    v67 = v25;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v26 = v18;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    a2(v68, &v61);
    v30 = v61;
    v31 = v62;
    v32 = v63;
    v33 = v64;

    v34 = v68[0];
    if (!v68[0])
    {
LABEL_22:
      sub_21D0CFAF8();
    }

    v36 = v68[1];
    v35 = v68[2];
    v37 = v68[3];
    v38 = v69;
    v57 = v70;
    v58 = v71;
    v39 = *a5;
    v40 = sub_21D17E07C(v68[0]);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_24;
    }

    v46 = v41;
    if (v39[3] >= v45)
    {
      if ((a4 & 1) == 0)
      {
        v72 = v40;
        sub_21D220360();
        v40 = v72;
      }
    }

    else
    {
      sub_21D2159CC(v45, a4 & 1);
      v40 = sub_21D17E07C(v34);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_26;
      }
    }

    v72 = (v14 - 1) & v14;
    v48 = *a5;
    if (v46)
    {
      v9 = v40;

      v10 = v48[7] + 48 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v10 = v36;
      *(v10 + 8) = v35;
      *(v10 + 16) = v37;
      *(v10 + 24) = v38;
      *(v10 + 32) = v57;
      *(v10 + 40) = v58;
    }

    else
    {
      v48[(v40 >> 6) + 8] |= 1 << v40;
      *(v48[6] + 8 * v40) = v34;
      v49 = v48[7] + 48 * v40;
      *v49 = v36;
      *(v49 + 8) = v35;
      *(v49 + 16) = v37;
      *(v49 + 24) = v38;
      *(v49 + 32) = v57;
      *(v49 + 40) = v58;
      v50 = v48[2];
      v44 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v44)
      {
        goto LABEL_25;
      }

      v48[2] = v51;
    }

    a4 = 1;
    v8 = v15;
  }

  v16 = v8;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v53)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D884704()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE630A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE630A0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRDirectlySavableImageData.ImageFormat.init(uti:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21DBF843C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  (*(v5 + 16))(&v18 - v10, a1, v4, v9);
  sub_21DBF83DC();
  sub_21D886078(&qword_27CE630B8);
  v12 = sub_21DBFA10C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(a1, v4);
    result = (v13)(v11, v4);
    v15 = 0;
  }

  else
  {
    sub_21DBF83AC();
    v16 = sub_21DBFA10C();
    v13(v7, v4);
    if (v16)
    {
      v13(a1, v4);
      result = (v13)(v11, v4);
      v15 = 1;
    }

    else
    {
      sub_21DBF83EC();
      v17 = sub_21DBFA10C();
      v13(a1, v4);
      v13(v7, v4);
      result = (v13)(v11, v4);
      if (v17)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }
  }

  *a2 = v15;
  return result;
}

uint64_t TTRDirectlySavableImageData.ImageFormat.uti.getter()
{
  if (!*v0)
  {
    return sub_21DBF83DC();
  }

  if (*v0 == 1)
  {
    return sub_21DBF83AC();
  }

  return sub_21DBF83EC();
}

uint64_t TTRDirectlySavableImageData.ImageFormat.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRDirectlySavableImageData.data.getter()
{
  v1 = *v0;
  sub_21D1BAF70(*v0, *(v0 + 8));
  return v1;
}

uint64_t TTRDirectlySavableImageData.sourceUTI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);

  return sub_21D884B9C(v3, a1);
}

uint64_t sub_21D884B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRDirectlySavableImageData.init(data:imageFormat:size:sourceUTI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v9 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v9;
  *(a5 + 24) = a6;
  *(a5 + 32) = a7;
  v10 = a5 + *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);

  return sub_21D884C64(a4, v10);
}

uint64_t sub_21D884C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRDirectlySavableImageData.init(image:sourceUTI:)@<X0>(UIImage *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = [(UIImage *)a1 CGImage];
  if (v6)
  {
    v7 = v6;
    if (TTRImageContainsTranslucentPixels(v7))
    {
      isa = UIImage.drawnWithRotation()().super.isa;
      v9 = UIImagePNGRepresentation(isa);

      if (v9)
      {
        v10 = sub_21DBF551C();
        v12 = v11;

        [(UIImage *)v4 size];
        v14 = v13;
        v16 = v15;
        [(UIImage *)v4 scale];
        v18 = v17;

        v19 = v14 * v18;
        v20 = v16 * v18;
        *a3 = v10;
        *(a3 + 8) = v12;
        *(a3 + 16) = 1;
LABEL_8:
        *(a3 + 24) = v19;
        *(a3 + 32) = v20;
        v33 = type metadata accessor for TTRDirectlySavableImageData(0);
        return sub_21D884C64(a2, a3 + *(v33 + 28));
      }

      sub_21D884F10();
      swift_allocError();
      v36 = 2;
    }

    else
    {
      v22 = UIImageJPEGRepresentation(v4, 0.75);
      if (v22)
      {
        v23 = v22;
        v24 = sub_21DBF551C();
        v26 = v25;

        [(UIImage *)v4 size];
        v28 = v27;
        v30 = v29;
        [(UIImage *)v4 scale];
        v32 = v31;

        v19 = v28 * v32;
        v20 = v30 * v32;
        *a3 = v24;
        *(a3 + 8) = v26;
        *(a3 + 16) = 0;
        goto LABEL_8;
      }

      sub_21D884F10();
      swift_allocError();
      v36 = 3;
    }

    *v35 = v36;
    swift_willThrow();

    v4 = v7;
  }

  else
  {
    sub_21D884F10();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  return sub_21D3F983C(a2);
}

unint64_t sub_21D884F10()
{
  result = qword_27CE630C0;
  if (!qword_27CE630C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE630C0);
  }

  return result;
}

uint64_t TTRDirectlySavableImageData.init(data:uti:size:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v107 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v93[-v12];
  v13 = type metadata accessor for TTRDirectlySavableImageData(0);
  MEMORY[0x28223BE20](v13);
  v101 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21DBF843C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v98 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v99 = &v93[-v19];
  MEMORY[0x28223BE20](v20);
  v22 = &v93[-v21];
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v93[-v25];
  v27 = *(v16 + 16);
  v104 = v16 + 16;
  v28 = v27;
  (v27)(&v93[-v25], a3, v15, v24);
  TTRDirectlySavableImageData.ImageFormat.init(uti:)(v26, &v109);
  v29 = v109;
  if (v109 != 3)
  {
    (*(v16 + 8))(a3, v15);
    result = (*(v16 + 56))(a4 + *(v13 + 28), 1, 1, v15);
    v47 = v107;
    *a4 = a1;
    *(a4 + 8) = v47;
    *(a4 + 16) = v29;
    *(a4 + 24) = a5;
    *(a4 + 32) = a6;
    return result;
  }

  v100 = v22;
  v30 = v107;
  v103 = a3;
  v105 = a1;
  if (qword_27CE56DD8 != -1)
  {
    swift_once();
  }

  v31 = sub_21DBF84BC();
  v32 = __swift_project_value_buffer(v31, qword_27CE630A0);
  v33 = v100;
  v34 = v15;
  v97 = v28;
  v28(v100, v103, v15);
  v35 = v105;
  sub_21D1BAF70(v105, v30);
  v96 = v32;
  v36 = v30;
  v37 = sub_21DBF84AC();
  v38 = sub_21DBFAE9C();
  sub_21D17B8A8(v35, v36);
  v39 = os_log_type_enabled(v37, v38);
  v95 = a4;
  if (!v39)
  {

    v48 = v16;
    v100 = *(v16 + 8);
    (v100)(v33, v34);
    v44 = v34;
    goto LABEL_19;
  }

  v94 = v38;
  v40 = swift_slowAlloc();
  result = swift_slowAlloc();
  v42 = result;
  v109 = result;
  *v40 = 136315394;
  v43 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    v44 = v15;
    v45 = v100;
    if (v43 != 2)
    {
      v46 = 0;
      goto LABEL_17;
    }

    v50 = *(v105 + 16);
    v49 = *(v105 + 24);
    v51 = __OFSUB__(v49, v50);
    v46 = v49 - v50;
    if (!v51)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    LODWORD(v46) = HIDWORD(v105) - v105;
    if (__OFSUB__(HIDWORD(v105), v105))
    {
      __break(1u);
      return result;
    }

    v48 = v16;
    v46 = v46;
    goto LABEL_18;
  }

  v44 = v15;
  v45 = v100;
  if (v43)
  {
    goto LABEL_14;
  }

  v46 = BYTE6(v107);
LABEL_17:
  v48 = v16;
LABEL_18:
  v108 = v46;
  sub_21D679D9C();
  v52 = sub_21DBFBC0C();
  v54 = sub_21D0CDFB4(v52, v53, &v109);

  *(v40 + 4) = v54;
  *(v40 + 12) = 2080;
  v55 = sub_21DBF836C();
  v57 = v56;
  v100 = *(v48 + 8);
  (v100)(v45, v44);
  v58 = sub_21D0CDFB4(v55, v57, &v109);

  *(v40 + 14) = v58;
  _os_log_impl(&dword_21D0C9000, v37, v94, "TTRDirectlySavableImageData: converting image data format {data: %s, uti: %s}", v40, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v42, -1, -1);
  MEMORY[0x223D46520](v40, -1, -1);

LABEL_19:
  v59 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v60 = v105;
  v61 = v107;
  sub_21D1BAF70(v105, v107);
  v62 = sub_21DBF54FC();
  v63 = [v59 initWithData_];

  sub_21D17B8A8(v60, v61);
  if (v63)
  {
    v64 = v102;
    v65 = v103;
    v66 = v97;
    v97(v102, v103, v44);
    (*(v48 + 56))(v64, 0, 1, v44);
    v67 = v44;
    v68 = v63;
    v69 = v101;
    v70 = v106;
    TTRDirectlySavableImageData.init(image:sourceUTI:)(v68, v64, v101);
    if (v70)
    {
      (v100)(v65, v67);

      return sub_21D17B8A8(v105, v61);
    }

    else
    {
      v102 = v48;
      v106 = 0;
      v72 = v69;
      v73 = v95;
      sub_21D232994(v72, v95);
      LODWORD(v101) = *(v73 + 16);
      v74 = v99;
      v66(v99, v65, v67);
      v75 = sub_21DBF84AC();
      v76 = sub_21DBFAE9C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v74;
        v78 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v109 = v97;
        *v78 = 136315394;
        v79 = sub_21DBF836C();
        v81 = v80;
        v104 = v67;
        v82 = v100;
        v102 += 8;
        (v100)(v77, v67);
        v83 = sub_21D0CDFB4(v79, v81, &v109);

        *(v78 + 4) = v83;
        *(v78 + 12) = 2080;
        if (v101)
        {
          v84 = v76;
          v85 = v98;
          if (v101 == 1)
          {
            sub_21DBF83AC();
          }

          else
          {
            sub_21DBF83EC();
          }
        }

        else
        {
          v84 = v76;
          v85 = v98;
          sub_21DBF83DC();
        }

        v87 = sub_21DBF836C();
        v89 = v88;
        v90 = v104;
        v82(v85, v104);
        v91 = sub_21D0CDFB4(v87, v89, &v109);

        *(v78 + 14) = v91;
        _os_log_impl(&dword_21D0C9000, v75, v84, "TTRDirectlySavableImageData: finished image data format conversion {from: %s, to: %s}", v78, 0x16u);
        v92 = v97;
        swift_arrayDestroy();
        MEMORY[0x223D46520](v92, -1, -1);
        MEMORY[0x223D46520](v78, -1, -1);

        sub_21D17B8A8(v105, v107);
        return v82(v103, v90);
      }

      else
      {

        sub_21D17B8A8(v105, v107);
        v86 = v100;
        (v100)(v65, v67);
        return v86(v74, v67);
      }
    }
  }

  else
  {
    sub_21D884F10();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
    sub_21D17B8A8(v60, v61);
    return (v100)(v103, v44);
  }
}

void TTRDirectlySavableImageData.init(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  v10 = sub_21DBF843C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = v33 - v14;
  v15 = sub_21DBF54FC();
  v16 = CGImageSourceCreateWithData(v15, 0);

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = CGImageSourceGetType(v16);
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  v33[0] = a3;
  v33[1] = v3;
  sub_21DBFA16C();

  sub_21DBF844C();
  v19 = v11;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v20 = *(v11 + 32);
    v21 = v35;
    v20(v35, v9, v10);
    v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_21D1BAF70(a1, a2);
    v23 = sub_21DBF54FC();
    v24 = [v22 initWithData_];

    sub_21D17B8A8(a1, a2);
    if (v24)
    {
      [v24 size];
      v26 = v25;
      v28 = v27;
      [v24 scale];
      v30 = v29;

      v31 = v34;
      (*(v19 + 16))(v34, v21, v10);
      TTRDirectlySavableImageData.init(data:uti:size:)(a1, a2, v31, v33[0], v26 * v30, v28 * v30);
      (*(v19 + 8))(v21, v10);

      return;
    }

    (*(v19 + 8))(v21, v10);
LABEL_8:

    goto LABEL_9;
  }

  sub_21D3F983C(v9);
LABEL_9:
  sub_21D884F10();
  swift_allocError();
  *v32 = 0;
  swift_willThrow();
  sub_21D17B8A8(a1, a2);
}

void TTRDirectlySavableImageData.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v42 - v3;
  v5 = sub_21DBF843C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v15 = 0;
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v17 = v12 + 16;
    v12 = *(v12 + 16);
    v16 = *(v17 + 8);
    v15 = v16 - v12;
    if (!__OFSUB__(v16, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(v13);
    goto LABEL_10;
  }

  v18 = __OFSUB__(HIDWORD(v12), v12);
  v19 = HIDWORD(v12) - v12;
  if (v18)
  {
    __break(1u);
    return;
  }

  v15 = v19;
LABEL_10:
  v20 = [objc_opt_self() stringFromByteCount:v15 countStyle:1];
  v21 = sub_21DBFA16C();
  v23 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21DC0AFB0;
  v43 = 0x203A6874676E656CLL;
  v44 = 0xE800000000000000;
  MEMORY[0x223D42AA0](v21, v23);

  v25 = v44;
  *(v24 + 32) = v43;
  *(v24 + 40) = v25;
  v43 = 0x203A697475;
  v44 = 0xE500000000000000;
  v42[0] = v1;
  v26 = *(v1 + 16);
  if (*(v1 + 16))
  {
    v27 = v6;
    v28 = v8;
    if (v26 == 1)
    {
      sub_21DBF83AC();
    }

    else
    {
      sub_21DBF83EC();
    }
  }

  else
  {
    v27 = v6;
    v28 = v8;
    sub_21DBF83DC();
  }

  sub_21D886078(&qword_27CE630C8);
  v29 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v29);

  v30 = *(v27 + 8);
  v30(v11, v5);
  v31 = v44;
  *(v24 + 48) = v43;
  *(v24 + 56) = v31;
  v32 = type metadata accessor for TTRDirectlySavableImageData(0);
  sub_21D884B9C(v42[0] + *(v32 + 28), v4);
  v33 = 0;
  v34 = 0;
  if ((*(v27 + 48))(v4, 1, v5) != 1)
  {
    (*(v27 + 32))(v28, v4, v5);
    v43 = 0x5455656372756F73;
    v44 = 0xEB00000000203A49;
    v35 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v35);

    v33 = v43;
    v34 = v44;
    v30(v28, v5);
  }

  *(v24 + 64) = v33;
  *(v24 + 72) = v34;
  v43 = 0x203A657A6973;
  v44 = 0xE600000000000000;
  v36 = sub_21DBFB57C();
  MEMORY[0x223D42AA0](v36);

  v37 = v44;
  *(v24 + 80) = v43;
  *(v24 + 88) = v37;
  v43 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
  v38 = sub_21DBFA41C();

  v43 = 40;
  v44 = 0xE100000000000000;
  v42[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v39 = sub_21DBFA07C();
  v41 = v40;

  MEMORY[0x223D42AA0](v39, v41);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
}

uint64_t sub_21D886078(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DBF843C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D8860C0()
{
  result = qword_27CE630D0;
  if (!qword_27CE630D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE630D0);
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for TTRUnsavedAttachment(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = v8 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v19 = *a2;
        *a1 = *a2;
        v20 = v19;
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 8);
        sub_21D1BAF70(*a2, v10);
        *a1 = v9;
        *(a1 + 8) = v10;
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
        v12 = sub_21DBF843C();
        (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      sub_21D1BAF70(*a2, v14);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v15 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
      v16 = sub_21DBF843C();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2 + v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
        memcpy((a1 + v15), (a2 + v15), *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v17 + 16))(a1 + v15, a2 + v15, v16);
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
      }
    }

    else
    {
      v7 = sub_21DBF54CC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for TTRUnsavedAttachment(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D17B8A8(*a1, *(a1 + 8));
      v8 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
      v9 = sub_21DBF843C();
      v11 = *(v9 - 8);
      if ((*(v11 + 48))(a1 + v8, 1, v9))
      {
        return;
      }

      v4 = *(v11 + 8);
      v6 = a1 + v8;
      v5 = v9;
    }

    else
    {
      if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
      {
        return;
      }

      v3 = sub_21DBF54CC();
      v4 = *(*(v3 - 8) + 8);
      v5 = v3;
      v6 = a1;
    }

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21D17B8A8(*a1, *(a1 + 8));
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
    v5 = sub_21DBF843C();
    v4 = *(*(v5 - 8) + 8);
    v6 = a1 + v10;
LABEL_15:

    v4(v6, v5);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *a1;
  }
}

uint64_t initializeWithCopy for TTRUnsavedAttachment(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v16 = *a2;
      *a1 = *a2;
      v17 = v16;
    }

    else
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      sub_21D1BAF70(*a2, v7);
      *a1 = v6;
      *(a1 + 8) = v7;
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
      v9 = sub_21DBF843C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    sub_21D1BAF70(*a2, v11);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v12 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
    v13 = sub_21DBF843C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
      memcpy((a1 + v12), (a2 + v12), *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(a1 + v12, a2 + v12, v13);
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  else
  {
    v5 = sub_21DBF54CC();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRUnsavedAttachment(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D886B44(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
      }

      else
      {
        v6 = *a2;
        v7 = *(a2 + 8);
        sub_21D1BAF70(*a2, v7);
        *a1 = v6;
        *(a1 + 8) = v7;
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
        v9 = sub_21DBF843C();
        (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v10 = *a2;
      v11 = *(a2 + 8);
      sub_21D1BAF70(*a2, v11);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v12 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
      v13 = sub_21DBF843C();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(a2 + v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
        memcpy((a1 + v12), (a2 + v12), *(*(v15 - 8) + 64));
      }

      else
      {
        (*(v14 + 16))(a1 + v12, a2 + v12, v13);
        (*(v14 + 56))(a1 + v12, 0, 1, v13);
      }
    }

    else
    {
      v5 = sub_21DBF54CC();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D886B44(uint64_t a1)
{
  v2 = type metadata accessor for TTRUnsavedAttachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for TTRUnsavedAttachment(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_9;
    }

    v11 = sub_21DBF54CC();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
    v15 = sub_21DBF843C();
    (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    a1[16] = a2[16];
    *(a1 + 24) = *(a2 + 24);
    v7 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
    v8 = sub_21DBF843C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_15;
  }

LABEL_9:
  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *assignWithTake for TTRUnsavedAttachment(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D886B44(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_10;
    }

    v11 = sub_21DBF54CC();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
    v15 = sub_21DBF843C();
    (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    a1[16] = a2[16];
    *(a1 + 24) = *(a2 + 24);
    v7 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
    v8 = sub_21DBF843C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_16;
  }

LABEL_10:
  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D887138()
{
  result = sub_21DBF843C();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5 = &v4;
    v6 = MEMORY[0x277D833E8] + 64;
    result = type metadata accessor for TTRDirectlySavableImageData(319);
    if (v2 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = sub_21DBF54CC();
      if (v3 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        v9 = v8;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for TTRDirectlySavableImageData(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    sub_21D1BAF70(*a2, v8);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v9 = *(a3 + 28);
    v10 = sub_21DBF843C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
      memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }
  }

  return a1;
}

uint64_t destroy for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2)
{
  sub_21D17B8A8(*a1, *(a1 + 8));
  v4 = *(a2 + 28);
  v5 = sub_21DBF843C();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D1BAF70(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a3 + 28);
  v9 = sub_21DBF843C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  return a1;
}

uint64_t assignWithCopy for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D1BAF70(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D17B8A8(v8, v9);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a3 + 28);
  v11 = sub_21DBF843C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  LODWORD(v6) = v13(a1 + v10, 1, v11);
  v14 = v13(a2 + v10, 1, v11);
  if (!v6)
  {
    if (!v14)
    {
      (*(v12 + 24))(a1 + v10, a2 + v10, v11);
      return a1;
    }

    (*(v12 + 8))(a1 + v10, v11);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
    memcpy((a1 + v10), (a2 + v10), *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v12 + 16))(a1 + v10, a2 + v10, v11);
  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t initializeWithTake for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a3 + 28);
  v6 = sub_21DBF843C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  sub_21D17B8A8(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a3 + 28);
  v9 = sub_21DBF843C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, a2 + v8, v9);
      return a1;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
    memcpy((a1 + v8), (a2 + v8), *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(a1 + v8, a2 + v8, v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
  return a1;
}

void sub_21D887A70()
{
  sub_21D887B1C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D887B1C()
{
  if (!qword_27CE63108)
  {
    sub_21DBF843C();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE63108);
    }
  }
}

unint64_t sub_21D887B98()
{
  result = qword_27CE63110;
  if (!qword_27CE63110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63110);
  }

  return result;
}

uint64_t TTRGeoLocationService.locationAuthorizationStatus.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21D887C0C, 0, 0);
}

void sub_21D887C0C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v0[4] = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(v1 + v2);
  v0[5] = v3;
  if (v3)
  {
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_21D887D14;

    sub_21D3A5554(sub_21D1B7D8C, v4, 3.0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D887D14(int a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_21D887E34, 0, 0);
}

void *sub_21D887E34()
{
  v1 = *(v0 + 64);

  if ((v1 - 1) < 2)
  {
    v3 = 3;
  }

  else if ((v1 - 3) >= 2)
  {
    if (v1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    result = *(*(v0 + 24) + *(v0 + 32));
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = [result accuracyAuthorization] == 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall TTRGeoLocationService.startUpdatingCurrentLocationIfNeeded()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  v1 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  TTRGeoLocationService.resolveAddress(for:)(v3, &v3);

  if ((v6 >> 61) > 2)
  {
    if (v6 >> 61 == 3)
    {
      v2 = v4;

      return;
    }
  }

  else if ((v6 >> 61) < 2)
  {
    sub_21D47B42C(v3, v4, v5, v6);
LABEL_5:
    sub_21D888DC4(v0);
    return;
  }

  sub_21D47B42C(v3, v4, v5, v6);
}

uint64_t TTRGeoLocationAuthorizationStatus.shouldShowAsUnauthorizedForPreciseLocation.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 ^ 1;
  }

  if (v1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3 & 1;
}

uint64_t sub_21D887FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_21D0D8CF0(0, &qword_27CE631A8);
    v4 = sub_21DBFA5EC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_21D888090()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F0F0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F0F0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRGeoLocationServiceResolvedLocation.Address.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v2 = [*v0 description];
    v1 = sub_21DBFA16C();
  }

  return v1;
}

uint64_t TTRGeoLocationServiceResolvedLocation.Address.hash(into:)()
{
  if (!*(v0 + 16))
  {
    v2 = 0;
LABEL_8:
    MEMORY[0x223D44FA0](v2);
    return sub_21DBFB64C();
  }

  if (*(v0 + 16) != 1)
  {
    v2 = 2;
    goto LABEL_8;
  }

  MEMORY[0x223D44FA0](1);

  return sub_21DBFA27C();
}

uint64_t TTRGeoLocationServiceResolvedLocation.Address.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x223D44FA0](v2);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D888330()
{
  v1 = *v0;
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v2 = [*v0 description];
    v1 = sub_21DBFA16C();
  }

  return v1;
}

uint64_t sub_21D8883C4()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x223D44FA0](v2);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D88845C()
{
  if (!*(v0 + 16))
  {
    v2 = 0;
LABEL_8:
    MEMORY[0x223D44FA0](v2);
    return sub_21DBFB64C();
  }

  if (*(v0 + 16) != 1)
  {
    v2 = 2;
    goto LABEL_8;
  }

  MEMORY[0x223D44FA0](1);

  return sub_21DBFA27C();
}

uint64_t sub_21D8884F4()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x223D44FA0](v2);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

unint64_t TTRGeoLocationServiceResolvedLocation.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24) >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      sub_21DBFBEEC();

      v19 = 0xD000000000000013;
      if (v3 == 1)
      {
        sub_21D179E10(v1, v2, 1);
      }

      else
      {
        v16 = [v1 description];
        v1 = sub_21DBFA16C();
        v2 = v17;
      }

      MEMORY[0x223D42AA0](v1, v2);
      goto LABEL_18;
    }

    sub_21DBFBEEC();

    v19 = 0xD000000000000013;
    v9 = [v1 description];
LABEL_8:
    v10 = v9;
    v11 = sub_21DBFA16C();
    v13 = v12;

    MEMORY[0x223D42AA0](v11, v13);
LABEL_18:

    goto LABEL_19;
  }

  if (v4 == 2)
  {
    v19 = 0x65766C6F7365722ELL;
    v9 = [v1 description];
    goto LABEL_8;
  }

  if (v4 == 3)
  {
    v19 = 0;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC6E630);
    v5 = [v1 description];
    v6 = sub_21DBFA16C();
    v8 = v7;

    MEMORY[0x223D42AA0](v6, v8);

    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  }

  else
  {
    v19 = 0;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0x4164656C6961662ELL, 0xEF28737365726464);
    if (v3 == 1)
    {
      sub_21DBF8E0C();
    }

    else
    {
      v14 = [v1 description];
      v1 = sub_21DBFA16C();
      v2 = v15;
    }

    MEMORY[0x223D42AA0](v1, v2);

    MEMORY[0x223D42AA0](44, 0xE100000000000000);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21DBFC14C();
LABEL_19:
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v19;
}

id TTRGeoLocationServiceResolvedLocation.resolvedPlacemark.getter()
{
  if (*(v0 + 24) >> 61 != 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRGeoLocationAuthorizationStatus.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x7265746544746F6ELL;
  }

  if (v1 == 3)
  {
    return 0x726F687475616E75;
  }

  sub_21DBFBEEC();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

BOOL static TTRGeoLocationAuthorizationStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRGeoLocationService.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRGeoLocationService.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void TTRGeoLocationService.currentLocation.getter(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  v2 = *&v5[0];
  if (*&v5[0])
  {
    TTRGeoLocationService.resolveAddress(for:)(*&v5[0], v5);

    v4 = v5[0];
    v3 = v5[1];
  }

  else
  {
    v3 = xmmword_21DC2E6B0;
    v4 = 0uLL;
  }

  *a1 = v4;
  a1[1] = v3;
}

void sub_21D888CB0(void *a1)
{
  if (a1)
  {

    [a1 startUpdatingLocation];
  }

  else
  {
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_280D0F0F0);
    oslog = sub_21DBF84AC();
    v2 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v2, "No permission for updating location. Skipping .startUpdatingLocation()", v3, 2u);
      MEMORY[0x223D46520](v3, -1, -1);
    }
  }
}

void sub_21D888DC4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = [v3 authorizationStatus];
  if (v4 - 1 >= 4 && !v4)
  {
    v5 = (a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
    v6 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
    *v5 = sub_21D888CB0;
    v5[1] = 0;
    sub_21D0D0E88(v6);
    v7 = *(a1 + v2);
    if (v7)
    {

      [v7 requestWhenInUseAuthorization];
      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  sub_21D889774(a1);
}

uint64_t TTRGeoLocationService.checkAndRequestLocationAccessIfNeeded()()
{
  v1[2] = v0;
  v1[3] = sub_21DBFA84C();
  v1[4] = sub_21DBFA83C();

  return MEMORY[0x2822009F8](sub_21D888EFC, 0, 0);
}

void sub_21D888EFC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v0[5] = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(v1 + v2);
  v0[6] = v3;
  if (v3)
  {
    v0[7] = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_authorizationTracker);
    v4 = swift_allocObject();
    v0[8] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_21D889008;

    sub_21D3A5554(sub_21D8911C4, v4, 3.0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D889008(int a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_21D889128, 0, 0);
}

uint64_t sub_21D889128()
{
  v2 = sub_21DBFA7CC();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_21D8891AC, v2, v1);
}

void *sub_21D8891AC()
{
  v1 = *(v0 + 104);
  if ((v1 - 1) < 4)
  {

    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F0F0);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_20;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Location status already determined; will not request for location authorization";
LABEL_19:
    _os_log_impl(&dword_21D0C9000, v3, v4, v6, v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
LABEL_20:

    v14 = *(v0 + 8);

    return v14();
  }

  if (v1)
  {

    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F0F0);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_20;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Error determining location status; will not request for location authorization";
    goto LABEL_19;
  }

  result = *(*(v0 + 16) + *(v0 + 40));
  if (result)
  {
    [result requestWhenInUseAuthorization];
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F0F0);
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, v9, v10, "requestWhenInUseAuthorization", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_21D8894B4;

    return sub_21D3A64E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D8894B4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21D454AAC, v3, v2);
}

id TTRGeoLocationService.syncLocationAuthorizationStatus.getter@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  result = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result authorizationStatus];
  if ((result - 1) < 2)
  {
LABEL_8:
    v5 = 3;
    goto LABEL_9;
  }

  if ((result - 3) >= 2)
  {
    if (!result)
    {
      v5 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = *(v1 + v3);
  if (result)
  {
    result = [result accuracyAuthorization];
    v5 = result == 0;
LABEL_9:
    *a1 = v5;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D889694()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  return v1;
}

uint64_t sub_21D889700()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  return v1;
}

void sub_21D889774(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (v3)
  {
    if ([v3 authorizationStatus] - 3 >= 2)
    {
      if (qword_280D17E90 != -1)
      {
        swift_once();
      }

      v5 = sub_21DBF84BC();
      __swift_project_value_buffer(v5, qword_280D0F0F0);
      v6 = sub_21DBF84AC();
      v7 = sub_21DBFAEBC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136315138;
        v10 = sub_21DBFB38C();
        v12 = sub_21D0CDFB4(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_21D0C9000, v6, v7, "Authorization not granted by the user. {authorizationStatus: %s}", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x223D46520](v9, -1, -1);
        MEMORY[0x223D46520](v8, -1, -1);
      }

      sub_21D888CB0(0);
    }

    else
    {
      v4 = *(a1 + v2);
      v13 = v4;
      sub_21D888CB0(v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D88993C(void (*a1)(void *))
{
  v3 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (v4)
  {
    if ([v4 authorizationStatus] - 3 > 1)
    {
      if (qword_280D17E90 != -1)
      {
        swift_once();
      }

      v6 = sub_21DBF84BC();
      __swift_project_value_buffer(v6, qword_280D0F0F0);
      v7 = sub_21DBF84AC();
      v8 = sub_21DBFAEBC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        v11 = sub_21DBFB38C();
        v13 = sub_21D0CDFB4(v11, v12, &v15);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_21D0C9000, v7, v8, "Authorization not granted by the user. {authorizationStatus: %s}", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x223D46520](v10, -1, -1);
        MEMORY[0x223D46520](v9, -1, -1);
      }

      a1(0);
    }

    else
    {
      v5 = *(v1 + v3);
      v14 = v5;
      a1(v5);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D889B18()
{
  v2 = v0;
  v3 = sub_21DBF9D8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v6 = sub_21DBFB12C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v7 = sub_21DBF9DAC();
  v9 = *(v4 + 8);
  v8 = v4 + 8;
  v9(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_7:
    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F0F0);
    sub_21D179D54(v1, v8, v6, v3);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();
    sub_21D0D73FC(v1, v8, v6, v3);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v105 = v3;
      v106[0] = v16;
      *v15 = 136315138;
      v102 = v1;
      v103 = v8;
      v104 = v6;
      v17 = TTRGeoLocationServiceResolvedLocation.description.getter();
      v19 = sub_21D0CDFB4(v17, v18, v106);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, v13, v14, "Queueing geocoding request because of other request in flight {currentGeocodingLocation: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
      sub_21D0D73FC(v1, v8, v6, v3);
    }

    else
    {

      sub_21D0D73FC(v1, v8, v6, v3);
    }

    return;
  }

  v10 = &v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v6 = *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16];
  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24];
  if (v6 >> 2 != 0xFFFFFFFF || (v3 & 0xF000000000000007) != 0)
  {
    v1 = *v10;
    v8 = *(v10 + 1);
    sub_21D179D54(v1, v8, *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16], *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24]);
    if (qword_280D17E90 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
  swift_beginAccess();
  if (*(*&v2[v20] + 16))
  {
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    v22 = __swift_project_value_buffer(v21, qword_280D0F0F0);
    v23 = v2;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = *(*&v2[v20] + 16);

      _os_log_impl(&dword_21D0C9000, v24, v25, "Dequeueing next locationToResolve {pendingLocationsToResolve.count: %ld}", v26, 0xCu);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {

      v24 = v23;
    }

    swift_beginAccess();
    v31 = *&v2[v20];
    if (v31[2])
    {
      v97 = v22;
      v33 = v31[4];
      v32 = v31[5];
      v34 = v31[7];
      v36 = v31[8];
      v35 = v31[9];
      v101 = v31[6];
      sub_21D179D54(v33, v32, v101, v34);
      sub_21D0D0E78(v36);
      sub_21DBD1670(0, 1);
      swift_endAccess();
      v100 = v23;
      if (v36)
      {
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v35;
        v38 = sub_21D25A920;
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

      v39 = v101;
      sub_21D179D54(v33, v32, v101, v34);
      sub_21D0D0E78(v38);
      sub_21D0D0E88(v38);
      sub_21D179D54(v33, v32, v39, v34);
      v98 = v38;
      v99 = v37;
      sub_21D0D0E78(v38);
      sub_21D47B42C(v33, v32, v39, v34);
      v40 = *v10;
      v41 = *(v10 + 1);
      v43 = *(v10 + 2);
      v42 = *(v10 + 3);
      *v10 = v33;
      *(v10 + 1) = v32;
      *(v10 + 2) = v39;
      *(v10 + 3) = v34;
      sub_21D179D54(v33, v32, v39, v34);
      sub_21D0D73FC(v40, v41, v43, v42);
      v44 = v34 >> 61;
      if ((v34 >> 61) <= 1)
      {
        if (!v44)
        {
          v60 = v33;
          v61 = v98;
          sub_21D88A768(v60, v98, v99);
          v62 = v101;
          sub_21D47B42C(v33, v32, v101, v34);
          sub_21D0D0E88(v61);
          sub_21D0D0E88(v61);
          sub_21D47B42C(v33, v32, v62, v34);
          v63 = v33;
          v64 = v32;
          v65 = v62;
LABEL_42:
          sub_21D47B42C(v63, v64, v65, v34);
          return;
        }

        v102 = v33;
        v103 = v32;
        v78 = v101;
        LOBYTE(v104) = v101;
        sub_21D179E10(v33, v32, v101);
        v79 = v98;
        sub_21D88A9EC(&v102, v98, v99);
      }

      else
      {
        if (v44 != 2)
        {
          if (v44 == 3)
          {
            v45 = v33;
            v46 = v32;
            v47 = sub_21DBF84AC();
            v48 = sub_21DBFAEDC();

            v49 = os_log_type_enabled(v47, v48);
            v50 = v101;
            if (v49)
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v96 = v52;
              v97 = swift_slowAlloc();
              v102 = v97;
              *v51 = 138412546;
              *(v51 + 4) = v45;
              *v52 = v33;
              *(v51 + 12) = 2080;
              swift_getErrorValue();
              v53 = v45;
              v54 = sub_21DBFC74C();
              v56 = sub_21D0CDFB4(v54, v55, &v102);

              *(v51 + 14) = v56;
              v50 = v101;
              _os_log_impl(&dword_21D0C9000, v47, v48, "Retrying failed location {location: %@, error: %s}", v51, 0x16u);
              v57 = v96;
              sub_21D0CF7E0(v96, &unk_27CE60070);
              MEMORY[0x223D46520](v57, -1, -1);
              v58 = v97;
              __swift_destroy_boxed_opaque_existential_0(v97);
              MEMORY[0x223D46520](v58, -1, -1);
              MEMORY[0x223D46520](v51, -1, -1);
            }

            v59 = v98;
            sub_21D88A768(v45, v98, v99);
            sub_21D47B42C(v33, v32, v50, v34);
            sub_21D0D0E88(v59);
            sub_21D0D0E88(v59);
            sub_21D47B42C(v33, v32, v50, v34);
          }

          else
          {
            v80 = v101;
            sub_21D179E10(v33, v32, v101);
            sub_21D179E10(v33, v32, v80);
            v81 = (v34 & 0x1FFFFFFFFFFFFFFFLL);
            v82 = sub_21DBF84AC();
            v83 = sub_21DBFAEDC();
            sub_21D181CB8(v33, v32, v80);

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v102 = v85;
              *v84 = 136315394;
              if (v80 == 1)
              {
                sub_21DBF8E0C();
                v86 = v33;
                v87 = v32;
              }

              else
              {
                v88 = [v33 description];
                v97 = v85;
                v89 = v88;
                v86 = sub_21DBFA16C();
                v87 = v90;

                v85 = v97;
              }

              v91 = sub_21D0CDFB4(v86, v87, &v102);

              *(v84 + 4) = v91;
              *(v84 + 12) = 2080;
              swift_getErrorValue();
              v92 = sub_21DBFC74C();
              v94 = sub_21D0CDFB4(v92, v93, &v102);

              *(v84 + 14) = v94;
              _os_log_impl(&dword_21D0C9000, v82, v83, "Retrying failed address {address: %s, error: %s}", v84, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D46520](v85, -1, -1);
              MEMORY[0x223D46520](v84, -1, -1);
            }

            v102 = v33;
            v103 = v32;
            LOBYTE(v104) = v80;
            v95 = v98;
            sub_21D88A9EC(&v102, v98, v99);
            sub_21D47B42C(v33, v32, v80, v34);
            sub_21D0D0E88(v95);
            sub_21D0D0E88(v95);
            sub_21D47B42C(v33, v32, v80, v34);
            sub_21D181CB8(v33, v32, v80);
          }

          return;
        }

        v66 = v101;
        sub_21D179D54(v33, v32, v101, v34);
        v67 = v33;
        v68 = sub_21DBF84AC();
        v69 = sub_21DBFAE9C();
        sub_21D47B42C(v33, v32, v66, v34);
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138412290;
          *(v70 + 4) = v67;
          *v71 = v33;
          v72 = v67;
          _os_log_impl(&dword_21D0C9000, v68, v69, "Tried to resolve already resolved location -- Next {placemark: %@}", v70, 0xCu);
          sub_21D0CF7E0(v71, &unk_27CE60070);
          MEMORY[0x223D46520](v71, -1, -1);
          MEMORY[0x223D46520](v70, -1, -1);
        }

        v73 = *v10;
        v74 = *(v10 + 1);
        v75 = *(v10 + 2);
        v76 = *(v10 + 3);
        *v10 = 0;
        *(v10 + 1) = 0;
        *(v10 + 1) = xmmword_21DC2E6B0;
        sub_21D0D73FC(v73, v74, v75, v76);
        v78 = v101;
        v79 = v98;
        if (v36)
        {
          v102 = v33;
          v103 = v32;
          v104 = v101;
          v105 = v34;

          (v79)(&v102);
          v77 = sub_21D0D0E88(v79);
        }

        sub_21D889B18(v77);
      }

      sub_21D47B42C(v33, v32, v78, v34);
      sub_21D0D0E88(v79);
      sub_21D0D0E88(v79);
      sub_21D47B42C(v33, v32, v78, v34);
      v63 = v33;
      v64 = v32;
      v65 = v78;
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (qword_280D17E90 != -1)
  {
LABEL_49:
    swift_once();
  }

  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_280D0F0F0);
  v28 = sub_21DBF84AC();
  v29 = sub_21DBFAE9C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_21D0C9000, v28, v29, "All locations have been resolved -- Done", v30, 2u);
    MEMORY[0x223D46520](v30, -1, -1);
  }
}

void sub_21D88A768(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F0F0);
  v9 = a1;
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAE9C();

  if (os_log_type_enabled(v10, v11))
  {
    v25 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = [v9 description];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v18 = sub_21D0CDFB4(v15, v17, aBlock);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Reverse Geocoding location {location: %s}", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D46520](v13, -1, -1);
    v19 = v12;
    a3 = v25;
    MEMORY[0x223D46520](v19, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = v9;
  v21[4] = a2;
  v21[5] = a3;
  aBlock[4] = sub_21D89115C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D887FEC;
  aBlock[3] = &block_descriptor_60_1;
  v22 = _Block_copy(aBlock);
  v23 = v9;
  v24 = v4;
  sub_21D0D0E78(a2);

  [v20 reverseGeocodeLocation:v23 completionHandler:v22];
  _Block_release(v22);
}

void sub_21D88A9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_280D0F0F0);
  sub_21D179E10(v7, v8, v9);
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAE9C();
  sub_21D181CB8(v7, v8, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v30 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v31 = a2;
    aBlock = v14;
    if (v9 == 1)
    {
      sub_21DBF8E0C();
      v15 = v7;
      v16 = v8;
    }

    else
    {
      v29 = a3;
      v17 = [v7 description];
      v15 = sub_21DBFA16C();
      v16 = v18;

      a3 = v29;
    }

    v19 = sub_21D0CDFB4(v15, v16, &aBlock);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v11, v12, "Geocoding address {address: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D46520](v14, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);

    v4 = v30;
    a2 = v31;
  }

  else
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v7;
  *(v20 + 32) = v8;
  *(v20 + 40) = v9;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  v21 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
  sub_21D179E10(v7, v8, v9);
  v22 = v4;
  sub_21D0D0E78(a2);
  v23 = [v21 init];
  if (v9)
  {
    if (v9 == 1)
    {
      v24 = sub_21DBFA12C();
      v36 = sub_21D891178;
      v37 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_21D887FEC;
      v35 = &block_descriptor_78_4;
      v25 = _Block_copy(&aBlock);

      [v23 geocodeAddressString:v24 completionHandler:v25];
    }

    else
    {
      v27 = [objc_allocWithZone(MEMORY[0x277CD4E38]) initWithCompletion_];
      v24 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];

      v28 = swift_allocObject();
      *(v28 + 16) = sub_21D891178;
      *(v28 + 24) = v20;
      v36 = sub_21D89118C;
      v37 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_21D55C8BC;
      v35 = &block_descriptor_75_1;
      v25 = _Block_copy(&aBlock);

      [v24 startWithCompletionHandler_];
    }

    _Block_release(v25);
  }

  else
  {
    v36 = sub_21D891178;
    v37 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D887FEC;
    v35 = &block_descriptor_81_0;
    v26 = _Block_copy(&aBlock);

    [v23 geocodePostalAddress:v7 completionHandler:v26];

    _Block_release(v26);
  }
}

uint64_t sub_21D88AEBC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = sub_21DBF9D2C();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF9D5C();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900);
  v27 = sub_21DBFB12C();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a1;
  aBlock[4] = sub_21D891168;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_66_4;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  v20 = a4;
  sub_21D0D0E78(a5);
  v21 = a2;
  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  v22 = v26;
  sub_21DBFBCBC();
  v23 = v27;
  MEMORY[0x223D438F0](0, v16, v13, v18);
  _Block_release(v18);

  (*(v30 + 8))(v13, v22);
  return (*(v28 + 8))(v16, v29);
}

void sub_21D88B1BC(int a1, void *a2, void (*a3)(uint64_t *), int a4, id a5, unint64_t a6)
{
  if (!a5)
  {
    if (a6)
    {
      v23 = a6 & 0xFFFFFFFFFFFFFF8;
      if (a6 >> 62)
      {
        v38 = a6;
        v39 = sub_21DBFBD7C();
        a6 = v38;
        if (v39)
        {
LABEL_12:
          if ((a6 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x223D44740](0, a6);
          }

          else
          {
            if (!*(v23 + 16))
            {
              __break(1u);
LABEL_38:
              swift_once();
LABEL_19:
              v26 = sub_21DBF84BC();
              __swift_project_value_buffer(v26, qword_280D0F0F0);
              v27 = a2;
              v28 = v49;
              v29 = sub_21DBF84AC();
              v30 = sub_21DBFAECC();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                *v31 = 138412546;
                *(v31 + 4) = v27;
                *(v31 + 12) = 2112;
                *(v31 + 14) = v28;
                *v32 = v27;
                v32[1] = v28;
                v33 = v27;
                v34 = v28;
                _os_log_impl(&dword_21D0C9000, v29, v30, "Reverse geocoder yielded placemark without a postal address -- failed to resolve location {location: %@, placemark: %@}", v31, 0x16u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
                swift_arrayDestroy();
                MEMORY[0x223D46520](v32, -1, -1);
                MEMORY[0x223D46520](v31, -1, -1);
              }

              v35 = objc_opt_self();
              v49 = v27;
              v36 = sub_21DBFA12C();
              v37 = [v35 internalErrorWithDebugDescription_];

              v50 = v27;
              v51 = v37;
              v52 = xmmword_21DC2E6C0;
              sub_21D88B8CC(v49, &v50);
              if (a3)
              {
                v50 = v27;
                v51 = v37;
                v52 = xmmword_21DC2E6C0;
                a3(&v50);

                return;
              }

LABEL_32:
              goto LABEL_33;
            }

            v24 = *(a6 + 32);
          }

          v49 = v24;
          v25 = [v24 postalAddress];
          if (v25)
          {

            v50 = v49;
            v51 = 0;
            *&v52 = 0;
            *(&v52 + 1) = 0x4000000000000000;
            sub_21D88B8CC(a2, &v50);
            if (a3)
            {
              v50 = v49;
              v51 = 0;
              *&v52 = 0;
              *(&v52 + 1) = 0x4000000000000000;
              a3(&v50);
LABEL_31:

              return;
            }

LABEL_33:

            goto LABEL_31;
          }

          if (qword_280D17E90 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_38;
        }
      }

      else if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_280D0F0F0);
    v41 = a2;
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAECC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_21D0C9000, v42, v43, "Reverse geocoder finished without placemarks -- Failed to resolve location {location: %@}", v44, 0xCu);
      sub_21D0CF7E0(v45, &unk_27CE60070);
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v44, -1, -1);
    }

    v47 = objc_opt_self();
    v49 = v41;
    v48 = sub_21DBFA12C();
    v37 = [v47 internalErrorWithDebugDescription_];

    v50 = v41;
    v51 = v37;
    v52 = xmmword_21DC2E6C0;
    sub_21D88B8CC(v49, &v50);
    if (a3)
    {
      v50 = v41;
      v51 = v37;
      v52 = xmmword_21DC2E6C0;
      a3(&v50);

      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v9 = a5;
  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_280D0F0F0);
  v11 = a5;
  v12 = a2;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v50 = v17;
    *v15 = 136315394;
    swift_getErrorValue();
    v18 = sub_21DBFC74C();
    v20 = sub_21D0CDFB4(v18, v19, &v50);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v21 = v12;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Failed to reverse geocode location {error: %s, location: %@}", v15, 0x16u);
    sub_21D0CF7E0(v16, &unk_27CE60070);
    MEMORY[0x223D46520](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v50 = v12;
  v51 = a5;
  v52 = xmmword_21DC2E6C0;
  v22 = v12;
  sub_21D88B8CC(v22, &v50);
  if (a3)
  {
    v50 = v12;
    v51 = a5;
    v52 = xmmword_21DC2E6C0;
    a3(&v50);
  }
}

uint64_t sub_21D88B8CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    v47 = v3;
    if (qword_280D17E90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F0F0);
  sub_21D179D54(v10, v11, v12, v13);
  v15 = sub_21DBF84AC();
  v16 = v13;
  v17 = sub_21DBFAEDC();
  sub_21D47B42C(v10, v11, v12, v16);
  v18 = os_log_type_enabled(v15, v17);
  v46 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49[0] = v20;
    *v19 = 136315138;
    v50[0] = v10;
    v50[1] = v11;
    v50[2] = v12;
    v51 = v16;
    v21 = TTRGeoLocationServiceResolvedLocation.description.getter();
    v23 = v16;
    v24 = sub_21D0CDFB4(v21, v22, v49);

    *(v19 + 4) = v24;
    v16 = v23;
    _os_log_impl(&dword_21D0C9000, v15, v17, "Location resolved {resolution: %s}", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21D179D54(v10, v11, v12, v16);
  v25 = v48;
  v26 = v47;
  v48 = sub_21DBF915C();
  v28 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = *v28;
  *v28 = 0x8000000000000000;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v16;
  sub_21D479204(v10, v11, v12, v16, v25, isUniquelyReferenced_nonNull_native);

  v30 = v48;
  *v28 = v49[0];
  v30(v50, 0);

  v31 = &v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 1);
    v33 = swift_getObjectType();
    v51 = v46;
    v52 = &protocol witness table for TTRGeoLocationService;
    v49[0] = v42;
    v49[1] = v43;
    v49[2] = v44;
    v49[3] = v45;
    v50[0] = v26;
    v34 = *(v32 + 24);
    v35 = v26;
    v34(v50, v25, v49, v33, v32);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v36 = &v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v37 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v38 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 8];
  v39 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16];
  v40 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24];
  *v36 = 0;
  *(v36 + 1) = 0;
  *(v36 + 1) = xmmword_21DC2E6B0;
  sub_21D0D73FC(v37, v38, v39, v40);
  return sub_21D889B18();
}

uint64_t sub_21D88BD10(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v31 = sub_21DBF9D2C();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF9D5C();
  v33 = *(v17 - 8);
  v34 = v17;
  MEMORY[0x28223BE20](v17);
  v29 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900);
  v32 = sub_21DBFB12C();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = a2;
  *(v19 + 72) = a1;
  aBlock[4] = sub_21D891194;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_87_2;
  v20 = _Block_copy(aBlock);
  v21 = a3;
  sub_21D179E10(a4, a5, a6);
  sub_21D0D0E78(a7);
  v22 = a2;
  sub_21DBF8E0C();

  v23 = v29;
  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  v25 = v30;
  v24 = v31;
  sub_21DBFBCBC();
  v26 = v32;
  MEMORY[0x223D438F0](0, v23, v25, v20);
  _Block_release(v20);

  (*(v35 + 8))(v25, v24);
  return (*(v33 + 8))(v23, v34);
}

void sub_21D88C038(int a1, void *a2, uint64_t a3, unsigned __int8 a4, void (*a5)(void), int a6, unint64_t a7, unint64_t a8)
{
  v8 = a5;
  if (a7)
  {
    v13 = a7;
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F0F0);
    v15 = a7;
    sub_21D179E10(a2, a3, a4);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();

    sub_21D181CB8(a2, a3, a4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = v59;
      *v18 = 136315394;
      swift_getErrorValue();
      v19 = sub_21DBFC74C();
      v21 = sub_21D0CDFB4(v19, v20, &v63);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      if (a4 == 1)
      {
        sub_21DBF8E0C();
        v22 = a2;
        v23 = a3;
      }

      else
      {
        v27 = [a2 description];
        v22 = sub_21DBFA16C();
        v23 = v28;
      }

      v29 = sub_21D0CDFB4(v22, v23, &v63);

      *(v18 + 14) = v29;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Failed to geocode address {error: %s, address: %s}", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v59, -1, -1);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    v67 = a2;
    v68 = a3;
    v69 = a4;
    v63 = a2;
    v64 = a3;
    v65 = a4;
    v66 = a7 | 0x8000000000000000;
    sub_21D179E10(a2, a3, a4);
    sub_21D88C94C(&v67, &v63);
    if (a5)
    {
      v63 = a2;
      v64 = a3;
      v65 = a4;
      v66 = a7 | 0x8000000000000000;
      a5(&v63);
    }

    sub_21D181CB8(a2, a3, a4);
    v30 = a7;
    goto LABEL_46;
  }

  if (!a8)
  {
    goto LABEL_35;
  }

  v24 = a8 & 0xFFFFFFFFFFFFFF8;
  if (!(a8 >> 62))
  {
    if (*((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_35:
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v46 = sub_21DBF84BC();
    __swift_project_value_buffer(v46, qword_280D0F0F0);
    sub_21D179E10(a2, a3, a4);
    v47 = sub_21DBF84AC();
    v48 = sub_21DBFAECC();
    sub_21D181CB8(a2, a3, a4);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63 = v50;
      *v49 = 136315138;
      if (a4 == 1)
      {
        sub_21DBF8E0C();
        v51 = a2;
        v52 = a3;
      }

      else
      {
        v62 = v8;
        v53 = [a2 description];
        v51 = sub_21DBFA16C();
        v52 = v54;

        v8 = v62;
      }

      v55 = sub_21D0CDFB4(v51, v52, &v63);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_21D0C9000, v47, v48, "Geocoder finished without placemarks -- Failed to resolve address {address: %s}", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x223D46520](v50, -1, -1);
      MEMORY[0x223D46520](v49, -1, -1);
    }

    else
    {
    }

    v56 = objc_opt_self();
    sub_21D179E10(a2, a3, a4);
    v57 = sub_21DBFA12C();
    v43 = [v56 internalErrorWithDebugDescription_];

    v67 = a2;
    v68 = a3;
    v69 = a4;
    v63 = a2;
    v64 = a3;
    v65 = a4;
    v66 = v43 | 0x8000000000000000;
    sub_21D88C94C(&v67, &v63);
    if (!v8)
    {
      sub_21D181CB8(a2, a3, a4);
      v30 = v43;

      goto LABEL_46;
    }

    v63 = a2;
    v64 = a3;
    v65 = a4;
    v66 = v43 | 0x8000000000000000;
    v8(&v63);
    goto LABEL_45;
  }

  v44 = a8;
  v45 = sub_21DBFBD7C();
  a8 = v44;
  if (!v45)
  {
    goto LABEL_35;
  }

LABEL_10:
  if ((a8 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x223D44740](0, a8);
LABEL_13:
    v58 = v25;
    v26 = [v25 location];
    if (v26)
    {

      v67 = a2;
      v68 = a3;
      v69 = a4;
      v63 = v58;
      v64 = 0;
      v65 = 0;
      v66 = 0x4000000000000000;
      sub_21D88C94C(&v67, &v63);
      if (v8)
      {
        v63 = v58;
        v64 = 0;
        v65 = 0;
        v66 = 0x4000000000000000;
        v8(&v63);

        return;
      }

      goto LABEL_31;
    }

    if (qword_280D17E90 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

  if (*(v24 + 16))
  {
    v25 = *(a8 + 32);
    goto LABEL_13;
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_22:
  v31 = sub_21DBF84BC();
  __swift_project_value_buffer(v31, qword_280D0F0F0);
  sub_21D179E10(a2, a3, a4);
  v32 = sub_21DBF84AC();
  v33 = sub_21DBFAECC();
  sub_21D181CB8(a2, a3, a4);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136315138;
    if (a4 == 1)
    {
      sub_21DBF8E0C();
      v36 = a2;
      v37 = a3;
    }

    else
    {
      v61 = v8;
      v38 = [a2 description];
      v36 = sub_21DBFA16C();
      v37 = v39;

      v8 = v61;
    }

    v40 = sub_21D0CDFB4(v36, v37, &v63);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_21D0C9000, v32, v33, "Geocoder yielded placemark without location -- failed to resolve address {address: %s}", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x223D46520](v35, -1, -1);
    MEMORY[0x223D46520](v34, -1, -1);
  }

  else
  {
  }

  v41 = objc_opt_self();
  sub_21D179E10(a2, a3, a4);
  v42 = sub_21DBFA12C();
  v43 = [v41 internalErrorWithDebugDescription_];

  v67 = a2;
  v68 = a3;
  v69 = a4;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = v43 | 0x8000000000000000;
  sub_21D88C94C(&v67, &v63);
  if (!v8)
  {
    sub_21D181CB8(a2, a3, a4);

LABEL_31:
    v30 = v58;

    goto LABEL_46;
  }

  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = v43 | 0x8000000000000000;
  v8(&v63);

LABEL_45:
  sub_21D181CB8(a2, a3, a4);
  v30 = v43;
LABEL_46:
}

uint64_t sub_21D88C94C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v57 = *(a1 + 8);
  KeyPath = v10;
  v11 = *(a1 + 16);
  v13 = *a2;
  v12 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    if (qword_280D17E90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v56 = v3;
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_280D0F0F0);
  v17 = v15;
  v18 = v14;
  sub_21D179D54(v13, v12, v15, v14);
  v19 = sub_21DBF84AC();
  v20 = v13;
  v21 = v12;
  v22 = sub_21DBFAEDC();
  sub_21D47B42C(v13, v21, v15, v18);
  v23 = os_log_type_enabled(v19, v22);
  v59 = v13;
  if (v23)
  {
    v24 = v18;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v60[0] = v26;
    *v25 = 136315138;
    v63[0] = v20;
    v63[1] = v21;
    v63[2] = v15;
    v64 = v24;
    v27 = TTRGeoLocationServiceResolvedLocation.description.getter();
    v29 = sub_21D0CDFB4(v27, v28, v60);

    *(v25 + 4) = v29;
    v17 = v15;
    _os_log_impl(&dword_21D0C9000, v19, v22, "Address resolved {resolution: %s}", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223D46520](v26, -1, -1);
    v30 = v25;
    v18 = v24;
    MEMORY[0x223D46520](v30, -1, -1);
  }

  v32 = v57;
  v31 = KeyPath;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v33 = v59;
  sub_21D179D54(v59, v21, v17, v18);
  sub_21D179E10(v31, v32, v11);
  v34 = v56;
  v35 = v18;
  v57 = sub_21DBF915C();
  v37 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = *v37;
  *v37 = 0x8000000000000000;
  v39 = v33;
  v40 = v35;
  v53 = v21;
  v54 = v17;
  sub_21D479378(v39, v21, v17, v35, v31, v32, v11, isUniquelyReferenced_nonNull_native);
  sub_21D181CB8(v31, v32, v11);
  *v37 = v60[0];
  v57(v63, 0);

  v41 = &v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v41 + 1);
    v43 = swift_getObjectType();
    v64 = ObjectType;
    v65 = &protocol witness table for TTRGeoLocationService;
    v63[0] = v34;
    v61[0] = v31;
    v61[1] = v32;
    v62 = v11;
    v60[0] = v59;
    v60[1] = v53;
    v60[2] = v54;
    v60[3] = v40;
    v44 = *(v42 + 16);
    v45 = v34;
    v44(v63, v61, v60, v43, v42);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  v46 = &v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v47 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v48 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 8];
  v49 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16];
  v50 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v46 + 1) = xmmword_21DC2E6B0;
  sub_21D0D73FC(v47, v48, v49, v50);
  return sub_21D889B18();
}

uint64_t sub_21D88CDF8(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v14 = a2;
  v4 = [a1 mapItems];
  sub_21D0D8CF0(0, &qword_27CE632A8);
  v5 = sub_21DBFA5EC();

  if (v5 >> 62)
  {
    v6 = sub_21DBFBD7C();
    if (v6)
    {
LABEL_4:
      v15 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (v6 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223D44740](v8, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = [v9 placemark];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v6 != v8);

      v12 = v15;
      if (!(v15 >> 62))
      {
        goto LABEL_11;
      }

LABEL_19:
      sub_21D0D8CF0(0, &qword_27CE631A8);
      sub_21DBF8E0C();
      v13 = sub_21DBFC33C();
      swift_bridgeObjectRelease_n();
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  v12 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_19;
  }

LABEL_11:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  sub_21D0D8CF0(0, &qword_27CE631A8);

  v13 = v12;
LABEL_12:
  a2 = v14;
LABEL_14:
  a3(v13, a2);
}

id TTRGeoLocationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRGeoLocationService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRGeoLocationService.resolveLocation(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  if (*(v18 + 16) && (v7 = sub_21D17E948(v4, v5, v6), (v8 & 1) != 0))
  {
    v9 = *(v18 + 56) + 32 * v7;
    v4 = *v9;
    v5 = *(v9 + 8);
    v6 = *(v9 + 16);
    v10 = *(v9 + 24);
    sub_21D179D54(*v9, v5, v6, v10);
  }

  else
  {

    v12 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
    swift_beginAccess();
    v13 = *(v2 + v12);
    sub_21D179E10(v4, v5, v6);
    sub_21D179E10(v4, v5, v6);
    sub_21D179D54(v4, v5, v6, 0x2000000000000000uLL);
    sub_21D0D0E78(0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_21D213644(0, v13[2] + 1, 1, v13);
      *(v2 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_21D213644((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[6 * v16];
    v17[4] = v4;
    v17[5] = v5;
    v10 = 0x2000000000000000;
    v17[6] = v6;
    v17[7] = 0x2000000000000000;
    v17[8] = 0;
    v17[9] = 0;
    *(v2 + v12) = v13;
    swift_endAccess();
    sub_21D889B18();
    sub_21D47B42C(v4, v5, v6, 0x2000000000000000uLL);
    result = sub_21D0D0E88(0);
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v10;
  return result;
}

uint64_t TTRGeoLocationService.resolveAddress(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  if (*(v18 + 16) && (v5 = sub_21D17E8F8(a1), (v6 & 1) != 0))
  {
    v7 = *(v18 + 56) + 32 * v5;
    v16 = *(v7 + 16);
    v17 = *v7;
    sub_21D179D54(*v7, *(v7 + 8), v16, *(v7 + 24));

    *a2 = v17;
    *(a2 + 16) = v16;
  }

  else
  {

    v9 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v11 = a1;
    sub_21D179D54(a1, 0, 0, 0);
    sub_21D0D0E78(0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21D213644(0, v10[2] + 1, 1, v10);
      *(v2 + v9) = v10;
    }

    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      v10 = sub_21D213644((v13 > 1), v14 + 1, 1, v10);
    }

    v10[2] = v14 + 1;
    v15 = &v10[6 * v14];
    v15[4] = a1;
    *(v15 + 5) = 0u;
    *(v15 + 7) = 0u;
    v15[9] = 0;
    *(v2 + v9) = v10;
    swift_endAccess();
    sub_21D889B18();
    sub_21D47B42C(a1, 0, 0, 0);
    result = sub_21D0D0E88(0);
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void *TTRGeoLocationService.currentOrGloballyLastKnownLocation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  v0 = v4[0];
  if (!v4[0])
  {
    goto LABEL_4;
  }

  TTRGeoLocationService.resolveAddress(for:)(v4[0], v4);

  v1 = v4[0];
  if (v6 >> 61 != 2)
  {
    sub_21D47B42C(v4[0], v4[1], v5, v6);
LABEL_4:
    v1 = qword_27CE63118;
    v2 = qword_27CE63118;
  }

  return v1;
}

uint64_t sub_21D88D748(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28[2] = a3;
  v36 = a4;
  v37 = a1;
  v8 = *(a2 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v34 = sub_21D0D8CF0(255, &qword_27CE631A8);
  v12 = a2[5];
  v13 = sub_21DBF8F2C();
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v29 = v28 - v14;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21DBF8F5C();
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v28 - v18;
  v20 = v30;
  (*(v8 + 16))(v30, v5, a2, v17);
  v21 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2[2];
  *(v22 + 3) = v11;
  v23 = a2[4];
  *(v22 + 4) = a3;
  *(v22 + 5) = v23;
  v24 = v36;
  *(v22 + 6) = v12;
  *(v22 + 7) = v24;
  (*(v8 + 32))(&v22[v21], v20, a2);
  v25 = v29;
  sub_21DBF926C();

  sub_21D8910E4();
  sub_21DBF93AC();
  (*(v35 + 8))(v25, v13);
  v26 = v32;
  sub_21DBF8F4C();
  return (*(v33 + 8))(v19, v26);
}

void sub_21D88DA78(void *a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X5>, unint64_t a4@<X6>, void *a5@<X8>)
{
  type metadata accessor for TTRGeoLocationService.FilterResult();
  sub_21DBF9F5C();
  if (a3 >> 2 == 0xFFFFFFFF && (a4 & 0xF000000000000007) == 0)
  {
    goto LABEL_8;
  }

  if ((a4 >> 61) > 2)
  {
    if (a4 >> 61 == 3)
    {
      v7 = a2;
    }

    else
    {
      v7 = (a4 & 0x1FFFFFFFFFFFFFFFLL);
    }

    swift_willThrow();
    v8 = v7;
    sub_21D0D73FC(a1, a2, a3, a4);
  }

  else
  {
    if ((a4 >> 61) < 2)
    {
      sub_21D0D73FC(a1, a2, a3, a4);
LABEL_8:
      *a5 = 0;
      return;
    }

    *a5 = a1;
  }
}

uint64_t TTRGeoLocationService.publisherForResolvingLocation(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63138);
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  if (*(v21[1] + 16))
  {
    sub_21D17E948(v7, v8, v9);
    v11 = v10;

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
  swift_beginAccess();
  v13 = *(v2 + v12);
  sub_21D179E10(v7, v8, v9);
  sub_21D179D54(v7, v8, v9, 0x2000000000000000uLL);
  sub_21D0D0E78(0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_21D213644(0, v13[2] + 1, 1, v13);
    *(v2 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_21D213644((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[6 * v16];
  v17[4] = v7;
  v17[5] = v8;
  v17[6] = v9;
  v17[7] = 0x2000000000000000;
  v17[8] = 0;
  v17[9] = 0;
  *(v2 + v12) = v13;
  swift_endAccess();
  sub_21D889B18();
  sub_21D47B42C(v7, v8, v9, 0x2000000000000000uLL);
  sub_21D0D0E88(0);
LABEL_10:
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63140);
  sub_21DBF914C();
  swift_endAccess();
  v18 = &v6[*(v4 + 52)];
  *v18 = v7;
  *(v18 + 1) = v8;
  v18[16] = v9;
  sub_21D179E10(v7, v8, v9);
  sub_21D0D0F1C(&qword_27CE63148, &qword_27CE63138);
  v19 = sub_21DBF920C();
  sub_21D0CF7E0(v6, &qword_27CE63138);
  return v19;
}

uint64_t TTRGeoLocationService.publisherForResolvingAddress(for:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63150);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  if (*(v19[1] + 16))
  {
    sub_21D17E8F8(a1);
    v8 = v7;

    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = a1;
  sub_21D179D54(a1, 0, 0, 0);
  sub_21D0D0E78(0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_21D213644(0, v10[2] + 1, 1, v10);
    *(v2 + v9) = v10;
  }

  v14 = v10[2];
  v13 = v10[3];
  if (v14 >= v13 >> 1)
  {
    v10 = sub_21D213644((v13 > 1), v14 + 1, 1, v10);
  }

  v10[2] = v14 + 1;
  v15 = &v10[6 * v14];
  v15[4] = a1;
  *(v15 + 5) = 0u;
  *(v15 + 7) = 0u;
  v15[9] = 0;
  *(v2 + v9) = v10;
  swift_endAccess();
  sub_21D889B18();
  sub_21D47B42C(a1, 0, 0, 0);
  sub_21D0D0E88(0);
LABEL_10:
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63158);
  sub_21DBF914C();
  swift_endAccess();
  *&v6[*(v4 + 52)] = a1;
  sub_21D0D0F1C(&qword_27CE63160, &qword_27CE63150);
  v16 = a1;
  v17 = sub_21DBF920C();
  sub_21D0CF7E0(v6, &qword_27CE63150);
  return v17;
}

uint64_t TTRGeoLocationService.currentLocationPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63168);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63170);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63178);
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63180);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63188);
  sub_21DBF914C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&unk_27CE63190, &qword_27CE63168);
  sub_21DBF93BC();
  (*(v2 + 8))(v4, v1);
  sub_21D0D8CF0(0, &qword_280D17890);
  sub_21D0D0F1C(&qword_27CE631A0, &qword_27CE63170);
  sub_21DBF921C();
  (*(v6 + 8))(v8, v5);
  *(swift_allocObject() + 16) = v0;
  v15 = v0;
  sub_21DBF8FFC();
  sub_21D0D8CF0(0, &qword_27CE631A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63150);
  sub_21D0D0F1C(&qword_27CE631B0, &qword_27CE63178);
  sub_21D0D0F1C(&qword_27CE63160, &qword_27CE63150);
  v16 = v21;
  sub_21DBF934C();

  (*(v24 + 8))(v10, v16);
  sub_21D0D0F1C(&qword_27CE631B8, &qword_27CE63180);
  v17 = v22;
  v18 = sub_21DBF920C();
  (*(v23 + 8))(v14, v17);
  return v18;
}

id sub_21D88E668@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63158);
  sub_21DBF914C();
  swift_endAccess();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63150) + 52)) = v4;

  return v4;
}

uint64_t TTRGeoLocationService.authorizationStatusPublisher.getter()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631C0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &ObjectType - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631C8);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &ObjectType - v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631D0);
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &ObjectType - v7;
  v18 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_authorizationTracker) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59048);
  sub_21D0D0F1C(&qword_280D0C7A0, &qword_27CE59048);
  v18 = sub_21DBF920C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631D8);
  sub_21D0D0F1C(&qword_280D0C490, &qword_27CE631D8);
  sub_21DBF921C();

  sub_21DBF8F0C();
  (*(v2 + 8))(v4, v1);
  sub_21D0D0F1C(&qword_280D0C658, &qword_27CE631C8);
  sub_21D88FB2C();
  v9 = v15;
  sub_21DBF93AC();
  (*(v17 + 8))(v6, v9);
  sub_21D0D0F1C(&qword_280D0C608, &qword_27CE631D0);
  v10 = v14;
  v11 = sub_21DBF920C();
  (*(v16 + 8))(v8, v10);
  return v11;
}

id sub_21D88EB2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  result = *(*a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result authorizationStatus];
  if ((result - 1) < 2)
  {
LABEL_8:
    v6 = 3;
    goto LABEL_9;
  }

  if ((result - 3) >= 2)
  {
    if (!result)
    {
      v6 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = *(v3 + v4);
  if (result)
  {
    result = [result accuracyAuthorization];
    v6 = result == 0;
LABEL_9:
    *a2 = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D88EC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return TTRGeoLocationService.checkAndRequestLocationAccessIfNeeded()();
}

uint64_t sub_21D88ED78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return TTRGeoLocationService.locationAuthorizationStatus.getter(a1);
}

Swift::Void __swiftcall TTRGeoLocationService.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
  if (v4)
  {
    *v3 = 0;
    v3[1] = 0;
    sub_21D88993C(v4);
    sub_21D0D0E88(v4);
  }

  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_280D0F0F0);
  v6 = isa;
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAE9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    [(objc_class *)v6 authorizationStatus];
    v11 = sub_21DBFB38C();
    v13 = sub_21D0CDFB4(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v7, v8, "LocationManagerDidChangeAuthorization { authorization: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  sub_21D3A61B0([(objc_class *)v6 authorizationStatus]);
}

void sub_21D88F090(void *a1, void *a2, void *a3)
{
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!a1)
  {
    v14 = a2;
    goto LABEL_8;
  }

  v11 = qword_280D17E90;
  v10 = a1;
  if (v11 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F0F0);
  v13 = a2;
  v14 = v10;
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v13;
    v18[1] = a1;
    v19 = v13;
    v14 = v14;
    _os_log_impl(&dword_21D0C9000, v15, v16, "Got shifted location {location: %@, shiftedLocation: %@}", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  *&v25 = v14;
  v20 = a1;
  a3;
  sub_21DBF917C();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21D891154;
  *(v22 + 24) = v21;
  swift_beginAccess();
  v25 = a2;
  v26 = 0;
  v27 = 0;
  v28 = sub_21D25A948;
  v29 = v22;
  v23 = a2;
  swift_retain_n();
  sub_21D179D54(a2, 0, 0, 0);
  sub_21D0D0E78(sub_21D891154);
  sub_21DBD1BAC(0, 0, &v25);
  swift_endAccess();
  sub_21D47B42C(a2, 0, 0, 0);
  sub_21D0D0E88(sub_21D25A948);
  sub_21D889B18();
  sub_21D47B42C(a2, 0, 0, 0);
  sub_21D0D0E88(sub_21D891154);
}

void sub_21D88F4A0(__int128 *a1)
{
  v10 = a1[1];
  v11 = *a1;
  if (*(&v10 + 1) >> 61 == 2)
  {
    v1 = qword_27CE63118;
    qword_27CE63118 = *a1;
    v2 = v11;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v13[3] = type metadata accessor for TTRGeoLocationService();
      v13[4] = &protocol witness table for TTRGeoLocationService;
      v13[0] = v4;
      v12[1] = v10;
      v12[0] = v11;
      v8 = *(v6 + 8);
      v9 = v4;
      v8(v13, v12, ObjectType, v6);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
    }
  }
}

void sub_21D88F5D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21D88F6D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  *a1 = v3;
  return result;
}

uint64_t sub_21D88F74C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF8E0C();
  v3 = v2;
  return sub_21DBF917C();
}

uint64_t sub_21D88F7C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21DBF916C();

  *a1 = v3;
  return result;
}

uint64_t sub_21D88F840(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_21DBF917C();
}

uint64_t _s15RemindersUICore029TTRGeoLocationServiceResolvedD0O7AddressO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D179E10(v6, v5, 0);
      sub_21D179E10(v3, v2, 0);
      v10 = sub_21DBFB63C();
      sub_21D181CB8(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D179E10(v6, v5, 2);
      sub_21D179E10(v3, v2, 2);
      LOBYTE(v10) = sub_21DBFB63C();
      sub_21D181CB8(v3, v2, 2);
      v11 = v6;
      v12 = v5;
      v13 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v7 != 1)
  {
LABEL_14:
    sub_21D179E10(*a2, *(a2 + 8), v7);
    sub_21D179E10(v3, v2, v4);
    sub_21D181CB8(v3, v2, v4);
    sub_21D181CB8(v6, v5, v7);
    return 0;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    LOBYTE(v10) = sub_21DBFC64C();
    sub_21D179E10(v6, v5, 1);
    sub_21D179E10(v3, v2, 1);
    sub_21D181CB8(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_13:
    sub_21D181CB8(v11, v12, v13);
    return v10 & 1;
  }

  sub_21D179E10(v8, v2, 1);
  sub_21D179E10(v3, v2, 1);
  sub_21D181CB8(v3, v2, 1);
  sub_21D181CB8(v3, v2, 1);
  return 1;
}

uint64_t sub_21D88FAE4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t sub_21D88FB2C()
{
  result = qword_280D116E0;
  if (!qword_280D116E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D116E0);
  }

  return result;
}

void sub_21D88FB80(unint64_t a1)
{
  v3 = v1;
  if (a1 >> 62)
  {
    v28 = a1;
    v4 = sub_21DBFBD7C();
    a1 = v28;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v7 = MEMORY[0x223D44740](v6, a1);
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *(a1 + 8 * v6 + 32);
LABEL_8:
  v2 = v7;
  if (qword_280D17E90 != -1)
  {
LABEL_27:
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F0F0);
  v9 = v2;
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAE9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Got current location {location: %@}", v12, 0xCu);
    sub_21D0CF7E0(v13, &unk_27CE60070);
    MEMORY[0x223D46520](v13, -1, -1);
    MEMORY[0x223D46520](v12, -1, -1);
  }

  [v9 horizontalAccuracy];
  if (v15 >= 0.0)
  {
    [v9 horizontalAccuracy];
    if (v16 < 150.0)
    {
      v17 = *&v3[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager];
      if (v17)
      {
        [v17 stopUpdatingLocation];
        v18 = [objc_allocWithZone(MEMORY[0x277CD4F98]) init];
        v19 = swift_allocObject();
        *(v19 + 16) = v9;
        *(v19 + 24) = v3;
        aBlock[4] = sub_21D89114C;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D88F5D8;
        aBlock[3] = &block_descriptor_105;
        v20 = _Block_copy(aBlock);
        v21 = v9;
        v22 = v3;

        sub_21D0D8CF0(0, &qword_280D1B900);
        v23 = sub_21DBFB12C();
        [v18 shiftLocation:v21 withCompletionHandler:v20 callbackQueue:v23];

        _Block_release(v20);
        return;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  v30 = v9;
  oslog = sub_21DBF84AC();
  v24 = sub_21DBFAE9C();

  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    [v30 horizontalAccuracy];
    *(v25 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, oslog, v24, "Ignoring current location because its not accurate enough {location.horizontalAccuracy: %f}", v25, 0xCu);
    MEMORY[0x223D46520](v25, -1, -1);

    v27 = v30;
  }

  else
  {

    v27 = oslog;
  }
}

uint64_t dispatch thunk of TTRGeoLocationServiceType.checkAndRequestLocationAccessIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRGeoLocationServiceType.locationAuthorizationStatus.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRGeoLocationServiceDelegate.geoService(_:didResolve:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

void *initializeWithCopy for TTRGeoLocationServiceResolvedLocation(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D179D54(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t assignWithCopy for TTRGeoLocationServiceResolvedLocation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D179D54(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_21D47B42C(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TTRGeoLocationServiceResolvedLocation(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v7;
  sub_21D47B42C(v3, v5, v4, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRGeoLocationServiceResolvedLocation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRGeoLocationServiceResolvedLocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D8904B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  *(result + 16) &= 3uLL;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_21D8904D8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D179E10(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRGeoLocationServiceResolvedLocation.Address(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D179E10(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D181CB8(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRGeoLocationServiceResolvedLocation.Address(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D181CB8(v4, v5, v6);
  return a1;
}

uint64_t sub_21D8905F4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D8906C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t sub_21D89081C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_21D8908C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890B60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_21D890D3C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

__n128 sub_21D89101C@<Q0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  type metadata accessor for TTRGeoLocationService.FilterResult();
  sub_21D88DA78(v4, *(&v4 + 1), v5, *(&v5 + 1), a1);
  return result;
}

unint64_t sub_21D8910E4()
{
  result = qword_27CE632A0;
  if (!qword_27CE632A0)
  {
    sub_21D0D8CF0(255, &qword_27CE631A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE632A0);
  }

  return result;
}

void TTRExtensionContextExtractorResult.containsImages.getter()
{
  v1 = type metadata accessor for TTRAttachmentInfo();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = *(v0 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v9 - 1;
    while (v10 < *(v8 + 16))
    {
      sub_21D686BFC(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v7);
      sub_21D8958AC(v7, v4, type metadata accessor for TTRAttachmentInfo);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_21D5FBB20(v4, type metadata accessor for TTRAttachmentInfo);
      if (EnumCaseMultiPayload >= 3 && v11 != v10++)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

void TTRReminderEditor.apply(_:)(Swift::OpaquePointer *a1)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = &v98 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = &v98 - v7;
  MEMORY[0x28223BE20](v8);
  v106 = &v98 - v9;
  v107 = sub_21DBF509C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v98 - v13;
  v15 = sub_21DBF54CC();
  v16 = *(v15 - 8);
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[2];
  v21 = [v20 attachmentContext];
  v103 = v11;
  if (v21)
  {
    v22 = v21;
    v23 = [v20 attachmentContext];
    [v23 removeAllAttachments];

    v24 = v104;
    TTRReminderEditor.add(attachmentInfos:)(v104[3]);
    v25 = [v20 notesAsString];
    v26 = v107;
    v27 = v105;
    v28 = v24;
    if (!v25)
    {
      goto LABEL_10;
    }

    v29 = v25;
    v30 = sub_21DBFA16C();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      if (v30 != sub_21D892940() || v32 != v34)
      {
        v48 = sub_21DBFC64C();

        if ((v48 & 1) == 0)
        {
LABEL_17:
          v46 = type metadata accessor for TTRExtensionContextExtractorResult();
          TTRReminderEditor.edit(userActivity:)(*(&v28->_rawValue + *(v46 + 40)));
          v47 = 0;
          if (*(&v28[1]._rawValue + *(v46 + 48)) >> 60 != 15)
          {
            v47 = sub_21DBF54FC();
          }

          [v20 setSiriFoundInAppsData_];

          goto LABEL_34;
        }

LABEL_10:
        v101 = v22;
        v35 = v27;
        v36 = v26;
        v37 = v20;
        v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
        sub_21DBF8E0C();
        v42 = sub_21DBFA12C();

        v43 = [v41 initWithString_];

        v44 = sub_21D9C7928(v43);
        if (v44)
        {
          v45 = v44;
          swift_retain_n();
          sub_21D182E74(sub_21D233058, v45);
        }

        v20 = v37;
        v26 = v36;
        v27 = v35;
        v22 = v101;
        goto LABEL_17;
      }
    }

    goto LABEL_10;
  }

  v98 = v19;
  v101 = v1;
  v38 = type metadata accessor for TTRExtensionContextExtractorResult();
  v28 = v104;
  v39 = *(&v104->_rawValue + *(v38 + 40));
  v22 = v39;
  if (!v39)
  {
    rawValue = v104[3]._rawValue;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0);
    sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0);
    v40 = v15;
    sub_21DBFA48C();

    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE5EA20);
      v22 = 0;
    }

    else
    {
      v49 = v98;
      (*(v16 + 32))(v98, v14, v40);
      v50 = objc_allocWithZone(MEMORY[0x277D448F0]);
      v51 = sub_21DBF53FC();
      v22 = [v50 initWithUniversalLink_];

      (*(v16 + 8))(v49, v40);
    }
  }

  v52 = v39;
  TTRReminderEditor.edit(userActivity:)(v22);
  v53 = [v20 notesAsString];
  v26 = v107;
  v27 = v105;
  if (v53)
  {
    v54 = v53;
    v55 = sub_21DBFA16C();
    v57 = v56;

    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (!v58)
    {
      goto LABEL_30;
    }

    v59 = v28[5]._rawValue;
    if (!v59)
    {

      goto LABEL_34;
    }

    if (v55 == v28[4]._rawValue && v59 == v57)
    {
LABEL_30:
    }

    else
    {
      v97 = sub_21DBFC64C();

      if ((v97 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  sub_21D892940();
  v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v61 = sub_21DBFA12C();

  v62 = [v60 initWithString_];

  v63 = sub_21D9C7928(v62);
  if (v63)
  {
    v64 = v63;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v64);
  }

LABEL_34:
  if (v28[1]._rawValue)
  {
    v65 = [v20 titleAsString];
    if (!v65)
    {
      goto LABEL_39;
    }

    v66 = v65;
    v67 = sub_21DBFA16C();
    v69 = v68;

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (!v70)
    {
LABEL_39:
      v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v72 = sub_21DBFA12C();
      v73 = [v71 initWithString_];

      v74 = sub_21D9CA3E0(v73, 0, 1);
      if (v74)
      {
        v75 = v74;
        swift_retain_n();
        sub_21D182E74(sub_21D23298C, v75);
      }
    }
  }

  v76 = type metadata accessor for TTRExtensionContextExtractorResult();
  v77 = v106;
  sub_21D0D3954(v28 + v76[8], v106, &qword_27CE58D60);
  if ((*(v27 + 48))(v77, 1, v26) == 1)
  {
    sub_21D0CF7E0(v77, &qword_27CE58D60);
  }

  else
  {
    v78 = v103;
    (*(v27 + 32))(v103, v77, v26);
    v79 = sub_21DBF4EDC();
    v80 = [v79 rem_isValidDateComponents];

    if (v80)
    {
      v81 = v78;
      v82 = [v20 dueDateComponents];
      if (v82)
      {
        v83 = v102;
        v84 = v82;
        sub_21DBF4EFC();

        (*(v27 + 8))(v81, v26);
        (*(v27 + 56))(v83, 0, 1, v26);
        sub_21D0CF7E0(v83, &qword_27CE58D60);
      }

      else
      {
        v85 = v26;
        v86 = *(v27 + 56);
        v87 = v102;
        v86(v102, 1, 1, v26);
        sub_21D0CF7E0(v87, &qword_27CE58D60);
        v88 = v99;
        (*(v27 + 16))(v99, v81, v26);
        v86(v88, 0, 1, v26);
        v89 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
        v90 = v100;
        (*(*(v89 - 8) + 56))(v100, 1, 1, v89);
        sub_21D9C50E0(v88, v90);
        sub_21D0CF7E0(v90, &unk_27CE60DA0);
        sub_21D0CF7E0(v88, &qword_27CE58D60);
        (*(v27 + 8))(v81, v85);
      }
    }

    else
    {
      (*(v27 + 8))(v78, v26);
    }
  }

  v91 = *(&v28->_rawValue + v76[9]);
  if (v91)
  {
    v92 = v28 + v76[13];
    if (v92[8])
    {
      v93 = 1;
    }

    else
    {
      v93 = *v92;
    }

    v94 = objc_allocWithZone(MEMORY[0x277D44580]);
    v95 = v91;
    v96 = [v94 initWithStructuredLocation:v95 proximity:v93];
    _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v96);
  }
}

uint64_t TTRExtensionContextExtractorResult.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRExtensionContextExtractorResult.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRExtensionContextExtractorResult.attachmentInfos.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TTRExtensionContextExtractorResult.notes.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRExtensionContextExtractorResult.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *TTRExtensionContextExtractorResult.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRExtensionContextExtractorResult() + 36));
  v2 = v1;
  return v1;
}

void TTRExtensionContextExtractorResult.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRExtensionContextExtractorResult() + 36);

  *(v1 + v3) = a1;
}

void *TTRExtensionContextExtractorResult.userActivity.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRExtensionContextExtractorResult() + 40));
  v2 = v1;
  return v1;
}

void TTRExtensionContextExtractorResult.userActivity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRExtensionContextExtractorResult() + 40);

  *(v1 + v3) = a1;
}

uint64_t TTRExtensionContextExtractorResult.extendedDetailOnlyViewRequested.setter(char a1)
{
  result = type metadata accessor for TTRExtensionContextExtractorResult();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t TTRExtensionContextExtractorResult.siriFoundInAppsData.getter()
{
  v1 = v0 + *(type metadata accessor for TTRExtensionContextExtractorResult() + 48);
  v2 = *v1;
  sub_21D5FA9F0(*v1, *(v1 + 8));
  return v2;
}

uint64_t TTRExtensionContextExtractorResult.siriFoundInAppsData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TTRExtensionContextExtractorResult() + 48);
  result = sub_21D1BAF38(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t TTRExtensionContextExtractorResult.locationProximity.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TTRExtensionContextExtractorResult();
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void *TTRExtensionContextExtractorResult.originalContentText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRExtensionContextExtractorResult() + 56));
  v2 = v1;
  return v1;
}

void TTRExtensionContextExtractorResult.originalContentText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRExtensionContextExtractorResult() + 56);

  *(v1 + v3) = a1;
}

uint64_t TTRExtensionContextExtractorResult.primaryURLAttachment.getter()
{
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0);
  sub_21DBF54CC();
  sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0);
  sub_21DBFA48C();
}

uint64_t type metadata accessor for TTRExtensionContextExtractorResult()
{
  result = qword_27CE632C0;
  if (!qword_27CE632C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8927A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAttachmentInfo();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D686BFC(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = sub_21DBF54CC();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    sub_21D5FBB20(v6, type metadata accessor for TTRAttachmentInfo);
    v10 = sub_21DBF54CC();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_21D892940()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = v0[5];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v0[4];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_21DBF8E0C();
    v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v4;
  }

  else
  {
LABEL_8:
    v7 = MEMORY[0x277D84F90];
  }

  v23 = v0[3];
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0);
  v11 = sub_21DBF54CC();
  sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0);
  sub_21DBFA48C();

  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5EA20);
  }

  else
  {
    v13 = sub_21DBF535C();
    v15 = v14;
    (*(v12 + 8))(v3, v11);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_21D210A84((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      v19 = &v7[16 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
    }

    else
    {
    }
  }

  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v20 = sub_21DBFA07C();

  return v20;
}

Swift::Void __swiftcall TTRReminderEditor.prepareToReapplyExtensionContextExtractorResultDueToAccountCapabilityChange()()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v27 - v10;
  v12 = *(v0 + 16);
  v13 = [v12 attachmentContext];
  [v13 removeAllAttachments];

  v14 = [v12 userActivity];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 userActivity];

    if (v16)
    {
      v17 = [v16 webpageURL];

      if (v17)
      {
        sub_21DBF546C();

        (*(v2 + 56))(v7, 0, 1, v1);
      }

      else
      {
        (*(v2 + 56))(v7, 1, 1, v1);
      }

      sub_21D57690C(v7, v11);
      if ((*(v2 + 48))(v11, 1, v1))
      {
        sub_21D0CF7E0(v11, &qword_27CE5EA20);
      }

      else
      {
        (*(v2 + 16))(v4, v11, v1);
        sub_21D0CF7E0(v11, &qword_27CE5EA20);
        v18 = sub_21DBF548C();
        v20 = v19;
        (*(v2 + 8))(v4, v1);
        if (v20)
        {
          v21 = [v12 notesAsString];
          if (v21)
          {
            v22 = v21;
            v23 = sub_21DBFA16C();
            v25 = v24;

            if (v23 == v18 && v20 == v25)
            {
            }

            else
            {
              v26 = sub_21DBFC64C();

              if ((v26 & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            [v12 setNotes_];
            goto LABEL_8;
          }
        }
      }
    }
  }

LABEL_8:
  [v12 setUserActivity_];
}

uint64_t sub_21D892FF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21DBF4DBC();
    if (v10)
    {
      v11 = sub_21DBF4DDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21DBF4DCC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21DBF4DBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21DBF4DDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21DBF4DCC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21D893224(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21D8933B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21D17B8A8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_21D892FF4(v13, a3, a4, &v12);
  v10 = v4;
  sub_21D17B8A8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_21D8933B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21DBF4DBC();
  v11 = result;
  if (result)
  {
    result = sub_21DBF4DDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21DBF4DCC();
  sub_21D892FF4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21D89346C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21D1BAF70(a3, a4);
          return sub_21D893224(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s15RemindersUICore34TTRExtensionContextExtractorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSERecipeCard();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632D8);
  MEMORY[0x28223BE20](v9);
  v80 = &v73 - v10;
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0);
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  if (v21)
  {
    if (!v22 || (*a1 != *a2 || v21 != v22) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || (sub_21D1D61AC(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 40);
  v24 = *(a2 + 40);
  if (v23)
  {
    if (!v24 || (*(a1 + 32) != *(a2 + 32) || v23 != v24) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v74 = v6;
  v75 = type metadata accessor for TTRExtensionContextExtractorResult();
  v25 = *(v75 + 32);
  v26 = *(v18 + 48);
  sub_21D0D3954(a1 + v25, v20, &qword_27CE58D60);
  sub_21D0D3954(a2 + v25, &v20[v26], &qword_27CE58D60);
  v76 = *(v12 + 48);
  if (v76(v20, 1, v11) == 1)
  {
    if (v76(&v20[v26], 1, v11) == 1)
    {
      sub_21D0CF7E0(v20, &qword_27CE58D60);
      goto LABEL_26;
    }

LABEL_22:
    v27 = &qword_27CE5D1A0;
    v28 = v20;
LABEL_23:
    sub_21D0CF7E0(v28, v27);
    return 0;
  }

  sub_21D0D3954(v20, v17, &qword_27CE58D60);
  if (v76(&v20[v26], 1, v11) == 1)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_22;
  }

  (*(v12 + 32))(v14, &v20[v26], v11);
  sub_21D895914();
  v30 = sub_21DBFA10C();
  v31 = *(v12 + 8);
  v31(v14, v11);
  v31(v17, v11);
  sub_21D0CF7E0(v20, &qword_27CE58D60);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v32 = v75;
  v33 = *(v75 + 36);
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17760);
    v36 = v35;
    v37 = v34;
    v38 = sub_21DBFB63C();

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v39 = v32[10];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40)
  {
    if (!v41)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_27CE5B258);
    v42 = v41;
    v43 = v40;
    v44 = sub_21DBFB63C();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  if (*(a1 + v32[11]) != *(a2 + v32[11]))
  {
    return 0;
  }

  v45 = v32[12];
  v47 = *(a1 + v45);
  v46 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v50 = *v48;
  v49 = v48[1];
  if (v46 >> 60 == 15)
  {
    if (v49 >> 60 == 15)
    {
      sub_21D5FA9F0(v47, v46);
      sub_21D5FA9F0(v50, v49);
      sub_21D1BAF38(v47, v46);
      goto LABEL_43;
    }

LABEL_41:
    sub_21D5FA9F0(v47, v46);
    sub_21D5FA9F0(v50, v49);
    sub_21D1BAF38(v47, v46);
    sub_21D1BAF38(v50, v49);
    return 0;
  }

  if (v49 >> 60 == 15)
  {
    goto LABEL_41;
  }

  sub_21D5FA9F0(v47, v46);
  sub_21D5FA9F0(v50, v49);
  v51 = sub_21D89346C(v47, v46, v50, v49);
  sub_21D1BAF38(v50, v49);
  sub_21D1BAF38(v47, v46);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v52 = v32[13];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = *(a2 + v52 + 8);
  if (v54)
  {
    if (!v56)
    {
      return 0;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  v57 = v32[14];
  v58 = *(a1 + v57);
  v59 = *(a2 + v57);
  if (v58)
  {
    if (!v59)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D177E0);
    v60 = v59;
    v61 = v58;
    v62 = sub_21DBFB63C();

    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v63 = v32[15];
  v64 = *(v9 + 48);
  v65 = v80;
  sub_21D0D3954(a1 + v63, v80, &qword_27CE5EDE0);
  sub_21D0D3954(a2 + v63, v65 + v64, &qword_27CE5EDE0);
  v66 = v79;
  v67 = *(v78 + 48);
  if (v67(v65, 1, v79) != 1)
  {
    sub_21D0D3954(v65, v77, &qword_27CE5EDE0);
    if (v67(v65 + v64, 1, v66) == 1)
    {
      sub_21D5FBB20(v77, type metadata accessor for TTRSERecipeCard);
      goto LABEL_59;
    }

    v68 = v80;
    v69 = v80 + v64;
    v70 = v74;
    sub_21D8958AC(v69, v74, type metadata accessor for TTRSERecipeCard);
    v71 = v77;
    v72 = static TTRSERecipeCard.== infix(_:_:)(v77, v70);
    sub_21D5FBB20(v70, type metadata accessor for TTRSERecipeCard);
    sub_21D5FBB20(v71, type metadata accessor for TTRSERecipeCard);
    sub_21D0CF7E0(v68, &qword_27CE5EDE0);
    return v72;
  }

  if (v67(v65 + v64, 1, v66) != 1)
  {
LABEL_59:
    v27 = &qword_27CE632D8;
    v28 = v80;
    goto LABEL_23;
  }

  sub_21D0CF7E0(v80, &qword_27CE5EDE0);
  return 1;
}

char *initializeBufferWithCopyOfBuffer for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v8;
    *(a1 + 40) = a2[5];
    v44 = a3[8];
    v9 = sub_21DBF509C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v11(a2 + v44, 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
      memcpy(&v4[v44], a2 + v44, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v44], a2 + v44, v9);
      (*(v10 + 56))(&v4[v44], 0, 1, v9);
    }

    v14 = a3[9];
    v15 = a3[10];
    v16 = *(a2 + v14);
    *&v4[v14] = v16;
    v17 = *(a2 + v15);
    *&v4[v15] = v17;
    v18 = a3[12];
    v4[a3[11]] = *(a2 + a3[11]);
    v19 = &v4[v18];
    v20 = (a2 + v18);
    v21 = *(a2 + v18 + 8);
    v22 = v16;
    v23 = v17;
    if (v21 >> 60 == 15)
    {
      *v19 = *v20;
    }

    else
    {
      v24 = *v20;
      sub_21D1BAF70(v24, v21);
      *v19 = v24;
      *(v19 + 1) = v21;
    }

    v25 = a3[13];
    v26 = a3[14];
    v27 = &v4[v25];
    v28 = a2 + v25;
    *v27 = *v28;
    v29 = *(a2 + v26);
    v27[8] = *(v28 + 8);
    *&v4[v26] = v29;
    v30 = a3[15];
    v31 = &v4[v30];
    v32 = (a2 + v30);
    v33 = type metadata accessor for TTRSERecipeCard();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = v29;
    if (v35(v32, 1, v33))
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
      memcpy(v31, v32, *(*(v37 - 8) + 64));
    }

    else
    {
      v38 = v32[1];
      *v31 = *v32;
      *(v31 + 1) = v38;
      v45 = *(v33 + 24);
      v39 = sub_21DBF56BC();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      sub_21DBF8E0C();
      if (v41(v32 + v45, 1, v39))
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
        memcpy(&v31[v45], v32 + v45, *(*(v42 - 8) + 64));
      }

      else
      {
        (*(v40 + 16))(&v31[v45], v32 + v45, v39);
        (*(v40 + 56))(&v31[v45], 0, 1, v39);
      }

      (*(v34 + 56))(v31, 0, 1, v33);
    }
  }

  return v4;
}

uint64_t destroy for TTRExtensionContextExtractorResult(uint64_t a1, int *a2)
{

  v4 = a2[8];
  v5 = sub_21DBF509C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = (a1 + a2[12]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_21D17B8A8(*v7, v8);
  }

  v9 = a1 + a2[15];
  v10 = type metadata accessor for TTRSERecipeCard();
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  if (!result)
  {

    v12 = *(v10 + 24);
    v13 = sub_21DBF56BC();
    v15 = *(v13 - 8);
    result = (*(v15 + 48))(v9 + v12, 1, v13);
    if (!result)
    {
      v14 = *(v15 + 8);

      return v14(v9 + v12, v13);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  v42 = a3[8];
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v10(a2 + v42, 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
    memcpy((a1 + v42), (a2 + v42), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v42, a2 + v42, v8);
    (*(v9 + 56))(a1 + v42, 0, 1, v8);
  }

  v12 = a3[9];
  v13 = a3[10];
  v14 = *(a2 + v12);
  *(a1 + v12) = v14;
  v15 = *(a2 + v13);
  *(a1 + v13) = v15;
  v16 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v17 = a1 + v16;
  v18 = (a2 + v16);
  v19 = *(a2 + v16 + 8);
  v20 = v14;
  v21 = v15;
  if (v19 >> 60 == 15)
  {
    *v17 = *v18;
  }

  else
  {
    v22 = *v18;
    sub_21D1BAF70(v22, v19);
    *v17 = v22;
    *(v17 + 8) = v19;
  }

  v23 = a3[13];
  v24 = a3[14];
  v25 = a1 + v23;
  v26 = a2 + v23;
  *v25 = *v26;
  v27 = *(a2 + v24);
  *(v25 + 8) = *(v26 + 8);
  *(a1 + v24) = v27;
  v28 = a3[15];
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v31 = type metadata accessor for TTRSERecipeCard();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v27;
  if (v33(v30, 1, v31))
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
    memcpy(v29, v30, *(*(v35 - 8) + 64));
  }

  else
  {
    v36 = v30[1];
    *v29 = *v30;
    v29[1] = v36;
    v43 = *(v31 + 24);
    v37 = sub_21DBF56BC();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    sub_21DBF8E0C();
    if (v39(v30 + v43, 1, v37))
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(v29 + v43, v30 + v43, *(*(v40 - 8) + 64));
    }

    else
    {
      (*(v38 + 16))(v29 + v43, v30 + v43, v37);
      (*(v38 + 56))(v29 + v43, 0, 1, v37);
    }

    (*(v32 + 56))(v29, 0, 1, v31);
  }

  return a1;
}

uint64_t assignWithCopy for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  v6 = a3[8];
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(a1 + v6, a2 + v6, v7);
      (*(v8 + 56))(a1 + v6, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(a1 + v6, v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(a1 + v6, a2 + v6, v7);
LABEL_7:
  v13 = a3[9];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  *(a1 + v13) = v15;
  v16 = v15;

  v17 = a3[10];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  *(a1 + v17) = v19;
  v20 = v19;

  *(a1 + a3[11]) = *(a2 + a3[11]);
  v21 = a3[12];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = *(a2 + v21 + 8);
  if (*(a1 + v21 + 8) >> 60 == 15)
  {
    if (v24 >> 60 != 15)
    {
      v25 = *v23;
      sub_21D1BAF70(v25, v24);
      *v22 = v25;
      v22[1] = v24;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v24 >> 60 == 15)
  {
    sub_21D894DF8(v22);
LABEL_12:
    *v22 = *v23;
    goto LABEL_14;
  }

  v26 = *v23;
  sub_21D1BAF70(v26, v24);
  v27 = *v22;
  v28 = v22[1];
  *v22 = v26;
  v22[1] = v24;
  sub_21D17B8A8(v27, v28);
LABEL_14:
  v29 = a3[13];
  v30 = a1 + v29;
  v31 = (a2 + v29);
  v32 = *v31;
  *(v30 + 8) = *(v31 + 8);
  *v30 = v32;
  v33 = a3[14];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  *(a1 + v33) = v35;
  v36 = v35;

  v37 = a3[15];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = type metadata accessor for TTRSERecipeCard();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v38, 1, v40);
  v44 = v42(v39, 1, v40);
  if (!v43)
  {
    if (!v44)
    {
      *v38 = *v39;
      *(v38 + 1) = *(v39 + 1);
      sub_21DBF8E0C();

      v52 = *(v40 + 24);
      v53 = sub_21DBF56BC();
      v54 = *(v53 - 8);
      v55 = *(v54 + 48);
      v56 = v55(&v38[v52], 1, v53);
      v57 = v55(&v39[v52], 1, v53);
      if (v56)
      {
        if (!v57)
        {
          (*(v54 + 16))(&v38[v52], &v39[v52], v53);
          (*(v54 + 56))(&v38[v52], 0, 1, v53);
          return a1;
        }
      }

      else
      {
        if (!v57)
        {
          (*(v54 + 24))(&v38[v52], &v39[v52], v53);
          return a1;
        }

        (*(v54 + 8))(&v38[v52], v53);
      }

      v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370) - 8) + 64);
      v50 = &v38[v52];
      v51 = &v39[v52];
      goto LABEL_21;
    }

    sub_21D5FBB20(v38, type metadata accessor for TTRSERecipeCard);
LABEL_20:
    v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0) - 8) + 64);
    v50 = v38;
    v51 = v39;
LABEL_21:
    memcpy(v50, v51, v49);
    return a1;
  }

  if (v44)
  {
    goto LABEL_20;
  }

  *v38 = *v39;
  *(v38 + 1) = *(v39 + 1);
  v59 = *(v40 + 24);
  v45 = sub_21DBF56BC();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  sub_21DBF8E0C();
  if (v47(&v39[v59], 1, v45))
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy(&v38[v59], &v39[v59], *(*(v48 - 8) + 64));
  }

  else
  {
    (*(v46 + 16))(&v38[v59], &v39[v59], v45);
    (*(v46 + 56))(&v38[v59], 0, 1, v45);
  }

  (*(v41 + 56))(v38, 0, 1, v40);
  return a1;
}

uint64_t initializeWithTake for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[8];
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[13];
  v13 = a3[14];
  v14 = a1 + v12;
  v15 = a2 + v12;
  *v14 = *v15;
  v16 = *(a2 + v13);
  *(v14 + 8) = *(v15 + 8);
  v17 = a3[15];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  *(a1 + v13) = v16;
  v20 = type metadata accessor for TTRSERecipeCard();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    *v18 = *v19;
    v23 = *(v20 + 24);
    v24 = sub_21DBF56BC();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v19 + v23, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
      memcpy(v18 + v23, v19 + v23, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v25 + 32))(v18 + v23, v19 + v23, v24);
      (*(v25 + 56))(v18 + v23, 0, 1, v24);
    }

    (*(v21 + 56))(v18, 0, 1, v20);
  }

  return a1;
}

uint64_t assignWithTake for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = a3[8];
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(a1 + v8, a2 + v8, v9);
      (*(v10 + 56))(a1 + v8, 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(a1 + v8, v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
    memcpy((a1 + v8), (a2 + v8), *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 40))(a1 + v8, a2 + v8, v9);
LABEL_7:
  v15 = a3[9];
  v16 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v17 = a3[10];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v19 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(a1 + v19 + 8);
  if (v22 >> 60 == 15)
  {
LABEL_10:
    *v20 = *v21;
    goto LABEL_12;
  }

  v23 = *(v21 + 8);
  if (v23 >> 60 == 15)
  {
    sub_21D894DF8(v20);
    goto LABEL_10;
  }

  v24 = *v20;
  *v20 = *v21;
  *(v20 + 8) = v23;
  sub_21D17B8A8(v24, v22);
LABEL_12:
  v25 = a3[13];
  v26 = a3[14];
  v27 = a1 + v25;
  v28 = a2 + v25;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v30 = a3[15];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = type metadata accessor for TTRSERecipeCard();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v35(v31, 1, v33);
  v37 = v35(v32, 1, v33);
  if (!v36)
  {
    if (!v37)
    {
      *v31 = *v32;
      *(v31 + 1) = *(v32 + 1);

      v45 = *(v33 + 24);
      v46 = sub_21DBF56BC();
      v47 = *(v46 - 8);
      v48 = *(v47 + 48);
      v49 = v48(&v31[v45], 1, v46);
      v50 = v48(&v32[v45], 1, v46);
      if (v49)
      {
        if (!v50)
        {
          (*(v47 + 32))(&v31[v45], &v32[v45], v46);
          (*(v47 + 56))(&v31[v45], 0, 1, v46);
          return a1;
        }
      }

      else
      {
        if (!v50)
        {
          (*(v47 + 40))(&v31[v45], &v32[v45], v46);
          return a1;
        }

        (*(v47 + 8))(&v31[v45], v46);
      }

      v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370) - 8) + 64);
      v43 = &v31[v45];
      v44 = &v32[v45];
      goto LABEL_19;
    }

    sub_21D5FBB20(v31, type metadata accessor for TTRSERecipeCard);
LABEL_18:
    v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0) - 8) + 64);
    v43 = v31;
    v44 = v32;
LABEL_19:
    memcpy(v43, v44, v42);
    return a1;
  }

  if (v37)
  {
    goto LABEL_18;
  }

  *v31 = *v32;
  v38 = *(v33 + 24);
  v39 = sub_21DBF56BC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&v32[v38], 1, v39))
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    memcpy(&v31[v38], &v32[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 32))(&v31[v38], &v32[v38], v39);
    (*(v40 + 56))(&v31[v38], 0, 1, v39);
  }

  (*(v34 + 56))(v31, 0, 1, v33);
  return a1;
}

void sub_21D895710()
{
  sub_21D895858(319, &qword_27CE58D58, MEMORY[0x277CC8990]);
  if (v0 <= 0x3F)
  {
    sub_21D895858(319, &qword_27CE632D0, type metadata accessor for TTRSERecipeCard);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_21D895858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D8958AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D895914()
{
  result = qword_27CE5D1A8;
  if (!qword_27CE5D1A8)
  {
    sub_21DBF509C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5D1A8);
  }

  return result;
}

uint64_t sub_21D8959D8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E622C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D895A6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressStateChangeHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressStateChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t sub_21D895C1C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D895CB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_21D0D0E88(v5);
}

double TTRRemindersListAutoCategorizationActivityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

double TTRRemindersListAutoCategorizationActivityMonitor.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

void TTRRemindersListAutoCategorizationActivityMonitor.startMonitoringAutoCategorizationActivityIfNeeded(forListID:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v32 - v6;
  v7 = sub_21DBFBA3C();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603C8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632E0);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v33 = v32 - v15;
  v16 = v1[8];
  if (!v16 || (sub_21D0D8CF0(0, &qword_280D17880), v17 = v16, v18 = a1, v19 = sub_21DBFB63C(), v17, v18, (v19 & 1) == 0))
  {
    v32[1] = v4;
    TTRRemindersListAutoCategorizationActivityMonitor.stopMonitoringAutoCategorizationActivity()();
    v20 = v2[8];
    v2[8] = a1;

    v21 = qword_27CE56C10;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = qword_27CE603B8;
    TTRAutoCategorizationActivityMonitor.startMonitoringIfNeeded()();
    v40 = *(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivitySubject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603D8);
    sub_21D0D0F1C(&qword_27CE603E0, &qword_27CE603D8);
    sub_21D0D65DC(&qword_27CE603E8, &qword_27CE603F0);
    sub_21DBF93AC();
    sub_21D0D0F1C(&qword_27CE603F8, &qword_27CE603C8);
    v24 = sub_21DBF920C();
    v32[0] = v24;
    (*(v11 + 8))(v13, v10);
    v40 = v24;
    v25 = v9;
    sub_21DBFBA2C();
    v26 = [objc_opt_self() mainRunLoop];
    v39 = v26;
    v27 = sub_21DBFBA0C();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632E8);
    sub_21D0D8CF0(0, &qword_280D17650);
    sub_21D0D0F1C(&qword_27CE632F0, &qword_27CE632E8);
    sub_21D0D65DC(&qword_280D17660, &qword_280D17650);
    v29 = v33;
    sub_21DBF937C();
    sub_21D60C7A8(v28);

    (*(v37 + 8))(v25, v38);

    sub_21D0D0F1C(&unk_27CE632F8, &qword_27CE632E0);
    v30 = v36;
    v31 = sub_21DBF91AC();
    (*(v35 + 8))(v29, v30);
    v2[9] = v31;
  }
}

Swift::Void __swiftcall TTRRemindersListAutoCategorizationActivityMonitor.stopMonitoringAutoCategorizationActivity()()
{
  if (*(v0 + 72))
  {

    sub_21DBF901C();
  }

  *(v0 + 72) = 0;

  v1 = *(v0 + 64);
  *(v0 + 64) = 0;

  swift_beginAccess();
  *(v0 + 16) = 0;
}

void sub_21D896554(void *a1)
{
  v2 = *(v1 + 64);
  if (v2)
  {
    v4 = v2;
    v5 = [a1 reminderIDsForListID_];
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
    v6 = sub_21DBFAAAC();

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = sub_21DBFBD7C();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    swift_beginAccess();
    if ((v7 != 0) != *(v1 + 16))
    {
      *(v1 + 16) = v7 != 0;
      swift_beginAccess();
      v8 = *(v1 + 32);
      if (v8)
      {

        v8(v9);
        sub_21D0D0E88(v8);
      }
    }

    swift_beginAccess();
    v10 = *(v1 + 24);
    sub_21DBF8E0C();
    v11 = sub_21D322414(v6, v10);

    if (v11)
    {
    }

    else
    {
      *(v1 + 24) = v6;

      swift_beginAccess();
      v12 = *(v1 + 48);
      if (v12)
      {

        v12(v13);
        sub_21D0D0E88(v12);
      }
    }
  }
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.deinit()
{

  sub_21D0D0E88(*(v0 + 32));
  sub_21D0D0E88(*(v0 + 48));

  return v0;
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.__deallocating_deinit()
{

  sub_21D0D0E88(*(v0 + 32));
  sub_21D0D0E88(*(v0 + 48));

  return swift_deallocClassInstance();
}

id TTRIUnsupportedTextDropHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIUnsupportedTextDropHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRIUnsupportedTextDropHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TTRIUnsupportedTextDropHandler.textDroppableView(_:proposalForDrop:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75BA8]);

  return [v0 initWithDropOperation_];
}

char *sub_21D8969D0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_21D0CE468();
    v3 = v0;
    v4 = sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63378);
    swift_allocObject();
    v1 = sub_21D1DD624(sub_21D89874C, v2, v4);
    *(v3 + 32) = v1;
  }

  return v1;
}

uint64_t sub_21D896AAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D896B1C(v1, v2);
  }

  return result;
}

uint64_t sub_21D896B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v45 - v5;
  v52 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v45 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v45 - v13;
  v14 = type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay(0);
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = *(a2 + 16);
  v53 = a1;
  v47 = v6;
  if (v20)
  {
    v21 = sub_21D9D6724(v20, 0);
    v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v48 = v21;
    sub_21D9D5FCC(&v58, v21 + v22, v20, a2);
    v24 = v23;
    sub_21DBF8E0C();
    result = sub_21D0CFAF8();
    if (v24 != v20)
    {
      goto LABEL_37;
    }

    a1 = v53;
    v6 = v47;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  v26 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 64);
  v30 = (v27 + 63) >> 6;
  v49 = (v6 + 48);
  result = sub_21DBF8E0C();
  v31 = 0;
  v32 = MEMORY[0x277D84F90];
LABEL_8:
  v33 = v54;
  v34 = v31;
  if (!v29)
  {
    goto LABEL_12;
  }

  do
  {
    while (1)
    {
      v31 = v34;
LABEL_15:
      sub_21D89867C(*(a1 + 56) + *(v55 + 72) * (__clz(__rbit64(v29)) | (v31 << 6)), v19, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      sub_21D105904(v19, v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v35 = *&v16[*(v56 + 20)];
      if ((v35 & 2) != 0)
      {
        sub_21D89867C(v16, v57, type metadata accessor for TTRRemindersListViewModel.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21D211A80(0, v32[2] + 1, 1, v32);
        }

        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          v32 = sub_21D211A80(v36 > 1, v37 + 1, 1, v32);
        }

        v32[2] = v37 + 1;
        sub_21D105904(v57, v32 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v37, type metadata accessor for TTRRemindersListViewModel.Item);
        a1 = v53;
        v33 = v54;
      }

      v29 &= v29 - 1;
      if (v35)
      {
        break;
      }

      result = sub_21D106EB8(v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v34 = v31;
      if (!v29)
      {
        goto LABEL_12;
      }
    }

    v38 = v50;
    sub_21D89867C(v16, v50, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRSECreateRemindersViewModel.Item.init(remindersListItem:)(v38, v33);
    if ((*v49)(v33, 1, v52) != 1)
    {
      v39 = v33;
      v40 = v45;
      sub_21D105904(v39, v45, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D89867C(v40, v46, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      v41 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_21D214F10(0, v41[2] + 1, 1, v41);
      }

      v43 = v41[2];
      v42 = v41[3];
      v48 = v41;
      if (v43 >= v42 >> 1)
      {
        v48 = sub_21D214F10(v42 > 1, v43 + 1, 1, v48);
      }

      sub_21D106EB8(v45, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D106EB8(v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v44 = v48;
      v48[2] = v43 + 1;
      result = sub_21D105904(v46, v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v43, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      goto LABEL_8;
    }

    sub_21D106EB8(v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
    result = sub_21D8986E4(v33);
    v34 = v31;
  }

  while (v29);
LABEL_12:
  while (1)
  {
    v31 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v31 >= v30)
    {

      if (v48[2])
      {
        v58 = v48;
        sub_21DBF906C();

        if (v32[2])
        {
          goto LABEL_32;
        }
      }

      else
      {

        if (v32[2])
        {
LABEL_32:
          v58 = v32;
          sub_21DBF906C();
        }
      }
    }

    v29 = *(v26 + 8 * v31);
    ++v34;
    if (v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21D897208()
{

  return swift_deallocClassInstance();
}

void sub_21D897284(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v33 = sub_21DBF9D2C();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21DBF9D5C();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PendingDisplay.Element(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *a1;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v16 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v37 = 0x800000021DC49D80;
    v17 = *(v15 + 72);
    v29 = v43;
    v28 = (v6 + 8);
    v27 = (v8 + 8);
    v39 = v10;
    v40 = v3;
    v38 = v14;
    v36 = v17;
    do
    {
      v18 = sub_21D8969D0();
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370) + 48);
      sub_21D89867C(v16, v12, type metadata accessor for TTRRemindersListViewModel.Item);
      *&v12[v19] = v14;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      LOBYTE(v19) = sub_21D897D30(v12);
      v20 = swift_endAccess();
      if (v19)
      {
        v21 = *(v18 + 2);
        aBlock[0] = *(v21 + 40);
        MEMORY[0x28223BE20](v20);
        *(&v27 - 4) = v21;
        *(&v27 - 3) = 0xD000000000000017;
        *(&v27 - 2) = v37;
        sub_21DBF5EFC();

        sub_21DBF814C();

        if (v41 == 1)
        {
          v35 = *(v21 + 32);
          v22 = swift_allocObject();
          swift_weakInit();
          v43[2] = sub_21D808210;
          v43[3] = v22;
          v34 = v22;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v43[0] = sub_21D0D74FC;
          v43[1] = &block_descriptor_106;
          v23 = _Block_copy(aBlock);

          v24 = v30;
          sub_21DBF9D4C();
          v41 = MEMORY[0x277D84F90];
          sub_21D0CD898();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
          sub_21D0CD8F0();
          v25 = v32;
          v26 = v33;
          sub_21DBFBCBC();
          MEMORY[0x223D438F0](0, v24, v25, v23);
          _Block_release(v23);
          (*v28)(v25, v26);
          (*v27)(v24, v31);
          sub_21D106EB8(v12, type metadata accessor for PendingDisplay.Element);
        }

        else
        {
          sub_21D106EB8(v12, type metadata accessor for PendingDisplay.Element);
        }

        v14 = v38;
        v17 = v36;
      }

      else
      {

        sub_21D106EB8(v12, type metadata accessor for PendingDisplay.Element);
      }

      v16 += v17;
      --v13;
    }

    while (v13);
  }
}

void sub_21D8977FC(uint64_t a1)
{
  v2 = v1;
  v31 = sub_21DBF9D2C();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21DBF9D5C();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PendingDisplay.Element(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(type metadata accessor for TTRSECreateRemindersViewModel.Item(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    v34 = 0x800000021DC49D80;
    v26 = (v4 + 8);
    v27 = v40;
    v25 = (v6 + 8);
    v36 = v8;
    v37 = v2;
    v35 = v14;
    do
    {
      v15 = sub_21D8969D0();
      sub_21D89867C(v13, v10, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v16 = sub_21D897D30(v10);
      v17 = swift_endAccess();
      if (v16)
      {
        v18 = *(v15 + 2);
        aBlock[0] = *(v18 + 40);
        MEMORY[0x28223BE20](v17);
        *(&v24 - 4) = v18;
        *(&v24 - 3) = 0xD000000000000017;
        *(&v24 - 2) = v34;
        sub_21DBF5EFC();

        sub_21DBF814C();

        if (v38 == 1)
        {
          v33 = *(v18 + 32);
          v19 = swift_allocObject();
          swift_weakInit();
          v40[2] = sub_21D8A8764;
          v40[3] = v19;
          v32 = v19;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v40[0] = sub_21D0D74FC;
          v40[1] = &block_descriptor_13_5;
          v20 = _Block_copy(aBlock);

          v21 = v28;
          sub_21DBF9D4C();
          v38 = MEMORY[0x277D84F90];
          sub_21D0CD898();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
          sub_21D0CD8F0();
          v22 = v30;
          v23 = v31;
          sub_21DBFBCBC();
          MEMORY[0x223D438F0](0, v21, v22, v20);
          _Block_release(v20);
          (*v26)(v22, v23);
          (*v25)(v21, v29);
          sub_21D106EB8(v10, type metadata accessor for PendingDisplay.Element);
        }

        else
        {
          sub_21D106EB8(v10, type metadata accessor for PendingDisplay.Element);
        }

        v14 = v35;
      }

      else
      {

        sub_21D106EB8(v10, type metadata accessor for PendingDisplay.Element);
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_21D897D30(uint64_t a1)
{
  v82 = a1;
  v1 = type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay(0);
  v2 = *(v1 - 8);
  v80 = v1;
  v81 = v2;
  MEMORY[0x28223BE20](v1);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v73 - v5;
  MEMORY[0x28223BE20](v6);
  v75 = &v73 - v7;
  v73 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v73);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v73 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - v20;
  v22 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  v28 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PendingDisplay.Element(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D89867C(v82, v34, type metadata accessor for PendingDisplay.Element);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D105904(v34, v31, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter(v27);
    v48 = v83[1];
    if (*(v48 + 16))
    {
      v49 = sub_21D17E2AC(v27);
      if (v50)
      {
        sub_21D89867C(*(v48 + 56) + *(v29 + 72) * v49, v21, type metadata accessor for TTRSECreateRemindersViewModel.Item);
        (*(v29 + 56))(v21, 0, 1, v28);
        sub_21D106EB8(v27, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        sub_21D106EB8(v31, type metadata accessor for TTRSECreateRemindersViewModel.Item);
        sub_21D8986E4(v21);
        return 0;
      }
    }

    v65 = *(v29 + 56);
    v65(v21, 1, 1, v28);
    sub_21D8986E4(v21);
    sub_21D89867C(v27, v24, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v66 = v78;
    sub_21D89867C(v31, v78, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    v65(v66, 0, 1, v28);
    sub_21D17C66C(v66, v24);
    sub_21D106EB8(v27, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v67 = type metadata accessor for TTRSECreateRemindersViewModel.Item;
    v68 = v31;
    goto LABEL_19;
  }

  v35 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370) + 48)];
  sub_21D105904(v34, v16, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v11);
  v37 = v83;
  v38 = *v83;
  v40 = v80;
  v39 = v81;
  v41 = v11;
  if (*(*v83 + 16))
  {
    v42 = sub_21D181E00(v11, v36);
    if (v43)
    {
      v44 = v74;
      sub_21D89867C(*(v38 + 56) + *(v39 + 72) * v42, v74, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v45 = v75;
      sub_21D105904(v44, v75, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v46 = *(v45 + *(v40 + 20));
      sub_21D106EB8(v45, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      if ((v35 & ~v46) == 0)
      {
        sub_21D106EB8(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106EB8(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        return 0;
      }
    }
  }

  v51 = v16;
  v52 = v16;
  v53 = v79;
  sub_21D89867C(v52, v79, type metadata accessor for TTRRemindersListViewModel.Item);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v37;
  v55 = v84;
  v58 = sub_21D181E00(v41, v56);
  v59 = v55[2];
  v60 = (v57 & 1) == 0;
  v61 = v59 + v60;
  if (__OFADD__(v59, v60))
  {
    __break(1u);
LABEL_22:
    sub_21D2209B8();
    v55 = v84;
    goto LABEL_15;
  }

  LOBYTE(v39) = v57;
  if (v55[3] < v61)
  {
    sub_21D2164E4(v61, isUniquelyReferenced_nonNull_native);
    v55 = v84;
    v63 = sub_21D181E00(v41, v62);
    if ((v39 & 1) != (v64 & 1))
    {
      sub_21D106EB8(v53, type metadata accessor for TTRRemindersListViewModel.Item);
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }

    v58 = v63;
    goto LABEL_15;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v69 = v51;
  *v37 = v55;
  if (v39)
  {
    sub_21D106EB8(v53, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  else
  {
    v70 = v77;
    sub_21D89867C(v53, v77, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v70 + *(v40 + 20)) = 0;
    sub_21D106EB8(v53, type metadata accessor for TTRRemindersListViewModel.Item);
    v71 = v76;
    sub_21D89867C(v41, v76, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D332CD4(v58, v71, v70, v55);
  }

  v72 = v55[7] + *(v81 + 72) * v58;
  *(v72 + *(v40 + 20)) |= v35;
  sub_21D106EB8(v41, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v67 = type metadata accessor for TTRRemindersListViewModel.Item;
  v68 = v69;
LABEL_19:
  sub_21D106EB8(v68, v67);
  return 1;
}

uint64_t sub_21D898594@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

void sub_21D8985F8(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
}

uint64_t sub_21D89860C()
{

  v2 = MEMORY[0x277D84F98];
  *v0 = MEMORY[0x277D84F98];
  v0[1] = v2;
  return result;
}

uint64_t sub_21D89867C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8986E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21D898754(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v103 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v103(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
        *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v95 = *(v3 + v15);
        *(a1 + v15) = v95;
        v96 = v95;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v97 = sub_21DBF563C();
      (*(*(v97 - 8) + 16))(a1 + v15, v3 + v15, v97);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v106 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *v3;
        *a1 = *v3;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = v3 + v57;
      v60 = *(v3 + v57 + 8);
      if (v60)
      {
        v104 = v3;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v66 = *(v59 + 6);
        v65 = *(v59 + 7);
        v99 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v99);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v66;
        *(v58 + 7) = v65;
        v58[64] = v99;
        *(v58 + 65) = *(v59 + 65);
        v67 = v59[120];
        if (v67 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v68 = *(v59 + 9);
          v100 = *(v59 + 10);
          v69 = *(v59 + 11);
          v70 = *(v59 + 12);
          v71 = *(v59 + 13);
          v72 = *(v59 + 14);
          v73 = v67 & 1;
          sub_21D0FB960(v68, v100, v69, v70, v71, v72, v67 & 1);
          *(v58 + 9) = v68;
          *(v58 + 10) = v100;
          *(v58 + 11) = v69;
          *(v58 + 12) = v70;
          *(v58 + 13) = v71;
          *(v58 + 14) = v72;
          v58[120] = v73;
        }

        v6 = v106;
        v58[121] = v59[121];
        v3 = v104;
        goto LABEL_98;
      }

LABEL_95:
      v74 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v74;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v75 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v75;
      v76 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v76;
LABEL_98:
      *(a1 + v56[6]) = *(v3 + v56[6]);
      *(a1 + v56[7]) = *(v3 + v56[7]);
      *(a1 + v56[8]) = *(v3 + v56[8]);
      *(a1 + v56[9]) = *(v3 + v56[9]);
      *(a1 + v56[10]) = *(v3 + v56[10]);
      v77 = v56[11];
      v78 = *(v3 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v107 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *v3;
      *a1 = *v3;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v56[5];
    v58 = a1 + v80;
    v59 = v3 + v80;
    v81 = *(v3 + v80 + 8);
    if (v81)
    {
      v105 = v3;
      *v58 = *v59;
      *(v58 + 1) = v81;
      v82 = *(v59 + 2);
      v83 = *(v59 + 3);
      v84 = *(v59 + 4);
      v85 = *(v59 + 5);
      v86 = *(v59 + 6);
      v87 = *(v59 + 7);
      v101 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v101);
      *(v58 + 2) = v82;
      *(v58 + 3) = v83;
      *(v58 + 4) = v84;
      *(v58 + 5) = v85;
      *(v58 + 6) = v86;
      *(v58 + 7) = v87;
      v58[64] = v101;
      *(v58 + 65) = *(v59 + 65);
      v88 = v59[120];
      if (v88 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v89 = *(v59 + 9);
        v102 = *(v59 + 10);
        v90 = *(v59 + 11);
        v91 = *(v59 + 12);
        v92 = *(v59 + 13);
        v93 = *(v59 + 14);
        v94 = v88 & 1;
        sub_21D0FB960(v89, v102, v90, v91, v92, v93, v88 & 1);
        *(v58 + 9) = v89;
        *(v58 + 10) = v102;
        *(v58 + 11) = v90;
        *(v58 + 12) = v91;
        *(v58 + 13) = v92;
        *(v58 + 14) = v93;
        v58[120] = v94;
      }

      v6 = v107;
      v58[121] = v59[121];
      v3 = v105;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

void **sub_21D899DC4(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v106 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        v102 = a2;
        v104 = a1;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        a3 = v106;
        v57[121] = v58[121];
        a2 = v102;
        a1 = v104;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v78 = v55[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v107 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = a1 + v81;
    v58 = a2 + v81;
    v82 = *(a2 + v81 + 8);
    if (v82)
    {
      v103 = a2;
      v105 = a1;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      a3 = v107;
      v57[121] = v58[121];
      a2 = v103;
      a1 = v105;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v39 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v39(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v41 = (a1 + v40);
      v42 = (a2 + v40);
      v43 = v42[1];
      if (v43)
      {
        *v41 = *v42;
        v41[1] = v43;
        v44 = v42[2];
        v41[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        *v41 = *v42;
        v41[2] = v42[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v47 = sub_21DBF563C();
        (*(*(v47 - 8) + 16))(a1, a2, v47);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}