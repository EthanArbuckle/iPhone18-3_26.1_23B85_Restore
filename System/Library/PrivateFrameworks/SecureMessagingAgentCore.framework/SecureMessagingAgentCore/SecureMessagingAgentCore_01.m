uint64_t StateMachineModel.updateStatement(_:)(sqlite3 *a1)
{
  v161 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v4 = strdup("UPDATE State_Machine_Table SET\n    unique_client_identifier = ?,\n    sim_label_id = ?,\n    uri = ?,\n    uri_supported_state = ?,\n    registration_state = ?,\n    phone_auth_info = ?,\n    participant_info = ?,\n    csr = ?,\n    key_package = ?,\n    next_heartbeat_interval = ?\nWHERE\n    sim_unique_id = ?;");
  if (!v4)
  {
LABEL_331:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, &ppStmt, 0);
  if (v5)
  {
LABEL_43:
    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
LABEL_44:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v154;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    result = swift_willThrow();
LABEL_45:
    v26 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v154 = *v1;
      DWORD2(v154) = v7;
      WORD6(v154) = WORD2(v7);
      v5 = ppStmt;
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v154;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_226:
      v117 = v5;
      swift_once();
      v5 = v117;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v154 + 6) = 0;
    *&v154 = 0;
    v5 = ppStmt;
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v154;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_228:
    v118 = v5;
    swift_once();
    v5 = v118;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v17 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v17))
    {
      __break(1u);
      goto LABEL_268;
    }

    v9 = v10 + v14 - v17;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v5;
  }

  if (v9)
  {
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_230;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v19 = v6 >> 32;
  v14 = v19 - v2;
  if (v19 < v2)
  {
    __break(1u);
    goto LABEL_228;
  }

  v13 = v1;
  v20 = __DataStorage._bytes.getter();
  if (!v20)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v20;
  v21 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v21))
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v9 = v10 + v2 - v21;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_226;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v98 = ppStmt;
    v99 = v12;
    swift_once();
    v5 = v98;
    LODWORD(v12) = v99;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  if (sqlite3_bind_blob(v5, 1, v11, v12, v10))
  {
    goto LABEL_43;
  }

  v27 = ppStmt;
  v28 = *(v1 + 32);
  v29 = *(v1 + 40);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v115 = *(v1 + 32);
    v116 = *(v1 + 40);
    swift_once();
  }

  v30 = String.utf8CString.getter();
  v31 = sqlite3_bind_text(v27, 2, (v30 + 32), -1, v10);

  if (v31)
  {
    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v160 = *(v1 + 48);
  v32 = *(&v160 + 1);
  if (*(&v160 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 3))
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

  v33 = *(&v160 + 1) >> 62;
  if ((*(&v160 + 1) >> 62) > 1)
  {
    if (v33 != 2)
    {
LABEL_80:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v35 = ppStmt;
      v36 = &v154;
      LODWORD(v34) = 0;
      goto LABEL_84;
    }

    v37 = *(v160 + 16);
    v38 = *(v160 + 24);

    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

      v39 += v37 - v40;
    }

    v41 = __OFSUB__(v38, v37);
    v42 = v38 - v37;
    if (!v41)
    {
      v43 = MEMORY[0x2667557A0]();
      if (v43 >= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v43;
      }

      if (v39)
      {
        v34 = v44;
      }

      else
      {
        v34 = 0;
      }

      if (v34 >= 0xFFFFFFFF80000000)
      {
        if (v34 <= 0x7FFFFFFF)
        {
          goto LABEL_83;
        }

LABEL_322:
        __break(1u);
        goto LABEL_323;
      }

LABEL_321:
      __break(1u);
      goto LABEL_322;
    }

LABEL_320:
    __break(1u);
    goto LABEL_321;
  }

  if (v33)
  {
    v45 = v160;
    v46 = (v160 >> 32) - v160;
    if (v160 >> 32 >= v160)
    {
      v47 = v1;

      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v48))
        {
LABEL_327:
          __break(1u);
          goto LABEL_328;
        }

        v39 += v45 - v48;
      }

      v1 = v32 & 0x3FFFFFFFFFFFFFFFLL;
      v49 = MEMORY[0x2667557A0]();
      if (v49 >= v46)
      {
        v34 = v46;
      }

      else
      {
        v34 = v49;
      }

      if (v39)
      {
        if (v34 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_80;
        }

        v1 = v47;
        if (v34 > 0x7FFFFFFF)
        {
LABEL_330:
          __break(1u);
          goto LABEL_331;
        }
      }

      else
      {
        LODWORD(v34) = 0;
        v1 = v47;
      }

LABEL_83:
      v35 = ppStmt;
      v36 = v39;
      goto LABEL_84;
    }

    __break(1u);
    goto LABEL_320;
  }

  LODWORD(v154) = v160;
  WORD2(v154) = WORD2(v160);
  *(&v154 + 6) = *(&v160 + 6);
  LODWORD(v34) = BYTE14(v160);
  v35 = ppStmt;
  v36 = &v154;
LABEL_84:
  if (sqlite3_bind_blob(v35, 3, v36, v34, v10))
  {
    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v50);

    v51 = v154;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v52 = 0;
    *(v52 + 8) = v51;
    swift_willThrow();
    v53 = &v160;
    goto LABEL_86;
  }

  outlined destroy of Data?(&v160);
LABEL_88:
  v54 = *(v1 + 64);
  v55 = *(v1 + 72);
  v56 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v56 != 2)
    {
LABEL_115:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v57 = ppStmt;
      v59 = &v154;
      LODWORD(v58) = 0;
      goto LABEL_119;
    }

    v60 = v1;
    v61 = *(v54 + 16);
    v62 = *(v54 + 24);
    v63 = __DataStorage._bytes.getter();
    if (v63)
    {
      v64 = __DataStorage._offset.getter();
      if (__OFSUB__(v61, v64))
      {
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
        goto LABEL_330;
      }

      v63 += v61 - v64;
    }

    v41 = __OFSUB__(v62, v61);
    v65 = v62 - v61;
    if (v41)
    {
      goto LABEL_324;
    }

    v1 = v55 & 0x3FFFFFFFFFFFFFFFLL;
    v66 = MEMORY[0x2667557A0]();
    if (v66 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v66;
    }

    if (v63)
    {
      v58 = v67;
    }

    else
    {
      v58 = 0;
    }

    if (v58 < 0xFFFFFFFF80000000)
    {
      goto LABEL_325;
    }

    v54 = 0x7FFFFFFFLL;
    if (v58 <= 0x7FFFFFFF)
    {
LABEL_117:
      v1 = v60;
      goto LABEL_118;
    }

    __break(1u);
  }

  else if (!v56)
  {
    *&v154 = *(v1 + 64);
    DWORD2(v154) = v55;
    WORD6(v154) = WORD2(v55);
    v57 = ppStmt;
    LODWORD(v58) = BYTE6(v55);
    v59 = &v154;
    goto LABEL_119;
  }

  v68 = v54;
  v69 = v54 >> 32;
  v70 = v69 - v68;
  if (v69 < v68)
  {
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  v60 = v1;
  v63 = __DataStorage._bytes.getter();
  if (!v63)
  {
    goto LABEL_109;
  }

  v71 = __DataStorage._offset.getter();
  if (__OFSUB__(v68, v71))
  {
    goto LABEL_329;
  }

  v63 += v68 - v71;
LABEL_109:
  v1 = v55 & 0x3FFFFFFFFFFFFFFFLL;
  v72 = MEMORY[0x2667557A0]();
  if (v72 >= v70)
  {
    v58 = v70;
  }

  else
  {
    v58 = v72;
  }

  if (!v63)
  {
    LODWORD(v58) = 0;
    goto LABEL_117;
  }

  if (v58 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_115;
  }

  v1 = v60;
  if (v58 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_150:
    LODWORD(v77) = 0;
    goto LABEL_151;
  }

LABEL_118:
  v57 = ppStmt;
  v59 = v63;
LABEL_119:
  result = sqlite3_bind_blob(v57, 4, v59, v58, v10);
  if (result)
  {
    goto LABEL_43;
  }

  v73 = *(v1 + 80);
  v74 = *(v1 + 88);
  v75 = v74 >> 62;
  if ((v74 >> 62) > 1)
  {
    if (v75 != 2)
    {
LABEL_147:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v76 = ppStmt;
      v78 = &v154;
      LODWORD(v77) = 0;
      goto LABEL_153;
    }

    v60 = v1;
    v79 = *(v73 + 16);
    v80 = *(v73 + 24);
    result = __DataStorage._bytes.getter();
    v63 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v79, result))
      {
LABEL_335:
        __break(1u);
        goto LABEL_336;
      }

      v63 += v79 - result;
    }

    v41 = __OFSUB__(v80, v79);
    v81 = v80 - v79;
    if (v41)
    {
      goto LABEL_333;
    }

    v1 = v74 & 0x3FFFFFFFFFFFFFFFLL;
    result = MEMORY[0x2667557A0]();
    if (result >= v81)
    {
      v82 = v81;
    }

    else
    {
      v82 = result;
    }

    if (v63)
    {
      v77 = v82;
    }

    else
    {
      v77 = 0;
    }

    if (v77 < 0xFFFFFFFF80000000)
    {
      goto LABEL_334;
    }

    v73 = 0x7FFFFFFFLL;
    if (v77 <= 0x7FFFFFFF)
    {
LABEL_151:
      v1 = v60;
      goto LABEL_152;
    }

    __break(1u);
  }

  else if (!v75)
  {
    *&v154 = *(v1 + 80);
    DWORD2(v154) = v74;
    WORD6(v154) = WORD2(v74);
    v76 = ppStmt;
    LODWORD(v77) = BYTE6(v74);
    v78 = &v154;
    goto LABEL_153;
  }

  v83 = v73;
  v84 = v73 >> 32;
  v85 = v84 - v83;
  if (v84 < v83)
  {
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
    goto LABEL_335;
  }

  v60 = v1;
  v63 = __DataStorage._bytes.getter();
  if (!v63)
  {
    goto LABEL_141;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(v83, result))
  {
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
    goto LABEL_338;
  }

  v63 += v83 - result;
LABEL_141:
  v1 = v74 & 0x3FFFFFFFFFFFFFFFLL;
  result = MEMORY[0x2667557A0]();
  if (result >= v85)
  {
    v77 = v85;
  }

  else
  {
    v77 = result;
  }

  if (!v63)
  {
    goto LABEL_150;
  }

  if (v77 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_147;
  }

  v1 = v60;
  if (v77 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_176:
    v95 = result;
    v96 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v97 = v1;

      v92 = __DataStorage._bytes.getter();
      if (!v92)
      {
        goto LABEL_180;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v95, result))
      {
        v92 += v95 - result;
LABEL_180:
        v1 = v74 & 0x3FFFFFFFFFFFFFFFLL;
        result = MEMORY[0x2667557A0]();
        if (result >= v96)
        {
          v87 = v96;
        }

        else
        {
          v87 = result;
        }

        if (v92)
        {
          if (v87 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_186;
          }

          v1 = v97;
          if (v87 > 0x7FFFFFFF)
          {
LABEL_346:
            __break(1u);
            goto LABEL_347;
          }
        }

        else
        {
          LODWORD(v87) = 0;
          v1 = v97;
        }

LABEL_189:
        v88 = ppStmt;
        v89 = v92;
        goto LABEL_190;
      }

LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
      goto LABEL_346;
    }

    goto LABEL_337;
  }

LABEL_152:
  v76 = ppStmt;
  v78 = v63;
LABEL_153:
  if (sqlite3_bind_blob(v76, 5, v78, v77, v10))
  {
    goto LABEL_43;
  }

  v159 = *(v1 + 96);
  v74 = *(&v159 + 1);
  if (*(&v159 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 6))
    {
      goto LABEL_43;
    }

    goto LABEL_193;
  }

  result = v159;
  v86 = *(&v159 + 1) >> 62;
  if ((*(&v159 + 1) >> 62) > 1)
  {
    if (v86 != 2)
    {
LABEL_186:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v88 = ppStmt;
      v89 = &v154;
      LODWORD(v87) = 0;
      goto LABEL_190;
    }

    v90 = *(v159 + 16);
    v91 = *(v159 + 24);

    result = __DataStorage._bytes.getter();
    v92 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v90, result))
      {
LABEL_341:
        __break(1u);
        goto LABEL_342;
      }

      v92 += v90 - result;
    }

    v41 = __OFSUB__(v91, v90);
    v93 = v91 - v90;
    if (!v41)
    {
      result = MEMORY[0x2667557A0]();
      if (result >= v93)
      {
        v94 = v93;
      }

      else
      {
        v94 = result;
      }

      if (v92)
      {
        v87 = v94;
      }

      else
      {
        v87 = 0;
      }

      if (v87 >= 0xFFFFFFFF80000000)
      {
        if (v87 <= 0x7FFFFFFF)
        {
          goto LABEL_189;
        }

        goto LABEL_340;
      }

LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
      goto LABEL_341;
    }

LABEL_338:
    __break(1u);
    goto LABEL_339;
  }

  if (v86)
  {
    goto LABEL_176;
  }

  LODWORD(v154) = v159;
  WORD2(v154) = WORD2(v159);
  *(&v154 + 6) = *(&v159 + 6);
  LODWORD(v87) = BYTE14(v159);
  v88 = ppStmt;
  v89 = &v154;
LABEL_190:
  if (sqlite3_bind_blob(v88, 6, v89, v87, v10))
  {
    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v100);

    v101 = v154;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v102 = 0;
    *(v102 + 8) = v101;
    swift_willThrow();
    v53 = &v159;
    goto LABEL_86;
  }

  outlined destroy of Data?(&v159);
LABEL_193:
  v158 = *(v1 + 112);
  v103 = *(&v158 + 1);
  if (*(&v158 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 7))
    {
      goto LABEL_43;
    }

    goto LABEL_236;
  }

  result = v158;
  v104 = *(&v158 + 1) >> 62;
  if ((*(&v158 + 1) >> 62) > 1)
  {
    if (v104 != 2)
    {
LABEL_223:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v106 = ppStmt;
      v105 = 0;
      goto LABEL_224;
    }

    v13 = v1;
    v107 = *(v158 + 16);
    v108 = *(v158 + 24);

    result = __DataStorage._bytes.getter();
    v9 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v107, result))
      {
LABEL_347:
        __break(1u);
        goto LABEL_348;
      }

      v9 += v107 - result;
    }

    v41 = __OFSUB__(v108, v107);
    v109 = v108 - v107;
    if (v41)
    {
      goto LABEL_344;
    }

    v1 = v103 & 0x3FFFFFFFFFFFFFFFLL;
    result = MEMORY[0x2667557A0]();
    if (result >= v109)
    {
      v110 = v109;
    }

    else
    {
      v110 = result;
    }

    if (v9)
    {
      v111 = v110;
    }

    else
    {
      v111 = 0;
    }

    if (v111 < 0xFFFFFFFF80000000)
    {
      goto LABEL_345;
    }

    if (v111 <= 0x7FFFFFFF)
    {
      goto LABEL_232;
    }

    __break(1u);
    goto LABEL_213;
  }

  if (v104)
  {
LABEL_213:
    v112 = result;
    v113 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v13 = v1;

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_217;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v112, result))
      {
        v9 += v112 - result;
LABEL_217:
        v1 = v103 & 0x3FFFFFFFFFFFFFFFLL;
        result = MEMORY[0x2667557A0]();
        if (result >= v113)
        {
          v111 = v113;
        }

        else
        {
          v111 = result;
        }

        if (v9)
        {
          if (v111 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_223;
          }

          if (v111 > 0x7FFFFFFF)
          {
LABEL_352:
            __break(1u);
            goto LABEL_353;
          }

LABEL_232:
          v114 = sqlite3_bind_blob(ppStmt, 7, v9, v111, v10);
          v1 = v13;
          goto LABEL_233;
        }

LABEL_230:
        LODWORD(v111) = 0;
        goto LABEL_232;
      }

LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
      goto LABEL_352;
    }

    goto LABEL_343;
  }

  LODWORD(v154) = v158;
  WORD2(v154) = WORD2(v158);
  *(&v154 + 6) = *(&v158 + 6);
  v105 = BYTE14(v158);
  v106 = ppStmt;
LABEL_224:
  v114 = sqlite3_bind_blob(v106, 7, &v154, v105, v10);
LABEL_233:
  if (v114)
  {
    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v119);

    v120 = v154;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v121 = 0;
    *(v121 + 8) = v120;
    swift_willThrow();
    v53 = &v158;
    goto LABEL_86;
  }

  outlined destroy of Data?(&v158);
LABEL_236:
  v157 = *(v1 + 128);
  if (*(&v157 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 8))
    {
      goto LABEL_43;
    }

    goto LABEL_275;
  }

  result = v157;
  v122 = *(&v157 + 1) >> 62;
  v7 = v1;
  if ((*(&v157 + 1) >> 62) > 1)
  {
    if (v122 != 2)
    {
LABEL_266:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v124 = ppStmt;
      v125 = &v154;
      LODWORD(v123) = 0;
      goto LABEL_272;
    }

    v126 = *(v157 + 16);
    v127 = *(v157 + 24);

    result = __DataStorage._bytes.getter();
    v2 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v126, result))
      {
LABEL_353:
        __break(1u);
        goto LABEL_354;
      }

      v2 += v126 - result;
    }

    v41 = __OFSUB__(v127, v126);
    v128 = v127 - v126;
    if (v41)
    {
      goto LABEL_350;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v128)
    {
      v129 = v128;
    }

    else
    {
      v129 = result;
    }

    if (v2)
    {
      v123 = v129;
    }

    else
    {
      v123 = 0;
    }

    if (v123 < 0xFFFFFFFF80000000)
    {
      goto LABEL_351;
    }

    if (v123 <= 0x7FFFFFFF)
    {
      goto LABEL_271;
    }

    __break(1u);
    goto LABEL_256;
  }

  if (v122)
  {
LABEL_256:
    v130 = result;
    v131 = (result >> 32) - result;
    if (result >> 32 >= result)
    {

      v2 = __DataStorage._bytes.getter();
      if (!v2)
      {
        goto LABEL_260;
      }

      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v130, result))
      {
        v2 += v130 - result;
LABEL_260:
        result = MEMORY[0x2667557A0]();
        if (result >= v131)
        {
          v123 = v131;
        }

        else
        {
          v123 = result;
        }

        if (v2)
        {
          if (v123 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_266;
          }

          if (v123 > 0x7FFFFFFF)
          {
LABEL_358:
            __break(1u);
            goto LABEL_359;
          }

LABEL_271:
          v124 = ppStmt;
          v125 = v2;
          goto LABEL_272;
        }

LABEL_269:
        LODWORD(v123) = 0;
        goto LABEL_271;
      }

LABEL_354:
      __break(1u);
      goto LABEL_355;
    }

    goto LABEL_349;
  }

  LODWORD(v154) = v157;
  WORD2(v154) = WORD2(v157);
  *(&v154 + 6) = *(&v157 + 6);
  LODWORD(v123) = BYTE14(v157);
  v124 = ppStmt;
  v125 = &v154;
LABEL_272:
  if (sqlite3_bind_blob(v124, 8, v125, v123, v10))
  {
    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    v132 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v132);

    v133 = v154;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v134 = 0;
    *(v134 + 8) = v133;
    swift_willThrow();
    v53 = &v157;
    goto LABEL_86;
  }

  outlined destroy of Data?(&v157);
  v1 = v7;
LABEL_275:
  v135 = v1;
  v156 = *(v1 + 144);
  if (*(&v156 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 9))
    {
      goto LABEL_43;
    }

LABEL_312:
    if (*(v1 + 168))
    {
      if (sqlite3_bind_null(ppStmt, 10))
      {
        goto LABEL_43;
      }
    }

    else if (sqlite3_bind_double(ppStmt, 10, *(v1 + 160)))
    {
      goto LABEL_43;
    }

    v150 = ppStmt;
    v151 = *(v135 + 16);
    v152 = *(v135 + 24);
    v153 = String.utf8CString.getter();
    LODWORD(v150) = sqlite3_bind_text(v150, 11, (v153 + 32), -1, v10);

    if (!v150)
    {
      result = ppStmt;
      goto LABEL_45;
    }

    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  result = v156;
  v136 = *(&v156 + 1) >> 62;
  if ((*(&v156 + 1) >> 62) > 1)
  {
    if (v136 != 2)
    {
LABEL_305:
      *(&v154 + 6) = 0;
      *&v154 = 0;
      v138 = ppStmt;
      v139 = &v154;
      LODWORD(v137) = 0;
      goto LABEL_309;
    }

    v140 = *(v156 + 16);
    v141 = *(v156 + 24);

    result = __DataStorage._bytes.getter();
    v142 = result;
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v140, result))
      {
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      v142 += v140 - result;
    }

    v41 = __OFSUB__(v141, v140);
    v143 = v141 - v140;
    if (v41)
    {
      goto LABEL_356;
    }

    result = MEMORY[0x2667557A0]();
    if (result >= v143)
    {
      v144 = v143;
    }

    else
    {
      v144 = result;
    }

    if (v142)
    {
      v137 = v144;
    }

    else
    {
      v137 = 0;
    }

    if (v137 < 0xFFFFFFFF80000000)
    {
      goto LABEL_357;
    }

    if (v137 <= 0x7FFFFFFF)
    {
      goto LABEL_308;
    }

    __break(1u);
  }

  else if (!v136)
  {
    LODWORD(v154) = v156;
    WORD2(v154) = WORD2(v156);
    *(&v154 + 6) = *(&v156 + 6);
    LODWORD(v137) = BYTE14(v156);
    v138 = ppStmt;
    v139 = &v154;
LABEL_309:
    if (!sqlite3_bind_blob(v138, 9, v139, v137, v10))
    {
      outlined destroy of Data?(&v156);
      goto LABEL_312;
    }

    *&v154 = 0x726F7272456C7173;
    *(&v154 + 1) = 0xE90000000000003ALL;
    v147 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v147);

    v148 = v154;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v149 = 0;
    *(v149 + 8) = v148;
    swift_willThrow();
    v53 = &v156;
LABEL_86:
    result = outlined destroy of Data?(v53);
    goto LABEL_45;
  }

  v145 = result;
  v146 = (result >> 32) - result;
  if (result >> 32 < result)
  {
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v142 = __DataStorage._bytes.getter();
  if (!v142)
  {
    goto LABEL_299;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(v145, result))
  {
LABEL_360:
    __break(1u);
    goto LABEL_361;
  }

  v142 += v145 - result;
LABEL_299:
  result = MEMORY[0x2667557A0]();
  if (result >= v146)
  {
    v137 = v146;
  }

  else
  {
    v137 = result;
  }

  if (!v142)
  {
    LODWORD(v137) = 0;
    goto LABEL_308;
  }

  if (v137 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_305;
  }

  if (v137 <= 0x7FFFFFFF)
  {
LABEL_308:
    v138 = ppStmt;
    v139 = v142;
    goto LABEL_309;
  }

LABEL_361:
  __break(1u);
  return result;
}

sqlite3_stmt *StateMachineModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM State_Machine_Table WHERE sim_unique_id = ?;");
  if (!v3)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0))
  {
    goto LABEL_6;
  }

  v4 = ppStmt[0];
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v13 = *(v1 + 16);
    swift_once();
  }

  v7 = SQLITE_TRANSIENT;
  v8 = String.utf8CString.getter();
  LODWORD(v7) = sqlite3_bind_text(v4, 1, (v8 + 32), -1, v7);

  if (v7)
  {
LABEL_6:
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v9);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0x726F7272456C7173;
    *(v10 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static StateMachineModel.converter@<X0>(sqlite3_stmt *a1@<X0>, _OWORD *a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_15;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
    goto LABEL_13;
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || !sqlite3_column_text(a1, 2))
  {
LABEL_12:

LABEL_13:
    v22 = v7;
    v23 = v9;
    goto LABEL_14;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  if (sqlite3_column_type(a1, 4) == 5 || (v76 = v13, (v16 = sqlite3_column_blob(a1, 4)) == 0))
  {

    goto LABEL_12;
  }

  v17 = v16;
  v87 = v15;
  v18 = sqlite3_column_bytes(a1, 4);
  v19 = specialized Data.init(bytes:count:)(v17, v18);
  v21 = v20;
  if (sqlite3_column_type(a1, 5) == 5)
  {

    outlined consume of Data._Representation(v7, v9);
    v22 = v19;
    v23 = v21;
LABEL_14:
    outlined consume of Data._Representation(v22, v23);
LABEL_15:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 3;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }

  *&v75 = v19;
  *(&v75 + 1) = v21;
  v26 = sqlite3_column_blob(a1, 5);
  if (!v26)
  {

    outlined consume of Data._Representation(v7, v9);
    v23 = v21;
    v22 = v19;
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sqlite3_column_bytes(a1, 5);
  v29 = specialized Data.init(bytes:count:)(v27, v28);
  v73 = v30;
  v74 = v29;
  if (sqlite3_column_type(a1, 3) == 5 || (v31 = sqlite3_column_blob(a1, 3)) == 0)
  {
    v71 = 0xF000000000000000;
    v72 = 0;
  }

  else
  {
    v32 = v31;
    v33 = sqlite3_column_bytes(a1, 3);
    v34 = specialized Data.init(bytes:count:)(v32, v33);
    v71 = v35;
    v72 = v34;
  }

  if (sqlite3_column_type(a1, 6) == 5 || (v36 = sqlite3_column_blob(a1, 6)) == 0)
  {
    v69 = 0xF000000000000000;
    v70 = 0;
  }

  else
  {
    v37 = v36;
    v38 = sqlite3_column_bytes(a1, 6);
    v39 = specialized Data.init(bytes:count:)(v37, v38);
    v69 = v40;
    v70 = v39;
  }

  if (sqlite3_column_type(a1, 7) == 5 || (v41 = sqlite3_column_blob(a1, 7)) == 0)
  {
    v67 = 0xF000000000000000;
    v68 = 0;
  }

  else
  {
    v42 = v41;
    v43 = sqlite3_column_bytes(a1, 7);
    v44 = specialized Data.init(bytes:count:)(v42, v43);
    v67 = v45;
    v68 = v44;
  }

  if (sqlite3_column_type(a1, 8) == 5 || (v46 = sqlite3_column_blob(a1, 8)) == 0)
  {
    v65 = 0xF000000000000000;
    v66 = 0;
  }

  else
  {
    v47 = v46;
    v48 = sqlite3_column_bytes(a1, 8);
    v49 = specialized Data.init(bytes:count:)(v47, v48);
    v65 = v50;
    v66 = v49;
  }

  if (sqlite3_column_type(a1, 9) == 5 || (v51 = sqlite3_column_blob(a1, 9)) == 0)
  {
    v63 = 0xF000000000000000;
    v64 = 0;
  }

  else
  {
    v52 = v51;
    v53 = sqlite3_column_bytes(a1, 9);
    v54 = specialized Data.init(bytes:count:)(v52, v53);
    v63 = v55;
    v64 = v54;
  }

  v56 = sqlite3_column_type(a1, 10);
  v57 = 0.0;
  if (v56 != 5)
  {
    v57 = sqlite3_column_double(a1, 10);
  }

  *&v77 = v7;
  *(&v77 + 1) = v9;
  *&v78 = v10;
  *(&v78 + 1) = v12;
  *&v79 = v76;
  *(&v79 + 1) = v87;
  *&v80 = v72;
  *(&v80 + 1) = v71;
  v81 = v75;
  *&v82 = v74;
  *(&v82 + 1) = v73;
  *&v83 = v70;
  *(&v83 + 1) = v69;
  *&v84 = v68;
  *(&v84 + 1) = v67;
  *&v85 = v66;
  *(&v85 + 1) = v65;
  *v86 = v64;
  *&v86[8] = v63;
  *&v86[16] = v57;
  v86[24] = v56 == 5;
  result = DeregisterKeyPackageRequest.pushTokenForTesting.modify(&v77);
  v58 = *v86;
  a2[8] = v85;
  a2[9] = v58;
  *(a2 + 153) = *&v86[9];
  v59 = v82;
  a2[4] = v81;
  a2[5] = v59;
  v60 = v84;
  a2[6] = v83;
  a2[7] = v60;
  v61 = v78;
  *a2 = v77;
  a2[1] = v61;
  v62 = v80;
  a2[2] = v79;
  a2[3] = v62;
  return result;
}

__n128 StateMachineModel.init(uniqueClientIdentifier:simUniqueID:simLabelID:uri:uriSupportedState:registrationState:phoneAuthInfo:participantInfo:csr:keyPackage:nextHeartbeatInterval:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __n128 a15, uint64_t a16, char a17)
{
  result = a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 168) = a17 & 1;
  return result;
}

uint64_t (*static StateMachineModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static StateMachineModel.converter;

  return v0;
}

uint64_t static StateMachineModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static StateMachineModel.converter = a1;
  qword_281EF79B0 = a2;
}

uint64_t key path getter for static StateMachineModel.converter : StateMachineModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static StateMachineModel.converter;
  v2 = qword_281EF79B0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned StateMachineModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static StateMachineModel.converter : StateMachineModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static StateMachineModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out StateMachineModel?, @error @owned Error)partial apply;
  qword_281EF79B0 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance StateMachineModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static StateMachineModel.converter;
  v0 = qword_281EF79B0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned StateMachineModel?, @error @owned Error)partial apply;
}

uint64_t one-time initialization function for converter()
{
  swift_beginAccess();
  static StateMachineQuery.converter = static StateMachineModel.converter;
  qword_280016768 = qword_281EF79B0;
}

{
  swift_beginAccess();
  static OutgoingEventQuery.converter = static OutgoingEventModel.converter;
  qword_2800167A8 = *algn_281EF7B58;
}

{
  swift_beginAccess();
  static IncomingEventQuery.converter = static IncomingEventModel.converter;
  qword_280016860 = unk_281EF81C0;
}

{
  swift_beginAccess();
  static GroupStateQuery.converter = static GroupStateModel.converter;
  qword_2800168D8 = qword_281EF8580;
}

{
  swift_beginAccess();
  static EpochQuery.converter = static EpochModel.converter;
  qword_2800168F8 = qword_281EF8668;
}

{
  swift_beginAccess();
  static ClientStateQuery.converter = static ClientStateModel.converter;
  qword_280016948 = qword_281EF87B0;
}

{
  swift_beginAccess();
  static KeyPackageQuery.converter = static KeyPackageModel.converter;
  qword_280016958 = qword_281EF87E0;
}

{
  swift_beginAccess();
  static SecureMessagingClientQuery.converter = static SecureMessagingClientModel.converter;
  qword_2800169F0 = qword_281EF8B10;
}

{
  swift_beginAccess();
  static FailureToDecryptRetryQuery.converter = static FailureToDecryptRetryModel.converter;
  qword_280016A00 = qword_281EF8B40;
}

{
  swift_beginAccess();
  static KeyUpdateQuery.converter = static KeyUpdateModel.converter;
  qword_280016A10 = qword_281EF8C18;
}

uint64_t *StateMachineQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static StateMachineQuery.converter;
}

uint64_t static StateMachineQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static StateMachineQuery.converter;

  return v0;
}

uint64_t static StateMachineQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static StateMachineQuery.converter = a1;
  qword_280016768 = a2;
}

uint64_t (*static StateMachineQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static StateMachineQuery.converter : StateMachineQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static StateMachineQuery.converter;
  v2 = qword_280016768;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned StateMachineModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static StateMachineQuery.converter : StateMachineQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static StateMachineQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out StateMachineModel?, @error @owned Error);
  qword_280016768 = v3;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance StateMachineQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static StateMachineQuery.converter;
  v0 = qword_280016768;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned StateMachineModel?, @error @owned Error);
}

sqlite3_stmt *specialized static StateMachineModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS State_Machine_Table (\n    unique_client_identifier BLOB NOT NULL,\n    sim_unique_id TEXT PRIMARY KEY NOT NULL,\n    sim_label_id TEXT NOT NULL,\n    uri BLOB,\n    uri_supported_state BLOB NOT NULL,\n    registration_state BLOB NOT NULL,\n    phone_auth_info BLOB,\n    participant_info BLOB,\n    csr BLOB,\n    key_package BLOB,\n    next_heartbeat_interval REAL\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static StateMachineModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS State_Machine_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type SqliteError and conformance SqliteError()
{
  result = lazy protocol witness table cache variable for type SqliteError and conformance SqliteError;
  if (!lazy protocol witness table cache variable for type SqliteError and conformance SqliteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError and conformance SqliteError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError and conformance SqliteError;
  if (!lazy protocol witness table cache variable for type SqliteError and conformance SqliteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError and conformance SqliteError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError and conformance SqliteError;
  if (!lazy protocol witness table cache variable for type SqliteError and conformance SqliteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError and conformance SqliteError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError and conformance SqliteError;
  if (!lazy protocol witness table cache variable for type SqliteError and conformance SqliteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError and conformance SqliteError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError and conformance SqliteError;
  if (!lazy protocol witness table cache variable for type SqliteError and conformance SqliteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError and conformance SqliteError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError and conformance SqliteError;
  if (!lazy protocol witness table cache variable for type SqliteError and conformance SqliteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError and conformance SqliteError);
  }

  return result;
}

uint64_t outlined destroy of Data?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

sqlite3_stmt *specialized StateMachineQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("SELECT * FROM State_Machine_Table;");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265260B78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out StateMachineModel?, @error @owned Error)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v14 = a1;
  v5(v12, &v14);
  if (!v3)
  {
    v8 = v13[0];
    *(a2 + 128) = v12[8];
    *(a2 + 144) = v8;
    *(a2 + 153) = *(v13 + 9);
    v9 = v12[5];
    *(a2 + 64) = v12[4];
    *(a2 + 80) = v9;
    v10 = v12[7];
    *(a2 + 96) = v12[6];
    *(a2 + 112) = v10;
    v11 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v11;
    result = v12[3];
    *(a2 + 32) = v12[2];
    *(a2 + 48) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned StateMachineModel?, @error @owned Error)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v12, *a1);
  if (!v3)
  {
    v8 = v13[0];
    *(a2 + 128) = v12[8];
    *(a2 + 144) = v8;
    *(a2 + 153) = *(v13 + 9);
    v9 = v12[5];
    *(a2 + 64) = v12[4];
    *(a2 + 80) = v9;
    v10 = v12[7];
    *(a2 + 96) = v12[6];
    *(a2 + 112) = v10;
    v11 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v11;
    result = v12[3];
    *(a2 + 32) = v12[2];
    *(a2 + 48) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned StateMachineModel?, @error @owned Error)@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v11);
  if (!v2)
  {
    v7 = v12[0];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    *(a1 + 153) = *(v12 + 9);
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 384) = a1;
  *(v3 + 392) = v2;
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  *(v3 + 400) = Identity;
  v6 = *(Identity - 8);
  *(v3 + 408) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 416) = swift_task_alloc();
  v8 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v8;
  *(v3 + 112) = a2[6];
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  v10 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v10;
  type metadata accessor for RegistrationActor();
  *(v3 + 424) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 432) = v12;
  *(v3 + 440) = v11;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:), v12, v11);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:)()
{
  v1 = *(*(v0 + 392) + 16);
  *(v0 + 368) = &type metadata for IdentityRequest;
  *(v0 + 376) = &protocol witness table for IdentityRequest;
  v2 = swift_allocObject();
  *(v0 + 344) = v2;
  v3 = *(v0 + 96);
  v2[5] = *(v0 + 80);
  v2[6] = v3;
  v2[7] = *(v0 + 112);
  v4 = *(v0 + 32);
  v2[1] = *(v0 + 16);
  v2[2] = v4;
  v5 = *(v0 + 64);
  v2[3] = *(v0 + 48);
  v2[4] = v5;
  v6 = *(*v1 + 88);
  outlined init with copy of IdentityRequest(v0 + 16, v0 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:);

  return v10(v0 + 304, v0 + 344);
}

{
  v2 = *v1;
  v3 = (*v1)[56];
  v8 = *v1;
  (*v1)[57] = v0;

  if (v0)
  {
    v4 = v2[54];
    v5 = v2[55];
    v6 = KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 43);
    v4 = v2[54];
    v5 = v2[55];
    v6 = KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 424);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 416);
  if (v2)
  {
    v4 = *(v0 + 384);
    v5 = *(v0 + 240);
    v6 = *(v0 + 256);
    v7 = *(v0 + 288);
    v4[2] = *(v0 + 272);
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
  }

  else
  {
    (*(*(v0 + 408) + 104))(*(v0 + 416), *MEMORY[0x277D4C9C8], *(v0 + 400));
    type metadata accessor for KDSRegistration.GetIdentityError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v9 = *(v0 + 416);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[53];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 43);
  v2 = v0[57];
  v3 = v0[52];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26526139C()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[4], v0[5]);
  v1 = v0[7];

  outlined consume of Data._Representation(v0[8], v0[9]);
  v2 = v0[11];

  v3 = v0[13];

  v4 = v0[15];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[14], v4);
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.getClientID(request:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  Client = type metadata accessor for KDSRegistration.GetClientIDError.ErrorType();
  *(v3 + 320) = Client;
  v6 = *(Client - 8);
  *(v3 + 328) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 336) = swift_task_alloc();
  v8 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v8;
  *(v3 + 80) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  type metadata accessor for RegistrationActor();
  *(v3 + 344) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 352) = v11;
  *(v3 + 360) = v10;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachineNetworkOperator.getClientID(request:), v11, v10);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.getClientID(request:)()
{
  v1 = *(*(v0 + 312) + 16);
  *(v0 + 288) = &type metadata for GetClientIDRequest;
  *(v0 + 296) = &protocol witness table for GetClientIDRequest;
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  v3 = *(v0 + 64);
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 80);
  v4 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v4;
  v5 = *(*v1 + 88);
  outlined init with copy of GetClientIDRequest(v0 + 16, v0 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 368) = v7;
  *v7 = v0;
  v7[1] = KDSRegistrationStateMachineNetworkOperator.getClientID(request:);

  return v9(v0 + 224, v0 + 264);
}

{
  v2 = *v1;
  v3 = (*v1)[46];
  v8 = *v1;
  (*v1)[47] = v0;

  if (v0)
  {
    v4 = v2[44];
    v5 = v2[45];
    v6 = KDSRegistrationStateMachineNetworkOperator.getClientID(request:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 33);
    v4 = v2[44];
    v5 = v2[45];
    v6 = KDSRegistrationStateMachineNetworkOperator.getClientID(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 344);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 336);
  if (v2)
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 160);
    v6 = *(v0 + 176);
    v7 = *(v0 + 208);
    v4[2] = *(v0 + 192);
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
  }

  else
  {
    (*(*(v0 + 328) + 104))(*(v0 + 336), *MEMORY[0x277D4C9A0], *(v0 + 320));
    type metadata accessor for KDSRegistration.GetClientIDError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError, MEMORY[0x277D4C9B0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v9 = *(v0 + 336);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[43];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 33);
  v2 = v0[47];
  v3 = v0[42];

  v4 = v0[1];

  return v4();
}

uint64_t sub_265261A2C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v4);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.registerKeyPackage(request:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  v5 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  *(v3 + 320) = v5;
  v6 = *(v5 - 8);
  *(v3 + 328) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 336) = swift_task_alloc();
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  *(v3 + 80) = a2[4];
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  type metadata accessor for RegistrationActor();
  *(v3 + 344) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 352) = v11;
  *(v3 + 360) = v10;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachineNetworkOperator.registerKeyPackage(request:), v11, v10);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.registerKeyPackage(request:)()
{
  v1 = *(*(v0 + 312) + 16);
  *(v0 + 288) = &type metadata for RegisterKeyPackageRequest;
  *(v0 + 296) = &protocol witness table for RegisterKeyPackageRequest;
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  v3 = *(v0 + 64);
  v2[3] = *(v0 + 48);
  v2[4] = v3;
  v2[5] = *(v0 + 80);
  v4 = *(v0 + 32);
  v2[1] = *(v0 + 16);
  v2[2] = v4;
  v5 = *(*v1 + 88);
  outlined init with copy of RegisterKeyPackageRequest(v0 + 16, v0 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 368) = v7;
  *v7 = v0;
  v7[1] = KDSRegistrationStateMachineNetworkOperator.registerKeyPackage(request:);

  return v9(v0 + 224, v0 + 264);
}

{
  v2 = *v1;
  v3 = (*v1)[46];
  v8 = *v1;
  (*v1)[47] = v0;

  if (v0)
  {
    v4 = v2[44];
    v5 = v2[45];
    v6 = KDSRegistrationStateMachineNetworkOperator.getClientID(request:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 33);
    v4 = v2[44];
    v5 = v2[45];
    v6 = KDSRegistrationStateMachineNetworkOperator.registerKeyPackage(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 344);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 336);
  if (v2)
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 208);
    *v4 = *(v0 + 176);
    *(v4 + 8) = v5;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
  }

  else
  {
    (*(*(v0 + 328) + 104))(*(v0 + 336), *MEMORY[0x277D4CB28], *(v0 + 320));
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v9 = *(v0 + 336);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_265262038()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v4);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v5 = type metadata accessor for KDSRegistration.DeregisterKeyPackageError.ErrorType();
  *(v3 + 160) = v5;
  v6 = *(v5 - 8);
  *(v3 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  *(v3 + 176) = v8;
  *(v3 + 184) = v9;
  *(v3 + 192) = v10;
  *(v3 + 200) = *(a2 + 1);
  type metadata accessor for RegistrationActor();
  *(v3 + 216) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 224) = v12;
  *(v3 + 232) = v11;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:), v12, v11);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:)()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = *(v0[19] + 16);
  v0[16] = &type metadata for DeregisterKeyPackageRequest;
  v0[17] = &protocol witness table for DeregisterKeyPackageRequest;
  v6 = swift_allocObject();
  v0[13] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v7 = *(*v5 + 88);

  outlined copy of Data?(v2, v1);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:);

  return (v11)(v0 + 8, v0 + 13);
}

{
  v2 = *v1;
  v3 = (*v1)[30];
  v8 = *v1;
  (*v1)[31] = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 13);
    v4 = v2[28];
    v5 = v2[29];
    v6 = KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 216);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 176);
  if (v2)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 48);
    *v4 = *(v0 + 16);
    *(v4 + 8) = v5;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
  }

  else
  {
    (*(*(v0 + 168) + 104))(*(v0 + 176), *MEMORY[0x277D4CB80], *(v0 + 160));
    type metadata accessor for KDSRegistration.DeregisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError, MEMORY[0x277D4CB88]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v9 = *(v0 + 176);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v2 = v0[31];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2652626CC()
{
  v1 = v0[3];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[4], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  KeyPackage = type metadata accessor for KDSRegistration.QueryKeyPackageError.ErrorType();
  *(v3 + 168) = KeyPackage;
  v6 = *(KeyPackage - 8);
  *(v3 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v3 + 184) = v8;
  *(v3 + 192) = v9;
  *(v3 + 200) = *(a2 + 1);
  type metadata accessor for RegistrationActor();
  *(v3 + 216) = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 224) = v11;
  *(v3 + 232) = v10;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:), v11, v10);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:)()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = *(v0[20] + 16);
  v0[17] = &type metadata for QueryKeyPackageRequest;
  v0[18] = &protocol witness table for QueryKeyPackageRequest;
  v0[14] = v3;
  v0[15] = v2;
  v0[16] = v1;
  v5 = *(*v4 + 88);

  outlined copy of Data?(v2, v1);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:);

  return (v9)(v0 + 9, v0 + 14);
}

{
  v2 = *v1;
  v3 = (*v1)[30];
  v8 = *v1;
  (*v1)[31] = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 14);
    v4 = v2[28];
    v5 = v2[29];
    v6 = KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = *(v0 + 216);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24SecureMessagingAgentCore8Response_pMd, &_s24SecureMessagingAgentCore8Response_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 184);
  if (v2)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 24);
    v6 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 48);
    *v4 = *(v0 + 16);
    *(v4 + 8) = v5;
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *(v4 + 48) = v6;
  }

  else
  {
    (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277D4CAC0], *(v0 + 168));
    type metadata accessor for KDSRegistration.QueryKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError, MEMORY[0x277D4CAD8]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v10 = *(v0 + 184);
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v2 = v0[31];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Double __swiftcall KDSRegistrationStateMachineNetworkOperator.fetchHeartbeatInterval()()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  dispatch thunk of ServerBag.KDS.refreshKeysInterval.getter();
  return result;
}

uint64_t KDSRegistrationStateMachineNetworkOperator.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t KDSRegistrationStateMachineNetworkOperator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t KDSRegistrationStateMachineNetworkOperator.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for RequestManager();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v3)
  {
    [v3 setLogToRegistration_];
  }

  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  static ServerBag.kdsBag.getter();
  return v0;
}

uint64_t KDSRegistrationStateMachineNetworkOperator.init()()
{
  type metadata accessor for RequestManager();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v3)
  {
    [v3 setLogToRegistration_];
  }

  *(v1 + 16) = v3;
  *(v0 + 16) = v1;
  static ServerBag.kdsBag.getter();
  return v0;
}

uint64_t protocol witness for StateMachineNetworkOperator.getClientID(request:) in conformance KDSRegistrationStateMachineNetworkOperator(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2);
}

uint64_t protocol witness for StateMachineNetworkOperator.registerKeyPackage(request:) in conformance KDSRegistrationStateMachineNetworkOperator(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for StateMachineNetworkOperator.deregisterKeyPackage(request:) in conformance KDSRegistrationStateMachineNetworkOperator(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for StateMachineNetworkOperator.fetchIdentity(request:) in conformance KDSRegistrationStateMachineNetworkOperator(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t protocol witness for StateMachineNetworkOperator.queryKeyPackage(request:) in conformance KDSRegistrationStateMachineNetworkOperator(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistrationStateMachineNetworkOperator.fetchIdentity(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistrationStateMachineNetworkOperator.getClientID(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistrationStateMachineNetworkOperator.registerKeyPackage(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistrationStateMachineNetworkOperator.deregisterKeyPackage(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistrationStateMachineNetworkOperator.queryKeyPackage(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t SecureMessagingGroupModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t SecureMessagingGroupModel.secureMessagingGroupID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SecureMessagingGroupModel.swiftMLSGroupID.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t SecureMessagingGroupModel.groupClientContextBlob.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

const char *SecureMessagingGroupModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v2 = v1[5];
  if (v2 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 4;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    result = swift_willThrow();
LABEL_45:
    v30 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = v1[4];
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v6, v2);
  result = strdup("INSERT OR REPLACE INTO SMA_Group_Table (client_id, sma_group_id, swiftmls_group_id) VALUES (?, ?, ?);");
  if (result)
  {
    v7 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
    if (v7)
    {
LABEL_43:
      *&v55 = 0x726F7272456C7173;
      *(&v55 + 1) = 0xE90000000000003ALL;
LABEL_44:
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v27);

      v28 = v55;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = v28;
      swift_willThrow();
      result = outlined consume of Data?(v6, v2);
      goto LABEL_45;
    }

    v8 = *v1;
    v9 = v1[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (!v10)
      {
        *&v55 = *v1;
        DWORD2(v55) = v9;
        WORD6(v55) = WORD2(v9);
        v7 = ppStmt[0];
        LODWORD(v11) = BYTE6(v9);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_8:
          v12 = SQLITE_TRANSIENT;
          v13 = &v55;
          LODWORD(v14) = v11;
LABEL_42:
          if (sqlite3_bind_blob(v7, 1, v13, v14, v12))
          {
            goto LABEL_43;
          }

          v31 = ppStmt[0];
          v32 = v1[2];
          v33 = v1[3];
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v52 = v1[2];
            swift_once();
          }

          v34 = String.utf8CString.getter();
          v35 = sqlite3_bind_text(v31, 2, (v34 + 32), -1, v12);

          if (v35)
          {
            *&v55 = 0x726F7272456C7173;
            *(&v55 + 1) = 0xE90000000000003ALL;
            goto LABEL_44;
          }

          v36 = v2 >> 62;
          if ((v2 >> 62) > 1)
          {
            if (v36 != 2)
            {
LABEL_77:
              *(&v55 + 6) = 0;
              *&v55 = 0;
              v38 = ppStmt[0];
              v39 = &v55;
              LODWORD(v37) = 0;
              goto LABEL_81;
            }

            v40 = *(v6 + 16);
            v41 = *(v6 + 24);
            v42 = __DataStorage._bytes.getter();
            if (v42)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v40, v43))
              {
LABEL_94:
                __break(1u);
                goto LABEL_95;
              }

              v42 += v40 - v43;
            }

            v44 = __OFSUB__(v41, v40);
            v45 = v41 - v40;
            if (v44)
            {
              goto LABEL_92;
            }

            v46 = MEMORY[0x2667557A0]();
            if (v46 >= v45)
            {
              v47 = v45;
            }

            else
            {
              v47 = v46;
            }

            if (v42)
            {
              v37 = v47;
            }

            else
            {
              v37 = 0;
            }

            if (v37 < 0xFFFFFFFF80000000)
            {
              goto LABEL_93;
            }

            if (v37 <= 0x7FFFFFFF)
            {
              goto LABEL_80;
            }

            __break(1u);
          }

          else if (!v36)
          {
            *&v55 = v6;
            WORD4(v55) = v2;
            BYTE10(v55) = BYTE2(v2);
            BYTE11(v55) = BYTE3(v2);
            BYTE12(v55) = BYTE4(v2);
            BYTE13(v55) = BYTE5(v2);
            LODWORD(v37) = BYTE6(v2);
            v38 = ppStmt[0];
            v39 = &v55;
            goto LABEL_81;
          }

          if (v6 >> 32 >= v6)
          {
            v42 = __DataStorage._bytes.getter();
            if (!v42)
            {
              goto LABEL_71;
            }

            v48 = __DataStorage._offset.getter();
            if (!__OFSUB__(v6, v48))
            {
              v42 += v6 - v48;
LABEL_71:
              v49 = MEMORY[0x2667557A0]();
              if (v49 >= (v6 >> 32) - v6)
              {
                v37 = (v6 >> 32) - v6;
              }

              else
              {
                v37 = v49;
              }

              if (!v42)
              {
                LODWORD(v37) = 0;
                goto LABEL_80;
              }

              if (v37 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_77;
              }

              if (v37 <= 0x7FFFFFFF)
              {
LABEL_80:
                v38 = ppStmt[0];
                v39 = v42;
LABEL_81:
                if (!sqlite3_bind_blob(v38, 3, v39, v37, v12))
                {
                  outlined consume of Data?(v6, v2);
                  result = ppStmt[0];
                  goto LABEL_45;
                }

                goto LABEL_43;
              }

LABEL_96:
              __break(1u);
            }

LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

LABEL_84:
        v53 = v7;
        swift_once();
        v7 = v53;
        goto LABEL_8;
      }

      v20 = v8;
      v21 = v8 >> 32;
      v16 = v21 - v20;
      if (v21 >= v20)
      {
        v15 = v1;
        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = v22;
          v24 = __DataStorage._offset.getter();
          if (!__OFSUB__(v20, v24))
          {
            v11 = (v20 - v24 + v23);
LABEL_31:
            v1 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
            v7 = MEMORY[0x2667557A0]();
            if (v7 >= v16)
            {
              v14 = v16;
            }

            else
            {
              v14 = v7;
            }

            if (!v11)
            {
              goto LABEL_38;
            }

            if (v14 < 0xFFFFFFFF80000000)
            {
              __break(1u);
              goto LABEL_84;
            }

            v1 = v15;
            if (v14 > 0x7FFFFFFF)
            {
              __break(1u);
LABEL_38:
              LODWORD(v14) = 0;
              v1 = v15;
            }

LABEL_39:
            v7 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v50 = ppStmt[0];
              v51 = v14;
              swift_once();
              v7 = v50;
              LODWORD(v14) = v51;
            }

            v12 = SQLITE_TRANSIENT;
            v13 = v11;
            goto LABEL_42;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_30:
        v11 = 0;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_86;
    }

    if (v10 != 2)
    {
      *(&v55 + 6) = 0;
      *&v55 = 0;
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_18:
        v12 = SQLITE_TRANSIENT;
        v13 = &v55;
        LODWORD(v14) = 0;
        goto LABEL_42;
      }

LABEL_86:
      v54 = v7;
      swift_once();
      v7 = v54;
      goto LABEL_18;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = __DataStorage._bytes.getter();
    if (v17)
    {
      v18 = v17;
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_89;
      }

      v11 = (v16 - v19 + v18);
    }

    else
    {
      v11 = 0;
    }

    if (__OFSUB__(v15, v16))
    {
      __break(1u);
    }

    else
    {
      v25 = MEMORY[0x2667557A0]();
      if (v25 >= v15 - v16)
      {
        v26 = v15 - v16;
      }

      else
      {
        v26 = v25;
      }

      if (v11)
      {
        v14 = v26;
      }

      else
      {
        v14 = 0;
      }

      if (v14 >= 0xFFFFFFFF80000000)
      {
        if (v14 <= 0x7FFFFFFF)
        {
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  __break(1u);
  return result;
}

const char *SecureMessagingGroupModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v3 = v1[7];
  if (v3 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    result = swift_willThrow();
LABEL_82:
    v40 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = v1[6];
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v7, v3);
  result = strdup("UPDATE SMA_Group_Table SET\n    sma_group_client_context_blob = ?\nWHERE\n    client_id = ? AND sma_group_id = ?;");
  if (result)
  {
    v8 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
    if (v8)
    {
      goto LABEL_80;
    }

    v9 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v9 == 2)
      {
        v14 = v1;
        v15 = *(v7 + 16);
        v16 = *(v7 + 24);
        v1 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
        v17 = __DataStorage._bytes.getter();
        if (v17)
        {
          v11 = v17;
          v1 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
          v17 = __DataStorage._offset.getter();
          if (__OFSUB__(v15, v17))
          {
            __break(1u);
            goto LABEL_95;
          }

          v10 = v11 + v15 - v17;
        }

        else
        {
          v10 = 0;
        }

        v11 = (v16 - v15);
        if (__OFSUB__(v16, v15))
        {
          __break(1u);
        }

        else
        {
          v1 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
          v17 = MEMORY[0x2667557A0]();
          if (v17 >= v11)
          {
            v20 = v16 - v15;
          }

          else
          {
            v20 = v17;
          }

          if (v10)
          {
            v13 = v20;
          }

          else
          {
            v13 = 0;
          }

          if (v13 >= 0xFFFFFFFF80000000)
          {
            if (v13 <= 0x7FFFFFFF)
            {
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_93;
      }

      *(&v53 + 6) = 0;
      *&v53 = 0;
      v8 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_18:
        v11 = SQLITE_TRANSIENT;
        v12 = &v53;
        LODWORD(v13) = 0;
        goto LABEL_43;
      }
    }

    else
    {
      if (!v9)
      {
        *&v53 = v7;
        WORD4(v53) = v3;
        BYTE10(v53) = BYTE2(v3);
        BYTE11(v53) = BYTE3(v3);
        BYTE12(v53) = BYTE4(v3);
        BYTE13(v53) = BYTE5(v3);
        v8 = ppStmt[0];
        LODWORD(v10) = BYTE6(v3);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_8:
          v11 = SQLITE_TRANSIENT;
          v12 = &v53;
          LODWORD(v13) = v10;
          goto LABEL_43;
        }

LABEL_88:
        v47 = v8;
        swift_once();
        v8 = v47;
        goto LABEL_8;
      }

      v2 = v7;
      v15 = (v7 >> 32) - v7;
      if (v7 >> 32 >= v7)
      {
        v14 = v1;
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v11 = v18;
          v19 = __DataStorage._offset.getter();
          if (!__OFSUB__(v7, v19))
          {
            v10 = v11 + v7 - v19;
LABEL_31:
            v1 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
            v8 = MEMORY[0x2667557A0]();
            if (v8 >= v15)
            {
              v13 = v15;
            }

            else
            {
              v13 = v8;
            }

            if (v10)
            {
              if (v13 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_88;
              }

              v1 = v14;
              if (v13 <= 0x7FFFFFFF)
              {
                goto LABEL_40;
              }

              __break(1u);
            }

            LODWORD(v13) = 0;
LABEL_39:
            v1 = v14;
LABEL_40:
            v8 = ppStmt[0];
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v45 = ppStmt[0];
              v46 = v13;
              swift_once();
              v8 = v45;
              LODWORD(v13) = v46;
            }

            v11 = SQLITE_TRANSIENT;
            v12 = v10;
LABEL_43:
            v17 = sqlite3_bind_blob(v8, 1, v12, v13, v11);
            if (!v17)
            {
              v21 = *v1;
              v22 = v1[1];
              v23 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (!v23)
                {
                  *&v53 = *v1;
                  DWORD2(v53) = v22;
                  WORD6(v53) = WORD2(v22);
                  v17 = ppStmt[0];
                  v24 = BYTE6(v22);
                  if (one-time initialization token for SQLITE_TRANSIENT != -1)
                  {
                    v51 = ppStmt[0];
                    swift_once();
                    v17 = v51;
                  }

                  v25 = &v53;
                  LODWORD(v13) = v24;
LABEL_79:
                  if (sqlite3_bind_blob(v17, 2, v25, v13, v11))
                  {
                    goto LABEL_80;
                  }

                  v2 = ppStmt[0];
                  v41 = v1[2];
                  v42 = v1[3];
                  if (one-time initialization token for SQLITE_TRANSIENT == -1)
                  {
LABEL_84:
                    v43 = String.utf8CString.getter();
                    v44 = sqlite3_bind_text(v2, 3, (v43 + 32), -1, v11);

                    if (!v44)
                    {
                      outlined consume of Data?(v7, v3);
                      result = ppStmt[0];
                      goto LABEL_82;
                    }

                    *&v53 = 0x726F7272456C7173;
                    *(&v53 + 1) = 0xE90000000000003ALL;
                    goto LABEL_81;
                  }

LABEL_96:
                  swift_once();
                  goto LABEL_84;
                }

LABEL_63:
                v32 = v21;
                v33 = v21 >> 32;
                v34 = v33 - v32;
                if (v33 < v32)
                {
                  __break(1u);
                  goto LABEL_98;
                }

                v10 = __DataStorage._bytes.getter();
                if (!v10)
                {
                  goto LABEL_67;
                }

                v35 = __DataStorage._offset.getter();
                if (!__OFSUB__(v32, v35))
                {
                  v10 += v32 - v35;
LABEL_67:
                  v36 = MEMORY[0x2667557A0]();
                  if (v36 >= v34)
                  {
                    v13 = v34;
                  }

                  else
                  {
                    v13 = v36;
                  }

                  if (!v10)
                  {
                    LODWORD(v13) = 0;
                    goto LABEL_77;
                  }

                  if (v13 < 0xFFFFFFFF80000000)
                  {
                    __break(1u);
LABEL_73:
                    *(&v53 + 6) = 0;
                    *&v53 = 0;
                    v17 = ppStmt[0];
                    if (one-time initialization token for SQLITE_TRANSIENT == -1)
                    {
LABEL_74:
                      v25 = &v53;
                      LODWORD(v13) = 0;
                      goto LABEL_79;
                    }

LABEL_98:
                    v52 = v17;
                    swift_once();
                    v17 = v52;
                    goto LABEL_74;
                  }

                  if (v13 <= 0x7FFFFFFF)
                  {
LABEL_77:
                    v17 = ppStmt[0];
                    if (one-time initialization token for SQLITE_TRANSIENT == -1)
                    {
LABEL_78:
                      v25 = v10;
                      goto LABEL_79;
                    }

LABEL_93:
                    v49 = v17;
                    v50 = v13;
                    swift_once();
                    v17 = v49;
                    LODWORD(v13) = v50;
                    goto LABEL_78;
                  }

LABEL_103:
                  __break(1u);
                }

LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              if (v23 != 2)
              {
                goto LABEL_73;
              }

              v27 = *(v21 + 16);
              v26 = *(v21 + 24);
              v10 = __DataStorage._bytes.getter();
              if (v10)
              {
                v28 = __DataStorage._offset.getter();
                if (__OFSUB__(v27, v28))
                {
                  goto LABEL_101;
                }

                v10 += v27 - v28;
              }

              v29 = __OFSUB__(v26, v27);
              v30 = v26 - v27;
              if (v29)
              {
                __break(1u);
              }

              else
              {
                v17 = MEMORY[0x2667557A0]();
                if (v17 >= v30)
                {
                  v31 = v30;
                }

                else
                {
                  v31 = v17;
                }

                if (v10)
                {
                  v13 = v31;
                }

                else
                {
                  v13 = 0;
                }

                if (v13 >= 0xFFFFFFFF80000000)
                {
                  v21 = 0x7FFFFFFFLL;
                  if (v13 <= 0x7FFFFFFF)
                  {
                    goto LABEL_77;
                  }

                  __break(1u);
                  goto LABEL_63;
                }
              }

              __break(1u);
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

LABEL_80:
            *&v53 = 0x726F7272456C7173;
            *(&v53 + 1) = 0xE90000000000003ALL;
LABEL_81:
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x266756A70](v37);

            v38 = v53;
            lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
            swift_allocError();
            *v39 = 0;
            *(v39 + 8) = v38;
            swift_willThrow();
            result = outlined consume of Data?(v7, v3);
            goto LABEL_82;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_30:
        v10 = 0;
        goto LABEL_31;
      }

      __break(1u);
    }

    v48 = v8;
    swift_once();
    v8 = v48;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *SecureMessagingGroupModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM SMA_Group_Table WHERE client_id = ? AND sma_group_id = ?;");
  if (!v3)
  {
LABEL_58:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_43:
    *&v40 = 0x726F7272456C7173;
    *(&v40 + 1) = 0xE90000000000003ALL;
    goto LABEL_44;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v40 = *v1;
      DWORD2(v40) = v6;
      WORD6(v40) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v40;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_52:
      v38 = v4;
      swift_once();
      v4 = v38;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v40 + 6) = 0;
    *&v40 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v40;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_54:
    v39 = v4;
    swift_once();
    v4 = v39;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    v8 = 0;
    v18 = v14 - v13;
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v17))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = (v13 - v17 + v16);
  v18 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v4;
  }

  if (v8)
  {
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_56;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v20 = v5;
  v21 = v5 >> 32;
  v13 = v21 - v20;
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_54;
  }

  v12 = v1;
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v24))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v8 = (v20 - v24 + v23);
LABEL_30:
  v1 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_52;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v35 = ppStmt[0];
    v36 = v11;
    swift_once();
    v4 = v35;
    LODWORD(v11) = v36;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  if (sqlite3_bind_blob(v4, 1, v10, v11, v9))
  {
    goto LABEL_43;
  }

  v30 = ppStmt[0];
  v31 = v1[2];
  v32 = v1[3];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v37 = v1[2];
    swift_once();
  }

  v33 = String.utf8CString.getter();
  v34 = sqlite3_bind_text(v30, 2, (v33 + 32), -1, v9);

  if (!v34)
  {
    result = ppStmt[0];
    goto LABEL_45;
  }

  *&v40 = 0x726F7272456C7173;
  *(&v40 + 1) = 0xE90000000000003ALL;
LABEL_44:
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v25);

  v26 = v40;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = v26;
  result = swift_willThrow();
LABEL_45:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static SecureMessagingGroupModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t *a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_11;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || !sqlite3_column_text(a1, 1))
  {
LABEL_10:
    outlined consume of Data._Representation(v7, v9);
LABEL_11:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    return swift_willThrow();
  }

  v10 = String.init(cString:)();
  v12 = v11;
  if (sqlite3_column_type(a1, 2) == 5 || (v13 = sqlite3_column_blob(a1, 2)) == 0)
  {

    goto LABEL_10;
  }

  v14 = v13;
  v15 = sqlite3_column_bytes(a1, 2);
  v16 = specialized Data.init(bytes:count:)(v14, v15);
  v18 = v17;
  if (sqlite3_column_type(a1, 3) == 5)
  {
    result = 0;
    v20 = 0xF000000000000000;
  }

  else
  {
    v24 = v16;
    result = sqlite3_column_blob(a1, 3);
    if (result)
    {
      v22 = result;
      v23 = sqlite3_column_bytes(a1, 3);
      result = specialized Data.init(bytes:count:)(v22, v23);
    }

    else
    {
      v20 = 0xF000000000000000;
    }

    v16 = v24;
  }

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v16;
  a2[5] = v18;
  a2[6] = result;
  a2[7] = v20;
  return result;
}

uint64_t SecureMessagingGroupModel.init(clientIdentifier:secureMessagingGroupID:swiftMLSGroupID:groupClientContextBlob:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t (*static SecureMessagingGroupModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static SecureMessagingGroupModel.converter;

  return v0;
}

uint64_t static SecureMessagingGroupModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static SecureMessagingGroupModel.converter = a1;
  qword_281EF7AB8 = a2;
}

uint64_t key path getter for static SecureMessagingGroupModel.converter : SecureMessagingGroupModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static SecureMessagingGroupModel.converter;
  v2 = qword_281EF7AB8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static SecureMessagingGroupModel.converter : SecureMessagingGroupModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static SecureMessagingGroupModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error)partial apply;
  qword_281EF7AB8 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance SecureMessagingGroupModel())@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v1 = static SecureMessagingGroupModel.converter;
  v0 = qword_281EF7AB8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
}

uint64_t one-time initialization function for converter(uint64_t a1)
{
  return one-time initialization function for converter(a1, &static SecureMessagingGroupQuery.converter, &qword_280016778);
}

{
  return one-time initialization function for converter(a1, &static SwiftMLSGroupIDQuery.converter, &qword_280016788);
}

{
  return one-time initialization function for converter(a1, &static GroupMemberQuery.converter, &qword_280016878);
}

{
  return one-time initialization function for converter(a1, &static PendingGroupMemberQuery.converter, &qword_280016888);
}

uint64_t *SecureMessagingGroupQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static SecureMessagingGroupQuery.converter;
}

uint64_t (*static SecureMessagingGroupQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static SecureMessagingGroupQuery.converter : SecureMessagingGroupQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static SecureMessagingGroupQuery.converter;
  v2 = qword_280016778;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static SecureMessagingGroupQuery.converter : SecureMessagingGroupQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SecureMessagingGroupQuery.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error)partial apply;
  qword_280016778 = v3;
}

sqlite3_stmt *SecureMessagingGroupQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM SMA_Group_Table WHERE client_id = ? AND sma_group_id = ? LIMIT 1;");
  if (!v6)
  {
LABEL_56:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
LABEL_40:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = __DataStorage._bytes.getter();
    if (v13)
    {
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v14))
      {
        goto LABEL_54;
      }

      v13 += v11 - v14;
    }

    v15 = __OFSUB__(v12, v11);
    v16 = v12 - v11;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      a2 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v7;
      }

      if (v13)
      {
        a3 = v17;
      }

      else
      {
        a3 = 0;
      }

      if (a3 >= 0xFFFFFFFF80000000)
      {
        if (a3 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v8)
  {
LABEL_21:
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_51;
    }

    v13 = __DataStorage._bytes.getter();
    if (!v13)
    {
LABEL_25:
      v7 = MEMORY[0x2667557A0]();
      if (v7 >= (a2 >> 32) - a2)
      {
        a3 = (a2 >> 32) - a2;
      }

      else
      {
        a3 = v7;
      }

      if (v13)
      {
        if (a3 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_49;
        }

        if (a3 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v31 + 6) = 0;
          *&v31 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v9 = SQLITE_TRANSIENT;
            v10 = &v31;
            v19 = 0;
            goto LABEL_39;
          }

LABEL_51:
          v30 = v7;
          swift_once();
          v7 = v30;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a3) = 0;
      }

LABEL_35:
      v7 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v28 = ppStmt[0];
        swift_once();
        v7 = v28;
      }

      v9 = SQLITE_TRANSIENT;
      v10 = v13;
      goto LABEL_38;
    }

    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v18))
    {
      v13 += a2 - v18;
      goto LABEL_25;
    }

    goto LABEL_55;
  }

  *&v31 = a2;
  WORD4(v31) = a3;
  BYTE10(v31) = BYTE2(a3);
  BYTE11(v31) = BYTE3(a3);
  BYTE12(v31) = BYTE4(a3);
  BYTE13(v31) = BYTE5(a3);
  v7 = ppStmt[0];
  LODWORD(a3) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_49:
    v29 = v7;
    swift_once();
    v7 = v29;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = &v31;
LABEL_38:
  v19 = a3;
LABEL_39:
  if (sqlite3_bind_blob(v7, 1, v10, v19, v9))
  {
    goto LABEL_40;
  }

  v25 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v26 = String.utf8CString.getter();
  v27 = sqlite3_bind_text(v25, 2, (v26 + 32), -1, v9);

  if (!v27)
  {
    result = ppStmt[0];
    goto LABEL_42;
  }

  *&v31 = 0x726F7272456C7173;
  *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_41:
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v20);

  v21 = v31;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = v21;
  result = swift_willThrow();
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance SecureMessagingGroupQuery())@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static SecureMessagingGroupQuery.converter;
  v0 = qword_280016778;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
}

sqlite3_stmt *protocol witness for SqlQuery.queryStatement(_:) in conformance SecureMessagingGroupQuery(sqlite3 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return SecureMessagingGroupQuery.queryStatement(_:)(a1, *v1, v1[1]);
}

uint64_t one-time initialization function for converter(uint64_t a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  v5 = qword_281EF7AB8;
  *a2 = static SecureMessagingGroupModel.converter;
  *a3 = v5;
}

{
  swift_beginAccess();
  v5 = qword_281EF8248;
  *a2 = static GroupMemberModel.converter;
  *a3 = v5;
}

uint64_t *SwiftMLSGroupIDQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static SwiftMLSGroupIDQuery.converter;
}

uint64_t static SecureMessagingGroupQuery.converter.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t static SecureMessagingGroupQuery.converter.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a5;
  *a4 = a1;
  *a5 = a2;
}

uint64_t (*static SwiftMLSGroupIDQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static SwiftMLSGroupIDQuery.converter : SwiftMLSGroupIDQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static SwiftMLSGroupIDQuery.converter;
  v2 = qword_280016788;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static SwiftMLSGroupIDQuery.converter : SwiftMLSGroupIDQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SwiftMLSGroupIDQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error);
  qword_280016788 = v3;
}

sqlite3_stmt *SwiftMLSGroupIDQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("SELECT * FROM SMA_Group_Table WHERE client_id = ? AND swiftmls_group_id = ? LIMIT 1;");
  if (!v10)
  {
LABEL_96:
    __break(1u);
  }

  v11 = sqlite3_prepare_v2(a1, v10, -1, ppStmt, 0);
  if (v11)
  {
    goto LABEL_76;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    LODWORD(a2) = a3;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a2) = a3;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v11))
      {
        __break(1u);
        goto LABEL_87;
      }

      v16 += v14 - v11;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v11;
      }

      if (v16)
      {
        a2 = v19;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v12)
  {
LABEL_21:
    v20 = a2;
    v21 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_82;
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_25:
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = v11;
      }

      if (v16)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v46 + 6) = 0;
          *&v46 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a3 = SQLITE_TRANSIENT;
            v13 = &v46;
            v22 = 0;
            goto LABEL_39;
          }

LABEL_82:
          v42 = v11;
          swift_once();
          v11 = v42;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v40 = ppStmt[0];
        swift_once();
        v11 = v40;
      }

      a3 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a2) = a3;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v11))
    {
      v16 += v20 - v11;
      goto LABEL_25;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  *&v46 = a2;
  WORD4(v46) = a3;
  BYTE10(v46) = BYTE2(a3);
  BYTE11(v46) = BYTE3(a3);
  BYTE12(v46) = BYTE4(a3);
  BYTE13(v46) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_80:
    v41 = v11;
    swift_once();
    v11 = v41;
  }

  a3 = SQLITE_TRANSIENT;
  v13 = &v46;
LABEL_38:
  v22 = a2;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a3);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a4 + 16);
    v26 = *(a4 + 24);
    a4 = __DataStorage._bytes.getter();
    if (a4)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_93;
      }

      a4 += v25 - v27;
    }

    v17 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      if (a4)
      {
        a2 = v29;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v23)
  {
LABEL_58:
    v30 = a4;
    v31 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_90;
    }

    a4 = __DataStorage._bytes.getter();
    if (!a4)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a4 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a2 = v31;
      }

      else
      {
        a2 = v33;
      }

      if (!a4)
      {
        LODWORD(a2) = 0;
        goto LABEL_72;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_68:
        *(&v46 + 6) = 0;
        *&v46 = 0;
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_69:
          v24 = &v46;
          v34 = 0;
          goto LABEL_75;
        }

LABEL_90:
        v45 = v11;
        swift_once();
        v11 = v45;
        goto LABEL_69;
      }

      if (a2 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a4;
          goto LABEL_74;
        }

LABEL_85:
        v43 = v11;
        swift_once();
        v11 = v43;
        goto LABEL_73;
      }

      goto LABEL_95;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *&v46 = a4;
  WORD4(v46) = a5;
  BYTE10(v46) = BYTE2(a5);
  BYTE11(v46) = BYTE3(a5);
  BYTE12(v46) = BYTE4(a5);
  BYTE13(v46) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_88:
    v44 = v11;
    swift_once();
    v11 = v44;
  }

  v24 = &v46;
LABEL_74:
  v34 = a2;
LABEL_75:
  if (!sqlite3_bind_blob(v11, 2, v24, v34, a3))
  {
    result = ppStmt[0];
    goto LABEL_77;
  }

LABEL_76:
  *&v46 = 0x726F7272456C7173;
  *(&v46 + 1) = 0xE90000000000003ALL;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v35);

  v36 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = v36;
  result = swift_willThrow();
LABEL_77:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance SwiftMLSGroupIDQuery())@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static SwiftMLSGroupIDQuery.converter;
  v0 = qword_280016788;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
}

sqlite3_stmt *specialized static SecureMessagingGroupModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS SMA_Group_Table (\n    client_id BLOB NOT NULL,\n    sma_group_id TEXT NOT NULL,\n    swiftmls_group_id BLOB NOT NULL,\n    sma_group_client_context_blob BLOB,\n    PRIMARY KEY (sma_group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized static SecureMessagingGroupModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS SMA_Group_Table_SwiftMLS_ID_Index ON SMA_Group_Table(swiftmls_group_id, client_id);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static SecureMessagingGroupModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS SMA_Group_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureMessagingGroupModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureMessagingGroupModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureMessagingGroupQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureMessagingGroupQuery(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SwiftMLSGroupIDQuery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SwiftMLSGroupIDQuery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_265266CB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v13 = a1;
  v5(v10, &v13);
  if (!v3)
  {
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    result = *&v11;
    v9 = v12;
    a2[2] = v11;
    a2[3] = v9;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v10, *a1);
  if (!v3)
  {
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    result = *&v11;
    v9 = v12;
    a2[2] = v11;
    a2[3] = v9;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)@<D0>(_OWORD *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v9);
  if (!v2)
  {
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t IdentityRequest.participantInfo.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t IdentityRequest.credentialSigningRequest.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t IdentityRequest.telURI.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IdentityRequest.acsSignature.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t IdentityRequest.pnaToken.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t IdentityRequest.pnaType.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t IdentityRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 96);
  outlined copy of Data?(v1, *(v0 + 104));
  return v1;
}

uint64_t IdentityRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 96), *(v2 + 104));
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

void *IdentityRequest.toIDSMessage(with:)(uint64_t a1)
{
  v49 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v46 = *(v50 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v38 - v2;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v40 = *v1;
  v3 = v40;
  v41 = v9;
  v11 = v1[8];
  v12 = v1[9];
  v42 = v10;
  v43 = v11;
  v13 = v1[11];
  v44 = v1[10];
  v14 = v1[12];
  v38 = v1[13];
  v39 = v14;
  v45 = type metadata accessor for IdentityRequestMessage();
  v15 = objc_allocWithZone(v45);
  *&v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v16 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo];
  *v16 = v3;
  v16[1] = v4;
  v17 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest];
  v18 = v6;
  *v17 = v6;
  v17[1] = v5;
  v19 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI];
  *v19 = v8;
  v19[1] = v7;
  v20 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature];
  v21 = v41;
  v22 = v42;
  *v20 = v42;
  v20[1] = v21;
  v23 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken];
  v24 = v44;
  *v23 = v43;
  *(v23 + 1) = v12;
  v25 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType];
  *v25 = v24;
  *(v25 + 1) = v13;

  outlined copy of Data._Representation(v40, v4);
  outlined copy of Data._Representation(v18, v5);
  outlined copy of Data._Representation(v22, v21);
  v52.receiver = v15;
  v52.super_class = v45;
  v26 = objc_msgSendSuper2(&v52, sel_init);
  if (os_variant_has_internal_content())
  {
    v27 = *((*MEMORY[0x277D85000] & *v26) + 0x98);
    v29 = v38;
    v28 = v39;
    outlined copy of Data?(v39, v38);
    v27(v28, v29);
  }

  v30 = v46;
  v31 = v48;
  v32 = v50;
  (*(v46 + 16))(v48, v49, v50);
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  (*(v30 + 32))(v34 + v33, v31, v32);
  aBlock[4] = partial apply for closure #1 in IdentityRequest.toIDSMessage(with:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_0;
  v35 = _Block_copy(aBlock);
  v36 = v26;

  [v36 setCompletionBlock_];
  _Block_release(v35);

  return v36;
}

id IdentityRequestMessage.__allocating_init(participantInfo:credentialSigningRequest:telURI:acsSignature:pnaToken:pnaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  *&v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v21 = &v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI];
  *v23 = a5;
  *(v23 + 1) = a6;
  v24 = &v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken];
  *v25 = a9;
  *(v25 + 1) = a10;
  v26 = &v20[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType];
  *v26 = a11;
  *(v26 + 1) = a12;
  v29.receiver = v20;
  v29.super_class = v12;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t closure #1 in IdentityRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogCategory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D4C900], v9);
  secureMessagingLogger(category:)();
  (*(v10 + 8))(v13, v9);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v68 = v18;
    v22 = v21;
    v23 = swift_slowAlloc();
    v67 = a2;
    v66 = v23;
    v77 = v23;
    *v22 = 136315138;
    *&v73 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v77);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26524C000, v19, v20, "resultDictionary: %s", v22, 0xCu);
    v27 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    a2 = v67;
    MEMORY[0x2667577B0](v27, -1, -1);
    v28 = v22;
    v18 = v68;
    MEMORY[0x2667577B0](v28, -1, -1);
  }

  switch(a3)
  {
    case 2:
      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v36 = swift_allocError();
      *v38 = 1;
LABEL_15:
      v77 = v36;
      goto LABEL_16;
    case 1:
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26524C000, v33, v34, "Server told us not to retry.", v35, 2u);
        MEMORY[0x2667577B0](v35, -1, -1);
      }

      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v36 = swift_allocError();
      *v37 = 0;
      goto LABEL_15;
    case 0:
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26524C000, v29, v30, "Got success.", v31, 2u);
        MEMORY[0x2667577B0](v31, -1, -1);
      }

      break;
  }

  if (!a2)
  {
    if (!a4)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_26524C000, v60, v61, "No error, but no result dictionary.", v62, 2u);
        MEMORY[0x2667577B0](v62, -1, -1);
      }

      v81 = &type metadata for IdentityResponse;
      v82 = &protocol witness table for IdentityResponse;
      v63 = swift_allocObject();
      v77 = v63;
      *(v63 + 16) = 0;
      *(v63 + 24) = 1;
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0u;
      *(v63 + 64) = 0;
      *(v63 + 72) = 0xF000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return (*(v15 + 8))(v18, v14);
    }

    v87 = 1;
    v69 = 0x737574617473;
    v70 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v41 & 1) != 0))
    {
      outlined init with copy of Any(*(a4 + 56) + 32 * v40, &v73);
      outlined destroy of AnyHashable(&v77);
      if (swift_dynamicCast())
      {
        v67 = v69;
        v87 = 0;
LABEL_26:
        v69 = 0x746E69682D7478;
        v70 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        v42 = *(a4 + 16);
        v65 = v14;
        v64[1] = a5;
        if (v42 && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v44 & 1) != 0))
        {
          outlined init with copy of Any(*(a4 + 56) + 32 * v43, &v73);
          outlined destroy of AnyHashable(&v77);
          if (swift_dynamicCast())
          {
            v45 = v69;
            v46 = v70;
LABEL_32:
            v69 = 0x6567617373656DLL;
            v70 = 0xE700000000000000;
            AnyHashable.init<A>(_:)();
            v47 = *(a4 + 16);
            v68 = v18;
            if (v47 && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v49 & 1) != 0))
            {
              outlined init with copy of Any(*(a4 + 56) + 32 * v48, &v73);
              outlined destroy of AnyHashable(&v77);
              if (swift_dynamicCast())
              {
                v50 = v69;
                v51 = v70;
LABEL_38:
                v69 = 0x6961684374726563;
                v70 = 0xE90000000000006ELL;
                AnyHashable.init<A>(_:)();
                if (*(a4 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v53 & 1) != 0))
                {
                  outlined init with copy of Any(*(a4 + 56) + 32 * v52, &v73);
                  outlined destroy of AnyHashable(&v77);
                  if (swift_dynamicCast())
                  {
                    v54 = v69;
                    v55 = v70;
                    outlined consume of Data?(0, 0xF000000000000000);
LABEL_44:
                    v56 = v67;
                    BYTE8(v73) = v87;
                    *(&v73 + 9) = *v86;
                    HIDWORD(v73) = *&v86[3];
                    *&v74 = v45;
                    *(&v74 + 1) = v46;
                    *&v75 = v50;
                    *(&v75 + 1) = v51;
                    *&v76 = v54;
                    *(&v76 + 1) = v55;
                    v71 = &type metadata for IdentityResponse;
                    v72 = &protocol witness table for IdentityResponse;
                    *&v73 = v67;
                    v57 = swift_allocObject();
                    v69 = v57;
                    v58 = v74;
                    v57[1] = v73;
                    v57[2] = v58;
                    v59 = v76;
                    v57[3] = v75;
                    v57[4] = v59;
                    outlined init with copy of IdentityResponse(&v73, &v77);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
                    CheckedContinuation.resume(returning:)();
                    (*(v15 + 8))(v68, v65);
                    v77 = v56;
                    v78 = v87;
                    *v79 = *v86;
                    *&v79[3] = *&v86[3];
                    v80 = v45;
                    v81 = v46;
                    v82 = v50;
                    v83 = v51;
                    v84 = v54;
                    v85 = v55;
                    return outlined destroy of IdentityResponse(&v77);
                  }
                }

                else
                {
                  outlined destroy of AnyHashable(&v77);
                }

                v54 = 0;
                v55 = 0xF000000000000000;
                goto LABEL_44;
              }
            }

            else
            {
              outlined destroy of AnyHashable(&v77);
            }

            v50 = 0;
            v51 = 0;
            goto LABEL_38;
          }
        }

        else
        {
          outlined destroy of AnyHashable(&v77);
        }

        v46 = 0;
        v45 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      outlined destroy of AnyHashable(&v77);
    }

    v67 = 0;
    goto LABEL_26;
  }

  v77 = a2;
  v32 = a2;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  return (*(v15 + 8))(v18, v14);
}

double IdentityResponse.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xF000000000000000;
  return result;
}

__n128 IdentityRequest.init(participantInfo:credentialSigningRequest:telURI:acsSignature:pnaToken:pnaType:pushTokenForTesting:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t IdentityResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t IdentityResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t IdentityResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdentityResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdentityResponse.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IdentityResponse.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IdentityResponse.identity.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t IdentityResponse.identity.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t IdentityResponse.init(status:splunkHint:message:identity:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t IdentityRequestMessage.participantInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo + 8));
  return v1;
}

uint64_t IdentityRequestMessage.credentialSigningRequest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest + 8));
  return v1;
}

uint64_t IdentityRequestMessage.telURI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI + 8);

  return v1;
}

uint64_t IdentityRequestMessage.acsSignature.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature + 8));
  return v1;
}

uint64_t IdentityRequestMessage.pnaToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken + 8);

  return v1;
}

uint64_t IdentityRequestMessage.pnaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType + 8);

  return v1;
}

uint64_t IdentityRequestMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t IdentityRequestMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

id IdentityRequestMessage.init(participantInfo:credentialSigningRequest:telURI:acsSignature:pnaToken:pnaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v13 = &v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI];
  *v15 = a5;
  *(v15 + 1) = a6;
  v16 = &v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature];
  *v16 = a7;
  *(v16 + 1) = a8;
  v17 = &v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken];
  *v17 = a9;
  *(v17 + 1) = a10;
  v18 = &v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType];
  *v18 = a11;
  *(v18 + 1) = a12;
  v20.receiver = v12;
  v20.super_class = type metadata accessor for IdentityRequestMessage();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_2652683C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in IdentityRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in IdentityRequest.toIDSMessage(with:)(a1, a2, a3, a4, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t IdentityRequestMessage.messageBody.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2653429B0;
  v2 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo);
  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_participantInfo + 8);
  v5 = MEMORY[0x277CC9318];
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  outlined copy of Data._Representation(v3, v4);
  AnyHashable.init<A>(_:)();
  v6 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest);
  v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_credentialSigningRequest + 8);
  *(inited + 168) = v5;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  outlined copy of Data._Representation(v6, v7);
  AnyHashable.init<A>(_:)();
  v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI);
  v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_telURI + 8);
  *(inited + 240) = v2;
  *(inited + 216) = v9;
  *(inited + 224) = v8;

  AnyHashable.init<A>(_:)();
  v10 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature);
  v11 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_acsSignature + 8);
  *(inited + 312) = v5;
  *(inited + 288) = v10;
  *(inited + 296) = v11;
  outlined copy of Data._Representation(v10, v11);
  AnyHashable.init<A>(_:)();
  v13 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken);
  v12 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaToken + 8);
  *(inited + 384) = v2;
  *(inited + 360) = v13;
  *(inited + 368) = v12;

  AnyHashable.init<A>(_:)();
  v15 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType);
  v14 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22IdentityRequestMessage_pnaType + 8);
  *(inited + 456) = v2;
  *(inited + 432) = v15;
  *(inited + 440) = v14;

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  return v16;
}

Class @objc IdentityRequestMessage.messageBody.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id IdentityRequestMessage.additionalInternalHeaders.getter()
{
  has_internal_content = os_variant_has_internal_content();
  v2 = type metadata accessor for IdentityRequestMessage();
  if (!has_internal_content)
  {
    v18.receiver = v0;
    v18.super_class = v2;
    result = objc_msgSendSuper2(&v18, sel_additionalInternalHeaders);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v17.receiver = v0;
  v17.super_class = v2;
  v3 = v2;
  v4 = objc_msgSendSuper2(&v17, sel_additionalInternalHeaders);
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = MEMORY[0x277D837D0];
    AnyHashable.init<A>(_:)();
    v14 = v7;
    *&v13 = 0x65736C6146;
    *(&v13 + 1) = 0xE500000000000000;
    outlined init with take of Any(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v15, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v15);
    return v6;
  }

  v16.receiver = v0;
  v16.super_class = v3;
  result = objc_msgSendSuper2(&v16, sel_additionalInternalHeaders);
  if (result)
  {
LABEL_5:
    v10 = result;
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return result;
}

id IdentityRequestMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double specialized IdentityRequestMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_2653429B0;
  v2 = MEMORY[0x277D837D0];
  *(v0 + 32) = 0x7069636974726170;
  *(v0 + 40) = 0xEF6F666E49746E61;
  *(v0 + 56) = v2;
  *(v0 + 64) = 7500643;
  *(v0 + 72) = 0xE300000000000000;
  *(v0 + 88) = v2;
  *(v0 + 96) = 6910581;
  *(v0 + 104) = 0xE300000000000000;
  *(v0 + 120) = v2;
  *(v0 + 128) = 0x676953736361;
  *(v0 + 136) = 0xE600000000000000;
  *(v0 + 152) = v2;
  *(v0 + 160) = 0x6E656B6F54616E70;
  *(v0 + 168) = 0xE800000000000000;
  *(v0 + 216) = v2;
  *(v0 + 184) = v2;
  *(v0 + 192) = 0x65707954616E70;
  *(v0 + 200) = 0xE700000000000000;
  return result;
}

uint64_t sub_265268D20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265268D7C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x98);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentityRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_265269080()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError()
{
  result = lazy protocol witness table cache variable for type RequestManagerError and conformance RequestManagerError;
  if (!lazy protocol witness table cache variable for type RequestManagerError and conformance RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestManagerError and conformance RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestManagerError and conformance RequestManagerError;
  if (!lazy protocol witness table cache variable for type RequestManagerError and conformance RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestManagerError and conformance RequestManagerError);
  }

  return result;
}

uint64_t GetClientIDRequest.telURI.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GetClientIDRequest.pnaToken.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GetClientIDRequest.pnaType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GetClientIDRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t GetClientIDRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

id GetClientIDRequest.toIDSMessage(with:)(uint64_t a1)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v32 - 8);
  v31 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v27 - v3;
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  HIDWORD(v27) = *(v1 + 48);
  v10 = v1[8];
  v28 = v1[7];
  ClientIDRequestMessage = type metadata accessor for GetClientIDRequestMessage();
  v11 = objc_allocWithZone(ClientIDRequestMessage);
  v12 = &v11[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting];
  *&v11[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v13 = &v11[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI];
  *v13 = v5;
  v13[1] = v4;
  v14 = &v11[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken];
  *v14 = v6;
  v14[1] = v7;
  v15 = &v11[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType];
  *v15 = v8;
  v15[1] = v9;
  v11[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_issueNewID] = BYTE4(v27);
  swift_beginAccess();
  v16 = *v12;
  v17 = v12[1];
  v18 = v28;
  *v12 = v28;
  v12[1] = v10;

  outlined copy of Data?(v18, v10);
  outlined consume of Data?(v16, v17);
  v35.receiver = v11;
  v35.super_class = ClientIDRequestMessage;
  v19 = objc_msgSendSuper2(&v35, sel_init);
  v20 = v30;
  v21 = v32;
  (*(v2 + 16))(v30, v33, v32);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = swift_allocObject();
  (*(v2 + 32))(v23 + v22, v20, v21);
  aBlock[4] = partial apply for closure #1 in GetClientIDRequest.toIDSMessage(with:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_1;
  v24 = _Block_copy(aBlock);
  v25 = v19;

  [v25 setCompletionBlock_];
  _Block_release(v24);

  return v25;
}

id GetClientIDRequestMessage.__allocating_init(telURI:pnaToken:pnaType:issueNewID:pushTokenForTesting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, unint64_t a9)
{
  v17 = objc_allocWithZone(v9);
  v18 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting];
  *&v17[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v19 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType];
  *v21 = a5;
  v21[1] = a6;
  v17[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_issueNewID] = a7;
  swift_beginAccess();
  v22 = *v18;
  v23 = v18[1];
  *v18 = a8;
  v18[1] = a9;
  outlined copy of Data?(a8, a9);
  outlined consume of Data?(v22, v23);
  v28.receiver = v17;
  v28.super_class = v27;
  v24 = objc_msgSendSuper2(&v28, sel_init);
  outlined consume of Data?(a8, a9);
  return v24;
}

uint64_t closure #1 in GetClientIDRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogCategory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D4C900], v9);
  secureMessagingLogger(category:)();
  (*(v10 + 8))(v13, v9);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v68 = v18;
    v22 = v21;
    v23 = swift_slowAlloc();
    v67 = a2;
    v66 = v23;
    v77 = v23;
    *v22 = 136315138;
    *&v73 = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v77);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26524C000, v19, v20, "resultDictionary: %s", v22, 0xCu);
    v27 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    a2 = v67;
    MEMORY[0x2667577B0](v27, -1, -1);
    v28 = v22;
    v18 = v68;
    MEMORY[0x2667577B0](v28, -1, -1);
  }

  switch(a3)
  {
    case 2:
      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v36 = swift_allocError();
      *v38 = 1;
LABEL_15:
      v77 = v36;
      goto LABEL_16;
    case 1:
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26524C000, v33, v34, "Server told us not to retry.", v35, 2u);
        MEMORY[0x2667577B0](v35, -1, -1);
      }

      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v36 = swift_allocError();
      *v37 = 0;
      goto LABEL_15;
    case 0:
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26524C000, v29, v30, "Got success.", v31, 2u);
        MEMORY[0x2667577B0](v31, -1, -1);
      }

      break;
  }

  if (!a2)
  {
    if (!a4)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_26524C000, v60, v61, "No error, but no result dictionary.", v62, 2u);
        MEMORY[0x2667577B0](v62, -1, -1);
      }

      v81 = &type metadata for GetClientIDResponse;
      v82 = &protocol witness table for GetClientIDResponse;
      v63 = swift_allocObject();
      v77 = v63;
      *(v63 + 16) = 0;
      *(v63 + 24) = 1;
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0u;
      *(v63 + 64) = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return (*(v15 + 8))(v18, v14);
    }

    v87 = 1;
    v69 = 0x737574617473;
    v70 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v41 & 1) != 0))
    {
      outlined init with copy of Any(*(a4 + 56) + 32 * v40, &v73);
      outlined destroy of AnyHashable(&v77);
      if (swift_dynamicCast())
      {
        v67 = v69;
        v87 = 0;
LABEL_26:
        v69 = 0x746E69682D7478;
        v70 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        v42 = *(a4 + 16);
        v65 = v14;
        v64[1] = a5;
        if (v42 && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v44 & 1) != 0))
        {
          outlined init with copy of Any(*(a4 + 56) + 32 * v43, &v73);
          outlined destroy of AnyHashable(&v77);
          if (swift_dynamicCast())
          {
            v45 = v69;
            v46 = v70;
LABEL_32:
            v69 = 0x6567617373656DLL;
            v70 = 0xE700000000000000;
            AnyHashable.init<A>(_:)();
            v47 = *(a4 + 16);
            v68 = v18;
            if (v47 && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v49 & 1) != 0))
            {
              outlined init with copy of Any(*(a4 + 56) + 32 * v48, &v73);
              outlined destroy of AnyHashable(&v77);
              if (swift_dynamicCast())
              {
                v50 = v69;
                v51 = v70;
LABEL_38:
                v69 = 0x4449746E65696C63;
                v70 = 0xE800000000000000;
                AnyHashable.init<A>(_:)();
                if (*(a4 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(&v77), (v53 & 1) != 0))
                {
                  outlined init with copy of Any(*(a4 + 56) + 32 * v52, &v73);
                  outlined destroy of AnyHashable(&v77);
                  if (swift_dynamicCast())
                  {
                    v54 = v69;
                    v55 = v70;
LABEL_44:
                    v56 = v67;
                    BYTE8(v73) = v87;
                    *(&v73 + 9) = *v86;
                    HIDWORD(v73) = *&v86[3];
                    *&v74 = v45;
                    *(&v74 + 1) = v46;
                    *&v75 = v50;
                    *(&v75 + 1) = v51;
                    *&v76 = v54;
                    *(&v76 + 1) = v55;
                    v71 = &type metadata for GetClientIDResponse;
                    v72 = &protocol witness table for GetClientIDResponse;
                    *&v73 = v67;
                    v57 = swift_allocObject();
                    v69 = v57;
                    v58 = v74;
                    v57[1] = v73;
                    v57[2] = v58;
                    v59 = v76;
                    v57[3] = v75;
                    v57[4] = v59;
                    outlined init with copy of GetClientIDResponse(&v73, &v77);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
                    CheckedContinuation.resume(returning:)();
                    (*(v15 + 8))(v68, v65);
                    v77 = v56;
                    v78 = v87;
                    *v79 = *v86;
                    *&v79[3] = *&v86[3];
                    v80 = v45;
                    v81 = v46;
                    v82 = v50;
                    v83 = v51;
                    v84 = v54;
                    v85 = v55;
                    return outlined destroy of GetClientIDResponse(&v77);
                  }
                }

                else
                {
                  outlined destroy of AnyHashable(&v77);
                }

                v54 = 0;
                v55 = 0;
                goto LABEL_44;
              }
            }

            else
            {
              outlined destroy of AnyHashable(&v77);
            }

            v50 = 0;
            v51 = 0;
            goto LABEL_38;
          }
        }

        else
        {
          outlined destroy of AnyHashable(&v77);
        }

        v46 = 0;
        v45 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      outlined destroy of AnyHashable(&v77);
    }

    v67 = 0;
    goto LABEL_26;
  }

  v77 = a2;
  v32 = a2;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  return (*(v15 + 8))(v18, v14);
}

void __swiftcall GetClientIDResponse.init()(SecureMessagingAgentCore::GetClientIDResponse *__return_ptr retstr)
{
  retstr->status.value = 0;
  retstr->status.is_nil = 1;
  retstr->splunkHint = 0u;
  retstr->message = 0u;
  retstr->clientID = 0u;
}

uint64_t GetClientIDRequest.init(telURI:pnaToken:pnaType:issueNewID:pushTokenForTesting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t GetClientIDResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t GetClientIDResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t GetClientIDResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GetClientIDResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GetClientIDResponse.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GetClientIDResponse.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t GetClientIDResponse.clientID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t GetClientIDResponse.clientID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall GetClientIDResponse.init(status:splunkHint:message:clientID:)(SecureMessagingAgentCore::GetClientIDResponse *__return_ptr retstr, Swift::Int_optional status, Swift::String_optional splunkHint, Swift::String_optional message, Swift::String_optional clientID)
{
  retstr->status.value = status.value;
  retstr->status.is_nil = status.is_nil;
  retstr->splunkHint = splunkHint;
  retstr->message = message;
  retstr->clientID = clientID;
}

uint64_t GetClientIDRequestMessage.telURI.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI + 8);

  return v1;
}

uint64_t GetClientIDRequestMessage.pnaToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken + 8);

  return v1;
}

uint64_t GetClientIDRequestMessage.pnaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType + 8);

  return v1;
}

uint64_t GetClientIDRequestMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t GetClientIDRequestMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

id GetClientIDRequestMessage.init(telURI:pnaToken:pnaType:issueNewID:pushTokenForTesting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, unint64_t a9)
{
  v11 = &v9[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting];
  *&v9[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v12 = &v9[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v9[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v9[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType];
  *v14 = a5;
  v14[1] = a6;
  v9[OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_issueNewID] = a7;
  swift_beginAccess();
  v15 = *v11;
  v16 = v11[1];
  *v11 = a8;
  v11[1] = a9;
  outlined copy of Data?(a8, a9);
  outlined consume of Data?(v15, v16);
  v19.receiver = v9;
  v19.super_class = type metadata accessor for GetClientIDRequestMessage();
  v17 = objc_msgSendSuper2(&v19, sel_init);
  outlined consume of Data?(a8, a9);
  return v17;
}

uint64_t sub_26526A558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in GetClientIDRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in GetClientIDRequest.toIDSMessage(with:)(a1, a2, a3, a4, v10);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t GetClientIDRequestMessage.messageBody.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265342D80;
  v2 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v4 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_telURI + 8);
  *(inited + 96) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = v3;

  AnyHashable.init<A>(_:)();
  v6 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken);
  v5 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaToken + 8);
  *(inited + 168) = v2;
  *(inited + 144) = v6;
  *(inited + 152) = v5;

  AnyHashable.init<A>(_:)();
  v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType);
  v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_pnaType + 8);
  *(inited + 240) = v2;
  *(inited + 216) = v8;
  *(inited + 224) = v7;

  AnyHashable.init<A>(_:)();
  v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore25GetClientIDRequestMessage_issueNewID);
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  return v10;
}

Class @objc GetClientIDRequestMessage.messageBody.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id GetClientIDRequestMessage.additionalInternalHeaders.getter()
{
  has_internal_content = os_variant_has_internal_content();
  ClientIDRequestMessage = type metadata accessor for GetClientIDRequestMessage();
  if (!has_internal_content)
  {
    v18.receiver = v0;
    v18.super_class = ClientIDRequestMessage;
    result = objc_msgSendSuper2(&v18, sel_additionalInternalHeaders);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v17.receiver = v0;
  v17.super_class = ClientIDRequestMessage;
  v3 = ClientIDRequestMessage;
  v4 = objc_msgSendSuper2(&v17, sel_additionalInternalHeaders);
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = MEMORY[0x277D837D0];
    AnyHashable.init<A>(_:)();
    v14 = v7;
    *&v13 = 0x65736C6146;
    *(&v13 + 1) = 0xE500000000000000;
    outlined init with take of Any(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v15, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v15);
    return v6;
  }

  v16.receiver = v0;
  v16.super_class = v3;
  result = objc_msgSendSuper2(&v16, sel_additionalInternalHeaders);
  if (result)
  {
LABEL_5:
    v10 = result;
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return result;
}

id GetClientIDRequestMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetClientIDRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetClientIDRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double specialized GetClientIDRequestMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_265342D80;
  v2 = MEMORY[0x277D837D0];
  *(v0 + 32) = 6910581;
  *(v0 + 40) = 0xE300000000000000;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0x6E656B6F54616E70;
  *(v0 + 72) = 0xE800000000000000;
  *(v0 + 88) = v2;
  *(v0 + 96) = 0x65707954616E70;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 152) = v2;
  *(v0 + 120) = v2;
  *(v0 + 128) = 0x77654E6575737369;
  *(v0 + 136) = 0xEA00000000004449;
  return result;
}

uint64_t sub_26526ADAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26526AE08(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GetClientIDRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GetClientIDRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26526B030()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t OutgoingEventModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t OutgoingEventModel.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t OutgoingEventModel.outgoingEventData.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t OutgoingEventModel.groupVersionData.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t OutgoingEventModel.outgoingEventStateData.getter()
{
  v1 = *(v0 + 64);
  outlined copy of Data?(v1, *(v0 + 72));
  return v1;
}

uint64_t OutgoingEventModel.eventIdentifier.getter()
{
  v1 = *(v0 + 80);
  outlined copy of Data._Representation(v1, *(v0 + 88));
  return v1;
}

uint64_t OutgoingEventModel.insertStatement(_:)(sqlite3 *a1)
{
  v125 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v4 = strdup("INSERT OR REPLACE INTO Outgoing_Event_Table (client_id, group_id, event_identifier, outgoing_event_data, group_version_data, outgoing_event_state_data) VALUES (?, ?, ?, ?, ?, ?);");
  if (!v4)
  {
    goto LABEL_276;
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, &ppStmt, 0);
  if (v5)
  {
LABEL_114:
    *&v120 = 0x726F7272456C7173;
    *(&v120 + 1) = 0xE90000000000003ALL;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v50);

    v51 = v120;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v52 = 0;
    *(v52 + 8) = v51;
    result = swift_willThrow();
LABEL_115:
    v54 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v120 = *v1;
      DWORD2(v120) = v7;
      WORD6(v120) = WORD2(v7);
      v5 = ppStmt;
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v120;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_246:
      v99 = v5;
      swift_once();
      v5 = v99;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v120 + 6) = 0;
    *&v120 = 0;
    v5 = ppStmt;
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v120;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_248:
    v100 = v5;
    swift_once();
    v5 = v100;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_252;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_250;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_248;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_246;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v94 = ppStmt;
    v95 = v12;
    swift_once();
    v5 = v94;
    LODWORD(v12) = v95;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_114;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_258;
      }
    }

    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  if (!v22)
  {
    *&v120 = *(v1 + 16);
    DWORD2(v120) = v21;
    WORD6(v120) = WORD2(v21);
    v5 = ppStmt;
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v120;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_253:
    v103 = v5;
    swift_once();
    v5 = v103;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_255;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v120 + 6) = 0;
      *&v120 = 0;
      v5 = ppStmt;
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v120;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_255:
      v104 = v5;
      swift_once();
      v5 = v104;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_250:
    v101 = v5;
    v102 = v12;
    swift_once();
    v5 = v101;
    LODWORD(v12) = v102;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_114;
  }

  v36 = *(v1 + 80);
  v37 = *(v1 + 88);
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_107;
    }

    v41 = v1;
    v42 = *(v36 + 16);
    v43 = *(v36 + 24);
    v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
    v35 = __DataStorage._bytes.getter();
    v9 = v35;
    if (v35)
    {
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v35))
      {
LABEL_268:
        __break(1u);
        goto LABEL_269;
      }

      v9 += v42 - v35;
    }

    v28 = __OFSUB__(v43, v42);
    v44 = v43 - v42;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v35;
      }

      if (v9)
      {
        v12 = v45;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v41;
          goto LABEL_111;
        }

        goto LABEL_266;
      }
    }

    __break(1u);
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  if (v38)
  {
    v46 = v36;
    v47 = v36 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
      __break(1u);
      goto LABEL_263;
    }

    v49 = v1;
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
      goto LABEL_101;
    }

    v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
    v35 = __DataStorage._offset.getter();
    if (!__OFSUB__(v46, v35))
    {
      v9 += v46 - v35;
LABEL_101:
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v48)
      {
        v12 = v48;
      }

      else
      {
        v12 = v35;
      }

      if (!v9)
      {
        LODWORD(v12) = 0;
        v1 = v49;
        goto LABEL_111;
      }

      if (v12 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_107:
        *(&v120 + 6) = 0;
        *&v120 = 0;
        v27 = ppStmt;
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_108:
          v40 = &v120;
          LODWORD(v12) = 0;
          goto LABEL_113;
        }

LABEL_263:
        v108 = v27;
        swift_once();
        v27 = v108;
        goto LABEL_108;
      }

      v1 = v49;
      if (v12 <= 0x7FFFFFFF)
      {
LABEL_111:
        v27 = ppStmt;
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_112:
          v40 = v9;
          goto LABEL_113;
        }

LABEL_261:
        v105 = v27;
        v106 = v12;
        swift_once();
        v27 = v105;
        LODWORD(v12) = v106;
        goto LABEL_112;
      }

LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

LABEL_269:
    __break(1u);
    goto LABEL_270;
  }

  *&v120 = *(v1 + 80);
  DWORD2(v120) = v37;
  WORD6(v120) = WORD2(v37);
  v27 = ppStmt;
  v39 = BYTE6(v37);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v107 = ppStmt;
    swift_once();
    v27 = v107;
  }

  v40 = &v120;
  LODWORD(v12) = v39;
LABEL_113:
  if (sqlite3_bind_blob(v27, 3, v40, v12, v10))
  {
    goto LABEL_114;
  }

  v124 = *(v1 + 32);
  v55 = *(&v124 + 1);
  if (*(&v124 + 1) >> 60 != 15)
  {
    v35 = v124;
    v56 = *(&v124 + 1) >> 62;
    if ((*(&v124 + 1) >> 62) <= 1)
    {
      if (!v56)
      {
        LODWORD(v120) = v124;
        WORD2(v120) = WORD2(v124);
        *(&v120 + 6) = *(&v124 + 6);
        v35 = ppStmt;
        v57 = BYTE14(v124);
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          v111 = ppStmt;
          swift_once();
          v35 = v111;
        }

        v58 = &v120;
        LODWORD(v12) = v57;
        goto LABEL_154;
      }

LABEL_138:
      v65 = v35;
      v66 = (v35 >> 32) - v35;
      if (v35 >> 32 < v35)
      {
        __break(1u);
        goto LABEL_273;
      }

      v59 = v1;

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_142;
      }

      v1 = v55 & 0x3FFFFFFFFFFFFFFFLL;
      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v65, result))
      {
        v9 += v65 - result;
LABEL_142:
        v1 = v55 & 0x3FFFFFFFFFFFFFFFLL;
        v67 = MEMORY[0x2667557A0]();
        if (v67 >= v66)
        {
          v12 = v66;
        }

        else
        {
          v12 = v67;
        }

        if (v9)
        {
          if (v12 < 0xFFFFFFFF80000000)
          {
            __break(1u);
LABEL_148:
            *(&v120 + 6) = 0;
            *&v120 = 0;
            v35 = ppStmt;
            if (one-time initialization token for SQLITE_TRANSIENT == -1)
            {
LABEL_149:
              v58 = &v120;
              LODWORD(v12) = 0;
LABEL_154:
              if (sqlite3_bind_blob(v35, 4, v58, v12, v10))
              {
                *&v120 = 0x726F7272456C7173;
                *(&v120 + 1) = 0xE90000000000003ALL;
                v68 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x266756A70](v68);

                v69 = v120;
                lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
                swift_allocError();
                *v70 = 0;
                *(v70 + 8) = v69;
                swift_willThrow();
                result = outlined destroy of Data?(&v124);
                goto LABEL_115;
              }

              outlined destroy of Data?(&v124);
              goto LABEL_157;
            }

LABEL_273:
            v112 = v35;
            swift_once();
            v35 = v112;
            goto LABEL_149;
          }

          v1 = v59;
          if (v12 > 0x7FFFFFFF)
          {
            __break(1u);
LABEL_193:
            LODWORD(v62) = 0;
            goto LABEL_194;
          }

LABEL_152:
          v35 = ppStmt;
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_153:
            v58 = v9;
            goto LABEL_154;
          }

LABEL_271:
          v109 = v35;
          v110 = v12;
          swift_once();
          v35 = v109;
          LODWORD(v12) = v110;
          goto LABEL_153;
        }

        LODWORD(v12) = 0;
LABEL_151:
        v1 = v59;
        goto LABEL_152;
      }

LABEL_278:
      __break(1u);
      goto LABEL_279;
    }

    if (v56 != 2)
    {
      goto LABEL_148;
    }

    v59 = v1;
    v60 = *(v124 + 16);
    v61 = *(v124 + 24);

    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v1 = v55 & 0x3FFFFFFFFFFFFFFFLL;
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v60, result))
      {
        __break(1u);
        goto LABEL_278;
      }

      v9 += v60 - result;
    }

    v28 = __OFSUB__(v61, v60);
    v63 = v61 - v60;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v55 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = v35;
      }

      if (v9)
      {
        v12 = v64;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          goto LABEL_151;
        }

        __break(1u);
        goto LABEL_138;
      }
    }

    __break(1u);
LABEL_276:
    __break(1u);
  }

  if (sqlite3_bind_null(ppStmt, 4))
  {
    goto LABEL_114;
  }

LABEL_157:
  v123 = *(v1 + 48);
  v71 = *(&v123 + 1);
  if (*(&v123 + 1) >> 60 != 15)
  {
    result = v123;
    v72 = *(&v123 + 1) >> 62;
    if ((*(&v123 + 1) >> 62) <= 1)
    {
      if (!v72)
      {
        LODWORD(v120) = v123;
        WORD2(v120) = WORD2(v123);
        *(&v120 + 6) = *(&v123 + 6);
        result = ppStmt;
        v73 = BYTE14(v123);
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          v115 = ppStmt;
          swift_once();
          result = v115;
        }

        v74 = &v120;
        LODWORD(v62) = v73;
        goto LABEL_197;
      }

LABEL_179:
      v79 = result;
      v80 = (result >> 32) - result;
      if (result >> 32 < result)
      {
        __break(1u);
        goto LABEL_281;
      }

      v59 = v1;

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
LABEL_183:
        v1 = v71 & 0x3FFFFFFFFFFFFFFFLL;
        v81 = MEMORY[0x2667557A0]();
        if (v81 >= v80)
        {
          v62 = v80;
        }

        else
        {
          v62 = v81;
        }

        if (v9)
        {
          if (v62 < 0xFFFFFFFF80000000)
          {
            __break(1u);
LABEL_189:
            *(&v120 + 6) = 0;
            *&v120 = 0;
            result = ppStmt;
            if (one-time initialization token for SQLITE_TRANSIENT == -1)
            {
LABEL_190:
              v74 = &v120;
              LODWORD(v62) = 0;
LABEL_197:
              if (sqlite3_bind_blob(result, 5, v74, v62, v10))
              {
                *&v120 = 0x726F7272456C7173;
                *(&v120 + 1) = 0xE90000000000003ALL;
                v82 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x266756A70](v82);

                v83 = v120;
                lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
                swift_allocError();
                *v84 = 0;
                *(v84 + 8) = v83;
                swift_willThrow();
                result = outlined destroy of Data?(&v123);
                goto LABEL_115;
              }

              outlined destroy of Data?(&v123);
              goto LABEL_200;
            }

LABEL_281:
            v116 = result;
            swift_once();
            result = v116;
            goto LABEL_190;
          }

          v1 = v59;
          if (v62 > 0x7FFFFFFF)
          {
            __break(1u);
LABEL_236:
            LODWORD(v1) = 0;
            goto LABEL_238;
          }

LABEL_195:
          result = ppStmt;
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_196:
            v74 = v9;
            goto LABEL_197;
          }

LABEL_279:
          v113 = result;
          v114 = v62;
          swift_once();
          result = v113;
          LODWORD(v62) = v114;
          goto LABEL_196;
        }

        goto LABEL_193;
      }

      LODWORD(v1) = v71;
      result = __DataStorage._offset.getter();
      if (!__OFSUB__(v79, result))
      {
        v9 += v79 - result;
        goto LABEL_183;
      }

LABEL_285:
      __break(1u);
      goto LABEL_286;
    }

    if (v72 != 2)
    {
      goto LABEL_189;
    }

    v59 = v1;
    v75 = *(v123 + 16);
    v76 = *(v123 + 24);

    LODWORD(v1) = v71;
    result = __DataStorage._bytes.getter();
    v9 = result;
    if (result)
    {
      LODWORD(v1) = v71;
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v75, result))
      {
        goto LABEL_284;
      }

      v9 += v75 - result;
    }

    v28 = __OFSUB__(v76, v75);
    v77 = v76 - v75;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v71 & 0x3FFFFFFFFFFFFFFFLL;
      result = MEMORY[0x2667557A0]();
      if (result >= v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = result;
      }

      if (v9)
      {
        v62 = v78;
      }

      else
      {
        v62 = 0;
      }

      if (v62 >= 0xFFFFFFFF80000000)
      {
        if (v62 <= 0x7FFFFFFF)
        {
LABEL_194:
          v1 = v59;
          goto LABEL_195;
        }

        __break(1u);
        goto LABEL_179;
      }
    }

    __break(1u);
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  if (sqlite3_bind_null(ppStmt, 5))
  {
    goto LABEL_114;
  }

LABEL_200:
  v122 = *(v1 + 64);
  if (*(&v122 + 1) >> 60 == 15)
  {
    if (sqlite3_bind_null(ppStmt, 6))
    {
      goto LABEL_114;
    }

LABEL_244:
    result = ppStmt;
    goto LABEL_115;
  }

  result = v122;
  v85 = *(&v122 + 1) >> 62;
  if ((*(&v122 + 1) >> 62) <= 1)
  {
    if (!v85)
    {
      LODWORD(v120) = v122;
      WORD2(v120) = WORD2(v122);
      *(&v120 + 6) = *(&v122 + 6);
      result = ppStmt;
      LODWORD(v1) = BYTE14(v122);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v118 = ppStmt;
        swift_once();
        result = v118;
      }

      v86 = &v120;
      goto LABEL_240;
    }

    goto LABEL_222;
  }

  if (v85 != 2)
  {
    goto LABEL_232;
  }

  v87 = *(v122 + 16);
  v88 = *(v122 + 24);

  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(v87, result))
    {
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v9 += v87 - result;
  }

  v28 = __OFSUB__(v88, v87);
  v89 = v88 - v87;
  if (v28)
  {
    __break(1u);
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  result = MEMORY[0x2667557A0]();
  if (result >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = result;
  }

  if (v9)
  {
    v1 = v90;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_290;
  }

  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_238;
  }

  __break(1u);
LABEL_222:
  v91 = result;
  v92 = (result >> 32) - result;
  if (result >> 32 < result)
  {
    __break(1u);
    goto LABEL_288;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(v91, result))
    {
      v9 += v91 - result;
      goto LABEL_226;
    }

LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

LABEL_226:
  result = MEMORY[0x2667557A0]();
  if (result >= v92)
  {
    v1 = v92;
  }

  else
  {
    v1 = result;
  }

  if (!v9)
  {
    goto LABEL_236;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_232:
    *(&v120 + 6) = 0;
    *&v120 = 0;
    result = ppStmt;
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_233:
      v86 = &v120;
      v93 = 0;
LABEL_241:
      if (sqlite3_bind_blob(result, 6, v86, v93, v10))
      {
        *&v120 = 0x726F7272456C7173;
        *(&v120 + 1) = 0xE90000000000003ALL;
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v96);

        v97 = v120;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v98 = 0;
        *(v98 + 8) = v97;
        swift_willThrow();
        result = outlined destroy of Data?(&v122);
        goto LABEL_115;
      }

      outlined destroy of Data?(&v122);
      goto LABEL_244;
    }

LABEL_288:
    v119 = result;
    swift_once();
    result = v119;
    goto LABEL_233;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_238:
    result = ppStmt;
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_239:
      v86 = v9;
LABEL_240:
      v93 = v1;
      goto LABEL_241;
    }

LABEL_286:
    v117 = result;
    swift_once();
    result = v117;
    goto LABEL_239;
  }

LABEL_293:
  __break(1u);
  return result;
}

sqlite3_stmt *OutgoingEventModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Outgoing_Event_Table SET outgoing_event_data = NULL, group_version_data = NULL WHERE client_id = ? AND group_id = ? AND event_identifier = ?;");
  if (!v4)
  {
LABEL_143:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_115;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v67 = *v1;
      DWORD2(v67) = v7;
      WORD6(v67) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v67;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_119:
      v58 = v5;
      swift_once();
      v5 = v58;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v67;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_121:
    v59 = v5;
    swift_once();
    v5 = v59;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_125;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_123;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_121;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_119;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v56 = ppStmt[0];
    v57 = v12;
    swift_once();
    v5 = v56;
    LODWORD(v12) = v57;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 24);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_131;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (!v22)
  {
    *&v67 = *(v1 + 16);
    DWORD2(v67) = v21;
    WORD6(v67) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v67;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_126:
    v62 = v5;
    swift_once();
    v5 = v62;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_128;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v67 + 6) = 0;
      *&v67 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v67;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_128:
      v63 = v5;
      swift_once();
      v5 = v63;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_123:
    v60 = v5;
    v61 = v12;
    swift_once();
    v5 = v60;
    LODWORD(v12) = v61;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 80);
  v37 = *(v1 + 88);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v67 = *(v1 + 80);
      DWORD2(v67) = v37;
      WORD6(v67) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v65 = ppStmt[0];
        swift_once();
        v27 = v65;
      }

      v39 = &v67;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_138;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_136;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v67;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_136:
    v66 = v27;
    swift_once();
    v27 = v66;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_142;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_134:
    v64 = v27;
    swift_once();
    v27 = v64;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (!sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    result = ppStmt[0];
    goto LABEL_116;
  }

LABEL_115:
  *&v67 = 0x726F7272456C7173;
  *(&v67 + 1) = 0xE90000000000003ALL;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v51);

  v52 = v67;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = v52;
  result = swift_willThrow();
LABEL_116:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *OutgoingEventModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("DELETE FROM Outgoing_Event_Table WHERE client_id = ? AND group_id = ? AND event_identifier = ?;");
  if (!v4)
  {
LABEL_143:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_115;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v67 = *v1;
      DWORD2(v67) = v7;
      WORD6(v67) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v67;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_119:
      v58 = v5;
      swift_once();
      v5 = v58;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v67;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_121:
    v59 = v5;
    swift_once();
    v5 = v59;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_125;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_123;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_121;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_119;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v56 = ppStmt[0];
    v57 = v12;
    swift_once();
    v5 = v56;
    LODWORD(v12) = v57;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 24);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_131;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (!v22)
  {
    *&v67 = *(v1 + 16);
    DWORD2(v67) = v21;
    WORD6(v67) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v67;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_126:
    v62 = v5;
    swift_once();
    v5 = v62;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_128;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v67 + 6) = 0;
      *&v67 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v67;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_128:
      v63 = v5;
      swift_once();
      v5 = v63;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_123:
    v60 = v5;
    v61 = v12;
    swift_once();
    v5 = v60;
    LODWORD(v12) = v61;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 80);
  v37 = *(v1 + 88);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v67 = *(v1 + 80);
      DWORD2(v67) = v37;
      WORD6(v67) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v65 = ppStmt[0];
        swift_once();
        v27 = v65;
      }

      v39 = &v67;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_138;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_136;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v67;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_136:
    v66 = v27;
    swift_once();
    v27 = v66;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_142;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_134:
    v64 = v27;
    swift_once();
    v27 = v64;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (!sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    result = ppStmt[0];
    goto LABEL_116;
  }

LABEL_115:
  *&v67 = 0x726F7272456C7173;
  *(&v67 + 1) = 0xE90000000000003ALL;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v51);

  v52 = v67;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = v52;
  result = swift_willThrow();
LABEL_116:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}