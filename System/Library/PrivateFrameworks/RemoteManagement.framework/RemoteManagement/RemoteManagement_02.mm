uint64_t sub_1E11A33B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a6;
  v106 = a7;
  v114 = *MEMORY[0x1E69E9840];
  v13 = sub_1E11B2F30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00]();
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E11A4F5C(a1, a2, 0x7265434143746547, 0xE900000000000074, a3, a4, v17);
  if (v7)
  {
    goto LABEL_31;
  }

  v19 = v105;
  v18 = v106;
  v104 = v13;
  sub_1E11A6608(v17, 0, 0xF000000000000000, 0, 0, &v108);
  v20 = v111;
  v103 = v113;
  if (v113 >> 60 == 15)
  {
    v21 = v112;

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v22 = sub_1E11B2FF0();
    __swift_project_value_buffer(v22, qword_1ECEAA6F0);
    v23 = sub_1E11B2FD0();
    v24 = sub_1E11B3250();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v14;
    v27 = v104;
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E1168000, v23, v24, "GetCACert returned no data", v28, 2u);
      MEMORY[0x1E12F16F0](v28, -1, -1);
    }

    sub_1E11884DC();
    v8 = swift_allocError();
    *v29 = 0xD00000000000001ALL;
    *(v29 + 8) = 0x80000001E11B97F0;
    *(v29 + 16) = 3;
    swift_willThrow();
    v30 = v21;
    goto LABEL_30;
  }

  if (!v111)
  {
    v36 = v112;
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v42 = sub_1E11B2FF0();
    __swift_project_value_buffer(v42, qword_1ECEAA6F0);
    v43 = sub_1E11B2FD0();
    v44 = sub_1E11B3250();
    v45 = os_log_type_enabled(v43, v44);
    v26 = v14;
    v27 = v104;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1E1168000, v43, v44, "getCACertOperation: SCEP server did not return a content type", v46, 2u);
      MEMORY[0x1E12F16F0](v46, -1, -1);
    }

    v47 = 0x80000001E11B9810;
    sub_1E11884DC();
    v8 = swift_allocError();
    v49 = 0xD000000000000024;
    goto LABEL_29;
  }

  v101 = 0;
  v102 = v112;
  v31 = v110;
  if ((v110 != 0xD00000000000001ALL || 0x80000001E11B9930 != v111) && (sub_1E11B3500() & 1) == 0)
  {
    if (v31 == 0xD00000000000001DLL && 0x80000001E11B9840 == v20 || (sub_1E11B3500() & 1) != 0)
    {

      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v56 = sub_1E11B2FF0();
      __swift_project_value_buffer(v56, qword_1ECEAA6F0);
      v57 = sub_1E11B2FD0();
      v58 = sub_1E11B3230();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1E1168000, v57, v58, "getCACertOperation: returned CA+RA", v59, 2u);
        MEMORY[0x1E12F16F0](v59, -1, -1);
      }

      v60 = sub_1E11B2F50();
      v61 = SecCMSCertificatesOnlyMessageCopyCertificates();

      if (v61)
      {
        v107 = 0;
        v108.isa = 0;
        v62 = v61;
        v63 = 0;
        if (v19 >> 60 != 15)
        {
          v63 = sub_1E11B2F50();
        }

        v64 = SecSCEPValidateCACertMessage();

        if (v64)
        {
          v65 = v62;
          v66 = sub_1E11B2FD0();
          v67 = sub_1E11B3250();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 67240192;
            *(v68 + 4) = v64;
            _os_log_impl(&dword_1E1168000, v66, v67, "getCACertOperation: Failed validating CA Cert message, status: %{public}d", v68, 8u);
            MEMORY[0x1E12F16F0](v68, -1, -1);
          }

          sub_1E11884DC();
          v8 = swift_allocError();
          *v69 = 0xD000000000000021;
          *(v69 + 8) = 0x80000001E11B98C0;
          *(v69 + 16) = 3;
          swift_willThrow();
          sub_1E118843C(v102, v103);
        }

        else
        {
          isa = v108.isa;
          if (v108.isa)
          {
            v105 = v62;
            v83 = v107;
            if (v107)
            {
              v84 = sub_1E11B2FD0();
              v85 = sub_1E11B3230();
              if (os_log_type_enabled(v84, v85))
              {
                v86 = swift_slowAlloc();
                *v86 = 0;
                _os_log_impl(&dword_1E1168000, v84, v85, "getCACertOperation: returned separate signing and encryption certificates for RA.", v86, 2u);
                MEMORY[0x1E12F16F0](v86, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8150, &qword_1E11B5E38);
              v8 = swift_allocObject();
              *(v8 + 16) = xmmword_1E11B6F20;
              *(v8 + 32) = v83;
              v87 = (v8 + 40);
            }

            else
            {
              v97 = sub_1E11B2FD0();
              v98 = sub_1E11B3230();
              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                *v99 = 0;
                _os_log_impl(&dword_1E1168000, v97, v98, "getCACertOperation: returned an RA certificate.", v99, 2u);
                MEMORY[0x1E12F16F0](v99, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8150, &qword_1E11B5E38);
              v8 = swift_allocObject();
              *(v8 + 16) = xmmword_1E11B6F30;
              v87 = (v8 + 32);
            }

            *v87 = isa;
            v100 = isa;

            v39 = v100;
            goto LABEL_18;
          }

          v91 = sub_1E11B2FD0();
          v92 = sub_1E11B3250();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = v62;
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_1E1168000, v91, v92, "getCACertOperation: Failed validating RA Cert message, no RA certificate", v94, 2u);
            v95 = v94;
            v62 = v93;
            MEMORY[0x1E12F16F0](v95, -1, -1);
          }

          sub_1E11884DC();
          v8 = swift_allocError();
          *v96 = 0xD000000000000034;
          *(v96 + 8) = 0x80000001E11B98F0;
          *(v96 + 16) = 3;
          swift_willThrow();
          sub_1E118843C(v102, v103);
        }

LABEL_62:
        (*(v14 + 8))(v17, v104);
        goto LABEL_31;
      }

      v70 = sub_1E11B2FD0();
      v71 = sub_1E11B3250();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1E1168000, v70, v71, "getCACertOperation: Failed converting CA+RA data to certificates", v72, 2u);
        MEMORY[0x1E12F16F0](v72, -1, -1);
      }

      sub_1E11884DC();
      v8 = swift_allocError();
      *v73 = 0xD00000000000002CLL;
      *(v73 + 8) = 0x80000001E11B9890;
      *(v73 + 16) = 3;
      swift_willThrow();
      v74 = v102;
    }

    else
    {
      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v75 = sub_1E11B2FF0();
      __swift_project_value_buffer(v75, qword_1ECEAA6F0);

      v76 = sub_1E11B2FD0();
      v77 = sub_1E11B3250();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v108.isa = v79;
        *v78 = 136446210;
        *(v78 + 4) = sub_1E1183EF8(v31, v20, &v108);
        _os_log_impl(&dword_1E1168000, v76, v77, "getCACertOperation: SCEP server returned wrong content type %{public}s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        v80 = v79;
        v81 = v102;
        MEMORY[0x1E12F16F0](v80, -1, -1);
        MEMORY[0x1E12F16F0](v78, -1, -1);
      }

      else
      {

        v81 = v102;
      }

      v108.isa = 0;
      v109 = 0xE000000000000000;
      sub_1E11B33F0();

      v108.isa = 0xD000000000000024;
      v109 = 0x80000001E11B9860;
      MEMORY[0x1E12F06F0](v31, v20);

      v88 = v108.isa;
      v89 = v109;
      sub_1E11884DC();
      v8 = swift_allocError();
      *v90 = v88;
      *(v90 + 8) = v89;
      *(v90 + 16) = 3;
      swift_willThrow();
      v74 = v81;
    }

    sub_1E118843C(v74, v103);
    goto LABEL_62;
  }

  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v32 = sub_1E11B2FF0();
  __swift_project_value_buffer(v32, qword_1ECEAA6F0);
  v33 = sub_1E11B2FD0();
  v34 = sub_1E11B3230();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1E1168000, v33, v34, "getCACertOperation: returned CA", v35, 2u);
    MEMORY[0x1E12F16F0](v35, -1, -1);
  }

  v36 = v102;
  v37 = sub_1E11B2F50();
  v38 = SecCertificateCreateWithData(0, v37);

  if (!v38)
  {
    v50 = sub_1E11B2FD0();
    v51 = sub_1E11B3250();
    v52 = os_log_type_enabled(v50, v51);
    v26 = v14;
    v27 = v104;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1E1168000, v50, v51, "getCACertOperation: Failed converting CA data to certificate", v53, 2u);
      MEMORY[0x1E12F16F0](v53, -1, -1);
    }

    v47 = 0x80000001E11B9950;
    sub_1E11884DC();
    v8 = swift_allocError();
    v49 = 0xD000000000000028;
LABEL_29:
    *v48 = v49;
    *(v48 + 8) = v47;
    *(v48 + 16) = 3;
    swift_willThrow();
    v30 = v36;
LABEL_30:
    sub_1E118843C(v30, v103);
    (*(v26 + 8))(v17, v27);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8150, &qword_1E11B5E38);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E11B6F30;
  *(v8 + 32) = v38;
  v39 = v38;
LABEL_18:
  v40 = v39;
  v41 = v101;
  sub_1E11A71B0(v40, v18);
  (*(v14 + 8))(v17, v104);
  sub_1E118843C(v102, v103);
  if (v41)
  {
  }

LABEL_31:
  v54 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1E11A418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v8 = sub_1E11B2DA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (MEMORY[0x1EEE9AC00])();
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_1E11B3100() - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(sub_1E11B2F30() - 8) + 64);
  v17 = (MEMORY[0x1EEE9AC00])();
  v21 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    v22 = v19;
LABEL_3:
    v56.isa = 0xD000000000000010;
    v57 = 0x80000001E11B97D0;
    MEMORY[0x1EEE9AC00](v17);
    v51[-2] = &v56;

    v23 = sub_1E11A655C(sub_1E11A7194, &v51[-4], v22);
    v24 = v23;
    v56.isa = 5457217;
    v57 = 0xE300000000000000;
    MEMORY[0x1EEE9AC00](v23);
    v51[-2] = &v56;
    v25 = sub_1E11A655C(sub_1E11A8E90, &v51[-4], v22);
    v26 = v25;
    v56.isa = 861095236;
    v57 = 0xE400000000000000;
    MEMORY[0x1EEE9AC00](v25);
    v51[-2] = &v56;
    v27 = sub_1E11A655C(sub_1E11A8E90, &v51[-4], v22);
    v28 = v27;
    v56.isa = 0x3231352D414853;
    v57 = 0xE700000000000000;
    MEMORY[0x1EEE9AC00](v27);
    v51[-2] = &v56;
    v29 = sub_1E11A655C(sub_1E11A8E90, &v51[-4], v22);
    v30 = v29;
    v56.isa = 0x3635322D414853;
    v57 = 0xE700000000000000;
    MEMORY[0x1EEE9AC00](v29);
    v51[-2] = &v56;
    v31 = sub_1E11A655C(sub_1E11A8E90, &v51[-4], v22);
    v32 = v31;
    v56.isa = 0x312D414853;
    v57 = 0xE500000000000000;
    MEMORY[0x1EEE9AC00](v31);
    v51[-2] = &v56;
    v33 = sub_1E11A655C(sub_1E11A8E90, &v51[-4], v22);

    if (v33)
    {
      v34 = 0x10000000000;
    }

    else
    {
      v34 = 0;
    }

    v35 = 0x100000000;
    if ((v32 & 1) == 0)
    {
      v35 = 0;
    }

    v36 = 0x1000000;
    if ((v30 & 1) == 0)
    {
      v36 = 0;
    }

    v37 = 0x10000;
    if ((v28 & 1) == 0)
    {
      v37 = 0;
    }

    v38 = 256;
    if ((v26 & 1) == 0)
    {
      v38 = 0;
    }

    v39 = v24 & 1;
    return v35 | v36 | v34 | v37 | v38 | v39;
  }

  v51[1] = v15;
  v52 = v12;
  v53 = v9;
  v54 = v20;
  v51[0] = 0;
  v55 = v17;
  result = sub_1E11A4F5C(a1, a2, 0x7061434143746547, 0xE900000000000073, a3, v60, v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v4)
  {
    sub_1E11A6608(v21, 0, 0xF000000000000000, 0, 0, &v56);
    v41 = v58;
    v42 = v59;

    if (v42 >> 60 == 15)
    {
      goto LABEL_29;
    }

    v43 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      v44 = v8;
      v45 = v52;
      v46 = v53;
      if (v43 != 2)
      {
        goto LABEL_28;
      }

      v47 = *(v41 + 16);
      v48 = *(v41 + 24);
    }

    else
    {
      v44 = v8;
      v45 = v52;
      if (!v43)
      {
        v46 = v53;
        if ((v42 & 0xFF000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        v56.isa = v41;
        v57 = v42;
        sub_1E11B30E0();
        sub_1E11A7140();
        v49 = sub_1E11B30D0();
        if (v50)
        {
          v56.isa = v49;
          v57 = v50;
          sub_1E11B2D90();
          sub_1E118C7E0();
          v22 = sub_1E11B3320();
          sub_1E118843C(v41, v42);
          (*(v46 + 8))(v45, v44);
          (*(v54 + 8))(v21, v55);

          goto LABEL_3;
        }

        (*(v54 + 8))(v21, v55);
        sub_1E118843C(v41, v42);
LABEL_30:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v34 = 0x10000000000;
        return v35 | v36 | v34 | v37 | v38 | v39;
      }

      v47 = v41;
      v48 = v41 >> 32;
      v46 = v53;
    }

    if (v47 != v48)
    {
      goto LABEL_31;
    }

LABEL_28:
    sub_1E118843C(v41, v42);
LABEL_29:
    (*(v54 + 8))(v21, v55);
    goto LABEL_30;
  }

  return result;
}

const __CFString *sub_1E11A47FC(char a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61[1] = a6;
  v62 = a4;
  v63 = a5;
  v64 = a3;
  v66[6] = *MEMORY[0x1E69E9840];
  v10 = sub_1E11B2F30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v15 = sub_1E11B2FF0();
  v61[2] = __swift_project_value_buffer(v15, qword_1ECEAA6F0);
  v16 = sub_1E11B2FD0();
  v17 = sub_1E11B3230();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a2;
    v19 = v14;
    v20 = v11;
    v21 = v10;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1E1168000, v16, v17, "sendPKIOperation: Making request for issuance.", v22, 2u);
    v23 = v22;
    v10 = v21;
    v11 = v20;
    v14 = v19;
    a2 = v18;
    v7 = v6;
    MEMORY[0x1E12F16F0](v23, -1, -1);
  }

  if (a1)
  {
    v24 = 0;
    v25 = 0;
    v26 = v64;
  }

  else
  {
    v26 = v64;
    v24 = sub_1E11B2F60();
    v25 = v27;
  }

  sub_1E11A4F5C(v62, v63, 0x617265704F494B50, 0xEC0000006E6F6974, v24, v25, v14);

  if (v7)
  {
    goto LABEL_19;
  }

  if (a1)
  {
    v28 = a2;
  }

  else
  {
    v28 = 0;
  }

  if (a1)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0xF000000000000000;
  }

  sub_1E11A6608(v14, v28, v29, 0xD000000000000019, 0x80000001E11B96B0, v66);
  v64 = v14;
  isa = v66[4].isa;
  v31 = v66[5].isa;

  if (v31 >> 60 == 15)
  {
    v32 = sub_1E11B2FD0();
    v33 = sub_1E11B3250();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1E1168000, v32, v33, "PKIOperation returned no data", v34, 2u);
      MEMORY[0x1E12F16F0](v34, -1, -1);
    }

    sub_1E11884DC();
    v7 = swift_allocError();
    *v35 = 0xD00000000000001DLL;
    *(v35 + 8) = 0x80000001E11B96D0;
    *(v35 + 16) = 3;
    swift_willThrow();
    sub_1E118843C(isa, v31);
    (*(v11 + 8))(v64, v10);
    goto LABEL_19;
  }

  v62 = v10;
  v63 = v11;
  v66[0].isa = 0;
  v38 = sub_1E11B2F50();
  v61[0] = isa;
  v39 = sub_1E11B2F50();
  type metadata accessor for SecCertificate(0);
  v40 = sub_1E11B31D0();
  v41 = SecSCEPVerifyReply();

  v42 = v66[0].isa;
  if (!v66[0].isa)
  {
    v43 = v62;
    v44 = v63;
    if (!v41)
    {
      sub_1E11884DC();
      v7 = swift_allocError();
      *v52 = 0xD00000000000001ALL;
      *(v52 + 8) = 0x80000001E11B96F0;
      *(v52 + 16) = 3;
      swift_willThrow();
      sub_1E118843C(v61[0], v31);
      (*(v44 + 8))(v64, v43);
      goto LABEL_19;
    }

    v42 = 0;
LABEL_28:

    (*(v44 + 8))(v64, v43);
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v65 = 0;
    v51 = v41;
    result = sub_1E11B31E0();
    v7 = v65;
    if (!v65)
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1E118843C(v61[0], v31);

LABEL_19:
    v36 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v43 = v62;
  v44 = v63;
  if (v41)
  {
    goto LABEL_28;
  }

  v45 = v66[0].isa;
  result = CFErrorGetDomain(v45);
  if (result)
  {
    v46 = result;
    v47 = sub_1E11B30A0();
    v49 = v48;

    if (v47 == 0x474E49444E4550 && v49 == 0xE700000000000000)
    {

      v50 = v63;
    }

    else
    {
      v53 = sub_1E11B3500();

      v50 = v63;
      if ((v53 & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    v54 = CFErrorCopyUserInfo(v45);

    if (v54)
    {
      v7 = v54;
      v55 = sub_1E11B2FD0();
      v56 = sub_1E11B3270();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1E1168000, v55, v56, "PKIOperation returned PENDING", v57, 2u);
        v50 = v63;
        MEMORY[0x1E12F16F0](v57, -1, -1);
      }

      sub_1E11884DC();
      swift_allocError();
      *v58 = v54;
      *(v58 + 8) = 0;
      *(v58 + 16) = 6;
      swift_willThrow();
      sub_1E118843C(v61[0], v31);

      goto LABEL_38;
    }

LABEL_37:
    type metadata accessor for CFError(0);
    sub_1E118B4C8();
    v7 = swift_allocError();
    *v59 = v45;
    sub_1E11884DC();
    swift_allocError();
    *v60 = v7;
    *(v60 + 8) = 0;
    *(v60 + 16) = 4;
    swift_willThrow();
    sub_1E118843C(v61[0], v31);

LABEL_38:
    (*(v50 + 8))(v64, v62);
    goto LABEL_19;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1E11A4F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a5;
  v61 = a6;
  v57 = a3;
  v58 = a4;
  v54 = a7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8268, &unk_1E11B6170) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v50 - v10;
  v56 = sub_1E11B2DC0();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85A0, &qword_1E11B6F78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v18 = &v50 - v17;
  v19 = sub_1E11B2E00();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00]();
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E11B2DF0();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1E118B520(v18, &qword_1ECEA85A0, &qword_1E11B6F78);
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v24 = sub_1E11B2FF0();
    __swift_project_value_buffer(v24, qword_1ECEAA6F0);
    v25 = sub_1E11B2FD0();
    v26 = sub_1E11B3250();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E1168000, v25, v26, "buildURL: Failed to parse base URL", v27, 2u);
      MEMORY[0x1E12F16F0](v27, -1, -1);
    }

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1E11B33F0();

    v59 = 0xD00000000000001ALL;
    v60 = 0x80000001E11B9670;
    MEMORY[0x1E12F06F0](a1, a2);
    v28 = v59;
    v29 = v60;
    sub_1E11884DC();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v52 = a1;
    v53 = a2;
    v50 = v20;
    v51 = v19;
    (*(v20 + 32))(v23, v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85A8, &qword_1E11B6F80);
    v32 = *(v12 + 72);
    v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1E11B6190;
    sub_1E11B2DB0();
    if (v61)
    {
      sub_1E11B2DB0();
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1E11A5858(v35 > 1, v36 + 1, 1, v34);
      }

      *(v34 + 16) = v36 + 1;
      (*(v12 + 32))(v34 + v33 + v36 * v32, v15, v56);
    }

    sub_1E11B2DD0();
    sub_1E11B2DE0();
    v37 = sub_1E11B2F30();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 48))(v11, 1, v37);
    v41 = v52;
    v40 = v53;
    v42 = v50;
    if (v39 == 1)
    {
      sub_1E118B520(v11, &qword_1ECEA8268, &unk_1E11B6170);
      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v43 = sub_1E11B2FF0();
      __swift_project_value_buffer(v43, qword_1ECEAA6F0);
      v44 = sub_1E11B2FD0();
      v45 = sub_1E11B3250();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1E1168000, v44, v45, "buildURL: Failed to build URL", v46, 2u);
        MEMORY[0x1E12F16F0](v46, -1, -1);
      }

      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1E11B33F0();

      v59 = 0xD000000000000015;
      v60 = 0x80000001E11B9690;
      MEMORY[0x1E12F06F0](v41, v40);
      v47 = v59;
      v48 = v60;
      sub_1E11884DC();
      swift_allocError();
      *v49 = v47;
      *(v49 + 8) = v48;
      *(v49 + 16) = 3;
      swift_willThrow();
      return (*(v42 + 8))(v23, v51);
    }

    else
    {
      (*(v50 + 8))(v23, v51);
      return (*(v38 + 32))(v54, v11, v37);
    }
  }
}

uint64_t sub_1E11A55E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  sub_1E11883D4(a1, a2);
  sub_1E118843C(v8, v9);
  return sub_1E11B32B0();
}

uint64_t sub_1E11A5660(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1E11B2F70();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1E118843C(v6, v11);
}

char *sub_1E11A574C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85C0, &unk_1E11B6FB0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1E11A5858(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85A8, &qword_1E11B6F80);
  v10 = *(sub_1E11B2DC0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E11B2DC0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

_OWORD *sub_1E11A5A30(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E11844A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E118672C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E1185120(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1E11844A0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1E11B3520();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1E1189390(a1, v23);
  }

  else
  {
    sub_1E11A63B4(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1E11A5CD4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(void))
{
  v12 = v7;
  v16 = *v7;
  result = a4(a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 < v22 || (a3 & 1) != 0)
    {
      a6(v22, a3 & 1);
      v25 = *v12;
      result = a4(a2);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_16:
        a7(0);
        result = sub_1E11B3520();
        __break(1u);
        return result;
      }
    }

    else
    {
      a7 = result;
      a5();
      result = a7;
    }
  }

  v27 = *v12;
  if (v23)
  {
    *(v27[7] + 8 * result) = a1;
    return result;
  }

  v27[(result >> 6) + 8] |= 1 << result;
  *(v27[6] + 8 * result) = a2;
  *(v27[7] + 8 * result) = a1;
  v28 = v27[2];
  v21 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27[2] = v29;
}

uint64_t sub_1E11A5E84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1E11844A0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1E11844A0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1E11B3520();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1E11A60A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1E11844A0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1E11844A0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1E11B3520();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1E11A6238(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E11844A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E1186484(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E11844A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E11B3520();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E1187208();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_1E11A63B4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1E1189390(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1E11A6420(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1E12F09A0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1E11B3440();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1E11A655C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1E11A6608(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, NSObject *a6@<X8>)
{
  v91 = a4;
  v90 = a6;
  v10 = sub_1E11B2F30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E11B2D20();
  v93 = *(v102 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x1EEE9AC00]();
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  sub_1E11B2CF0();
  sub_1E11B2CD0();
  sub_1E11883D4(a2, a3);
  sub_1E11B2D10();
  if (a5)
  {
    sub_1E11B2D00();
  }

  v18 = sub_1E11B2F10();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v22 = sub_1E11B2FF0();
    v23 = __swift_project_value_buffer(v22, qword_1ECEAA6F0);

    v24 = sub_1E11B2FD0();
    v25 = sub_1E11B3240();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1E1183EF8(v20, v21, &aBlock);
      _os_log_impl(&dword_1E1168000, v24, v25, "MKSCEPClient: performing synchronous URL request to host: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1E12F16F0](v27, -1, -1);
      MEMORY[0x1E12F16F0](v26, -1, -1);
    }

    v28 = [objc_opt_self() ephemeralSessionConfiguration];
    v29 = v92;
    sub_1E11A20EC();
    if (v29)
    {
      (*(v93 + 8))(v17, v102);

      return;
    }

    v87 = v23;
    v85 = v20;
    v38 = objc_opt_self();
    v91 = v28;
    v39 = [v38 sessionWithConfiguration_];
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E11B6F40;
    v86 = (v40 + 16);
    v41 = dispatch_semaphore_create(0);
    v42 = sub_1E11B2CE0();
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v41;
    v100 = sub_1E11A7120;
    v101 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = sub_1E11A5660;
    v99 = &block_descriptor_0;
    v44 = _Block_copy(&aBlock);
    v92 = v40;
    v45 = v39;

    v46 = v41;

    v89 = v45;
    v47 = [v45 dataTaskWithRequest:v42 completionHandler:v44];
    _Block_release(v44);

    v48 = v47;
    [v48 resume];
    sub_1E11B32A0();
    v49 = [v48 response];
    if (v49)
    {
      v50 = v49;
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      v52 = v51;
      if (v51)
      {
        v53 = [v51 statusCode];
        v88 = 0;
        goto LABEL_21;
      }

      v53 = 0;
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }

    v88 = 1;
LABEL_21:
    v54 = [v48 error];

    if (v54)
    {
      v86 = v52;

      v55 = v54;
      v56 = sub_1E11B2FD0();
      v57 = sub_1E11B3250();

      v90 = v56;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v87 = v48;
        v59 = v58;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        aBlock = v84;
        *v59 = 136446722;
        v60 = v53;
        v61 = v46;
        v62 = sub_1E1183EF8(v85, v21, &aBlock);

        *(v59 + 4) = v62;
        v46 = v61;
        *(v59 + 12) = 2050;
        if (v88)
        {
          v63 = 0;
        }

        else
        {
          v63 = v60;
        }

        *(v59 + 14) = v63;
        *(v59 + 22) = 2114;
        v64 = v55;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 24) = v65;
        v66 = v83;
        *v83 = v65;
        v67 = v90;
        _os_log_impl(&dword_1E1168000, v90, v57, "MKSCEPClient: URL request to host %{public}s failed. HTTP status code: %{public}ld Error: %{public}@", v59, 0x20u);
        sub_1E118B520(v66, &qword_1ECEA8148, &qword_1E11B5E30);
        MEMORY[0x1E12F16F0](v66, -1, -1);
        v68 = v84;
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x1E12F16F0](v68, -1, -1);
        v69 = v59;
        v48 = v87;
        MEMORY[0x1E12F16F0](v69, -1, -1);
      }

      else
      {
      }

      sub_1E11884DC();
      swift_allocError();
      *v78 = v54;
      *(v78 + 8) = 0;
      *(v78 + 16) = 5;
      swift_willThrow();

      (*(v93 + 8))(v17, v102);

      return;
    }

    if (v52)
    {
      v70 = v52;
      v71 = [v52 allHeaderFields];
      v72 = sub_1E11B3070();

      strcpy(&v94, "Content-Type");
      BYTE13(v94) = 0;
      HIWORD(v94) = -5120;
      sub_1E11B33A0();
      if (*(v72 + 16))
      {
        v73 = sub_1E1184620(&aBlock);
        if (v74)
        {
          sub_1E1189334(*(v72 + 56) + 32 * v73, &v94);

          sub_1E11892E0(&aBlock);
          (*(v93 + 8))(v17, v102);

          if (*(&v95 + 1))
          {
            v75 = swift_dynamicCast();
            if (v75)
            {
              v76 = aBlock;
            }

            else
            {
              v76 = 0;
            }

            if (v75)
            {
              v77 = v97;
            }

            else
            {
              v77 = 0;
            }

            goto LABEL_43;
          }

LABEL_42:
          sub_1E118B520(&v94, &qword_1ECEA8290, &unk_1E11B7290);
          v76 = 0;
          v77 = 0;
LABEL_43:
          swift_beginAccess();
          v79 = *(v92 + 16);
          v80 = *(v92 + 24);
          sub_1E11883D4(v79, v80);

          v81 = v90;
          v90->isa = v53;
          LOBYTE(v81[1].isa) = v88;
          v81[2].isa = v76;
          v81[3].isa = v77;
          v81[4].isa = v79;
          v81[5].isa = v80;
          return;
        }
      }

      sub_1E11892E0(&aBlock);
      (*(v93 + 8))(v17, v102);
    }

    else
    {
      (*(v93 + 8))(v17, v102);
    }

    v94 = 0u;
    v95 = 0u;
    goto LABEL_42;
  }

  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v30 = sub_1E11B2FF0();
  __swift_project_value_buffer(v30, qword_1ECEAA6F0);
  v31 = sub_1E11B2FD0();
  v32 = sub_1E11B3250();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1E1168000, v31, v32, "MKSCEPClient: couldn't parse host from URL", v33, 2u);
    MEMORY[0x1E12F16F0](v33, -1, -1);
  }

  aBlock = 0;
  v97 = 0xE000000000000000;
  sub_1E11B33F0();

  aBlock = 0xD00000000000001ELL;
  v97 = 0x80000001E11B9710;
  v34 = sub_1E11B2F00();
  MEMORY[0x1E12F06F0](v34);

  v35 = aBlock;
  v36 = v97;
  sub_1E11884DC();
  swift_allocError();
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 16) = 3;
  swift_willThrow();
  (*(v93 + 8))(v17, v102);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E11A7140()
{
  result = qword_1ECEA85B8;
  if (!qword_1ECEA85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA85B8);
  }

  return result;
}

uint64_t sub_1E11A71B0(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8260, &unk_1E11B6FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E11B6EE0;
  v5 = *MEMORY[0x1E697B3D0];
  *(inited + 32) = sub_1E11B30A0();
  *(inited + 40) = v6;
  *(inited + 72) = swift_getObjectType();
  *(inited + 48) = a1;
  v7 = *MEMORY[0x1E697ABD0];
  *(inited + 80) = sub_1E11B30A0();
  *(inited + 88) = v8;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD000000000000017;
  *(inited + 104) = 0x80000001E11B8C40;
  v9 = *MEMORY[0x1E697ABD8];
  *(inited + 128) = sub_1E11B30A0();
  *(inited + 136) = v10;
  v11 = *MEMORY[0x1E697ABE8];
  type metadata accessor for CFString(0);
  *(inited + 168) = v12;
  *(inited + 144) = v11;
  v13 = *MEMORY[0x1E697B320];
  *(inited + 176) = sub_1E11B30A0();
  *(inited + 184) = v14;
  v15 = MEMORY[0x1E69E6370];
  *(inited + 216) = MEMORY[0x1E69E6370];
  *(inited + 192) = 1;
  swift_unknownObjectRetain();
  v16 = v11;
  sub_1E1187F14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81B8, &unk_1E11B5EE0);
  swift_arrayDestroy();
  if (a2 != 1)
  {
LABEL_4:
    result[0] = 0;
    v22 = sub_1E11B3060();
    v23 = SecItemAdd(v22, result);

    if (v23 == -25299)
    {
      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v24 = sub_1E11B2FF0();
      __swift_project_value_buffer(v24, qword_1ECEAA6F0);
      v25 = sub_1E11B2FD0();
      v26 = sub_1E11B3240();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = -25299;
        _os_log_impl(&dword_1E1168000, v25, v26, "getCACertOperation: SecItemAdd status %d", v27, 8u);
        MEMORY[0x1E12F16F0](v27, -1, -1);
      }

      v28 = sub_1E11B3060();

      v29 = SecItemCopyMatching(v28, result);

      if (v29)
      {
        v30 = sub_1E11B2FD0();
        v31 = sub_1E11B3260();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 67109120;
          *(v32 + 4) = v29;
          _os_log_impl(&dword_1E1168000, v30, v31, "getCACertOperation: SecItemCopyMatching status %d", v32, 8u);
          MEMORY[0x1E12F16F0](v32, -1, -1);
        }

        v33 = v29;
LABEL_19:
        sub_1E11884DC();
        swift_allocError();
        *v38 = v33;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        goto LABEL_35;
      }
    }

    else
    {

      if (v23)
      {
        if (qword_1ECEA8120 != -1)
        {
          swift_once();
        }

        v34 = sub_1E11B2FF0();
        __swift_project_value_buffer(v34, qword_1ECEAA6F0);
        v35 = sub_1E11B2FD0();
        v36 = sub_1E11B3260();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 67109120;
          *(v37 + 4) = v23;
          _os_log_impl(&dword_1E1168000, v35, v36, "getCACertOperation: status %d", v37, 8u);
          MEMORY[0x1E12F16F0](v37, -1, -1);
        }

        v33 = v23;
        goto LABEL_19;
      }

      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v39 = sub_1E11B2FF0();
      __swift_project_value_buffer(v39, qword_1ECEAA6F0);
      v40 = sub_1E11B2FD0();
      v41 = sub_1E11B3240();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        _os_log_impl(&dword_1E1168000, v40, v41, "getCACertOperation: SecItemAdd status %d", v42, 8u);
        MEMORY[0x1E12F16F0](v42, -1, -1);
      }
    }

    if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v33 = v49;
        if (v23 == -25299)
        {
          sub_1E1188450(v49, *(&v49 + 1));
          v33 = 0;
        }

        swift_unknownObjectRelease();
        goto LABEL_36;
      }
    }

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v43 = sub_1E11B2FF0();
    __swift_project_value_buffer(v43, qword_1ECEAA6F0);
    v44 = sub_1E11B2FD0();
    v33 = sub_1E11B3260();
    if (os_log_type_enabled(v44, v33))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1E1168000, v44, v33, "getCACertOperation: SecItemAdd/SecItemCopyMatching did not return result", v45, 2u);
      MEMORY[0x1E12F16F0](v45, -1, -1);
    }

    sub_1E11884DC();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 10;
LABEL_35:
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_36:
    v47 = *MEMORY[0x1E69E9840];
    return v33;
  }

  v17 = *MEMORY[0x1E697B3A8];
  if (*MEMORY[0x1E697B3A8])
  {
    v18 = sub_1E11B30A0();
    v20 = v19;
    v50 = v15;
    LOBYTE(v49) = 1;
    sub_1E1189390(&v49, result);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E11A5A30(result, v18, v20, isUniquelyReferenced_nonNull_native);

    goto LABEL_4;
  }

  __break(1u);
  return v17;
}

SecKeyRef sub_1E11A78AC(uint64_t a1)
{
  v32[17] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8260, &unk_1E11B6FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E11B6100;
  v3 = *MEMORY[0x1E697AD68];
  *(inited + 32) = sub_1E11B30A0();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x1E697ADA8];
  v6 = sub_1E11B30A0();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = *MEMORY[0x1E697AD50];
  *(inited + 80) = sub_1E11B30A0();
  *(inited + 88) = v9;
  *(inited + 120) = MEMORY[0x1E69E6810];
  *(inited + 96) = a1;
  sub_1E1187F14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81B8, &unk_1E11B5EE0);
  swift_arrayDestroy();
  v32[0] = 0;
  v10 = sub_1E11B3060();

  RandomKey = SecKeyCreateRandomKey(v10, v32);

  v12 = v32[0];
  if (v32[0])
  {
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v13 = sub_1E11B2FF0();
    __swift_project_value_buffer(v13, qword_1ECEAA6F0);
    v14 = v12;
    v15 = sub_1E11B2FD0();
    v16 = sub_1E11B3250();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      type metadata accessor for CFError(0);
      sub_1E118B4C8();
      swift_allocError();
      *v19 = v14;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v21;
      *v18 = v21;
      _os_log_impl(&dword_1E1168000, v15, v16, "generateKeyPair: SecKeyCreateRandomKey returned error %@", v17, 0xCu);
      sub_1E118B520(v18, &qword_1ECEA8148, &qword_1E11B5E30);
      MEMORY[0x1E12F16F0](v18, -1, -1);
      MEMORY[0x1E12F16F0](v17, -1, -1);
    }

    type metadata accessor for CFError(0);
    sub_1E118B4C8();
    v22 = swift_allocError();
    *v23 = v14;
    v24 = 4;
  }

  else
  {
    if (RandomKey)
    {
      goto LABEL_9;
    }

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v28 = sub_1E11B2FF0();
    __swift_project_value_buffer(v28, qword_1ECEAA6F0);
    v29 = sub_1E11B2FD0();
    v30 = sub_1E11B3260();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1E1168000, v29, v30, "generateKeyPair: SecKeyCreateRandomKey succeeded but returned nil", v31, 2u);
      MEMORY[0x1E12F16F0](v31, -1, -1);
    }

    v24 = 10;
    v22 = 2;
  }

  sub_1E11884DC();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = 0;
  *(v25 + 16) = v24;
  swift_willThrow();

LABEL_9:
  v26 = *MEMORY[0x1E69E9840];
  return RandomKey;
}

void sub_1E11A7CA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, void *a9@<X8>, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8260, &unk_1E11B6FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E11B6190;
  v21 = *MEMORY[0x1E697AFF0];
  *(inited + 32) = sub_1E11B30A0();
  *(inited + 72) = MEMORY[0x1E69E6810];
  *(inited + 40) = v22;
  *(inited + 48) = a3;
  v23 = sub_1E1187F14(inited);
  swift_setDeallocating();
  sub_1E118B520(inited + 32, &qword_1ECEA81B8, &unk_1E11B5EE0);
  v136 = v23;
  v24 = *MEMORY[0x1E697AFD0];
  v25 = sub_1E11B30A0();
  v27 = v25;
  v28 = v26;
  v29 = MEMORY[0x1E69E6158];
  if (a2)
  {
    v135 = MEMORY[0x1E69E6158];
    *&v134 = a1;
    *(&v134 + 1) = a2;
    sub_1E1189390(&v134, v133);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E11A5A30(v133, v27, v28, isUniquelyReferenced_nonNull_native);

    v136 = v23;
  }

  else
  {
    sub_1E1189EE0(v25, v26, &v134);

    sub_1E118B520(&v134, &qword_1ECEA8290, &unk_1E11B7290);
  }

  v31 = *MEMORY[0x1E697B330];
  v32 = sub_1E11B30A0();
  v34 = v32;
  v35 = v33;
  if (a4)
  {
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8598, &unk_1E11B6F90);
    *&v134 = a4;
    sub_1E1189390(&v134, v133);

    v36 = v136;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E11A5A30(v133, v34, v35, v37);

    v136 = v36;
    if (a5)
    {
LABEL_6:
      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v38 = sub_1E11B2FF0();
      __swift_project_value_buffer(v38, qword_1ECEAA6F0);
      v39 = sub_1E11B2FD0();
      v40 = sub_1E11B3230();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1E1168000, v39, v40, "generateCSR: AES is supported", v41, 2u);
        MEMORY[0x1E12F16F0](v41, -1, -1);
      }

      v42 = *MEMORY[0x1E697AF80];
      v43 = sub_1E11B30A0();
      v45 = v44;
      v46 = *MEMORY[0x1E697AF88];
      v47 = sub_1E11B30A0();
      v135 = v29;
      *&v134 = v47;
      *(&v134 + 1) = v48;
      sub_1E1189390(&v134, v133);
      v49 = v136;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      sub_1E11A5A30(v133, v43, v45, v50);

      v136 = v49;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1E1189EE0(v32, v33, &v134);

    sub_1E118B520(&v134, &qword_1ECEA8290, &unk_1E11B7290);
    if (a5)
    {
      goto LABEL_6;
    }
  }

  if ((a6 & 1) == 0)
  {
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v51 = sub_1E11B2FF0();
    __swift_project_value_buffer(v51, qword_1ECEAA6F0);
    v52 = sub_1E11B2FD0();
    v53 = sub_1E11B3250();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1E1168000, v52, v53, "generateCSR: Insufficient required capability from Certificate Authority. AES, 3DES not supported. Falling back to 3DES anyway.", v54, 2u);
      MEMORY[0x1E12F16F0](v54, -1, -1);
    }
  }

LABEL_18:
  if (a7)
  {
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v55 = sub_1E11B2FF0();
    __swift_project_value_buffer(v55, qword_1ECEAA6F0);
    v56 = sub_1E11B2FD0();
    v57 = sub_1E11B3230();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1E1168000, v56, v57, "generateCSR: SHA-512 is supported", v58, 2u);
      MEMORY[0x1E12F16F0](v58, -1, -1);
    }

    v59 = *MEMORY[0x1E697AFB8];
    v60 = sub_1E11B30A0();
    v62 = v61;
    v63 = MEMORY[0x1E697AFA0];
  }

  else if (a8)
  {
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v64 = sub_1E11B2FF0();
    __swift_project_value_buffer(v64, qword_1ECEAA6F0);
    v65 = sub_1E11B2FD0();
    v66 = sub_1E11B3230();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1E1168000, v65, v66, "generateCSR: SHA-512 not supported. Falling back to SHA-256.", v67, 2u);
      MEMORY[0x1E12F16F0](v67, -1, -1);
    }

    v68 = *MEMORY[0x1E697AFB8];
    v60 = sub_1E11B30A0();
    v62 = v69;
    v63 = MEMORY[0x1E697AF98];
  }

  else
  {
    if ((a10 & 1) == 0)
    {

      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v88 = sub_1E11B2FF0();
      __swift_project_value_buffer(v88, qword_1ECEAA6F0);
      v89 = sub_1E11B2FD0();
      v90 = sub_1E11B3250();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1E1168000, v89, v90, "generateCSR: Insufficient required SCEP server capability: SHA-512, SHA-256, and SHA-1 not supported.", v91, 2u);
        MEMORY[0x1E12F16F0](v91, -1, -1);
      }

      sub_1E11884DC();
      swift_allocError();
      *v92 = 0xD000000000000049;
      *(v92 + 8) = 0x80000001E11B9A10;
      *(v92 + 16) = 3;
      swift_willThrow();
      return;
    }

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v70 = sub_1E11B2FF0();
    __swift_project_value_buffer(v70, qword_1ECEAA6F0);
    v71 = sub_1E11B2FD0();
    v72 = sub_1E11B3230();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1E1168000, v71, v72, "generateCSR: SHA-512 and SHA-256 not supported. Falling back to SHA-1.", v73, 2u);
      MEMORY[0x1E12F16F0](v73, -1, -1);
    }

    v74 = *MEMORY[0x1E697AFB8];
    v60 = sub_1E11B30A0();
    v62 = v75;
    v63 = MEMORY[0x1E697AF90];
  }

  v76 = *v63;
  v77 = sub_1E11B30A0();
  v135 = v29;
  *&v134 = v77;
  *(&v134 + 1) = v78;
  sub_1E1189390(&v134, v133);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E11A5A30(v133, v60, v62, v79);

  v80 = sub_1E11A78AC(a11);
  if (v130)
  {

    return;
  }

  v81 = v80;
  v82 = SecKeyCopyPublicKey(v80);
  if (v82)
  {
    v83 = v82;
    v84 = v81;
    v85 = SecSCEPCreateTemporaryIdentity();
    if (v85)
    {
      v86 = v85;
      v87 = sub_1E11A71B0(v86, a14);
      v104 = v103;
      v105 = v87;

      if (v104 >> 60 == 15)
      {

        if (qword_1ECEA8120 != -1)
        {
          swift_once();
        }

        v106 = sub_1E11B2FF0();
        __swift_project_value_buffer(v106, qword_1ECEAA6F0);
        v107 = sub_1E11B2FD0();
        v108 = sub_1E11B3260();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = v105;
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_1E1168000, v107, v108, "generateCSR: Failed to store temporary identity.", v110, 2u);
          v111 = v110;
          v105 = v109;
          MEMORY[0x1E12F16F0](v111, -1, -1);
        }

        sub_1E11884DC();
        swift_allocError();
        *v112 = xmmword_1E11B5E10;
        *(v112 + 16) = 10;
        swift_willThrow();
      }

      else
      {
        v113 = a12;
        v132 = v105;
        sub_1E11883E8(v105, v104);
        if (a12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81C0, &unk_1E11B6FC0);
          v113 = sub_1E11B31D0();
        }

        v114 = sub_1E11B3060();

        type metadata accessor for SecCertificate(0);
        v86 = v86;
        v115 = sub_1E11B31D0();
        v116 = SecSCEPGenerateCertificateRequest();

        if (v116)
        {
          v117 = v116;
          sub_1E118843C(v132, v104);
          v118 = v117;
          v119 = sub_1E11B2F70();
          v121 = v120;

          *a9 = v86;
          a9[1] = v132;
          a9[2] = v104;
          a9[3] = v119;
          a9[4] = v121;
          return;
        }

        v105 = v132;
        if (qword_1ECEA8120 != -1)
        {
          swift_once();
        }

        v122 = sub_1E11B2FF0();
        __swift_project_value_buffer(v122, qword_1ECEAA6F0);
        v123 = sub_1E11B2FD0();
        v124 = sub_1E11B3250();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_1E1168000, v123, v124, "generateCSR: Failed to generate CSR.", v125, 2u);
          v126 = v125;
          v105 = v132;
          MEMORY[0x1E12F16F0](v126, -1, -1);
        }

        sub_1E11884DC();
        swift_allocError();
        *v127 = 0xD000000000000016;
        *(v127 + 8) = 0x80000001E11B9A60;
        *(v127 + 16) = 3;
        swift_willThrow();
        sub_1E118843C(v105, v104);
      }

      sub_1E118843C(v105, v104);
    }

    else
    {

      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v98 = sub_1E11B2FF0();
      __swift_project_value_buffer(v98, qword_1ECEAA6F0);
      v99 = sub_1E11B2FD0();
      v100 = sub_1E11B3260();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_1E1168000, v99, v100, "generateCSR: Failed to generate temporary identity.", v101, 2u);
        MEMORY[0x1E12F16F0](v101, -1, -1);
      }

      sub_1E11884DC();
      swift_allocError();
      *v102 = xmmword_1E11B5E10;
      *(v102 + 16) = 10;
      swift_willThrow();
    }
  }

  else
  {

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v93 = sub_1E11B2FF0();
    __swift_project_value_buffer(v93, qword_1ECEAA6F0);
    v94 = sub_1E11B2FD0();
    v95 = sub_1E11B3260();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1E1168000, v94, v95, "generateCSR: Failed to copy public key from private key.", v96, 2u);
      MEMORY[0x1E12F16F0](v96, -1, -1);
    }

    sub_1E11884DC();
    swift_allocError();
    *v97 = xmmword_1E11B5E10;
    *(v97 + 16) = 10;
    swift_willThrow();
  }
}

void sub_1E11A8B10(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8260, &unk_1E11B6FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E11B6190;
  v7 = *MEMORY[0x1E697B3C8];
  *(inited + 32) = sub_1E11B30A0();
  *(inited + 72) = MEMORY[0x1E6969080];
  *(inited + 40) = v8;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_1E11883E8(a1, a2);
  sub_1E1187F14(inited);
  swift_setDeallocating();
  sub_1E118B520(inited + 32, &qword_1ECEA81B8, &unk_1E11B5EE0);
  if (a3 != 1)
  {
LABEL_4:
    v13 = sub_1E11B3060();

    v14 = SecItemDelete(v13);

    if (v14)
    {
      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v15 = sub_1E11B2FF0();
      __swift_project_value_buffer(v15, qword_1ECEAA6F0);
      v16 = sub_1E11B2FD0();
      v17 = sub_1E11B3260();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_14;
      }

      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v14;
      v19 = v17;
    }

    else
    {
      if (qword_1ECEA8120 != -1)
      {
        swift_once();
      }

      v20 = sub_1E11B2FF0();
      __swift_project_value_buffer(v20, qword_1ECEAA6F0);
      v16 = sub_1E11B2FD0();
      v21 = sub_1E11B3240();
      if (!os_log_type_enabled(v16, v21))
      {
        goto LABEL_14;
      }

      v18 = swift_slowAlloc();
      *v18 = 67109120;
      v19 = v21;
    }

    _os_log_impl(&dword_1E1168000, v16, v19, "deleteSigningCert: status %d", v18, 8u);
    MEMORY[0x1E12F16F0](v18, -1, -1);
LABEL_14:

    return;
  }

  if (*MEMORY[0x1E697B3A8])
  {
    v9 = sub_1E11B30A0();
    v11 = v10;
    v24 = MEMORY[0x1E69E6370];
    LOBYTE(v23) = 1;
    sub_1E1189390(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E11A5A30(v22, v9, v11, isUniquelyReferenced_nonNull_native);

    goto LABEL_4;
  }

  __break(1u);
}

void sub_1E11A8DF0(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    if (a3 > 2u)
    {
      if (a3 == 3)
      {
        goto LABEL_14;
      }

      if (a3 == 4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (a3 == 1)
      {
        goto LABEL_17;
      }

      if (a3 == 2)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (a3 > 6u)
    {
      if (a3 == 7)
      {
        goto LABEL_14;
      }

      if (a3 != 8)
      {
        if (a3 != 9)
        {
          return;
        }

LABEL_14:

        return;
      }

LABEL_17:

      return;
    }

    if (a3 == 5 || a3 == 6)
    {
      goto LABEL_17;
    }
  }
}

unint64_t MKScope.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E11A8ED8()
{
  result = qword_1ECEA85C8;
  if (!qword_1ECEA85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA85C8);
  }

  return result;
}

uint64_t sub_1E11A8F2C()
{
  v1 = *v0;
  sub_1E11B3580();
  MEMORY[0x1E12F0B30](v1);
  return sub_1E11B35A0();
}

uint64_t sub_1E11A8FA0()
{
  v1 = *v0;
  sub_1E11B3580();
  MEMORY[0x1E12F0B30](v1);
  return sub_1E11B35A0();
}

uint64_t *sub_1E11A8FE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1E11A90CC()
{
  result = qword_1ECEA85D0;
  if (!qword_1ECEA85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA85D0);
  }

  return result;
}

void sub_1E11A9120(void **a1, id a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = [a2 restorePersonaWithSavedPersonaContext_];
  swift_beginAccess();
  v9 = *a1;
  *a1 = v8;

  if (v8)
  {
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v10 = sub_1E11B2FF0();
    __swift_project_value_buffer(v10, qword_1ECEAA6F0);
    v11 = sub_1E11B2FD0();
    v12 = sub_1E11B3260();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_beginAccess();
      v15 = *a1;
      if (v15)
      {
        v16 = v15;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v13 + 4) = v17;
      *v14 = v18;
      _os_log_impl(&dword_1E1168000, v11, v12, "Failed to restore previous persona: %@", v13, 0xCu);
      sub_1E118857C(v14);
      MEMORY[0x1E12F16F0](v14, -1, -1);
      MEMORY[0x1E12F16F0](v13, -1, -1);
    }
  }

  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v19 = sub_1E11B2FF0();
  __swift_project_value_buffer(v19, qword_1ECEAA6F0);

  v20 = sub_1E11B2FD0();
  v21 = sub_1E11B3240();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1E1183EF8(a4, a5, &v24);
    _os_log_impl(&dword_1E1168000, v20, v21, "Switched away from persona: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12F16F0](v23, -1, -1);
    MEMORY[0x1E12F16F0](v22, -1, -1);
  }
}

void sub_1E11A93DC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = [a2 restorePersonaWithSavedPersonaContext_];
  swift_beginAccess();
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  if (v8)
  {
    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v10 = sub_1E11B2FF0();
    __swift_project_value_buffer(v10, qword_1ECEAA6F0);

    v11 = sub_1E11B2FD0();
    v12 = sub_1E11B3260();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_beginAccess();
      v15 = *(a1 + 16);
      if (v15)
      {
        v16 = v15;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v13 + 4) = v17;
      *v14 = v18;
      _os_log_impl(&dword_1E1168000, v11, v12, "Failed to restore previous persona: %@", v13, 0xCu);
      sub_1E118857C(v14);
      MEMORY[0x1E12F16F0](v14, -1, -1);
      MEMORY[0x1E12F16F0](v13, -1, -1);
    }
  }

  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v19 = sub_1E11B2FF0();
  __swift_project_value_buffer(v19, qword_1ECEAA6F0);

  v20 = sub_1E11B2FD0();
  v21 = sub_1E11B3240();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1E1183EF8(a4, a5, &v24);
    _os_log_impl(&dword_1E1168000, v20, v21, "Switched away from persona: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12F16F0](v23, -1, -1);
    MEMORY[0x1E12F16F0](v22, -1, -1);
  }
}

uint64_t sub_1E11A96CC(uint64_t a1, unint64_t a2)
{
  v16[0] = 47;
  v15[2] = v16;

  v5 = sub_1E11836AC(1, 0, sub_1E11AB998, v15, a1, a2, v4);
  if (v5[2] == 2)
  {
    v16[0] = 0xD000000000000010;
    v16[1] = 0x80000001E11B8C60;
    v6 = v5[8];
    v7 = v5[9];
    v8 = v5[10];
    v9 = v5[11];

    v10 = MEMORY[0x1E12F06C0](v6, v7, v8, v9);
    v12 = v11;

    MEMORY[0x1E12F06F0](v10, v12);

    return v16[0];
  }

  else
  {

    sub_1E11884DC();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 9;
    swift_willThrow();
  }
}

void sub_1E11A9820(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v64[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DF068]) init];
    v9 = [v8 currentPersona];
    if (v9)
    {
      v10 = v9;
      v62 = a1;
      v11 = [v9 userPersonaUniqueString];
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = a3;
      v13 = v10;
      v14 = v8;
      v15 = v11;
      v16 = sub_1E11B30A0();
      v18 = v17;

      if (v16 == v62 && v18 == a2)
      {

        v8 = v14;
        v10 = v13;
        a3 = v12;
      }

      else
      {
        v20 = sub_1E11B3500();

        v8 = v14;
        v10 = v13;
        a3 = v12;
        if ((v20 & 1) == 0)
        {
LABEL_9:
          v63 = 0;
          v21 = [v10 copyCurrentPersonaContextWithError_];
          if (v21)
          {
            v22 = v21;
            v61 = v8;
            v23 = v63;
            v24 = sub_1E11B3090();
            v25 = [v10 createPersonaContextForBackgroundProcessingWithPersonaUniqueString_];

            if (v25)
            {
              v64[0] = v25;
              if (qword_1ECEA8120 != -1)
              {
                swift_once();
              }

              v26 = sub_1E11B2FF0();
              __swift_project_value_buffer(v26, qword_1ECEAA6F0);
              v27 = sub_1E11B2FD0();
              v28 = sub_1E11B3260();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                v30 = swift_slowAlloc();
                *v29 = 138412290;
                v31 = v25;
                v32 = _swift_stdlib_bridgeErrorToNSError();
                *(v29 + 4) = v32;
                *v30 = v32;
                _os_log_impl(&dword_1E1168000, v27, v28, "Failed adopting persona: %@", v29, 0xCu);
                sub_1E118857C(v30);
                MEMORY[0x1E12F16F0](v30, -1, -1);
                MEMORY[0x1E12F16F0](v29, -1, -1);
              }

              sub_1E11884DC();
              swift_allocError();
              *v33 = v25;
              *(v33 + 8) = 0;
              *(v33 + 16) = 1;
              swift_willThrow();

              goto LABEL_24;
            }

            v64[0] = 0;
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v52 = sub_1E11B2FF0();
            __swift_project_value_buffer(v52, qword_1ECEAA6F0);

            v53 = sub_1E11B2FD0();
            v54 = sub_1E11B3240();

            log = v53;
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v63 = v56;
              *v55 = 136315138;
              *(v55 + 4) = sub_1E1183EF8(v62, a2, &v63);
              _os_log_impl(&dword_1E1168000, log, v54, "Adopted persona: %s", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v56);
              MEMORY[0x1E12F16F0](v56, -1, -1);
              MEMORY[0x1E12F16F0](v55, -1, -1);
            }

            v57 = *a4;

            v58 = sub_1E11B3060();

            LODWORD(v57) = SecItemAdd(v58, 0);

            *a3 = v57;
            sub_1E11A9120(v64, v10, v22, v62, a2);

            v51 = v64[0];
          }

          else
          {
            v43 = v63;
            v44 = sub_1E11B2EF0();

            swift_willThrow();
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v45 = sub_1E11B2FF0();
            __swift_project_value_buffer(v45, qword_1ECEAA6F0);
            v46 = sub_1E11B2FD0();
            v47 = sub_1E11B3260();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_1E1168000, v46, v47, "Failed to copy current persona context", v48, 2u);
              MEMORY[0x1E12F16F0](v48, -1, -1);
            }

            sub_1E11884DC();
            swift_allocError();
            *v49 = v44;
            *(v49 + 8) = 0;
            *(v49 + 16) = 1;
            swift_willThrow();
            v50 = v44;

            v51 = v44;
          }

          goto LABEL_36;
        }
      }

      v41 = *a4;

      v42 = sub_1E11B3060();

      LODWORD(v41) = SecItemAdd(v42, 0);

      *a3 = v41;
LABEL_24:

      goto LABEL_36;
    }

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v36 = sub_1E11B2FF0();
    __swift_project_value_buffer(v36, qword_1ECEAA6F0);
    v37 = sub_1E11B2FD0();
    v38 = sub_1E11B3260();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1E1168000, v37, v38, "No current persona", v39, 2u);
      MEMORY[0x1E12F16F0](v39, -1, -1);
    }

    sub_1E11884DC();
    swift_allocError();
    *v40 = xmmword_1E11B5E10;
    *(v40 + 16) = 10;
    swift_willThrow();
  }

  else
  {
    v34 = *a4;

    v35 = sub_1E11B3060();

    LODWORD(v34) = SecItemAdd(v35, 0);

    *a3 = v34;
  }

LABEL_36:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1E11A9F8C(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v64[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DF068]) init];
    v9 = [v8 currentPersona];
    if (v9)
    {
      v10 = v9;
      v62 = a1;
      v11 = [v9 userPersonaUniqueString];
      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = a3;
      v13 = v10;
      v14 = v8;
      v15 = v11;
      v16 = sub_1E11B30A0();
      v18 = v17;

      if (v16 == v62 && v18 == a2)
      {

        v8 = v14;
        v10 = v13;
        a3 = v12;
      }

      else
      {
        v20 = sub_1E11B3500();

        v8 = v14;
        v10 = v13;
        a3 = v12;
        if ((v20 & 1) == 0)
        {
LABEL_9:
          v63 = 0;
          v21 = [v10 copyCurrentPersonaContextWithError_];
          if (v21)
          {
            v22 = v21;
            v61 = v8;
            v23 = v63;
            v24 = sub_1E11B3090();
            v25 = [v10 createPersonaContextForBackgroundProcessingWithPersonaUniqueString_];

            if (v25)
            {
              v64[0] = v25;
              if (qword_1ECEA8120 != -1)
              {
                swift_once();
              }

              v26 = sub_1E11B2FF0();
              __swift_project_value_buffer(v26, qword_1ECEAA6F0);
              v27 = sub_1E11B2FD0();
              v28 = sub_1E11B3260();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                v30 = swift_slowAlloc();
                *v29 = 138412290;
                v31 = v25;
                v32 = _swift_stdlib_bridgeErrorToNSError();
                *(v29 + 4) = v32;
                *v30 = v32;
                _os_log_impl(&dword_1E1168000, v27, v28, "Failed adopting persona: %@", v29, 0xCu);
                sub_1E118857C(v30);
                MEMORY[0x1E12F16F0](v30, -1, -1);
                MEMORY[0x1E12F16F0](v29, -1, -1);
              }

              sub_1E11884DC();
              swift_allocError();
              *v33 = v25;
              *(v33 + 8) = 0;
              *(v33 + 16) = 1;
              swift_willThrow();

              goto LABEL_24;
            }

            v64[0] = 0;
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v52 = sub_1E11B2FF0();
            __swift_project_value_buffer(v52, qword_1ECEAA6F0);

            v53 = sub_1E11B2FD0();
            v54 = sub_1E11B3240();

            log = v53;
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v63 = v56;
              *v55 = 136315138;
              *(v55 + 4) = sub_1E1183EF8(v62, a2, &v63);
              _os_log_impl(&dword_1E1168000, log, v54, "Adopted persona: %s", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v56);
              MEMORY[0x1E12F16F0](v56, -1, -1);
              MEMORY[0x1E12F16F0](v55, -1, -1);
            }

            v57 = *a4;

            v58 = sub_1E11B3060();

            LODWORD(v57) = SecItemDelete(v58);

            *a3 = v57;
            sub_1E11A9120(v64, v10, v22, v62, a2);

            v51 = v64[0];
          }

          else
          {
            v43 = v63;
            v44 = sub_1E11B2EF0();

            swift_willThrow();
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v45 = sub_1E11B2FF0();
            __swift_project_value_buffer(v45, qword_1ECEAA6F0);
            v46 = sub_1E11B2FD0();
            v47 = sub_1E11B3260();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_1E1168000, v46, v47, "Failed to copy current persona context", v48, 2u);
              MEMORY[0x1E12F16F0](v48, -1, -1);
            }

            sub_1E11884DC();
            swift_allocError();
            *v49 = v44;
            *(v49 + 8) = 0;
            *(v49 + 16) = 1;
            swift_willThrow();
            v50 = v44;

            v51 = v44;
          }

          goto LABEL_36;
        }
      }

      v41 = *a4;

      v42 = sub_1E11B3060();

      LODWORD(v41) = SecItemDelete(v42);

      *a3 = v41;
LABEL_24:

      goto LABEL_36;
    }

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v36 = sub_1E11B2FF0();
    __swift_project_value_buffer(v36, qword_1ECEAA6F0);
    v37 = sub_1E11B2FD0();
    v38 = sub_1E11B3260();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1E1168000, v37, v38, "No current persona", v39, 2u);
      MEMORY[0x1E12F16F0](v39, -1, -1);
    }

    sub_1E11884DC();
    swift_allocError();
    *v40 = xmmword_1E11B5E10;
    *(v40 + 16) = 10;
    swift_willThrow();
  }

  else
  {
    v34 = *a4;

    v35 = sub_1E11B3060();

    LODWORD(v34) = SecItemDelete(v35);

    *a3 = v34;
  }

LABEL_36:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1E11AA6EC(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4, CFTypeRef *a5)
{
  v73[3] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DF068]) init];
    v11 = [v10 currentPersona];
    if (v11)
    {
      v12 = v11;
      result = a5;
      v71 = a1;
      v13 = [v11 userPersonaUniqueString];
      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = v12;
      v15 = v10;
      v16 = v13;
      v17 = sub_1E11B30A0();
      v19 = v18;

      if (v17 == v71 && v19 == a2)
      {

        v10 = v15;
        v12 = v14;
      }

      else
      {
        v21 = sub_1E11B3500();

        v10 = v15;
        v12 = v14;
        if ((v21 & 1) == 0)
        {
LABEL_9:
          v73[0] = 0;
          v22 = [v12 copyCurrentPersonaContextWithError_];
          if (v22)
          {
            v23 = v22;
            v24 = v73[0];
            v25 = sub_1E11B3090();
            v26 = [v12 createPersonaContextForBackgroundProcessingWithPersonaUniqueString_];

            if (v26)
            {
              v72 = v26;
              if (qword_1ECEA8120 != -1)
              {
                swift_once();
              }

              v27 = sub_1E11B2FF0();
              __swift_project_value_buffer(v27, qword_1ECEAA6F0);
              v28 = sub_1E11B2FD0();
              v29 = sub_1E11B3260();
              if (os_log_type_enabled(v28, v29))
              {
                v30 = v10;
                v31 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                *v31 = 138412290;
                v33 = v26;
                v34 = _swift_stdlib_bridgeErrorToNSError();
                *(v31 + 4) = v34;
                *v32 = v34;
                _os_log_impl(&dword_1E1168000, v28, v29, "Failed adopting persona: %@", v31, 0xCu);
                sub_1E118857C(v32);
                MEMORY[0x1E12F16F0](v32, -1, -1);
                v35 = v31;
                v10 = v30;
                MEMORY[0x1E12F16F0](v35, -1, -1);
              }

              sub_1E11884DC();
              swift_allocError();
              *v36 = v26;
              *(v36 + 8) = 0;
              *(v36 + 16) = 1;
              swift_willThrow();

              goto LABEL_24;
            }

            v72 = 0;
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v59 = sub_1E11B2FF0();
            __swift_project_value_buffer(v59, qword_1ECEAA6F0);

            v60 = sub_1E11B2FD0();
            v61 = sub_1E11B3240();

            if (os_log_type_enabled(v60, v61))
            {
              v69 = v10;
              v62 = swift_slowAlloc();
              log = v60;
              v63 = swift_slowAlloc();
              v73[0] = v63;
              *v62 = 136315138;
              *(v62 + 4) = sub_1E1183EF8(v71, a2, v73);
              _os_log_impl(&dword_1E1168000, log, v61, "Adopted persona: %s", v62, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v63);
              MEMORY[0x1E12F16F0](v63, -1, -1);
              v64 = v62;
              v10 = v69;
              MEMORY[0x1E12F16F0](v64, -1, -1);
            }

            else
            {
            }

            v65 = *a4;

            v66 = sub_1E11B3060();

            LODWORD(v65) = SecItemCopyMatching(v66, result);

            swift_beginAccess();
            *a3 = v65;
            sub_1E11A9120(&v72, v12, v23, v71, a2);

            v58 = v72;
          }

          else
          {
            v48 = v73[0];
            v49 = sub_1E11B2EF0();

            swift_willThrow();
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v50 = sub_1E11B2FF0();
            __swift_project_value_buffer(v50, qword_1ECEAA6F0);
            v51 = sub_1E11B2FD0();
            v52 = sub_1E11B3260();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = v10;
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&dword_1E1168000, v51, v52, "Failed to copy current persona context", v54, 2u);
              v55 = v54;
              v10 = v53;
              MEMORY[0x1E12F16F0](v55, -1, -1);
            }

            sub_1E11884DC();
            swift_allocError();
            *v56 = v49;
            *(v56 + 8) = 0;
            *(v56 + 16) = 1;
            swift_willThrow();
            v57 = v49;

            v58 = v49;
          }

          goto LABEL_37;
        }
      }

      v46 = *a4;

      v47 = sub_1E11B3060();

      LODWORD(v46) = SecItemCopyMatching(v47, result);

      swift_beginAccess();
      *a3 = v46;
LABEL_24:

      goto LABEL_37;
    }

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v39 = sub_1E11B2FF0();
    __swift_project_value_buffer(v39, qword_1ECEAA6F0);
    v40 = sub_1E11B2FD0();
    v41 = sub_1E11B3260();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v10;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1E1168000, v40, v41, "No current persona", v43, 2u);
      v44 = v43;
      v10 = v42;
      MEMORY[0x1E12F16F0](v44, -1, -1);
    }

    sub_1E11884DC();
    swift_allocError();
    *v45 = xmmword_1E11B5E10;
    *(v45 + 16) = 10;
    swift_willThrow();
  }

  else
  {
    v37 = *a4;

    v38 = sub_1E11B3060();

    LODWORD(v37) = SecItemCopyMatching(v38, a5);

    swift_beginAccess();
    *a3 = v37;
  }

LABEL_37:
  v67 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E11AAE94(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1E11B34E0() & 1;
  }
}

uint64_t sub_1E11AAF0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34 = 47;
  v35 = 0xE100000000000000;
  v33 = &v34;

  v7 = sub_1E11836AC(1, 0, sub_1E11AB978, v32, a1, a2, v6);
  if (v7[2] != 2)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_1E11AAE94(v7[4], v7[5], v7[6], v7[7], 0x4B646567616E614DLL, 0xEF6E696168637965);
  v10 = v8;
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v8[8];
  v12 = v10[9];
  v13 = v10[10];
  v14 = v10[11];

  v34 = 58;
  v35 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v15);
  v31[2] = &v34;
  v16 = sub_1E1183A6C(1, 0, sub_1E1188B68, v31, v11, v12, v13, v32);
  if (*(v16 + 2) == 2)
  {
    v17 = *(v16 + 4);
    v18 = *(v16 + 5);
    v19 = *(v16 + 6);
    v20 = *(v16 + 7);

    v21 = MEMORY[0x1E12F06C0](v17, v18, v19, v20);
    v23 = v22;

    v24 = sub_1E11833AC(v21, v23, a3);
  }

  else
  {
LABEL_5:

    if (qword_1ECEA8120 != -1)
    {
      swift_once();
    }

    v25 = sub_1E11B2FF0();
    __swift_project_value_buffer(v25, qword_1ECEAA6F0);

    v26 = sub_1E11B2FD0();
    v27 = sub_1E11B3250();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1E1183EF8(a1, a2, &v34);
      _os_log_impl(&dword_1E1168000, v26, v27, "Declaration key '%s' has unexpected format: does not match", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12F16F0](v29, -1, -1);
      MEMORY[0x1E12F16F0](v28, -1, -1);
    }

    v24 = 0;
  }

  return v24 & 1;
}

void sub_1E11AB200(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v69[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v36 = *a4;

    v37 = sub_1E11B3060();

    LODWORD(v36) = a6(v37, a5);

    *a3 = v36;
    goto LABEL_35;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69DF068]) init];
  v13 = [v12 currentPersona];
  if (v13)
  {
    v65 = a3;
    v66 = v12;
    v67 = v13;
    v14 = [v13 userPersonaUniqueString];
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = v14;
    v16 = sub_1E11B30A0();
    v18 = v17;

    if (v16 == a1 && v18 == a2)
    {
    }

    else
    {
      v20 = sub_1E11B3500();

      if ((v20 & 1) == 0)
      {
LABEL_9:
        v68 = 0;
        v21 = v67;
        v22 = [v67 copyCurrentPersonaContextWithError_];
        if (v22)
        {
          v23 = v22;
          v64 = a6;
          v24 = v68;
          v25 = sub_1E11B3090();
          v26 = [v67 createPersonaContextForBackgroundProcessingWithPersonaUniqueString_];

          if (v26)
          {
            v69[0] = v26;
            if (qword_1ECEA8120 != -1)
            {
              swift_once();
            }

            v27 = sub_1E11B2FF0();
            __swift_project_value_buffer(v27, qword_1ECEAA6F0);
            v28 = sub_1E11B2FD0();
            v29 = sub_1E11B3260();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              *v30 = 138412290;
              v32 = v26;
              v33 = _swift_stdlib_bridgeErrorToNSError();
              *(v30 + 4) = v33;
              *v31 = v33;
              _os_log_impl(&dword_1E1168000, v28, v29, "Failed adopting persona: %@", v30, 0xCu);
              sub_1E118857C(v31);
              MEMORY[0x1E12F16F0](v31, -1, -1);
              v34 = v30;
              v21 = v67;
              MEMORY[0x1E12F16F0](v34, -1, -1);
            }

            sub_1E11884DC();
            swift_allocError();
            *v35 = v26;
            *(v35 + 8) = 0;
            *(v35 + 16) = 1;
            swift_willThrow();

            goto LABEL_35;
          }

          v69[0] = 0;
          if (qword_1ECEA8120 != -1)
          {
            swift_once();
          }

          v54 = sub_1E11B2FF0();
          __swift_project_value_buffer(v54, qword_1ECEAA6F0);

          v55 = sub_1E11B2FD0();
          v56 = sub_1E11B3240();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v63 = v23;
            v58 = swift_slowAlloc();
            v68 = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_1E1183EF8(a1, a2, &v68);
            _os_log_impl(&dword_1E1168000, v55, v56, "Adopted persona: %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v58);
            v59 = v58;
            v23 = v63;
            MEMORY[0x1E12F16F0](v59, -1, -1);
            MEMORY[0x1E12F16F0](v57, -1, -1);
          }

          v60 = *a4;

          v61 = sub_1E11B3060();

          LODWORD(v60) = v64(v61, a5);

          *v65 = v60;
          sub_1E11A9120(v69, v67, v23, a1, a2);

          v53 = v69[0];
        }

        else
        {
          v45 = v68;
          v46 = sub_1E11B2EF0();

          swift_willThrow();
          if (qword_1ECEA8120 != -1)
          {
            swift_once();
          }

          v47 = sub_1E11B2FF0();
          __swift_project_value_buffer(v47, qword_1ECEAA6F0);
          v48 = sub_1E11B2FD0();
          v49 = sub_1E11B3260();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_1E1168000, v48, v49, "Failed to copy current persona context", v50, 2u);
            MEMORY[0x1E12F16F0](v50, -1, -1);
          }

          sub_1E11884DC();
          swift_allocError();
          *v51 = v46;
          *(v51 + 8) = 0;
          *(v51 + 16) = 1;
          swift_willThrow();
          v52 = v46;

          v53 = v46;
        }

        goto LABEL_35;
      }
    }

    v43 = *a4;

    v44 = sub_1E11B3060();

    LODWORD(v43) = a6(v44, a5);

    *v65 = v43;
    goto LABEL_35;
  }

  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v38 = sub_1E11B2FF0();
  __swift_project_value_buffer(v38, qword_1ECEAA6F0);
  v39 = sub_1E11B2FD0();
  v40 = sub_1E11B3260();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1E1168000, v39, v40, "No current persona", v41, 2u);
    MEMORY[0x1E12F16F0](v41, -1, -1);
  }

  sub_1E11884DC();
  swift_allocError();
  *v42 = xmmword_1E11B5E10;
  *(v42 + 16) = 10;
  swift_willThrow();

LABEL_35:
  v62 = *MEMORY[0x1E69E9840];
}

void sub_1E11AB9B4(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E1169DF0(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E11ABA00(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4, CFTypeRef *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E1169E50(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E11ABA4C(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E1169EE8(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E11ABA98(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t *a4)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1E1169E9C(a1, a2, a3, a4);
  v4 = *MEMORY[0x1E69E9840];
}

id sub_1E11ABAE4()
{
  result = [objc_allocWithZone(type metadata accessor for RMManagedTrustStore()) init];
  qword_1ECEA85D8 = result;
  return result;
}

id RMManagedTrustStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static RMManagedTrustStore.sharedInstance.getter()
{
  if (qword_1ECEA8128 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEA85D8;

  return v1;
}

uint64_t sub_1E11ABC00()
{
  v0 = sub_1E11B2FF0();
  __swift_allocate_value_buffer(v0, qword_1ECEAA708);
  __swift_project_value_buffer(v0, qword_1ECEAA708);
  return sub_1E11B2FE0();
}

uint64_t sub_1E11ABD60(void *a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(uint64_t, void))
{
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a7;
  v18 = sub_1E11B2F70();
  v20 = v19;

  if (v17)
  {
    v21 = sub_1E11B30A0();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_1E11ABF48(v18, v20, a5, a6, v21, v23, a9);

  sub_1E1188450(v18, v20);
  return 1;
}

id RMManagedTrustStore.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RMManagedTrustStore();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RMManagedTrustStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RMManagedTrustStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E11ABF48(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void))
{
  v24 = a7;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1E11AC1FC(v22, &v19);
  if (v20)
  {
    sub_1E11AC388(&v19, v21);
  }

  else
  {
    v21[3] = &type metadata for RMTrustStoreBackend;
    v21[4] = &off_1F5C08260;
  }

  sub_1E11AC2D4(v21, &v19);
  __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
  v18[3] = &type metadata for RMTrustStoreBackend;
  v18[4] = &off_1F5C08260;
  type metadata accessor for RMTrustStore();
  inited = swift_initStackObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for RMTrustStoreBackend);
  v17[3] = &type metadata for RMTrustStoreBackend;
  v17[4] = &off_1F5C08260;
  *(inited + 16) = a4;
  *(inited + 24) = a5;
  *(inited + 32) = a6;
  sub_1E11AC2D4(v17, inited + 40);
  strcpy((inited + 80), "RMTrustStore");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  type metadata accessor for RMTrustStoreDatabase();

  v14 = sub_1E11AD0FC();
  __swift_destroy_boxed_opaque_existential_0(v17);
  *(inited + 96) = v14;
  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_1E11AC26C(v22);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  type metadata accessor for MKPrimaryKeyCert();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1E11883E8(a1, a2);
  v24(v15, a3 & 1);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 40));
}

uint64_t sub_1E11AC1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85E0, &qword_1E11B7148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E11AC26C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85E0, &qword_1E11B7148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E11AC2D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1E11AC388(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E11AC3A0()
{
  v1 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v2 = v0[11];

  v3 = v0[12];

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1E11AC414(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_1E1189628(*(a1 + 16), *(a1 + 24), a3, a4, a5);
  if (v5)
  {

    if (qword_1ECEA8130 != -1)
    {
      swift_once();
    }

    v9 = sub_1E11B2FF0();
    __swift_project_value_buffer(v9, qword_1ECEAA708);

    v10 = sub_1E11B2FD0();
    v11 = sub_1E11B3250();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v76 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1E1183EF8(0xD00000000000002CLL, 0x80000001E11B9BC0, &v76);
      *(v12 + 12) = 2082;
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      v16 = sub_1E11B2F60();
      v18 = sub_1E1183EF8(v16, v17, &v76);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_1E1168000, v10, v11, "%s: missing certificate for %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12F16F0](v13, -1, -1);
      MEMORY[0x1E12F16F0](v12, -1, -1);
    }

    sub_1E11ACE70();
    swift_allocError();
    *v19 = 0;
    *(v19 + 4) = 1;
    swift_willThrow();
    return v20 & 1;
  }

  v21 = v8;
  if (SecCertificateIsSelfSignedCA())
  {
    if (a2)
    {
      if (qword_1ECEA8130 != -1)
      {
        swift_once();
      }

      v22 = sub_1E11B2FF0();
      __swift_project_value_buffer(v22, qword_1ECEAA708);

      v23 = sub_1E11B2FD0();
      v24 = sub_1E11B3240();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v76 = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_1E1183EF8(0xD00000000000002CLL, 0x80000001E11B9BC0, &v76);
        *(v25 + 12) = 2082;
        v27 = *(a1 + 16);
        v28 = *(a1 + 24);
        v29 = sub_1E11B2F60();
        v31 = sub_1E1183EF8(v29, v30, &v76);

        *(v25 + 14) = v31;
        _os_log_impl(&dword_1E1168000, v23, v24, "%s: setting full trust for certificate %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12F16F0](v26, -1, -1);
        MEMORY[0x1E12F16F0](v25, -1, -1);
      }

      SecTrustStoreForDomain();
      v32 = SecTrustStoreSetTrustSettings();

      if (v32)
      {
        v33 = sub_1E11B2FD0();
        v34 = sub_1E11B3250();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v76 = v36;
          *v35 = 136315394;
          *(v35 + 4) = sub_1E1183EF8(0xD00000000000002CLL, 0x80000001E11B9BC0, &v76);
          *(v35 + 12) = 1024;
          *(v35 + 14) = v32;
          _os_log_impl(&dword_1E1168000, v33, v34, "%s: Failed to set full trust, status: %d", v35, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x1E12F16F0](v36, -1, -1);
          MEMORY[0x1E12F16F0](v35, -1, -1);
        }

        sub_1E11ACE70();
        swift_allocError();
        *v37 = v32;
        *(v37 + 4) = 0;
        swift_willThrow();

        return v20 & 1;
      }

LABEL_31:

      v20 = 1;
      return v20 & 1;
    }

    if (qword_1ECEA8130 != -1)
    {
      swift_once();
    }

    v48 = sub_1E11B2FF0();
    __swift_project_value_buffer(v48, qword_1ECEAA708);

    v49 = sub_1E11B2FD0();
    v50 = sub_1E11B3240();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76 = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_1E1183EF8(0xD00000000000002CLL, 0x80000001E11B9BC0, &v76);
      *(v51 + 12) = 2082;
      v53 = *(a1 + 16);
      v54 = *(a1 + 24);
      v55 = sub_1E11B2F60();
      v57 = sub_1E1183EF8(v55, v56, &v76);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_1E1168000, v49, v50, "%s: setting partial trust for certificate %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12F16F0](v52, -1, -1);
      MEMORY[0x1E12F16F0](v51, -1, -1);
    }

    SSL = SecPolicyCreateSSL(1u, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85F0, &unk_1E11B71C0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1E11B6100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8260, &unk_1E11B6FA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E11B6100;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x80000001E11B9BF0;
    type metadata accessor for SecPolicy(0);
    *(inited + 48) = SSL;
    *(inited + 72) = v61;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x80000001E11B9C10;
    v62 = MEMORY[0x1E69E7668];
    *(inited + 120) = MEMORY[0x1E69E7668];
    *(inited + 96) = 4;
    v75 = SSL;
    v63 = sub_1E1187F14(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81B8, &unk_1E11B5EE0);
    swift_arrayDestroy();
    *(v59 + 32) = v63;
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_1E11B6190;
    *(v64 + 32) = 0xD000000000000017;
    v65 = v64 + 32;
    *(v64 + 40) = 0x80000001E11B9C10;
    *(v64 + 72) = v62;
    *(v64 + 48) = 1;
    v66 = sub_1E1187F14(v64);
    swift_setDeallocating();
    sub_1E11ACEC4(v65);
    *(v59 + 40) = v66;
    SecTrustStoreForDomain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8598, &unk_1E11B6F90);
    v67 = sub_1E11B31D0();

    v68 = SecTrustStoreSetTrustSettings();

    if (!v68)
    {

      goto LABEL_31;
    }

    v69 = sub_1E11B2FD0();
    v70 = sub_1E11B3250();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_1E1183EF8(0xD00000000000002CLL, 0x80000001E11B9BC0, &v76);
      *(v71 + 12) = 1024;
      *(v71 + 14) = v68;
      _os_log_impl(&dword_1E1168000, v69, v70, "%s: Failed to set partial trust, status: %d", v71, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x1E12F16F0](v72, -1, -1);
      MEMORY[0x1E12F16F0](v71, -1, -1);
    }

    sub_1E11ACE70();
    swift_allocError();
    *v73 = v68;
    *(v73 + 4) = 0;
    swift_willThrow();
  }

  else
  {

    if (qword_1ECEA8130 != -1)
    {
      swift_once();
    }

    v38 = sub_1E11B2FF0();
    __swift_project_value_buffer(v38, qword_1ECEAA708);

    v39 = sub_1E11B2FD0();
    v40 = sub_1E11B3240();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_1E1183EF8(0xD00000000000002CLL, 0x80000001E11B9BC0, &v76);
      *(v41 + 12) = 2082;
      v43 = *(a1 + 16);
      v44 = *(a1 + 24);
      v45 = sub_1E11B2F60();
      v47 = sub_1E1183EF8(v45, v46, &v76);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_1E1168000, v39, v40, "%s: certificate is not self-signed CA %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12F16F0](v42, -1, -1);
      MEMORY[0x1E12F16F0](v41, -1, -1);
    }

    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_1E11ACE70()
{
  result = qword_1ECEA85E8;
  if (!qword_1ECEA85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA85E8);
  }

  return result;
}

uint64_t sub_1E11ACEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81B8, &unk_1E11B5EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E11ACF2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1E1189628(*(a1 + 16), *(a1 + 24), a2, a3, a4);
  if (!v4)
  {
    v6 = v5;
    SecTrustStoreForDomain();
    v7 = SecTrustStoreRemoveCertificate();
    if (v7)
    {
      v8 = v7;
      if (qword_1ECEA8130 != -1)
      {
        swift_once();
      }

      v9 = sub_1E11B2FF0();
      __swift_project_value_buffer(v9, qword_1ECEAA708);
      v10 = sub_1E11B2FD0();
      v11 = sub_1E11B3250();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_1E1183EF8(0xD000000000000025, 0x80000001E11B9C30, &v15);
        *(v12 + 12) = 1024;
        *(v12 + 14) = v8;
        _os_log_impl(&dword_1E1168000, v10, v11, "%s Failed to remove trust, status: %d", v12, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1E12F16F0](v13, -1, -1);
        MEMORY[0x1E12F16F0](v12, -1, -1);
      }

      sub_1E11ACE70();
      swift_allocError();
      *v14 = v8;
      *(v14 + 4) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1E11AD0FC()
{
  v0 = sub_1E11B3100();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v6 = sub_1E11B3090();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_1E11B3340();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1E11B30E0();
      v8 = sub_1E11B30B0();
      v10 = v9;

      (*(v1 + 8))(v4, v0);
      if (v10 >> 60 != 15)
      {
        v11 = sub_1E11B2D50();
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        swift_allocObject();
        sub_1E11B2D40();
        type metadata accessor for RMTrustStoreDatabase();
        sub_1E11AE018(&qword_1ECEA8618, v14, type metadata accessor for RMTrustStoreDatabase);
        sub_1E11B2D30();

        sub_1E118843C(v8, v10);
        return *&v27[0];
      }
    }
  }

  else
  {
    sub_1E118B520(v27, &qword_1ECEA8290, &unk_1E11B7290);
  }

  if (qword_1ECEA8120 != -1)
  {
    swift_once();
  }

  v15 = sub_1E11B2FF0();
  __swift_project_value_buffer(v15, qword_1ECEAA6F0);
  v16 = sub_1E11B2FD0();
  v17 = sub_1E11B3240();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v27[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1E1183EF8(0xD000000000000012, 0x80000001E11B9CD0, v27);
    _os_log_impl(&dword_1E1168000, v16, v17, "%s: Invalid/empty user default", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1E12F16F0](v19, -1, -1);
    MEMORY[0x1E12F16F0](v18, -1, -1);
  }

  type metadata accessor for RMTrustStoreDatabase();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CC0];
  *(v20 + 16) = sub_1E1188058(MEMORY[0x1E69E7CC0]);
  v22 = sub_1E1188058(v21);
  result = v20;
  *(v20 + 24) = v22;
  return result;
}

uint64_t sub_1E11AD690()
{
  v0 = sub_1E11B3100();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E11B2D80();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1E11B2D70();
  type metadata accessor for RMTrustStoreDatabase();
  sub_1E11AE018(&qword_1ECEA8610, v5, type metadata accessor for RMTrustStoreDatabase);
  v6 = sub_1E11B2D60();
  v8 = v7;
  sub_1E11B30E0();
  sub_1E11B30C0();
  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  if (v10)
  {
    v12 = sub_1E11B3090();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1E11B3090();
  [v11 setObject:v12 forKey:v13];

  swift_unknownObjectRelease();
  return sub_1E1188450(v6, v8);
}

unint64_t sub_1E11AD914()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_1E11AD950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001E11B9C90 == a2 || (sub_1E11B3500() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E11B9CB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E11B3500();

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

uint64_t sub_1E11ADA34(uint64_t a1)
{
  v2 = sub_1E11ADFC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E11ADA70(uint64_t a1)
{
  v2 = sub_1E11ADFC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E11ADAAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E11ADB10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA8608, &qword_1E11B7288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E11ADFC4();
  sub_1E11B35C0();
  swift_beginAccess();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA83F0, &qword_1E11B7280);
  sub_1E1194B30();
  sub_1E11B34D0();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[7] = 1;
    sub_1E11B34D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E11ADCDC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA85F8, &qword_1E11B7278);
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = sub_1E1188058(MEMORY[0x1E69E7CC0]);
  v10 = (v3 + 16);
  *(v3 + 24) = sub_1E1188058(v9);
  v11 = (v3 + 24);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E11ADFC4();
  sub_1E11B35B0();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA83F0, &qword_1E11B7280);
    v23 = 0;
    v19[1] = sub_1E1194290();
    sub_1E11B34A0();
    v13 = v22;
    swift_beginAccess();
    v14 = *v10;
    *v10 = v13;

    LOBYTE(v22) = 1;
    v15 = v21;
    sub_1E11B34A0();
    (*(v20 + 8))(v8, v15);
    v17 = v24;
    swift_beginAccess();
    v18 = *v11;
    *v11 = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_1E11ADF48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for RMTrustStoreDatabase();
  v5 = swift_allocObject();
  result = sub_1E11ADCDC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1E11ADFC4()
{
  result = qword_1ECEA8600;
  if (!qword_1ECEA8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA8600);
  }

  return result;
}

uint64_t sub_1E11AE018(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E11AE074()
{
  result = qword_1ECEA8620;
  if (!qword_1ECEA8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA8620);
  }

  return result;
}

unint64_t sub_1E11AE0CC()
{
  result = qword_1ECEA8628;
  if (!qword_1ECEA8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA8628);
  }

  return result;
}

unint64_t sub_1E11AE124()
{
  result = qword_1ECEA8630;
  if (!qword_1ECEA8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA8630);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RMTrustStoreError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RMTrustStoreError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1E11AE1D8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E11AE1F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1E11AE228(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0xD000000000000013;
  }

  sub_1E11B33F0();

  strcpy(v3, "System error: ");
  HIBYTE(v3[1]) = -18;
  v1 = sub_1E11B34F0();
  MEMORY[0x1E12F06F0](v1);

  return v3[0];
}

uint64_t sub_1E11AE360(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_1E11844A0(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v24 = *v6;
      if (!v19)
      {
        a5();
        v20 = v24;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      v22 = *(*(v20 + 56) + 8 * v16);

      result = sub_1E11AF798(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_1E11AE4E8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), void (*a6)(void))
{
  v7 = v6;
  v9 = *v6;
  if (a2)
  {
    v11 = a5(a3);
    if (v12)
    {
      v13 = v11;
      v14 = *v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v7;
      v22 = *v7;
      if (!isUniquelyReferenced_nonNull_native)
      {
        a6();
        v16 = v22;
      }

      v17 = *(*(v16 + 48) + 8 * v13);

      sub_1E11AF5E8(v13, v16);

      *v7 = v16;
    }

    else
    {
    }
  }

  else
  {
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    a4(a1, a3, v21);

    *v7 = v23;
  }

  return result;
}

uint64_t sub_1E11AE6C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_1E11844A0(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v24 = *v6;
      if (!v19)
      {
        a5();
        v20 = v24;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      v22 = *(*(v20 + 56) + 8 * v16);

      result = sub_1E11AF798(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

void sub_1E11AE7F8(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1ECEA8130 != -1)
  {
    swift_once();
  }

  v6 = sub_1E11B2FF0();
  __swift_project_value_buffer(v6, qword_1ECEAA708);

  v7 = sub_1E11B2FD0();
  v8 = sub_1E11B3240();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1E1183EF8(0xD000000000000026, 0x80000001E11B9D80, v56);
    *(v9 + 12) = 2082;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = sub_1E11B2F60();
    v15 = a2;
    v16 = sub_1E1183EF8(v13, v14, v56);

    *(v9 + 14) = v16;
    a2 = v15;
    _os_log_impl(&dword_1E1168000, v7, v8, "%s: certificate %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    v17 = v10;
    v3 = v2;
    MEMORY[0x1E12F16F0](v17, -1, -1);
    MEMORY[0x1E12F16F0](v9, -1, -1);
  }

  v18 = v54[12];
  swift_beginAccess();
  v19 = *(v18 + 16);
  if (*(v19 + 16))
  {
    v20 = *(v18 + 16);

    v21 = sub_1E11895F4(a1);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  swift_beginAccess();
  v24 = *(v18 + 24);
  if (*(v24 + 16))
  {
    v25 = *(v18 + 24);

    v26 = sub_1E11895F4(a1);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);

      v29 = v23;
      v30 = v28;
      if (a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v28 = 0;
  v30 = 0;
  v29 = v23;
  if (a2)
  {
    goto LABEL_18;
  }

LABEL_17:
  v29 = v28;
  v30 = v28;
  if (v23)
  {
LABEL_19:
    v53 = v30;

    v31 = sub_1E11B2FD0();
    v32 = sub_1E11B3240();

    if (os_log_type_enabled(v31, v32))
    {
      v52 = v23;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1E1183EF8(0xD000000000000026, 0x80000001E11B9D80, v55);
      *(v33 + 12) = 2082;
      v35 = *(a1 + 16);
      v36 = *(a1 + 24);
      v37 = sub_1E11B2F60();
      v39 = a2;
      v40 = sub_1E1183EF8(v37, v38, v55);

      *(v33 + 14) = v40;
      a2 = v39;
      _os_log_impl(&dword_1E1168000, v31, v32, "%s: incrementing trust for certificate %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12F16F0](v34, -1, -1);
      v41 = v33;
      v23 = v52;
      MEMORY[0x1E12F16F0](v41, -1, -1);
    }

LABEL_22:
    if (a2)
    {
      if (v23 != -1)
      {
        swift_beginAccess();
        v42 = *(v18 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v18 + 16);
        *(v18 + 16) = 0x8000000000000000;
        sub_1E11A5BD4(v23 + 1, a1, isUniquelyReferenced_nonNull_native);
        *(v18 + 16) = v57;
LABEL_27:
        swift_endAccess();
        v46 = v54[10];
        v47 = v54[11];
        sub_1E11AD690();
        v48 = sub_1E11B3090();
        v49 = [v48 UTF8String];
        v50 = v48;
        notify_post(v49);
        return;
      }

      __break(1u);
    }

    else if (v53 != -1)
    {
      swift_beginAccess();
      v44 = *(v18 + 24);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v18 + 24);
      *(v18 + 24) = 0x8000000000000000;
      sub_1E11A5BD4(v53 + 1, a1, v45);
      *(v18 + 24) = v57;
      goto LABEL_27;
    }

    __break(1u);
    return;
  }

LABEL_18:
  if (v29)
  {
    goto LABEL_19;
  }

  v53 = v30;
  v51 = sub_1E11AC414(a1, a2 & 1, v54[2], v54[3], v54[4]);
  if (!v3 && (v51 & 1) != 0)
  {
    goto LABEL_22;
  }
}

void sub_1E11AED14(uint64_t a1, char a2)
{
  v4 = v3;
  v5 = v2;
  v8 = v2[12];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (*(v9 + 16))
  {
    v10 = *(v8 + 16);

    v11 = sub_1E11895F4(a1);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  swift_beginAccess();
  v14 = *(v8 + 24);
  if (!*(v14 + 16))
  {
LABEL_21:
    if (v13)
    {
      if (a2)
      {
        if (v13 != 1)
        {
          goto LABEL_24;
        }

LABEL_32:
        if (qword_1ECEA8130 != -1)
        {
          swift_once();
        }

        v35 = sub_1E11B2FF0();
        __swift_project_value_buffer(v35, qword_1ECEAA708);

        v36 = sub_1E11B2FD0();
        v37 = sub_1E11B3240();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53[0] = v52;
          *v38 = 136315394;
          *(v38 + 4) = sub_1E1183EF8(0xD000000000000029, 0x80000001E11B9D50, v53);
          *(v38 + 12) = 2082;
          v39 = *(a1 + 16);
          v40 = *(a1 + 24);
          v41 = sub_1E11B2F60();
          v43 = sub_1E1183EF8(v41, v42, v53);

          *(v38 + 14) = v43;
          v4 = v3;
          _os_log_impl(&dword_1E1168000, v36, v37, "%s: removing all trust for certificate %{public}s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12F16F0](v52, -1, -1);
          MEMORY[0x1E12F16F0](v38, -1, -1);
        }

        sub_1E11ACF2C(a1, v5[2], v5[3], v5[4]);
        if (!v4)
        {
          goto LABEL_40;
        }

        return;
      }

LABEL_40:
      swift_beginAccess();

      sub_1E11AE4E8(0, 1, a1, sub_1E11A5BD4, sub_1E11895F4, sub_1E11868E4);
      goto LABEL_41;
    }

LABEL_25:
    if (qword_1ECEA8130 != -1)
    {
      swift_once();
    }

    v30 = sub_1E11B2FF0();
    __swift_project_value_buffer(v30, qword_1ECEAA708);
    v31 = sub_1E11B2FD0();
    v32 = sub_1E11B3240();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1E1183EF8(0xD000000000000029, 0x80000001E11B9D50, v53);
      _os_log_impl(&dword_1E1168000, v31, v32, "%s: trust store removal not needed", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1E12F16F0](v34, -1, -1);
      MEMORY[0x1E12F16F0](v33, -1, -1);
    }

    return;
  }

  v15 = *(v8 + 24);

  v16 = sub_1E11895F4(a1);
  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  v18 = *(*(v14 + 56) + 8 * v16);

  if (!(v13 | v18))
  {
    goto LABEL_25;
  }

  if ((a2 & 1) == 0)
  {
    if (!v13 && v18 == 1)
    {
      goto LABEL_32;
    }

    if (v18 >= 2)
    {
      swift_beginAccess();
      v44 = *(v8 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v8 + 24);
      *(v8 + 24) = 0x8000000000000000;
      sub_1E11A5BD4(v18 - 1, a1, isUniquelyReferenced_nonNull_native);
      *(v8 + 24) = v54;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!v13)
  {
    goto LABEL_40;
  }

  if (v13 != 1)
  {
LABEL_24:
    swift_beginAccess();
    v28 = *(v8 + 16);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v8 + 16);
    *(v8 + 16) = 0x8000000000000000;
    sub_1E11A5BD4(v13 - 1, a1, v29);
    *(v8 + 16) = v54;
LABEL_41:
    swift_endAccess();
    v46 = v5[10];
    v47 = v5[11];
    sub_1E11AD690();
    v48 = sub_1E11B3090();
    v49 = [v48 UTF8String];
    v50 = v48;
    notify_post(v49);
    return;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

  if (qword_1ECEA8130 != -1)
  {
    swift_once();
  }

  v19 = sub_1E11B2FF0();
  __swift_project_value_buffer(v19, qword_1ECEAA708);

  v20 = sub_1E11B2FD0();
  v21 = sub_1E11B3240();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53[0] = v51;
    *v22 = 136315394;
    *(v22 + 4) = sub_1E1183EF8(0xD000000000000029, 0x80000001E11B9D50, v53);
    *(v22 + 12) = 2082;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    v25 = sub_1E11B2F60();
    v27 = sub_1E1183EF8(v25, v26, v53);
    v4 = v3;

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1E1168000, v20, v21, "%s: downgrading to partial trust for certificate %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12F16F0](v51, -1, -1);
    MEMORY[0x1E12F16F0](v22, -1, -1);
  }

  sub_1E11AC414(a1, 0, v5[2], v5[3], v5[4]);
  if (!v4)
  {
    goto LABEL_40;
  }
}

uint64_t sub_1E11AF438(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E11B3360() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1E11B3580();

      sub_1E11B3130();
      v14 = sub_1E11B35A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E11AF5E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E11B3360() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1E11B3580();
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      sub_1E11B2F80();
      v13 = sub_1E11B35A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E11AF798(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E11B3360() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1E11B3580();

      sub_1E11B3130();
      v13 = sub_1E11B35A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}