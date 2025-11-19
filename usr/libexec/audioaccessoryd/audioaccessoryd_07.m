void sub_100135EE0(uint64_t a1@<X0>, Class *a2@<X8>)
{
  v4 = type metadata accessor for DeviceSupportInformationRecord();
  v5 = sub_100169D38(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8));
  if (v5)
  {
    v6 = v5;
    v19 = v5;
    sub_100136154(&v19);
    v7 = [(objc_class *)v6 valueStore];
    [v7 resetChangedKeys];

    v8 = [(objc_class *)v6 encryptedValueStore];
    [v8 resetChangedKeys];
  }

  else
  {
    sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
    v9 = UUID.uuidString.getter();
    v11 = v10;
    sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
    v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12._object = v13;
    v14._object = 0x8000000100267220;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
    v16._countAndFlagsBits = v9;
    v16._object = v11;
    v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v18._object = 0x80000001002289C0;
    v18._countAndFlagsBits = 0xD00000000000001ELL;
    v6 = CKRecord.init(recordType:recordID:)(v18, v17).super.isa;
    v19 = v6;
    sub_100136154(&v19);
  }

  *a2 = v6;
}

uint64_t type metadata accessor for DeviceSupportInformationRecord()
{
  result = qword_1002F8BC8;
  if (!qword_1002F8BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100136154(id *a1)
{
  v2 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v85 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v86 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v11 = *a1;
  v12 = [v11 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  v87 = type metadata accessor for DeviceSupportInformationRecord();
  v16 = v85;
  v17 = (v85 + v87[15]);
  v18 = *v17;
  v19 = v17[1];
  UUID.init(uuidString:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000EEE6C(v5, &qword_1002F8000, &unk_1002262C0);
  }

  else
  {
    v20 = v7;
    v21 = v86;
    (*(v7 + 32))(v86, v5, v6);
    v22 = [v11 valuesByKey];
    UUID.uuidString.getter();
    v23 = objc_allocWithZone(CKRecordID);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 initWithRecordName:v24];

    v26 = [objc_allocWithZone(CKReference) initWithRecordID:v25 action:1];
    v27 = String._bridgeToObjectiveC()();
    [v22 setObject:v26 forKeyedSubscript:v27];
    swift_unknownObjectRelease();

    (*(v20 + 8))(v21, v6);
  }

  v28 = [v11 encryptedValues];
  swift_getObjectType();
  v86 = 0xD000000000000010;
  CKRecordKeyValueSetting.subscript.getter();
  v29 = v16;
  v30 = (v16 + v87[6]);
  v32 = *v30;
  v31 = v30[1];
  if (!v89)
  {
    goto LABEL_11;
  }

  if (v88 == v32 && v89 == v31)
  {

    goto LABEL_12;
  }

  v33 = *v30;
  v34 = v30[1];
  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v35 & 1) == 0)
  {
LABEL_11:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v32;
    v89 = v31;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_12:
  CKRecordKeyValueSetting.subscript.getter();
  v36 = (v29 + v87[7]);
  v38 = *v36;
  v37 = v36[1];
  if (!v89)
  {
    goto LABEL_17;
  }

  if (v88 != v38 || v89 != v37)
  {
    v39 = *v36;
    v40 = v36[1];
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_18;
    }

LABEL_17:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v38;
    v89 = v37;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_18;
  }

LABEL_18:
  CKRecordKeyValueSetting.subscript.getter();
  v42 = (v29 + v87[8]);
  v44 = *v42;
  v43 = v42[1];
  if (!v89)
  {
    goto LABEL_23;
  }

  if (v88 == v44 && v89 == v43)
  {

    goto LABEL_24;
  }

  v45 = *v42;
  v46 = v42[1];
  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v47 & 1) == 0)
  {
LABEL_23:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v44;
    v89 = v43;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_24:
  CKRecordKeyValueSetting.subscript.getter();
  v48 = (v29 + v87[9]);
  v50 = *v48;
  v49 = v48[1];
  if (!v89)
  {
    goto LABEL_29;
  }

  if (v88 != v50 || v89 != v49)
  {
    v51 = *v48;
    v52 = v48[1];
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_30;
    }

LABEL_29:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v50;
    v89 = v49;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_30;
  }

LABEL_30:
  CKRecordKeyValueSetting.subscript.getter();
  v54 = (v29 + v87[10]);
  v56 = *v54;
  v55 = v54[1];
  if (!v89)
  {
    goto LABEL_35;
  }

  if (v88 == v56 && v89 == v55)
  {

    goto LABEL_36;
  }

  v57 = *v54;
  v58 = v54[1];
  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v59 & 1) == 0)
  {
LABEL_35:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v56;
    v89 = v55;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_36:
  CKRecordKeyValueSetting.subscript.getter();
  v60 = (v29 + v87[11]);
  v62 = *v60;
  v61 = v60[1];
  if (!v89)
  {
    goto LABEL_41;
  }

  if (v88 != v62 || v89 != v61)
  {
    v63 = *v60;
    v64 = v60[1];
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      goto LABEL_42;
    }

LABEL_41:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v62;
    v89 = v61;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_42;
  }

LABEL_42:
  CKRecordKeyValueSetting.subscript.getter();
  v66 = (v29 + v87[12]);
  v68 = *v66;
  v67 = v66[1];
  if (!v89)
  {
    goto LABEL_47;
  }

  if (v88 == v68 && v89 == v67)
  {

    goto LABEL_48;
  }

  v69 = *v66;
  v70 = v66[1];
  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v71 & 1) == 0)
  {
LABEL_47:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v68;
    v89 = v67;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_48:
  CKRecordKeyValueSetting.subscript.getter();
  v72 = (v29 + v87[13]);
  v74 = *v72;
  v73 = v72[1];
  if (!v89)
  {
    goto LABEL_53;
  }

  if (v88 != v74 || v89 != v73)
  {
    v75 = *v72;
    v76 = v72[1];
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v77)
    {
      goto LABEL_54;
    }

LABEL_53:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v74;
    v89 = v73;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_54;
  }

LABEL_54:
  CKRecordKeyValueSetting.subscript.getter();
  v78 = (v29 + v87[14]);
  v80 = *v78;
  v79 = v78[1];
  if (!v89)
  {
    goto LABEL_59;
  }

  if (v88 == v80 && v89 == v79)
  {
    swift_unknownObjectRelease();
  }

  v82 = *v78;
  v83 = v78[1];
  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v84 & 1) == 0)
  {
LABEL_59:
    v90 = &type metadata for String;
    v91 = &protocol witness table for String;
    v88 = v80;
    v89 = v79;

    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100136BD0(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v160 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceSupportInformationRecord();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100137850(a1))
  {
    v157 = v4;
    v158 = v3;
    v11 = [a1 budsFirmwareVersion];
    v159 = v7;
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v7;
      v16 = v15;

      v17 = v14[7];
      v156 = v1;
      v18 = (v1 + v17);
      v19 = v13;
      v20 = *v18;
      v21 = v18[1];
      if (*v18 == v19 && v21 == v16)
      {
        goto LABEL_25;
      }

      v23 = *v18;
      v24 = v18[1];
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_25;
      }

      sub_100123520(v20, v21, &v171);
      v25 = v172;
      if (v172)
      {
        v27 = v179;
        v26 = v180;
        v28 = v178;
        v30 = v175;
        v29 = v176;
        v32 = v173;
        v31 = v174;
        v33 = v171;
        v34 = v177;
      }

      else
      {
        if (qword_1002F7A08 != -1)
        {
          swift_once();
        }

        v229 = xmmword_100300BF0;
        v230 = xmmword_100300C00;
        v227 = xmmword_100300BD0;
        v228 = xmmword_100300BE0;
        v226 = xmmword_100300BC0;
        v155 = xmmword_100300C00;
        v154 = *(&xmmword_100300BF0 + 1);
        v153 = xmmword_100300BF0;
        v152 = xmmword_100300BE0;
        v151 = *(&xmmword_100300BD0 + 1);
        v32 = xmmword_100300BD0;
        v25 = *(&xmmword_100300BC0 + 1);
        v33 = xmmword_100300BC0;
        sub_1001238A4(&v226, &v221);
        v31 = v151;
        v30 = v152;
        v34 = v153;
        v29 = *(&v152 + 1);
        v28 = v154;
        v26 = *(&v155 + 1);
        v27 = v155;
      }

      *&v216 = v33;
      *(&v216 + 1) = v25;
      *&v217 = v32;
      *(&v217 + 1) = v31;
      *&v218 = v30;
      *(&v218 + 1) = v29;
      LOBYTE(v219) = v34 & 1;
      *(&v219 + 1) = v28;
      *&v220 = v27;
      *(&v220 + 1) = v26;
      v226 = v216;
      v227 = v217;
      v228 = v218;
      v229 = v219;
      v230 = v220;

      sub_100123520(v19, v16, &v181);
      v42 = v182;
      if (v182)
      {
        v44 = v189;
        v43 = v190;
        v45 = v188;
        v47 = v185;
        v46 = v186;
        v49 = v183;
        v48 = v184;
        v50 = v181;
        v51 = v187;
      }

      else
      {
        if (qword_1002F7A08 != -1)
        {
          swift_once();
        }

        v224 = xmmword_100300BF0;
        v225 = xmmword_100300C00;
        v222 = xmmword_100300BD0;
        v223 = xmmword_100300BE0;
        v221 = xmmword_100300BC0;
        v155 = xmmword_100300C00;
        v154 = *(&xmmword_100300BF0 + 1);
        v153 = xmmword_100300BF0;
        v152 = xmmword_100300BE0;
        v151 = *(&xmmword_100300BD0 + 1);
        v49 = xmmword_100300BD0;
        v42 = *(&xmmword_100300BC0 + 1);
        v50 = xmmword_100300BC0;
        sub_1001238A4(&v221, &v211);
        v48 = v151;
        v47 = v152;
        v51 = v153;
        v46 = *(&v152 + 1);
        v45 = v154;
        v43 = *(&v155 + 1);
        v44 = v155;
      }

      *&v211 = v50;
      *(&v211 + 1) = v42;
      *&v212 = v49;
      *(&v212 + 1) = v48;
      *&v213 = v47;
      *(&v213 + 1) = v46;
      LOBYTE(v214) = v51 & 1;
      *(&v214 + 1) = v45;
      *&v215 = v44;
      *(&v215 + 1) = v43;
      v221 = v211;
      v222 = v212;
      v223 = v213;
      v224 = v214;
      v225 = v215;
      v52 = sub_100122EA0(&v221, &v226);
      sub_1001238DC(&v216);
      sub_1001238DC(&v211);
      if (!v52)
      {
LABEL_25:
      }

      else
      {

        *v18 = v19;
        v18[1] = v16;
      }

      v1 = v156;
      v7 = v159;
    }

    v53 = [a1 caseName];
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = v7[8];
      v59 = (v1 + v58);
      v60 = *(v1 + v58) == v55 && *(v1 + v58 + 8) == v57;
      if (v60 || (v61 = *(v1 + v58 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v59 = v55;
        v59[1] = v57;
      }
    }

    v62 = [a1 caseFirmwareVersion];
    if (v62)
    {
      v63 = v62;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v7;
      v67 = v66;

      v68 = v65[9];
      v69 = v1;
      v70 = (v1 + v68);
      v72 = *(v1 + v68);
      v71 = *(v1 + v68 + 8);
      if (v64 == v72 && v67 == v71)
      {
        goto LABEL_45;
      }

      v73 = *(v1 + v68);
      v74 = *(v1 + v68 + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_45;
      }

      v75 = v1;
      v76 = v10;
      sub_1001398BC(v75, v10);

      v77 = sub_10011EAEC(v64, v67);
      if (v78)
      {
        v77 = 0;
      }

      v79 = sub_1001381DC(v77);
      sub_100139920(v76);
      if ((v79 & 1) == 0)
      {
LABEL_45:

        v1 = v69;
        v7 = v159;
      }

      else
      {
        DWORD2(v155) = static os_log_type_t.debug.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        *&v155 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_1002289A0;
        *(v80 + 56) = &type metadata for String;
        v81 = sub_1000EE954();
        *(v80 + 32) = v72;
        *(v80 + 40) = v71;
        *(v80 + 96) = &type metadata for String;
        *(v80 + 104) = v81;
        *(v80 + 64) = v81;
        *(v80 + 72) = v64;
        *(v80 + 80) = v67;
        v82 = v159;
        v83 = (v69 + v159[6]);
        v84 = *v83;
        v85 = v83[1];
        *(v80 + 136) = &type metadata for String;
        *(v80 + 144) = v81;
        *(v80 + 112) = v84;
        *(v80 + 120) = v85;

        os_log(_:dso:log:_:_:)();

        *v70 = v64;
        v70[1] = v67;
        v1 = v69;
        v7 = v82;
      }
    }

    v86 = [a1 caseSerialNumber];
    if (v86)
    {
      v87 = v86;
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = v7[10];
      v92 = (v1 + v91);
      if (*(v1 + v91) == v88 && *(v1 + v91 + 8) == v90 || (v93 = *(v1 + v91 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v92 = v88;
        v92[1] = v90;
      }
    }

    v94 = [a1 hardwareVersion];
    if (v94)
    {
      v95 = v94;
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      v99 = v7[11];
      v100 = (v1 + v99);
      if (*(v1 + v99) == v96 && *(v1 + v99 + 8) == v98 || (v101 = *(v1 + v99 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
      }

      else
      {

        *v100 = v96;
        v100[1] = v98;
      }
    }

    v102 = [a1 leftBudSerialNumber];
    if (v102)
    {
      v103 = v102;
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      v107 = v7[12];
      v108 = (v1 + v107);
      if (*(v1 + v107) == v104 && *(v1 + v107 + 8) == v106 || (v109 = *(v1 + v107 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v108 = v104;
        v108[1] = v106;
      }
    }

    v110 = [a1 rightBudSerialNumber];
    if (v110)
    {
      v111 = v110;
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;

      v115 = v7[13];
      v116 = (v1 + v115);
      if (*(v1 + v115) == v112 && *(v1 + v115 + 8) == v114 || (v117 = *(v1 + v115 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v116 = v112;
        v116[1] = v114;
      }
    }

    v118 = [a1 ancAssetVersion];
    if (v118)
    {
      v119 = v118;
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = v7[14];
      v124 = (v1 + v123);
      v125 = *(v1 + v123);
      v126 = *(v1 + v123 + 8);
      if (v125 == v120 && v126 == v122 || (v127 = *(v1 + v123), v128 = *(v1 + v123 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        sub_100123520(v125, v126, &v191);
        v129 = v192;
        v156 = v1;
        if (v192)
        {
          v131 = v199;
          v130 = v200;
          v132 = v198;
          v134 = v195;
          v133 = v196;
          v135 = v193;
          v136 = v194;
          v137 = v191;
          v138 = v197;
        }

        else
        {
          if (qword_1002F7A08 != -1)
          {
            swift_once();
          }

          v219 = xmmword_100300BF0;
          v220 = xmmword_100300C00;
          v217 = xmmword_100300BD0;
          v218 = xmmword_100300BE0;
          v216 = xmmword_100300BC0;
          v155 = xmmword_100300C00;
          v154 = *(&xmmword_100300BF0 + 1);
          v153 = xmmword_100300BF0;
          *(&v152 + 1) = *(&xmmword_100300BE0 + 1);
          v134 = xmmword_100300BE0;
          v136 = *(&xmmword_100300BD0 + 1);
          v135 = xmmword_100300BD0;
          v129 = *(&xmmword_100300BC0 + 1);
          v137 = xmmword_100300BC0;
          sub_1001238A4(&v216, &v211);
          v138 = v153;
          v133 = *(&v152 + 1);
          v132 = v154;
          v130 = *(&v155 + 1);
          v131 = v155;
        }

        *&v166 = v137;
        *(&v166 + 1) = v129;
        *&v167 = v135;
        *(&v167 + 1) = v136;
        *&v168 = v134;
        *(&v168 + 1) = v133;
        LOBYTE(v169) = v138 & 1;
        *(&v169 + 1) = v132;
        *&v170 = v131;
        *(&v170 + 1) = v130;
        v216 = v166;
        v217 = v167;
        v218 = v168;
        v219 = v169;
        v220 = v170;

        sub_100123520(v120, v122, &v201);
        v139 = v202;
        if (v202)
        {
          v140 = v210;
          v141 = v209;
          v142 = v208;
          v143 = v206;
          v144 = v205;
          v145 = v204;
          v146 = v203;
          v147 = v201;
          v148 = v207;
        }

        else
        {
          if (qword_1002F7A08 != -1)
          {
            swift_once();
          }

          v214 = xmmword_100300BF0;
          v215 = xmmword_100300C00;
          v212 = xmmword_100300BD0;
          v213 = xmmword_100300BE0;
          v211 = xmmword_100300BC0;
          v155 = xmmword_100300C00;
          v154 = *(&xmmword_100300BF0 + 1);
          v153 = xmmword_100300BF0;
          *(&v152 + 1) = *(&xmmword_100300BE0 + 1);
          v144 = xmmword_100300BE0;
          v145 = *(&xmmword_100300BD0 + 1);
          v146 = xmmword_100300BD0;
          v139 = *(&xmmword_100300BC0 + 1);
          v147 = xmmword_100300BC0;
          sub_1001238A4(&v211, &v161);
          v148 = v153;
          v140 = *(&v155 + 1);
          v141 = v155;
          v143 = *(&v152 + 1);
          v142 = v154;
        }

        *&v161 = v147;
        *(&v161 + 1) = v139;
        *&v162 = v146;
        *(&v162 + 1) = v145;
        *&v163 = v144;
        *(&v163 + 1) = v143;
        LOBYTE(v164) = v148 & 1;
        *(&v164 + 1) = v142;
        *&v165 = v141;
        *(&v165 + 1) = v140;
        v211 = v161;
        v212 = v162;
        v213 = v163;
        v214 = v164;
        v215 = v165;
        v149 = sub_100122EA0(&v211, &v216);
        sub_1001238DC(&v166);
        sub_1001238DC(&v161);

        if (v149)
        {
          *v124 = v120;
          v124[1] = v122;
        }

        v1 = v156;
        v7 = v159;
      }
    }

    v150 = v160;
    static Date.now.getter();
    return (*(v157 + 40))(v1 + v7[16], v150, v158);
  }

  else
  {
    static os_log_type_t.info.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100226100;
    v36 = a1;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_1000EE954();
    *(v35 + 32) = v38;
    *(v35 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }
}

id sub_100137850(void *a1)
{
  if (!a1)
  {
    v10 = 0;
    return (v10 & 1);
  }

  v2 = a1;
  v3 = [v2 budsFirmwareVersion];
  if (v3)
  {

    result = [v2 budsFirmwareVersion];
    if (!result)
    {
      __break(1u);
      goto LABEL_71;
    }

    v5 = result;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_100123520(v6, v8, &v115);
    v9 = v116;
    if (v116)
    {
      v103 = v121;
      v101 = v120;
      v99 = v118;
      v95 = v117;
      v93 = v115;
      v97 = v119;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v163 = xmmword_100300BF0;
      v164 = xmmword_100300C00;
      v161 = xmmword_100300BD0;
      v162 = xmmword_100300BE0;
      v160 = xmmword_100300BC0;
      v103 = xmmword_100300C00;
      v97 = xmmword_100300BF0;
      v101 = *(&xmmword_100300BF0 + 1);
      v99 = xmmword_100300BE0;
      v95 = xmmword_100300BD0;
      v9 = *(&xmmword_100300BC0 + 1);
      v93 = xmmword_100300BC0;
      sub_1001238A4(&v160, v159);
    }

    v11 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 28));
    v12 = *v11;
    v13 = v11[1];

    sub_100123520(v12, v13, &v122);
    v14 = v123;
    v105 = v2;
    v91 = v1;
    if (v123)
    {
      v16 = v130;
      v15 = v131;
      v17 = v129;
      v18 = v126;
      v19 = v127;
      v21 = v124;
      v20 = v125;
      v22 = v122;
      v23 = v128;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v163 = xmmword_100300BF0;
      v164 = xmmword_100300C00;
      v161 = xmmword_100300BD0;
      v162 = xmmword_100300BE0;
      v160 = xmmword_100300BC0;
      v90 = *(&xmmword_100300C00 + 1);
      v16 = xmmword_100300C00;
      v17 = *(&xmmword_100300BF0 + 1);
      v23 = xmmword_100300BF0;
      v19 = *(&xmmword_100300BE0 + 1);
      v18 = xmmword_100300BE0;
      v20 = *(&xmmword_100300BD0 + 1);
      v21 = xmmword_100300BD0;
      v14 = *(&xmmword_100300BC0 + 1);
      v22 = xmmword_100300BC0;
      sub_1001238A4(&v160, v159);
      v15 = v90;
    }

    *&v149 = v93;
    *(&v149 + 1) = v9;
    v150 = v95;
    v151 = v99;
    LOBYTE(v152) = v97 & 1;
    *(&v152 + 1) = v101;
    v153 = v103;
    v159[2] = v99;
    v159[3] = v152;
    v159[4] = v103;
    v159[0] = v149;
    v159[1] = v95;
    *&v154 = v22;
    *(&v154 + 1) = v14;
    *&v155 = v21;
    *(&v155 + 1) = v20;
    *&v156 = v18;
    *(&v156 + 1) = v19;
    LOBYTE(v157) = v23 & 1;
    *(&v157 + 1) = v17;
    *&v158 = v16;
    *(&v158 + 1) = v15;
    v163 = v157;
    v164 = v158;
    v161 = v155;
    v162 = v156;
    v160 = v154;
    v24 = sub_10012304C(v159, &v160);
    sub_1001238DC(&v149);
    sub_1001238DC(&v154);
    if (v24)
    {

LABEL_58:
      v10 = 1;
      return (v10 & 1);
    }

    v2 = v105;
    v1 = v91;
  }

  v25 = [v2 caseName];
  if (v25)
  {

    v26 = [v2 caseName];
    if (!v26)
    {
      goto LABEL_57;
    }

    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 32));
    if (v28 == *v31 && v30 == v31[1])
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_57;
      }
    }
  }

  v33 = [v2 caseFirmwareVersion];
  if (v33)
  {

    result = [v2 caseFirmwareVersion];
    if (result)
    {
      v34 = result;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10011EAEC(v35, v37);
      if (v39)
      {
        v38 = 0;
      }

      if (sub_1001381DC(v38))
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_29:
  v40 = [v2 caseSerialNumber];
  if (v40)
  {

    v41 = [v2 caseSerialNumber];
    if (!v41)
    {
      goto LABEL_57;
    }

    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 40));
    if (v43 == *v46 && v45 == v46[1])
    {
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        goto LABEL_57;
      }
    }
  }

  v48 = [v2 hardwareVersion];
  if (v48)
  {

    result = [v2 hardwareVersion];
    if (result)
    {
      v49 = result;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 44));
      if (*v53 == v50 && v53[1] == v52)
      {
      }

      else
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v54)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_41;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_41:
  v55 = [v2 leftBudSerialNumber];
  if (v55)
  {

    v56 = [v2 leftBudSerialNumber];
    if (!v56)
    {
      goto LABEL_57;
    }

    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 48));
    if (v58 == *v61 && v60 == v61[1])
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        goto LABEL_57;
      }
    }
  }

  v63 = [v2 rightBudSerialNumber];
  if (v63)
  {

    v64 = [v2 rightBudSerialNumber];
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 52));
      if (v66 == *v69 && v68 == v69[1])
      {

        goto LABEL_53;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v70)
      {
        goto LABEL_53;
      }
    }

LABEL_57:

    goto LABEL_58;
  }

LABEL_53:
  v71 = [v2 ancAssetVersion];
  if (!v71)
  {

    v10 = 0;
    return (v10 & 1);
  }

  result = [v2 ancAssetVersion];
  if (result)
  {
    v72 = result;
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    sub_100123520(v73, v75, &v132);
    v76 = v133;
    if (v133)
    {
      v104 = v138;
      v102 = v137;
      v100 = v135;
      v96 = v134;
      v94 = v132;
      v98 = v136;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v157 = xmmword_100300BF0;
      v158 = xmmword_100300C00;
      v155 = xmmword_100300BD0;
      v156 = xmmword_100300BE0;
      v154 = xmmword_100300BC0;
      v104 = xmmword_100300C00;
      v98 = xmmword_100300BF0;
      v102 = *(&xmmword_100300BF0 + 1);
      v100 = xmmword_100300BE0;
      v96 = xmmword_100300BD0;
      v76 = *(&xmmword_100300BC0 + 1);
      v94 = xmmword_100300BC0;
      sub_1001238A4(&v154, &v149);
    }

    v77 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 56));
    v78 = *v77;
    v79 = v77[1];

    sub_100123520(v78, v79, &v139);
    v80 = v140;
    v106 = v2;
    if (v140)
    {
      v81 = v148;
      v82 = v147;
      v83 = v146;
      v84 = v144;
      v85 = v143;
      v86 = v142;
      v87 = v141;
      v88 = v139;
      v89 = v145;
    }

    else
    {
      if (qword_1002F7A08 != -1)
      {
        swift_once();
      }

      v157 = xmmword_100300BF0;
      v158 = xmmword_100300C00;
      v155 = xmmword_100300BD0;
      v156 = xmmword_100300BE0;
      v154 = xmmword_100300BC0;
      v92 = *(&xmmword_100300C00 + 1);
      v82 = xmmword_100300C00;
      v83 = *(&xmmword_100300BF0 + 1);
      v89 = xmmword_100300BF0;
      v84 = *(&xmmword_100300BE0 + 1);
      v85 = xmmword_100300BE0;
      v86 = *(&xmmword_100300BD0 + 1);
      v87 = xmmword_100300BD0;
      v80 = *(&xmmword_100300BC0 + 1);
      v88 = xmmword_100300BC0;
      sub_1001238A4(&v154, &v149);
      v81 = v92;
    }

    *&v107[0] = v94;
    *(&v107[0] + 1) = v76;
    v107[1] = v96;
    v107[2] = v100;
    LOBYTE(v108) = v98 & 1;
    *(&v108 + 1) = v102;
    v109 = v104;
    *&v110 = v88;
    v151 = v100;
    v152 = v108;
    v153 = v104;
    v149 = v107[0];
    v150 = v96;
    *(&v110 + 1) = v80;
    *&v111 = v87;
    *(&v111 + 1) = v86;
    *&v112 = v85;
    *(&v112 + 1) = v84;
    LOBYTE(v113) = v89 & 1;
    *(&v113 + 1) = v83;
    *&v114 = v82;
    *(&v114 + 1) = v81;
    v157 = v113;
    v158 = v114;
    v155 = v111;
    v156 = v112;
    v154 = v110;
    v10 = sub_10012304C(&v149, &v154);

    sub_1001238DC(v107);
    sub_1001238DC(&v110);
    return (v10 & 1);
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1001381DC(unint64_t a1)
{
  v5 = (v1 + *(type metadata accessor for DeviceSupportInformationRecord() + 36));
  v6 = *v5;
  v7 = v5[1];
  v8 = HIBYTE(v7) & 0xF;
  v9 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v43[0] = v6;
      v43[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v21 = v43 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                break;
              }

              v16 = __CFADD__(10 * v13, v22);
              v13 = 10 * v13 + v22;
              if (v16)
              {
                break;
              }

              ++v21;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v6 != 45)
      {
        if (v8)
        {
          v13 = 0;
          v24 = v43;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v13, v25);
            v13 = 10 * v13 + v25;
            if (v16)
            {
              break;
            }

            ++v24;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v8)
      {
        if (--v8)
        {
          v13 = 0;
          v17 = v43 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = 10 * v13 >= v18;
            v13 = 10 * v13 - v18;
            if (!v16)
            {
              break;
            }

            ++v17;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = *v11;
      if (v12 == 43)
      {
        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v19 = v11 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v13, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v16 = __CFADD__(10 * v13, v20);
                v13 = 10 * v13 + v20;
                if (v16)
                {
                  goto LABEL_63;
                }

                ++v19;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_111;
      }

      if (v12 != 45)
      {
        if (v9)
        {
          v13 = 0;
          if (v11)
          {
            while (1)
            {
              v23 = *v11 - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                goto LABEL_63;
              }

              v16 = __CFADD__(10 * v13, v23);
              v13 = 10 * v13 + v23;
              if (v16)
              {
                goto LABEL_63;
              }

              ++v11;
              if (!--v9)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v13 = 0;
        LOBYTE(v8) = 1;
LABEL_64:
        v44 = v8;
        if ((v8 & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (v11)
          {
            v14 = v11 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v13, 0xAuLL))
              {
                goto LABEL_63;
              }

              v16 = 10 * v13 >= v15;
              v13 = 10 * v13 - v15;
              if (!v16)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v8) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v13 = sub_1001204B4(v6, v7, 10);
  v42 = v41;

  if (v42)
  {
LABEL_65:
    v13 = 0;
  }

LABEL_66:
  if (v13 != a1)
  {
    v3 = (v13 >> 8);
    v2 = (a1 >> 8);
    if (v2 < v3)
    {
      static os_log_type_t.debug.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100226C80;
      *(v27 + 56) = &type metadata for UInt64;
      *(v27 + 64) = &protocol witness table for UInt64;
      *(v27 + 32) = v3;
      *(v27 + 96) = &type metadata for UInt64;
      *(v27 + 104) = &protocol witness table for UInt64;
      *(v27 + 72) = v2;
      goto LABEL_74;
    }

    if (v3 >= v2)
    {
      v31 = HIDWORD(v13) & 0xFFF0 | (v13 >> 4);
      v32 = HIDWORD(a1) & 0xFFF0 | (a1 >> 4);
      if (v32 < v31)
      {
        static os_log_type_t.debug.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1002289D0;
        *(v33 + 56) = &type metadata for UInt64;
        *(v33 + 64) = &protocol witness table for UInt64;
        *(v33 + 32) = v3;
        *(v33 + 96) = &type metadata for UInt64;
        *(v33 + 104) = &protocol witness table for UInt64;
        *(v33 + 72) = v31;
        *(v33 + 136) = &type metadata for UInt64;
        *(v33 + 144) = &protocol witness table for UInt64;
        *(v33 + 112) = v2;
        *(v33 + 176) = &type metadata for UInt64;
        *(v33 + 184) = &protocol witness table for UInt64;
        *(v33 + 152) = v32;
        goto LABEL_74;
      }

      if (v31 >= v32)
      {
        v35 = v13 & 0xF | (16 * ((v13 >> 24) & 0xFFF));
        v36 = a1 & 0xF | (16 * ((a1 >> 24) & 0xFFF));
        if (v36 < v35)
        {
          static os_log_type_t.debug.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_1002289C0;
          *(v37 + 56) = &type metadata for UInt64;
          *(v37 + 64) = &protocol witness table for UInt64;
          *(v37 + 32) = v3;
          *(v37 + 96) = &type metadata for UInt64;
          *(v37 + 104) = &protocol witness table for UInt64;
          *(v37 + 72) = v31;
          *(v37 + 136) = &type metadata for UInt64;
          *(v37 + 144) = &protocol witness table for UInt64;
          *(v37 + 112) = v35;
          *(v37 + 176) = &type metadata for UInt64;
          *(v37 + 184) = &protocol witness table for UInt64;
          *(v37 + 152) = v2;
          *(v37 + 216) = &type metadata for UInt64;
          *(v37 + 224) = &protocol witness table for UInt64;
          *(v37 + 192) = v32;
          *(v37 + 256) = &type metadata for UInt64;
          *(v37 + 264) = &protocol witness table for UInt64;
          *(v37 + 232) = v36;
          goto LABEL_74;
        }

        if (v35 >= v36)
        {
          if (BYTE6(a1) < BYTE6(v13))
          {
            static os_log_type_t.debug.getter();
            if (qword_1002F7AE8 != -1)
            {
              swift_once();
            }

            sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_1002289B0;
            *(v39 + 56) = &type metadata for UInt64;
            *(v39 + 64) = &protocol witness table for UInt64;
            *(v39 + 32) = v3;
            *(v39 + 96) = &type metadata for UInt64;
            *(v39 + 104) = &protocol witness table for UInt64;
            *(v39 + 72) = v31;
            *(v39 + 136) = &type metadata for UInt64;
            *(v39 + 144) = &protocol witness table for UInt64;
            *(v39 + 112) = v35;
            *(v39 + 176) = &type metadata for UInt64;
            *(v39 + 184) = &protocol witness table for UInt64;
            *(v39 + 152) = BYTE6(v13);
            *(v39 + 216) = &type metadata for UInt64;
            *(v39 + 224) = &protocol witness table for UInt64;
            *(v39 + 192) = v2;
            *(v39 + 256) = &type metadata for UInt64;
            *(v39 + 264) = &protocol witness table for UInt64;
            *(v39 + 232) = v32;
            *(v39 + 296) = &type metadata for UInt64;
            *(v39 + 304) = &protocol witness table for UInt64;
            *(v39 + 272) = v36;
            *(v39 + 336) = &type metadata for UInt64;
            *(v39 + 344) = &protocol witness table for UInt64;
            *(v39 + 312) = BYTE6(a1);
            goto LABEL_74;
          }

          if (BYTE6(v13) >= BYTE6(a1))
          {
            return 0;
          }

          static os_log_type_t.debug.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1002289B0;
          *(v40 + 56) = &type metadata for UInt64;
          *(v40 + 64) = &protocol witness table for UInt64;
          *(v40 + 32) = v3;
          *(v40 + 96) = &type metadata for UInt64;
          *(v40 + 104) = &protocol witness table for UInt64;
          *(v40 + 72) = v31;
          *(v40 + 136) = &type metadata for UInt64;
          *(v40 + 144) = &protocol witness table for UInt64;
          *(v40 + 112) = v35;
          *(v40 + 176) = &type metadata for UInt64;
          *(v40 + 184) = &protocol witness table for UInt64;
          *(v40 + 152) = BYTE6(v13);
          *(v40 + 216) = &type metadata for UInt64;
          *(v40 + 224) = &protocol witness table for UInt64;
          *(v40 + 192) = v2;
          *(v40 + 256) = &type metadata for UInt64;
          *(v40 + 264) = &protocol witness table for UInt64;
          *(v40 + 232) = v32;
          *(v40 + 296) = &type metadata for UInt64;
          *(v40 + 304) = &protocol witness table for UInt64;
          *(v40 + 272) = v36;
          *(v40 + 336) = &type metadata for UInt64;
          *(v40 + 344) = &protocol witness table for UInt64;
          *(v40 + 312) = BYTE6(a1);
        }

        else
        {
          static os_log_type_t.debug.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1002289C0;
          *(v38 + 56) = &type metadata for UInt64;
          *(v38 + 64) = &protocol witness table for UInt64;
          *(v38 + 32) = v3;
          *(v38 + 96) = &type metadata for UInt64;
          *(v38 + 104) = &protocol witness table for UInt64;
          *(v38 + 72) = v31;
          *(v38 + 136) = &type metadata for UInt64;
          *(v38 + 144) = &protocol witness table for UInt64;
          *(v38 + 112) = v35;
          *(v38 + 176) = &type metadata for UInt64;
          *(v38 + 184) = &protocol witness table for UInt64;
          *(v38 + 152) = v2;
          *(v38 + 216) = &type metadata for UInt64;
          *(v38 + 224) = &protocol witness table for UInt64;
          *(v38 + 192) = v32;
          *(v38 + 256) = &type metadata for UInt64;
          *(v38 + 264) = &protocol witness table for UInt64;
          *(v38 + 232) = v36;
        }
      }

      else
      {
        static os_log_type_t.debug.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1002289D0;
        *(v34 + 56) = &type metadata for UInt64;
        *(v34 + 64) = &protocol witness table for UInt64;
        *(v34 + 32) = v3;
        *(v34 + 96) = &type metadata for UInt64;
        *(v34 + 104) = &protocol witness table for UInt64;
        *(v34 + 72) = v31;
        *(v34 + 136) = &type metadata for UInt64;
        *(v34 + 144) = &protocol witness table for UInt64;
        *(v34 + 112) = v2;
        *(v34 + 176) = &type metadata for UInt64;
        *(v34 + 184) = &protocol witness table for UInt64;
        *(v34 + 152) = v32;
      }

LABEL_80:
      os_log(_:dso:log:_:_:)();
      v28 = 1;
      goto LABEL_75;
    }

    static os_log_type_t.debug.getter();
    if (qword_1002F7AE8 == -1)
    {
LABEL_79:
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100226C80;
      *(v30 + 56) = &type metadata for UInt64;
      *(v30 + 64) = &protocol witness table for UInt64;
      *(v30 + 32) = v3;
      *(v30 + 96) = &type metadata for UInt64;
      *(v30 + 104) = &protocol witness table for UInt64;
      *(v30 + 72) = v2;
      goto LABEL_80;
    }

LABEL_113:
    swift_once();
    goto LABEL_79;
  }

  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100226C80;
  *(v26 + 56) = &type metadata for UInt64;
  *(v26 + 64) = &protocol witness table for UInt64;
  *(v26 + 32) = a1;
  *(v26 + 96) = &type metadata for UInt64;
  *(v26 + 104) = &protocol witness table for UInt64;
  *(v26 + 72) = a1;
LABEL_74:
  os_log(_:dso:log:_:_:)();
  v28 = 0;
LABEL_75:

  return v28;
}

unint64_t sub_100138CA4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x74654D64756F6C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x656D614E65736163;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6572617764726168;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x7465737341636E61;
      break;
    case 11:
      result = 0x6552746E65726170;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100138E14(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&unk_1002F8C70, &qword_100228C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46[-v8];
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_100139C7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v47) = 0;
  type metadata accessor for UUID();
  sub_1001399D0(&qword_1002F8340, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for DeviceSupportInformationRecord();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v47 = *v12;
    v48 = v13;
    v46[15] = 1;
    sub_1000EE9F4(v47, v13);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v47, v48);
    v14 = (v3 + v11[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v47) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v11[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v47) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = (v3 + v11[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v47) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = (v3 + v11[9]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v47) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = (v3 + v11[10]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v47) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = (v3 + v11[11]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v47) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = (v3 + v11[12]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v47) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = (v3 + v11[13]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v47) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = (v3 + v11[14]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v47) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = (v3 + v11[15]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v47) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = v11[16];
    LOBYTE(v47) = 12;
    type metadata accessor for Date();
    sub_1001399D0(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100139258()
{
  type metadata accessor for UUID();
  sub_1001399D0(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for DeviceSupportInformationRecord();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  Data.hash(into:)();
  v5 = (v0 + v1[6]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  v8 = (v0 + v1[7]);
  v9 = *v8;
  v10 = v8[1];
  String.hash(into:)();
  v11 = (v0 + v1[8]);
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = (v0 + v1[9]);
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v17 = (v0 + v1[10]);
  v18 = *v17;
  v19 = v17[1];
  String.hash(into:)();
  v20 = (v0 + v1[11]);
  v21 = *v20;
  v22 = v20[1];
  String.hash(into:)();
  v23 = (v0 + v1[12]);
  v24 = *v23;
  v25 = v23[1];
  String.hash(into:)();
  v26 = (v0 + v1[13]);
  v27 = *v26;
  v28 = v26[1];
  String.hash(into:)();
  v29 = (v0 + v1[14]);
  v30 = *v29;
  v31 = v29[1];
  String.hash(into:)();
  v32 = (v0 + v1[15]);
  v33 = *v32;
  v34 = v32[1];
  String.hash(into:)();
  v35 = v1[16];
  type metadata accessor for Date();
  sub_1001399D0(&qword_1002F7DE0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100139418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100139F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013944C(uint64_t a1)
{
  v2 = sub_100139C7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100139488(uint64_t a1)
{
  v2 = sub_100139C7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001394E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Class sub_100139554()
{
  v1 = objc_autoreleasePoolPush();
  sub_100135EE0(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

Swift::Int sub_1001395A8()
{
  Hasher.init(_seed:)();
  sub_100139258();
  return Hasher._finalize()();
}

Swift::Int sub_1001395EC()
{
  Hasher.init(_seed:)();
  sub_100139258();
  return Hasher._finalize()();
}

uint64_t sub_10013965C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceSupportInformationRecord();
  if ((sub_100121564(*(a1 + v4[5]), *(a1 + v4[5] + 8), *(a2 + v4[5]), *(a2 + v4[5] + 8)) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[9];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v4[10];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v28 = v4[11];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v32 = v4[12];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  if ((v33 != *v35 || v34 != v35[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v36 = v4[13];
  v37 = *(a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  if ((v37 != *v39 || v38 != v39[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v40 = v4[14];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v44 = v4[15];
  v45 = *(a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  if ((v45 != *v47 || v46 != v47[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v48 = v4[16];

  return static Date.== infix(_:_:)(a1 + v48, a2 + v48);
}

uint64_t sub_1001398BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSupportInformationRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100139920(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSupportInformationRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013997C()
{
  result = qword_1002F8B60;
  if (!qword_1002F8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8B60);
  }

  return result;
}

uint64_t sub_1001399D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100139A50()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100139B00(uint64_t a1)
{
  *(a1 + 8) = sub_1001399D0(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord);
  result = sub_1001399D0(&unk_1002F9DD0, type metadata accessor for DeviceSupportInformationRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100139BD0()
{
  result = qword_1002F8C48;
  if (!qword_1002F8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8C48);
  }

  return result;
}

uint64_t sub_100139C24(uint64_t a1)
{
  result = sub_1001399D0(&qword_1002F8C50, type metadata accessor for DeviceSupportInformationRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100139C7C()
{
  result = qword_1002F8C60;
  if (!qword_1002F8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8C60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupportInformationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceSupportInformationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100139E24()
{
  result = qword_1002F8C80;
  if (!qword_1002F8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8C80);
  }

  return result;
}

unint64_t sub_100139E7C()
{
  result = qword_1002F8C88;
  if (!qword_1002F8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8C88);
  }

  return result;
}

unint64_t sub_100139ED4()
{
  result = qword_1002F8C90;
  if (!qword_1002F8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8C90);
  }

  return result;
}

uint64_t sub_100139F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026A670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E65736163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026A690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010026A6B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572617764726168 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026A6D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010026A6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7465737341636E61 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6552746E65726170 && a2 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_10013A374(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10013A598();
  URL.appendingPathComponent(_:isDirectory:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if (a2 != 3 && a2 != 2 && a2 != 1)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  URL.appendingPathComponent(_:)();
  return (v11)(v10, v3);
}

uint64_t sub_10013A598()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = [objc_opt_self() processInfo];
  v9 = [v8 environment];

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

LABEL_9:
    v15 = [objc_opt_self() defaultManager];
    v16 = [v15 URLsForDirectory:5 inDomains:1];

    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      (*(v1 + 16))(v5, v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v7, v5, v0);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v7, v0);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  sub_1000F8C5C(0xD00000000000001BLL, 0x800000010026AB90);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AF8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v13 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_10013A930()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  result = 0;
  if (v2)
  {
    v4 = Data.init(contentsOf:options:)();
    v6 = v5;
    sub_1000FA784(0, &qword_1002F8CA0, NSKeyedUnarchiver_ptr);
    sub_1000EE870(&qword_1002F8CA8, &qword_100228D48);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    *(v7 + 32) = sub_1000FA784(0, &qword_1002F8CB0, CKServerChangeToken_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    sub_1000EF870(v4, v6);

    if (v9[3])
    {
      if (swift_dynamicCast())
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100102AE0(v9);
      return 0;
    }
  }

  return result;
}

id sub_10013ABC4()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10013ACAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLResourceValues();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = [objc_opt_self() defaultManager];
  v37 = a2;
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v14, v7);
  v38 = 0;
  LODWORD(v14) = [v15 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v38];

  v20 = v38;
  if (!v14)
  {
    v30 = v38;
LABEL_7:
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v21 = objc_opt_self();
  v38 = 0;
  v22 = v20;
  v23 = [v21 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v38];
  v24 = v38;
  if (!v23)
  {
    v30 = v24;
    goto LABEL_7;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v36;
  Data.write(to:options:)();
  if (v28)
  {
    return sub_1000EF870(v25, v27);
  }

  v31 = v33;
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  (*(v8 + 16))(v11, v37, v7);
  URL.setResourceValues(_:)();
  sub_1000EF870(v25, v27);
  v19(v11, v7);
  return (*(v34 + 8))(v31, v35);
}

void *sub_10013B008()
{
  v195 = type metadata accessor for CharacterSet();
  v2 = *(v195 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v195);
  v194 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LegacyMagicPairingSettingsRecords() + 20));
  v6 = *v5;
  v7 = v5[1];
  result = &_swiftEmptyArrayStorage;
  v237 = &_swiftEmptyArrayStorage;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return result;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 < 154)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    swift_once();
    goto LABEL_157;
  }

  if (!v9)
  {
    if (BYTE6(v7) < 0x9AuLL)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_197;
  }

  if (HIDWORD(v6) - v6 < 154)
  {
    return result;
  }

LABEL_11:
  v189 = v7 >> 62;
  v235 = Data.subdata(in:)();
  v236 = v14;
  sub_10013E3BC();
  v1 = v235;
  v15 = v236 >> 62;
  if ((v236 >> 62) > 1)
  {
    goto LABEL_18;
  }

  if (!v15)
  {
    goto LABEL_23;
  }

  if (v235 > v235 >> 32)
  {
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __DataStorage._length.getter();
LABEL_204:
    __break(1u);
LABEL_205:
    __DataStorage._length.getter();
LABEL_206:
    __break(1u);
LABEL_207:
    __DataStorage._length.getter();
    __break(1u);
LABEL_208:
    __DataStorage._length.getter();
LABEL_209:
    __break(1u);
LABEL_210:
    __DataStorage._length.getter();
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __DataStorage._length.getter();
    __break(1u);
LABEL_213:
    __DataStorage._length.getter();
LABEL_214:
    __break(1u);
LABEL_215:
    __DataStorage._length.getter();
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __DataStorage._length.getter();
    __break(1u);
LABEL_220:
    __DataStorage._length.getter();
    __break(1u);
LABEL_221:
    __DataStorage._length.getter();
LABEL_222:
    __break(1u);
LABEL_223:
    __DataStorage._length.getter();
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __DataStorage._length.getter();
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __DataStorage._length.getter();
    __break(1u);
LABEL_229:
    __DataStorage._length.getter();
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __DataStorage._length.getter();
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v16 = __DataStorage._bytes.getter();
  if (!v16)
  {
LABEL_238:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  v17 = v16;
  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v1, v18))
  {
    goto LABEL_201;
  }

  v19 = (v1 - v18 + v17);
  __DataStorage._length.getter();
  if (!v19)
  {
    __break(1u);
LABEL_18:
    if (v15 != 2)
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v20 = *(v1 + 16);
    v21 = __DataStorage._bytes.getter();
    if (!v21)
    {
LABEL_236:
      __DataStorage._length.getter();
      goto LABEL_237;
    }

    v22 = v21;
    v23 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v23))
    {
      v19 = (v20 - v23 + v22);
      __DataStorage._length.getter();
      if (!v19)
      {
LABEL_237:
        __break(1u);
        goto LABEL_238;
      }

      goto LABEL_22;
    }

    goto LABEL_200;
  }

LABEL_22:
  v1 = *v19;
LABEL_23:
  if (!v1)
  {
    goto LABEL_235;
  }

  v24 = 0;
  v192 = (v2 + 8);
  v193 = &_swiftEmptyArrayStorage;
  v25 = 1;
  v196 = v1;
  v191 = v6;
  v190 = v7;
  while (1)
  {
    sub_1000EE9F4(v6, v7);
    sub_10013EEF0(v24, v6, v7, &v233);
    v26 = v234 >> 62;
    if ((v234 >> 62) > 1)
    {
      break;
    }

    if (v26)
    {
      v30 = HIDWORD(v233);
      v31 = v233;
      sub_1000EF870(v233, v234);
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_171;
      }

      if (v30 - v31 < 154)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v27 = BYTE6(v234);
      sub_1000EF870(v233, v234);
      if (v27 < 0x9AuLL)
      {
        goto LABEL_156;
      }
    }

LABEL_35:
    v1 = Data.subdata(in:)();
    v232 = v32;
    v229 = Data.subdata(in:)();
    v34 = v33;
    v227 = Data.subdata(in:)();
    v228 = v35;
    v36 = v24 + 44;
    v37 = Data.subdata(in:)();
    v38 = v37;
    v40 = v39;
    v41 = v39 >> 62;
    v230 = v34;
    if ((v39 >> 62) <= 1)
    {
      if (!v41)
      {
        v42 = v37;
        goto LABEL_49;
      }

      if (v37 > v37 >> 32)
      {
        goto LABEL_172;
      }

      v48 = __DataStorage._bytes.getter();
      if (!v48)
      {
        goto LABEL_207;
      }

      v49 = v48;
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v50))
      {
        goto LABEL_176;
      }

      v47 = (v38 - v50 + v49);
      __DataStorage._length.getter();
      if (!v47)
      {
        goto LABEL_211;
      }

      goto LABEL_47;
    }

    if (v41 == 2)
    {
      v43 = *(v37 + 16);
      v44 = __DataStorage._bytes.getter();
      if (!v44)
      {
        goto LABEL_203;
      }

      v45 = v44;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_173;
      }

      v47 = (v43 - v46 + v45);
      __DataStorage._length.getter();
      if (!v47)
      {
        goto LABEL_204;
      }

LABEL_47:
      v42 = *v47;
      goto LABEL_49;
    }

    v42 = 0;
LABEL_49:
    v223 = Data.subdata(in:)();
    v224 = v51;
    v221 = Data.subdata(in:)();
    v222 = v52;
    v225 = Data.subdata(in:)();
    v226 = v53;
    v54 = v36 + 100;
    v55 = Data.subdata(in:)();
    v57 = v56 >> 62;
    v231 = v25;
    v218 = v55;
    v219 = v56;
    v203 = v42;
    if ((v56 >> 62) <= 1)
    {
      if (!v57)
      {
        v58 = v1;
        v202 = v55;
        goto LABEL_63;
      }

      v64 = v55;
      if (v55 > v55 >> 32)
      {
        goto LABEL_174;
      }

      v58 = v1;
      LOWORD(v1) = v56;
      v65 = __DataStorage._bytes.getter();
      if (!v65)
      {
        goto LABEL_210;
      }

      v66 = v65;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v67))
      {
        goto LABEL_179;
      }

      v63 = (v64 - v67 + v66);
      __DataStorage._length.getter();
      if (!v63)
      {
        goto LABEL_217;
      }

      goto LABEL_61;
    }

    v58 = v1;
    if (v57 == 2)
    {
      v59 = *(v55 + 16);
      LOWORD(v1) = v56;
      v60 = __DataStorage._bytes.getter();
      if (!v60)
      {
        goto LABEL_205;
      }

      v61 = v60;
      v62 = __DataStorage._offset.getter();
      if (__OFSUB__(v59, v62))
      {
        goto LABEL_175;
      }

      v63 = (v59 - v62 + v61);
      __DataStorage._length.getter();
      if (!v63)
      {
        goto LABEL_206;
      }

LABEL_61:
      v202 = *v63;
      goto LABEL_63;
    }

    v202 = 0;
LABEL_63:
    v68 = v54 + 2;
    v69 = Data.subdata(in:)();
    v1 = v70;
    v71 = v70 >> 62;
    v217 = v69;
    if ((v70 >> 62) <= 1)
    {
      if (!v71)
      {
        v72 = v69;
        goto LABEL_77;
      }

      v78 = v69;
      if (v69 > v69 >> 32)
      {
        goto LABEL_177;
      }

      v79 = __DataStorage._bytes.getter();
      if (!v79)
      {
        goto LABEL_212;
      }

      v80 = v79;
      v81 = __DataStorage._offset.getter();
      if (__OFSUB__(v78, v81))
      {
        goto LABEL_182;
      }

      v77 = (v78 - v81 + v80);
      __DataStorage._length.getter();
      if (!v77)
      {
        goto LABEL_218;
      }

      goto LABEL_75;
    }

    if (v71 == 2)
    {
      v73 = *(v69 + 16);
      v74 = __DataStorage._bytes.getter();
      if (!v74)
      {
        goto LABEL_208;
      }

      v75 = v74;
      v76 = __DataStorage._offset.getter();
      if (__OFSUB__(v73, v76))
      {
        goto LABEL_178;
      }

      v77 = (v73 - v76 + v75);
      __DataStorage._length.getter();
      if (!v77)
      {
        goto LABEL_209;
      }

LABEL_75:
      v72 = *v77;
      goto LABEL_77;
    }

    v72 = 0;
LABEL_77:
    v82 = v68 + 2;
    v83 = Data.subdata(in:)();
    v85 = v84 >> 62;
    v216 = v40;
    v215 = v84;
    v214 = v83;
    v201 = v72;
    if ((v84 >> 62) <= 1)
    {
      if (!v85)
      {
        v200 = v83;
        goto LABEL_91;
      }

      v91 = v83;
      if (v83 > v83 >> 32)
      {
        goto LABEL_180;
      }

      v92 = __DataStorage._bytes.getter();
      if (!v92)
      {
        goto LABEL_219;
      }

      v93 = v92;
      v94 = __DataStorage._offset.getter();
      if (__OFSUB__(v91, v94))
      {
        goto LABEL_185;
      }

      v90 = (v91 - v94 + v93);
      __DataStorage._length.getter();
      if (!v90)
      {
        goto LABEL_225;
      }

      goto LABEL_89;
    }

    if (v85 == 2)
    {
      v86 = *(v83 + 16);
      v87 = __DataStorage._bytes.getter();
      if (!v87)
      {
        goto LABEL_213;
      }

      v88 = v87;
      v89 = __DataStorage._offset.getter();
      if (__OFSUB__(v86, v89))
      {
        goto LABEL_181;
      }

      v90 = (v86 - v89 + v88);
      __DataStorage._length.getter();
      if (!v90)
      {
        goto LABEL_214;
      }

LABEL_89:
      v200 = *v90;
      goto LABEL_91;
    }

    v200 = 0;
LABEL_91:
    v95 = v82 + 2;
    v96 = Data.subdata(in:)();
    v98 = v97;
    v99 = v97 >> 62;
    v213 = v38;
    v212 = v96;
    if ((v97 >> 62) <= 1)
    {
      if (!v99)
      {
        v100 = v96;
        goto LABEL_105;
      }

      v106 = v96;
      if (v96 > v96 >> 32)
      {
        goto LABEL_183;
      }

      v107 = __DataStorage._bytes.getter();
      if (!v107)
      {
        goto LABEL_220;
      }

      v108 = v107;
      v109 = __DataStorage._offset.getter();
      if (__OFSUB__(v106, v109))
      {
        goto LABEL_188;
      }

      v105 = (v106 - v109 + v108);
      __DataStorage._length.getter();
      if (!v105)
      {
        goto LABEL_227;
      }

      goto LABEL_103;
    }

    if (v99 == 2)
    {
      v101 = *(v96 + 16);
      v102 = __DataStorage._bytes.getter();
      if (!v102)
      {
        goto LABEL_215;
      }

      v103 = v102;
      v104 = __DataStorage._offset.getter();
      if (__OFSUB__(v101, v104))
      {
        goto LABEL_184;
      }

      v105 = (v101 - v104 + v103);
      __DataStorage._length.getter();
      if (!v105)
      {
        goto LABEL_216;
      }

LABEL_103:
      v100 = *v105;
      goto LABEL_105;
    }

    v100 = 0;
LABEL_105:
    v110 = v95 + 1;
    v111 = Data.subdata(in:)();
    v113 = v112 >> 62;
    v220 = v58;
    v211 = v1;
    v210 = v112;
    v209 = v111;
    v199 = v100;
    if ((v112 >> 62) <= 1)
    {
      v114 = v231;
      if (!v113)
      {
        v198 = v111;
        goto LABEL_119;
      }

      v121 = v111;
      if (v111 > v111 >> 32)
      {
        goto LABEL_186;
      }

      v115 = v231;
      v122 = __DataStorage._bytes.getter();
      if (!v122)
      {
        goto LABEL_226;
      }

      v123 = v122;
      v124 = __DataStorage._offset.getter();
      if (__OFSUB__(v121, v124))
      {
        goto LABEL_191;
      }

      v120 = (v121 - v124 + v123);
      __DataStorage._length.getter();
      if (!v120)
      {
        goto LABEL_231;
      }

      goto LABEL_117;
    }

    v114 = v231;
    if (v113 == 2)
    {
      v115 = v231;
      v116 = *(v111 + 16);
      v117 = __DataStorage._bytes.getter();
      if (!v117)
      {
        goto LABEL_221;
      }

      v118 = v117;
      v119 = __DataStorage._offset.getter();
      if (__OFSUB__(v116, v119))
      {
        goto LABEL_187;
      }

      v120 = (v116 - v119 + v118);
      __DataStorage._length.getter();
      if (!v120)
      {
        goto LABEL_222;
      }

LABEL_117:
      v198 = *v120;
      v114 = v115;
      goto LABEL_119;
    }

    v198 = 0;
LABEL_119:
    v1 = v232;
    v125 = v110 + 1;
    v126 = Data.subdata(in:)();
    v128 = v127 >> 62;
    v208 = v127;
    v207 = v126;
    if ((v127 >> 62) <= 1)
    {
      if (!v128)
      {
        v129 = v126;
        goto LABEL_133;
      }

      v135 = v126;
      if (v126 > v126 >> 32)
      {
        goto LABEL_189;
      }

      v136 = __DataStorage._bytes.getter();
      if (!v136)
      {
        goto LABEL_228;
      }

      v137 = v136;
      v138 = __DataStorage._offset.getter();
      if (__OFSUB__(v135, v138))
      {
        goto LABEL_194;
      }

      v134 = (v135 - v138 + v137);
      __DataStorage._length.getter();
      if (!v134)
      {
        goto LABEL_233;
      }

      goto LABEL_131;
    }

    if (v128 == 2)
    {
      v130 = *(v126 + 16);
      v131 = __DataStorage._bytes.getter();
      if (!v131)
      {
        goto LABEL_223;
      }

      v132 = v131;
      v133 = __DataStorage._offset.getter();
      if (__OFSUB__(v130, v133))
      {
        goto LABEL_190;
      }

      v134 = (v130 - v133 + v132);
      __DataStorage._length.getter();
      if (!v134)
      {
        goto LABEL_224;
      }

LABEL_131:
      v129 = *v134;
      goto LABEL_133;
    }

    v129 = 0;
LABEL_133:
    v139 = v125 + 2;
    v140 = Data.subdata(in:)();
    v142 = v141 >> 62;
    v206 = v98;
    v205 = v141;
    v204 = v140;
    if ((v141 >> 62) > 1)
    {
      if (v142 != 2)
      {
        v143 = 0;
        goto LABEL_147;
      }

      v144 = *(v140 + 16);
      LOWORD(v1) = v141;
      v145 = __DataStorage._bytes.getter();
      if (!v145)
      {
        goto LABEL_229;
      }

      v146 = v145;
      v147 = __DataStorage._offset.getter();
      if (__OFSUB__(v144, v147))
      {
        goto LABEL_193;
      }

      v148 = (v144 - v147 + v146);
      __DataStorage._length.getter();
      if (!v148)
      {
        goto LABEL_230;
      }

      goto LABEL_145;
    }

    if (v142)
    {
      v149 = v140;
      if (v140 > v140 >> 32)
      {
        goto LABEL_192;
      }

      LOWORD(v1) = v141;
      v150 = __DataStorage._bytes.getter();
      if (!v150)
      {
        goto LABEL_232;
      }

      v151 = v150;
      v152 = __DataStorage._offset.getter();
      if (__OFSUB__(v149, v152))
      {
        goto LABEL_195;
      }

      v148 = (v149 - v152 + v151);
      __DataStorage._length.getter();
      if (!v148)
      {
        goto LABEL_234;
      }

LABEL_145:
      v143 = *v148;
      v1 = v232;
      goto LABEL_147;
    }

    v143 = v140;
LABEL_147:
    v153 = v220;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)isa bytes];
    v155 = isa;
    v156 = NSStringWithMACAddress();
    if (v156)
    {
      v157 = v156;
      v197 = v139;
      v158 = [objc_allocWithZone(BTMagicPairingSettings) initWithBluetoothAddress:v156];

      v159 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setAccessoryKey:v159];

      v160 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setAccessoryHint:v160];

      LOBYTE(v233) = v198;
      dispatch thunk of CustomStringConvertible.description.getter();
      v161 = String._bridgeToObjectiveC()();

      [v158 setButtonModes:v161];

      LOBYTE(v233) = v129;
      dispatch thunk of CustomStringConvertible.description.getter();
      v162 = String._bridgeToObjectiveC()();

      [v158 setColor:v162];

      v163 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setEncryptionKey:v163];

      v164 = Data._bridgeToObjectiveC()().super.isa;
      [v158 setIrk:v164];

      LOWORD(v233) = v143;
      dispatch thunk of CustomStringConvertible.description.getter();
      v165 = String._bridgeToObjectiveC()();

      [v158 setListeningServices:v165];

      sub_10013F040(v225, v226);
      v167 = sub_10013FA24(v166);
      v169 = v168;

      v233 = v167;
      v234 = v169;
      v170 = v194;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10013FA70();
      v171 = StringProtocol.trimmingCharacters(in:)();
      v173 = v172;
      v174 = *v192;
      v175 = v195;
      (*v192)(v170, v195);

      v233 = v171;
      v234 = v173;
      static CharacterSet.illegalCharacters.getter();
      StringProtocol.trimmingCharacters(in:)();
      v174(v170, v175);

      v176 = String._bridgeToObjectiveC()();

      [v158 setName:v176];

      LOWORD(v233) = v200;
      dispatch thunk of CustomStringConvertible.description.getter();
      v177 = String._bridgeToObjectiveC()();

      [v158 setProductID:v177];

      LODWORD(v233) = v203;
      dispatch thunk of CustomStringConvertible.description.getter();
      v178 = String._bridgeToObjectiveC()();

      [v158 setRatchet:v178];

      LOBYTE(v233) = v199;
      dispatch thunk of CustomStringConvertible.description.getter();
      v179 = String._bridgeToObjectiveC()();

      [v158 setSettingsMask:v179];

      LODWORD(v233) = v202;
      dispatch thunk of CustomStringConvertible.description.getter();
      v180 = String._bridgeToObjectiveC()();

      [v158 setSupportedServices:v180];

      LOWORD(v233) = v201;
      dispatch thunk of CustomStringConvertible.description.getter();
      v181 = String._bridgeToObjectiveC()();

      [v158 setVendorID:v181];

      v182 = v158;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v237 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v237 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000EF870(v229, v230);
      sub_1000EF870(v227, v228);
      sub_1000EF870(v221, v222);
      sub_1000EF870(v223, v224);
      sub_1000EF870(v204, v205);
      sub_1000EF870(v207, v208);
      sub_1000EF870(v209, v210);
      sub_1000EF870(v212, v206);
      sub_1000EF870(v214, v215);
      sub_1000EF870(v217, v211);
      sub_1000EF870(v218, v219);
      sub_1000EF870(v225, v226);
      sub_1000EF870(v213, v216);
      sub_1000EF870(v220, v232);

      v193 = v237;
      LOWORD(v1) = v196;
      v6 = v191;
      v114 = v231;
      v7 = v190;
      v139 = v197;
    }

    else
    {
      sub_1000EF870(v204, v205);
      sub_1000EF870(v207, v208);
      sub_1000EF870(v209, v210);
      sub_1000EF870(v212, v206);
      sub_1000EF870(v214, v215);
      sub_1000EF870(v217, v211);
      sub_1000EF870(v218, v219);
      sub_1000EF870(v225, v226);
      sub_1000EF870(v221, v222);
      sub_1000EF870(v223, v224);
      sub_1000EF870(v213, v216);
      sub_1000EF870(v227, v228);
      sub_1000EF870(v229, v230);
      sub_1000EF870(v153, v1);
      LOWORD(v1) = v196;
    }

    v183 = v114;
    if (v114 == v1)
    {
      goto LABEL_168;
    }

    v25 = v114 + 1;
    v24 = v139 - 2;
    if (((v183 + 1) & 0x10000) != 0)
    {
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }
  }

  if (v26 == 2)
  {
    v29 = *(v233 + 16);
    v28 = *(v233 + 24);
    sub_1000EF870(v233, v234);
    if (__OFSUB__(v28, v29))
    {
      goto LABEL_170;
    }

    if (v28 - v29 < 154)
    {
      goto LABEL_156;
    }

    goto LABEL_35;
  }

  sub_1000EF870(v233, v234);
LABEL_156:
  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_198;
  }

LABEL_157:
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_100226C80;
  *(v184 + 56) = &type metadata for UInt16;
  *(v184 + 64) = &protocol witness table for UInt16;
  *(v184 + 32) = v1;
  if (v189 > 1)
  {
    if (v189 != 2)
    {
      v185 = 0;
      goto LABEL_167;
    }

    v187 = *(v6 + 16);
    v186 = *(v6 + 24);
    v12 = __OFSUB__(v186, v187);
    v185 = v186 - v187;
    if (!v12)
    {
      goto LABEL_167;
    }

    __break(1u);
LABEL_164:
    LODWORD(v185) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v185 = v185;
      goto LABEL_167;
    }

    goto LABEL_202;
  }

  if (v189)
  {
    goto LABEL_164;
  }

  v185 = BYTE6(v7);
LABEL_167:
  *(v184 + 96) = &type metadata for Int;
  *(v184 + 104) = &protocol witness table for Int;
  *(v184 + 72) = v185;
  os_log(_:dso:log:_:_:)();

LABEL_168:
  sub_1000EF870(v235, v236);
  return v193;
}

uint64_t sub_10013C3A0()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v9, qword_100300D60);
  sub_1000EE91C(v4, qword_100300D60);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t type metadata accessor for LegacyMagicPairingSettingsRecords()
{
  result = qword_1002F8D30;
  if (!qword_1002F8D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10013C5B4()
{
  v1 = type metadata accessor for Date();
  v128 = *(v1 - 8);
  v2 = *(v128 + 64);
  __chkstk_darwin(v1);
  v119 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v124 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v125 = &v119 - v8;
  __chkstk_darwin(v9);
  v122 = &v119 - v10;
  __chkstk_darwin(v11);
  v123 = &v119 - v12;
  v13 = objc_autoreleasePoolPush();
  v129 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  isa = sub_100169D38(*(v0 + v129[6]), *(v0 + v129[6] + 8));
  if (!isa)
  {
    isa = sub_1000F7D84().super.isa;
  }

  v130 = isa;
  v133._countAndFlagsBits = isa;
  sub_10013E0F4(&v133);
  objc_autoreleasePoolPop(v13);
  result = sub_10013B008();
  v16 = result;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  v126 = v1;
  v127 = v0;
  v121 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0x2D2D2D2D2D2D0ALL;
    v26._object = 0xE700000000000000;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 10;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
  }

  while (v17 != v18);
LABEL_12:
  if (v121)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v130;
  v30 = v127;

  if (v28 >= 2)
  {
    sub_10013CF44(v31);
  }

  v131 = 0;
  v132 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v32._object = 0x800000010026AD30;
  v32._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v32);
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F7BC0, &type metadata accessor for UUID);
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x616261746164202CLL;
  v34._object = 0xEC000000203A6573;
  String.append(_:)(v34);
  v35 = (v30 + v129[5]);
  v36 = *v35;
  v37 = v35[1];
  v38 = Data.subdata(in:)();
  v40 = v39;
  v41 = Data.hexString.getter(v38, v39);
  v43 = v42;
  sub_1000EF870(v38, v40);
  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45 = v131;
  v46 = v132;
  v131 = 0;
  v132 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v47._countAndFlagsBits = 0x7461657263202020;
  v47._object = 0xEE00203A6E4F6465;
  String.append(_:)(v47);
  v48 = [v29 creationDate];
  v120 = v46;
  v121 = v45;
  if (v48)
  {
    v49 = v122;
    v50 = v48;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = v128;
    v52 = *(v128 + 56);
    v53 = v49;
    v54 = 0;
  }

  else
  {
    v51 = v128;
    v52 = *(v128 + 56);
    v49 = v122;
    v53 = v122;
    v54 = 1;
  }

  v55 = v126;
  v52(v53, v54, 1, v126);
  v56 = v123;
  sub_1000EED5C(v49, v123);
  v57 = *(v51 + 48);
  if (v57(v56, 1, v55))
  {
    sub_100102138(v56);
    v58 = v129[7];
    v59 = objc_opt_self();
    v60 = Date._bridgeToObjectiveC()().super.isa;
    v61 = [v59 localizedStringFromDate:v60 dateStyle:2 timeStyle:2];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = v128;
  }

  else
  {
    v66 = v119;
    (*(v51 + 16))(v119, v56, v55);
    sub_100102138(v56);
    v67 = objc_opt_self();
    v68 = Date._bridgeToObjectiveC()().super.isa;
    v69 = [v67 localizedStringFromDate:v68 dateStyle:2 timeStyle:2];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v70;

    v65 = v128;
    (*(v128 + 8))(v66, v55);
  }

  v71._countAndFlagsBits = v62;
  v71._object = v64;
  String.append(_:)(v71);

  v72._countAndFlagsBits = 0x696669646F6D202CLL;
  v72._object = 0xEE00203A6E4F6465;
  String.append(_:)(v72);
  v73 = [v130 modificationDate];
  if (v73)
  {
    v74 = v124;
    v75 = v73;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = 0;
  }

  else
  {
    v76 = 1;
    v74 = v124;
  }

  v77 = v125;
  v52(v74, v76, 1, v55);
  sub_1000EED5C(v74, v77);
  if (v57(v77, 1, v55))
  {
    sub_100102138(v77);
    v78 = v129[7];
    v79 = objc_opt_self();
    v80 = Date._bridgeToObjectiveC()().super.isa;
    v81 = [v79 localizedStringFromDate:v80 dateStyle:2 timeStyle:2];

    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
  }

  else
  {
    v85 = v119;
    (*(v65 + 16))(v119, v77, v55);
    sub_100102138(v77);
    v86 = objc_opt_self();
    v87 = Date._bridgeToObjectiveC()().super.isa;
    v88 = v65;
    v89 = [v86 localizedStringFromDate:v87 dateStyle:2 timeStyle:2];

    v90 = v55;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v91;

    (*(v88 + 8))(v85, v90);
  }

  v92 = v130;
  v94 = v120;
  v93 = v121;
  v95._countAndFlagsBits = v82;
  v95._object = v84;
  String.append(_:)(v95);

  v96._object = 0xEF203A7962206465;
  v96._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v96);
  v97 = [v92 modifiedByDevice];
  if (v97)
  {
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
  }

  else
  {
    v101 = 0xE200000000000000;
    v99 = 15932;
  }

  v102._countAndFlagsBits = v99;
  v102._object = v101;
  String.append(_:)(v102);

  v103._countAndFlagsBits = 0x203A67617465202CLL;
  v103._object = 0xE800000000000000;
  String.append(_:)(v103);
  v104 = [v92 recordChangeTag];
  if (v104)
  {
    v105 = v104;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;
  }

  else
  {
    v108 = 0xE200000000000000;
    v106 = 15932;
  }

  v109._countAndFlagsBits = v106;
  v109._object = v108;
  String.append(_:)(v109);

  v110._countAndFlagsBits = 10;
  v110._object = 0xE100000000000000;
  String.append(_:)(v110);
  v111 = v131;
  v112 = v132;
  v131 = v93;
  v132 = v94;

  v113._countAndFlagsBits = v111;
  v113._object = v112;
  String.append(_:)(v113);

  v115 = v131;
  v114 = v132;
  v131 = 10;
  v132 = 0xE100000000000000;
  String.append(_:)(v133);

  v116 = v131;
  v117 = v132;
  v131 = v115;
  v132 = v114;

  v118._countAndFlagsBits = v116;
  v118._object = v117;
  String.append(_:)(v118);

  return v131;
}

uint64_t sub_10013CF44(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return String.remove(at:)(a1);
}

uint64_t sub_10013CFAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = (&v67 - v8);
  __chkstk_darwin(v9);
  v77 = &v67 - v10;
  v11 = type metadata accessor for Date();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = v80[8];
  __chkstk_darwin(v11);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v75 = &v67 - v15;
  v16 = sub_1000EE870(&qword_1002F8DB0, &qword_100228FA8);
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  __chkstk_darwin(v16);
  v19 = &v67 - v18;
  v20 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v67 - v22;
  v24 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v25 = *(*(v24 - 1) + 64);
  __chkstk_darwin(v24);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v23, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v29 + 32))(v27, v23, v28);
    v31 = a1;
    v32 = a1[3];
    v33 = v31[4];
    v82 = v31;
    sub_1000EF78C(v31, v32);
    sub_10013FCCC();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v2)
    {
      sub_1000EF824(v82);
      return (*(v29 + 8))(v27, v28);
    }

    else
    {
      v84 = 2;
      sub_1000EF8C4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v71 = &v27[v24[6]];
      *v71 = v83;
      v84 = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v27[v24[5]] = v83;
      v70 = v24[7];
      static Date.now.getter();
      LOBYTE(v83) = 3;
      sub_10013FDE0(&qword_1002F7D90, &type metadata accessor for Date);
      v34 = v81;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v35 = v80;
      v36 = v80[6];
      v37 = v77;
      if (v36(v77, 1, v34) == 1)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v71;
        isa = sub_100169D38(*v71, *(v71 + 1));
        v69 = v36;
        if (!isa)
        {
          isa = sub_1000F7D84().super.isa;
        }

        v41 = v74;
        *&v83 = isa;
        v42 = isa;
        sub_10013E0F4(&v83);
        objc_autoreleasePoolPop(v38);
        v43 = [v42 modificationDate];

        if (v43)
        {
          v44 = v73;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v78 + 8))(v19, v79);
          v45 = v80;
          v46 = v80[4];
          v47 = v44;
          v48 = v81;
          v46(v41, v47, v81);
          (v45[7])(v41, 0, 1, v48);
          v49 = v75;
          v46(v75, v41, v48);
          v50 = v48;
          v51 = v77;
          v52 = v70;
        }

        else
        {
          v74 = v80[7];
          v74(v41, 1, 1, v81);
          v68 = objc_autoreleasePoolPush();
          v53 = sub_100169D38(*v39, *(v39 + 1));
          if (!v53)
          {
            v53 = sub_1000F7D84().super.isa;
          }

          *&v83 = v53;
          v54 = v53;
          sub_10013E0F4(&v83);
          objc_autoreleasePoolPop(v68);
          v55 = [v54 creationDate];

          if (v55)
          {
            v56 = v73;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v78 + 8))(v19, v79);
            v57 = v80[4];
            v58 = v72;
            v59 = v56;
            v60 = v81;
            v57(v72, v59, v81);
            v74(v58, 0, 1, v60);
            v50 = v60;
            v49 = v75;
            v57(v75, v58, v50);
            v51 = v77;
          }

          else
          {
            v61 = v72;
            v62 = v81;
            v74(v72, 1, 1, v81);
            v50 = v62;
            v49 = v75;
            static Date.now.getter();
            v63 = v61;
            (*(v78 + 8))(v19, v79);
            v64 = v69(v61, 1, v50);
            v51 = v77;
            if (v64 != 1)
            {
              sub_100102138(v63);
            }
          }

          v65 = v69(v41, 1, v50);
          v52 = v70;
          if (v65 != 1)
          {
            sub_100102138(v41);
          }
        }

        v66 = v69(v51, 1, v50);
        v35 = v80;
        if (v66 != 1)
        {
          sub_100102138(v51);
        }
      }

      else
      {
        v50 = v34;
        (*(v78 + 8))(v19, v79);
        v49 = v75;
        (v35[4])(v75, v37, v50);
        v52 = v70;
      }

      (v35[5])(&v27[v52], v49, v50);
      sub_10013FD20(v27, v76);
      sub_1000EF824(v82);
      return sub_10013FD84(v27);
    }
  }

  return result;
}

uint64_t sub_10013D8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v67 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for Date();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = v69[8];
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v65 - v15;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v65 - v18;
  UUID.init(uuidString:)();
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v19, 1, v20);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v71 = v9;
  (*(v21 + 32))(a2, v19, v20);
  if (CKRecord.recordType.getter() == 0xD000000000000011 && 0x8000000100267A80 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      sub_10013FAC4();
      swift_allocError();
      *v31 = 0;
      swift_willThrow();
LABEL_20:

      return (*(v21 + 8))(a2, v20);
    }
  }

  v72 = a2;
  v25 = [a1 encryptedValues];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKeyedSubscript:v26];

  if (!v27 || (v75 = v27, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_17:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100226100;
    *(v36 + 56) = sub_1000EEE20();
    *(v36 + 64) = sub_10013FDE0(&qword_1002F7BE0, sub_1000EEE20);
    *(v36 + 32) = a1;
    v37 = a1;
    os_log(_:dso:log:_:_:)();

    sub_10013FAC4();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    a2 = v72;
    goto LABEL_20;
  }

  v28 = v73;
  v29 = v74;
  v30 = v74 >> 62;
  if ((v74 >> 62) <= 1)
  {
    if (!v30)
    {
      if (BYTE6(v74) > 0x99uLL)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v73), v73))
    {
      if (HIDWORD(v73) - v73 > 153)
      {
        goto LABEL_23;
      }

LABEL_16:
      sub_1000EF870(v73, v74);
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  if (v30 != 2)
  {
    goto LABEL_16;
  }

  v33 = *(v73 + 16);
  v32 = *(v73 + 24);
  v34 = __OFSUB__(v32, v33);
  v35 = v32 - v33;
  if (v34)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v35 <= 153)
  {
    goto LABEL_16;
  }

LABEL_23:
  v39 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v40 = (v72 + *(v39 + 20));
  *v40 = v28;
  v40[1] = v29;
  v41 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v41];
  [v41 finishEncoding];
  v42 = [v41 encodedData];
  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v66 = v39;
  v46 = (v72 + *(v39 + 24));
  *v46 = v43;
  v46[1] = v45;
  v47 = [a1 modificationDate];
  if (v47)
  {
    v48 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v50 = v69;
    v49 = v70;
    v51 = v69[4];
    v52 = v71;
    v51(v71, v13, v70);
    (v50[7])(v52, 0, 1, v49);
    v53 = v68;
    v51(v68, v52, v49);
    v54 = v72;
    v55 = v66;
  }

  else
  {
    v50 = v69;
    v49 = v70;
    v56 = v69[7];
    v56(v71, 1, 1, v70);
    v57 = [a1 creationDate];
    if (v57)
    {
      v58 = v57;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v59 = v50[4];
      v60 = v67;
      v59(v67, v13, v49);
      v56(v60, 0, 1, v49);
      v53 = v68;
      v59(v68, v60, v49);
      v61 = v50[6];
    }

    else
    {
      v62 = v67;
      v56(v67, 1, 1, v49);
      v63 = v62;
      v53 = v68;
      static Date.now.getter();
      swift_unknownObjectRelease();

      v61 = v50[6];
      if (v61(v63, 1, v49) != 1)
      {
        sub_100102138(v63);
      }
    }

    v64 = v71;
    v54 = v72;
    v55 = v66;
    if (v61(v71, 1, v49) != 1)
    {
      sub_100102138(v64);
    }
  }

  return (v50[4])(v54 + *(v55 + 28), v53, v49);
}

uint64_t sub_10013E0F4(id *a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = *a1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000EE954();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v9 = [v4 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v10 = (v1 + *(type metadata accessor for LegacyMagicPairingSettingsRecords() + 20));
  v12 = *v10;
  v11 = v10[1];
  if (v16 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      sub_1000EE9F4(v12, v11);
      swift_unknownObjectRelease();
      return sub_1000FF5CC(v15, v16);
    }
  }

  else if (v11 >> 60 != 15)
  {
    sub_1000EE9F4(v12, v11);
    sub_1000EE9F4(v12, v11);
    sub_1000FF5B8(v15, v16);
    v14 = sub_100121564(v15, v16, v12, v11);
    sub_1000EF870(v12, v11);
    sub_1000FF5CC(v15, v16);
    sub_1000FF5CC(v12, v11);
    sub_1000FF5CC(v15, v16);
    if (v14)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  sub_1000EE9F4(v12, v11);
  sub_1000FF5CC(v15, v16);
  sub_1000FF5CC(v12, v11);
LABEL_8:
  sub_1000EE9F4(v12, v11);
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

void sub_10013E3BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      return;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        return;
      }

      v79 = 0;
      v5 = BYTE6(v3);
      goto LABEL_12;
    }

    if (v2 == v2 >> 32)
    {
      return;
    }
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 24);
    v79 = *(v2 + 16);
  }

  else
  {
    v79 = v2;
    v5 = v2 >> 32;
  }

LABEL_12:
  if (__OFSUB__(v5, 1))
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
  }

  if (v79 < v5 - 1)
  {
    v6 = v5 - 2;
    v77 = v0;
    while (1)
    {
      v8 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        break;
      }

      if (v8)
      {
        if (v79 >= v2 >> 32 || v79 < v2)
        {
          goto LABEL_112;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_142;
        }

        v11 = v14;
        v15 = __DataStorage._offset.getter();
        v13 = v79 - v15;
        if (__OFSUB__(v79, v15))
        {
          goto LABEL_114;
        }

LABEL_33:
        v9 = *(v11 + v13);
        goto LABEL_34;
      }

      if (v79 >= BYTE6(v3))
      {
        goto LABEL_111;
      }

      v80 = v2;
      LOWORD(v81) = v3;
      BYTE2(v81) = BYTE2(v3);
      HIBYTE(v81) = BYTE3(v3);
      LOBYTE(v82) = BYTE4(v3);
      HIBYTE(v82) = BYTE5(v3);
      v9 = *(&v80 + v79);
LABEL_34:
      v16 = v6 + 1;
      v17 = *v1;
      v18 = v1[1];
      v19 = v18 >> 62;
      v78 = v9;
      if ((v18 >> 62) > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_143;
        }

        if (v16 < *(v17 + 16))
        {
          goto LABEL_115;
        }

        if (v16 >= *(v17 + 24))
        {
          goto LABEL_119;
        }

        v21 = __DataStorage._bytes.getter();
        if (!v21)
        {
          goto LABEL_147;
        }

        v22 = v21;
        v23 = __DataStorage._offset.getter();
        v24 = v16 - v23;
        if (__OFSUB__(v16, v23))
        {
          goto LABEL_122;
        }

        goto LABEL_49;
      }

      if (v19)
      {
        if (v16 >= v17 >> 32 || v16 < v17)
        {
          goto LABEL_118;
        }

        v25 = __DataStorage._bytes.getter();
        if (!v25)
        {
          goto LABEL_146;
        }

        v22 = v25;
        v26 = __DataStorage._offset.getter();
        v24 = v16 - v26;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_120;
        }

LABEL_49:
        v20 = *(v22 + v24);
        goto LABEL_50;
      }

      if (v16 >= BYTE6(v18))
      {
        goto LABEL_116;
      }

      v80 = *v1;
      LOWORD(v81) = v18;
      BYTE2(v81) = BYTE2(v18);
      HIBYTE(v81) = BYTE3(v18);
      LOBYTE(v82) = BYTE4(v18);
      HIBYTE(v82) = BYTE5(v18);
      v20 = *(&v80 + v6 + 1);
LABEL_50:
      v2 = *v1;
      v27 = v1[1];
      v28 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_145;
        }

        v30 = v27 & 0x3FFFFFFFFFFFFFFFLL;
        v31 = *v1;

        sub_1000EF870(v2, v27);
        *v1 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v79 < *(v2 + 16))
        {
          goto LABEL_121;
        }

        if (v79 >= *(v2 + 24))
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v2 + 16);
          v33 = *(v2 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v32, __DataStorage._offset.getter()))
            {
              goto LABEL_137;
            }

            if (__OFSUB__(v33, v32))
            {
              goto LABEL_134;
            }
          }

          else if (__OFSUB__(v33, v32))
          {
            goto LABEL_134;
          }

          v42 = type metadata accessor for __DataStorage();
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          swift_allocObject();
          v45 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v30 = v45;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v2 + 16);
          v47 = *(v2 + 24);
          type metadata accessor for Data.RangeReference();
          v48 = swift_allocObject();
          *(v48 + 16) = v46;
          *(v48 + 24) = v47;
          v16 = v6 + 1;

          v2 = v48;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v49 = __DataStorage._bytes.getter();
        if (!v49)
        {
          goto LABEL_150;
        }

        v50 = v49;
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v79, v51))
        {
          goto LABEL_130;
        }

        *(v50 + v79 - v51) = v20;
        v29 = v30 | 0x8000000000000000;
LABEL_79:
        *v1 = v2;
        v1[1] = v29;
        goto LABEL_80;
      }

      if (v28)
      {
        v34 = v27 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v2, v27);
        *v1 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v79 >= v2 >> 32 || v79 < v2)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
          {
            goto LABEL_136;
          }

          v35 = type metadata accessor for __DataStorage();
          v36 = *(v35 + 48);
          v37 = *(v35 + 52);
          swift_allocObject();
          v38 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v34 = v38;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v39 = __DataStorage._bytes.getter();
        if (!v39)
        {
          goto LABEL_148;
        }

        v40 = v39;
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v79, v41))
        {
          goto LABEL_126;
        }

        *(v40 + v79 - v41) = v20;
        v29 = v34 | 0x4000000000000000;
        goto LABEL_79;
      }

      sub_1000EF870(v2, v27);
      v80 = v2;
      LOWORD(v81) = v27;
      BYTE2(v81) = BYTE2(v27);
      HIBYTE(v81) = BYTE3(v27);
      LOBYTE(v82) = BYTE4(v27);
      HIBYTE(v82) = BYTE5(v27);
      v83 = BYTE6(v27);
      if (v79 >= BYTE6(v27))
      {
        goto LABEL_123;
      }

      *(&v80 + v79) = v20;
      v2 = v80;
      v29 = v76 & 0xF00000000000000 | v81 | ((v82 | (v83 << 16)) << 32);
      v1 = v77;
      *v77 = v80;
      v77[1] = v29;
      v76 = v29;
LABEL_80:
      v52 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v52 != 2)
        {
          goto LABEL_149;
        }

        v53 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v2, v29);
        *v1 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v16 < *(v2 + 16))
        {
          goto LABEL_127;
        }

        if (v16 >= *(v2 + 24))
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v2 + 16);
          v55 = *(v2 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v54, __DataStorage._offset.getter()))
            {
              goto LABEL_139;
            }

            if (__OFSUB__(v55, v54))
            {
              goto LABEL_135;
            }
          }

          else if (__OFSUB__(v55, v54))
          {
            goto LABEL_135;
          }

          v64 = type metadata accessor for __DataStorage();
          v65 = *(v64 + 48);
          v66 = *(v64 + 52);
          swift_allocObject();
          v67 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v53 = v67;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = v16;
          v69 = *(v2 + 16);
          v70 = *(v2 + 24);
          type metadata accessor for Data.RangeReference();
          v71 = swift_allocObject();
          *(v71 + 16) = v69;
          *(v71 + 24) = v70;
          v16 = v68;

          v2 = v71;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v72 = __DataStorage._bytes.getter();
        if (!v72)
        {
          goto LABEL_152;
        }

        v73 = v72;
        v74 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v74))
        {
          goto LABEL_133;
        }

        *(v73 + v16 - v74) = v78;
        v3 = v53 | 0x8000000000000000;
LABEL_15:
        *v1 = v2;
        v1[1] = v3;
        goto LABEL_16;
      }

      if (v52)
      {
        v56 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000EF870(v2, v29);
        *v1 = xmmword_100227DA0;
        sub_1000EF870(0, 0xC000000000000000);
        if (v16 >= v2 >> 32 || v16 < v2)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
          {
            goto LABEL_138;
          }

          v57 = type metadata accessor for __DataStorage();
          v58 = *(v57 + 48);
          v59 = *(v57 + 52);
          swift_allocObject();
          v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v56 = v60;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v61 = __DataStorage._bytes.getter();
        if (!v61)
        {
          goto LABEL_151;
        }

        v62 = v61;
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v63))
        {
          goto LABEL_132;
        }

        *(v62 + v16 - v63) = v78;
        v3 = v56 | 0x4000000000000000;
        goto LABEL_15;
      }

      sub_1000EF870(v2, v29);
      v80 = v2;
      LOWORD(v81) = v29;
      BYTE2(v81) = BYTE2(v29);
      HIBYTE(v81) = BYTE3(v29);
      LOBYTE(v82) = BYTE4(v29);
      HIBYTE(v82) = BYTE5(v29);
      v83 = BYTE6(v29);
      if (v16 >= BYTE6(v29))
      {
        goto LABEL_128;
      }

      v1 = v77;
      *(&v80 + v6 + 1) = v78;
      v2 = v80;
      v3 = v75 & 0xF00000000000000 | v81 | ((v82 | (v83 << 16)) << 32);
      *v77 = v80;
      v77[1] = v3;
      v75 = v3;
LABEL_16:
      if (++v79 >= v6--)
      {
        return;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_141;
    }

    if (v79 < *(v2 + 16))
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
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

    if (v79 >= *(v2 + 24))
    {
      goto LABEL_113;
    }

    v10 = __DataStorage._bytes.getter();
    if (!v10)
    {
      goto LABEL_144;
    }

    v11 = v10;
    v12 = __DataStorage._offset.getter();
    v13 = v79 - v12;
    if (__OFSUB__(v79, v12))
    {
      goto LABEL_117;
    }

    goto LABEL_33;
  }
}

uint64_t sub_10013EEF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_10013F970(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_10013F90C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = sub_1000EF870(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

void sub_10013F040(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      else if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (BYTE6(a2))
    {
LABEL_8:
      do
      {
        sub_10012119C(v10, 0);
        v13 = Data._copyContents(initializing:)();
        v14 = *(v5 + 8);
        v5 += 8;
        v14(v8, v4);
        if (v13 == v10)
        {
          break;
        }

        __break(1u);
LABEL_10:
        v15 = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_14;
        }

        v10 = v15;
      }

      while (v15);
    }
  }
}

uint64_t sub_10013F1A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8D98, &qword_100228FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_10013FCCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  type metadata accessor for UUID();
  sub_10013FDE0(&qword_1002F8340, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for LegacyMagicPairingSettingsRecords();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v20 = *v12;
    v21 = v13;
    v19 = 1;
    sub_1000EE9F4(v20, v13);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v20, v21);
    v14 = (v3 + v11[6]);
    v15 = v14[1];
    v20 = *v14;
    v21 = v15;
    v19 = 2;
    sub_1000EE9F4(v20, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v20, v21);
    v16 = v11[7];
    LOBYTE(v20) = 3;
    type metadata accessor for Date();
    sub_10013FDE0(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10013F450()
{
  v1 = 0x696669746E656469;
  v2 = 0x74654D64756F6C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10013F4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013FF40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013F508(uint64_t a1)
{
  v2 = sub_10013FCCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013F544(uint64_t a1)
{
  v2 = sub_10013FCCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10013F5BC(int *a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  Data.hash(into:)();
  v6 = (v1 + a1[6]);
  v7 = *v6;
  v8 = v6[1];
  Data.hash(into:)();
  v9 = a1[7];
  type metadata accessor for Date();
  sub_10013FDE0(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013F6D0(uint64_t a1, int *a2)
{
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  Data.hash(into:)();
  v10 = a2[7];
  type metadata accessor for Date();
  sub_10013FDE0(&qword_1002F7DE0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10013F7CC(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013FDE0(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  Data.hash(into:)();
  v10 = a2[7];
  type metadata accessor for Date();
  sub_10013FDE0(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013F90C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10013F970(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10013FA24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10013FA70()
{
  result = qword_1002F8CB8;
  if (!qword_1002F8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8CB8);
  }

  return result;
}

unint64_t sub_10013FAC4()
{
  result = qword_1002F8CC8;
  if (!qword_1002F8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8CC8);
  }

  return result;
}

uint64_t sub_10013FB50(uint64_t a1)
{
  *(a1 + 8) = sub_10013FDE0(&qword_1002F8D70, type metadata accessor for LegacyMagicPairingSettingsRecords);
  result = sub_10013FDE0(&qword_1002F8D78, type metadata accessor for LegacyMagicPairingSettingsRecords);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10013FC1C(uint64_t a1)
{
  result = sub_10013FDE0(&qword_1002F8D88, type metadata accessor for LegacyMagicPairingSettingsRecords);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10013FC78()
{
  result = qword_1002F8D90;
  if (!qword_1002F8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8D90);
  }

  return result;
}

unint64_t sub_10013FCCC()
{
  result = qword_1002F8DA0;
  if (!qword_1002F8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8DA0);
  }

  return result;
}

uint64_t sub_10013FD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013FD84(uint64_t a1)
{
  v2 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10013FDE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10013FE3C()
{
  result = qword_1002F8DB8;
  if (!qword_1002F8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8DB8);
  }

  return result;
}

unint64_t sub_10013FE94()
{
  result = qword_1002F8DC0;
  if (!qword_1002F8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8DC0);
  }

  return result;
}

unint64_t sub_10013FEEC()
{
  result = qword_1002F8DC8;
  if (!qword_1002F8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8DC8);
  }

  return result;
}

uint64_t sub_10013FF40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010026AE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1001400F0(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = &_swiftEmptyArrayStorage;
  v13 = &_swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v12[0] = *(i - 1);
      v12[1] = v8;

      a1(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

unint64_t sub_10014020C(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026DFD0;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000016;
        goto LABEL_15;
      case 4:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026DFF0;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000018;
        goto LABEL_15;
      case 5:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026DFB0;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000013;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v6;
        *(inited + 48) = 0x206E776F6E6B6E55;
        v4 = 0xED0000726F727245;
LABEL_16:
        *(inited + 56) = v4;
        v12 = sub_1000F99F0(inited);
        swift_setDeallocating();
        sub_1000EEE6C(v3, &unk_1002F9EB0, &unk_100227D50);
        return v12;
      case 1:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026E030;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000014;
        goto LABEL_15;
      case 2:
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = inited + 32;
        v4 = 0x800000010026E010;
        *(inited + 72) = &type metadata for String;
        v5 = 0xD000000000000015;
LABEL_15:
        *(inited + 40) = v2;
        *(inited + 48) = v5;
        goto LABEL_16;
    }
  }

  sub_1000EE870(&unk_1002F9530, qword_1002294F0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_100226C80;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  _StringGuts.grow(_:)(27);

  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  *(v7 + 72) = &type metadata for String;
  *(v7 + 48) = 0xD000000000000019;
  *(v7 + 56) = 0x800000010026DF90;
  *(v7 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 88) = v10;
  swift_getErrorValue();
  *(v7 + 120) = v14;
  v11 = sub_100133584((v7 + 96));
  (*(*(v14 - 8) + 16))(v11);
  v12 = sub_1000F99F0(v7);
  swift_setDeallocating();
  sub_1000EE870(&unk_1002F9EB0, &unk_100227D50);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1001406D0(uint64_t a1)
{
  v2 = sub_100163258();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10014070C(uint64_t a1)
{
  v2 = sub_100163258();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100140748()
{
  v1 = (type metadata accessor for CloudCoordinatorConfiguration() - 8);
  v2 = *(*v1 + 64);
  __chkstk_darwin();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x800000010026DF40;
  String.append(_:)(v5);
  v6 = v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v7 = (v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration + v1[8]);
  v8 = *v7;
  v9 = v7[1];

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x800000010026DF70;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  sub_100127864(v6, v4);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v12._countAndFlagsBits = 0xD000000000000034;
  v12._object = 0x8000000100269980;
  String.append(_:)(v12);
  String.append(_:)(*&v4[v1[8]]);
  v13._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v13._object = 0xEB00000000203A73;
  String.append(_:)(v13);
  v14 = *&v4[v1[10]];
  v15._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v15);

  String.append(_:)(v17);

  sub_1001278C8(v4);
  return v18;
}

id sub_100140910()
{

  sub_100140748();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void *sub_1001409C4()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = *(v0 + 16);
  v11 = v10;
  if (v10 == 1)
  {
    v12 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
    v20 = v1;
    v21 = v12;
    v13 = v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v14 = *(v13 + *(type metadata accessor for CloudCoordinatorConfiguration() + 24));
    v22 = 0xD000000000000028;
    v23 = 0x800000010026DF10;
    v19 = v0;
    String.append(_:)(v14);
    v18[1] = v23;
    v18[2] = v22;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1001624EC(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_1000FA0E0(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
    v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v15 = *(v19 + 16);
    *(v19 + 16) = v11;
    v16 = v11;
    sub_100163058(v15);
  }

  sub_100163068(v10);
  return v11;
}

id sub_100140CF8()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100226100;
    v5 = v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v6 = type metadata accessor for CloudCoordinatorConfiguration();
    v7 = (v5 + *(v6 + 24));
    v9 = *v7;
    v8 = v7[1];
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1000EE954();
    *(v4 + 32) = v9;
    *(v4 + 40) = v8;

    os_log(_:dso:log:_:_:)();

    v10 = (v5 + *(v6 + 24));
    v11 = *v10;
    v12 = v10[1];

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() containerWithIdentifier:v13];

    v15 = *(v0 + v1);
    *(v0 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

uint64_t sub_100140EA8()
{
  v1 = (v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId);
  if (*(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId + 8);
  }

  else
  {
    *v1 = xmmword_1002290D0;
    v2 = 0x2D65746176697270;
  }

  return v2;
}

id sub_100140F8C()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup;
  v2 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100141068(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(CKOperationGroup) init];
    v6 = String._bridgeToObjectiveC()();
    [v5 setName:v6];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

uint64_t sub_100141114()
{
  if (qword_1002F7AC0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100300E00 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1001630C0;
  *(v4 + 24) = v3;
  v13[4] = sub_1001633EC;
  v13[5] = v4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100174328;
  v13[3] = &unk_1002BFAA0;
  v5 = _Block_copy(v13);
  v6 = v1;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_100163058(*(v0 + 16));
    sub_1001630C8(v0 + 24);

    v8 = *(v0 + 48);

    v9 = *(v0 + 112);

    v10 = *(v0 + 120);

    sub_1001278C8(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration);

    v11 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId + 8);

    v12 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_identityUpdateNotificationListener);

    return v0;
  }

  return result;
}

uint64_t sub_1001413D4()
{
  sub_100141114();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudCoordinator()
{
  result = qword_1002F8E40;
  if (!qword_1002F8E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100141480()
{
  v1 = v0;
  v2 = type metadata accessor for CloudCoordinatorConfiguration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  sub_100127864(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration, v5);
  aBlock = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v7._object = 0x8000000100269980;
  v7._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v7);
  String.append(_:)(*&v5[*(v2 + 24)]);
  v8._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v8._object = 0xEB00000000203A73;
  String.append(_:)(v8);
  v9 = *&v5[*(v2 + 32)];
  v10._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v10);

  v11 = aBlock;
  v12 = v24;
  sub_1001278C8(v5);
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v11;
  *(v6 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  if (qword_1002F7AC0 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100300E00 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100163048;
  *(v16 + 24) = v15;
  v27 = sub_1001633EC;
  v28 = v16;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100174328;
  v26 = &unk_1002BF9D8;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  dispatch_sync(v18, v17);

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10014D010();
  v20 = *(v1 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100163050;
  *(v21 + 24) = v1;
  v27 = sub_1001633EC;
  v28 = v21;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100174328;
  v26 = &unk_1002BFA28;
  v22 = _Block_copy(&aBlock);

  dispatch_sync(v20, v22);
  _Block_release(v22);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100141908()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v15);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v14 = *(v0 + 72);
  aBlock[4] = sub_100163040;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF938;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  v13 = v0;
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v10 = *(v13 + 56);
  OS_dispatch_semaphore.signal()();
  static os_log_type_t.default.getter();
  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100141C98(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) = 1;
  return result;
}

void sub_100141D34(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + 72);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v27 = a1;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  *(v2 + 96) = 3;
  *(v2 + 104) = 0;
  *(v2 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) = 0;
  v20 = *(v2 + 88);
  v36 = sub_100162FE8;
  v37 = v2;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v26 = &v34;
  v34 = sub_1001742E0;
  v35 = &unk_1002BF898;
  v21 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);

  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v27 & 1;

  v23 = sub_100140CF8();
  v24 = swift_allocObject();
  v24[2] = v2;
  v24[3] = sub_1001634E4;
  v24[4] = v22;
  v36 = sub_1001633E0;
  v37 = v24;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10015016C;
  v35 = &unk_1002BF910;
  v25 = _Block_copy(&aBlock);

  [v23 accountStatusWithCompletionHandler:v25];
  _Block_release(v25);
}

uint64_t sub_10014225C(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + 56);
  OS_dispatch_semaphore.wait()();
  static os_log_type_t.default.getter();

  return os_log(_:dso:log:_:_:)();
}

void sub_10014233C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)(v4);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  sub_10015DF00(v12, 0.0, 120.0);
  v14 = v13;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100226C80;
  *(v15 + 56) = &type metadata for Double;
  *(v15 + 64) = &protocol witness table for Double;
  *(v15 + 32) = a1;
  *(v15 + 96) = &type metadata for Double;
  *(v15 + 104) = &protocol witness table for Double;
  *(v15 + 72) = v14;
  os_log(_:dso:log:_:_:)();

  Date.init()();
  Date.addingTimeInterval(_:)();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_allocWithZone(BTXPCTimer);

  v19 = String._bridgeToObjectiveC()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  aBlock[4] = sub_100162FD8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147160;
  aBlock[3] = &unk_1002BF848;
  v21 = _Block_copy(aBlock);
  v22 = [v18 initWithName:v19 date:isa gracePeriod:1 priority:705 options:v21 block:1.0];
  _Block_release(v21);

  v16(v11, v4);

  v23 = *(v2 + 40);
  *(v2 + 40) = v22;
}

uint64_t sub_100142664(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v11 = a1;
  v12 = [v11 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + 72);
    aBlock[4] = sub_100162FE0;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BF870;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = &_swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v19 = v23;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v22 + 8))(v5, v19);
    (*(v20 + 8))(v9, v21);
  }

  return result;
}

void sub_100142A34(uint64_t a1)
{
  [*(a1 + 40) invalidate];
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;

  sub_100141D34(1);
}

uint64_t sub_100142A78(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 72);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v1 + 128))
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

LABEL_15:
    swift_once();
    return os_log(_:dso:log:_:_:)();
  }

  v12 = *(v1 + 48);
  if (!v12)
  {
    return sub_100142F64(a1 & 1, 0);
  }

  v13 = *(v1 + 40);
  v14 = *(v1 + 48);

  if (v13)
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    [*(v1 + 40) invalidate];
    v15 = *(v1 + 40);
    *(v1 + 40) = 0;

    v16 = *(v12 + 40);
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v17 = *(v1 + 48);
    *(v1 + 48) = 0;

    sub_100142F64(a1 & 1, 1);
  }

  v31 = v12;
  v30 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v18 = swift_allocObject();
  v29 = xmmword_100226100;
  *(v18 + 16) = xmmword_100226100;
  swift_beginAccess();
  v19 = *(v1 + 112);
  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);

  sub_1000EE870(&qword_1002F94F0, &qword_100229380);
  sub_100162740(&qword_1002F94F8, &qword_1002F85A0, CKRecord_ptr);
  v20 = Dictionary.Keys.description.getter();
  v22 = v21;

  *(v18 + 56) = &type metadata for String;
  v23 = sub_1000EE954();
  *(v18 + 64) = v23;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  swift_beginAccess();
  v25 = *(v1 + 120);
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);

  sub_1000EE870(&qword_1002F9500, &qword_100229388);
  sub_100162740(&qword_1002F9508, &unk_1002F8B50, CKRecordID_ptr);
  v26 = Dictionary.Keys.description.getter();
  v28 = v27;

  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v23;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100142F64(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 72);
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100226100;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  v16 = a1 & 1;
  *(v15 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  *(v18 + 25) = a2 & 1;
  type metadata accessor for LocalDispatchTimer();
  swift_allocObject();
  v19 = LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(v13, sub_100162F04, v18, 3.0, 0.0, 1.0);
  v20 = *(v3 + 48);
  *(v3 + 48) = v19;

  v21 = *(v19 + 40);
  swift_getObjectType();
  OS_dispatch_source.resume()();
}

void sub_100143204(uint64_t a1, char a2, char a3)
{
  LOBYTE(v3) = a3;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    os_log(_:dso:log:_:_:)();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v5 = Strong;
    v69 = v3;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    *(v5 + 128) = 1;
    v6 = *(v5 + 48);
    if (v6)
    {
      v7 = *(v6 + 40);
      swift_getObjectType();

      OS_dispatch_source.cancel()();

      v8 = *(v5 + 48);
    }

    *(v5 + 48) = 0;

    v9 = *(v5 + 72);
    v10 = swift_allocObject();
    swift_beginAccess();
    v11 = *(v5 + 120);
    v68 = v10;
    *(v10 + 16) = v11;
    v66 = v9;

    v12 = _swiftEmptyArrayStorage;
    v13 = sub_1000F9C3C(_swiftEmptyArrayStorage);
    v14 = *(v5 + 120);
    *(v5 + 120) = v13;

    v15 = swift_allocObject();
    swift_beginAccess();
    v16 = *(v5 + 112);
    v67 = v15;
    *(v15 + 16) = v16;

    v17 = sub_1000F9C64(_swiftEmptyArrayStorage);
    v18 = *(v5 + 112);
    v70 = v5;
    *(v5 + 112) = v17;

    v19 = *(v16 + 16);
    if (v19)
    {
      v12 = sub_1001CE204(v19, 0);
      v20 = sub_10015EDA0(&v72, (v12 + 32), v19, v16);

      sub_100162F14();
      if (v20 != v19)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    v21 = *(v11 + 16);
    if (v21)
    {
      v65 = sub_1001CE204(*(v11 + 16), 0);
      v22 = sub_10015EDA0(&v72, (v65 + 32), v21, v11);

      sub_100162F14();
      if (v22 != v21)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v65 = _swiftEmptyArrayStorage;
    }

    static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100226100;
    LODWORD(v3) = v12 < 0 || (v12 & 0x4000000000000000) != 0;
    if (v3 == 1)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *(v12 + 16);
    }

    v72 = v24;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    *(v23 + 56) = &type metadata for String;
    v28 = sub_1000EE954();
    *(v23 + 64) = v28;
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    if (IsAppleInternalBuild())
    {
      static os_log_type_t.default.getter();
    }

    else
    {
      static os_log_type_t.debug.getter();
    }

    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100226100;
    if (v3)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *(v12 + 16);
    }

    v64 = v28;
    if (!v29)
    {
LABEL_35:
      v41 = Array.description.getter();
      v43 = v42;

      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = v64;
      *(v63 + 32) = v41;
      *(v63 + 40) = v43;
      os_log(_:dso:log:_:_:)();

      static os_log_type_t.default.getter();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100226100;
      if (v65 < 0 || (v65 & 0x4000000000000000) != 0)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *(v65 + 16);
      }

      v72 = v45;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = v64;
      *(v44 + 32) = v46;
      *(v44 + 40) = v47;
      os_log(_:dso:log:_:_:)();

      if (IsAppleInternalBuild())
      {
        static os_log_type_t.default.getter();
      }

      else
      {
        static os_log_type_t.debug.getter();
      }

      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100226100;
      sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
      v49 = Array.description.getter();
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v64;
      *(v48 + 32) = v49;
      *(v48 + 40) = v50;
      os_log(_:dso:log:_:_:)();

      sub_1000FA784(0, &qword_1002F9358, CKModifyRecordsOperation_ptr);

      v73.value._rawValue = v12;
      v73.is_nil = v65;
      v51 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v73, v74).super.super.super.super.isa;
      if (a2)
      {
        v52 = sub_100140F8C();
      }

      else
      {
        v52 = sub_10014103C();
      }

      v53 = v52;
      [(objc_class *)v51 setGroup:v52, v63];

      [(objc_class *)v51 setCallbackQueue:*(v70 + 80)];
      if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
      {
        [(objc_class *)v51 setQualityOfService:25];
      }

      v54 = [(objc_class *)v51 configuration];
      if (v54)
      {
        v55 = v54;
        [v54 setAutomaticallyRetryNetworkFailures:0];

        v56 = [(objc_class *)v51 configuration];
        if (v56)
        {

          [v56 setDiscretionaryNetworkBehavior:0];

          v57 = swift_allocObject();
          *(v57 + 16) = v67;
          *(v57 + 24) = v70;

          CKModifyRecordsOperation.perRecordSaveBlock.setter();

          CKModifyRecordsOperation.perRecordDeleteBlock.setter();
          v58 = swift_allocObject();
          *(v58 + 16) = v66;
          *(v58 + 24) = v70;
          *(v58 + 32) = v67;
          *(v58 + 40) = v68;
          *(v58 + 48) = a2 & 1;
          *(v58 + 49) = v69 & 1;
          v59 = v66;

          CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
          v60 = *(v70 + 64);
          swift_allocObject();
          v61 = swift_weakInit();
          __chkstk_darwin(v61);
          v62 = v60;
          sub_1000EE870(&qword_1002F92E8, &unk_100229290);
          OS_dispatch_queue.sync<A>(execute:)();

          return;
        }

        goto LABEL_58;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v12 + 16))
        {
          goto LABEL_51;
        }

        v32 = *(v12 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_100143BEC();
      v36 = v35;
      v3 = v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1001CF194(0, *(v31 + 2) + 1, 1, v31);
      }

      v39 = *(v31 + 2);
      v38 = *(v31 + 3);
      if (v39 >= v38 >> 1)
      {
        v31 = sub_1001CF194((v38 > 1), v39 + 1, 1, v31);
      }

      *(v31 + 2) = v39 + 1;
      v40 = &v31[16 * v39];
      *(v40 + 4) = v36;
      *(v40 + 5) = v3;
      ++v30;
      if (v34 == v29)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }
}

void sub_100143BEC()
{
  v1 = v0;
  v2 = [objc_msgSend(v0 "encryptedValues")];
  swift_unknownObjectRelease();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 0;
  v5 = *(v3 + 16);
  v6 = v3 + 40;
LABEL_2:
  v7 = (v6 + 16 * v4);
  while (1)
  {
    if (v5 == v4)
    {

      sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
      Array.description.getter();

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    ++v4;
    v8 = v7 + 2;
    v9 = *(v7 - 1);
    v10 = *v7;

    v11 = [v1 encryptedValues];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 objectForKeyedSubscript:v12];

    swift_unknownObjectRelease();
    v7 = v8;
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v3 + 40;
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_100143DE0(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v5 = *(a4 + 16);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a4 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v56 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v57 = *(*(v56 + 56) + 16 * v15);
      v16 = *(*(v56 + 48) + 8 * v15);

      v17 = v16;
      v18 = [v16 recordID];
      v19 = [v18 recordName];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = [a1 recordName];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {

        goto LABEL_19;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        break;
      }

      v11 &= v11 - 1;

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_19:

    v35 = swift_allocObject();
    *(v35 + 16) = v57;

    v36 = v17;
    if ((a3 & 1) == 0)
    {
      sub_1001456B8(a2, sub_1001634E0, v35);
LABEL_29:
      swift_beginAccess();
      v52 = sub_10015C4EC(v17, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
      swift_endAccess();
      sub_100007B0C(v52);

      return;
    }

    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1002289A0;
    v38 = a1;
    v39 = [v38 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    *(v37 + 56) = &type metadata for String;
    v43 = sub_1000EE954();
    *(v37 + 64) = v43;
    *(v37 + 32) = v40;
    *(v37 + 40) = v42;
    v58 = a2;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v44 = String.init<A>(describing:)();
    *(v37 + 96) = &type metadata for String;
    *(v37 + 104) = v43;
    *(v37 + 72) = v44;
    *(v37 + 80) = v45;
    v46 = [v17 recordChangeTag];
    if (v46)
    {
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = (v37 + 112);
      *(v37 + 136) = &type metadata for String;
      *(v37 + 144) = v43;
      if (v50)
      {
        *v51 = v48;
LABEL_28:
        *(v37 + 120) = v50;
        os_log(_:dso:log:_:_:)();

        v58 = a2;
        v59 = 1;

        (v57)(&v58);

        goto LABEL_29;
      }
    }

    else
    {
      v51 = (v37 + 112);
      *(v37 + 136) = &type metadata for String;
      *(v37 + 144) = v43;
    }

    *v51 = 15932;
    v50 = 0xE200000000000000;
    goto LABEL_28;
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AD8 == -1)
  {
    goto LABEL_16;
  }

LABEL_31:
  swift_once();
LABEL_16:
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100226100;
  v30 = a1;
  v31 = [v30 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000EE954();
  *(v29 + 32) = v32;
  *(v29 + 40) = v34;
  os_log(_:dso:log:_:_:)();
}

void sub_1001443B0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = *(v6 + 56) + 16 * v13;
      v17 = *v15;
      v16 = *(v15 + 8);
      sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
      v18 = v14;
      swift_retain_n();
      v19 = v18;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100226100;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_1000EE954();
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      os_log(_:dso:log:_:_:)();

      v40[0] = a2;
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100226100;
      v32 = a1;
      v33 = [v32 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_1000EE954();
      *(v31 + 32) = v34;
      *(v31 + 40) = v36;
      os_log(_:dso:log:_:_:)();

      v40[0] = 0;
    }

    v17(v40);
    swift_beginAccess();
    v37 = sub_10015C4EC(v19, sub_1000F8DD8, &qword_1002F8020, &unk_100226FF0);
    swift_endAccess();
    sub_100007B0C(v37);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 == -1)
    {
      goto LABEL_12;
    }

LABEL_22:
    swift_once();
LABEL_12:
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100226100;
    v22 = a1;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_1000EE954();
    *(v21 + 32) = v24;
    *(v21 + 40) = v26;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1001448A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v26 = a8;
  v30 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin(v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DispatchQoS();
  v27 = *(v17 - 8);
  v28 = v17;
  v18 = *(v27 + 64);
  __chkstk_darwin(v17);
  v20 = &v25[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  a2 &= 1u;
  *(v22 + 32) = a2;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  *(v22 + 56) = a7;
  *(v22 + 57) = v26;
  aBlock[4] = sub_100162F74;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF7F8;
  v23 = _Block_copy(aBlock);

  sub_100162F8C(a1, a2);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v16, v13);
  (*(v27 + 8))(v20, v28);
}

uint64_t sub_100144BE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *&v120 = a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v112 = v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v107 = v14;
    v108 = a5;
    i = &unk_1002F7000;
    v20 = &qword_100226000;
    v110 = a6;
    v111 = a7;
    if ((a3 & 1) == 0)
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v121 = qword_100300E28;
      os_log(_:dso:log:_:_:)();
LABEL_34:
      *(v18 + 128) = 0;
      static os_log_type_t.default.getter();
      if (i[347] != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_35;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v104[0] = Strong;
      v104[1] = a1;
      v105 = v13;
      v106 = v18;
      static os_log_type_t.error.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v22 = qword_100300E28;
      v119 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100226100;
      v129 = v120;
      swift_errorRetain();
      v118 = sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      v117 = sub_1000EE954();
      *(v23 + 64) = v117;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v121 = v22;
      os_log(_:dso:log:_:_:)();

      swift_beginAccess();
      v27 = *(a4 + 16);
      v28 = v27 + 64;
      v29 = 1 << *(v27 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v18 = v30 & *(v27 + 64);
      v31 = (v29 + 63) >> 6;
      v115 = v27;

      v32 = 0;
      v113 = xmmword_1002289A0;
      v114 = v28;
      *&v109 = v31;
      while (1)
      {
        if (!v18)
        {
          while (1)
          {
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
              goto LABEL_52;
            }

            if (v35 >= v31)
            {
              break;
            }

            v18 = *(v28 + 8 * v35);
            ++v32;
            if (v18)
            {
              v32 = v35;
              goto LABEL_20;
            }
          }

          v56 = v108;
          swift_beginAccess();
          v57 = *(v56 + 16);
          v58 = *(v57 + 64);
          v108 = v57 + 64;
          v59 = 1 << *(v57 + 32);
          v60 = -1;
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          v20 = v60 & v58;
          v61 = (v59 + 63) >> 6;
          *&v113 = v57;

          v62 = 0;
          v109 = xmmword_100226C80;
          for (i = &unk_1002F7000; v20; i = &unk_1002F7000)
          {
            v63 = v62;
LABEL_31:
            v64 = __clz(__rbit64(v20));
            v20 &= v20 - 1;
            v65 = v64 | (v63 << 6);
            v66 = *(*(v113 + 48) + 8 * v65);
            v67 = (*(v113 + 56) + 16 * v65);
            v68 = *v67;
            v115 = v67[1];
            v116 = v68;
            v69 = v66;

            LODWORD(v114) = static os_log_type_t.error.getter();
            v18 = swift_allocObject();
            *(v18 + 16) = v109;
            v70 = v69;
            v71 = [v70 description];
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v73;

            v74 = v117;
            *(v18 + 56) = &type metadata for String;
            *(v18 + 64) = v74;
            *(v18 + 32) = v72;
            *(v18 + 40) = v13;
            v75 = v120;
            v126[0] = v120;
            sub_100162F8C(v120, 1);
            v76 = String.init<A>(describing:)();
            *(v18 + 96) = &type metadata for String;
            *(v18 + 104) = v74;
            *(v18 + 72) = v76;
            *(v18 + 80) = v77;
            os_log(_:dso:log:_:_:)();

            v126[0] = v75;
            v116(v126);
          }

          while (1)
          {
            v63 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              break;
            }

            if (v63 >= v61)
            {

              v13 = v105;
              v18 = v106;
              v20 = &qword_100226000;
              goto LABEL_34;
            }

            v20 = *(v108 + 8 * v63);
            ++v62;
            if (v20)
            {
              v62 = v63;
              goto LABEL_31;
            }
          }

LABEL_52:
          __break(1u);
LABEL_53:
          swift_once();
LABEL_35:
          os_log(_:dso:log:_:_:)();
          static os_log_type_t.default.getter();
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v78 = swift_allocObject();
          v120 = *(v20 + 256);
          *(v78 + 16) = v120;
          swift_beginAccess();
          v79 = swift_weakLoadStrong();
          if (v79)
          {
            v80 = v79;
            swift_beginAccess();
            v81 = *(v80 + 112);
          }

          else
          {
            v81 = 0;
          }

          v125 = v81;
          sub_1000EE870(&qword_1002F94E0, &qword_100229370);
          v82 = String.init<A>(describing:)();
          v84 = v83;
          *(v78 + 56) = &type metadata for String;
          v85 = sub_1000EE954();
          *(v78 + 64) = v85;
          *(v78 + 32) = v82;
          *(v78 + 40) = v84;
          os_log(_:dso:log:_:_:)();

          static os_log_type_t.default.getter();
          v86 = swift_allocObject();
          *(v86 + 16) = v120;
          swift_beginAccess();
          v87 = swift_weakLoadStrong();
          if (v87)
          {
            v88 = v87;
            swift_beginAccess();
            v89 = *(v88 + 120);
          }

          else
          {
            v89 = 0;
          }

          v124 = v89;
          sub_1000EE870(&qword_1002F94E8, &qword_100229378);
          v90 = String.init<A>(describing:)();
          *(v86 + 56) = &type metadata for String;
          *(v86 + 64) = v85;
          *(v86 + 32) = v90;
          *(v86 + 40) = v91;
          os_log(_:dso:log:_:_:)();

          swift_beginAccess();
          if (*(*(v18 + 112) + 16) || (swift_beginAccess(), *(*(v18 + 120) + 16)))
          {
            sub_100142A78(v110 & 1);
          }

          if (v111)
          {
            sub_100152F5C(45.0);
            static os_log_type_t.default.getter();
            v92 = swift_allocObject();
            *(v92 + 16) = v120;
            v93 = *(v18 + 40);
            if (v93)
            {
              v94 = [v93 date];
              v95 = v112;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v96 = objc_opt_self();
              isa = Date._bridgeToObjectiveC()().super.isa;
              v98 = [v96 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

              v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v101 = v100;

              (*(v107 + 8))(v95, v13);
            }

            else
            {
              v99 = 0;
              v101 = 0;
            }

            v122 = v99;
            v123 = v101;
            sub_1000EE870(&qword_1002F94C0, qword_100227A98);
            v102 = String.init<A>(describing:)();
            *(v92 + 56) = &type metadata for String;
            *(v92 + 64) = v85;
            *(v92 + 32) = v102;
            *(v92 + 40) = v103;
            os_log(_:dso:log:_:_:)();
          }
        }

LABEL_20:
        v36 = __clz(__rbit64(v18)) | (v32 << 6);
        v37 = *(*(v115 + 6) + 8 * v36);
        v38 = *(v115 + 7) + 16 * v36;
        v40 = *v38;
        v39 = *(v38 + 8);
        v41 = v120;
        v127 = v120;
        v128 = 1;
        v20 = v37;

        v40(&v127);

        LODWORD(v116) = static os_log_type_t.error.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = v113;
        v43 = [v20 recordID];
        v44 = [v43 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = v117;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = v47;
        *(v42 + 32) = v13;
        *(v42 + 40) = v46;
        v127 = v41;
        v48 = v41;
        v49 = v47;
        sub_100162F8C(v48, 1);
        v50 = String.init<A>(describing:)();
        *(v42 + 96) = &type metadata for String;
        *(v42 + 104) = v49;
        *(v42 + 72) = v50;
        *(v42 + 80) = v51;
        v52 = v20;
        v53 = [v20 recordChangeTag];
        if (!v53)
        {
          break;
        }

        v54 = v53;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = &type metadata for String;
        v34 = v55;

        v33 = (v42 + 112);
        *(v42 + 136) = &type metadata for String;
        *(v42 + 144) = v49;
        if (!v34)
        {
          goto LABEL_13;
        }

        *v33 = v13;
        v31 = v109;
LABEL_14:
        v18 &= v18 - 1;
        *(v42 + 120) = v34;
        os_log(_:dso:log:_:_:)();

        v28 = v114;
      }

      v33 = (v42 + 112);
      *(v42 + 136) = &type metadata for String;
      *(v42 + 144) = v49;
LABEL_13:
      v31 = v109;
      *v33 = 15932;
      v34 = 0xE200000000000000;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1001456B8(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v36 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v40 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v41);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  v11 = [a1 recordID];
  v12 = [v11 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v10 + 64) = v16;
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  v17 = [a1 recordChangeTag];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = (v10 + 72);
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v16;
    if (v21)
    {
      *v22 = v19;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = (v10 + 72);
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v16;
  }

  *v22 = 15932;
  v21 = 0xE200000000000000;
LABEL_8:
  *(v10 + 80) = v21;
  os_log(_:dso:log:_:_:)();

  if (IsAppleInternalBuild())
  {
    static os_log_type_t.default.getter();
  }

  else
  {
    static os_log_type_t.debug.getter();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100226100;
  sub_100143BEC();
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v16;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = v37;
  v27 = *(v37 + 72);
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = v26;
  v29 = v38;
  v28[4] = v36;
  v28[5] = v29;
  aBlock[4] = sub_100162E64;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF668;
  v30 = _Block_copy(aBlock);
  v31 = a1;

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  v32 = v40;
  v33 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v9, v41);
}

void sub_100145B90(void *a1, uint64_t a2, void (*a3)(void *, void), uint64_t a4)
{
  v6 = &selRef_canSend;
  v7 = [a1 encryptedValues];
  v72 = "le error %@";
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKeyedSubscript:v8];
  swift_unknownObjectRelease();

  if (v9)
  {
    v76 = v9;
    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    v10 = swift_dynamicCast();
    v11 = v78;
    if (!v10)
    {
      v11 = 0;
    }

    v69 = v11;
    if (v10)
    {
      v12 = v79;
    }

    else
    {
      v12 = 0;
    }

    v73 = v12;
  }

  else
  {
    v69 = 0;
    v73 = 0;
  }

  v68 = a1;
  v70 = CKRecord.recordType.getter();
  v71 = v13;
  swift_beginAccess();
  v14 = *(a2 + 112);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  while (1)
  {
    if (!v17)
    {
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          a3(v68, 0);
          return;
        }

        v17 = *(v14 + 64 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

    v21 = __clz(__rbit64(v17)) | (v19 << 6);
    *v74 = *(*(v14 + 56) + 16 * v21);
    v22 = *(*(v14 + 48) + 8 * v21);
    v7 = v74[1];
    swift_retain_n();
    v23 = v22;
    v24 = [v23 v6[255]];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 objectForKeyedSubscript:v25];
    swift_unknownObjectRelease();

    if (!v26)
    {
      goto LABEL_12;
    }

LABEL_20:
    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    if (swift_dynamicCast())
    {
      if (!v73)
      {

        v6 = &selRef_canSend;
        goto LABEL_14;
      }

      v6 = &selRef_canSend;
      if (v76 == v69 && v73 == v77)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_12:
      v6 = &selRef_canSend;
      if (v73)
      {
        goto LABEL_13;
      }
    }

    if (CKRecord.recordType.getter() == v70 && v28 == v71)
    {

      goto LABEL_37;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      break;
    }

LABEL_14:
    v17 &= v17 - 1;
  }

LABEL_37:

  v31 = swift_allocObject();
  *(v31 + 16) = *v74;
  v7 = v23;
  v72 = v31;

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 == -1)
  {
    goto LABEL_38;
  }

LABEL_46:
  swift_once();
LABEL_38:
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100226100;
  v33 = v7;
  v34 = [v33 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v32 + 56) = &type metadata for String;
  v38 = sub_1000EE954();
  *(v32 + 64) = v38;
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  os_log(_:dso:log:_:_:)();

  if (IsAppleInternalBuild())
  {
    static os_log_type_t.default.getter();
  }

  else
  {
    static os_log_type_t.debug.getter();
  }

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100226C80;
  v40 = [v33 recordID];
  v41 = [v40 description];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = v38;
  *(v39 + 32) = v42;
  *(v39 + 40) = v44;
  sub_100143BEC();
  *(v39 + 96) = &type metadata for String;
  *(v39 + 104) = v38;
  *(v39 + 72) = v45;
  *(v39 + 80) = v46;
  os_log(_:dso:log:_:_:)();

  v47 = &selRef_canSend;
  v48 = [objc_msgSend(v33 "encryptedValues")];
  swift_unknownObjectRelease();
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = *(v49 + 16);
  v51 = v33;
  v52 = v68;
  if (v50)
  {
    v53 = (v49 + 40);
    do
    {
      v55 = *(v53 - 1);
      v54 = *v53;

      v75 = [v52 v47[255]];
      v56 = [v51 v47[255]];
      v57 = String._bridgeToObjectiveC()();
      v58 = v52;
      v59 = v51;
      v60 = [v56 objectForKeyedSubscript:v57];

      v47 = &selRef_canSend;
      swift_unknownObjectRelease();
      v61 = String._bridgeToObjectiveC()();

      [v75 setObject:v60 forKeyedSubscript:v61];
      v51 = v59;
      v52 = v58;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v53 += 2;
      --v50;
    }

    while (v50);
  }

  v62 = swift_allocObject();
  v62[2] = sub_1001634E0;
  v62[3] = v72;
  v62[4] = a3;
  v62[5] = a4;
  swift_beginAccess();

  v63 = sub_10015C4EC(v51, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
  sub_100007B0C(v63);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_100162E70;
  *(v64 + 24) = v62;

  v65 = sub_10015DFA4(sub_1001634DC, v64, v52);
  swift_endAccess();
  sub_100007B0C(v65);
}

void sub_1001463EC(uint64_t a1, void *a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v61 = a5;
  v60 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v64 = swift_allocObject();
  *(v64 + 16) = _swiftEmptyArrayStorage;
  v62 = swift_allocObject();
  *(v62 + 16) = _swiftEmptyArrayStorage;
  v17 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v18 = type metadata accessor for CloudCoordinatorConfiguration();
  (*(v10 + 16))(v13, v17 + *(v18 + 28), v9);
  v67 = a2;
  sub_10013A374(v13, [a2 scope]);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v20 = sub_10013A930();
  v19(v16, v9);
  v21 = v20;
  v22 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v20];
  v23 = *(a1 + 80);
  v24 = v22;
  [v24 setCallbackQueue:v23];
  v65 = a1;
  if (a3)
  {
    v25 = sub_100140F48();
  }

  else
  {
    v25 = sub_100140F1C();
  }

  v26 = v25;
  [v24 setGroup:v25];

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v66 = qword_100300E28;
  v59[1] = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100226C80;
  [v67 scope];
  v28 = CKDatabaseScope.description.getter();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_1000EE954();
  v32 = v31;
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v33 = v21;
  if (v21)
  {
    v34 = [v21 data];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Data.hexString.getter(v35, v37);
    v40 = v39;
    sub_1000EF870(v35, v37);
    v41 = (v27 + 72);
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v32;
    if (v40)
    {
      *v41 = v38;
      v33 = v21;
      goto LABEL_12;
    }

    v33 = v21;
  }

  else
  {
    v41 = (v27 + 72);
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v31;
  }

  *v41 = 7104878;
  v40 = 0xE300000000000000;
LABEL_12:
  *(v27 + 80) = v40;
  os_log(_:dso:log:_:_:)();

  [v24 setFetchAllChanges:1];
  v42 = [v24 configuration];
  if (v42)
  {
    v43 = v42;
    v59[0] = v33;
    [v42 setAutomaticallyRetryNetworkFailures:0];

    v44 = [v24 configuration];
    v45 = v65;
    if (v44)
    {
      [v44 setDiscretionaryNetworkBehavior:0];

      v46 = v64;
      v72 = sub_100162D4C;
      v73 = v64;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_1001634D4;
      v71 = &unk_1002BF4B0;
      v47 = _Block_copy(&aBlock);

      [v24 setRecordZoneWithIDChangedBlock:v47];
      _Block_release(v47);
      v48 = v62;
      v72 = sub_100162D54;
      v73 = v62;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_1001634D4;
      v71 = &unk_1002BF4D8;
      v49 = _Block_copy(&aBlock);

      [v24 setRecordZoneWithIDWasDeletedBlock:v49];
      _Block_release(v49);
      v50 = swift_allocObject();
      v51 = v60 & 1;
      *(v50 + 16) = v60 & 1;
      v72 = sub_100162D5C;
      v73 = v50;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_1001634D4;
      v71 = &unk_1002BF528;
      v52 = _Block_copy(&aBlock);

      [v24 setChangeTokenUpdatedBlock:v52];
      _Block_release(v52);
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v53 = swift_allocObject();
      v54 = v61;
      *(v53 + 16) = v45;
      *(v53 + 24) = v54;
      *(v53 + 32) = v63;
      *(v53 + 40) = v51;
      *(v53 + 48) = v48;
      *(v53 + 56) = v46;
      v55 = v67;
      *(v53 + 64) = v67;

      v56 = v55;
      CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter();
      static os_log_type_t.default.getter();
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100226100;
      *(v57 + 56) = sub_1000FA784(0, &qword_1002F94C8, CKFetchDatabaseChangesOperation_ptr);
      *(v57 + 64) = sub_100162740(&qword_1002F94D0, &qword_1002F94C8, CKFetchDatabaseChangesOperation_ptr);
      *(v57 + 32) = v24;
      v58 = v24;
      os_log(_:dso:log:_:_:)();

      [v56 addOperation:v58];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100146B74(void *a1, uint64_t a2)
{
  v4 = [a1 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000016 && 0x800000010026BC20 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      v10 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100226100;
      v12 = v10;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_1000EE954();
      *(v11 + 32) = v14;
      *(v11 + 40) = v16;
      os_log(_:dso:log:_:_:)();
    }
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100146E28(void *a1, uint64_t a2)
{
  v4 = [a1 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000016 && 0x800000010026BC20 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      v10 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return swift_endAccess();
    }
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100146FE4(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100226C80;
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_1000EE954();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = [a1 data];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = Data.hexString.getter(v8, v10);
  v13 = v12;
  sub_1000EF870(v8, v10);
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v11;
  *(v2 + 80) = v13;
  os_log(_:dso:log:_:_:)();
}

void sub_100147160(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100148AA8(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(uint64_t, void))
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10015339C(a4, a5);
  }

  return a6(a1, a2 & 1);
}

uint64_t sub_100149A28(void *a1, void *a2, char a3, uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226100;
  v8 = a1;
  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v7 + 56) = &type metadata for String;
  v13 = sub_1000EE954();
  *(v7 + 64) = v13;
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  if (a3)
  {
    static os_log_type_t.error.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226C80;
    v15 = v8;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v13;
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v20 = String.init<A>(describing:)();
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v13;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
  }

  else
  {
    swift_beginAccess();
    a2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if (IsAppleInternalBuild())
    {
      static os_log_type_t.default.getter();
    }

    else
    {
      static os_log_type_t.debug.getter();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226C80;
    v23 = [v8 recordName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = v13;
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    sub_100143BEC();
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v13;
    *(v22 + 72) = v27;
    *(v22 + 80) = v28;
  }

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100149D64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.debug.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  *(v8 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  *(v8 + 64) = sub_100162740(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
  *(v8 + 32) = a1;
  v9 = a1;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1001CF4F4(0, v10[2] + 1, 1, v10);
    *(a4 + 16) = v10;
  }

  v14 = v10[2];
  v13 = v10[3];
  if (v14 >= v13 >> 1)
  {
    v10 = sub_1001CF4F4((v13 > 1), v14 + 1, 1, v10);
  }

  v10[2] = v14 + 1;
  v15 = &v10[3 * v14];
  v15[4] = v11;
  v15[5] = a2;
  v15[6] = a3;
  *(a4 + 16) = v10;
  return swift_endAccess();
}

void sub_100149F60(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v74 = a8;
  v77 = a7;
  LOBYTE(v10) = a6;
  v76 = a5;
  v78 = a2;
  LODWORD(v75) = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_22:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  v73 = xmmword_100226C80;
  *(v12 + 16) = xmmword_100226C80;
  v13 = v10 & 1;
  v80 = v10 & 1;
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v12 + 56) = &type metadata for String;
  v17 = sub_1000EE954();
  *(v12 + 64) = v17;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v18 = [a1 zoneName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v21;
  os_log(_:dso:log:_:_:)();

  if ((v76 & 0x100) != 0)
  {
    static os_log_type_t.error.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    v80 = v13;
    v52 = String.init<A>(describing:)();
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = v17;
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    v54 = v78;
    swift_getErrorValue();
    v55 = Error.localizedDescription.getter();
    *(v51 + 96) = &type metadata for String;
    *(v51 + 104) = v17;
    *(v51 + 72) = v55;
    *(v51 + 80) = v56;
    os_log(_:dso:log:_:_:)();

    sub_10014E48C(v54, 1);
  }

  else
  {
    *&v73 = a10;
    v76 = static os_log_type_t.default.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002290E0;
    v80 = v13;
    v23 = String.init<A>(describing:)();
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = v17;
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    v75 = a1;
    v25 = [a1 zoneName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v17;
    *(v22 + 72) = v26;
    *(v22 + 80) = v28;
    v29 = [v78 data];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = Data.hexString.getter(v30, v32);
    v35 = v34;
    sub_1000EF870(v30, v32);
    *(v22 + 136) = &type metadata for String;
    *(v22 + 144) = v17;
    *(v22 + 112) = v33;
    *(v22 + 120) = v35;
    a1 = v74;
    swift_beginAccess();
    v36 = *(v74 + 16);
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v71 = *(v74 + 16);
      }

      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v77;
    *(v22 + 176) = &type metadata for Int;
    *(v22 + 184) = &protocol witness table for Int;
    *(v22 + 152) = v37;
    swift_beginAccess();
    v39 = *(*(a9 + 16) + 16);
    *(v22 + 216) = &type metadata for Int;
    *(v22 + 224) = &protocol witness table for Int;
    *(v22 + 192) = v39;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v40 = *(v38 + 120);
    v41 = 1 << *(v40 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v40 + 64);
    v10 = (v41 + 63) >> 6;
    v44 = *(v38 + 120);
    swift_bridgeObjectRetain_n();
    v45 = 0;
    if (v43)
    {
      while (1)
      {
        v46 = v45;
LABEL_13:
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v48 = v47 | (v46 << 6);
        v49 = *(*(v40 + 56) + 16 * v48 + 8);
        v50 = *(*(v40 + 48) + 8 * v48);

        sub_100160CF0(v50, a1 + 2);

        if (!v43)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v46 >= v10)
      {
        break;
      }

      v43 = *(v40 + 64 + 8 * v46);
      ++v45;
      if (v43)
      {
        v45 = v46;
        goto LABEL_13;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v58 = Strong;
      swift_beginAccess();
      v59 = *(a9 + 16);
      swift_beginAccess();
      v60 = a1[2];

      sub_10015EEF4(v38, v59, v60, v58);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v61 = a1[2];
    a1[2] = _swiftEmptyArrayStorage;

    swift_beginAccess();
    v62 = *(a9 + 16);
    *(a9 + 16) = _swiftEmptyArrayStorage;

    v63 = v38 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v64 = *(v63 + *(type metadata accessor for CloudCoordinatorConfiguration() + 32));

    v65 = v75;
    v66 = [v75 zoneName];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v79[0] = v67;
    v79[1] = v69;
    __chkstk_darwin(v70);
    v72[2] = v79;
    LOBYTE(v66) = sub_10017CE74(sub_1001628EC, v72, v64);

    if (v66)
    {
      sub_10016106C(v73, v65, v78);
    }
  }
}

uint64_t sub_10014A618(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226C80;
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_1000EE954();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = sub_1000EE870(&qword_1002F93E8, &qword_100229328);
  *(v8 + 104) = sub_1000FA0E0(&qword_1002F93F0, &qword_1002F93E8, &qword_100229328);
  *(v8 + 72) = a4;

  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226C80;
    v14 = String.init<A>(describing:)();
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v12;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v12;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
    os_log(_:dso:log:_:_:)();

    sub_10014E48C(a1, 1);
    v18 = a1;
    v19 = 1;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    v21 = String.init<A>(describing:)();
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v12;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    v18 = 0;
    v19 = 0;
  }

  return a6(v18, v19);
}

id sub_10014A8FC(void *a1, void *a2)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  *(v4 + 56) = sub_1000FA784(0, &qword_1002F9408, CKFetchRecordZoneChangesOperation_ptr);
  *(v4 + 64) = sub_100162740(&qword_1002F9410, &qword_1002F9408, CKFetchRecordZoneChangesOperation_ptr);
  *(v4 + 32) = a1;
  v5 = a1;
  os_log(_:dso:log:_:_:)();

  return [a2 addOperation:v5];
}

uint64_t sub_10014AA54(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v8 = type metadata accessor for Date();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 40))
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100226C80;
    v24 = sub_1000EE954();
    v25 = v24;
    v26 = 0x206563726F46;
    if ((v49 & 1) == 0)
    {
      v26 = 0;
    }

    v27 = 0xE000000000000000;
    if (v49)
    {
      v27 = 0xE600000000000000;
    }

    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v24;
    *(v23 + 32) = v26;
    *(v23 + 40) = v27;
    v28 = *(v4 + 40);
    if (v28)
    {
      v29 = [v28 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = objc_opt_self();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v32 = [v30 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      (*(v48 + 8))(v11, v8);
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    aBlock = v33;
    v52 = v35;
    sub_1000EE870(&qword_1002F94C0, qword_100227A98);
    v43 = String.init<A>(describing:)();
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v25;
    *(v23 + 72) = v43;
    *(v23 + 80) = v44;
    os_log(_:dso:log:_:_:)();
  }

  v48 = v13;
  switch(a1)
  {
    case 1:
      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 == -1)
      {
        goto LABEL_21;
      }

      break;
    case 3:
      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 == -1)
      {
        goto LABEL_21;
      }

      break;
    case 2:
      v46 = v20;
      v47 = v19;
      v36 = sub_100140CF8();
      v37 = [v36 privateCloudDatabase];

      v38 = *(v4 + 72);
      v39 = swift_allocObject();
      *(v39 + 16) = v4;
      *(v39 + 24) = v37;
      *(v39 + 32) = v49 & 1;
      *(v39 + 33) = 0;
      *(v39 + 40) = a3;
      *(v39 + 48) = a4;
      v55 = sub_100162D38;
      v56 = v39;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_1001742E0;
      v54 = &unk_1002BF460;
      v40 = _Block_copy(&aBlock);

      v41 = v37;

      static DispatchQoS.unspecified.getter();
      v50 = _swiftEmptyArrayStorage;
      sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (*(v48 + 8))(v16, v12);
      (*(v46 + 8))(v22, v47);

    default:
      static os_log_type_t.error.getter();
      if (qword_1002F7AD8 == -1)
      {
        goto LABEL_21;
      }

      break;
  }

  swift_once();
LABEL_21:

  return os_log(_:dso:log:_:_:)();
}