uint64_t TableTemplateValue<>.contentPredicate.getter()
{
  v1 = *(v0 + qword_1EC444E18);
  v2 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v3 = sub_1CA25B410();
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ([v6 removable])
    {
    }

    else
    {
      sub_1CA94D4D8();
      v8 = *(v43 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      v0 = &v43;
      sub_1CA94D4E8();
    }

    ++v4;
  }

  v9 = v43;
  v43 = v2;
  v10 = sub_1CA25B410();
  for (i = 0; v10 != i; ++i)
  {
    if (v5)
    {
      v12 = MEMORY[0x1CCAA22D0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v12 = *(v1 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      goto LABEL_48;
    }

    if ([v12 removable])
    {
      sub_1CA94D4D8();
      v14 = *(v43 + 16);
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D518();
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D528();
      v0 = &v43;
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  v15 = v43;
  v16 = sub_1CA25B410();
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = v16;
    v43 = MEMORY[0x1E69E7CC0];
    v0 = &v43;
    sub_1CA94D508();
    if (v18 < 0)
    {
      goto LABEL_50;
    }

    v19 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCAA22D0](v19, v9);
      }

      else
      {
        v20 = *(v9 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      v22 = WFContentPredicateForRowTemplateValue(v20);

      sub_1CA94D4D8();
      v23 = *(v43 + 16);
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D518();
      OUTLINED_FUNCTION_0_24();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v18 != v19);
    v17 = v43;
  }

  v24 = sub_1CA25B410();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v24;
    v43 = MEMORY[0x1E69E7CC0];
    v0 = &v43;
    sub_1CA94D508();
    if (v26 < 0)
    {
      goto LABEL_51;
    }

    v27 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1CCAA22D0](v27, v15);
      }

      else
      {
        v28 = *(v15 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      v30 = WFContentPredicateForRowTemplateValue(v28);

      sub_1CA94D4D8();
      v31 = *(v43 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v26 != v27);
    v25 = v43;
  }

  v0 = *(v42 + qword_1EC444E10);
  if (!v0)
  {
    v32 = objc_opt_self();
    v33 = sub_1CA3AC36C(v25, v32, &selRef_orPredicateWithSubpredicates_);
    if (v33)
    {
LABEL_44:
      v0 = v33;
      v35 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA9813B0;
      *(inited + 32) = v0;
      v43 = v17;
      v37 = v0;
      sub_1CA94C218();
      v38 = OUTLINED_FUNCTION_0_24();
      sub_1CA2B7C80(v38);
      v39 = sub_1CA3AC2E8(v43, v35);
      if (v39)
      {
        v40 = v39;

        return v40;
      }

      goto LABEL_52;
    }

    __break(1u);
  }

  if (v0 != 1)
  {
    goto LABEL_54;
  }

  v34 = objc_opt_self();
  v33 = sub_1CA3AC36C(v25, v34, &selRef_andPredicateWithSubpredicates_);
  if (v33)
  {
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  type metadata accessor for WFTableTemplateCompoundType(0);
  v43 = v0;
  result = sub_1CA94D838();
  __break(1u);
  return result;
}

id sub_1CA3AAA50()
{
  sub_1CA25B3D0(0, &qword_1EC444678, 0x1E69AC760);
  v0 = sub_1CA94C648();

  v1 = [swift_getObjCClassFromMetadata() orComparisons_];

  return v1;
}

id sub_1CA3AAAD4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1CA36D2C4(v3, &selRef_contentPropertyName);
  if (!v8)
  {
    return 0;
  }

  if (![v3 contentItemClass])
  {
LABEL_31:

    return 0;
  }

  swift_getObjCClassMetadata();
  v9 = sub_1CA94C368();
  v10 = [swift_getObjCClassFromMetadata() propertyForName_];

  if (!v10)
  {
    goto LABEL_127;
  }

  v11 = [v10 userInfo];
  if (!v11)
  {
LABEL_30:

    goto LABEL_31;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    goto LABEL_9;
  }

  if ([v13 objectForKey_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v155 = 0u;
    v156 = 0u;
  }

  v157[0] = v155;
  v157[1] = v156;
  if (!*(&v156 + 1))
  {
    swift_unknownObjectRelease();

    sub_1CA2C0A74(v157);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  v148 = v153;
  if (!sub_1CA94CD98())
  {

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v146 = a2;
  v149 = v154;
  v144 = v4;
  v145 = v12;
  v147 = v10;
  v143 = [swift_getObjCClassFromMetadata() tableTemplateSubjectType];
  v14 = [a3 properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v15 = sub_1CA94C658();

  v16 = sub_1CA25B410(v15);
  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {

      v16 = 0;
      v25 = v146;
      goto LABEL_36;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1CCAA22D0](i, v15);
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v18 = *(v15 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v20 = sub_1CA52A3C0(v18);
    if (!v21)
    {
      goto LABEL_26;
    }

    if (v20 == v148 && v21 == v149)
    {

LABEL_42:

      v16 = v19;
      v33 = sub_1CA3AC3E8(v16, &selRef_spotlightAttributeKey);
      i = v147;
      v25 = v146;
      if (v34 || (v16 = v16, v33 = sub_1CA3AC3E8(v16, &selRef_spotlightCustomAttributeKey), v34))
      {
        v30 = v33;
        v32 = v34;
LABEL_45:
        v35 = [i propertyClasses];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
        v36 = sub_1CA94C658();

        switch(v143)
        {
          case 0uLL:
            v56 = [v144 &selRef_componentsWithString_];
            if ((v56 - 100) < 2)
            {
              goto LABEL_64;
            }

            v148 = v30;
            if ((v56 - 4) > 1)
            {
              goto LABEL_149;
            }

            v36 = v144;
            v76 = [v144 enumeration];
            if (!v76)
            {
              goto LABEL_90;
            }

            v77 = v76;
            objc_opt_self();
            v78 = swift_dynamicCastObjCClass();
            if (!v78 || (v79 = v78, ![i hasPossibleValues]))
            {
              *&v155 = v77;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B68, &unk_1CA9858E0);
              if (swift_dynamicCast())
              {
                if ([i hasPossibleValues])
                {
                  Value = type metadata accessor for WFSpotlightQueryValue();
                  v103 = objc_allocWithZone(Value);
                  *&v103[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue] = v157[0];
                  v151.receiver = v103;
                  v151.super_class = Value;
                  v104 = objc_msgSendSuper2(&v151, sel_init);
                  swift_unknownObjectRelease();
                  v40 = v104;
                  swift_unknownObjectRelease();
                  goto LABEL_119;
                }

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }

              goto LABEL_9;
            }

            v80 = [v79 value];
            sub_1CA94D258();
            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              v81 = type metadata accessor for WFSpotlightQueryValue();
              v82 = objc_allocWithZone(v81);
              *&v82[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue] = v155;
              v150.receiver = v82;
              v150.super_class = v81;
              v83 = objc_msgSendSuper2(&v150, sel_init);
              swift_unknownObjectRelease();
              v40 = v83;
              __swift_destroy_boxed_opaque_existential_0(v157);
              goto LABEL_119;
            }

            if (swift_dynamicCast())
            {
              type metadata accessor for WFSpotlightQueryValue();
              v127 = sub_1CA94C988();
              v128 = sub_1CA44051C(v127);

              swift_unknownObjectRelease();
              v40 = v128;
              __swift_destroy_boxed_opaque_existential_0(v157);
              i = v147;
              v36 = v144;
              goto LABEL_145;
            }

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(v157);
            return 0;
          case 1uLL:

            v59 = [v144 BOOLean];
            if (!v59)
            {
              goto LABEL_90;
            }

            v60 = v59;
            type metadata accessor for WFSpotlightQueryValue();
            v61 = sub_1CA44051C(v60);
            v62 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
            v10 = sub_1CA44123C(v30, v32, 4, v61);

            goto LABEL_67;
          case 2uLL:
            v41 = [v144 &selRef_componentsWithString_];
            if ((v41 > 9 || ((1 << v41) & 0x330) == 0) && v41 != 999 && v41 != 99)
            {
              goto LABEL_149;
            }

            if ([i hasPossibleValues])
            {

              goto LABEL_90;
            }

            v71 = sub_1CA36D2C4(v144, &selRef_string);
            v148 = v30;
            if (!v72)
            {
              goto LABEL_107;
            }

            v73 = v71;
            v74 = v72;
            v75 = HIBYTE(v72) & 0xF;
            if ((v72 & 0x2000000000000000) == 0)
            {
              v75 = v71 & 0xFFFFFFFFFFFFLL;
            }

            if (v75)
            {

              type metadata accessor for WFSpotlightQueryValue();
              v36 = v144;
              i = v147;
              v39 = sub_1CA440598(v73, v74, [v144 &selRef_componentsWithString_]);

LABEL_49:
              v40 = v39;
              goto LABEL_145;
            }

LABEL_107:
            v105 = v32;
            v106 = v16;
            v107 = 0;
            v43 = v36[2];
            while (v43 != v107)
            {
              v108 = v107 + 1;
              v30 = v36[v107 + 4];
              sub_1CA25B3D0(0, &qword_1EC444B58, 0x1E6996F00);
              v109 = swift_dynamicCastMetatype();
              v107 = v108;
              if (v109)
              {
                sub_1CA36D2C4(v144, &selRef_phone);
                if (v110)
                {
                  v111 = sub_1CA3AC284();
                  if (v111)
                  {
                    v112 = v111;

                    v113 = [v112 normalizedPhoneNumber];

                    v114 = sub_1CA94C3A8();
                    v116 = v115;

                    type metadata accessor for WFSpotlightQueryValue();
                    v36 = v144;
                    v117 = sub_1CA440598(v114, v116, [v144 &selRef_componentsWithString_]);

                    v40 = v117;
                    i = v147;
                    v16 = v106;
                    v32 = v105;
                    goto LABEL_145;
                  }
                }

                break;
              }
            }

            v118 = 0;
            v32 = v105;
            while (1)
            {
              i = v147;
              if (v43 == v118)
              {
                swift_unknownObjectRelease();

                v16 = v106;
                goto LABEL_133;
              }

              if (v118 >= v36[2])
              {
                break;
              }

              v119 = (v118 + 1);
              v120 = v36[v118 + 4];
              sub_1CA25B3D0(0, &qword_1EC444B60, 0x1E6996E00);
              v121 = swift_dynamicCastMetatype();
              v118 = v119;
              v32 = v105;
              if (v121)
              {

                v36 = v144;
                v122 = sub_1CA36D2C4(v144, &selRef_email);
                v16 = v106;
                if (v123)
                {
                  v124 = v122;
                  v125 = v123;
                  type metadata accessor for WFSpotlightQueryValue();
                  v126 = sub_1CA440598(v124, v125, [v144 &selRef_componentsWithString_]);

                  v40 = v126;
LABEL_119:
                  i = v147;
                  goto LABEL_145;
                }

                swift_unknownObjectRelease();

LABEL_133:

                return 0;
              }
            }

            __break(1u);
LABEL_147:
            swift_once();
LABEL_61:
            v45 = sub_1CA323E2C(v148, v32, qword_1EC4457E8);
            if (v45)
            {
              v46 = v45;
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B48, qword_1CA9858C8);
              v143 = &v138;
              v142 = *(v47 - 8);
              v48 = *(v142 + 64);
              MEMORY[0x1EEE9AC00](v47);
              v149 = v32;
              [v30 doubleValue];
              sub_1CA25B3D0(0, &qword_1EC444B50, 0x1E696ABA0);
              v140 = v43;
              v49 = sub_1CA948818();
              v141 = &v138;
              MEMORY[0x1EEE9AC00](v49);
              v50 = &v138 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1CA948838();
              type metadata accessor for WFSpotlightQueryValue();
              sub_1CA948828();
              v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              v139 = sub_1CA44051C(v52);
              v53 = v140;

              v36 = v144;
              v54 = *(v142 + 8);
              v54(v50, v47);
              i = v147;
              v54(v50, v47);
              v32 = v149;

              v55 = v139;
            }

            else
            {
              type metadata accessor for WFSpotlightQueryValue();
              v90 = sub_1CA44051C(v30);

              v30 = v43;
LABEL_95:

              v55 = v90;
            }

            v40 = v55;
            v16 = v146;
LABEL_145:
            v136 = [v36 comparisonOperator];
            v137 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
            v10 = sub_1CA44123C(v148, v32, v136, v40);

            swift_unknownObjectRelease();
            return v10;
          case 3uLL:
          case 6uLL:
          case 7uLL:
            if ([v144 comparisonOperator] > 5)
            {
              goto LABEL_149;
            }

            v37 = [v144 number];
            if (!v37)
            {
              goto LABEL_90;
            }

            v38 = v37;
            v36 = v144;
            v148 = v30;
            type metadata accessor for WFSpotlightQueryValue();
            v39 = sub_1CA44051C(v38);

            goto LABEL_49;
          case 4uLL:
            v63 = [v144 &selRef_componentsWithString_];
            if (v63 <= 5 && ((1 << v63) & 0x35) != 0)
            {
              v148 = v30;
              v67 = v32;

              v84 = sub_1CA948CB8();
              v85 = *(v84 - 8);
              v86 = *(v85 + 64);
              MEMORY[0x1EEE9AC00](v84);
              v88 = &v138 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
              v36 = v144;
              v10 = [v144 date];
              if (!v10)
              {

                swift_unknownObjectRelease();
                return v10;
              }

              sub_1CA948C78();

              type metadata accessor for WFSpotlightQueryValue();
              v89 = sub_1CA4409B4();
              (*(v85 + 8))(v88, v84);
              v40 = v89;
              i = v147;
LABEL_144:
              v32 = v67;
              goto LABEL_145;
            }

            if (v63 - 1000 >= 2)
            {
              if (v63 == 1002)
              {
LABEL_64:

                v57 = [v144 &selRef_componentsWithString_];
                v58 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
                v10 = sub_1CA4411A4(v30, v32, v57);
LABEL_67:

                swift_unknownObjectRelease();
                return v10;
              }

              v148 = v30;
              v146 = v16;
              if (v63 == 1003)
              {

                v91 = sub_1CA948CB8();
                v92 = *(v91 - 8);
                v93 = *(v92 + 64);
                MEMORY[0x1EEE9AC00](v91);
                v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
                v36 = v144;
                v95 = [v144 date];
                if (v95)
                {
                  v96 = v95;
                  v149 = v32;
                  sub_1CA948C78();

                  MEMORY[0x1EEE9AC00](v97);
                  v98 = [v144 anotherDate];
                  if (v98)
                  {
                    v99 = v98;
                    sub_1CA948C78();

                    type metadata accessor for WFSpotlightQueryValue();
                    v100 = sub_1CA44066C(&v138 - v94, &v138 - v94);
                    v101 = *(v92 + 8);
                    v101(&v138 - v94, v91);
                    v101(&v138 - v94, v91);
                    v40 = v100;
                    i = v147;
                    v16 = v146;
                    v32 = v149;
                    goto LABEL_145;
                  }

                  (*(v92 + 8))(&v138 - v94, v91);

                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                return 0;
              }

              goto LABEL_149;
            }

            v148 = v30;
            v64 = [v144 number];
            if (!v64)
            {
              goto LABEL_124;
            }

            v65 = v64;
            v66 = [v144 calendarUnit];
            v10 = v66;
            if (v66)
            {
              v67 = v32;
              v68 = [v66 unsignedIntegerValue];

              v69 = v16;
              if (v68 == 4)
              {
                v70 = 89;
                goto LABEL_143;
              }

              if (v68 == 0x2000)
              {
                v70 = 119;
                goto LABEL_143;
              }

              if (v68 == 16)
              {
                v70 = 68;
                goto LABEL_143;
              }

              if (v68 == 32)
              {
                v70 = 104;
                goto LABEL_143;
              }

              if (v68 == 64)
              {
                v70 = 109;
                goto LABEL_143;
              }

              if (v68 == 128)
              {
                v70 = 115;
LABEL_143:

                v129 = [v65 description];
                v130 = sub_1CA94C3A8();
                v132 = v131;

                *&v157[0] = v130;
                *(&v157[0] + 1) = v132;
                MEMORY[0x1CCAA1300](v70, 0xE100000000000000);

                v133 = type metadata accessor for WFSpotlightQueryValue();
                v134 = objc_allocWithZone(v133);
                *&v134[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue] = v157[0];
                v152.receiver = v134;
                v152.super_class = v133;
                v135 = objc_msgSendSuper2(&v152, sel_init);

                v40 = v135;
                i = v147;
                v36 = v144;
                v16 = v69;
                goto LABEL_144;
              }

              if (v68 == 8)
              {
                v70 = 77;
                goto LABEL_143;
              }

              while (1)
              {
LABEL_149:
                sub_1CA94D5F8();
                __break(1u);
              }
            }

            swift_unknownObjectRelease();

            break;
          case 5uLL:
            v148 = v30;
            if ([v144 &selRef_componentsWithString_] > 5)
            {
              goto LABEL_149;
            }

            v42 = [v144 number];
            if (!v42)
            {
              goto LABEL_90;
            }

            v30 = v42;
            v36 = v144;
            v146 = v16;
            v43 = [v144 measurementUnit];
            if (!v43 || (objc_opt_self(), !swift_dynamicCastObjCClass()))
            {
              type metadata accessor for WFSpotlightQueryValue();
              v90 = sub_1CA44051C(v30);
              goto LABEL_95;
            }

            v44 = qword_1EC442D50;
            v43 = v43;
            if (v44 != -1)
            {
              goto LABEL_147;
            }

            goto LABEL_61;
          default:
            *&v157[0] = 0;
            *(&v157[0] + 1) = 0xE000000000000000;
            sub_1CA94D408();
            MEMORY[0x1CCAA1300](0xD00000000000002DLL, 0x80000001CA9AF580);
            *&v155 = v143;
            type metadata accessor for WFTableTemplateSubjectType(0);
            sub_1CA94D578();
            goto LABEL_149;
        }

LABEL_127:

        return v10;
      }

LABEL_36:
      v26 = WFIndexingKeyForForcedLinkEntityFindAction();
      v27 = sub_1CA94C1C8();

      v28 = sub_1CA3FA1E8(v27);

      if (v28)
      {
        v29 = sub_1CA323E30(a1, v25, v28);

        if (v29)
        {
          v30 = sub_1CA3118E4(v148, v149, v29);
          v32 = v31;

          if (v32)
          {
            i = v147;
            goto LABEL_45;
          }
        }
      }

LABEL_9:
      swift_unknownObjectRelease();
      return 0;
    }

    v23 = sub_1CA94D7F8();

    if (v23)
    {
      goto LABEL_42;
    }

LABEL_26:
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

LABEL_90:

  swift_unknownObjectRelease();
  return 0;
}

id sub_1CA3AC284()
{
  v0 = sub_1CA94C368();

  v1 = [swift_getObjCClassFromMetadata() phoneNumberWithPhoneNumberString_];

  return v1;
}

id sub_1CA3AC2E8(uint64_t a1, void *a2)
{
  sub_1CA25B3D0(0, &qword_1EC4445D8, 0x1E6996D80);
  v3 = sub_1CA94C648();

  v4 = [a2 andPredicateWithSubpredicates_];

  return v4;
}

id sub_1CA3AC36C(uint64_t a1, void *a2, SEL *a3)
{
  sub_1CA25B3D0(0, &qword_1EC4445D8, 0x1E6996D80);
  v5 = sub_1CA94C648();
  v6 = [a2 *a3];

  return v6;
}

uint64_t sub_1CA3AC3E8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1CA94C3A8();

  return v4;
}

id sub_1CA3AC488()
{
  v30[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  *(inited + 184) = v26;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v27 = @"ResidentCompatible";
  v28 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v28;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x80000001CA9AF660;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3AC85C()
{
  v419 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  v418 = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9AF690;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v442 = v12;
  v438 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v406 - v438;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v439 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v440 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v441 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v406 - v441;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *&v437 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v436 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v426 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  *&v435 = &v406;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v406 - v438;
  sub_1CA948D98();
  v34 = [v439 bundleURL];
  v429 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v406 - v441;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v437;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v436;
  v40 = sub_1CA6B3784();
  v41 = v429;
  *(v429 + 20) = v40;
  *(v41 + 23) = v39;
  *(v41 + 24) = @"IconColor";
  *(v41 + 25) = 2036429383;
  *(v41 + 26) = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 28) = MEMORY[0x1E69E6158];
  *(v41 + 29) = @"IconSymbol";
  strcpy(v41 + 240, "math.operators");
  v41[255] = -18;
  *(v41 + 33) = v42;
  *(v41 + 34) = @"Input";
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v435 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6370];
  *(v43 + 48) = 0;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v42;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  v45 = v44;
  *(v43 + 184) = 0xE500000000000000;
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v428;
  *(v43 + 192) = &unk_1F49F80D0;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"Input";
  v49 = sub_1CA94C1E8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v436 = v50;
  *(v41 + 35) = v49;
  *(v41 + 38) = v50;
  *(v41 + 39) = @"LocallyProcessesData";
  v41[320] = 1;
  *(v41 + 43) = v45;
  *(v41 + 44) = @"Name";
  v51 = @"LocallyProcessesData";
  v52 = @"Name";
  v53 = sub_1CA94C438();
  v55 = v54;
  v56 = sub_1CA94C438();
  v58 = v57;
  v434 = &v406;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v406 - v438;
  sub_1CA948D98();
  v60 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v406 - v441;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v41 + 45) = sub_1CA2F9F14(v53, v55, v56, v58, 0, 0, v59, v61);
  v63 = v437;
  *(v41 + 48) = v437;
  *(v41 + 49) = @"Output";
  v64 = swift_allocObject();
  *(v64 + 16) = v435;
  *(v64 + 32) = 0x75736F6C63736944;
  *(v64 + 40) = 0xEF6C6576654C6572;
  *(v64 + 48) = 0x63696C627550;
  *(v64 + 56) = 0xE600000000000000;
  *(v64 + 72) = MEMORY[0x1E69E6158];
  *(v64 + 80) = 0x656C7069746C754DLL;
  *(v64 + 88) = 0xE800000000000000;
  *(v64 + 96) = 0;
  *(v64 + 120) = MEMORY[0x1E69E6370];
  *(v64 + 128) = 0x614E74757074754FLL;
  *(v64 + 136) = 0xEA0000000000656DLL;
  v65 = @"Output";
  v66 = sub_1CA94C438();
  v433 = v67;
  v434 = v66;
  v68 = sub_1CA94C438();
  v70 = v69;
  *&v435 = &v406;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v406 - v438;
  sub_1CA948D98();
  v72 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v406 - v441;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 144) = sub_1CA2F9F14(v434, v433, v68, v70, 0, 0, v71, v73);
  *(v64 + 168) = v63;
  *(v64 + 176) = 0x7365707954;
  *(v64 + 216) = v428;
  *(v64 + 184) = 0xE500000000000000;
  *(v64 + 192) = &unk_1F49F8100;
  v75 = MEMORY[0x1E69E6158];
  *(v41 + 50) = sub_1CA94C1E8();
  *(v41 + 53) = v436;
  *(v41 + 54) = @"ParameterCollapsingBehavior";
  *(v41 + 55) = 0x726576654ELL;
  *(v41 + 56) = 0xE500000000000000;
  *(v41 + 58) = v75;
  *(v41 + 59) = @"Parameters";
  v76 = v75;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v435 = swift_allocObject();
  v421 = xmmword_1CA981560;
  *(v435 + 16) = xmmword_1CA981560;
  v434 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  v436 = xmmword_1CA981370;
  *(v77 + 16) = xmmword_1CA981370;
  *(v77 + 32) = @"AllowsDecimalNumbers";
  *(v77 + 40) = 1;
  *(v77 + 64) = MEMORY[0x1E69E6370];
  *(v77 + 72) = @"Class";
  v425 = 0x80000001CA99C180;
  *(v77 + 80) = 0xD000000000000016;
  *(v77 + 88) = 0x80000001CA99C180;
  *(v77 + 104) = v76;
  *(v77 + 112) = @"Key";
  *(v77 + 120) = 0x7475706E494657;
  *(v77 + 128) = 0xE700000000000000;
  *(v77 + 144) = v76;
  *(v77 + 152) = @"Label";
  v78 = @"AllowsDecimalNumbers";
  v79 = @"Class";
  v80 = @"Key";
  v81 = @"Label";
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  v424 = v82;
  *&v416 = v83;
  v420 = v84;
  v417 = v85;
  v86 = @"ParameterCollapsingBehavior";
  v87 = @"Parameters";
  v432 = sub_1CA94C438();
  v423 = v88;
  v89 = sub_1CA94C438();
  v422 = v90;
  v433 = &v406;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v438;
  sub_1CA948D98();
  v92 = v439;
  v93 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v441;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v432, v423, v89, v422, 0, 0, &v406 - v91, &v406 - v94);
  v96 = v437;
  *(v77 + 184) = v437;
  *(v77 + 192) = @"Placeholder";
  v423 = @"Placeholder";
  v432 = sub_1CA94C438();
  v422 = v97;
  v98 = sub_1CA94C438();
  v415 = v99;
  v433 = &v406;
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948D98();
  v100 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v432, v422, v98, v415, 0, 0, &v406 - v91, &v406 - v94);
  *(v77 + 224) = v96;
  *(v77 + 200) = v102;
  _s3__C3KeyVMa_0(0);
  v433 = v103;
  v432 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v435 + 32) = sub_1CA2F864C();
  v104 = swift_allocObject();
  v412 = v104;
  *(v104 + 16) = v436;
  v415 = 0x80000001CA99C4A0;
  v105 = v416;
  *(v104 + 32) = v416;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  v106 = MEMORY[0x1E69E6158];
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 43;
  *(v104 + 88) = 0xE100000000000000;
  *(v104 + 104) = v106;
  *(v104 + 112) = @"Items";
  v422 = swift_allocObject();
  *(v422 + 1) = v421;
  v107 = @"Items";
  v413 = v105;
  v414 = v107;
  v108 = @"DefaultValue";
  *&v416 = sub_1CA94C438();
  v411 = v109;
  v110 = sub_1CA94C438();
  v410 = v111;
  *&v421 = &v406;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v406 - v91;
  v113 = v91;
  sub_1CA948D98();
  v114 = v439;
  v115 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v406 - v441;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v416, v411, v110, v410, 0, 0, v112, v116);
  v119 = v422;
  v422[4] = v118;
  *&v416 = sub_1CA94C438();
  v411 = v120;
  v121 = sub_1CA94C438();
  v410 = v122;
  *&v421 = &v406;
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948D98();
  v123 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v441;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 40) = sub_1CA2F9F14(v416, v411, v121, v410, 0, 0, &v406 - v113, &v406 - v124);
  *&v416 = sub_1CA94C438();
  v411 = v126;
  v127 = sub_1CA94C438();
  v410 = v128;
  *&v421 = &v406;
  MEMORY[0x1EEE9AC00](v127);
  v129 = v438;
  sub_1CA948D98();
  v130 = v439;
  v131 = [v439 bundleURL];
  v409 = &v406;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v416, v411, v127, v410, 0, 0, &v406 - v129, &v406 - v124);
  v134 = v422;
  v422[6] = v133;
  *&v416 = sub_1CA94C438();
  v411 = v135;
  v136 = sub_1CA94C438();
  v410 = v137;
  *&v421 = &v406;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v138 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v441;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 56) = sub_1CA2F9F14(v416, v411, v136, v410, 0, 0, &v406 - v129, &v406 - v139);
  *&v416 = sub_1CA94C438();
  v411 = v141;
  v142 = sub_1CA94C438();
  v410 = v143;
  *&v421 = &v406;
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v406 - v129;
  sub_1CA948D98();
  v145 = v439;
  v146 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v416, v411, v142, v410, 0, 0, v144, &v406 - v139);
  v149 = v134;
  *(v134 + 64) = v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *&v421 = v150;
  v151 = v412;
  v412[15] = v149;
  v152 = v420;
  v151[18] = v150;
  v151[19] = v152;
  v151[20] = 0x704F6874614D4657;
  v151[21] = 0xEF6E6F6974617265;
  v153 = v417;
  v151[23] = MEMORY[0x1E69E6158];
  v151[24] = v153;
  v420 = v152;
  v417 = v153;
  *&v416 = sub_1CA94C438();
  v155 = v154;
  v156 = sub_1CA94C438();
  v158 = v157;
  v422 = &v406;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v406 - v438;
  sub_1CA948D98();
  v160 = [v145 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v406 - v441;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v416, v155, v156, v158, 0, 0, v159, v161);
  v151[28] = v437;
  v151[25] = v163;
  sub_1CA94C1E8();
  *(v435 + 40) = sub_1CA2F864C();
  v164 = swift_allocObject();
  *&v416 = v164;
  *(v164 + 16) = v436;
  v165 = v413;
  *(v164 + 32) = v413;
  *(v164 + 40) = 0xD000000000000016;
  *(v164 + 48) = v415;
  v166 = v414;
  *(v164 + 64) = MEMORY[0x1E69E6158];
  *(v164 + 72) = v166;
  *&v436 = swift_allocObject();
  *(v436 + 16) = xmmword_1CA9858F0;
  v422 = v165;
  v167 = sub_1CA94C438();
  v413 = v168;
  v414 = v167;
  v169 = sub_1CA94C438();
  v412 = v170;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v169);
  v171 = v438;
  sub_1CA948D98();
  v172 = v439;
  v173 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v406 - v441;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v414, v413, v169, v412, 0, 0, &v406 - v171, v174);
  v177 = v436;
  *(v436 + 32) = v176;
  v178 = sub_1CA94C438();
  v413 = v179;
  v414 = v178;
  v180 = sub_1CA94C438();
  v412 = v181;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948D98();
  v182 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  v183 = v441;
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v177 + 40) = sub_1CA2F9F14(v414, v413, v180, v412, 0, 0, &v406 - v171, &v406 - v183);
  v185 = sub_1CA94C438();
  v413 = v186;
  v414 = v185;
  v187 = sub_1CA94C438();
  v412 = v188;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v187);
  v189 = v438;
  sub_1CA948D98();
  v190 = v439;
  v191 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v193 = sub_1CA2F9F14(v414, v413, v187, v412, 0, 0, &v406 - v189, &v406 - v183);
  v194 = v436;
  *(v436 + 48) = v193;
  v195 = sub_1CA94C438();
  v413 = v196;
  v414 = v195;
  v197 = sub_1CA94C438();
  v412 = v198;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v197);
  sub_1CA948D98();
  v199 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  v200 = v441;
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 56) = sub_1CA2F9F14(v414, v413, v197, v412, 0, 0, &v406 - v189, &v406 - v200);
  v202 = sub_1CA94C438();
  v413 = v203;
  v414 = v202;
  v204 = sub_1CA94C438();
  v412 = v205;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v204);
  v206 = &v406 - v438;
  sub_1CA948D98();
  v207 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v207);
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 64) = sub_1CA2F9F14(v414, v413, v204, v412, 0, 0, v206, &v406 - v200);
  v209 = sub_1CA94C438();
  v413 = v210;
  v414 = v209;
  v211 = sub_1CA94C438();
  v412 = v212;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v211);
  v213 = v438;
  sub_1CA948D98();
  v214 = v439;
  v215 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v215);
  v216 = v441;
  sub_1CA948B68();

  v217 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v218 = sub_1CA2F9F14(v414, v413, v211, v412, 0, 0, &v406 - v213, &v406 - v216);
  v219 = v436;
  *(v436 + 72) = v218;
  v220 = sub_1CA94C438();
  v413 = v221;
  v414 = v220;
  v222 = sub_1CA94C438();
  v412 = v223;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948D98();
  v224 = [v214 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v219 + 80) = sub_1CA2F9F14(v414, v413, v222, v412, 0, 0, &v406 - v213, &v406 - v216);
  v226 = sub_1CA94C438();
  v413 = v227;
  v414 = v226;
  v228 = sub_1CA94C438();
  v230 = v229;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v228);
  v231 = v438;
  sub_1CA948D98();
  v232 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v232);
  v233 = v441;
  sub_1CA948B68();

  v234 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v235 = sub_1CA2F9F14(v414, v413, v228, v230, 0, 0, &v406 - v231, &v406 - v233);
  v236 = v436;
  *(v436 + 88) = v235;
  v237 = sub_1CA94C438();
  v413 = v238;
  v414 = v237;
  v412 = sub_1CA94C438();
  v240 = v239;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v412);
  sub_1CA948D98();
  v241 = v439;
  v242 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v242);
  sub_1CA948B68();

  v243 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v236 + 96) = sub_1CA2F9F14(v414, v413, v412, v240, 0, 0, &v406 - v231, &v406 - v233);
  v244 = sub_1CA94C438();
  v413 = v245;
  v414 = v244;
  v412 = sub_1CA94C438();
  v247 = v246;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v412);
  v248 = v438;
  sub_1CA948D98();
  v249 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v249);
  v250 = v441;
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v252 = sub_1CA2F9F14(v414, v413, v412, v247, 0, 0, &v406 - v248, &v406 - v250);
  v253 = v436;
  *(v436 + 104) = v252;
  v254 = sub_1CA94C438();
  v413 = v255;
  v414 = v254;
  v256 = sub_1CA94C438();
  v412 = v257;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v256);
  sub_1CA948D98();
  v258 = v439;
  v259 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v259);
  sub_1CA948B68();

  v260 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v253 + 112) = sub_1CA2F9F14(v414, v413, v256, v412, 0, 0, &v406 - v248, &v406 - v250);
  v261 = sub_1CA94C438();
  v413 = v262;
  v414 = v261;
  v412 = sub_1CA94C438();
  v264 = v263;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v412);
  v265 = v438;
  sub_1CA948D98();
  v266 = [v258 bundleURL];
  MEMORY[0x1EEE9AC00](v266);
  v267 = v441;
  sub_1CA948B68();

  v268 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v269 = sub_1CA2F9F14(v414, v413, v412, v264, 0, 0, &v406 - v265, &v406 - v267);
  v270 = v436;
  *(v436 + 120) = v269;
  v271 = sub_1CA94C438();
  v413 = v272;
  v414 = v271;
  v273 = sub_1CA94C438();
  v412 = v274;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v273);
  v275 = &v406 - v265;
  sub_1CA948D98();
  v276 = v439;
  v277 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v277);
  sub_1CA948B68();

  v278 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v270 + 128) = sub_1CA2F9F14(v414, v413, v273, v412, 0, 0, v275, &v406 - v267);
  v279 = sub_1CA94C438();
  v413 = v280;
  v414 = v279;
  v281 = sub_1CA94C438();
  v412 = v282;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v281);
  v283 = v438;
  sub_1CA948D98();
  v284 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v284);
  v285 = v441;
  sub_1CA948B68();

  v286 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v287 = sub_1CA2F9F14(v414, v413, v281, v412, 0, 0, &v406 - v283, &v406 - v285);
  *(v436 + 136) = v287;
  v288 = sub_1CA94C438();
  v413 = v289;
  v414 = v288;
  v290 = sub_1CA94C438();
  v412 = v291;
  v415 = &v406;
  MEMORY[0x1EEE9AC00](v290);
  v292 = &v406 - v283;
  sub_1CA948D98();
  v293 = v439;
  v294 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v294);
  sub_1CA948B68();

  v295 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v296 = sub_1CA2F9F14(v414, v413, v290, v412, 0, 0, v292, &v406 - v285);
  v297 = v416;
  v298 = v436;
  *(v436 + 144) = v296;
  v297[10] = v298;
  v299 = v420;
  v297[13] = v421;
  v297[14] = v299;
  v414 = 0xD000000000000019;
  v415 = 0x80000001CA9AFC40;
  v297[15] = 0xD000000000000019;
  v297[16] = 0x80000001CA9AFC40;
  v300 = v417;
  v297[18] = MEMORY[0x1E69E6158];
  v297[19] = v300;
  v420 = v299;
  *&v421 = v300;
  v301 = sub_1CA94C438();
  v303 = v302;
  v304 = sub_1CA94C438();
  v306 = v305;
  *&v436 = &v406;
  MEMORY[0x1EEE9AC00](v304);
  v307 = &v406 - v438;
  sub_1CA948D98();
  v308 = [v293 bundleURL];
  MEMORY[0x1EEE9AC00](v308);
  v309 = &v406 - v441;
  sub_1CA948B68();

  v310 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v297[20] = sub_1CA2F9F14(v301, v303, v304, v306, 0, 0, v307, v309);
  v297[23] = v437;
  v297[24] = @"RequiredResources";
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v311 = swift_allocObject();
  *(v311 + 16) = v426;
  v413 = 0x80000001CA993570;
  v417 = 0x80000001CA993590;
  *&v436 = @"RequiredResources";
  v312 = MEMORY[0x1E69E6158];
  *(v311 + 32) = sub_1CA94C1E8();
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v297[28] = v411;
  v297[25] = v311;
  sub_1CA94C1E8();
  *(v435 + 48) = sub_1CA2F864C();
  v313 = swift_allocObject();
  v416 = xmmword_1CA981400;
  *(v313 + 16) = xmmword_1CA981400;
  *(v313 + 32) = v424;
  *(v313 + 40) = 1;
  v314 = v422;
  *(v313 + 64) = MEMORY[0x1E69E6370];
  *(v313 + 72) = v314;
  *(v313 + 80) = 0xD000000000000016;
  *(v313 + 88) = v425;
  v315 = v420;
  *(v313 + 104) = v312;
  *(v313 + 112) = v315;
  strcpy((v313 + 120), "WFMathOperand");
  *(v313 + 134) = -4864;
  v316 = v421;
  *(v313 + 144) = v312;
  *(v313 + 152) = v316;
  v317 = sub_1CA94C438();
  v408 = v318;
  v409 = v317;
  v319 = sub_1CA94C438();
  v407 = v320;
  v410 = &v406;
  MEMORY[0x1EEE9AC00](v319);
  v321 = v438;
  sub_1CA948D98();
  v322 = v439;
  v323 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v323);
  v324 = &v406 - v441;
  sub_1CA948B68();

  v325 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v313 + 160) = sub_1CA2F9F14(v409, v408, v319, v407, 0, 0, &v406 - v321, v324);
  v326 = v437;
  v327 = v423;
  *(v313 + 184) = v437;
  *(v313 + 192) = v327;
  v328 = sub_1CA94C438();
  v408 = v329;
  v409 = v328;
  v330 = sub_1CA94C438();
  v332 = v331;
  v410 = &v406;
  MEMORY[0x1EEE9AC00](v330);
  sub_1CA948D98();
  v333 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v333);
  v334 = &v406 - v441;
  sub_1CA948B68();

  v335 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v313 + 200) = sub_1CA2F9F14(v409, v408, v330, v332, 0, 0, &v406 - v321, v334);
  v336 = v436;
  *(v313 + 224) = v326;
  *(v313 + 232) = v336;
  v337 = swift_allocObject();
  *(v337 + 16) = v426;
  v338 = MEMORY[0x1E69E6158];
  *(v337 + 32) = sub_1CA94C1E8();
  *(v313 + 240) = v337;
  *(v313 + 264) = v411;
  *(v313 + 272) = @"TextAlignment";
  *(v313 + 304) = v338;
  *(v313 + 280) = 0x7468676952;
  *(v313 + 288) = 0xE500000000000000;
  *&v426 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v435 + 56) = sub_1CA2F864C();
  v339 = swift_allocObject();
  *(v339 + 16) = v416;
  *(v339 + 32) = v424;
  *(v339 + 40) = 1;
  v340 = v422;
  *(v339 + 64) = MEMORY[0x1E69E6370];
  *(v339 + 72) = v340;
  v341 = v425;
  *(v339 + 80) = 0xD000000000000016;
  *(v339 + 88) = v341;
  v342 = v420;
  *(v339 + 104) = v338;
  *(v339 + 112) = v342;
  *(v339 + 120) = 0xD000000000000017;
  *(v339 + 128) = 0x80000001CA9AFD00;
  v343 = v421;
  *(v339 + 144) = v338;
  *(v339 + 152) = v343;
  v344 = sub_1CA94C438();
  v424 = v345;
  v425 = v344;
  v346 = sub_1CA94C438();
  v422 = v347;
  v431 = &v406;
  MEMORY[0x1EEE9AC00](v346);
  v348 = v438;
  sub_1CA948D98();
  v349 = [v439 bundleURL];
  *&v421 = &v406;
  MEMORY[0x1EEE9AC00](v349);
  v350 = v441;
  sub_1CA948B68();

  v351 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v339 + 160) = sub_1CA2F9F14(v425, v424, v346, v422, 0, 0, &v406 - v348, &v406 - v350);
  v352 = v423;
  *(v339 + 184) = v437;
  *(v339 + 192) = v352;
  v353 = sub_1CA94C438();
  v424 = v354;
  v425 = v353;
  v355 = sub_1CA94C438();
  v423 = v356;
  v431 = &v406;
  MEMORY[0x1EEE9AC00](v355);
  sub_1CA948D98();
  v357 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v357);
  sub_1CA948B68();

  v358 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v339 + 200) = sub_1CA2F9F14(v425, v424, v355, v423, 0, 0, &v406 - v348, &v406 - v350);
  v359 = v436;
  *(v339 + 224) = v437;
  *(v339 + 232) = v359;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v360 = swift_allocObject();
  *(v360 + 16) = xmmword_1CA97EDF0;
  v361 = swift_allocObject();
  v437 = xmmword_1CA9813C0;
  *(v361 + 16) = xmmword_1CA9813C0;
  strcpy((v361 + 32), "WFParameterKey");
  *(v361 + 47) = -18;
  *(v361 + 48) = 0x704F6874614D4657;
  *(v361 + 56) = 0xEF6E6F6974617265;
  v362 = MEMORY[0x1E69E6158];
  *(v361 + 72) = MEMORY[0x1E69E6158];
  *(v361 + 80) = 0xD000000000000010;
  *(v361 + 88) = v413;
  *(v361 + 96) = 10911970;
  *(v361 + 104) = 0xA300000000000000;
  *(v361 + 120) = v362;
  *(v361 + 128) = 0x72756F7365524657;
  *(v361 + 168) = v362;
  *(v361 + 136) = 0xEF7373616C436563;
  *(v361 + 144) = 0xD00000000000001BLL;
  v363 = v417;
  *(v361 + 152) = v417;
  *(v360 + 32) = sub_1CA94C1E8();
  v364 = swift_allocObject();
  *(v364 + 16) = v437;
  strcpy((v364 + 32), "WFParameterKey");
  *(v364 + 47) = -18;
  v365 = v415;
  *(v364 + 48) = v414;
  *(v364 + 56) = v365;
  v366 = v418;
  *(v364 + 72) = v362;
  *(v364 + 80) = v366;
  *(v364 + 88) = 0x80000001CA9A2F30;
  *(v364 + 96) = &unk_1F49F8250;
  *(v364 + 120) = v428;
  *(v364 + 128) = 0x72756F7365524657;
  *(v364 + 168) = v362;
  *(v364 + 136) = 0xEF7373616C436563;
  *(v364 + 144) = 0xD00000000000001BLL;
  *(v364 + 152) = v363;
  *(v360 + 40) = sub_1CA94C1E8();
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v339 + 240) = v360;
  v368 = v426;
  *(v339 + 264) = v367;
  *(v339 + 272) = v368;
  *(v339 + 304) = v362;
  *(v339 + 280) = 0x7468676952;
  *(v339 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  v369 = sub_1CA2F864C();
  v370 = v435;
  *(v435 + 64) = v369;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v372 = v429;
  *(v429 + 60) = v370;
  *(v372 + 63) = v371;
  *(v372 + 64) = @"ParameterSummary";
  *&v436 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *&v437 = swift_allocObject();
  *(v437 + 16) = xmmword_1CA981360;
  *&v435 = "ificMathOperand)";
  v373 = @"ParameterSummary";
  v374 = sub_1CA94C438();
  v376 = v375;
  v377 = sub_1CA94C438();
  v379 = v378;
  v434 = &v406;
  MEMORY[0x1EEE9AC00](v377);
  v380 = &v406 - v438;
  sub_1CA948D98();
  v381 = v439;
  v382 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v382);
  v383 = &v406 - v441;
  sub_1CA948B68();

  v384 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v385 = sub_1CA2F9F14(v374, v376, v377, v379, 0, 0, v380, v383);
  v386 = objc_allocWithZone(WFActionParameterSummaryValue);
  v387 = sub_1CA65DD78(0xD000000000000025, v435 | 0x8000000000000000, v385);
  *(v437 + 32) = v387;
  *&v435 = "athOperation} ${WFMathOperand}";
  v388 = sub_1CA94C438();
  v390 = v389;
  v391 = sub_1CA94C438();
  v393 = v392;
  v434 = &v406;
  MEMORY[0x1EEE9AC00](v391);
  v394 = &v406 - v438;
  sub_1CA948D98();
  v395 = [v381 bundleURL];
  MEMORY[0x1EEE9AC00](v395);
  v396 = &v406 - v441;
  sub_1CA948B68();

  v397 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v398 = sub_1CA2F9F14(v388, v390, v391, v393, 0, 0, v394, v396);
  v399 = objc_allocWithZone(WFActionParameterSummaryValue);
  v400 = sub_1CA65DD78(0xD000000000000057, v435 | 0x8000000000000000, v398);
  *(v437 + 40) = v400;
  v401 = v436;
  v402 = sub_1CA65AF90();
  v403 = v429;
  *(v429 + 68) = v401;
  *(v403 + 65) = v402;
  *(v403 + 69) = @"ResidentCompatible";
  *(v403 + 73) = MEMORY[0x1E69E6370];
  v403[560] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v404 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3AFB00()
{
  v92 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9AFE90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = v12;
  v13 = &v86 - v97;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v94 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v96 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v86 - v93;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v95 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v91 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v90 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"FocusFilterDescription";
  v25 = @"Description";
  v26 = @"FocusFilterDescription";
  v27 = sub_1CA94C438();
  v88 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v89 = &v86;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v86 - v97;
  sub_1CA948D98();
  v33 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v86 - v93;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v88, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v95;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v91;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F49F82D0;
  *(inited + 224) = v38;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x65676E61724FLL;
  *(inited + 248) = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x2E79726574746162;
  *(inited + 288) = 0xEA00000000003035;
  *(inited + 304) = v39;
  *(inited + 312) = @"InputPassthrough";
  v40 = v39;
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v41 = @"DisabledOnPlatforms";
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"InputPassthrough";
  v45 = sub_1CA94C368();
  *(inited + 384) = v40;
  *(inited + 352) = v45;
  *(inited + 360) = 0xD000000000000057;
  *(inited + 368) = 0x80000001CA9AFF10;
  *(inited + 392) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v46 = swift_initStackObject();
  v91 = v46;
  *(v46 + 16) = v90;
  *(v46 + 32) = 0x6574617473;
  *(v46 + 40) = 0xE500000000000000;
  *&v90 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = @"Key";
  *(v47 + 40) = 0x65756C61566E4FLL;
  *(v47 + 48) = 0xE700000000000000;
  *(v47 + 64) = v40;
  *(v47 + 72) = @"Label";
  v48 = @"Key";
  v49 = @"Label";
  v50 = sub_1CA94C438();
  v87 = v51;
  v88 = v50;
  v52 = sub_1CA94C438();
  v86 = v53;
  v89 = &v86;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v86 - v97;
  sub_1CA948D98();
  v55 = v94;
  v56 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v93;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 80) = sub_1CA2F9F14(v88, v87, v52, v86, 0, 0, v54, &v86 - v57);
  *(v47 + 104) = v95;
  *(v47 + 112) = @"Placeholder";
  v59 = @"Placeholder";
  v60 = sub_1CA94C438();
  v87 = v61;
  v88 = v60;
  v62 = sub_1CA94C438();
  v86 = v63;
  v89 = &v86;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v86 - v97;
  sub_1CA948D98();
  v65 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 120) = sub_1CA2F9F14(v88, v87, v62, v86, 0, 0, v64, &v86 - v57);
  v67 = v95;
  *(v47 + 144) = v95;
  *(v47 + 152) = @"Prompt";
  v68 = @"Prompt";
  v69 = sub_1CA94C438();
  v87 = v70;
  v88 = v69;
  v71 = sub_1CA94C438();
  v73 = v72;
  v89 = &v86;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v86 - v97;
  sub_1CA948D98();
  v75 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v86 - v93;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v88, v87, v71, v73, 0, 0, v74, v76);
  *(v47 + 184) = v67;
  *(v47 + 160) = v78;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v91 + 48) = sub_1CA2F864C();
  v79 = sub_1CA94C1E8();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 400) = v79;
  *(inited + 424) = v80;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1CA9813B0;
  v99 = 2;
  v100 = 1;
  v82 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v83 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v99);
  *(v81 + 32) = v84;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 440) = v81;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3B0690()
{
  v178 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFSeekAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v190 = v12;
  v193 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v173 - v193;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v189 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v191 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v192 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v173 - v192;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v188 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v186 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v185 = &v173;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v173 - v193;
  sub_1CA948D98();
  v31 = [v189 bundleURL];
  v187 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v173 - v192;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v188;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v186;
  v37 = sub_1CA6B3784();
  v38 = v187;
  v187[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0x726177726F666F67;
  v38[26] = 0xE900000000000064;
  v38[28] = v39;
  v38[29] = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v173 - v193;
  sub_1CA948D98();
  v50 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v173 - v192;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v187;
  v187[30] = v53;
  v54[33] = v188;
  v54[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v186 = swift_allocObject();
  v183 = xmmword_1CA981470;
  *(v186 + 16) = xmmword_1CA981470;
  v185 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000016;
  *(v55 + 48) = 0x80000001CA99C4A0;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"DefaultValue";
  *(v55 + 80) = 0x656D6954206F54;
  *(v55 + 88) = 0xE700000000000000;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Items";
  v182 = swift_allocObject();
  *&v182->data = v183;
  v57 = @"Class";
  v58 = @"DefaultValue";
  *&v183 = v57;
  v177 = v58;
  v59 = @"Parameters";
  v60 = @"Items";
  v61 = sub_1CA94C438();
  v179 = v62;
  v180 = v61;
  v63 = sub_1CA94C438();
  v176 = v64;
  v181 = &v173;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v193;
  sub_1CA948D98();
  v66 = v189;
  v67 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v173 - v192;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v180, v179, v63, v176, 0, 0, &v173 - v65, v68);
  v71 = v182;
  v182[1].isa = v70;
  v72 = sub_1CA94C438();
  v179 = v73;
  v180 = v72;
  v74 = sub_1CA94C438();
  v176 = v75;
  v181 = &v173;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v76 = v66;
  v77 = [v66 bundleURL];
  *&v175 = &v173;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v192;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71[1].info = sub_1CA2F9F14(v180, v179, v74, v176, 0, 0, &v173 - v65, &v173 - v78);
  v80 = sub_1CA94C438();
  v179 = v81;
  v180 = v80;
  v82 = sub_1CA94C438();
  v176 = v83;
  v181 = &v173;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v173 - v193;
  sub_1CA948D98();
  v85 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v180, v179, v82, v176, 0, 0, v84, &v173 - v78);
  v88 = v182;
  v182[1].data = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v88;
  *(v55 + 144) = v89;
  *(v55 + 152) = @"Key";
  strcpy((v55 + 160), "WFSeekBehavior");
  *(v55 + 175) = -18;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v90 = @"Key";
  v91 = @"Label";
  v92 = v90;
  v93 = v91;
  v179 = v92;
  v182 = v93;
  v94 = sub_1CA94C438();
  v96 = v95;
  v97 = sub_1CA94C438();
  v99 = v98;
  v181 = &v173;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v173 - v193;
  sub_1CA948D98();
  v101 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v173 - v192;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  *(v55 + 224) = v188;
  *(v55 + 200) = v104;
  _s3__C3KeyVMa_0(0);
  v181 = v105;
  v180 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v186 + 32) = sub_1CA2F864C();
  v106 = swift_initStackObject();
  v175 = xmmword_1CA981380;
  *(v106 + 16) = xmmword_1CA981380;
  *(v106 + 32) = v183;
  *(v106 + 40) = 0xD000000000000020;
  *(v106 + 48) = 0x80000001CA9A44A0;
  v107 = MEMORY[0x1E69E6158];
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = @"DefaultUnit";
  *(v106 + 80) = 6514035;
  *(v106 + 88) = 0xE300000000000000;
  v108 = v179;
  *(v106 + 104) = v107;
  *(v106 + 112) = v108;
  strcpy((v106 + 120), "WFTimeInterval");
  *(v106 + 135) = -18;
  v109 = v182;
  *(v106 + 144) = v107;
  *(v106 + 152) = v109;
  v110 = @"DefaultUnit";
  v174 = sub_1CA94C438();
  v112 = v111;
  v113 = sub_1CA94C438();
  v115 = v114;
  v176 = &v173;
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v173 - v193;
  sub_1CA948D98();
  v117 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v173 - v192;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 160) = sub_1CA2F9F14(v174, v112, v113, v115, 0, 0, v116, v118);
  v120 = v188;
  *(v106 + 184) = v188;
  *(v106 + 192) = @"Placeholder";
  v121 = @"Placeholder";
  v122 = sub_1CA94C438();
  v173 = v123;
  v174 = v122;
  v124 = sub_1CA94C438();
  v126 = v125;
  v176 = &v173;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v173 - v193;
  sub_1CA948D98();
  v128 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v173 - v192;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 200) = sub_1CA2F9F14(v174, v173, v124, v126, 0, 0, v127, v129);
  *(v106 + 224) = v120;
  *(v106 + 232) = @"PossibleUnits";
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v106 + 264) = v131;
  v132 = v131;
  v176 = v131;
  *(v106 + 240) = &unk_1F49F8300;
  v133 = @"PossibleUnits";
  sub_1CA94C1E8();
  *(v186 + 40) = sub_1CA2F864C();
  v134 = swift_allocObject();
  *(v134 + 16) = v175;
  *(v134 + 32) = v183;
  *(v134 + 40) = 0xD00000000000001BLL;
  *(v134 + 48) = 0x80000001CA9A1EB0;
  v135 = MEMORY[0x1E69E6158];
  v136 = v177;
  *(v134 + 64) = MEMORY[0x1E69E6158];
  *(v134 + 72) = v136;
  *(v134 + 80) = 0x6C61636F4CLL;
  *(v134 + 88) = 0xE500000000000000;
  *(v134 + 104) = v135;
  *(v134 + 112) = @"DisallowedVariableTypes";
  *(v134 + 120) = &unk_1F49F8350;
  v137 = v179;
  *(v134 + 144) = v132;
  *(v134 + 152) = v137;
  strcpy((v134 + 160), "WFMediaRoute");
  *(v134 + 173) = 0;
  *(v134 + 174) = -5120;
  v138 = v182;
  *(v134 + 184) = v135;
  *(v134 + 192) = v138;
  v139 = @"DisallowedVariableTypes";
  v140 = sub_1CA94C438();
  v142 = v141;
  v143 = sub_1CA94C438();
  v145 = v144;
  v184 = &v173;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v173 - v193;
  sub_1CA948D98();
  v147 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v173 - v192;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  *(v134 + 224) = v188;
  *(v134 + 200) = v150;
  v151 = sub_1CA94C368();
  *(v134 + 264) = MEMORY[0x1E69E6158];
  *(v134 + 232) = v151;
  *(v134 + 240) = 0x746E696F70646E45;
  *(v134 + 248) = 0xE800000000000000;
  sub_1CA94C1E8();
  v152 = sub_1CA2F864C();
  v153 = v186;
  *(v186 + 48) = v152;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v155 = v187;
  v187[35] = v153;
  v155[38] = v154;
  v155[39] = @"ParameterSummary";
  v156 = @"ParameterSummary";
  v157 = sub_1CA94C438();
  v159 = v158;
  v160 = sub_1CA94C438();
  v162 = v161;
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v173 - v193;
  sub_1CA948D98();
  v164 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v173 - v192;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v157, v159, v160, v162, 0, 0, v163, v165);
  v168 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v169 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v170 = v187;
  v187[40] = v168;
  v170[43] = v169;
  v170[44] = @"RequiredResources";
  v170[48] = v176;
  v170[45] = &unk_1F49F8380;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v171 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA3B1A38()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    [v10 doubleValue];
    sub_1CA948C28();
    swift_unknownObjectRelease();
    sub_1CA948CB8();
    OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    v16 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    swift_unknownObjectRetain();
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC28();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      v21 = sub_1CA94C408();
      v23 = sub_1CA26B54C(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1CA256000, v17, v18, "Invalid date de-serialization: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1CCAA4BF0](v20, -1, -1);
      MEMORY[0x1CCAA4BF0](v19, -1, -1);
    }

    (*(v3 + 8))(v8, v0);
    sub_1CA948CB8();
    v24 = OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA3B1CA0()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA948E68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v11(v10, v1, v7);
  v12 = (*(v8 + 88))(v10, v7);
  if (MEMORY[0x1E69698C8] && v12 == *MEMORY[0x1E69698C8] || MEMORY[0x1E6969898] && v12 == *MEMORY[0x1E6969898] || MEMORY[0x1E69698A8] && v12 == *MEMORY[0x1E69698A8] || MEMORY[0x1E69698B8] && v12 == *MEMORY[0x1E69698B8])
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    return sub_1CA94D008();
  }

  else
  {
    v35 = v3;
    v14 = *MEMORY[0x1E69E10B0];
    v15 = sub_1CA949C58();
    v34 = v28;
    MEMORY[0x1EEE9AC00](v15);
    v32 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v16 = v28 - v32;
    v11(v28 - v32, v1, v7);
    v17 = sub_1CA949F68();
    v33 = sub_1CA94CC28();
    if (os_log_type_enabled(v17, v33))
    {
      v29 = swift_slowAlloc();
      v30 = v2;
      v18 = v29;
      v19 = swift_slowAlloc();
      v31 = v19;
      v28[1] = v28;
      v36 = v19;
      *v18 = 136315138;
      MEMORY[0x1EEE9AC00](v19);
      v11(v28 - v32, v16, v7);
      v20 = sub_1CA94C408();
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v16, v7);
      v24 = sub_1CA26B54C(v20, v22, &v36);

      v25 = v29;
      *(v29 + 4) = v24;
      v26 = v25;
      _os_log_impl(&dword_1CA256000, v17, v33, "Unhandled calendar matching policy: %s", v25, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1CCAA4BF0](v27, -1, -1);
      MEMORY[0x1CCAA4BF0](v26, -1, -1);

      (*(v35 + 8))(v6, v30);
    }

    else
    {

      v23 = *(v8 + 8);
      v23(v16, v7);
      (*(v35 + 8))(v6, v2);
    }

    v23(v10, v7);
    return 0;
  }
}

uint64_t sub_1CA3B2150()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA949068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v11(v10, v1, v7);
  v12 = (*(v8 + 88))(v10, v7);
  if (MEMORY[0x1E69699D0] && v12 == *MEMORY[0x1E69699D0] || MEMORY[0x1E69699B8] && v12 == *MEMORY[0x1E69699B8])
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    return sub_1CA94D008();
  }

  else
  {
    v35 = v3;
    v36 = v2;
    v14 = *MEMORY[0x1E69E10B0];
    v15 = sub_1CA949C58();
    v34 = &v30;
    MEMORY[0x1EEE9AC00](v15);
    v16 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v17 = &v30 - v16;
    v11(&v30 - v16, v1, v7);
    v18 = sub_1CA949F68();
    v33 = sub_1CA94CC28();
    if (os_log_type_enabled(v18, v33))
    {
      v19 = swift_slowAlloc();
      v31 = v18;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = v21;
      v30 = &v30;
      v37 = v21;
      *v20 = 136315138;
      MEMORY[0x1EEE9AC00](v21);
      v11(&v30 - v16, &v30 - v16, v7);
      v22 = sub_1CA94C408();
      v24 = v23;
      v25 = *(v8 + 8);
      v25(v17, v7);
      v26 = sub_1CA26B54C(v22, v24, &v37);

      v27 = v20;
      *(v20 + 4) = v26;
      v28 = v31;
      _os_log_impl(&dword_1CA256000, v31, v33, "Unhandled calendar repeated time policy: %s", v27, 0xCu);
      v29 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1CCAA4BF0](v29, -1, -1);
      MEMORY[0x1CCAA4BF0](v27, -1, -1);
    }

    else
    {

      v25 = *(v8 + 8);
      v25(v17, v7);
    }

    (*(v35 + 8))(v6, v36);
    v25(v10, v7);
    return 0;
  }
}

uint64_t sub_1CA3B255C(uint64_t a1)
{
  v13[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (swift_dynamicCast())
  {
    if (sub_1CA323E28(1702125924, 0xE400000000000000))
    {
      v1 = sub_1CA948CB8();
      v2 = *(v1 - 8);
      v3 = *(v2 + 64);
      MEMORY[0x1EEE9AC00](v1);
      v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v6 - 8);
      v9 = v13 - v8;
      sub_1CA3B1A38();
      if (__swift_getEnumTagSinglePayload(v9, 1, v1) != 1)
      {

        (*(v2 + 32))(v5, v9, v1);
        sub_1CA948F08();
        swift_unknownObjectRelease();
        return (*(v2 + 8))(v5, v1);
      }

      swift_unknownObjectRelease();
      sub_1CA30F7DC(v9, &qword_1EC4466D0, &qword_1CA991AA0);
    }

    v10 = sub_1CA323E28(0x6E6572727563636FLL, 0xEB00000000736563);

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 integerValue];
        sub_1CA948ED8();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return sub_1CA948EF8();
}

uint64_t sub_1CA3B280C()
{
  v0 = sub_1CA948CB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  sub_1CA948EE8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v0) == 1)
  {
    sub_1CA30F7DC(v8, &qword_1EC4466D0, &qword_1CA991AA0);
    v9 = sub_1CA948EC8();
    if (v10)
    {
      return 0;
    }

    else
    {
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1CA981310;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 32) = 0x6E6572727563636FLL;
      *(v17 + 40) = 0xEB00000000736563;
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v17 + 88) = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      *(v17 + 64) = v18;
      sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
      return sub_1CA94CBB8();
    }
  }

  else
  {
    (*(v1 + 32))(v4, v8, v0);
    sub_1CA948C38();
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 16) = xmmword_1CA981310;
    *(v14 + 56) = v15;
    *(v14 + 32) = 1702125924;
    *(v14 + 40) = 0xE400000000000000;
    *(v14 + 88) = swift_getObjectType();
    *(v14 + 64) = v13;
    sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
    v11 = sub_1CA94CBB8();
    (*(v1 + 8))(v4, v0);
  }

  return v11;
}

uint64_t sub_1CA3B2B0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1CA323E28(0x7972657665, 0xE500000000000000);
    if (v3)
    {
      v37 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
      if (swift_dynamicCast())
      {
        v4 = sub_1CA948DD8();
        v5 = *(v4 - 8);
        v6 = *(v5 + 64);
        MEMORY[0x1EEE9AC00](v4);
        v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444BD0, &qword_1CA985948);
        v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](v9 - 8);
        v12 = &v36 - v11;
        sub_1CA948DB8();
        if (__swift_getEnumTagSinglePayload(v12, 1, v4) != 1)
        {
          v28 = *(v5 + 32);
          v28(v8, v12, v4);
          v28(a2, v8, v4);
          v29 = *MEMORY[0x1E6969908];
          v30 = sub_1CA948FA8();
          (*(*(v30 - 8) + 104))(a2, v29, v30);
          return __swift_storeEnumTagSinglePayload(a2, 0, 1, v30);
        }

        sub_1CA30F7DC(v12, &unk_1EC444BD0, &qword_1CA985948);
      }
    }

    if (sub_1CA323E28(6845550, 0xE300000000000000))
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = v13, (v15 = sub_1CA323E28(0x7961446B656577, 0xE700000000000000)) != 0) && (v37 = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520), (swift_dynamicCast() & 1) != 0))
      {
        v16 = sub_1CA948DD8();
        v36 = &v36;
        v17 = *(v16 - 8);
        v18 = *(v17 + 64);
        MEMORY[0x1EEE9AC00](v16);
        v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444BD0, &qword_1CA985948);
        v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](v21 - 8);
        v24 = &v36 - v23;
        sub_1CA948DB8();
        if (__swift_getEnumTagSinglePayload(v24, 1, v16) != 1)
        {
          v31 = *(v17 + 32);
          v31(v20, v24, v16);
          v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC8, &qword_1CA985940) + 48);
          v33 = [v14 integerValue];
          swift_unknownObjectRelease();
          *a2 = v33;
          v31(&a2[v32], v20, v16);
          v34 = *MEMORY[0x1E69698F8];
          v35 = sub_1CA948FA8();
          (*(*(v35 - 8) + 104))(a2, v34, v35);
          return __swift_storeEnumTagSinglePayload(a2, 0, 1, v35);
        }

        swift_unknownObjectRelease();
        sub_1CA30F7DC(v24, &unk_1EC444BD0, &qword_1CA985948);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v27 = sub_1CA948FA8();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v27);
  }

  else
  {
    v25 = sub_1CA948FA8();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v25);
  }
}

uint64_t sub_1CA3B306C()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA948FA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v11(v10, v1, v7);
  v12 = (*(v8 + 88))(v10, v7);
  if (MEMORY[0x1E6969908] && v12 == *MEMORY[0x1E6969908])
  {
    (*(v8 + 96))(&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v13 = sub_1CA948DD8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 32))(v17, v10, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 16) = xmmword_1CA981310;
    *(v18 + 56) = v19;
    *(v18 + 32) = 0x7972657665;
    *(v18 + 40) = 0xE500000000000000;
    v20 = sub_1CA948DC8();
    *(v18 + 88) = v19;
    *(v18 + 64) = v20;
    *(v18 + 72) = v21;
LABEL_7:
    sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
    v31 = sub_1CA94CBB8();
    (*(v14 + 8))(v17, v13);
    return v31;
  }

  if (MEMORY[0x1E69698F8] && v12 == *MEMORY[0x1E69698F8])
  {
    (*(v8 + 96))(&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v22 = *v10;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC8, &qword_1CA985940) + 48);
    v13 = sub_1CA948DD8();
    v14 = *(v13 - 8);
    v24 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    v17 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 32))(v17, &v10[v23], v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CA97EDF0;
    v27 = MEMORY[0x1E69E6158];
    *(v26 + 32) = 6845550;
    *(v26 + 40) = 0xE300000000000000;
    v28 = MEMORY[0x1E69E6530];
    *(v26 + 56) = v27;
    *(v26 + 64) = v22;
    *(v26 + 120) = v27;
    *(v26 + 88) = v28;
    *(v26 + 96) = 0x7961446B656577;
    *(v26 + 104) = 0xE700000000000000;
    v29 = sub_1CA948DC8();
    *(v26 + 152) = v27;
    *(v26 + 128) = v29;
    *(v26 + 136) = v30;
    goto LABEL_7;
  }

  v54 = v3;
  v55 = v2;
  v32 = *MEMORY[0x1E69E10B0];
  v33 = sub_1CA949C58();
  v53 = &v49;
  MEMORY[0x1EEE9AC00](v33);
  v34 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v49 - v34;
  v11(&v49 - v34, v1, v7);
  v36 = sub_1CA949F68();
  v52 = sub_1CA94CC28();
  if (os_log_type_enabled(v36, v52))
  {
    v37 = swift_slowAlloc();
    v50 = v36;
    v38 = v37;
    v39 = swift_slowAlloc();
    v51 = v39;
    v49 = &v49;
    v56 = v39;
    *v38 = 136315138;
    MEMORY[0x1EEE9AC00](v39);
    v11(&v49 - v34, &v49 - v34, v7);
    v40 = sub_1CA94C408();
    v42 = v41;
    v43 = *(v8 + 8);
    v43(v35, v7);
    v44 = sub_1CA26B54C(v40, v42, &v56);

    v45 = v38;
    *(v38 + 4) = v44;
    v46 = v50;
    _os_log_impl(&dword_1CA256000, v50, v52, "Unhandled value %s for Weekday serializedRepresentation", v45, 0xCu);
    v47 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1CCAA4BF0](v47, -1, -1);
    MEMORY[0x1CCAA4BF0](v45, -1, -1);
  }

  else
  {

    v43 = *(v8 + 8);
    v43(v35, v7);
  }

  (*(v54 + 8))(v6, v55);
  v43(v10, v7);
  return 0;
}

uint64_t sub_1CA3B36D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 == 0x656D69547478656ELL && a2 == 0xE800000000000000;
  if (v11 || (sub_1CA94D7F8() & 1) != 0)
  {
    v12 = MEMORY[0x1E69698C8];
LABEL_7:
    v13 = *v12;
    v14 = sub_1CA948E68();
    (*(*(v14 - 8) + 104))(a3, v13, v14);

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v14);
  }

  v16 = a1 == 0xD000000000000023 && 0x80000001CA9B0300 == a2;
  if (v16 || (sub_1CA94D7F8() & 1) != 0)
  {
    v12 = MEMORY[0x1E6969898];
    goto LABEL_7;
  }

  v17 = a1 == 0xD000000000000027 && 0x80000001CA9B02D0 == a2;
  if (v17 || (sub_1CA94D7F8() & 1) != 0)
  {
    v12 = MEMORY[0x1E69698A8];
    goto LABEL_7;
  }

  v18 = a1 == 0x746369727473 && a2 == 0xE600000000000000;
  if (v18 || (sub_1CA94D7F8() & 1) != 0)
  {
    v12 = MEMORY[0x1E69698B8];
    goto LABEL_7;
  }

  v19 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  sub_1CA94C218();
  v20 = sub_1CA949F68();
  v21 = sub_1CA94CC28();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1CA26B54C(a1, a2, &v26);
    _os_log_impl(&dword_1CA256000, v20, v21, "Unhandled value %s for calendarMatchingPolicy", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1CCAA4BF0](v23, -1, -1);
    MEMORY[0x1CCAA4BF0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v24 = sub_1CA948E68();
  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
}

uint64_t sub_1CA3B3A38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA949F78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v11 || (sub_1CA94D7F8() & 1) != 0)
  {
    v12 = MEMORY[0x1E69699D0];
LABEL_7:
    v13 = *v12;
    v14 = sub_1CA949068();
    (*(*(v14 - 8) + 104))(a3, v13, v14);

    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v14);
  }

  v16 = a1 == 1953718636 && a2 == 0xE400000000000000;
  if (v16 || (sub_1CA94D7F8() & 1) != 0)
  {
    v12 = MEMORY[0x1E69699B8];
    goto LABEL_7;
  }

  v17 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  sub_1CA94C218();
  v18 = sub_1CA949F68();
  v19 = sub_1CA94CC28();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1CA26B54C(a1, a2, &v24);
    _os_log_impl(&dword_1CA256000, v18, v19, "Unhandled value %s for calendarRepeatedPolicy", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1CCAA4BF0](v21, -1, -1);
    MEMORY[0x1CCAA4BF0](v20, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v22 = sub_1CA949068();
  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v22);
}

void static LNRecurrenceRuleBridge.recurrenceRuleBridge(with:)(uint64_t a1)
{
  v311 = a1;
  swift_unknownObjectRetain();
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    goto LABEL_187;
  }

  v2 = 0;
  v3 = v313;
  v4 = sub_1CA9490D8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v295 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v279 = v9;
  v294 = v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9490B8();
  v302 = v3;
  v10 = sub_1CA323E28(0x7261646E656C6163, 0xE800000000000000);
  v276 = v271;
  if (v10)
  {
    v313 = v10;
    v11 = OUTLINED_FUNCTION_16_10();
    if (v11)
    {
      v12 = v311;
      v1 = v312;
      v13 = v279;
      MEMORY[0x1EEE9AC00](v11);
      v14 = v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = sub_1CA9487B8();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_1CA9487A8();
      sub_1CA3B6C98(&qword_1EC444BA8);
      sub_1CA948798();
      v18 = v294;
      v19 = v295;
      (*(v295 + 8))(v294, v4);

      sub_1CA266F2C(v12, v1);
      (*(v19 + 32))(v18, v14, v4);
      v2 = 0;
    }
  }

  v20 = 0x6854664F73796164;
  v21 = sub_1CA323E28(0x6854664F73796164, 0xEE0068746E6F4D65);
  v285 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v311 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25())
    {
      v22 = v313;
      v23 = sub_1CA25B410(v313);
      if (v23)
      {
        v1 = v23;
        v306 = 0;
        OUTLINED_FUNCTION_4_23(v23, MEMORY[0x1E69E7CC0]);
        if ((v1 & 0x8000000000000000) != 0)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v24 = 0;
        v25 = v311;
        do
        {
          v26 = v25;
          if ((v22 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1CCAA22D0](v24, v22);
          }

          else
          {
            v27 = *(v22 + 8 * v24 + 32);
          }

          v28 = v27;
          v29 = [v27 integerValue];

          v25 = v26;
          v311 = v26;
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          if (v31 >= v30 >> 1)
          {
            v32 = OUTLINED_FUNCTION_5_20(v30);
            sub_1CA2B8E70(v32, v31 + 1, 1);
            v25 = v311;
          }

          ++v24;
          *(v25 + 16) = v31 + 1;
          *(v25 + 8 * v31 + 32) = v29;
        }

        while (v1 != v24);
        v285 = v25;

        v2 = v306;
        goto LABEL_20;
      }
    }

    v285 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v33 = sub_1CA323E28(0x6854664F73796164, 0xED00007261655965);
  v284 = MEMORY[0x1E69E7CC0];
  v287 = v4;
  if (!v33)
  {
    goto LABEL_34;
  }

  v311 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
  if ((OUTLINED_FUNCTION_2_25() & 1) == 0)
  {
    goto LABEL_33;
  }

  v34 = OUTLINED_FUNCTION_27_11();
  v35 = sub_1CA25B410(v34);
  if (!v35)
  {

LABEL_33:
    v284 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v36 = v35;
  OUTLINED_FUNCTION_4_23(v35, MEMORY[0x1E69E7CC0]);
  if (v36 < 0)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  OUTLINED_FUNCTION_23_9();
  do
  {
    if (v2)
    {
      v37 = MEMORY[0x1CCAA22D0](v1, 0x6854664F73796164);
    }

    else
    {
      v37 = *(8 * v1 + 0x6854664F73796184);
    }

    v38 = v37;
    [v37 integerValue];

    OUTLINED_FUNCTION_1_21();
    if (v40)
    {
      v42 = OUTLINED_FUNCTION_5_20(v39);
      OUTLINED_FUNCTION_31_7(v42);
    }

    ++v1;
    OUTLINED_FUNCTION_9_12();
  }

  while (v36 != v1);
  v284 = v41;

LABEL_34:
  v43 = sub_1CA948F18();
  v275 = v271;
  v44 = OUTLINED_FUNCTION_1_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v271 - v49;
  sub_1CA948EF8();
  v51 = sub_1CA323E28(6581861, 0xE300000000000000);
  v309 = v271 - v49;
  if (v51)
  {
    v20 = v51;
    v52 = MEMORY[0x1EEE9AC00](v51);
    sub_1CA3B255C(v52);
    swift_unknownObjectRelease();
    (*(v46 + 8))(v309, v43);
    (*(v46 + 32))(v309, v271 - v49, v43);
    v50 = v309;
  }

  v297 = v48;
  v53 = sub_1CA949038();
  v274 = v271;
  v54 = OUTLINED_FUNCTION_1_0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_8_9(v271);
  v57 = *MEMORY[0x1E6969920];
  OUTLINED_FUNCTION_21_9(&v314);
  v290 = v58;
  v296 = v59;
  v60();
  v61 = sub_1CA323E28(0x636E657571657266, 0xE900000000000079);
  if (v61)
  {
    v20 = v61;
    objc_opt_self();
    v62 = OUTLINED_FUNCTION_36_6();
    if (v62)
    {
      v63 = v62;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BA0, &qword_1CA985920);
      v48 = v271;
      OUTLINED_FUNCTION_18_0(v64);
      v66 = *(v65 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v67);
      v69 = v271 - v68;
      [v63 integerValue];
      sub_1CA949018();
      swift_unknownObjectRelease();
      v20 = v296;
      if (__swift_getEnumTagSinglePayload(v69, 1, v296) == 1)
      {
        sub_1CA30F7DC(v69, &qword_1EC444BA0, &qword_1CA985920);
      }

      else
      {
        OUTLINED_FUNCTION_20_9(&v314);
        v70(v290, v20);
        v71 = OUTLINED_FUNCTION_22_8();
        v72(v71, v69, v20);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v50 = v309;
  }

  v73 = sub_1CA323E28(0x7372756F68, 0xE500000000000000);
  v283 = MEMORY[0x1E69E7CC0];
  v307 = v46;
  if (v73)
  {
    v311 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25())
    {
      v74 = OUTLINED_FUNCTION_27_11();
      v75 = sub_1CA25B410(v74);
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_4_23(v75, MEMORY[0x1E69E7CC0]);
        if (v76 < 0)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        OUTLINED_FUNCTION_23_9();
        do
        {
          if (v2)
          {
            v77 = MEMORY[0x1CCAA22D0](v48, v20);
          }

          else
          {
            v77 = *(v20 + 8 * v48 + 32);
          }

          v78 = v77;
          [v77 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v40)
          {
            v81 = OUTLINED_FUNCTION_5_20(v79);
            OUTLINED_FUNCTION_31_7(v81);
          }

          v48 = (v48 + 1);
          OUTLINED_FUNCTION_9_12();
        }

        while (v76 != v48);
        v283 = v80;

        v46 = v307;
      }

      else
      {

        v283 = MEMORY[0x1E69E7CC0];
      }

      v50 = v309;
    }

    else
    {
      v283 = MEMORY[0x1E69E7CC0];
    }
  }

  if (sub_1CA323E28(0x6C61767265746E69, 0xE800000000000000))
  {
    objc_opt_self();
    v82 = OUTLINED_FUNCTION_36_6();
    if (v82)
    {
      v272 = [v82 integerValue];
    }

    else
    {
      v272 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v272 = 1;
  }

  v83 = sub_1CA948E68();
  v273 = v271;
  v84 = OUTLINED_FUNCTION_1_0(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_8_9(v271);
  v87 = *MEMORY[0x1E6969898];
  OUTLINED_FUNCTION_21_9(&v310);
  v289 = v88;
  v293 = v89;
  v90();
  v91 = sub_1CA323E28(0x676E69686374616DLL, 0xEE007963696C6F50);
  v92 = v2;
  if (v91)
  {
    v313 = v91;
    if (OUTLINED_FUNCTION_16_10())
    {
      v93 = v311;
      v94 = v312;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B98, &qword_1CA985918);
      v48 = v271;
      OUTLINED_FUNCTION_18_0(v95);
      v97 = *(v96 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v98);
      OUTLINED_FUNCTION_12_10();
      sub_1CA3B36D0(v93, v94, v99);

      v100 = OUTLINED_FUNCTION_80();
      v101 = v293;
      if (__swift_getEnumTagSinglePayload(v100, v102, v293) == 1)
      {
        sub_1CA30F7DC(v2, &qword_1EC444B98, &qword_1CA985918);
      }

      else
      {
        OUTLINED_FUNCTION_20_9(&v310);
        v103(v289, v101);
        v104 = OUTLINED_FUNCTION_22_8();
        v105(v104, v2, v101);
      }

      v50 = v309;
      v92 = v2;
    }
  }

  v106 = sub_1CA323E28(0x736574756E696DLL, 0xE700000000000000);
  v282 = MEMORY[0x1E69E7CC0];
  if (v106)
  {
    v311 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25())
    {
      v107 = OUTLINED_FUNCTION_27_11();
      v108 = sub_1CA25B410(v107);
      if (v108)
      {
        v109 = v108;
        OUTLINED_FUNCTION_4_23(v108, MEMORY[0x1E69E7CC0]);
        if (v109 < 0)
        {
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        OUTLINED_FUNCTION_23_9();
        do
        {
          if (v2)
          {
            v110 = MEMORY[0x1CCAA22D0](v48, v92);
          }

          else
          {
            v110 = *(v92 + 8 * v48 + 32);
          }

          v111 = v110;
          [v110 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v40)
          {
            v114 = OUTLINED_FUNCTION_5_20(v112);
            OUTLINED_FUNCTION_31_7(v114);
          }

          v48 = (v48 + 1);
          OUTLINED_FUNCTION_9_12();
        }

        while (v109 != v48);
        v282 = v113;

        v92 = v2;
        v46 = v307;
        v50 = v309;
      }

      else
      {

        v282 = MEMORY[0x1E69E7CC0];
        v50 = v309;
        v92 = v2;
      }
    }

    else
    {
      v282 = MEMORY[0x1E69E7CC0];
    }
  }

  v115 = sub_1CA323E28(0x7368746E6F6DLL, 0xE600000000000000);
  v286 = v43;
  if (v115)
  {
    v311 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80);
    if (OUTLINED_FUNCTION_2_25())
    {
      v116 = OUTLINED_FUNCTION_27_11();
      v305 = sub_1CA25B410(v116);
      v117 = 0;
      v303 = v92;
      v300 = (v92 & 0xFFFFFFFFFFFFFF8);
      v301 = v92 & 0xC000000000000001;
      v304 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v305 == v117)
        {

          goto LABEL_115;
        }

        if (v301)
        {
          v118 = MEMORY[0x1CCAA22D0](v117, v303);
        }

        else
        {
          if (v117 >= v300[2])
          {
            goto LABEL_190;
          }

          v118 = *(v303 + 8 * v117 + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(v117, 1))
        {
          break;
        }

        v306 = v92;
        v119 = sub_1CA948F58();
        v120 = OUTLINED_FUNCTION_1_0(v119);
        v122 = v121;
        v124 = *(v123 + 64);
        MEMORY[0x1EEE9AC00](v120);
        OUTLINED_FUNCTION_6_0();
        v127 = (v126 - v125);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B90, &qword_1CA985910);
        OUTLINED_FUNCTION_18_0(v128);
        v130 = *(v129 + 64);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v131);
        v133 = v271 - v132;
        v311 = v118;
        swift_unknownObjectRetain();
        if (OUTLINED_FUNCTION_29_9())
        {
          v299 = v271;
          v134 = v313;
          if (*(v313 + 16) && (v135 = sub_1CA271BF8(), (v136 & 1) != 0) && (v137 = *(*(v134 + 56) + 8 * v135), objc_opt_self(), (v138 = OUTLINED_FUNCTION_36_6()) != 0))
          {
            v292 = v138;
            v139 = *(v134 + 16);
            v298 = v137;
            swift_unknownObjectRetain();
            if (v139 && (v140 = sub_1CA271BF8(), (v141 & 1) != 0) && (v142 = *(*(v134 + 56) + 8 * v140), objc_opt_self(), (v143 = OUTLINED_FUNCTION_36_6()) != 0))
            {
              v288 = v143;
              swift_unknownObjectRetain();
              [v292 integerValue];
              [v288 BOOLValue];
              sub_1CA948F68();
              swift_unknownObjectRelease();
            }

            else
            {
              [v292 integerValue];
              sub_1CA948F68();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v144 = 0;
            v50 = v309;
          }

          else
          {
            swift_unknownObjectRelease();

            v144 = 1;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v144 = 1;
        }

        __swift_storeEnumTagSinglePayload(v133, v144, 1, v119);
        if (__swift_getEnumTagSinglePayload(v133, 1, v119) == 1)
        {
          sub_1CA30F7DC(v133, &qword_1EC444B90, &qword_1CA985910);
          v92 = v306;
        }

        else
        {
          v145 = *(v122 + 32);
          v145(v127, v133, v119);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_32_6(isUniquelyReferenced_nonNull_native, v147, v148, v304);
            sub_1CA2E5430();
            v304 = v154;
          }

          v92 = v306;
          v150 = *(v304 + 16);
          v149 = *(v304 + 24);
          if (v150 >= v149 >> 1)
          {
            OUTLINED_FUNCTION_64(v149);
            sub_1CA2E5430();
            v304 = v155;
          }

          *(v304 + 16) = v150 + 1;
          v151 = *(v122 + 80);
          OUTLINED_FUNCTION_68_0();
          v145(v153 + v152 + *(v122 + 72) * v150, v127, v119);
          v50 = v309;
        }

        ++v117;
        v46 = v307;
      }

      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }
  }

  v304 = MEMORY[0x1E69E7CC0];
LABEL_115:
  v156 = sub_1CA949068();
  v271[1] = v271;
  v157 = OUTLINED_FUNCTION_1_0(v156);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_8_9(v271);
  v160 = *MEMORY[0x1E69699D0];
  OUTLINED_FUNCTION_21_9(&v309);
  v288 = v161;
  v292 = v162;
  v163();
  v164 = sub_1CA323E28(0xD000000000000012, 0x80000001CA9B0250);
  if (v164)
  {
    v313 = v164;
    if (OUTLINED_FUNCTION_16_10())
    {
      v165 = v311;
      v166 = v312;
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B88, &qword_1CA985908);
      OUTLINED_FUNCTION_18_0(v167);
      v169 = *(v168 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v170);
      OUTLINED_FUNCTION_12_10();
      sub_1CA3B3A38(v165, v166, v171);

      v172 = OUTLINED_FUNCTION_80();
      v173 = v292;
      if (__swift_getEnumTagSinglePayload(v172, v174, v292) == 1)
      {
        sub_1CA30F7DC(v92, &qword_1EC444B88, &qword_1CA985908);
      }

      else
      {
        OUTLINED_FUNCTION_20_9(&v309);
        v175(v288, v173);
        v176 = OUTLINED_FUNCTION_22_8();
        v177(v176, v92, v173);
      }

      v50 = v309;
    }
  }

  v178 = sub_1CA323E28(0x73646E6F636573, 0xE700000000000000);
  v281 = MEMORY[0x1E69E7CC0];
  if (v178)
  {
    v311 = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25())
    {
      v179 = v313;
      v180 = sub_1CA25B410(v313);
      if (v180)
      {
        v181 = v180;
        v182 = v92;
        OUTLINED_FUNCTION_4_23(v180, MEMORY[0x1E69E7CC0]);
        if (v181 < 0)
        {
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        for (i = 0; i != v181; ++i)
        {
          if ((v179 & 0xC000000000000001) != 0)
          {
            v184 = MEMORY[0x1CCAA22D0](i, v179);
          }

          else
          {
            v184 = *(v179 + 8 * i + 32);
          }

          v185 = v184;
          [v184 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v40)
          {
            v188 = OUTLINED_FUNCTION_5_20(v186);
            OUTLINED_FUNCTION_31_7(v188);
          }

          OUTLINED_FUNCTION_9_12();
        }

        v281 = v187;

        v92 = v182;
        v46 = v307;
      }

      else
      {

        v281 = MEMORY[0x1E69E7CC0];
      }

      v50 = v309;
    }

    else
    {
      v281 = MEMORY[0x1E69E7CC0];
    }
  }

  v189 = sub_1CA323E28(0x7469736F50746573, 0xEC000000736E6F69);
  v280 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    v311 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
    if (OUTLINED_FUNCTION_2_25())
    {
      v190 = v313;
      v191 = sub_1CA25B410(v313);
      if (v191)
      {
        v192 = v191;
        v193 = v92;
        OUTLINED_FUNCTION_4_23(v191, MEMORY[0x1E69E7CC0]);
        if (v192 < 0)
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        for (j = 0; j != v192; ++j)
        {
          if ((v190 & 0xC000000000000001) != 0)
          {
            v195 = MEMORY[0x1CCAA22D0](j, v190);
          }

          else
          {
            v195 = *(v190 + 8 * j + 32);
          }

          v196 = v195;
          [v195 integerValue];

          OUTLINED_FUNCTION_1_21();
          if (v40)
          {
            v199 = OUTLINED_FUNCTION_5_20(v197);
            OUTLINED_FUNCTION_31_7(v199);
          }

          OUTLINED_FUNCTION_9_12();
        }

        v280 = v198;

        v92 = v193;
        v46 = v307;
      }

      else
      {

        v280 = MEMORY[0x1E69E7CC0];
      }

      v50 = v309;
    }

    else
    {
      v280 = MEMORY[0x1E69E7CC0];
    }
  }

  v200 = sub_1CA323E28(0x737961646B656577, 0xE800000000000000);
  if (v200 && (v311 = v200, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80), (OUTLINED_FUNCTION_2_25() & 1) != 0))
  {
    v306 = v92;
    v201 = OUTLINED_FUNCTION_27_11();
    v202 = sub_1CA25B410(v201);
    v300 = v92;
    v301 = v202;
    v203 = 0;
    v298 = (v92 & 0xFFFFFFFFFFFFFF8);
    v299 = (v92 & 0xC000000000000001);
    v303 = MEMORY[0x1E69E7CC0];
    v204 = &unk_1EC444B80;
    while (v301 != v203)
    {
      if (v299)
      {
        v92 = MEMORY[0x1CCAA22D0](v203, v300);
      }

      else
      {
        if (v203 >= v298[2])
        {
          goto LABEL_192;
        }

        v92 = v300[v203 + 4];
        swift_unknownObjectRetain();
      }

      if (__OFADD__(v203, 1))
      {
        goto LABEL_191;
      }

      v205 = sub_1CA948FA8();
      v305 = v271;
      v206 = OUTLINED_FUNCTION_1_0(v205);
      v208 = v207;
      v210 = *(v209 + 64);
      MEMORY[0x1EEE9AC00](v206);
      OUTLINED_FUNCTION_6_0();
      v213 = (v212 - v211);
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(v204, &qword_1CA985900);
      OUTLINED_FUNCTION_18_0(v214);
      v216 = *(v215 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v217);
      v218 = v204;
      v220 = v271 - v219;
      v311 = v92;
      swift_unknownObjectRetain();
      if (OUTLINED_FUNCTION_29_9())
      {
        v221 = v313;
      }

      else
      {
        v221 = 0;
      }

      sub_1CA3B2B0C(v221, v220);
      swift_unknownObjectRelease();

      if (__swift_getEnumTagSinglePayload(v220, 1, v205) == 1)
      {
        sub_1CA30F7DC(v220, v218, &qword_1CA985900);
        v204 = v218;
        v50 = v309;
      }

      else
      {
        v222 = v218;
        v223 = *(v208 + 32);
        v223(v213, v220, v205);
        v224 = swift_isUniquelyReferenced_nonNull_native();
        if ((v224 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6(v224, v225, v226, v303);
          sub_1CA2E536C();
          v303 = v232;
        }

        v204 = v222;
        v228 = *(v303 + 16);
        v227 = *(v303 + 24);
        v92 = v228 + 1;
        if (v228 >= v227 >> 1)
        {
          OUTLINED_FUNCTION_64(v227);
          sub_1CA2E536C();
          v303 = v233;
        }

        *(v303 + 16) = v92;
        v229 = *(v208 + 80);
        OUTLINED_FUNCTION_68_0();
        v223(v231 + v230 + *(v208 + 72) * v228, v213, v205);
        v50 = v309;
      }

      ++v203;
      v46 = v307;
    }
  }

  else
  {
    v303 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA323E28(0x736B656577, 0xE500000000000000);
  OUTLINED_FUNCTION_158();

  v234 = MEMORY[0x1E69E7CC0];
  v235 = v297;
  if (!v92)
  {
    goto LABEL_185;
  }

  v311 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444B70, &unk_1CA989B70);
  if ((OUTLINED_FUNCTION_2_25() & 1) == 0)
  {
    goto LABEL_185;
  }

  v236 = v313;
  v237 = sub_1CA25B410(v313);
  v238 = v279;
  if (!v237)
  {

    goto LABEL_186;
  }

  v239 = v237;
  v311 = v234;
  sub_1CA2B8E70(0, v237 & ~(v237 >> 63), 0);
  if ((v239 & 0x8000000000000000) == 0)
  {
    v240 = 0;
    v241 = v311;
    do
    {
      if ((v236 & 0xC000000000000001) != 0)
      {
        v242 = MEMORY[0x1CCAA22D0](v240, v236);
      }

      else
      {
        v242 = *(v236 + 8 * v240 + 32);
      }

      v243 = v242;
      v244 = [v242 integerValue];

      v311 = v241;
      v246 = *(v241 + 16);
      v245 = *(v241 + 24);
      if (v246 >= v245 >> 1)
      {
        v247 = OUTLINED_FUNCTION_5_20(v245);
        sub_1CA2B8E70(v247, v246 + 1, 1);
        v241 = v311;
      }

      ++v240;
      *(v241 + 16) = v246 + 1;
      *(v241 + 8 * v246 + 32) = v244;
      v50 = v309;
      v235 = v297;
    }

    while (v239 != v240);

LABEL_185:
    v238 = v279;
LABEL_186:
    v248 = sub_1CA949058();
    v310 = v271;
    v249 = OUTLINED_FUNCTION_1_0(v248);
    v307 = v250;
    v308 = v249;
    v305 = *(v251 + 64);
    MEMORY[0x1EEE9AC00](v249);
    OUTLINED_FUNCTION_13_11();
    v306 = v252;
    v301 = v253 - v252;
    v302 = v271;
    MEMORY[0x1EEE9AC00](v254);
    v255 = (*(v295 + 16))(v271 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0), v294, v287);
    v300 = v271;
    MEMORY[0x1EEE9AC00](v255);
    OUTLINED_FUNCTION_13_11();
    v258 = (*(v291 + 16))(v256 - v257, v290, v296);
    v299 = v271;
    MEMORY[0x1EEE9AC00](v258);
    v259 = (*(v46 + 16))(v271 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v286);
    v298 = v271;
    MEMORY[0x1EEE9AC00](v259);
    OUTLINED_FUNCTION_13_11();
    v262 = v278;
    v263 = (*(v278 + 16))(v260 - v261, v289, v293);
    MEMORY[0x1EEE9AC00](v263);
    OUTLINED_FUNCTION_13_11();
    v266 = v277;
    (*(v277 + 16))(v264 - v265, v288, v292);
    v267 = v301;
    sub_1CA948FD8();
    v268 = sub_1CA94CED8();
    MEMORY[0x1EEE9AC00](v268);
    v269 = v307;
    v270 = v308;
    (*(v307 + 16))(v271 - v306, v267, v308);
    sub_1CA94CEC8();
    (*(v269 + 8))(v267, v270);
    (*(v266 + 8))(v288, v292);
    (*(v262 + 8))(v289, v293);
    (*(v291 + 8))(v290, v296);
    (*(v46 + 8))(v309, v286);
    (*(v295 + 8))(v294, v287);
    OUTLINED_FUNCTION_100(&v301);
    OUTLINED_FUNCTION_100(&v304);
    OUTLINED_FUNCTION_100(&v306);
    OUTLINED_FUNCTION_100(&v307);
    OUTLINED_FUNCTION_100(&v308);
LABEL_187:
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_199:
  __break(1u);
}

id sub_1CA3B5A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  static LNRecurrenceRuleBridge.recurrenceRuleBridge(with:)(a3);
  v5 = v4;
  swift_unknownObjectRelease();

  return v5;
}

id sub_1CA3B5AE4(void *a1)
{
  v1 = a1;
  LNRecurrenceRuleBridge.serializedRepresentation.getter();
  v3 = v2;

  return v3;
}

void LNRecurrenceRuleBridge.serializedRepresentation.getter()
{
  v1 = sub_1CA949058();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BB0, &qword_1CA985928);
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_10();
  sub_1CA94CEB8();
  v14 = OUTLINED_FUNCTION_80();
  if (__swift_getEnumTagSinglePayload(v14, v15, v1) == 1)
  {
    sub_1CA30F7DC(v0, &qword_1EC444BB0, &qword_1CA985928);
  }

  else
  {
    v226 = v4;
    v227 = v1;
    (*(v4 + 32))(v9, v0, v1);
    v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1E8();
    v16 = sub_1CA9487E8();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1CA9487D8();
    v20 = sub_1CA9490D8();
    v21 = OUTLINED_FUNCTION_1_0(v20);
    v23 = v22;
    v25 = *(v24 + 64);
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_6_0();
    sub_1CA948FE8();
    sub_1CA3B6C98(&qword_1EC444BB8);
    OUTLINED_FUNCTION_187();
    sub_1CA9487C8();
    v27 = v26;
    v28 = *(v23 + 8);
    v29 = OUTLINED_FUNCTION_187();
    v30(v29);

    sub_1CA948BF8();
    v31 = OUTLINED_FUNCTION_158();
    sub_1CA266F2C(v31, v27);
    v32 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v33 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v33, v34, 0xE800000000000000, v35, v36);

    v37 = sub_1CA948E98();
    v38 = v37;
    v39 = MEMORY[0x1E69E7CC0];
    v234[0] = MEMORY[0x1E69E7CC0];
    v40 = *(v37 + 16);
    if (v40)
    {
      v41 = (v37 + 32);
      do
      {
        v42 = *v41++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_11_12();
          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          if (v45 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_64(v44);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_69();
          sub_1CA94C6E8();
        }

        --v40;
      }

      while (v40);
    }

    v230 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94C648();
    OUTLINED_FUNCTION_158();

    v46 = v38;
    swift_isUniquelyReferenced_nonNull_native();
    v47 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v47, 0x6854664F73796164, v48, v49, v50);

    OUTLINED_FUNCTION_28_6();
    v51 = sub_1CA948E88();
    v234[0] = v39;
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = (v51 + 32);
      do
      {
        v54 = *v53++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v56)
          {
            OUTLINED_FUNCTION_64(v55);
            OUTLINED_FUNCTION_38_5();
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v52;
      }

      while (v52);
    }

    v57 = OUTLINED_FUNCTION_30_7();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v57, 0x6854664F73796164, 0xED00007261655965, v58, v234);

    v59 = v234[0];
    v60 = sub_1CA948F18();
    v61 = OUTLINED_FUNCTION_1_0(v60);
    v63 = v62;
    v65 = *(v64 + 64);
    MEMORY[0x1EEE9AC00](v61);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_10_9();
    sub_1CA948F28();
    v66 = sub_1CA3B280C();
    v67 = *(v63 + 8);
    v68 = OUTLINED_FUNCTION_69();
    v69(v68);
    if (v66)
    {
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v234[0] = v59;
      swift_getObjectType();
      v71 = OUTLINED_FUNCTION_14_13();
      sub_1CA32EB34(v71, 6581861, 0xE300000000000000, isUniquelyReferenced_nonNull_native, v72);
      swift_unknownObjectRelease();
      v59 = v234[0];
    }

    v73 = sub_1CA949038();
    v74 = OUTLINED_FUNCTION_1_0(v73);
    v76 = v75;
    v78 = *(v77 + 64);
    MEMORY[0x1EEE9AC00](v74);
    OUTLINED_FUNCTION_6_0();
    v81 = v80 - v79;
    sub_1CA949048();
    v82 = sub_1CA949028();
    (*(v76 + 8))(v81, v73);
    v83 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v234[0] = v59;
    v225 = v83;
    sub_1CA32EA0C(v83, 0x636E657571657266, 0xE900000000000079, v84, v234);
    OUTLINED_FUNCTION_28_6();
    v85 = sub_1CA948F78();
    v234[0] = v39;
    v86 = *(v85 + 16);
    if (v86)
    {
      v87 = (v85 + 32);
      do
      {
        v88 = *v87++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v56)
          {
            OUTLINED_FUNCTION_64(v89);
            OUTLINED_FUNCTION_38_5();
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v86;
      }

      while (v86);
    }

    v90 = OUTLINED_FUNCTION_30_7();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v90, 0x7372756F68, 0xE500000000000000, v91, v234);

    OUTLINED_FUNCTION_28_6();
    v92 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v92, 0x6C61767265746E69, 0xE800000000000000, v93, v234);

    v94 = v234[0];
    v95 = sub_1CA948E68();
    v96 = OUTLINED_FUNCTION_1_0(v95);
    v98 = v97;
    v100 = *(v99 + 64);
    MEMORY[0x1EEE9AC00](v96);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_10_9();
    sub_1CA948EA8();
    v101 = sub_1CA3B1CA0();
    v102 = *(v98 + 8);
    v103 = OUTLINED_FUNCTION_69();
    v104(v103);
    if (v101)
    {
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v234[0] = v94;
      v105 = OUTLINED_FUNCTION_14_13();
      sub_1CA32EA0C(v105, v106, v107, v108, v109);

      v94 = v234[0];
    }

    v110 = sub_1CA948FB8();
    v111 = v110;
    v234[0] = v39;
    v112 = *(v110 + 16);
    if (v112)
    {
      v113 = (v110 + 32);
      do
      {
        v114 = *v113++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_11_12();
          v117 = *(v115 + 16);
          v116 = *(v115 + 24);
          if (v117 >= v116 >> 1)
          {
            OUTLINED_FUNCTION_64(v116);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_69();
          sub_1CA94C6E8();
        }

        --v112;
      }

      while (v112);
    }

    OUTLINED_FUNCTION_30_7();
    OUTLINED_FUNCTION_158();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v234[0] = v94;
    v118 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v118, v119, 0xE700000000000000, v120, v121);

    v122 = v234[0];
    v123 = sub_1CA948F98();
    v234[0] = v39;
    v124 = sub_1CA948F58();
    v125 = OUTLINED_FUNCTION_1_0(v124);
    v127 = v126;
    v129 = *(v128 + 64);
    MEMORY[0x1EEE9AC00](v125);
    OUTLINED_FUNCTION_6_0();
    v132 = v131 - v130;
    v133 = *(v123 + 16);
    v228 = v9;
    if (v133)
    {
      v223[2] = v223;
      v224 = v122;
      v134 = sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
      v136 = *(v127 + 16);
      v135 = v127 + 16;
      v232 = v136;
      v233 = v134;
      v137 = *(v135 + 64);
      OUTLINED_FUNCTION_68_0();
      v223[1] = v123;
      v139 = v123 + v138;
      v140 = *(v135 + 56);
      v141 = (v135 - 8);
      v231 = xmmword_1CA97EDF0;
      do
      {
        v142 = v135;
        v232(v132, v139, v124);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BC0, &qword_1CA985930);
        v143 = swift_allocObject();
        *(v143 + 16) = v231;
        v144 = MEMORY[0x1E69E6158];
        *(v143 + 56) = MEMORY[0x1E69E6158];
        *(v143 + 32) = 0x7865646E69;
        *(v143 + 40) = 0xE500000000000000;
        *(v143 + 64) = sub_1CA948F38();
        *(v143 + 120) = v144;
        *(v143 + 88) = MEMORY[0x1E69E6530];
        *(v143 + 96) = 0x6F4D7061654C7369;
        *(v143 + 104) = 0xEB0000000068746ELL;
        v145 = sub_1CA948F48();
        *(v143 + 152) = MEMORY[0x1E69E6370];
        *(v143 + 128) = v145 & 1;
        sub_1CA94CBB8();
        v146 = (*v141)(v132, v124);
        MEMORY[0x1CCAA1490](v146);
        OUTLINED_FUNCTION_11_12();
        v149 = *(v147 + 16);
        v148 = *(v147 + 24);
        if (v149 >= v148 >> 1)
        {
          OUTLINED_FUNCTION_64(v148);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        v139 += v140;
        --v133;
        v135 = v142;
      }

      while (v133);

      v9 = v228;
      v122 = v224;
    }

    else
    {
    }

    v150 = sub_1CA94C648();

    swift_unknownObjectRetain();
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v234[0] = v122;
    sub_1CA32EA0C(v150, 0x7368746E6F6DLL, 0xE600000000000000, v151, v234);

    v152 = v234[0];
    v153 = sub_1CA949068();
    v154 = OUTLINED_FUNCTION_1_0(v153);
    v156 = v155;
    v158 = *(v157 + 64);
    MEMORY[0x1EEE9AC00](v154);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_10_9();
    sub_1CA948EB8();
    v159 = sub_1CA3B2150();
    v160 = *(v156 + 8);
    v161 = OUTLINED_FUNCTION_69();
    v162(v161);
    if (v159)
    {
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v234[0] = v152;
      v163 = OUTLINED_FUNCTION_14_13();
      sub_1CA32EA0C(v163, 0xD000000000000012, v164, v165, v166);

      v152 = v234[0];
    }

    v167 = sub_1CA948FC8();
    v168 = v167;
    v234[0] = MEMORY[0x1E69E7CC0];
    v169 = *(v167 + 16);
    if (v169)
    {
      v170 = (v167 + 32);
      do
      {
        v171 = *v170++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          MEMORY[0x1CCAA1490]();
          OUTLINED_FUNCTION_11_12();
          v174 = *(v172 + 16);
          v173 = *(v172 + 24);
          if (v174 >= v173 >> 1)
          {
            OUTLINED_FUNCTION_64(v173);
            sub_1CA94C698();
          }

          OUTLINED_FUNCTION_69();
          sub_1CA94C6E8();
        }

        --v169;
      }

      while (v169);
    }

    OUTLINED_FUNCTION_30_7();
    OUTLINED_FUNCTION_158();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v234[0] = v152;
    v175 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v175, v176, 0xE700000000000000, v177, v178);

    OUTLINED_FUNCTION_28_6();
    v179 = sub_1CA948E78();
    v180 = MEMORY[0x1E69E7CC0];
    v234[0] = MEMORY[0x1E69E7CC0];
    v181 = *(v179 + 16);
    if (v181)
    {
      v182 = (v179 + 32);
      do
      {
        v183 = *v182++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v56)
          {
            OUTLINED_FUNCTION_64(v184);
            OUTLINED_FUNCTION_38_5();
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v181;
      }

      while (v181);
    }

    v185 = OUTLINED_FUNCTION_30_7();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v185, 0x7469736F50746573, 0xEC000000736E6F69, v186, v234);

    v187 = v234[0];
    v188 = sub_1CA949008();
    v234[0] = v180;
    v189 = sub_1CA948FA8();
    v190 = OUTLINED_FUNCTION_1_0(v189);
    v192 = *(v191 + 64);
    MEMORY[0x1EEE9AC00](v190);
    OUTLINED_FUNCTION_6_0();
    v196 = v195 - v194;
    v197 = *(v188 + 16);
    if (v197)
    {
      *&v231 = v223;
      v198 = *(v193 + 16);
      v232 = v187;
      v233 = v198;
      v199 = *(v193 + 80);
      OUTLINED_FUNCTION_68_0();
      v224 = v188;
      v202 = v188 + v201;
      v203 = *(v200 + 56);
      v204 = (v200 - 8);
      do
      {
        v205 = v200;
        v233(v196, v202, v189);
        v206 = sub_1CA3B306C();
        v207 = (*v204)(v196, v189);
        if (v206)
        {
          MEMORY[0x1CCAA1490](v207);
          OUTLINED_FUNCTION_11_12();
          v210 = *(v208 + 16);
          v209 = *(v208 + 24);
          if (v210 >= v209 >> 1)
          {
            OUTLINED_FUNCTION_64(v209);
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
        }

        v202 += v203;
        --v197;
        v200 = v205;
      }

      while (v197);

      v9 = v228;
      v187 = v232;
    }

    else
    {
    }

    v211 = sub_1CA94C648();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v234[0] = v187;
    v212 = OUTLINED_FUNCTION_14_13();
    sub_1CA32EA0C(v212, v213, 0xE800000000000000, v214, v215);

    OUTLINED_FUNCTION_28_6();
    v216 = sub_1CA948F88();
    v234[0] = MEMORY[0x1E69E7CC0];
    v217 = *(v216 + 16);
    if (v217)
    {
      v218 = (v216 + 32);
      do
      {
        v219 = *v218++;
        if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_])
        {
          OUTLINED_FUNCTION_37_6();
          OUTLINED_FUNCTION_6_20();
          if (v56)
          {
            OUTLINED_FUNCTION_64(v220);
            OUTLINED_FUNCTION_38_5();
          }

          OUTLINED_FUNCTION_187();
          sub_1CA94C6E8();
        }

        --v217;
      }

      while (v217);
    }

    v221 = sub_1CA94C648();

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_7();
    sub_1CA32EA0C(v221, 0x736B656577, 0xE500000000000000, v222, v234);

    sub_1CA94C1A8();

    (*(v226 + 8))(v9, v227);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA3B6C98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA9490D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1CA3B6D10()
{
  v165 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B0340;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v174 = v12;
  v171 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v156 - v171;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v172 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v173 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v170 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v156 - v170;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v169 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v164 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v167 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v163 = sub_1CA94C438();
  *&v162 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v166 = &v156;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v156 - v171;
  sub_1CA948D98();
  v32 = [v172 bundleURL];
  v168 = inited;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v170;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v163, v162, v28, v30, 0, 0, v31, &v156 - v33);
  v35 = v169;
  *(v24 + 64) = v169;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v163 = sub_1CA94C438();
  *&v162 = v37;
  v161 = sub_1CA94C438();
  v39 = v38;
  v166 = &v156;
  MEMORY[0x1EEE9AC00](v161);
  v40 = &v156 - v171;
  sub_1CA948D98();
  v41 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v163, v162, v161, v39, 0, 0, v40, &v156 - v33);
  *(v24 + 104) = v35;
  *(v24 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v167;
  v45 = sub_1CA6B3784();
  v46 = v168;
  v168[20] = v45;
  v46[23] = v44;
  v46[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  v162 = xmmword_1CA9813C0;
  *(v47 + 16) = xmmword_1CA9813C0;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  strcpy((v47 + 96), "WFPodcastShow");
  *(v47 + 110) = -4864;
  *(v47 + 120) = MEMORY[0x1E69E6158];
  *(v47 + 128) = 0x7365707954;
  *(v47 + 136) = 0xE500000000000000;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 168) = v163;
  *(v47 + 144) = &unk_1F49F83F0;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v46[25] = v50;
  v46[28] = v51;
  v46[29] = @"InputPassthrough";
  *(v46 + 240) = 1;
  v46[33] = v48;
  v46[34] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v156 - v171;
  sub_1CA948D98();
  v61 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v156 - v170;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v168;
  v168[35] = v64;
  v65[38] = v169;
  v65[39] = @"Parameters";
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1CA981360;
  v166 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v162;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000018;
  *(v66 + 48) = 0x80000001CA9B0430;
  v67 = MEMORY[0x1E69E6158];
  *(v66 + 64) = MEMORY[0x1E69E6158];
  *(v66 + 72) = @"Key";
  strcpy((v66 + 80), "WFPodcastShow");
  *(v66 + 94) = -4864;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Label";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v157 = v68;
  v156 = v69;
  v158 = v70;
  v71 = @"Parameters";
  v72 = sub_1CA94C438();
  v74 = v73;
  v75 = sub_1CA94C438();
  v77 = v76;
  *&v162 = &v156;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v156 - v171;
  sub_1CA948D98();
  v79 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v156 - v170;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  *(v66 + 144) = v169;
  *(v66 + 120) = v82;
  _s3__C3KeyVMa_0(0);
  *&v162 = v83;
  v161 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v167 + 32) = sub_1CA2F864C();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CA981370;
  *(v84 + 32) = v157;
  *(v84 + 40) = 0xD000000000000016;
  *(v84 + 48) = 0x80000001CA99C4A0;
  v85 = MEMORY[0x1E69E6158];
  v86 = v156;
  *(v84 + 64) = MEMORY[0x1E69E6158];
  *(v84 + 72) = v86;
  *(v84 + 80) = 0xD000000000000016;
  *(v84 + 88) = 0x80000001CA9B0470;
  v87 = v158;
  *(v84 + 104) = v85;
  *(v84 + 112) = v87;
  v88 = sub_1CA94C438();
  v157 = v89;
  v158 = v88;
  v156 = sub_1CA94C438();
  v91 = v90;
  v159 = &v156;
  MEMORY[0x1EEE9AC00](v156);
  v92 = &v156 - v171;
  sub_1CA948D98();
  v93 = v172;
  v94 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v170;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v158, v157, v156, v91, 0, 0, v92, &v156 - v95);
  *(v84 + 144) = v169;
  *(v84 + 152) = @"Description";
  v97 = @"Description";
  v98 = sub_1CA94C438();
  v157 = v99;
  v158 = v98;
  v156 = sub_1CA94C438();
  v101 = v100;
  v159 = &v156;
  MEMORY[0x1EEE9AC00](v156);
  v102 = v171;
  sub_1CA948D98();
  v103 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 160) = sub_1CA2F9F14(v158, v157, v156, v101, 0, 0, &v156 - v102, &v156 - v95);
  *(v84 + 184) = v169;
  *(v84 + 192) = @"Items";
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1CA981470;
  v105 = @"Items";
  v106 = sub_1CA94C438();
  v158 = v107;
  v159 = v106;
  v108 = sub_1CA94C438();
  v110 = v109;
  v160 = &v156;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v156 - v102;
  sub_1CA948D98();
  v112 = v172;
  v113 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v156 - v170;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v159, v158, v108, v110, 0, 0, v111, v114);
  v117 = v169;
  *(v169 + 32) = v116;
  v118 = sub_1CA94C438();
  v158 = v119;
  v159 = v118;
  v120 = sub_1CA94C438();
  v157 = v121;
  v160 = &v156;
  MEMORY[0x1EEE9AC00](v120);
  v122 = v171;
  sub_1CA948D98();
  v123 = [v112 bundleURL];
  v156 = &v156;
  MEMORY[0x1EEE9AC00](v123);
  v124 = v170;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 40) = sub_1CA2F9F14(v159, v158, v120, v157, 0, 0, &v156 - v122, &v156 - v124);
  v126 = sub_1CA94C438();
  v158 = v127;
  v159 = v126;
  v128 = sub_1CA94C438();
  v157 = v129;
  v160 = &v156;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v159, v158, v128, v157, 0, 0, &v156 - v122, &v156 - v124);
  v133 = v169;
  *(v169 + 48) = v132;
  *(v84 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v84 + 200) = v133;
  sub_1CA94C1E8();
  v134 = sub_1CA2F864C();
  v135 = v167;
  *(v167 + 40) = v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v137 = v168;
  v168[40] = v135;
  v137[43] = v136;
  v137[44] = @"ParameterSummary";
  v138 = @"ParameterSummary";
  v139 = sub_1CA94C438();
  v141 = v140;
  v142 = sub_1CA94C438();
  v144 = v143;
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948D98();
  v145 = [v172 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v156 - v170;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v139, v141, v142, v144, 0, 0, &v156 - v122, v146);
  v149 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v150 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v151 = v168;
  v168[45] = v149;
  v151[48] = v150;
  v151[49] = @"RequiredResources";
  v151[50] = &unk_1F49F8430;
  v151[53] = v163;
  v151[54] = @"SessionConfiguration";
  v152 = @"RequiredResources";
  v153 = @"SessionConfiguration";
  v154 = sub_1CA94C1E8();
  v151[58] = v164;
  v151[55] = v154;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3B806C()
{
  v181 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ELL;
  *(inited + 48) = 0x80000001CA9B0660;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v191 = v12;
  v187 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v171 - v187;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v186 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v189 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v190 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v171 - v190;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v188 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v184 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v183 = xmmword_1CA981350;
  *(v24 + 16) = xmmword_1CA981350;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v179 = v28;
  v180 = v27;
  v29 = sub_1CA94C438();
  v178 = v30;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v171 - v187;
  sub_1CA948D98();
  v32 = v186;
  v33 = [v186 bundleURL];
  v185 = inited;
  MEMORY[0x1EEE9AC00](v33);
  v34 = v190;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v180, v179, v29, v178, 0, 0, v31, &v171 - v34);
  *(v24 + 64) = v188;
  *(v24 + 72) = @"DescriptionNote";
  v36 = @"DescriptionNote";
  v37 = sub_1CA94C438();
  v179 = v38;
  v180 = v37;
  v178 = sub_1CA94C438();
  v40 = v39;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v178);
  v41 = v187;
  sub_1CA948D98();
  v42 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v180, v179, v178, v40, 0, 0, &v171 - v41, &v171 - v34);
  *(v24 + 104) = v188;
  *(v24 + 112) = @"DescriptionResult";
  v44 = @"DescriptionResult";
  v45 = sub_1CA94C438();
  v179 = v46;
  v180 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = v186;
  v51 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v171 - v190;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 120) = sub_1CA2F9F14(v180, v179, v47, v49, 0, 0, &v171 - v41, v52);
  v54 = v188;
  *(v24 + 144) = v188;
  *(v24 + 152) = @"DescriptionSummary";
  v55 = @"DescriptionSummary";
  v56 = sub_1CA94C438();
  v179 = v57;
  v180 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v171 - v187;
  sub_1CA948D98();
  v62 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v171 - v190;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v180, v179, v58, v60, 0, 0, v61, v63);
  *(v24 + 184) = v54;
  *(v24 + 160) = v65;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v66 = v184;
  v67 = sub_1CA6B3784();
  v68 = v185;
  v185[20] = v67;
  v68[23] = v66;
  v68[24] = @"DisabledOnPlatforms";
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v68[28] = v69;
  v70 = v69;
  v184 = v69;
  v68[25] = &unk_1F49F8520;
  v71 = @"DisabledOnPlatforms";
  v68[29] = sub_1CA94C368();
  v72 = MEMORY[0x1E69E6370];
  *(v68 + 240) = 1;
  v68[33] = v72;
  v68[34] = @"Input";
  v73 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v74 = swift_initStackObject();
  *(v74 + 16) = v183;
  *(v74 + 32) = 0x656C7069746C754DLL;
  *(v74 + 40) = 0xE800000000000000;
  *(v74 + 48) = 0;
  *(v74 + 72) = v73;
  strcpy((v74 + 80), "ParameterKey");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 96) = 0x7475706E494657;
  *(v74 + 104) = 0xE700000000000000;
  *(v74 + 120) = MEMORY[0x1E69E6158];
  *(v74 + 128) = 0x6465726975716552;
  *(v74 + 136) = 0xE800000000000000;
  *(v74 + 144) = 1;
  *(v74 + 168) = v73;
  *(v74 + 176) = 0x7365707954;
  v75 = v73;
  *(v74 + 216) = v70;
  *(v74 + 184) = 0xE500000000000000;
  *(v74 + 192) = &unk_1F49F8550;
  v76 = @"Input";
  v77 = sub_1CA94C1E8();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v183 = v78;
  v68[35] = v77;
  v68[38] = v78;
  v68[39] = @"InputPassthrough";
  *(v68 + 320) = 0;
  v68[43] = v73;
  v68[44] = @"Output";
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1CA9813C0;
  *(v79 + 32) = 0x656C7069746C754DLL;
  *(v79 + 40) = 0xE800000000000000;
  *(v79 + 48) = 0;
  *(v79 + 72) = v75;
  *(v79 + 80) = 0x614E74757074754FLL;
  *(v79 + 88) = 0xEA0000000000656DLL;
  v80 = @"InputPassthrough";
  v81 = @"Output";
  v82 = sub_1CA94C438();
  v84 = v83;
  v85 = sub_1CA94C438();
  v87 = v86;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v171 - v187;
  sub_1CA948D98();
  v89 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v171 - v190;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 96) = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  *(v79 + 120) = v188;
  *(v79 + 128) = 0x7365707954;
  *(v79 + 168) = v184;
  *(v79 + 136) = 0xE500000000000000;
  *(v79 + 144) = &unk_1F49F8580;
  v92 = MEMORY[0x1E69E6158];
  v93 = sub_1CA94C1E8();
  v94 = v185;
  v185[45] = v93;
  v94[48] = v183;
  v94[49] = @"ParameterCollapsingBehavior";
  v94[50] = 0x726576654ELL;
  v94[51] = 0xE500000000000000;
  v94[53] = v92;
  v94[54] = @"Parameters";
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v183 = swift_allocObject();
  *(v183 + 16) = xmmword_1CA981360;
  v182 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA981550;
  *(v95 + 32) = @"AutocapitalizationType";
  *(v95 + 40) = 1701736270;
  *(v95 + 48) = 0xE400000000000000;
  *(v95 + 64) = v92;
  *(v95 + 72) = @"Class";
  *(v95 + 80) = 0xD000000000000014;
  *(v95 + 88) = 0x80000001CA99B500;
  *(v95 + 104) = v92;
  *(v95 + 112) = @"DefaultValue";
  v178 = @"Class";
  v96 = @"ParameterCollapsingBehavior";
  v97 = @"Parameters";
  v98 = @"AutocapitalizationType";
  v99 = @"DefaultValue";
  v100 = sub_1CA94C438();
  v102 = v101;
  v103 = sub_1CA94C438();
  v105 = v104;
  v177 = &v171;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v171 - v187;
  sub_1CA948D98();
  v107 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v171 - v190;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 120) = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  *(v95 + 144) = v188;
  *(v95 + 152) = @"DisableAutocorrection";
  *(v95 + 160) = 1;
  v110 = MEMORY[0x1E69E6370];
  *(v95 + 184) = MEMORY[0x1E69E6370];
  *(v95 + 192) = @"DisableAutoPeriods";
  *(v95 + 200) = 1;
  *(v95 + 224) = v110;
  *(v95 + 232) = @"DisableSmartDashes";
  *(v95 + 240) = 1;
  *(v95 + 264) = v110;
  *(v95 + 272) = @"DisableSmartQuotes";
  *(v95 + 280) = 1;
  *(v95 + 304) = v110;
  *(v95 + 312) = @"DisableTextReplacement";
  *(v95 + 320) = 0;
  *(v95 + 344) = v110;
  *(v95 + 352) = @"Key";
  strcpy((v95 + 360), "WFJavaScript");
  *(v95 + 373) = 0;
  *(v95 + 374) = -5120;
  *(v95 + 384) = MEMORY[0x1E69E6158];
  *(v95 + 392) = @"Label";
  v111 = @"Key";
  v112 = @"Label";
  v177 = v111;
  v176 = v112;
  v113 = @"DisableAutocorrection";
  v114 = @"DisableAutoPeriods";
  v115 = @"DisableSmartDashes";
  v116 = @"DisableSmartQuotes";
  v117 = @"DisableTextReplacement";
  v118 = sub_1CA94C438();
  v173 = v119;
  v174 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v175 = &v171;
  MEMORY[0x1EEE9AC00](v120);
  v123 = v187;
  sub_1CA948D98();
  v124 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v171 - v190;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 400) = sub_1CA2F9F14(v174, v173, v120, v122, 0, 0, &v171 - v123, v125);
  *(v95 + 424) = v188;
  *(v95 + 432) = @"MonospaceFont";
  *(v95 + 440) = 1;
  v127 = MEMORY[0x1E69E6370];
  *(v95 + 464) = MEMORY[0x1E69E6370];
  *(v95 + 472) = @"Multiline";
  *(v95 + 480) = 1;
  *(v95 + 504) = v127;
  *(v95 + 512) = @"Placeholder";
  v173 = @"Placeholder";
  v128 = @"MonospaceFont";
  v129 = @"Multiline";
  v174 = sub_1CA94C438();
  v172 = v130;
  v131 = sub_1CA94C438();
  v133 = v132;
  v175 = &v171;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948D98();
  v134 = v186;
  v135 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v171 - v190;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v174, v172, v131, v133, 0, 0, &v171 - v123, v136);
  *(v95 + 544) = v188;
  *(v95 + 520) = v138;
  *(v95 + 552) = @"SyntaxHighlightingType";
  v139 = MEMORY[0x1E69E6158];
  *(v95 + 584) = MEMORY[0x1E69E6158];
  *(v95 + 560) = 0x697263536176614ALL;
  *(v95 + 568) = 0xEA00000000007470;
  _s3__C3KeyVMa_0(0);
  v175 = v140;
  v174 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v141 = @"SyntaxHighlightingType";
  sub_1CA94C1E8();
  *(v183 + 32) = sub_1CA2F864C();
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1CA981370;
  *(v142 + 32) = v178;
  *(v142 + 40) = 0xD000000000000019;
  *(v142 + 48) = 0x80000001CA99B030;
  v143 = v177;
  *(v142 + 64) = v139;
  *(v142 + 72) = v143;
  *(v142 + 80) = 0x7475706E494657;
  *(v142 + 88) = 0xE700000000000000;
  v144 = v176;
  *(v142 + 104) = v139;
  *(v142 + 112) = v144;
  v145 = sub_1CA94C438();
  v177 = v146;
  v178 = v145;
  v176 = sub_1CA94C438();
  v148 = v147;
  v179 = &v171;
  MEMORY[0x1EEE9AC00](v176);
  v149 = v187;
  sub_1CA948D98();
  v150 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v190;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 120) = sub_1CA2F9F14(v178, v177, v176, v148, 0, 0, &v171 - v149, &v171 - v151);
  v153 = v188;
  v154 = v173;
  *(v142 + 144) = v188;
  *(v142 + 152) = v154;
  v155 = sub_1CA94C438();
  v177 = v156;
  v178 = v155;
  v157 = sub_1CA94C438();
  v176 = v158;
  v179 = &v171;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948D98();
  v159 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 160) = sub_1CA2F9F14(v178, v177, v157, v176, 0, 0, &v171 - v149, &v171 - v151);
  *(v142 + 184) = v153;
  *(v142 + 192) = @"RequiredResources";
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1CA9813B0;
  v192 = 2;
  v193 = 1;
  v162 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v163 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v192);
  *(v161 + 32) = v164;
  *(v142 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v142 + 200) = v161;
  sub_1CA94C1E8();
  v165 = sub_1CA2F864C();
  v166 = v183;
  *(v183 + 40) = v165;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v168 = v185;
  v185[55] = v166;
  v168[58] = v167;
  v168[59] = @"RequiredResources";
  v168[63] = v184;
  v168[60] = &unk_1F49F85E0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v169 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3B9608()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9B09D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = v12;
  v112 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v99 - v112;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v107 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v110 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v99 - v111;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v108 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v105 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  *&v103 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v99 - v112;
  sub_1CA948D98();
  v30 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v99 - v111;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v103, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v108;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v105;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x80000001CA9B0A80;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v103 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 0;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 0;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  *(v37 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 192) = &unk_1F49F8610;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v105 = &v99;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v99 - v112;
  sub_1CA948D98();
  v53 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v99 - v111;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v108;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v105 = swift_allocObject();
  *(v105 + 1) = xmmword_1CA9813B0;
  v104 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = v103;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000019;
  *(v56 + 48) = 0x80000001CA99B030;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 0x7475706E494657;
  *(v56 + 88) = 0xE700000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Parameters";
  v59 = @"Class";
  v60 = @"Key";
  v61 = @"Label";
  v62 = sub_1CA94C438();
  v101 = v63;
  v102 = v62;
  v64 = sub_1CA94C438();
  v100 = v65;
  *&v103 = &v99;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v99 - v112;
  sub_1CA948D98();
  v67 = v107;
  v68 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v99 - v111;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v102, v101, v64, v100, 0, 0, v66, v69);
  *(v56 + 144) = v108;
  *(v56 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438();
  v101 = v73;
  v102 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  *&v103 = &v99;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v99 - v112;
  sub_1CA948D98();
  v78 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v99 - v111;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v102, v101, v74, v76, 0, 0, v77, v79);
  *(v56 + 184) = v108;
  *(v56 + 160) = v81;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v82 = sub_1CA2F864C();
  v83 = v105;
  v105[4] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v83;
  *(inited + 384) = v84;
  *(inited + 392) = @"ParameterSummary";
  v85 = @"ParameterSummary";
  v86 = sub_1CA94C438();
  v88 = v87;
  v89 = sub_1CA94C438();
  v91 = v90;
  v108 = &v99;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v99 - v112;
  sub_1CA948D98();
  v93 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v99 - v111;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v86, v88, v89, v91, 0, 0, v92, v94);
  v97 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 424) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v97;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3BA2E8()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9B0B30;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v141 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v12;
  v13 = &v127 - v141;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v140 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v138 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v139 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v127 - v139;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v137 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v136 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v133 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v132 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v135 = &v127;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v127 - v141;
  sub_1CA948D98();
  v33 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v127 - v139;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v132, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v137;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v136;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438();
  v44 = v43;
  v45 = sub_1CA94C438();
  v47 = v46;
  v136 = &v127;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v127 - v141;
  sub_1CA948D98();
  v49 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v127 - v139;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v42, v44, v45, v47, 0, 0, v48, v50);
  *(inited + 304) = v137;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x75736F6C63736944;
  *(v52 + 40) = 0xEF6C6576654C6572;
  *(v52 + 48) = 0x63696C627550;
  *(v52 + 56) = 0xE600000000000000;
  *(v52 + 72) = MEMORY[0x1E69E6158];
  *(v52 + 80) = 0x656C7069746C754DLL;
  *(v52 + 88) = 0xE800000000000000;
  *(v52 + 96) = 0;
  *(v52 + 120) = MEMORY[0x1E69E6370];
  *(v52 + 128) = 0x614E74757074754FLL;
  *(v52 + 136) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v54 = sub_1CA94C438();
  v135 = v55;
  v56 = sub_1CA94C438();
  v58 = v57;
  v136 = &v127;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v127 - v141;
  sub_1CA948D98();
  v60 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v127 - v139;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v54, v135, v56, v58, 0, 0, v59, v61);
  v64 = v137;
  *(v52 + 144) = v63;
  *(v52 + 168) = v64;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v65;
  *(v52 + 192) = &unk_1F49F8680;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v67;
  *(inited + 344) = v68;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v136 = swift_allocObject();
  *(v136 + 1) = xmmword_1CA981360;
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1CA981370;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000019;
  *(v69 + 48) = 0x80000001CA9B0C40;
  *(v69 + 64) = v66;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 0x6874676E654CLL;
  *(v69 + 88) = 0xE600000000000000;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"DisallowedVariableTypes";
  *(v69 + 120) = &unk_1F49F86B0;
  *(v69 + 144) = v65;
  *(v69 + 152) = @"Key";
  *(v69 + 160) = 0xD000000000000015;
  *(v69 + 168) = 0x80000001CA994540;
  *(v69 + 184) = v66;
  *(v69 + 192) = @"Label";
  v70 = @"Class";
  v71 = @"Key";
  v72 = @"Label";
  v127 = v70;
  v128 = v71;
  v129 = v72;
  v73 = @"Parameters";
  v74 = @"DefaultValue";
  v75 = @"DisallowedVariableTypes";
  v76 = sub_1CA94C438();
  v130 = v77;
  v78 = sub_1CA94C438();
  v80 = v79;
  v131 = &v127;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v127 - v141;
  sub_1CA948D98();
  v82 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v127 - v139;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v76, v130, v78, v80, 0, 0, v81, v83);
  *(v69 + 224) = v137;
  *(v69 + 200) = v85;
  _s3__C3KeyVMa_0(0);
  v131 = v86;
  v130 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v136[4] = sub_1CA2F864C();
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1CA981400;
  *(v87 + 32) = @"AllowsNegativeNumbers";
  *(v87 + 40) = 1;
  v88 = v127;
  *(v87 + 64) = MEMORY[0x1E69E6370];
  *(v87 + 72) = v88;
  *(v87 + 80) = 0xD00000000000001CLL;
  *(v87 + 88) = 0x80000001CA9AC750;
  v89 = MEMORY[0x1E69E6158];
  v90 = v128;
  *(v87 + 104) = MEMORY[0x1E69E6158];
  *(v87 + 112) = v90;
  *(v87 + 120) = 0xD000000000000011;
  *(v87 + 128) = 0x80000001CA9B0C80;
  *(v87 + 144) = v89;
  *(v87 + 152) = @"KeyboardType";
  *(v87 + 160) = 0x506C616D69636544;
  *(v87 + 168) = 0xEA00000000006461;
  v91 = v129;
  *(v87 + 184) = v89;
  *(v87 + 192) = v91;
  v92 = @"AllowsNegativeNumbers";
  v93 = @"KeyboardType";
  v94 = sub_1CA94C438();
  v129 = v95;
  v96 = sub_1CA94C438();
  v98 = v97;
  v132 = &v127;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v127 - v141;
  sub_1CA948D98();
  v100 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v127 - v139;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 200) = sub_1CA2F9F14(v94, v129, v96, v98, 0, 0, v99, v101);
  *(v87 + 224) = v137;
  *(v87 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v103 = swift_allocObject();
  *(v103 + 16) = v133;
  v104 = @"RequiredResources";
  v105 = MEMORY[0x1E69E6158];
  *(v103 + 32) = sub_1CA94C1E8();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v87 + 240) = v103;
  *(v87 + 264) = v106;
  *(v87 + 272) = @"TextAlignment";
  *(v87 + 304) = v105;
  *(v87 + 280) = 0x7468676952;
  *(v87 + 288) = 0xE500000000000000;
  v107 = @"TextAlignment";
  sub_1CA94C1E8();
  v108 = sub_1CA2F864C();
  v109 = v136;
  v136[5] = v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v109;
  *(inited + 384) = v110;
  *(inited + 392) = @"ParameterSummary";
  v111 = @"ParameterSummary";
  v112 = sub_1CA94C438();
  v114 = v113;
  v115 = sub_1CA94C438();
  v117 = v116;
  v137 = &v127;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v127 - v141;
  sub_1CA948D98();
  v119 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v127 - v139;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  v123 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v124 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v123;
  *(inited + 424) = v124;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v125 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3BB330()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Discoverable";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 0;
  *(inited + 144) = v6;
  *(inited + 152) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1CA9813C0;
  *(v7 + 32) = 0x656C7069746C754DLL;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 48) = 1;
  *(v7 + 72) = v6;
  *(v7 + 80) = 0x6465726975716552;
  *(v7 + 88) = 0xE800000000000000;
  *(v7 + 96) = 1;
  *(v7 + 120) = v6;
  *(v7 + 128) = 0x7365707954;
  *(v7 + 136) = 0xE500000000000000;
  *(v7 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v7 + 144) = &unk_1F49F87E0;
  v8 = @"Discoverable";
  v9 = @"Input";
  v10 = sub_1CA94C1E8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 160) = v10;
  *(inited + 184) = v11;
  *(inited + 192) = @"Name";
  *(inited + 224) = v1;
  *(inited + 200) = 0xD00000000000001CLL;
  *(inited + 208) = 0x80000001CA9B0D80;
  v12 = @"Name";
  v13 = sub_1CA94C368();
  *(inited + 264) = v1;
  *(inited + 232) = v13;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001CA994580;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3BB638()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B0DB0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = v12;
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v111 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v123 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v111 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v23;
  *(inited + 192) = @"DeletesInput";
  *(inited + 200) = 1;
  *(inited + 224) = v23;
  *(inited + 232) = @"Description";
  v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"DeletesInput";
  v26 = @"Description";
  v27 = @"DescriptionNote";
  v116 = sub_1CA94C438();
  *&v115 = v28;
  v29 = sub_1CA94C438();
  v114 = v30;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v111 - v125;
  sub_1CA948D98();
  v32 = v121;
  v33 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v116, v115, v29, v114, 0, 0, v31, &v111 - v34);
  v36 = v120;
  *(v24 + 64) = v120;
  *(v24 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v116 = sub_1CA94C438();
  *&v115 = v38;
  v114 = sub_1CA94C438();
  v40 = v39;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v114);
  v41 = &v111 - v125;
  sub_1CA948D98();
  v42 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v116, v115, v114, v40, 0, 0, v41, &v111 - v34);
  *(v24 + 104) = v36;
  *(v24 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v45 = v118;
  *(inited + 240) = sub_1CA6B3784();
  *(inited + 264) = v45;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v115 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  *(v46 + 48) = 1;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 72) = MEMORY[0x1E69E6370];
  strcpy((v46 + 80), "ParameterKey");
  v114 = 0x80000001CA9B0EB0;
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0xD000000000000010;
  *(v46 + 104) = 0x80000001CA9B0EB0;
  *(v46 + 120) = MEMORY[0x1E69E6158];
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  v48 = v47;
  *(v46 + 184) = 0xE500000000000000;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v118;
  *(v46 + 192) = &unk_1F49F8850;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v50;
  *(inited + 304) = v51;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 0;
  *(inited + 344) = v48;
  *(inited + 352) = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v111 - v125;
  sub_1CA948D98();
  v61 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v111 - v122;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  *(inited + 384) = v120;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = v115;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000019;
  *(v64 + 48) = 0x80000001CA99B030;
  v65 = MEMORY[0x1E69E6158];
  *(v64 + 64) = MEMORY[0x1E69E6158];
  *(v64 + 72) = @"Key";
  v66 = v114;
  *(v64 + 80) = 0xD000000000000010;
  *(v64 + 88) = v66;
  *(v64 + 104) = v65;
  *(v64 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438();
  v113 = v72;
  v114 = v71;
  v73 = sub_1CA94C438();
  v112 = v74;
  *&v115 = &v111;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v111 - v125;
  sub_1CA948D98();
  v76 = v121;
  v77 = [v121 bundleURL];
  v111 = &v111;
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v111 - v122;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v114, v113, v73, v112, 0, 0, v75, v78);
  v80 = v120;
  *(v64 + 144) = v120;
  *(v64 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438();
  v113 = v83;
  v114 = v82;
  v112 = sub_1CA94C438();
  v85 = v84;
  *&v115 = &v111;
  MEMORY[0x1EEE9AC00](v112);
  v86 = &v111 - v125;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v111 - v122;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v114, v113, v112, v85, 0, 0, v86, v88);
  *(v64 + 184) = v80;
  *(v64 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v117;
  v117[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v92;
  *(inited + 424) = v93;
  *(inited + 432) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v120 = &v111;
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v111 - v125;
  sub_1CA948D98();
  v102 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v111 - v122;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v106;
  *(inited + 464) = v107;
  *(inited + 472) = @"RequiredResources";
  *(inited + 504) = v118;
  *(inited + 480) = &unk_1F49F8880;
  v108 = @"RequiredResources";
  *(inited + 512) = sub_1CA94C368();
  v109 = MEMORY[0x1E69E6158];
  *(inited + 544) = MEMORY[0x1E69E6158];
  *(inited + 520) = 0x7265646E696D6552;
  *(inited + 528) = 0xE800000000000000;
  *(inited + 552) = sub_1CA94C368();
  *(inited + 584) = v109;
  *(inited + 560) = 0xD00000000000001ALL;
  *(inited + 568) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3BC4F4()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1CA94B728();
  v1[5] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA3BC5A0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for LinkValueTransformContext(0);
  (*(v2 + 16))(v1, v6 + *(v7 + 24), v3);
  DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v4, v1, *(v6 + *(v7 + 28)), v5);

  OUTLINED_FUNCTION_3_6();

  return v8();
}

uint64_t sub_1CA3BC674()
{
  OUTLINED_FUNCTION_0();
  v0[28] = v1;
  v0[29] = v2;
  v3 = sub_1CA94AA78();
  v0[30] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[31] = v4;
  v6 = *(v5 + 64);
  v0[32] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94AAB8();
  v0[33] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[34] = v8;
  v10 = *(v9 + 64);
  v0[35] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445A90, &qword_1CA985978);
  v0[36] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[37] = v12;
  v14 = *(v13 + 64);
  v0[38] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94AB28();
  v0[39] = v15;
  OUTLINED_FUNCTION_12(v15);
  v0[40] = v16;
  v18 = *(v17 + 64);
  v0[41] = OUTLINED_FUNCTION_45();
  v19 = sub_1CA94AAF8();
  v0[42] = v19;
  OUTLINED_FUNCTION_12(v19);
  v0[43] = v20;
  v22 = *(v21 + 64);
  v0[44] = OUTLINED_FUNCTION_45();
  v23 = sub_1CA94AB58();
  v0[45] = v23;
  OUTLINED_FUNCTION_12(v23);
  v0[46] = v24;
  v26 = *(v25 + 64);
  v0[47] = OUTLINED_FUNCTION_45();
  v27 = sub_1CA94ABA8();
  v0[48] = v27;
  OUTLINED_FUNCTION_12(v27);
  v0[49] = v28;
  v30 = *(v29 + 64);
  v0[50] = OUTLINED_FUNCTION_45();
  v31 = sub_1CA94AC18();
  v0[51] = v31;
  OUTLINED_FUNCTION_12(v31);
  v0[52] = v32;
  v34 = *(v33 + 64);
  v0[53] = OUTLINED_FUNCTION_45();
  v35 = sub_1CA94AD98();
  v0[54] = v35;
  OUTLINED_FUNCTION_12(v35);
  v0[55] = v36;
  v38 = *(v37 + 64);
  v0[56] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v39, v40, v41);
}

uint64_t sub_1CA3BC988()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[56];
  v2 = v0[28];
  sub_1CA94ABB8();
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_1CA3BCA20;
  v4 = OUTLINED_FUNCTION_33_7(v0[56]);

  return sub_1CA6A3220(v4);
}

uint64_t sub_1CA3BCA20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[57];
  v6 = v4[56];
  v7 = v4[55];
  v8 = v4[54];
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v12 + 464) = v11;
  *(v12 + 472) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA3BCB7C()
{
  v177 = v0;
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  (*(v3 + 16))(v2, v0[28], v4);
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_3_3();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E69DADC0])
  {
    v9 = OUTLINED_FUNCTION_0_25();
    v10(v9);
    v11 = *v4;
    v176 = MEMORY[0x1E69E6370];
    LOBYTE(v174) = v11;
LABEL_11:
    v25 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v26 = &v174;
    v27 = v2;
LABEL_12:
    sub_1CA320AB4(v26, v27);
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x1E69DADB0])
  {
    v12 = OUTLINED_FUNCTION_0_25();
    v13(v12);
    v14 = *v4;
    v176 = MEMORY[0x1E69E6530];
    *&v174 = v14;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x1E69DADE0])
  {
    v15 = OUTLINED_FUNCTION_0_25();
    v16(v15);
    v17 = *v4;
    v176 = MEMORY[0x1E69E63B0];
    *&v174 = v17;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x1E69DADF8])
  {
    v18 = OUTLINED_FUNCTION_0_25();
    v19(v18);
    v174 = *v4;
    v175 = *(v4 + 16);
    type metadata accessor for Decimal(0);
    v176 = v20;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x1E69DADF0])
  {
    v21 = OUTLINED_FUNCTION_0_25();
    v22(v21);
    v23 = *v4;
    v24 = *(v4 + 8);
    v176 = MEMORY[0x1E69E6158];
    *&v174 = v23;
    *(&v174 + 1) = v24;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x1E69DADC8])
  {
    v30 = OUTLINED_FUNCTION_0_25();
    v31(v30);
    v32 = sub_1CA948CB8();
    OUTLINED_FUNCTION_1_0(v32);
    v34 = v33;
    v36 = *(v35 + 64);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v37();
    v0[25] = v32;
    __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_9_13();
    v38();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v39 = v0 + 22;
LABEL_26:
    sub_1CA320AB4(v39, v2);
    (*(v34 + 8))(v1, v32);
LABEL_27:

    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x1E69DAD80])
  {
    v40 = OUTLINED_FUNCTION_0_25();
    v41(v40);
    v32 = sub_1CA9488E8();
    OUTLINED_FUNCTION_1_0(v32);
    v34 = v42;
    v44 = *(v43 + 64);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v45();
    v0[21] = v32;
    __swift_allocate_boxed_opaque_existential_1(v0 + 18);
    OUTLINED_FUNCTION_9_13();
    v46();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v39 = v0 + 18;
    goto LABEL_26;
  }

  if (v8 == *MEMORY[0x1E69DADB8])
  {
    v47 = OUTLINED_FUNCTION_0_25();
    v48(v47);
    v32 = sub_1CA948BA8();
    OUTLINED_FUNCTION_1_0(v32);
    v34 = v49;
    v51 = *(v50 + 64);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v52();
    v0[17] = v32;
    __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    OUTLINED_FUNCTION_9_13();
    v53();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v39 = v0 + 14;
    goto LABEL_26;
  }

  if (v8 == *MEMORY[0x1E69DAD98])
  {
    v54 = OUTLINED_FUNCTION_0_25();
    v55(v54);
    v32 = sub_1CA948978();
    OUTLINED_FUNCTION_1_0(v32);
    v34 = v56;
    v58 = *(v57 + 64);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v59();
    v0[13] = v32;
    __swift_allocate_boxed_opaque_existential_1(v0 + 10);
    OUTLINED_FUNCTION_9_13();
    v60();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v39 = v0 + 10;
    goto LABEL_26;
  }

  if (v8 == *MEMORY[0x1E69DAD60])
  {
    v61 = OUTLINED_FUNCTION_0_25();
    v62(v61);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
    OUTLINED_FUNCTION_1_0(v32);
    v34 = v63;
    v65 = *(v64 + 64);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4_24();
    v66();
    v0[9] = v32;
    __swift_allocate_boxed_opaque_existential_1(v0 + 6);
    OUTLINED_FUNCTION_9_13();
    v67();
    objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v39 = v0 + 6;
    goto LABEL_26;
  }

  if (v8 == *MEMORY[0x1E69DAD78])
  {
    v68 = v0[53];
    v69 = v0[51];
    v71 = v0[34];
    v70 = v0[35];
    v72 = v0[33];
    v73 = OUTLINED_FUNCTION_14_1(v0[52]);
    v74(v73);
    v75 = OUTLINED_FUNCTION_46_0();
    v76(v75);
    v77 = swift_task_alloc();
    v0[60] = v77;
    *v77 = v0;
    v77[1] = sub_1CA3BD92C;
    OUTLINED_FUNCTION_33_7(v0[35]);
    OUTLINED_FUNCTION_99();

    return sub_1CA539600(v78);
  }

  if (v8 != *MEMORY[0x1E69DAD70])
  {
    if (v8 == *MEMORY[0x1E69DAE10])
    {
      v92 = v0[58];
      v93 = v0[53];
      v95 = v0[50];
      v94 = v0[51];
      v96 = v0[48];
      v97 = v0[49];
      v98 = OUTLINED_FUNCTION_14_1(v0[52]);
      v99(v98);
      v100 = OUTLINED_FUNCTION_5_21();
      v101(v100);
      v102 = sub_1CA94AB98();
      v103 = &unk_1EC447E40;
      v104 = 0x1E695FC20;
LABEL_43:
      v176 = sub_1CA25B3D0(0, v103, v104);
      *&v174 = v102;
LABEL_44:
      v116 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      OUTLINED_FUNCTION_34_7();
      sub_1CA320AB4(v117, v118);
      (*(v97 + 8))(v95, v96);
LABEL_13:
      OUTLINED_FUNCTION_1_22();

      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_99();

      __asm { BRAA            X2, X16 }
    }

    if (v8 == *MEMORY[0x1E69DADE8])
    {
      OUTLINED_FUNCTION_13_12();
      v97 = v0[46];
      v95 = v0[47];
      v96 = v0[45];
      v106 = OUTLINED_FUNCTION_14_1(v105);
      v107(v106);
      v108 = OUTLINED_FUNCTION_5_21();
      v109(v108);
      v102 = sub_1CA94AB48();
      v103 = &qword_1EC444BF0;
      v104 = 0x1E696E940;
      goto LABEL_43;
    }

    if (v8 == *MEMORY[0x1E69DADD0])
    {
      OUTLINED_FUNCTION_13_12();
      v97 = v0[40];
      v95 = v0[41];
      v96 = v0[39];
      v111 = OUTLINED_FUNCTION_14_1(v110);
      v112(v111);
      v113 = OUTLINED_FUNCTION_5_21();
      v114(v113);
      v115 = sub_1CA94AB18();
LABEL_42:
      v102 = v115;
      v103 = &unk_1EC441738;
      v104 = 0x1E696E840;
      goto LABEL_43;
    }

    if (v8 == *MEMORY[0x1E69DADA8])
    {
      OUTLINED_FUNCTION_13_12();
      v97 = v0[43];
      v95 = v0[44];
      v96 = v0[42];
      v120 = OUTLINED_FUNCTION_14_1(v119);
      v121(v120);
      v122 = OUTLINED_FUNCTION_5_21();
      v123(v122);
      v124 = sub_1CA94A9C8();
      v176 = MEMORY[0x1E69E6158];
      *&v174 = v124;
      *(&v174 + 1) = v125;
      goto LABEL_44;
    }

    if (v8 == *MEMORY[0x1E69DAD90] || v8 == *MEMORY[0x1E69DAE08])
    {
      v126 = v0[58];
      v128 = v0[52];
      v127 = v0[53];
      v129 = v0[51];
      sub_1CA2FFC58();
      v130 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_6(v130, v131);
      swift_willThrow();

      (*(v128 + 8))(v127, v129);
      goto LABEL_50;
    }

    if (v8 == *MEMORY[0x1E69DAD88])
    {
      v134 = OUTLINED_FUNCTION_0_25();
      v135(v134);
      v32 = sub_1CA949058();
      OUTLINED_FUNCTION_1_0(v32);
      v34 = v136;
      v138 = *(v137 + 64);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_4_24();
      v139();
      v0[5] = v32;
      __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      OUTLINED_FUNCTION_9_13();
      v140();
      objc_allocWithZone(MEMORY[0x1E69ACA90]);
      v39 = v0 + 2;
      goto LABEL_26;
    }

    if (v8 == *MEMORY[0x1E69DAD68])
    {
      OUTLINED_FUNCTION_13_12();
      v142 = OUTLINED_FUNCTION_14_1(v141);
      v143(v142);
      v144 = sub_1CA948898();
      OUTLINED_FUNCTION_1_0(v144);
      v146 = v145;
      v148 = *(v147 + 64) + 15;
      v149 = swift_task_alloc();
      (*(v146 + 32))(v149, v2, v144);
      v150 = sub_1CA94CC88();
      v151 = swift_task_alloc();
      (*(v146 + 16))(v151, v149, v144);
      v152 = MEMORY[0x1CCAA1AA0](v151);

      v176 = v150;
      *&v174 = v152;
      v153 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      OUTLINED_FUNCTION_34_7();
      sub_1CA320AB4(v154, v155);
      (*(v146 + 8))(v149, v144);
      goto LABEL_27;
    }

    if (v8 == *MEMORY[0x1E69DAE00])
    {
      OUTLINED_FUNCTION_13_12();
      v157 = OUTLINED_FUNCTION_14_1(v156);
      v158(v157);
      v159 = *v2;
      v160 = v2[1];
      v161 = sub_1CA94CC88();
      v0[26] = v159;
      v0[27] = v160;
      v176 = v161;
      *&v174 = sub_1CA94CC78();
    }

    else
    {
      if (v8 == *MEMORY[0x1E69DAD58])
      {
        OUTLINED_FUNCTION_13_12();
        v97 = v0[37];
        v95 = v0[38];
        v96 = v0[36];
        v164 = OUTLINED_FUNCTION_14_1(v163);
        v165(v164);
        v166 = OUTLINED_FUNCTION_5_21();
        v167(v166);
        v115 = sub_1CA94AD18();
        goto LABEL_42;
      }

      v168 = v0[58];
      if (v8 != *MEMORY[0x1E69DADD8])
      {
        v171 = v0[52];
        v170 = v0[53];
        v172 = v0[51];
        sub_1CA2FFC58();
        OUTLINED_FUNCTION_127();
        *v173 = 0;
        swift_willThrow();

        (*(v171 + 8))(v170, v172);
LABEL_50:
        OUTLINED_FUNCTION_1_22();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_99();

        __asm { BRAA            X1, X16 }
      }

      v169 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v176 = sub_1CA25B3D0(0, &qword_1EC444BF8, 0x1E695DFB0);
      *&v174 = v169;
    }

    v162 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    OUTLINED_FUNCTION_34_7();
    goto LABEL_12;
  }

  v81 = v0[53];
  v82 = v0[51];
  v84 = v0[31];
  v83 = v0[32];
  v85 = v0[30];
  v86 = OUTLINED_FUNCTION_14_1(v0[52]);
  v87(v86);
  v88 = OUTLINED_FUNCTION_46_0();
  v89(v88);
  v90 = swift_task_alloc();
  v0[63] = v90;
  *v90 = v0;
  v90[1] = sub_1CA3BDBC4;
  OUTLINED_FUNCTION_33_7(v0[32]);
  OUTLINED_FUNCTION_99();

  return sub_1CA309888();
}

uint64_t sub_1CA3BD88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 472);
  OUTLINED_FUNCTION_1_22();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1CA3BD92C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 480);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 488) = v0;

  if (!v0)
  {
    *(v5 + 496) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA3BDA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = *(v12 + 272);
  v13 = *(v12 + 280);
  v15 = *(v12 + 264);

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  v19 = *(v12 + 496);
  OUTLINED_FUNCTION_1_22();

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_23_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA3BDB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = *(v12 + 272);
  v13 = *(v12 + 280);
  v15 = *(v12 + 264);

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  v19 = *(v12 + 488);
  OUTLINED_FUNCTION_1_22();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA3BDBC4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 504);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 512) = v0;

  if (!v0)
  {
    *(v5 + 520) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA3BDCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  v15 = *(v12 + 240);

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  v19 = *(v12 + 520);
  OUTLINED_FUNCTION_1_22();

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_23_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA3BDD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  v15 = *(v12 + 240);

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  v19 = *(v12 + 512);
  OUTLINED_FUNCTION_1_22();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA3BDE5C()
{
  OUTLINED_FUNCTION_0();
  v0[71] = v1;
  v0[70] = v2;
  v0[69] = v3;
  v4 = sub_1CA94AB58();
  v0[72] = v4;
  OUTLINED_FUNCTION_12(v4);
  v0[73] = v5;
  v7 = *(v6 + 64);
  v0[74] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64) + 15;
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v0[77] = swift_task_alloc();
  v0[78] = swift_task_alloc();
  v11 = sub_1CA94AB68();
  v0[79] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[80] = v12;
  v14 = *(v13 + 64);
  v0[81] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1CA3BDFB0()
{
  v3 = [*(v0 + 560) valueType];
  *(v0 + 656) = v3;
  objc_opt_self();
  if (OUTLINED_FUNCTION_47_5())
  {
    v4 = *(v0 + 552);

    v5 = MEMORY[0x1E69DADD8];
    goto LABEL_3;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_47_5())
  {
    v12 = *(v0 + 560);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
    OUTLINED_FUNCTION_1_0(v13);
    v15 = v14;
    v17 = *(v16 + 64);
    v18 = OUTLINED_FUNCTION_45();
    v19 = [v12 value];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA55BE5C(v0 + 496, v18);
    v27 = *(v0 + 552);

    __swift_destroy_boxed_opaque_existential_0((v0 + 496));
    v28 = *(v15 + 32);
    v29 = OUTLINED_FUNCTION_3_3();
    v30(v29);
    v31 = *MEMORY[0x1E69DAD60];
    v32 = sub_1CA94AC18();
    OUTLINED_FUNCTION_0_1(v32);
    (*(v33 + 104))(v27, v31);
LABEL_11:

LABEL_5:
    OUTLINED_FUNCTION_7_15();

    OUTLINED_FUNCTION_3_6();
    goto LABEL_55;
  }

  objc_opt_self();
  v20 = OUTLINED_FUNCTION_47_5();
  if (v20)
  {
    v21 = v20;
    v22 = objc_opt_self();
    v23 = v3;
    v24 = [v22 stringValueType];
    sub_1CA25B3D0(0, &unk_1EDB9F730, 0x1E69AC938);
    v25 = sub_1CA94CFD8();

    if (v25)
    {
      v26 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55DB30();
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 464));
      v50 = sub_1CA94C3A8();
      v52 = v51;

      *v26 = v50;
      v26[1] = v52;
      v5 = MEMORY[0x1E69DADF0];
      goto LABEL_3;
    }

    v39 = v23;
    v40 = [v22 attributedStringValueType];
    v41 = OUTLINED_FUNCTION_46_4();

    if (v41)
    {
      v42 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55BFEC(v0 + 432);
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 432));
      OUTLINED_FUNCTION_51_3();
      sub_1CA948988();

      v5 = MEMORY[0x1E69DAD98];
      goto LABEL_3;
    }

    v43 = v39;
    v44 = [v22 BOOLValueType];
    v45 = OUTLINED_FUNCTION_46_4();

    if (v45)
    {
      v46 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55C084(v0 + 400);
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
      v95 = [v21 BOOLValue];

      *v46 = v95;
      v5 = MEMORY[0x1E69DADC0];
      goto LABEL_3;
    }

    v53 = v43;
    v54 = [v22 intValueType];
    v55 = OUTLINED_FUNCTION_46_4();

    if (v55)
    {
      goto LABEL_34;
    }

    v56 = v53;
    v57 = [v22 int8ValueType];
    v58 = OUTLINED_FUNCTION_48_3();

    if (v58)
    {
      goto LABEL_34;
    }

    v59 = v56;
    v60 = [v22 int16ValueType];
    v61 = OUTLINED_FUNCTION_48_3();

    if (v61)
    {
      goto LABEL_34;
    }

    v62 = v59;
    v63 = [v22 int32ValueType];
    v64 = OUTLINED_FUNCTION_48_3();

    if (v64)
    {
      goto LABEL_34;
    }

    v65 = v62;
    v66 = [v22 int64ValueType];
    v67 = OUTLINED_FUNCTION_48_3();

    if (v67 & 1) != 0 || (v68 = v65, v69 = [v22 doubleValueType], v70 = OUTLINED_FUNCTION_48_3(), v55, v68, (v70))
    {
LABEL_34:
      v71 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55C084(v0 + 368);
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      v96 = [v21 integerValue];

      *v71 = v96;
      v5 = MEMORY[0x1E69DADB0];
      goto LABEL_3;
    }

    v187 = v68;
    v188 = [v22 dateValueType];
    v189 = OUTLINED_FUNCTION_46_4();

    if (v189)
    {
      v190 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55C11C(v0 + 336);
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      OUTLINED_FUNCTION_51_3();
      sub_1CA948C78();

      v5 = MEMORY[0x1E69DADC8];
      goto LABEL_3;
    }

    v192 = v187;
    v193 = [v22 dateComponentsValueType];
    v194 = OUTLINED_FUNCTION_46_4();

    if (v194)
    {
      v195 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55C1B4(v0 + 304);
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      OUTLINED_FUNCTION_51_3();
      sub_1CA9488C8();

      v5 = MEMORY[0x1E69DAD80];
      goto LABEL_3;
    }

    v203 = v192;
    v204 = [v22 URLValueType];
    v205 = OUTLINED_FUNCTION_46_4();

    if (v205)
    {
      v206 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      sub_1CA55C24C(v0 + 272);
      OUTLINED_FUNCTION_26_8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 272));
      OUTLINED_FUNCTION_51_3();
      sub_1CA948B68();

      v5 = MEMORY[0x1E69DADB8];
LABEL_3:
      v6 = *v5;
      v7 = sub_1CA94AC18();
      OUTLINED_FUNCTION_0_1(v7);
      v9 = *(v8 + 104);
      v10 = OUTLINED_FUNCTION_3_3();
      v11(v10);
      goto LABEL_5;
    }

    v210 = v203;
    v211 = [v22 placemarkValueType];
    v212 = sub_1CA94CFD8();

    if (v212)
    {
      v213 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      v214 = sub_1CA55C2E4(v0 + 240);
      *(v0 + 664) = v214;
      v216 = v214;
      v217 = *(v0 + 648);
      v218 = *(v0 + 640);
      v117 = *(v0 + 632);
      v219 = *(v0 + 560);
      __swift_destroy_boxed_opaque_existential_0((v0 + 240));
      v220 = sub_1CA25B3D0(0, &unk_1EC447E40, 0x1E695FC20);
      v221 = v216;
      sub_1CA94AD28();
      (*(v218 + 104))(v217, *MEMORY[0x1E69DAD48], v117);
      v222 = [v219 displayRepresentation];
      *(v0 + 672) = v222;
      if (v222)
      {
        OUTLINED_FUNCTION_29_10(&dword_1CA985968);
        OUTLINED_FUNCTION_77();
        *(v0 + 680) = v223;
        *v223 = v224;
        v223[1] = sub_1CA3BF634;
        v225 = *(v0 + 624);
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_41_6();
      sub_1CA94B458();
      v226 = OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_10_10(v226, 1, v227, v228);
      sub_1CA94AB78();

      v119 = MEMORY[0x1E69DAE10];
LABEL_82:
      v163 = *v119;
      v164 = sub_1CA94AC18();
      OUTLINED_FUNCTION_0_1(v164);
      (*(v165 + 104))(v117);
      goto LABEL_5;
    }

    sub_1CA2FFC58();
    OUTLINED_FUNCTION_127();
    *v215 = 0;
    swift_willThrow();

LABEL_54:
    OUTLINED_FUNCTION_8_10();

    OUTLINED_FUNCTION_5();
LABEL_55:
    OUTLINED_FUNCTION_107_1();

    __asm { BRAA            X1, X16 }
  }

  objc_opt_self();
  v34 = OUTLINED_FUNCTION_47_5();
  if (!v34)
  {
    objc_opt_self();
    v47 = OUTLINED_FUNCTION_47_5();
    if (v47)
    {
      v48 = v47;
      v36 = v3;
      if ([v48 typeIdentifier])
      {
LABEL_25:
        sub_1CA2FFC58();
        OUTLINED_FUNCTION_127();
        *v49 = 0;
LABEL_26:
        swift_willThrow();
LABEL_27:

        goto LABEL_54;
      }

      v94 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      v120 = sub_1CA55C56C(v0 + 112);
      __swift_destroy_boxed_opaque_existential_0((v0 + 112));
      v121 = sub_1CA949058();
      OUTLINED_FUNCTION_1_0(v121);
      v123 = *(v122 + 64);
      OUTLINED_FUNCTION_45();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BB0, &qword_1CA985928);
      OUTLINED_FUNCTION_18_0(v124);
      v126 = *(v125 + 64);
      v127 = OUTLINED_FUNCTION_45();
      sub_1CA94CEB8();
      OUTLINED_FUNCTION_43_6();
      if (!v128)
      {
        v148 = *(v0 + 552);

        v149 = OUTLINED_FUNCTION_19_6();
        (v36)(v149);

        v150 = OUTLINED_FUNCTION_36_7();
        (v36)(v150);
        v151 = MEMORY[0x1E69DAD88];
LABEL_83:
        v169 = *v151;
        v170 = sub_1CA94AC18();
        OUTLINED_FUNCTION_0_1(v170);
        v172 = *(v171 + 104);
        v173 = OUTLINED_FUNCTION_3_3();
        v174(v173);
        goto LABEL_11;
      }

      sub_1CA30F7DC(v127, &qword_1EC444BB0, &qword_1CA985928);

      sub_1CA2FFC58();
      OUTLINED_FUNCTION_127();
      v130 = 4;
LABEL_73:
      *v129 = v130;
      swift_willThrow();

      goto LABEL_27;
    }

    objc_opt_self();
    v72 = OUTLINED_FUNCTION_47_5();
    if (!v72)
    {

      sub_1CA2FFC58();
      v97 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_6(v97, v98);
      swift_willThrow();
      goto LABEL_54;
    }

    v73 = v72;
    v36 = v3;
    v74 = [v73 identifier];
    v75 = sub_1CA94C3A8();
    v77 = v76;

    sub_1CA25B3D0(0, &qword_1EC444698, 0x1E69AC750);
    v78 = sub_1CA94CDA8();
    v79 = [v78 identifier];

    v80 = sub_1CA94C3A8();
    v82 = v81;

    if (v80 == v75 && v82 == v77)
    {
    }

    else
    {
      v84 = OUTLINED_FUNCTION_44_5();

      if ((v84 & 1) == 0)
      {
        v141 = sub_1CA94CDC8();
        v142 = [v141 identifier];

        v143 = sub_1CA94C3A8();
        v145 = v144;

        if (v143 == v75 && v145 == v77)
        {
        }

        else
        {
          v147 = OUTLINED_FUNCTION_44_5();

          if ((v147 & 1) == 0)
          {
            v178 = sub_1CA94CDB8();
            v179 = [v178 identifier];

            v180 = sub_1CA94C3A8();
            v182 = v181;

            if (v180 == v75 && v182 == v77)
            {
            }

            else
            {
              v184 = sub_1CA94D7F8();

              if ((v184 & 1) == 0)
              {
                sub_1CA2FFC58();
                v185 = OUTLINED_FUNCTION_127();
                OUTLINED_FUNCTION_35_6(v185, v186);
                goto LABEL_26;
              }
            }

            v191 = [*(v0 + 560) value];
            sub_1CA94D258();
            swift_unknownObjectRelease();
            v120 = sub_1CA55C670(v0 + 16);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            v196 = sub_1CA948A48();
            OUTLINED_FUNCTION_1_0(v196);
            v198 = *(v197 + 64);
            OUTLINED_FUNCTION_45();
            v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
            OUTLINED_FUNCTION_18_0(v199);
            v201 = *(v200 + 64);
            v137 = OUTLINED_FUNCTION_45();
            sub_1CA3C0370(&qword_1EC444BE0, MEMORY[0x1EEE78218]);
            OUTLINED_FUNCTION_45_5();
            OUTLINED_FUNCTION_43_6();
            if (!v202)
            {
              v207 = *(v0 + 552);

              v208 = OUTLINED_FUNCTION_19_6();
              (v36)(v208);

              v209 = OUTLINED_FUNCTION_36_7();
              (v36)(v209);
              v151 = MEMORY[0x1E69DADA0];
              goto LABEL_83;
            }

            v139 = &qword_1EC447940;
            v140 = &unk_1CA983D00;
LABEL_71:
            sub_1CA30F7DC(v137, v139, v140);

LABEL_72:
            sub_1CA2FFC58();
            OUTLINED_FUNCTION_127();
            v130 = 2;
            goto LABEL_73;
          }
        }

        v175 = *(v0 + 560);

        v176 = [v175 value];
        sub_1CA94D258();
        swift_unknownObjectRelease();
        v120 = sub_1CA55C670(v0 + 48);
        __swift_destroy_boxed_opaque_existential_0((v0 + 48));
        sub_1CA94CC68();
        if ((*(v0 + 544) & 1) == 0)
        {
          v177 = *(v0 + 552);
          v229 = *(v0 + 528);

          *v177 = v229;
          v5 = MEMORY[0x1E69DAE00];
          goto LABEL_3;
        }

        goto LABEL_72;
      }
    }

    v99 = *(v0 + 560);

    v100 = [v99 value];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    v120 = sub_1CA55C670(v0 + 80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    v131 = sub_1CA948898();
    OUTLINED_FUNCTION_1_0(v131);
    v133 = *(v132 + 64);
    OUTLINED_FUNCTION_45();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
    OUTLINED_FUNCTION_18_0(v134);
    v136 = *(v135 + 64);
    v137 = OUTLINED_FUNCTION_45();
    sub_1CA3C0370(&qword_1EC444BE8, MEMORY[0x1EEE77BF0]);
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_43_6();
    if (!v138)
    {
      v166 = *(v0 + 552);

      v167 = OUTLINED_FUNCTION_19_6();
      (v36)(v167);

      v168 = OUTLINED_FUNCTION_36_7();
      (v36)(v168);
      v151 = MEMORY[0x1E69DAD68];
      goto LABEL_83;
    }

    v139 = &qword_1EC444690;
    v140 = &unk_1CA983A20;
    goto LABEL_71;
  }

  v35 = v34;
  v36 = v3;
  v37 = [v35 typeIdentifier];
  if (v37 == 14)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 728) = v91;
    *v91 = v92;
    OUTLINED_FUNCTION_40_3(v91);
    OUTLINED_FUNCTION_107_1();

    return sub_1CA539750();
  }

  else
  {
    if (v37 == 3)
    {
      v85 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      *(v0 + 760) = sub_1CA55C4D4(v0 + 144);
      v103 = *(v0 + 560);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v104 = [v103 displayRepresentation];
      *(v0 + 768) = v104;
      if (!v104)
      {
        OUTLINED_FUNCTION_27_12();
        sub_1CA94B458();
        v152 = OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_10_10(v152, 1, v153, v154);
        sub_1CA94AB38();

        v155 = OUTLINED_FUNCTION_53_4();
        v156(v155);
        v157 = *MEMORY[0x1E69DADE8];
        v158 = sub_1CA94AC18();
        OUTLINED_FUNCTION_0_1(v158);
        (*(v159 + 104))(v1);
        goto LABEL_5;
      }

      OUTLINED_FUNCTION_29_10(&dword_1CA985968);
      OUTLINED_FUNCTION_77();
      *(v0 + 776) = v105;
      *v105 = v106;
      v105[1] = sub_1CA3BFF54;
      v107 = *(v0 + 600);
LABEL_62:
      v113 = *(v0 + 568);
      OUTLINED_FUNCTION_107_1();

      __asm { BR              X2 }
    }

    if (v37 == 12)
    {
      v90 = [*(v0 + 560) value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      v117 = 0;
      *(v0 + 696) = sub_1CA55C43C(v0 + 176);
      v108 = *(v0 + 560);
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      v109 = [v108 displayRepresentation];
      *(v0 + 704) = v109;
      if (v109)
      {
        OUTLINED_FUNCTION_29_10(&dword_1CA985968);
        OUTLINED_FUNCTION_77();
        *(v0 + 712) = v110;
        *v110 = v111;
        v110[1] = sub_1CA3BF868;
        v112 = *(v0 + 608);
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_52_3();
      sub_1CA94B458();
      v160 = OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_10_10(v160, 1, v161, v162);
      sub_1CA94AB08();

      v119 = MEMORY[0x1E69DADD0];
      goto LABEL_82;
    }

    if (v37 != 13)
    {
      if (!v37)
      {
        v38 = [*(v0 + 560) value];
        sub_1CA94D258();
        swift_unknownObjectRelease();
        sub_1CA55C37C(v0 + 208);
        v116 = *(v0 + 616);
        v117 = *(v0 + 552);
        __swift_destroy_boxed_opaque_existential_0((v0 + 208));
        v118 = sub_1CA94B458();
        __swift_storeEnumTagSinglePayload(v116, 1, 1, v118);
        sub_1CA94AAC8();

        v119 = MEMORY[0x1E69DADA8];
        goto LABEL_82;
      }

      goto LABEL_25;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 744) = v86;
    *v86 = v87;
    OUTLINED_FUNCTION_40_3(v86);
    OUTLINED_FUNCTION_107_1();

    return sub_1CA309B68();
  }
}

uint64_t sub_1CA3BF634()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[85];
  *v4 = *v1;
  v3[86] = v0;

  v6 = v2[84];
  if (v0)
  {
    (*(v3[80] + 8))(v3[81], v3[79]);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3BF778()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_41_6();
  sub_1CA94B458();
  v3 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_10_10(v3, 0, v4, v5);
  sub_1CA94AB78();

  v6 = *MEMORY[0x1E69DAE10];
  v7 = sub_1CA94AC18();
  OUTLINED_FUNCTION_0_1(v7);
  (*(v8 + 104))(v0, v6);
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_3_6();

  return v9();
}

uint64_t sub_1CA3BF868()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *(v2 + 712);
  *v4 = *v1;
  *(v3 + 720) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA3BF990()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_52_3();
  sub_1CA94B458();
  v2 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_10_10(v2, 0, v3, v4);
  sub_1CA94AB08();

  v5 = *MEMORY[0x1E69DADD0];
  v6 = sub_1CA94AC18();
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 104))(v0, v5);
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_3_6();

  return v8();
}

uint64_t sub_1CA3BFA7C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 728);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 736) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA3BFB78()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 656);
  v2 = *(v0 + 552);

  v3 = *MEMORY[0x1E69DAD78];
  v4 = sub_1CA94AC18();
  OUTLINED_FUNCTION_0_1(v4);
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_3_3();
  v8(v7);
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_3_6();

  return v9();
}

uint64_t sub_1CA3BFC4C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 656);

  v2 = *(v0 + 736);
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA3BFCE8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 752) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA3BFDE4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 656);
  v2 = *(v0 + 552);

  v3 = *MEMORY[0x1E69DAD70];
  v4 = sub_1CA94AC18();
  OUTLINED_FUNCTION_0_1(v4);
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_3_3();
  v8(v7);
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_3_6();

  return v9();
}

uint64_t sub_1CA3BFEB8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 656);

  v2 = *(v0 + 752);
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA3BFF54()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *(v2 + 776);
  *v4 = *v1;
  *(v3 + 784) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA3C007C()
{
  OUTLINED_FUNCTION_27_12();
  sub_1CA94B458();
  v2 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_10_10(v2, 0, v3, v4);
  sub_1CA94AB38();

  v5 = OUTLINED_FUNCTION_53_4();
  v6(v5);
  v7 = *MEMORY[0x1E69DADE8];
  v8 = sub_1CA94AC18();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 104))(v0, v7);
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_3_6();

  return v10();
}

uint64_t sub_1CA3C0184()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[83];
  v2 = v0[82];

  v3 = v0[86];
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA3C0228()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[87];
  v2 = v0[82];

  v3 = v0[90];
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA3C02CC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[95];
  v2 = v0[82];

  v3 = v0[98];
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA3C0370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA3C03B8()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1CA2DF78C;

  return sub_1CA3BDE5C();
}

uint64_t sub_1CA3C0460()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA3BC674();
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return swift_dynamicCastObjCClass();
}

id sub_1CA3C0538(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1CA94C368();
  OUTLINED_FUNCTION_139();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v7 = sub_1CA94C1A8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithIdentifier:v4 definition:a3 serializedParameters:v7];

  return v8;
}

uint64_t sub_1CA3C0618()
{
  v0 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
  v1 = OUTLINED_FUNCTION_18_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_3_3();
  sub_1CA3D37F4(v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 8, v10);
  result = 1000;
  switch(EnumTagSinglePayload)
  {
    case 1:
      return result;
    case 2:
      result = 1001;
      break;
    case 3:
      result = 1002;
      break;
    case 4:
      result = 1003;
      break;
    case 5:
      result = 1008;
      break;
    case 6:
      result = 1005;
      break;
    case 7:
      result = 1006;
      break;
    case 8:
      result = 1007;
      break;
    default:
      v13 = sub_1CA94A2F8();
      OUTLINED_FUNCTION_52(v13);
      (*(v14 + 8))(v6);
      result = 1004;
      break;
  }

  return result;
}

uint64_t sub_1CA3C086C()
{
  v1 = sub_1CA94A2F8();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = [v0 toolInvocation];
  if (v10)
  {
    v11 = v10;
    (*(v4 + 16))(v9, v10 + OBJC_IVAR___WFToolInvocation_toolInvocation, v1);

    v12 = *(v4 + 32);
    v13 = OUTLINED_FUNCTION_61();
    return v14(v13);
  }

  else
  {
    type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v16, v17);
    OUTLINED_FUNCTION_23_10();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v18 = OUTLINED_FUNCTION_121_1();
    __swift_storeEnumTagSinglePayload(v18, 4, 8, v19);
    return swift_willThrow();
  }
}

uint64_t sub_1CA3C09E4()
{
  v0 = sub_1CA94A158();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = (v7 - v6);
  v9 = sub_1CA94A288();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v49 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  v17 = sub_1CA94A2F8();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v25 = v24 - v23;
  result = sub_1CA3C086C();
  if (!v50)
  {
    v46 = v20;
    v47 = v17;
    v48 = v9;
    sub_1CA94A2A8();
    result = sub_1CA94A1F8();
    v27 = result;
    v28 = 0;
    v29 = *(result + 16);
    v30 = *MEMORY[0x1E69DA9B0];
    while (1)
    {
      if (v29 == v28)
      {

        type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
        OUTLINED_FUNCTION_1_23();
        sub_1CA3D3590(v37, v38);
        OUTLINED_FUNCTION_16_11();
        swift_allocError();
        (*(v46 + 16))(v39, v25, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
        v40 = OUTLINED_FUNCTION_121_1();
        __swift_storeEnumTagSinglePayload(v40, 0, 8, v41);
        swift_willThrow();
        (*(v49 + 8))(v16, v48);
        return (*(v46 + 8))(v25, v47);
      }

      if (v28 >= *(v27 + 16))
      {
        break;
      }

      (*(v3 + 16))(v8, v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v0);
      v31 = *(v3 + 88);
      v32 = OUTLINED_FUNCTION_242();
      if (v33(v32) == v30)
      {

        (*(v49 + 8))(v16, v48);
        (*(v46 + 8))(v25, v47);
        v42 = *(v3 + 96);
        v43 = OUTLINED_FUNCTION_242();
        v44(v43);
        result = *v8;
        v45 = v8[1];
        return result;
      }

      ++v28;
      v34 = *(v3 + 8);
      v35 = OUTLINED_FUNCTION_242();
      result = v36(v35);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CA3C0D68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v2 = OUTLINED_FUNCTION_18_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_247();
  sub_1CA94C858();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1CA94C838();
  v9 = v0;
  v10 = sub_1CA94C828();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_1CA30C708();
}

uint64_t sub_1CA3C0E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a4;
  v5 = type metadata accessor for LinkValueTransformContext(0);
  v4[62] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[63] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CB0, &unk_1CA983060) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444348, &qword_1CA985B20);
  v4[65] = v8;
  v9 = *(v8 - 8);
  v4[66] = v9;
  v10 = *(v9 + 64) + 15;
  v4[67] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  v4[68] = v11;
  v12 = *(v11 - 8);
  v4[69] = v12;
  v13 = *(v12 + 64) + 15;
  v4[70] = swift_task_alloc();
  v14 = sub_1CA94A408();
  v4[71] = v14;
  v15 = *(v14 - 8);
  v4[72] = v15;
  v16 = *(v15 + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070) - 8) + 64) + 15;
  v4[76] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444CD0, &qword_1CA985B28) - 8) + 64) + 15;
  v4[77] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444CD8, &qword_1CA985B30);
  v4[78] = v19;
  v20 = *(v19 - 8);
  v4[79] = v20;
  v21 = *(v20 + 64) + 15;
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CE0, &qword_1CA985B38) - 8) + 64) + 15;
  v4[84] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445BC0, &qword_1CA985B40) - 8) + 64) + 15;
  v4[85] = swift_task_alloc();
  v24 = sub_1CA949818();
  v4[86] = v24;
  v25 = *(v24 - 8);
  v4[87] = v25;
  v26 = *(v25 + 64) + 15;
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CF0, &qword_1CA985B48);
  v4[90] = v27;
  v28 = *(v27 - 8);
  v4[91] = v28;
  v29 = *(v28 + 64) + 15;
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v30 = sub_1CA949868();
  v4[95] = v30;
  v31 = *(v30 - 8);
  v4[96] = v31;
  v32 = *(v31 + 64) + 15;
  v4[97] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445B80, &unk_1CA985B50) - 8) + 64) + 15;
  v4[98] = swift_task_alloc();
  v34 = sub_1CA9498A8();
  v4[99] = v34;
  v35 = *(v34 - 8);
  v4[100] = v35;
  v36 = *(v35 + 64) + 15;
  v4[101] = swift_task_alloc();
  v37 = sub_1CA949878();
  v4[102] = v37;
  v38 = *(v37 - 8);
  v4[103] = v38;
  v39 = *(v38 + 64) + 15;
  v4[104] = swift_task_alloc();
  v40 = sub_1CA9498C8();
  v4[105] = v40;
  v41 = *(v40 - 8);
  v4[106] = v41;
  v42 = *(v41 + 64) + 15;
  v4[107] = swift_task_alloc();
  v43 = sub_1CA949998();
  v4[108] = v43;
  v44 = *(v43 - 8);
  v4[109] = v44;
  v45 = *(v44 + 64) + 15;
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  v46 = sub_1CA94AC88();
  v4[113] = v46;
  v47 = *(v46 - 8);
  v4[114] = v47;
  v48 = *(v47 + 64) + 15;
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v49 = type metadata accessor for ContentGraphRepresentationContext(0);
  v4[118] = v49;
  v50 = *(*(v49 - 8) + 64) + 15;
  v4[119] = swift_task_alloc();
  v51 = sub_1CA94AC68();
  v4[120] = v51;
  v52 = *(v51 - 8);
  v4[121] = v52;
  v53 = *(v52 + 64) + 15;
  v4[122] = swift_task_alloc();
  v54 = sub_1CA94B258();
  v4[123] = v54;
  v55 = *(v54 - 8);
  v4[124] = v55;
  v56 = *(v55 + 64) + 15;
  v4[125] = swift_task_alloc();
  v57 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80) - 8) + 64) + 15;
  v4[126] = swift_task_alloc();
  v58 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D08, &qword_1CA985B60) - 8) + 64) + 15;
  v4[127] = swift_task_alloc();
  v59 = sub_1CA949768();
  v4[128] = v59;
  v60 = *(v59 - 8);
  v4[129] = v60;
  v61 = *(v60 + 64) + 15;
  v4[130] = swift_task_alloc();
  v62 = sub_1CA9497D8();
  v4[131] = v62;
  v63 = *(v62 - 8);
  v4[132] = v63;
  v64 = *(v63 + 64) + 15;
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v65 = sub_1CA94AFA8();
  v4[135] = v65;
  v66 = *(v65 - 8);
  v4[136] = v66;
  v67 = *(v66 + 64) + 15;
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v68 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444D10, &qword_1CA985B68) - 8) + 64) + 15;
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v69 = type metadata accessor for TypedValueConversionContext(0);
  v4[143] = v69;
  v70 = *(*(v69 - 8) + 64) + 15;
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v71 = sub_1CA94B168();
  v4[146] = v71;
  v72 = *(v71 - 8);
  v4[147] = v72;
  v73 = *(v72 + 64) + 15;
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = swift_task_alloc();
  v74 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080) - 8) + 64) + 15;
  v4[151] = swift_task_alloc();
  v4[152] = swift_task_alloc();
  v75 = sub_1CA94B1C8();
  v4[153] = v75;
  v76 = *(v75 - 8);
  v4[154] = v76;
  v77 = *(v76 + 64) + 15;
  v4[155] = swift_task_alloc();
  v4[156] = swift_task_alloc();
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();
  v4[159] = swift_task_alloc();
  v78 = sub_1CA94A288();
  v4[160] = v78;
  v79 = *(v78 - 8);
  v4[161] = v79;
  v80 = *(v79 + 64) + 15;
  v4[162] = swift_task_alloc();
  v4[163] = swift_task_alloc();
  v4[164] = swift_task_alloc();
  v4[165] = swift_task_alloc();
  v4[166] = swift_task_alloc();
  v81 = sub_1CA94A2F8();
  v4[167] = v81;
  v82 = *(v81 - 8);
  v4[168] = v82;
  v83 = *(v82 + 64) + 15;
  v4[169] = swift_task_alloc();
  v4[170] = swift_task_alloc();
  v4[171] = swift_task_alloc();
  v4[172] = swift_task_alloc();
  v4[173] = swift_task_alloc();
  v84 = sub_1CA949F78();
  v4[174] = v84;
  v85 = *(v84 - 8);
  v4[175] = v85;
  v86 = *(v85 + 64) + 15;
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  sub_1CA94C838();
  v4[183] = sub_1CA94C828();
  v88 = sub_1CA94C7C8();
  v4[184] = v88;
  v4[185] = v87;

  return MEMORY[0x1EEE6DFA0](sub_1CA3C1B9C, v88, v87);
}

uint64_t sub_1CA3C1B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = *(v14 + 1456);
  *(v14 + 1488) = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v16 = sub_1CA949F68();
  sub_1CA94CC38();
  OUTLINED_FUNCTION_165_2();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175_1(v18);
    _os_log_impl(&dword_1CA256000, v16, v12, "WFRemoteAppIntentExecutionAction: Executing remote action.", v13, 2u);
    OUTLINED_FUNCTION_105_2();
  }

  v19 = *(v14 + 1456);
  v20 = *(v14 + 1400);
  v21 = *(v14 + 1392);
  v22 = *(v14 + 1384);
  v23 = *(v14 + 488);

  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_20_0();
  v26(v25);
  sub_1CA3C086C();
  v27 = *(v14 + 1384);
  v28 = *(v14 + 1328);
  v29 = *(v14 + 1320);
  v30 = *(v14 + 1288);
  v31 = *(v14 + 1280);
  v32 = *(v14 + 1224);
  v33 = *(v14 + 1216);
  sub_1CA94A2A8();
  sub_1CA94A2A8();
  sub_1CA94A228();
  v34 = *(v30 + 8);
  *(v14 + 1496) = v34;
  *(v14 + 1504) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35 = OUTLINED_FUNCTION_20_0();
  v34(v35);
  OUTLINED_FUNCTION_49(v33, 1, v32);
  if (v155)
  {
    v36 = *(v14 + 1384);
    v37 = *(v14 + 1312);
    v38 = *(v14 + 1280);
    v39 = *(v14 + 1272);
    v40 = *(v14 + 1224);
    v41 = *(v14 + 1216);
    sub_1CA94A2A8();
    sub_1CA94A1E8();
    v42 = OUTLINED_FUNCTION_20_0();
    v34(v42);
    OUTLINED_FUNCTION_49(v41, 1, v40);
    if (!v155)
    {
      sub_1CA27080C(*(v14 + 1216), &qword_1EC4445D0, &qword_1CA983080);
    }
  }

  else
  {
    (*(*(v14 + 1232) + 32))(*(v14 + 1272), *(v14 + 1216), *(v14 + 1224));
  }

  v43 = *(v14 + 1328);
  v44 = *(v14 + 1264);
  v45 = *(v14 + 1232);
  v46 = *(v14 + 1224);
  v47 = *(v14 + 1200);
  v48 = sub_1CA94A1E8();
  MEMORY[0x1CCA9FFE0](v48);
  v49 = *(v45 + 8);
  *(v14 + 1512) = v49;
  *(v14 + 1520) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50 = OUTLINED_FUNCTION_20_0();
  v49(v50);
  *(v14 + 1528) = sub_1CA94B148();
  *(v14 + 1536) = v51;
  v76 = *(v14 + 1328);
  v77 = *(v14 + 1256);
  v78 = *(v14 + 1224);
  v79 = *(v14 + 1200);
  v80 = *(v14 + 1192);
  v81 = *(v14 + 1176);
  v82 = *(v14 + 1168);
  v83 = *(v81 + 8);
  *(v14 + 1544) = v83;
  *(v14 + 1552) = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83(v79, v82);
  sub_1CA94A138();
  *(v14 + 1560) = sub_1CA94A118();
  v84 = sub_1CA94A1E8();
  MEMORY[0x1CCA9FFE0](v84);
  v85 = OUTLINED_FUNCTION_69_0();
  v49(v85);
  if (qword_1EC4420F0 != -1)
  {
LABEL_72:
    swift_once();
  }

  v86 = *(v14 + 488);
  v87 = qword_1EC4420F8;
  *(v14 + 296) = type metadata accessor for DatabaseTypeDefinitionProvider();
  *(v14 + 304) = &protocol witness table for DatabaseTypeDefinitionProvider;
  *(v14 + 272) = v87;

  v88 = [v86 toolInvocation];
  if (!v88 || (v89 = v88, v90 = ToolInvocationBox.options()(), v89, !v90) || (v91 = sub_1CA3CD15C(), v90, !v91))
  {
    v91 = [objc_opt_self() defaultContext];
  }

  v92 = *(v14 + 1160);
  v93 = *(v14 + 1144);
  v94 = *(v14 + 488);
  (*(*(v14 + 1176) + 32))(v92, *(v14 + 1192), *(v14 + 1168));
  sub_1CA27F268((v14 + 272), v92 + v93[5]);
  *(v92 + v93[6]) = v91;
  *(v92 + v93[7]) = 0;
  v95 = [v94 userInterface];
  if (!v95)
  {
    goto LABEL_22;
  }

  v96 = v95;
  if (([v95 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v97 = 0;
    goto LABEL_23;
  }

  v97 = [v96 dialogTransformer];
  swift_unknownObjectRelease();
LABEL_23:
  *(v14 + 1568) = v97;
  v98 = *(v14 + 1384);
  v99 = *(v14 + 1376);
  v100 = *(v14 + 1336);
  v101 = *(v14 + 1160);
  v102 = *(v14 + 1152);
  v103 = *(*(v14 + 1344) + 16);
  v104 = OUTLINED_FUNCTION_52_0();
  v105(v104);
  v106 = OUTLINED_FUNCTION_70();
  sub_1CA3D37F4(v106, v107, v108);
  v109 = type metadata accessor for WFRemoteAppIntentExecutionDelegate(0);
  *(v14 + 1576) = OUTLINED_FUNCTION_257(v109);
  v110 = OUTLINED_FUNCTION_3_3();
  sub_1CA3CDF54(v110, v111, v102);
  v112 = v97;
  v113 = v98;
  v114 = sub_1CA94A2C8();
  v115 = 0;
  *(v14 + 1584) = v114;
  v116 = *(v114 + 32);
  *(v14 + 2044) = v116;
  v117 = 1 << v116;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  else
  {
    v118 = -1;
  }

  v119 = MEMORY[0x1E69DB128];
  v120 = MEMORY[0x1E69E7CC0];
  v121 = v118 & *(v114 + 64);
  *(v14 + 2032) = *MEMORY[0x1E69DB120];
  *(v14 + 2036) = *v119;
  *(v14 + 1592) = v120;
  while (1)
  {
    *(v14 + 1600) = 0;
    if (!v121)
    {
      while (!__OFADD__(v115, 1))
      {
        OUTLINED_FUNCTION_47_6();
        if (v124 == v125)
        {
          v216 = OUTLINED_FUNCTION_241();
          v217 = __swift_instantiateConcreteTypeFromMangledNameV2(v216, &qword_1CA985B78);
          OUTLINED_FUNCTION_48_4(v217);
          goto LABEL_35;
        }

        ++v115;
        if (*(*(v14 + 1584) + 8 * v123 + 64))
        {
          v115 = v123;
          goto LABEL_34;
        }
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v122 = *(v14 + 1584);
LABEL_34:
    v113 = *(v14 + 1128);
    v126 = *(v14 + 1120);
    v127 = *(v14 + 1088);
    v98 = *(v14 + 1080);
    OUTLINED_FUNCTION_186_1();
    v283 = v129 & v128;
    v131 = v130 | (v115 << 6);
    v133 = (*(v132 + 48) + 16 * v131);
    v134 = *v133;
    v101 = v133[1];
    (*(v127 + 16))(v126, *(v132 + 56) + *(v127 + 72) * v131, v98);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
    v136 = OUTLINED_FUNCTION_28_7(v135);
    v137(v136);
    v138 = OUTLINED_FUNCTION_67();
    __swift_storeEnumTagSinglePayload(v138, v139, v140, &qword_1EC444D20);
    sub_1CA94C218();
    v218 = v283;
LABEL_35:
    OUTLINED_FUNCTION_85_2(v218);
    v141 = OUTLINED_FUNCTION_125();
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(v141, v142);
    OUTLINED_FUNCTION_88_1(v143);
    if (v155)
    {
      break;
    }

    v144 = OUTLINED_FUNCTION_21_10();
    v146 = *(v145 + 8);
    *(v14 + 1632) = v146;
    (*(v147 + 32))(v144, v145 + *(v98 + 48));
    v148 = sub_1CA94A1A8();
    v149 = 0;
    v150 = *(v148 + 16);
    while (1)
    {
      if (v150 == v149)
      {

        goto LABEL_48;
      }

      if (v149 >= *(v148 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      OUTLINED_FUNCTION_15_7();
      v152 = OUTLINED_FUNCTION_185_1(v151);
      v153(v152);
      sub_1CA94B228();
      OUTLINED_FUNCTION_206_1();
      v155 = v155 && v154 == v146;
      if (v155)
      {
        break;
      }

      sub_1CA94D7F8();
      OUTLINED_FUNCTION_255();
      if (v101)
      {
        goto LABEL_47;
      }

      v156 = OUTLINED_FUNCTION_39_4();
      v157(v156);
      ++v149;
    }

LABEL_47:

    v158 = OUTLINED_FUNCTION_25_7();
    v159(v158);
LABEL_48:
    OUTLINED_FUNCTION_130_1();
    v160 = *(v14 + 1088);
    OUTLINED_FUNCTION_119_1(v161, v162);
    v163 = OUTLINED_FUNCTION_22_9(v160);
    v164(v163);
    v165 = *(v160 + 88);
    v166 = OUTLINED_FUNCTION_20_0();
    if (v167(v166) == v101)
    {
      v241 = OUTLINED_FUNCTION_11_13();
      v242(v241);
      v243 = *(v101 + 32);
      v244 = OUTLINED_FUNCTION_13_0();
      v245(v244);
      v246 = swift_task_alloc();
      v247 = OUTLINED_FUNCTION_161_0(v246);
      *v247 = v248;
      OUTLINED_FUNCTION_5_22(v247);
      OUTLINED_FUNCTION_23_0();

      return TypedValueTransformer.transform(input:with:)();
    }

    OUTLINED_FUNCTION_184_0();
    v168 = *(v14 + 1080);
    if (v169 == v170)
    {
      v171 = *(v14 + 976);
      v172 = *(v14 + 968);
      v173 = *(v14 + 960);
      v174 = *(v14 + 488);
      v175 = *(v150 + 96);
      v176 = OUTLINED_FUNCTION_3_3();
      v177(v176);
      v178 = *(v172 + 32);
      v179 = OUTLINED_FUNCTION_103_1();
      v180(v179);
      if (OUTLINED_FUNCTION_164_1([v174 variableSource]))
      {
        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_215(&qword_1EC444D00, &qword_1CA988B80, v250);
        v251 = qword_1EC442008;
        swift_unknownObjectRetain();
        if (v251 != -1)
        {
          OUTLINED_FUNCTION_12_0();
        }

        v252 = *(v14 + 952);
        v253 = qword_1EC442010;
        v252[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
        v252[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
        *v252 = v253;
        v252[5] = 0;
        v252[6] = v168;
        OUTLINED_FUNCTION_13_13();
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_23_0();

        return MEMORY[0x1EEE6DFA0](v254, v255, v256);
      }

      v181 = *(v14 + 976);
      v182 = *(v14 + 968);
      v183 = *(v14 + 960);

      type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(&qword_1EC444C20, v184);
      OUTLINED_FUNCTION_52_4();
      OUTLINED_FUNCTION_207_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      v185 = OUTLINED_FUNCTION_70_6();
      __swift_storeEnumTagSinglePayload(v185, 5, 8, v186);
      swift_willThrow();
      v187 = OUTLINED_FUNCTION_65_3();
      v188(v187);
      sub_1CA27080C(v113, &qword_1EC444D00, &qword_1CA988B80);
    }

    else
    {
      v189 = *(v14 + 1008);

      type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
      OUTLINED_FUNCTION_1_23();
      sub_1CA3D3590(&qword_1EC444C20, v190);
      OUTLINED_FUNCTION_52_4();
      OUTLINED_FUNCTION_207_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
      v191 = OUTLINED_FUNCTION_70_6();
      __swift_storeEnumTagSinglePayload(v191, 8, 8, v192);
      swift_willThrow();
      sub_1CA27080C(v189, &qword_1EC444D00, &qword_1CA988B80);
      v193 = *(v150 + 8);
      v194 = OUTLINED_FUNCTION_3_3();
      v195(v194);
    }

    v196 = *(v14 + 1648);
    v197 = *(v14 + 1640);
    v198 = *(v14 + 1488);
    v199 = *(v14 + 1408);
    v200 = *(v14 + 1112);
    OUTLINED_FUNCTION_163_1();
    v201 = OUTLINED_FUNCTION_104_2();
    v197(v201);
    v202 = v146;
    v203 = sub_1CA949F68();
    v101 = sub_1CA94CC18();

    os_log_type_enabled(v203, v101);
    v204 = *(v14 + 1408);
    OUTLINED_FUNCTION_183_0();
    v98 = *(v14 + 1112);
    v113 = *(v14 + 1096);
    v205 = *(v14 + 1088);
    v206 = *(v14 + 1080);
    if (v207)
    {
      v280 = *(v14 + 1112);
      v98 = OUTLINED_FUNCTION_30_2();
      v284 = OUTLINED_FUNCTION_29_4();
      *v98 = 136315394;
      sub_1CA94AF98();
      v279 = v204;
      v278 = v101;
      v101 = *(v205 + 8);
      (v101)(v113, v206);
      v208 = OUTLINED_FUNCTION_201();
      v211 = sub_1CA26B54C(v208, v209, v210);

      *(v98 + 4) = v211;
      *(v98 + 12) = 2080;
      swift_getErrorValue();
      v212 = OUTLINED_FUNCTION_217_0();
      v214 = OUTLINED_FUNCTION_212_0(v212, v213);

      *(v98 + 14) = v214;
      _os_log_impl(&dword_1CA256000, v203, v278, "WFRemoteAppIntentExecutionAction: Failed to convert typed value: (%s) to link value due to error: %s.", v98, 0x16u);
      v113 = v284;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_105_2();

      (*(v196 + 8))(v279, v283);
      (v101)(v280, v206);
    }

    else
    {

      v215 = *(v205 + 8);
      v215(v113, v206);
      (*(v196 + 8))(v204, v283);
      v215(v98, v206);
    }

    v115 = *(v14 + 1616);
    v121 = *(v14 + 1608);
  }

  OUTLINED_FUNCTION_84();
  sub_1CA94B0F8();
  v219 = OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_49_3(v219);
  v220 = OUTLINED_FUNCTION_256();
  if (v98)
  {
    v222 = *(v14 + 1592);
    v223 = *(v14 + 1576);
    v277 = *(v14 + 1568);
    v224 = *(v14 + 1560);
    v225 = *(v14 + 1536);
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_126_2();
    OUTLINED_FUNCTION_92_1();
    v282 = v226;
    v227 = *(v14 + 1344);
    v281 = *(v14 + 1336);
    OUTLINED_FUNCTION_20_10();
    v228 = *(v14 + 1160);
    v229 = *(v14 + 1040);
    v230 = *(v14 + 1032);
    v231 = *(v14 + 1024);

    v232 = *(v230 + 8);
    v233 = OUTLINED_FUNCTION_162();
    v234 = v98;
    v235(v233);
    OUTLINED_FUNCTION_2_26();
    sub_1CA3D3628(v228, v236);
    v237 = OUTLINED_FUNCTION_200_1();
    v238(v237);
    v239 = OUTLINED_FUNCTION_199_1();
    v240(v239);
    (*(v227 + 8))(v282, v281);

    OUTLINED_FUNCTION_76_2();
    v52 = v98;
    v53 = sub_1CA949F68();
    v54 = sub_1CA94CC18();

    if (OUTLINED_FUNCTION_216_0())
    {
      v55 = OUTLINED_FUNCTION_150_0();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v234;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_1CA256000, v53, v54, "WFRemoteAppIntentExecutionAction: Failed: %@", v55, 0xCu);
      sub_1CA27080C(v56, &qword_1EC444AE0, &qword_1CA985B70);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_105_2();
    }

    v59 = *(v14 + 1416);
    v60 = *(v14 + 1400);
    v61 = *(v14 + 1392);
    v62 = *(v14 + 488);

    v63 = *(v60 + 8);
    v64 = OUTLINED_FUNCTION_20_0();
    v65(v64);
    v66 = sub_1CA948AC8();
    [v62 finishRunningWithError_];

    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_7_16();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_8_11(v220, v221);
    sub_1CA9498B8();
    qword_1CA985B78 = v113;
    unk_1CA985B80 = &qword_1EC444D20;
    v258 = *MEMORY[0x1E698AE18];
    v259 = OUTLINED_FUNCTION_64_3();
    v260(v259);
    objc_opt_self();
    OUTLINED_FUNCTION_220();
    v261 = OUTLINED_FUNCTION_226([&qword_1CA985B78 defaultEnvironment], &qword_1EC444D28);
    OUTLINED_FUNCTION_124_2(v261, MEMORY[0x1E698AE78]);
    v262 = *MEMORY[0x1E698AE10];
    v263 = OUTLINED_FUNCTION_63_3();
    v264(v263);
    OUTLINED_FUNCTION_20_0();
    sub_1CA949898();
    v265 = *(MEMORY[0x1E698AE20] + 4);
    v266 = swift_task_alloc();
    v267 = OUTLINED_FUNCTION_160_1(v266);
    *v267 = v268;
    OUTLINED_FUNCTION_4_25(v267);
    OUTLINED_FUNCTION_23_0();

    return MEMORY[0x1EEDEBED0](v269, v270, v271, v272, v273, v274, v275, v276, a9, a10, a11, a12);
  }
}

uint64_t sub_1CA3C2D60()
{
  v1 = v0[200];
  v2 = v0[122];
  v0[208] = TypedValue.ID.variable.getter();
  if (v1)
  {
    v3 = v0[204];

    v0[213] = v1;
    v4 = v0[119];
    OUTLINED_FUNCTION_37_7();
    sub_1CA3D3628(v5, v6);
    v7 = OUTLINED_FUNCTION_108_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_250();
    v10 = v0[207];
    v0[10] = v11;
    v0[15] = v0 + 60;
    v0[11] = sub_1CA3C2ED4;
    v12 = OUTLINED_FUNCTION_213_0();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    v0[33] = v13;
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1CA320A2C;
    v0[29] = &block_descriptor_54;
    v0[30] = v12;
    OUTLINED_FUNCTION_225(v13, sel_retrieveContentCollectionWithVariableSource_completionHandler_);

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }
}

uint64_t sub_1CA3C2ED4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1672) = *(v3 + 112);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA3C2FD0()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[208];
  v2 = v0[119];
  v0[210] = v0[60];

  OUTLINED_FUNCTION_37_7();
  sub_1CA3D3628(v2, v3);
  v4 = type metadata accessor for WFRemoteAppValue();
  v5 = *(MEMORY[0x1E6996C48] + 4);
  v6 = swift_task_alloc();
  v0[211] = v6;
  *v6 = v0;
  v6[1] = sub_1CA3C3090;

  return MEMORY[0x1EEDF8198](v4, v4);
}

uint64_t sub_1CA3C3090()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 1688);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[212] = v0;

  if (v0)
  {
    v11 = v5[204];

    OUTLINED_FUNCTION_146_1();
    v14 = sub_1CA3CB498;
  }

  else
  {
    v5[214] = v3;
    OUTLINED_FUNCTION_146_1();
    v14 = sub_1CA3C3CB4;
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t sub_1CA3C31A4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[209];
  v2 = v0[208];
  v3 = v0[204];
  swift_willThrow();

  v0[213] = v0[209];
  v4 = v0[119];
  OUTLINED_FUNCTION_37_7();
  sub_1CA3D3628(v5, v6);
  v7 = OUTLINED_FUNCTION_108_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3C3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v16 = v12[207];
  v17 = v12[126];
  v18 = v12[122];
  v19 = v12[121];
  v20 = v12[120];
  swift_unknownObjectRelease();
  v22 = *(v19 + 8);
  v21 = v19 + 8;
  v23 = OUTLINED_FUNCTION_20_0();
  v24(v23);
  sub_1CA27080C(v17, &qword_1EC444D00, &qword_1CA988B80);
  v25 = v12[213];
  while (2)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_163_1();
    v26 = OUTLINED_FUNCTION_104_2();
    (v14)(v26);
    v27 = v25;
    v28 = sub_1CA949F68();
    sub_1CA94CC18();
    OUTLINED_FUNCTION_222();
    os_log_type_enabled(v28, v15);
    OUTLINED_FUNCTION_45_6();
    if (v29)
    {
      OUTLINED_FUNCTION_30_2();
      v30 = OUTLINED_FUNCTION_154_2();
      *v13 = OUTLINED_FUNCTION_136_2(v30).n128_u32[0];
      sub_1CA94AF98();
      v31 = OUTLINED_FUNCTION_46_5();
      (v15)(v31);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_139();

      OUTLINED_FUNCTION_111_2();
      v32 = OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_212_0(v32, v33);
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_191_1();
      _os_log_impl(&dword_1CA256000, v28, v34, "WFRemoteAppIntentExecutionAction: Failed to convert typed value: (%s) to link value due to error: %s.", v13, 0x16u);
      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_59_4();

      v35 = v25[1];
      ++v25;
      v35();
      v15();
    }

    else
    {

      v36 = *(v18 + 8);
      v18 += 8;
      v20 = v36;
      v37 = OUTLINED_FUNCTION_119();
      v36(v37);
      v38 = OUTLINED_FUNCTION_181_1();
      v39(v38);
      v40 = OUTLINED_FUNCTION_176_0();
      v36(v40);
    }

    OUTLINED_FUNCTION_127_1();
    v41 = &qword_1EC444D20;
    if (!v42)
    {
      while (!__OFADD__(v14, 1))
      {
        OUTLINED_FUNCTION_47_6();
        if (v44 == v45)
        {
          v97 = OUTLINED_FUNCTION_241();
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(v97, &qword_1CA985B78);
          OUTLINED_FUNCTION_48_4(v98);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_134_2();
        if (v47)
        {
          v14 = v46;
          goto LABEL_12;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_12_0();
LABEL_41:
      v141 = v12[119];
      v142 = qword_1EC442010;
      v141[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
      v141[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
      *v141 = v142;
      v141[5] = 0;
      v141[6] = v18;
      OUTLINED_FUNCTION_13_13();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEE6DFA0](v143, v144, v145);
    }

    v43 = v12[198];
LABEL_12:
    v48 = OUTLINED_FUNCTION_26_9(v43);
    v49(v48);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
    v51 = OUTLINED_FUNCTION_28_7(v50);
    v52(v51);
    v53 = OUTLINED_FUNCTION_67();
    v41 = &qword_1EC444D20;
    __swift_storeEnumTagSinglePayload(v53, v54, v55, &qword_1EC444D20);
    sub_1CA94C218();
    v99 = v167;
LABEL_13:
    OUTLINED_FUNCTION_85_2(v99);
    v56 = OUTLINED_FUNCTION_125();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
    OUTLINED_FUNCTION_88_1(v58);
    if (v66)
    {
      OUTLINED_FUNCTION_84();
      sub_1CA94B0F8();
      v100 = OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_49_3(v100);
      v101 = OUTLINED_FUNCTION_256();
      if (v20)
      {
        OUTLINED_FUNCTION_96_3();
        v166 = v103;
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_38_6(v104);
        OUTLINED_FUNCTION_100_2();

        v105 = OUTLINED_FUNCTION_99_2();
        v106(v105);
        OUTLINED_FUNCTION_2_26();
        sub_1CA3D3628(&qword_1CA985B78, v107);
        v108 = OUTLINED_FUNCTION_200_1();
        v109(v108);
        v110 = OUTLINED_FUNCTION_199_1();
        v111(v110);
        v112 = OUTLINED_FUNCTION_205_1();
        v113(v112);

        OUTLINED_FUNCTION_76_2();
        v114 = v20;
        sub_1CA949F68();
        sub_1CA94CC18();
        OUTLINED_FUNCTION_228();
        if (OUTLINED_FUNCTION_216_0())
        {
          OUTLINED_FUNCTION_150_0();
          v115 = OUTLINED_FUNCTION_131();
          OUTLINED_FUNCTION_230(5.7779e-34);
          v116 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_106_2(v116);
          OUTLINED_FUNCTION_79_2(&dword_1CA256000, v117, v18, "WFRemoteAppIntentExecutionAction: Failed: %@");
          sub_1CA27080C(v115, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_59_4();
          OUTLINED_FUNCTION_60();
        }

        OUTLINED_FUNCTION_95_2();
        v118 = OUTLINED_FUNCTION_65_3();
        v119(v118);
        v120 = sub_1CA948AC8();
        OUTLINED_FUNCTION_158_2(v120, sel_finishRunningWithError_);

        OUTLINED_FUNCTION_0_26();
        OUTLINED_FUNCTION_7_16();

        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_23_0();

        return v122(v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12);
      }

      else
      {
        OUTLINED_FUNCTION_8_11(v101, v102);
        sub_1CA9498B8();
        qword_1CA985B78 = v17;
        unk_1CA985B80 = &qword_1EC444D20;
        v147 = *MEMORY[0x1E698AE18];
        v148 = OUTLINED_FUNCTION_64_3();
        v149(v148);
        objc_opt_self();
        OUTLINED_FUNCTION_220();
        v150 = OUTLINED_FUNCTION_226([&qword_1CA985B78 defaultEnvironment], &qword_1EC444D28);
        OUTLINED_FUNCTION_124_2(v150, MEMORY[0x1E698AE78]);
        v151 = *MEMORY[0x1E698AE10];
        v152 = OUTLINED_FUNCTION_63_3();
        v153(v152);
        OUTLINED_FUNCTION_20_0();
        sub_1CA949898();
        v154 = *(MEMORY[0x1E698AE20] + 4);
        v155 = swift_task_alloc();
        v156 = OUTLINED_FUNCTION_160_1(v155);
        *v156 = v157;
        OUTLINED_FUNCTION_4_25(v156);
        OUTLINED_FUNCTION_23_0();

        return MEMORY[0x1EEDEBED0](v158, v159, v160, v161, v162, v163, v164, v165, a9, a10, a11, a12);
      }
    }

    else
    {
      OUTLINED_FUNCTION_21_10();
      OUTLINED_FUNCTION_101_2(v59);
      v60();
      v61 = sub_1CA94A1A8();
      OUTLINED_FUNCTION_195_1(v61);
      while (1)
      {
        if (v14 == v41)
        {

          goto LABEL_26;
        }

        if (v41 >= v20[2])
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_15_7();
        v63 = OUTLINED_FUNCTION_131_2(v62);
        v64(v63);
        sub_1CA94B228();
        OUTLINED_FUNCTION_206_1();
        v66 = v66 && v65 == v25;
        if (v66)
        {
          break;
        }

        OUTLINED_FUNCTION_151_3();
        OUTLINED_FUNCTION_255();
        if (v21)
        {
          goto LABEL_25;
        }

        v67 = OUTLINED_FUNCTION_39_4();
        v68(v67);
        v41 = (v41 + 1);
      }

LABEL_25:

      v69 = OUTLINED_FUNCTION_25_7();
      v70(v69);
LABEL_26:
      OUTLINED_FUNCTION_130_1();
      v71 = v12[136];
      OUTLINED_FUNCTION_119_1(v72, v73);
      v74 = OUTLINED_FUNCTION_22_9(v71);
      v75(v74);
      v76 = *(v71 + 88);
      v13 = (v71 + 88);
      v77 = OUTLINED_FUNCTION_20_0();
      if (v78(v77) != v21)
      {
        OUTLINED_FUNCTION_98_2();
        if (!v66)
        {
          v21 = v12[126];

          v20 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
          OUTLINED_FUNCTION_1_23();
          sub_1CA3D3590(&qword_1EC444C20, v90);
          OUTLINED_FUNCTION_52_4();
          OUTLINED_FUNCTION_167_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
          v91 = OUTLINED_FUNCTION_70_6();
          OUTLINED_FUNCTION_168_1(v91, 8, v92, v93);
          sub_1CA27080C(v21, &qword_1EC444D00, &qword_1CA988B80);
          v94 = *(v14 + 8);
          v14 += 8;
          v95 = OUTLINED_FUNCTION_3_3();
          v96(v95);
          continue;
        }

        v79 = OUTLINED_FUNCTION_54_2();
        v80(v79);
        v81 = OUTLINED_FUNCTION_103_1();
        v82(v81);
        if (!OUTLINED_FUNCTION_164_1([(uint8_t *)v13 variableSource]))
        {
          OUTLINED_FUNCTION_129_1();

          v20 = type metadata accessor for WFRemoteAppIntentExecutionActionError(0);
          OUTLINED_FUNCTION_1_23();
          sub_1CA3D3590(&qword_1EC444C20, v83);
          OUTLINED_FUNCTION_52_4();
          OUTLINED_FUNCTION_167_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
          v84 = OUTLINED_FUNCTION_70_6();
          OUTLINED_FUNCTION_168_1(v84, 5, v85, v86);
          v87 = *(v13 + 1);
          v13 += 8;
          v88 = OUTLINED_FUNCTION_107_0();
          v89(v88);
          sub_1CA27080C(v17, &qword_1EC444D00, &qword_1CA988B80);
          continue;
        }

        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_215(&qword_1EC444D00, &qword_1CA988B80, v139);
        v140 = qword_1EC442008;
        swift_unknownObjectRetain();
        if (v140 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_49;
      }

      v130 = OUTLINED_FUNCTION_11_13();
      v131(v130);
      v132 = *(v21 + 32);
      v133 = OUTLINED_FUNCTION_13_0();
      v134(v133);
      v135 = swift_task_alloc();
      v136 = OUTLINED_FUNCTION_161_0(v135);
      *v136 = v137;
      OUTLINED_FUNCTION_5_22(v136);
      OUTLINED_FUNCTION_23_0();

      return TypedValueTransformer.transform(input:with:)();
    }
  }
}

uint64_t sub_1CA3C3CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 1712);
  if (v13)
  {
    v14 = *(v12 + 1680);
    v15 = *(v12 + 1656);
    (*(*(v12 + 968) + 8))(*(v12 + 976), *(v12 + 960));
    swift_unknownObjectRelease();

    v16 = *&v13[OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_value];
    v255 = *(v12 + 1696);
    v17 = *(v12 + 1632);
    v18 = *(v12 + 1624);
    v19 = *(v12 + 1592);
    v20 = *(v12 + 896);
    v21 = *(v12 + 888);
    v22 = *(v12 + 872);
    v23 = *(v12 + 864);
    *(v12 + 472) = v16;
    sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
    v252 = v16;
    OUTLINED_FUNCTION_104();
    sub_1CA949968();
    (*(v22 + 16))(v21, v20, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v12 + 1592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = *(v25 + 16);
      OUTLINED_FUNCTION_160();
      sub_1CA2E54F4();
      v25 = v56;
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_64(v26);
      OUTLINED_FUNCTION_160();
      sub_1CA2E54F4();
      v25 = v57;
    }

    v28 = *(v12 + 1112);
    v37 = *(v12 + 1088);
    v29 = *(v12 + 1080);
    v30 = *(v12 + 1008);
    v31 = *(v12 + 896);
    v250 = *(v12 + 888);
    v32 = *(v12 + 872);
    v33 = *(v12 + 864);

    v34 = *(v32 + 8);
    v35 = OUTLINED_FUNCTION_201();
    v36(v35);
    sub_1CA27080C(v30, &qword_1EC444D00, &qword_1CA988B80);
    v38 = *(v37 + 8);
    LOBYTE(v37) = v37 + 8;
    v38(v28, v29);
    *(v25 + 16) = v27 + 1;
    (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, v250, v33);
    OUTLINED_FUNCTION_240();
    *(v12 + 1592) = v25;
    v40 = v255;
  }

  else
  {
    v41 = *(v12 + 1680);
    v42 = *(v12 + 1656);
    v43 = *(v12 + 1632);
    v44 = *(v12 + 1008);
    v45 = *(v12 + 976);
    v46 = *(v12 + 968);
    v47 = *(v12 + 960);

    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_1_23();
    sub_1CA3D3590(v48, v49);
    OUTLINED_FUNCTION_23_10();
    swift_allocError();
    OUTLINED_FUNCTION_191();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
    v50 = OUTLINED_FUNCTION_70_6();
    __swift_storeEnumTagSinglePayload(v50, 3, 8, v51);
    swift_willThrow();
    v248 = 0;

    swift_unknownObjectRelease();
    v52 = *(v46 + 8);
    v53 = OUTLINED_FUNCTION_70();
    v54(v53);
    v31 = 0;
LABEL_32:
    sub_1CA27080C(v44, &qword_1EC444D00, &qword_1CA988B80);
LABEL_34:
    v140 = *(v12 + 1648);
    v141 = *(v12 + 1640);
    v142 = *(v12 + 1488);
    v143 = *(v12 + 1408);
    v144 = *(v12 + 1112);
    v145 = *(v12 + 1096);
    v146 = *(v12 + 1080);
    sub_1CA949C58();
    v147 = OUTLINED_FUNCTION_188();
    (v141)(v147);
    v148 = v31;
    v28 = sub_1CA949F68();
    v149 = sub_1CA94CC18();

    os_log_type_enabled(v28, v149);
    v150 = *(v12 + 1408);
    OUTLINED_FUNCTION_183_0();
    v151 = *(v12 + 1112);
    v152 = *(v12 + 1096);
    v37 = *(v12 + 1088);
    v153 = *(v12 + 1080);
    if (v154)
    {
      v253 = *(v12 + 1112);
      v155 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_29_4();
      *v155 = 136315394;
      sub_1CA94AF98();
      v251 = v150;
      LODWORD(v249) = v149;
      v156 = *(v37 + 8);
      LOBYTE(v37) = v37 + 8;
      v156(v152, v153);
      v157 = OUTLINED_FUNCTION_125();
      v160 = sub_1CA26B54C(v157, v158, v159);

      *(v155 + 4) = v160;
      *(v155 + 12) = 2080;
      swift_getErrorValue();
      v161 = OUTLINED_FUNCTION_217_0();
      v163 = OUTLINED_FUNCTION_212_0(v161, v162);

      *(v155 + 14) = v163;
      _os_log_impl(&dword_1CA256000, v28, v149, "WFRemoteAppIntentExecutionAction: Failed to convert typed value: (%s) to link value due to error: %s.", v155, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_60();

      (*(v141 + 8))(v251, v254);
      v156(v253, v153);
    }

    else
    {

      v164 = *(v37 + 8);
      LOBYTE(v37) = v37 + 8;
      v28 = v164;
      (v164)(v152, v153);
      (*(v141 + 8))(v150, v254);
      (v164)(v151, v153);
    }

    OUTLINED_FUNCTION_240();
  }

  *(v12 + 1600) = v40;
  v254 = v40;
  if (!v39)
  {
    while (1)
    {
      v59 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v59 >= (((1 << *(v12 + 2044)) + 63) >> 6))
      {
        v165 = *(v12 + 1128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
        OUTLINED_FUNCTION_121_1();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
        v66 = 0;
        goto LABEL_15;
      }

      ++v31;
      if (*(*(v12 + 1584) + 8 * v59 + 64))
      {
        v31 = v59;
        goto LABEL_14;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_12_0();
LABEL_49:
    v218 = *(v12 + 952);
    v219 = qword_1EC442010;
    v218[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
    v218[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
    *v218 = v219;
    v218[5] = 0;
    v218[6] = v28;
    OUTLINED_FUNCTION_13_13();
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_23_0();

    return MEMORY[0x1EEE6DFA0](v220, v221, v222);
  }

  v58 = *(v12 + 1584);
LABEL_14:
  v60 = *(v12 + 1128);
  v61 = *(v12 + 1120);
  v62 = *(v12 + 1088);
  v63 = *(v12 + 1080);
  OUTLINED_FUNCTION_186_1();
  v66 = v65 & v64;
  v68 = v67 | (v31 << 6);
  v70 = *(v69 + 48);
  v71 = *(v69 + 56);
  v72 = (v70 + 16 * v68);
  v37 = *v72;
  v73 = v72[1];
  OUTLINED_FUNCTION_238(v68);
  v74(v61);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
  v76 = *(v75 + 48);
  *v60 = v37;
  *(v60 + 1) = v73;
  (*(v62 + 32))(&v60[v76], v61, v63);
  v77 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v75);
  sub_1CA94C218();
LABEL_15:
  *(v12 + 1616) = v31;
  *(v12 + 1608) = v66;
  v80 = *(v12 + 1136);
  sub_1CA3D3520(*(v12 + 1128), v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D20, &qword_1CA985B78);
  OUTLINED_FUNCTION_49(v80, 1, v81);
  if (v95)
  {
    v170 = *(v12 + 1584);
    v171 = *(v12 + 1272);
    v172 = *(v12 + 1040);
    v173 = *(v12 + 1016);
    v174 = *(v12 + 488);

    sub_1CA94B0F8();
    sub_1CA949778();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
    OUTLINED_FUNCTION_119();
    sub_1CA949758();
    v179 = sub_1CA3C09E4();
    if (v254)
    {
      OUTLINED_FUNCTION_96_3();
      v243 = v181;
      OUTLINED_FUNCTION_9_14();
      v246 = v182;
      v247 = v183;
      OUTLINED_FUNCTION_78_1();
      v244 = v184;
      v245 = v185;
      OUTLINED_FUNCTION_100_2();

      v186 = OUTLINED_FUNCTION_99_2();
      v187(v186);
      OUTLINED_FUNCTION_2_26();
      sub_1CA3D3628(v31, v188);
      v248(v245, v244);
      v249(v247, v246);
      v189 = OUTLINED_FUNCTION_205_1();
      v190(v189);

      OUTLINED_FUNCTION_76_2();
      v191 = v254;
      sub_1CA949F68();
      sub_1CA94CC18();
      OUTLINED_FUNCTION_228();
      if (OUTLINED_FUNCTION_216_0())
      {
        OUTLINED_FUNCTION_150_0();
        v192 = OUTLINED_FUNCTION_131();
        OUTLINED_FUNCTION_230(5.7779e-34);
        v193 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_106_2(v193);
        OUTLINED_FUNCTION_79_2(&dword_1CA256000, v194, v37, "WFRemoteAppIntentExecutionAction: Failed: %@");
        sub_1CA27080C(v192, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_59_4();
        OUTLINED_FUNCTION_60();
      }

      OUTLINED_FUNCTION_95_2();
      v195 = OUTLINED_FUNCTION_65_3();
      v196(v195);
      v197 = sub_1CA948AC8();
      OUTLINED_FUNCTION_158_2(v197, sel_finishRunningWithError_);

      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_72_1();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_23_0();

      return v199(v198, v199, v200, v201, v202, v203, v204, v205, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_8_11(v179, v180);
      sub_1CA9498B8();
      *v31 = v174;
      *(v31 + 8) = v174;
      v224 = *MEMORY[0x1E698AE18];
      v225 = OUTLINED_FUNCTION_64_3();
      v226(v225);
      objc_opt_self();
      OUTLINED_FUNCTION_220();
      v227 = OUTLINED_FUNCTION_226([v31 defaultEnvironment], &qword_1EC444D28);
      OUTLINED_FUNCTION_124_2(v227, MEMORY[0x1E698AE78]);
      v228 = *MEMORY[0x1E698AE10];
      v229 = OUTLINED_FUNCTION_63_3();
      v230(v229);
      OUTLINED_FUNCTION_20_0();
      sub_1CA949898();
      v231 = *(MEMORY[0x1E698AE20] + 4);
      v232 = swift_task_alloc();
      v233 = OUTLINED_FUNCTION_160_1(v232);
      *v233 = v234;
      OUTLINED_FUNCTION_4_25(v233);
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEDEBED0](v235, v236, v237, v238, v239, v240, v241, v242, a9, a10, a11, a12);
    }
  }

  else
  {
    v82 = *(v12 + 1328);
    v83 = *(v12 + 1136);
    v84 = *(v12 + 1112);
    v85 = *(v12 + 1088);
    v86 = *(v12 + 1080);
    v28 = *v83;
    *(v12 + 1624) = *v83;
    v87 = *(v83 + 8);
    *(v12 + 1632) = v87;
    (*(v85 + 32))(v84, v83 + *(v81 + 48), v86);
    v88 = sub_1CA94A1A8();
    v89 = 0;
    v90 = *(v88 + 16);
    while (1)
    {
      if (v90 == v89)
      {

        v99 = 1;
        goto LABEL_28;
      }

      if (v89 >= *(v88 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_15_7();
      v92 = OUTLINED_FUNCTION_185_1(v91);
      v93(v92);
      v95 = sub_1CA94B228() == v28 && v94 == v87;
      if (v95)
      {
        break;
      }

      v96 = sub_1CA94D7F8();

      if (v96)
      {
        goto LABEL_27;
      }

      v97 = OUTLINED_FUNCTION_39_4();
      v98(v97);
      ++v89;
    }

LABEL_27:

    v100 = OUTLINED_FUNCTION_25_7();
    v101(v100);
    v99 = 0;
LABEL_28:
    v102 = *(v12 + 2032);
    v44 = *(v12 + 1112);
    v103 = *(v12 + 1104);
    v104 = *(v12 + 1088);
    v105 = *(v12 + 1080);
    __swift_storeEnumTagSinglePayload(*(v12 + 1008), v99, 1, *(v12 + 984));
    *(v12 + 1640) = *(v104 + 16);
    *(v12 + 1648) = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v106 = OUTLINED_FUNCTION_103_1();
    v107(v106);
    v108 = *(v104 + 88);
    v109 = OUTLINED_FUNCTION_69_0();
    if (v110(v109) != v102)
    {
      OUTLINED_FUNCTION_184_0();
      v111 = *(v12 + 1080);
      if (v112 != v113)
      {
        v132 = *(v12 + 1008);

        OUTLINED_FUNCTION_90_3();
        OUTLINED_FUNCTION_1_23();
        sub_1CA3D3590(v133, v134);
        OUTLINED_FUNCTION_23_10();
        swift_allocError();
        OUTLINED_FUNCTION_191();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
        v135 = OUTLINED_FUNCTION_70_6();
        __swift_storeEnumTagSinglePayload(v135, 8, 8, v136);
        swift_willThrow();
        v248 = v87;
        sub_1CA27080C(v132, &qword_1EC444D00, &qword_1CA988B80);
        v137 = *(v90 + 8);
        v138 = OUTLINED_FUNCTION_61();
        v139(v138);
        v31 = v87;
        goto LABEL_34;
      }

      v114 = *(v12 + 976);
      v115 = *(v12 + 968);
      v116 = *(v12 + 960);
      v117 = *(v12 + 488);
      v118 = *(v90 + 96);
      v119 = OUTLINED_FUNCTION_61();
      v120(v119);
      (*(v115 + 32))(v114, v44, v116);
      v121 = OUTLINED_FUNCTION_164_1([v117 variableSource]);
      if (!v121)
      {
        v122 = *(v12 + 976);
        v123 = *(v12 + 968);
        v124 = *(v12 + 960);

        OUTLINED_FUNCTION_90_3();
        OUTLINED_FUNCTION_1_23();
        sub_1CA3D3590(v125, v126);
        OUTLINED_FUNCTION_23_10();
        v31 = swift_allocError();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
        v127 = OUTLINED_FUNCTION_70_6();
        __swift_storeEnumTagSinglePayload(v127, 5, 8, v128);
        swift_willThrow();
        v248 = v31;
        v129 = *(v123 + 8);
        v130 = OUTLINED_FUNCTION_70();
        v131(v130);
        goto LABEL_32;
      }

      v28 = v121;
      v216 = *(*(v12 + 944) + 24);
      OUTLINED_FUNCTION_215(&qword_1EC444D00, &qword_1CA988B80, *(v12 + 952));
      v217 = qword_1EC442008;
      swift_unknownObjectRetain();
      if (v217 == -1)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    }

    v207 = OUTLINED_FUNCTION_11_13();
    v208(v207);
    v209 = *(v105 + 32);
    v210 = OUTLINED_FUNCTION_13_0();
    v211(v210);
    v212 = swift_task_alloc();
    v213 = OUTLINED_FUNCTION_161_0(v212);
    *v213 = v214;
    OUTLINED_FUNCTION_5_22(v213);
    OUTLINED_FUNCTION_23_0();

    return TypedValueTransformer.transform(input:with:)();
  }
}