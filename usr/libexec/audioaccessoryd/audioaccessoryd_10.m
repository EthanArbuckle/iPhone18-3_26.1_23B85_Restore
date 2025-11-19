uint64_t sub_10017B128(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v175 = *(v4 - 8);
  v176 = v4;
  v5 = *(v175 + 64);
  __chkstk_darwin(v4);
  v174 = (&v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v173 = (&v160 - v8);
  v9 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v171 = *(v9 - 8);
  v10 = *(v171 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceSupportInformationRecord();
  v172 = *(v13 - 8);
  v14 = *(v172 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for URL();
  v160 = *(v164 - 8);
  v17 = *(v160 + 64);
  __chkstk_darwin(v164);
  v163 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v165 = &v160 - v21;
  v161 = type metadata accessor for DeviceRecord();
  v168 = *(v161 - 8);
  v22 = *(v168 + 64);
  __chkstk_darwin(v161);
  v170 = (&v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v177 = (&v160 - v25);
  v169 = type metadata accessor for MagicPairingSettingsRecord();
  *&v162 = *(v169 - 8);
  v26 = *(v162 + 64);
  __chkstk_darwin(v169);
  v166 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v160 - v29;
  v31 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100226100;
  type metadata accessor for AADeviceRecord();
  v33 = Array.description.getter();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000EE954();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  v36 = sub_10017E820(a1, sub_1001C4D8C);
  v167 = v2;
  if (v36)
  {
    v178 = _swiftEmptyArrayStorage;
    v37 = v36[2];
    if (v37)
    {
      v38 = &v30[*(v169 + 24)];
      v39 = v36 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v32 = *(v162 + 72);
      v40 = _swiftEmptyArrayStorage;
      do
      {
        sub_1001CC14C(v39, v30, type metadata accessor for MagicPairingSettingsRecord);
        v41 = *v38 == 0xD000000000000011 && 0x8000000100267AA0 == *(v38 + 1);
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1001CC1B4(v30, type metadata accessor for MagicPairingSettingsRecord);
        }

        else
        {
          v31 = sub_10010CFB8();
          sub_1001CC1B4(v30, type metadata accessor for MagicPairingSettingsRecord);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v177 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = v178;
        }

        v39 += v32;
        --v37;
      }

      while (v37);

      v2 = v167;
    }

    else
    {

      v40 = _swiftEmptyArrayStorage;
    }

    v72 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v73 = *(v2 + v72);
    if (v73 >> 62)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
      if (!v74)
      {
      }
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v74)
      {
      }
    }

    if (v74 >= 1)
    {

      for (i = 0; i != v74; ++i)
      {
        if ((v73 & 0xC000000000000001) != 0)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v76 = *(v73 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v76 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
        {
          sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v76 magicPairingRecordsUpdatedWithRecords:isa];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_203;
    }

    goto LABEL_125;
  }

  v42 = sub_10017E820(a1, sub_1001C4E14);
  if (v42)
  {
    v40 = _swiftEmptyArrayStorage;
    v178 = _swiftEmptyArrayStorage;
    v43 = v42[2];
    v175 = v43;
    v176 = v42;
    if (v43)
    {
      v44 = *(v161 + 28);
      v174 = (v177 + *(v161 + 24));
      v173 = (v177 + v44);
      v45 = *(v161 + 36);
      v172 = v177 + *(v161 + 32);
      v46 = (v177 + v45);
      v47 = (v177 + *(v161 + 40));
      v48 = (v177 + *(v161 + 44));
      v49 = v42 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
      v171 = *(v168 + 72);
      v50 = v177;
      do
      {
        sub_1001CC14C(v49, v50, type metadata accessor for DeviceRecord);
        v51 = *v174;
        v52 = v174[1];
        v53 = objc_allocWithZone(BTCloudDevice);
        v54 = String._bridgeToObjectiveC()();
        v55 = [v53 initWithBluetoothAddress:v54];

        v56 = *v173;
        v57 = v173[1];
        v58 = String._bridgeToObjectiveC()();
        [v55 setNickname:v58];

        v59 = *v172;
        v60 = *(v172 + 8);
        v61 = String._bridgeToObjectiveC()();
        [v55 setModelNumber:v61];

        v62 = *v46;
        v63 = v46[1];
        v64 = String._bridgeToObjectiveC()();
        [v55 setManufacturer:v64];

        v65 = *v47;
        v66 = v47[1];
        v67 = String._bridgeToObjectiveC()();
        [v55 setProductID:v67];

        v68 = *v48;
        v69 = v48[1];
        v70 = String._bridgeToObjectiveC()();
        [v55 setVendorID:v70];

        sub_1001CC1B4(v50, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v71 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v49 += v171;
        --v43;
      }

      while (v43);
      v40 = v178;
      v2 = v167;
    }

    v78 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v171 = v78;
    v74 = *(v2 + v78);
    v32 = v165;
    v31 = v170;
    if (!(v74 >> 62))
    {
      v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v79)
      {
LABEL_127:

        v40 = v168;
        if (!v175)
        {
        }

        v129 = 0;
        v177 = (v31 + *(v161 + 24));
        v130 = v176;
        v173 = (v176 + ((*(v168 + 80) + 32) & ~*(v168 + 80)));
        v174 = 0x8000000100267AA0;
        v161 = v160 + 16;
        v160 += 8;
        v172 = v162 + 48;
        v162 = xmmword_1002290F0;
        while (1)
        {
          if (v129 >= v130[2])
          {
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            v12 = _CocoaArrayWrapper.endIndex.getter();
            if (!v12)
            {
            }

LABEL_94:
            if (v12 >= 1)
            {

              for (j = 0; j != v12; ++j)
              {
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v120 = *(v40 + 8 * j + 32);
                  swift_unknownObjectRetain();
                }

                if ([v120 respondsToSelector:{"deviceSupportInformationRecordsUpdatedWithRecords:", v160}])
                {
                  sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
                  swift_unknownObjectRetain();
                  v121 = Array._bridgeToObjectiveC()().super.isa;
                  [v120 deviceSupportInformationRecordsUpdatedWithRecords:v121];
                  swift_unknownObjectRelease_n();
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }
            }

            __break(1u);
LABEL_168:
            v88 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_59;
          }

          sub_1001CC14C(v173 + *(v40 + 72) * v129, v31, type metadata accessor for DeviceRecord);
          v131 = *v177 == 0xD000000000000011 && v174 == v177[1];
          if (!v131 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_100103934();
            if ([objc_opt_self() isFirstUnlocked])
            {
              sub_100192340();
              if (qword_1002F7A00 != -1)
              {
                swift_once();
              }

              v132 = v164;
              v133 = sub_1000EE91C(v164, qword_100300BA8);
              v134 = v163;
              (*v161)(v163, v133, v132);
              v135 = sub_10018C984(v134);

              v136 = (*v160)(v134, v132);
            }

            else
            {
              static os_log_type_t.error.getter();
              if (qword_1002F7AE8 != -1)
              {
                swift_once();
              }

              v135 = _swiftEmptyArrayStorage;
              os_log(_:dso:log:_:_:)();
            }

            __chkstk_darwin(v136);
            v31 = v170;
            *(&v160 - 2) = v170;
            sub_10017D118(sub_1001CE134, v135, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v32);

            if ((*v172)(v32, 1, v169) != 1)
            {
              sub_1001CC214(v32, v166, type metadata accessor for MagicPairingSettingsRecord);
              sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
              v32 = swift_allocObject();
              *(v32 + 16) = v162;
              *(v32 + 32) = sub_10010CFB8();
              v40 = *(v2 + v171);
              if (v40 >> 62)
              {
                if (v40 < 0)
                {
                  v140 = *(v2 + v171);
                }

                v31 = _CocoaArrayWrapper.endIndex.getter();
                if (!v31)
                {
                  goto LABEL_159;
                }

LABEL_147:
                if (v31 < 1)
                {
                  goto LABEL_163;
                }

                for (k = 0; k != v31; ++k)
                {
                  if ((v40 & 0xC000000000000001) != 0)
                  {
                    v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v138 = *(v40 + 8 * k + 32);
                    swift_unknownObjectRetain();
                  }

                  if ([v138 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v160}])
                  {
                    sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
                    swift_unknownObjectRetain();
                    v139 = Array._bridgeToObjectiveC()().super.isa;
                    [v138 magicPairingRecordsUpdatedWithRecords:v139];
                    swift_unknownObjectRelease_n();
                  }

                  else
                  {
                    swift_unknownObjectRelease();
                  }
                }
              }

              else
              {
                v31 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v31)
                {
                  goto LABEL_147;
                }

LABEL_159:
              }

              sub_1001CC1B4(v166, type metadata accessor for MagicPairingSettingsRecord);

              v2 = v167;
              v40 = v168;
              v32 = v165;
              v31 = v170;
              goto LABEL_130;
            }

            sub_1000EEE6C(v32, &unk_1002F9C30, &qword_1002299A0);
            v40 = v168;
          }

LABEL_130:
          ++v129;
          sub_1001CC1B4(v31, type metadata accessor for DeviceRecord);
          v130 = v176;
          if (v129 == v175)
          {
          }
        }
      }

LABEL_38:
      if (v79 < 1)
      {
        goto LABEL_164;
      }

      for (m = 0; m != v79; ++m)
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v81 = *(v74 + 8 * m + 32);
          swift_unknownObjectRetain();
        }

        if ([v81 respondsToSelector:{"devicesUpdatedWithRecords:", v160}])
        {
          sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
          swift_unknownObjectRetain();
          v82 = Array._bridgeToObjectiveC()().super.isa;
          [v81 devicesUpdatedWithRecords:v82];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v2 = v167;
      v32 = v165;
      v31 = v170;
      goto LABEL_127;
    }

LABEL_126:
    v79 = _CocoaArrayWrapper.endIndex.getter();
    if (!v79)
    {
      goto LABEL_127;
    }

    goto LABEL_38;
  }

  v83 = sub_10017E820(a1, sub_1001C4DD0);
  if (!v83)
  {
    v87 = sub_10017E820(a1, sub_1001C4E78);
    if (v87)
    {
      if (v87[2])
      {
        sub_1001CC14C(v87 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v12, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v32 = sub_10013B008();
        swift_unknownObjectWeakInit();
        v179 = _swiftEmptyArrayStorage;
        if (v32 >> 62)
        {
          goto LABEL_168;
        }

        v88 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
        swift_beginAccess();
        v40 = _swiftEmptyArrayStorage;
        v166 = v12;
        if (v88)
        {
          v89 = 0;
          v177 = (v32 & 0xC000000000000001);
          v172 = v32 & 0xFFFFFFFFFFFFFF8;
          v169 = v160 + 8;
          v170 = (v160 + 16);
          v74 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
          v171 = v88;
          v168 = v32;
          while (1)
          {
            if (v177)
            {
              v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v89 >= *(v172 + 16))
              {
                goto LABEL_124;
              }

              v90 = *(v32 + 8 * v89 + 32);
            }

            v91 = v90;
            v92 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v94 = Strong;
              sub_100103934();
              v31 = objc_opt_self();
              if ([v31 *(v74 + 272)])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v95 = v164;
                v96 = sub_1000EE91C(v164, qword_100300B80);
                v97 = v163;
                (*v170)(v163, v96, v95);
                v98 = sub_10018F6C8(v97);

                (*v169)(v97, v95);
                if (v98[2])
                {
                  v99 = v173;
                  sub_1001CC14C(v98 + ((*(v175 + 80) + 32) & ~*(v175 + 80)), v173, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v100 = (v99 + *(v176 + 5));
                  v101 = *v100;
                  v102 = v100[1];
                  v103 = Data.subdata(in:)();
                  v105 = v104;
                  sub_1001CC1B4(v99, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v106.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v103, v105);
                }

                else
                {

                  v106.super.isa = 0;
                }

                v32 = v168;
                v88 = v171;
                v74 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
              }

              else
              {
                static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();

                v106.super.isa = 0;
              }

              [v91 setMasterKey:{v106.super.isa, v160}];

              v107 = *&v94[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

              if ([v31 *(v74 + 272)])
              {
                sub_100192340();
                if (qword_1002F79E8 != -1)
                {
                  swift_once();
                }

                v108 = v164;
                v109 = sub_1000EE91C(v164, qword_100300B80);
                v110 = v163;
                (*v170)(v163, v109, v108);
                v31 = sub_10018F6C8(v110);

                (*v169)(v110, v108);
                if (*(v31 + 16))
                {
                  v111 = v174;
                  sub_1001CC14C(v31 + ((*(v175 + 80) + 32) & ~*(v175 + 80)), v174, type metadata accessor for LegacyAccountMagicKeysRecord);

                  v112 = (v111 + *(v176 + 5));
                  v113 = *v112;
                  v114 = v112[1];
                  v31 = Data.subdata(in:)();
                  v116 = v115;
                  sub_1001CC1B4(v111, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v117.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000EF870(v31, v116);
                }

                else
                {

                  v117.super.isa = 0;
                }

                v88 = v171;
                v74 = 0x1002EE000;
              }

              else
              {
                static os_log_type_t.error.getter();
                if (qword_1002F7AE8 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();

                v117.super.isa = 0;
              }

              [v91 setMasterHint:v117.super.isa];

              v2 = v167;
            }

            v40 = &v179;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v89;
            if (v92 == v88)
            {
              goto LABEL_105;
            }
          }

          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_105:

        swift_unknownObjectWeakDestroy();
        v122 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
        result = swift_beginAccess();
        v177 = v122;
        v124 = *(v2 + v122);
        if (v124 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v125 = result;
          if (!result)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v125)
          {
            goto LABEL_170;
          }
        }

        if (v125 < 1)
        {
          __break(1u);
          goto LABEL_206;
        }

        for (n = 0; n != v125; ++n)
        {
          if ((v124 & 0xC000000000000001) != 0)
          {
            v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v127 = *(v124 + 8 * n + 32);
            swift_unknownObjectRetain();
          }

          if ([v127 respondsToSelector:{"magicPairingRecordsUpdatedWithRecords:", v160}])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v128 = Array._bridgeToObjectiveC()().super.isa;
            [v127 magicPairingRecordsUpdatedWithRecords:v128];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_170:

        v141 = sub_10013B008();
        v142 = v141;
        v179 = _swiftEmptyArrayStorage;
        if (v141 >> 62)
        {
          goto LABEL_186;
        }

        for (ii = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10); ii; ii = _CocoaArrayWrapper.endIndex.getter())
        {
          v144 = 0;
          while (1)
          {
            if ((v142 & 0xC000000000000001) != 0)
            {
              v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v144 >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_185;
              }

              v145 = *(v142 + 8 * v144 + 32);
            }

            v146 = v145;
            v147 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              break;
            }

            v148 = [v145 bluetoothAddress];
            if (!v148)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v148 = String._bridgeToObjectiveC()();
            }

            v149 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v148];

            v150 = [v146 name];
            [v149 setNickname:v150];

            v151 = [v146 productID];
            [v149 setProductID:v151];

            v152 = [v146 vendorID];
            [v149 setVendorID:v152];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v153 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v144;
            if (v147 == ii)
            {
              goto LABEL_187;
            }
          }

          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          ;
        }

LABEL_187:

        v154 = *(v177 + v167);
        if (v154 >> 62)
        {
          if (v154 < 0)
          {
            v159 = *(v177 + v167);
          }

          result = _CocoaArrayWrapper.endIndex.getter();
          v155 = result;
          if (result)
          {
LABEL_189:
            if (v155 >= 1)
            {

              for (jj = 0; jj != v155; ++jj)
              {
                if ((v154 & 0xC000000000000001) != 0)
                {
                  v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v157 = *(v154 + 8 * jj + 32);
                  swift_unknownObjectRetain();
                }

                if ([v157 respondsToSelector:{"devicesUpdatedWithRecords:", v160}])
                {
                  sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
                  swift_unknownObjectRetain();
                  v158 = Array._bridgeToObjectiveC()().super.isa;
                  [v157 devicesUpdatedWithRecords:v158];
                  swift_unknownObjectRelease_n();
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }

              goto LABEL_202;
            }

LABEL_206:
            __break(1u);
            return result;
          }
        }

        else
        {
          v155 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v155)
          {
            goto LABEL_189;
          }
        }

LABEL_202:
        sub_1001CC1B4(v166, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_203:
      }
    }

    return sub_1000F16CC(a1);
  }

  v178 = _swiftEmptyArrayStorage;
  v84 = v83[2];
  if (v84)
  {
    v85 = v83 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
    v31 = *(v172 + 72);
    do
    {
      sub_1001CC14C(v85, v16, type metadata accessor for DeviceSupportInformationRecord);
      sub_100109B20();
      sub_1001CC1B4(v16, type metadata accessor for DeviceSupportInformationRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v86 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v85 += v31;
      --v84;
    }

    while (v84);
  }

  v118 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v40 = *(v2 + v118);
  if (v40 >> 62)
  {
    goto LABEL_165;
  }

  v12 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_94;
  }
}

uint64_t sub_10017CE74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10017CF20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10017D118@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v30 = a6;
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 64);
  v17 = __chkstk_darwin(v13);
  v19 = &v26 - v18;
  v20 = *(a2 + 16);
  if (v20)
  {
    v28 = v15;
    v29 = a7;
    v21 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v27 = v16;
    v22 = *(v16 + 72);
    while (1)
    {
      sub_1001CC14C(v21, v19, a4);
      v23 = a1(v19);
      if (v7)
      {
        return sub_1001CC1B4(v19, a5);
      }

      if (v23)
      {
        break;
      }

      sub_1001CC1B4(v19, a5);
      v21 += v22;
      if (!--v20)
      {
        v24 = 1;
        a7 = v29;
        goto LABEL_10;
      }
    }

    a7 = v29;
    sub_1001CC214(v19, v29, v30);
    v24 = 0;
LABEL_10:
    v16 = v27;
    v15 = v28;
  }

  else
  {
    v24 = 1;
  }

  return (*(v16 + 56))(a7, v24, 1, v15, v17);
}

void *sub_10017D320(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void *sub_10017D434(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 bluetoothAddress];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = (a2 + *(a3(0) + 24));
      if (v10 == *v13 && v12 == v13[1])
      {

        return v7;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_10017D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10017D6AC(Class a1)
{
  v2 = type metadata accessor for URL();
  v101 = *(v2 - 8);
  v3 = *(v101 + 64);
  __chkstk_darwin(v2);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v99 = *(v6 - 8);
  v100 = v6;
  v7 = *(v99 + 64);
  __chkstk_darwin(v6);
  v97 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v93 - v10;
  v11 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v106 = *(v11 - 8);
  v12 = *(v106 + 8);
  __chkstk_darwin(v11);
  v94 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagicPairingSettingsRecord();
  v105 = *(v14 - 1);
  v15 = *(v105 + 64);
  __chkstk_darwin(v14);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100226100;
    v19 = Array.description.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000EE954();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = *(a1 + 2);
    v107 = _swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v22, 0);
    v23 = v107;
    if (!v22)
    {
      break;
    }

    v107 = _swiftEmptyArrayStorage;
    sub_1001C4E14(0, v22, 0);

    v107 = _swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v22, 0);

    sub_1001CC14C(a1 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v94, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v24 = sub_10013B008();
    swift_unknownObjectWeakInit();
    v108 = _swiftEmptyArrayStorage;
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    a1 = _swiftEmptyArrayStorage;
    if (!v25)
    {
LABEL_38:

      swift_unknownObjectWeakDestroy();
      v56 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
      v57 = v95;
      swift_beginAccess();
      v106 = v56;
      v58 = *(v56 + v57);
      if (v58 >> 62)
      {
        v59 = _CocoaArrayWrapper.endIndex.getter();
        if (!v59)
        {
          goto LABEL_78;
        }

LABEL_40:
        if (v59 >= 1)
        {

          for (i = 0; i != v59; ++i)
          {
            if ((v58 & 0xC000000000000001) != 0)
            {
              v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v62 = *(v58 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v62 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
              swift_unknownObjectRetain();
              isa = Array._bridgeToObjectiveC()().super.isa;
              [v62 magicPairingRecordsUpdatedWithRecords:isa];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_78;
        }

        __break(1u);
      }

      else
      {
        v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v59)
        {
          goto LABEL_40;
        }

LABEL_78:

        v75 = sub_10013B008();
        v76 = v75;
        v108 = _swiftEmptyArrayStorage;
        if (v75 >> 62)
        {
          goto LABEL_94;
        }

        for (j = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
        {
          v78 = 0;
          while (1)
          {
            if ((v76 & 0xC000000000000001) != 0)
            {
              v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v78 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

              v79 = *(v76 + 8 * v78 + 32);
            }

            v80 = v79;
            v81 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              break;
            }

            v82 = [v79 bluetoothAddress];
            if (!v82)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v82 = String._bridgeToObjectiveC()();
            }

            v83 = [objc_allocWithZone(BTCloudDevice) initWithBluetoothAddress:v82];

            v84 = [v80 name];
            [v83 setNickname:v84];

            v85 = [v80 productID];
            [v83 setProductID:v85];

            v86 = [v80 vendorID];
            [v83 setVendorID:v86];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v87 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v78;
            if (v81 == j)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          ;
        }

LABEL_95:

        v58 = *(v106 + v95);
        if (!(v58 >> 62))
        {
          v88 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v88)
          {
            goto LABEL_97;
          }

LABEL_109:

LABEL_110:
          sub_1001CC1B4(v94, type metadata accessor for LegacyMagicPairingSettingsRecords);
LABEL_111:
        }

        if ((v58 & 0x8000000000000000) != 0)
        {
          v92 = *(v106 + v95);
        }

        v88 = _CocoaArrayWrapper.endIndex.getter();
        if (!v88)
        {
          goto LABEL_109;
        }

LABEL_97:
        if (v88 >= 1)
        {

          for (k = 0; k != v88; ++k)
          {
            if ((v58 & 0xC000000000000001) != 0)
            {
              v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v90 = *(v58 + 8 * k + 32);
              swift_unknownObjectRetain();
            }

            if ([v90 respondsToSelector:"devicesUpdatedWithRecords:"])
            {
              sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
              swift_unknownObjectRetain();
              v91 = Array._bridgeToObjectiveC()().super.isa;
              [v90 devicesUpdatedWithRecords:v91];
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_110;
        }
      }

      __break(1u);
      goto LABEL_115;
    }

    v17 = 0;
    v104 = v24 & 0xFFFFFFFFFFFFFF8;
    v105 = v24 & 0xC000000000000001;
    v26 = v101;
    v101 += 8;
    v102 = (v26 + 16);
    v98 = v24;
    v103 = v25;
    while (1)
    {
      if (v105)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v104 + 16))
        {
          goto LABEL_74;
        }

        v27 = *(v24 + 8 * v17 + 32);
      }

      v14 = v27;
      v28 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        v106 = v14;
        sub_100103934();
        v31 = objc_opt_self();
        if ([v31 isFirstUnlocked])
        {
          sub_100192340();
          if (qword_1002F79E8 != -1)
          {
            swift_once();
          }

          v32 = sub_1000EE91C(v2, qword_100300B80);
          (*v102)(v5, v32, v2);
          v33 = sub_10018F6C8(v5);

          (*v101)(v5, v2);
          if (v33[2])
          {
            v34 = v96;
            sub_1001CC14C(v33 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v96, type metadata accessor for LegacyAccountMagicKeysRecord);

            v35 = (v34 + *(v100 + 20));
            v36 = *v35;
            v37 = v35[1];
            v38 = Data.subdata(in:)();
            v40 = v39;
            v41 = v34;
            v24 = v98;
            sub_1001CC1B4(v41, type metadata accessor for LegacyAccountMagicKeysRecord);
            v42.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_1000EF870(v38, v40);
LABEL_22:
            [v106 setMasterKey:v42.super.isa];

            v43 = *&v30[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

            if ([v31 isFirstUnlocked])
            {
              sub_100192340();
              if (qword_1002F79E8 != -1)
              {
                swift_once();
              }

              v44 = sub_1000EE91C(v2, qword_100300B80);
              (*v102)(v5, v44, v2);
              v45 = sub_10018F6C8(v5);

              (*v101)(v5, v2);
              if (v45[2])
              {
                v46 = v5;
                v47 = v2;
                v48 = v97;
                sub_1001CC14C(v45 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v97, type metadata accessor for LegacyAccountMagicKeysRecord);

                v49 = (v48 + *(v100 + 20));
                v50 = *v49;
                v51 = v49[1];
                v52 = Data.subdata(in:)();
                v54 = v53;
                v55 = v48;
                v2 = v47;
                v5 = v46;
                v24 = v98;
                sub_1001CC1B4(v55, type metadata accessor for LegacyAccountMagicKeysRecord);
                a1 = Data._bridgeToObjectiveC()().super.isa;
                sub_1000EF870(v52, v54);
              }

              else
              {

                a1 = 0;
              }

              v25 = v103;
            }

            else
            {
              static os_log_type_t.error.getter();
              v25 = v103;
              if (qword_1002F7AE8 != -1)
              {
                swift_once();
              }

              os_log(_:dso:log:_:_:)();

              a1 = 0;
            }

            v14 = v106;
            [v106 setMasterHint:a1];

            goto LABEL_33;
          }
        }

        else
        {
          static os_log_type_t.error.getter();
          if (qword_1002F7AE8 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
        }

        v42.super.isa = 0;
        goto LABEL_22;
      }

LABEL_33:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v17;
      if (v28 == v25)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v107 = _swiftEmptyArrayStorage;
  v63 = *(v23 + 16);
  if (v63)
  {
    v64 = (v17 + v14[6]);
    v65 = v23 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v66 = *(v105 + 72);
    do
    {
      sub_1001CC14C(v65, v17, type metadata accessor for MagicPairingSettingsRecord);
      v67 = *v64 == 0xD000000000000011 && 0x8000000100267AA0 == v64[1];
      if (v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1001CC1B4(v17, type metadata accessor for MagicPairingSettingsRecord);
      }

      else
      {
        sub_10010CFB8();
        sub_1001CC1B4(v17, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v106 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v65 += v66;
      --v63;
    }

    while (v63);
  }

  v68 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  v69 = v95;
  result = swift_beginAccess();
  v58 = *(v69 + v68);
  if (v58 >> 62)
  {
LABEL_115:
    result = _CocoaArrayWrapper.endIndex.getter();
    v71 = result;
    if (!result)
    {
    }

    goto LABEL_64;
  }

  v71 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
  }

LABEL_64:
  if (v71 >= 1)
  {

    for (m = 0; m != v71; ++m)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v73 = *(v58 + 8 * m + 32);
        swift_unknownObjectRetain();
      }

      if ([v73 respondsToSelector:"magicPairingRecordsUpdatedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v74 = Array._bridgeToObjectiveC()().super.isa;
        [v73 magicPairingRecordsUpdatedWithRecords:v74];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_111;
  }

  __break(1u);
  return result;
}

void *sub_10017E70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1001C4E58(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100162534(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001C4E58((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10017E820(unint64_t a1, void (*a2)(void, uint64_t, void))
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2(0, v5 & ~(v5 >> 63), 0);
  result = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    result = &_swiftEmptyArrayStorage;
    if (!v7)
    {
      return result;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v8)
    {
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_10017E918(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceRecord();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  type metadata accessor for SoundProfileRecord();
  v9 = Array.description.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = *(a1 + 16);
  v58 = &_swiftEmptyArrayStorage;
  sub_1001C4E14(0, v12, 0);
  v13 = v58;
  if (v12)
  {

    v58 = &_swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v12, 0);

    v58 = &_swiftEmptyArrayStorage;
    sub_1001C4D8C(0, v12, 0);

    v58 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v58 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();

    v58 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  v58 = &_swiftEmptyArrayStorage;
  v15 = *(v13 + 16);
  if (v15)
  {
    v52 = v2;
    v53 = v13;
    v16 = v4[7];
    v56 = &v57[v4[6]];
    v55 = &v57[v16];
    v17 = &v57[v4[8]];
    v18 = v5;
    v19 = &v57[v4[9]];
    v20 = &v57[v4[10]];
    v21 = &v57[v4[11]];
    v22 = v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v54 = *(v18 + 72);
    v23 = v57;
    do
    {
      sub_1001CC14C(v22, v23, type metadata accessor for DeviceRecord);
      v24 = *v56;
      v25 = *(v56 + 1);
      v26 = objc_allocWithZone(BTCloudDevice);
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 initWithBluetoothAddress:v27];

      v29 = *v55;
      v30 = *(v55 + 1);
      v31 = String._bridgeToObjectiveC()();
      [v28 setNickname:v31];

      v32 = *v17;
      v33 = *(v17 + 1);
      v34 = String._bridgeToObjectiveC()();
      [v28 setModelNumber:v34];

      v35 = *v19;
      v36 = *(v19 + 1);
      v37 = String._bridgeToObjectiveC()();
      [v28 setManufacturer:v37];

      v38 = *v20;
      v39 = *(v20 + 1);
      v40 = String._bridgeToObjectiveC()();
      [v28 setProductID:v40];

      v41 = *v21;
      v42 = *(v21 + 1);
      v43 = String._bridgeToObjectiveC()();
      [v28 setVendorID:v43];

      sub_1001CC1B4(v23, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v22 += v54;
      --v15;
    }

    while (v15);

    v2 = v52;
  }

  else
  {
  }

  v45 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v46 = *(v2 + v45);
  if (!(v46 >> 62))
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v47 = result;
  if (!result)
  {
  }

LABEL_14:
  if (v47 >= 1)
  {

    for (i = 0; i != v47; ++i)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(v46 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v50 respondsToSelector:"devicesRemovedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v50 devicesRemovedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10017EEAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MagicPairingSettingsRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceRecord();
  v66 = *(v9 - 1);
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  v13 = Array.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  v16 = *(a1 + 16);
  v70 = &_swiftEmptyArrayStorage;
  sub_1001C4E14(0, v16, 0);
  v17 = v70;
  if (v16)
  {
    v18 = v2;

    v70 = &_swiftEmptyArrayStorage;
    sub_1001C4DD0(0, v16, 0);

    v70 = &_swiftEmptyArrayStorage;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v19, v8, type metadata accessor for MagicPairingSettingsRecord);
      sub_10010CFB8();
      sub_1001CC1B4(v8, type metadata accessor for MagicPairingSettingsRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += v20;
      --v16;
    }

    while (v16);
    v22 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v23 = *(v18 + v22);
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
      }

      goto LABEL_10;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_10:
      if (v24 >= 1)
      {

        for (i = 0; i != v24; ++i)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v23 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v26 respondsToSelector:"magicPairingRecordsRemovedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v26 magicPairingRecordsRemovedWithRecords:isa];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_37:
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  v70 = &_swiftEmptyArrayStorage;
  v28 = *(v17 + 16);
  if (v28)
  {
    v64 = v2;
    v65 = v17;
    v29 = v9[7];
    v68 = &v69[v9[6]];
    v67 = &v69[v29];
    v30 = &v69[v9[8]];
    v31 = &v69[v9[9]];
    v32 = &v69[v9[10]];
    v33 = &v69[v9[11]];
    v34 = v17 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v66 = *(v66 + 72);
    v35 = v69;
    do
    {
      sub_1001CC14C(v34, v35, type metadata accessor for DeviceRecord);
      v36 = *v68;
      v37 = *(v68 + 1);
      v38 = objc_allocWithZone(BTCloudDevice);
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 initWithBluetoothAddress:v39];

      v41 = *v67;
      v42 = *(v67 + 1);
      v43 = String._bridgeToObjectiveC()();
      [v40 setNickname:v43];

      v44 = *v30;
      v45 = *(v30 + 1);
      v46 = String._bridgeToObjectiveC()();
      [v40 setModelNumber:v46];

      v47 = *v31;
      v48 = *(v31 + 1);
      v49 = String._bridgeToObjectiveC()();
      [v40 setManufacturer:v49];

      v50 = *v32;
      v51 = *(v32 + 1);
      v52 = String._bridgeToObjectiveC()();
      [v40 setProductID:v52];

      v53 = *v33;
      v54 = *(v33 + 1);
      v55 = String._bridgeToObjectiveC()();
      [v40 setVendorID:v55];

      sub_1001CC1B4(v35, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v34 += v66;
      --v28;
    }

    while (v28);

    v2 = v64;
  }

  else
  {
  }

  v57 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v23 = *(v2 + v57);
  if (!(v23 >> 62))
  {
    v59 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_28;
    }
  }

LABEL_42:
  result = _CocoaArrayWrapper.endIndex.getter();
  v59 = result;
  if (!result)
  {
  }

LABEL_28:
  if (v59 >= 1)
  {

    for (j = 0; j != v59; ++j)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v61 = *(v23 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if ([v61 respondsToSelector:"devicesRemovedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v62 = Array._bridgeToObjectiveC()().super.isa;
        [v61 devicesRemovedWithRecords:v62];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017F63C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceSupportInformationRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceRecord();
  v66 = *(v9 - 1);
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226100;
  v13 = Array.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  v16 = *(a1 + 16);
  v70 = &_swiftEmptyArrayStorage;
  sub_1001C4E14(0, v16, 0);
  v17 = v70;
  if (v16)
  {
    v18 = v2;

    v70 = &_swiftEmptyArrayStorage;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_1001CC14C(v19, v8, type metadata accessor for DeviceSupportInformationRecord);
      sub_100109B20();
      sub_1001CC1B4(v8, type metadata accessor for DeviceSupportInformationRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += v20;
      --v16;
    }

    while (v16);
    v22 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v23 = *(v18 + v22);
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
      }

      goto LABEL_10;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_10:
      if (v24 >= 1)
      {

        for (i = 0; i != v24; ++i)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v23 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v26 respondsToSelector:"deviceSupportInformationRecordsRemovedWithRecords:"])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v26 deviceSupportInformationRecordsRemovedWithRecords:isa];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_37:
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  v70 = &_swiftEmptyArrayStorage;
  v28 = *(v17 + 16);
  if (v28)
  {
    v64 = v2;
    v65 = v17;
    v29 = v9[7];
    v68 = &v69[v9[6]];
    v67 = &v69[v29];
    v30 = &v69[v9[8]];
    v31 = &v69[v9[9]];
    v32 = &v69[v9[10]];
    v33 = &v69[v9[11]];
    v34 = v17 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v66 = *(v66 + 72);
    v35 = v69;
    do
    {
      sub_1001CC14C(v34, v35, type metadata accessor for DeviceRecord);
      v36 = *v68;
      v37 = *(v68 + 1);
      v38 = objc_allocWithZone(BTCloudDevice);
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 initWithBluetoothAddress:v39];

      v41 = *v67;
      v42 = *(v67 + 1);
      v43 = String._bridgeToObjectiveC()();
      [v40 setNickname:v43];

      v44 = *v30;
      v45 = *(v30 + 1);
      v46 = String._bridgeToObjectiveC()();
      [v40 setModelNumber:v46];

      v47 = *v31;
      v48 = *(v31 + 1);
      v49 = String._bridgeToObjectiveC()();
      [v40 setManufacturer:v49];

      v50 = *v32;
      v51 = *(v32 + 1);
      v52 = String._bridgeToObjectiveC()();
      [v40 setProductID:v52];

      v53 = *v33;
      v54 = *(v33 + 1);
      v55 = String._bridgeToObjectiveC()();
      [v40 setVendorID:v55];

      sub_1001CC1B4(v35, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v34 += v66;
      --v28;
    }

    while (v28);

    v2 = v64;
  }

  else
  {
  }

  v57 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v23 = *(v2 + v57);
  if (!(v23 >> 62))
  {
    v59 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_28;
    }
  }

LABEL_42:
  result = _CocoaArrayWrapper.endIndex.getter();
  v59 = result;
  if (!result)
  {
  }

LABEL_28:
  if (v59 >= 1)
  {

    for (j = 0; j != v59; ++j)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v61 = *(v23 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if ([v61 respondsToSelector:"devicesRemovedWithRecords:"])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        v62 = Array._bridgeToObjectiveC()().super.isa;
        [v61 devicesRemovedWithRecords:v62];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017FDB0(unint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, char *a5, void (*a6)(uint64_t), char *a7, uint64_t (*a8)(uint64_t))
{
  v86 = a6;
  v87 = a8;
  v93 = a7;
  v94 = a5;
  v96 = a4;
  v92 = a3;
  v9 = type metadata accessor for MagicPairingSettingsRecord();
  v88 = *(v9 - 8);
  v10 = *(v88 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceSupportInformationRecord();
  v89 = *(v13 - 8);
  v14 = v89[8];
  __chkstk_darwin(v13 - 8);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DeviceRecord();
  v90 = *(v17 - 1);
  v18 = *(v90 + 64);
  __chkstk_darwin(v17);
  v95 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100226100;
  type metadata accessor for HMDeviceCloudRecord();
  v22 = Array.description.getter();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1000EE954();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  os_log(_:dso:log:_:_:)();

  v25 = sub_10017E820(a1, sub_1001C4E14);
  if (v25)
  {
    v97 = &_swiftEmptyArrayStorage;
    v26 = v25[2];
    if (v26)
    {
      v27 = v17[7];
      v94 = &v95[v17[6]];
      v93 = &v95[v27];
      v28 = &v95[v17[8]];
      v29 = &v95[v17[9]];
      v30 = &v95[v17[10]];
      v31 = &v95[v17[11]];
      v32 = *(v90 + 80);
      v89 = v25;
      v24 = v25 + ((v32 + 32) & ~v32);
      v92 = *(v90 + 72);
      v33 = v95;
      do
      {
        sub_1001CC14C(v24, v33, type metadata accessor for DeviceRecord);
        v34 = *v94;
        v35 = *(v94 + 1);
        v36 = objc_allocWithZone(BTCloudDevice);
        v37 = String._bridgeToObjectiveC()();
        v38 = [v36 initWithBluetoothAddress:v37];

        v39 = *v93;
        v40 = *(v93 + 1);
        v41 = String._bridgeToObjectiveC()();
        [v38 setNickname:v41];

        v42 = *v28;
        v43 = *(v28 + 1);
        v44 = String._bridgeToObjectiveC()();
        [v38 setModelNumber:v44];

        v45 = *v29;
        v46 = *(v29 + 1);
        v47 = String._bridgeToObjectiveC()();
        [v38 setManufacturer:v47];

        v48 = *v30;
        v49 = *(v30 + 1);
        v50 = String._bridgeToObjectiveC()();
        [v38 setProductID:v50];

        v51 = *v31;
        v52 = *(v31 + 1);
        v53 = String._bridgeToObjectiveC()();
        [v38 setVendorID:v53];

        sub_1001CC1B4(v33, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 += v92;
        v26 = (v26 - 1);
      }

      while (v26);
    }

    v60 = v91;
    v61 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v62 = *(v60 + v61);
    v63 = v96;
    if (v62 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (!v20)
      {
      }

      goto LABEL_19;
    }

    v20 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_19:
      if (v20 >= 1)
      {

        for (i = 0; i != v20; ++i)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v65 = *(v62 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v65 respondsToSelector:{*v63, v86}])
          {
            sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v65 *v96];
            swift_unknownObjectRelease_n();

            v63 = v96;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_68:
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  v55 = sub_10017E820(a1, sub_1001C4DD0);
  if (v55)
  {
    v97 = &_swiftEmptyArrayStorage;
    v56 = v55[2];
    if (v56)
    {
      v26 = v91;
      v57 = v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v58 = v89[9];
      do
      {
        sub_1001CC14C(v57, v16, type metadata accessor for DeviceSupportInformationRecord);
        v20 = sub_100109B20();
        sub_1001CC1B4(v16, type metadata accessor for DeviceSupportInformationRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v57 += v58;
        --v56;
      }

      while (v56);
    }

    else
    {

      v26 = v91;
    }

    v72 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v62 = *(v26 + v72);
    v24 = v94;
    if (v62 >> 62)
    {
LABEL_72:
      v73 = _CocoaArrayWrapper.endIndex.getter();
      if (!v73)
      {
      }

      goto LABEL_38;
    }

    v73 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
LABEL_38:
      if (v73 >= 1)
      {

        for (j = 0; j != v73; ++j)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v75 = *(v62 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v75 respondsToSelector:{*v24, v86}])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            v76 = Array._bridgeToObjectiveC()().super.isa;
            [v75 *v94];
            swift_unknownObjectRelease_n();

            v24 = v94;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_68;
      }

      __break(1u);
      goto LABEL_75;
    }
  }

  v67 = sub_10017E820(a1, sub_1001C4D8C);
  if (v67)
  {
    v97 = &_swiftEmptyArrayStorage;
    v24 = v67[2];
    if (v24)
    {
      v68 = v91;
      v69 = v67 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v70 = *(v88 + 72);
      do
      {
        sub_1001CC14C(v69, v12, type metadata accessor for MagicPairingSettingsRecord);
        v20 = sub_10010CFB8();
        sub_1001CC1B4(v12, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v71 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v69 += v70;
        --v24;
      }

      while (v24);
    }

    else
    {

      v68 = v91;
    }

    v81 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v62 = *(v68 + v81);
    v26 = v93;
    if (v62 >> 62)
    {
LABEL_75:
      v82 = _CocoaArrayWrapper.endIndex.getter();
      if (!v82)
      {
      }

      goto LABEL_59;
    }

    v82 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
LABEL_59:
      if (v82 >= 1)
      {

        for (k = 0; k != v82; ++k)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v84 = *(v62 + 8 * k + 32);
            swift_unknownObjectRetain();
          }

          if ([v84 respondsToSelector:{*v26, v86}])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v85 = Array._bridgeToObjectiveC()().super.isa;
            [v84 *v93];
            swift_unknownObjectRelease_n();

            v26 = v93;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_78:
      _CocoaArrayWrapper.endIndex.getter();
      specialized ContiguousArray.reserveCapacity(_:)();
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_79;
      }

      goto LABEL_49;
    }
  }

  v20 = &_swiftEmptyArrayStorage;
  v97 = &_swiftEmptyArrayStorage;
  v24 = a1;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  v77 = a1 & 0xFFFFFFFFFFFFFF8;
  v78 = *(v77 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  result = *(v77 + 16);
  if (!result)
  {
LABEL_79:
    v86(v97);
  }

LABEL_49:
  if ((v24 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v97 = v20;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v24 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  v80 = v87;

  return v80(v24);
}

uint64_t sub_100180998(unint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, char *a5, void (*a6)(unint64_t), char *a7)
{
  v88 = a7;
  v89 = a5;
  v82 = a6;
  v91 = a4;
  v87 = a3;
  v8 = type metadata accessor for MagicPairingSettingsRecord();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceSupportInformationRecord();
  v84 = *(v12 - 8);
  v13 = v84[8];
  __chkstk_darwin(v12 - 8);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DeviceRecord();
  v85 = *(v16 - 1);
  v17 = *(v85 + 64);
  __chkstk_darwin(v16);
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100226100;
  type metadata accessor for AAProxCardsRecord();
  v20 = Array.description.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000EE954();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = sub_10017E820(a1, sub_1001C4E14);
  if (v23)
  {
    v92 = &_swiftEmptyArrayStorage;
    v24 = v23[2];
    if (v24)
    {
      v25 = v16[7];
      v89 = &v90[v16[6]];
      v88 = &v90[v25];
      v26 = &v90[v16[8]];
      v27 = &v90[v16[9]];
      a1 = &v90[v16[10]];
      v28 = &v90[v16[11]];
      v29 = *(v85 + 80);
      v84 = v23;
      v22 = (v23 + ((v29 + 32) & ~v29));
      v87 = *(v85 + 72);
      v30 = v90;
      do
      {
        sub_1001CC14C(v22, v30, type metadata accessor for DeviceRecord);
        v31 = *v89;
        v32 = *(v89 + 1);
        v33 = objc_allocWithZone(BTCloudDevice);
        v34 = String._bridgeToObjectiveC()();
        v35 = [v33 initWithBluetoothAddress:v34];

        v36 = *v88;
        v37 = *(v88 + 1);
        v38 = String._bridgeToObjectiveC()();
        [v35 setNickname:v38];

        v39 = *v26;
        v40 = *(v26 + 1);
        v41 = String._bridgeToObjectiveC()();
        [v35 setModelNumber:v41];

        v42 = *v27;
        v43 = *(v27 + 1);
        v44 = String._bridgeToObjectiveC()();
        [v35 setManufacturer:v44];

        v45 = *a1;
        v46 = *(a1 + 8);
        v47 = String._bridgeToObjectiveC()();
        [v35 setProductID:v47];

        v48 = *v28;
        v49 = *(v28 + 1);
        v50 = String._bridgeToObjectiveC()();
        [v35 setVendorID:v50];

        sub_1001CC1B4(v30, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = (v22 + v87);
        v24 = (v24 - 1);
      }

      while (v24);
    }

    v56 = v86;
    v57 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v58 = *(v56 + v57);
    v59 = v91;
    if (v58 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
      if (!v60)
      {
      }

      goto LABEL_19;
    }

    v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
LABEL_19:
      if (v60 >= 1)
      {

        for (i = 0; i != v60; ++i)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v62 = *(v58 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v62 respondsToSelector:*v59])
          {
            sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v62 *v91];
            swift_unknownObjectRelease_n();

            v59 = v91;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_64:
      }

      __break(1u);
      goto LABEL_68;
    }
  }

  v52 = sub_10017E820(a1, sub_1001C4DD0);
  if (v52)
  {
    v92 = &_swiftEmptyArrayStorage;
    v53 = v52[2];
    if (v53)
    {
      v24 = v86;
      v54 = v52 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      a1 = v84[9];
      do
      {
        sub_1001CC14C(v54, v15, type metadata accessor for DeviceSupportInformationRecord);
        sub_100109B20();
        sub_1001CC1B4(v15, type metadata accessor for DeviceSupportInformationRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v54 += a1;
        --v53;
      }

      while (v53);
    }

    else
    {

      v24 = v86;
    }

    v69 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v58 = *(v24 + v69);
    v22 = v89;
    if (v58 >> 62)
    {
LABEL_68:
      v70 = _CocoaArrayWrapper.endIndex.getter();
      if (!v70)
      {
      }

      goto LABEL_38;
    }

    v70 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
LABEL_38:
      if (v70 >= 1)
      {

        for (j = 0; j != v70; ++j)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v72 = *(v58 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v72 respondsToSelector:*v22])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            v73 = Array._bridgeToObjectiveC()().super.isa;
            [v72 *v89];
            swift_unknownObjectRelease_n();

            v22 = v89;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_71;
    }
  }

  v64 = sub_10017E820(a1, sub_1001C4D8C);
  if (v64)
  {
    v92 = &_swiftEmptyArrayStorage;
    v65 = v64[2];
    if (v65)
    {
      v66 = v86;
      v67 = v64 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      a1 = *(v83 + 72);
      v24 = v88;
      do
      {
        sub_1001CC14C(v67, v11, type metadata accessor for MagicPairingSettingsRecord);
        sub_10010CFB8();
        sub_1001CC1B4(v11, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v68 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v88;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v67 += a1;
        --v65;
      }

      while (v65);
    }

    else
    {

      v24 = v88;
      v66 = v86;
    }

    v76 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v58 = *(v66 + v76);
    if (v58 >> 62)
    {
LABEL_71:
      v77 = _CocoaArrayWrapper.endIndex.getter();
      if (!v77)
      {
      }

      goto LABEL_55;
    }

    v77 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
LABEL_55:
      if (v77 >= 1)
      {

        for (k = 0; k != v77; ++k)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v79 = *(v58 + 8 * k + 32);
            swift_unknownObjectRetain();
          }

          if ([v79 respondsToSelector:*v24])
          {
            sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
            swift_unknownObjectRetain();
            v80 = Array._bridgeToObjectiveC()().super.isa;
            [v79 *v88];
            swift_unknownObjectRelease_n();

            v24 = v88;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_74;
    }
  }

  v92 = &_swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v74 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized ContiguousArray.reserveCapacity(_:)();
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_75;
    }

    goto LABEL_49;
  }

LABEL_74:
  _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_75:
    v82(v92);
  }

LABEL_49:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_10018150C(unint64_t a1, void *a2, uint64_t a3, SEL *a4, char *a5, char *a6, uint64_t (*a7)(unint64_t))
{
  v84 = a7;
  v90 = a6;
  v91 = a5;
  v93 = a4;
  v88 = a2;
  v89 = a3;
  v9 = type metadata accessor for MagicPairingSettingsRecord();
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceSupportInformationRecord();
  v86 = *(v13 - 8);
  v14 = *(v86 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for DeviceRecord();
  v87 = *(v17 - 1);
  v18 = *(v87 + 64);
  __chkstk_darwin(v17);
  v92 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100226100;
  type metadata accessor for AADeviceRecord();
  v21 = Array.description.getter();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_1000EE954();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:_:_:)();

  v24 = sub_10017E820(a1, sub_1001C4E14);
  if (v24)
  {
    v94 = &_swiftEmptyArrayStorage;
    v16 = v24[2];
    if (v16)
    {
      v86 = v7;
      v25 = v17[7];
      v91 = &v92[v17[6]];
      v90 = &v92[v25];
      v26 = &v92[v17[8]];
      v27 = &v92[v17[9]];
      v28 = v17[11];
      v29 = &v92[v17[10]];
      v30 = &v92[v28];
      v23 = (v24 + ((*(v87 + 80) + 32) & ~*(v87 + 80)));
      v31 = *(v87 + 72);
      v88 = v24;
      v89 = v31;
      v32 = v92;
      do
      {
        sub_1001CC14C(v23, v32, type metadata accessor for DeviceRecord);
        v33 = *v91;
        v34 = *(v91 + 1);
        v35 = objc_allocWithZone(BTCloudDevice);
        v36 = String._bridgeToObjectiveC()();
        v37 = [v35 initWithBluetoothAddress:v36];

        v38 = *v90;
        v39 = *(v90 + 1);
        v40 = String._bridgeToObjectiveC()();
        [v37 setNickname:v40];

        v41 = *v26;
        v42 = *(v26 + 1);
        v43 = String._bridgeToObjectiveC()();
        [v37 setModelNumber:v43];

        v44 = *v27;
        v45 = *(v27 + 1);
        v46 = String._bridgeToObjectiveC()();
        [v37 setManufacturer:v46];

        v47 = *v29;
        v48 = *(v29 + 1);
        v49 = String._bridgeToObjectiveC()();
        [v37 setProductID:v49];

        v50 = *v30;
        v51 = *(v30 + 1);
        v52 = String._bridgeToObjectiveC()();
        [v37 setVendorID:v52];

        sub_1001CC1B4(v32, type metadata accessor for DeviceRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v53 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 = (v23 + v89);
        v16 = (v16 - 1);
      }

      while (v16);

      v7 = v86;
    }

    else
    {
    }

    v59 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v60 = *(v7 + v59);
    v61 = v93;
    if (v60 >> 62)
    {
      v62 = _CocoaArrayWrapper.endIndex.getter();
      if (!v62)
      {
      }

      goto LABEL_20;
    }

    v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
LABEL_20:
      if (v62 >= 1)
      {

        for (i = 0; i != v62; ++i)
        {
          if ((v60 & 0xC000000000000001) != 0)
          {
            v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v64 = *(v60 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v64 respondsToSelector:*v61])
          {
            sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v64 *v93];
            swift_unknownObjectRelease_n();

            v61 = v93;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_47:
      }

      __break(1u);
      goto LABEL_67;
    }
  }

  v54 = sub_10017E820(a1, sub_1001C4DD0);
  if (v54)
  {
    v94 = &_swiftEmptyArrayStorage;
    v55 = v54[2];
    if (v55)
    {
      v56 = v54 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v57 = *(v86 + 72);
      do
      {
        sub_1001CC14C(v56, v16, type metadata accessor for DeviceSupportInformationRecord);
        sub_100109B20();
        sub_1001CC1B4(v16, type metadata accessor for DeviceSupportInformationRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v58 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v56 += v57;
        --v55;
      }

      while (v55);
    }

    v71 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    swift_beginAccess();
    v60 = *(v7 + v71);
    v23 = v91;
    if (v60 >> 62)
    {
LABEL_67:
      v72 = _CocoaArrayWrapper.endIndex.getter();
      if (!v72)
      {
      }

      goto LABEL_38;
    }

    v72 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
LABEL_38:
      if (v72 >= 1)
      {

        for (j = 0; j != v72; ++j)
        {
          if ((v60 & 0xC000000000000001) != 0)
          {
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v74 = *(v60 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v74 respondsToSelector:*v23])
          {
            sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
            swift_unknownObjectRetain();
            v75 = Array._bridgeToObjectiveC()().super.isa;
            [v74 *v91];
            swift_unknownObjectRelease_n();

            v23 = v91;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_70;
    }
  }

  v66 = sub_10017E820(a1, sub_1001C4D8C);
  if (!v66)
  {
    v76 = v84;

    return v76(a1);
  }

  v94 = &_swiftEmptyArrayStorage;
  v67 = v66[2];
  if (v67)
  {
    v68 = v66 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v69 = *(v85 + 72);
    v16 = v90;
    do
    {
      sub_1001CC14C(v68, v12, type metadata accessor for MagicPairingSettingsRecord);
      sub_10010CFB8();
      sub_1001CC1B4(v12, type metadata accessor for MagicPairingSettingsRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = v90;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 += v69;
      --v67;
    }

    while (v67);
  }

  else
  {

    v16 = v90;
  }

  v78 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v60 = *(v7 + v78);
  if (!(v60 >> 62))
  {
    v79 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v79)
    {
    }

    goto LABEL_54;
  }

LABEL_70:
  result = _CocoaArrayWrapper.endIndex.getter();
  v79 = result;
  if (!result)
  {
  }

LABEL_54:
  if (v79 >= 1)
  {

    for (k = 0; k != v79; ++k)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v81 = *(v60 + 8 * k + 32);
        swift_unknownObjectRetain();
      }

      if ([v81 respondsToSelector:*v16])
      {
        sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
        swift_unknownObjectRetain();
        v82 = Array._bridgeToObjectiveC()().super.isa;
        [v81 *v90];
        swift_unknownObjectRelease_n();

        v16 = v90;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_100181FF0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v58 = a4;
  v6 = type metadata accessor for DeviceRecord();
  v54 = *(v6 - 1);
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  v10 = Array.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  v59 = &_swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (v13)
  {
    v53 = v4;
    v14 = v6[7];
    v56 = &v57[v6[6]];
    v55 = &v57[v14];
    v15 = &v57[v6[8]];
    v16 = &v57[v6[9]];
    v17 = a1;
    v18 = &v57[v6[10]];
    v19 = &v57[v6[11]];
    v20 = v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v54 = *(v54 + 72);
    v21 = v57;
    do
    {
      sub_1001CC14C(v20, v21, type metadata accessor for DeviceRecord);
      v22 = *v56;
      v23 = *(v56 + 1);
      v24 = objc_allocWithZone(BTCloudDevice);
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 initWithBluetoothAddress:v25];

      v27 = *v55;
      v28 = *(v55 + 1);
      v29 = String._bridgeToObjectiveC()();
      [v26 setNickname:v29];

      v30 = *v15;
      v31 = *(v15 + 1);
      v32 = String._bridgeToObjectiveC()();
      [v26 setModelNumber:v32];

      v33 = *v16;
      v34 = *(v16 + 1);
      v35 = String._bridgeToObjectiveC()();
      [v26 setManufacturer:v35];

      v36 = *v18;
      v37 = *(v18 + 1);
      v38 = String._bridgeToObjectiveC()();
      [v26 setProductID:v38];

      v39 = *v19;
      v40 = *(v19 + 1);
      v41 = String._bridgeToObjectiveC()();
      [v26 setVendorID:v41];

      sub_1001CC1B4(v21, type metadata accessor for DeviceRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 += v54;
      --v13;
    }

    while (v13);
    v4 = v53;
  }

  v43 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v45 = *(v4 + v43);
  v46 = v58;
  if (v45 >> 62)
  {
    if (v45 < 0)
    {
      v51 = *(v4 + v43);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v47 = result;
    if (!result)
    {
    }
  }

  else
  {
    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v47)
    {
    }
  }

  if (v47 >= 1)
  {

    for (i = 0; i != v47; ++i)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(v45 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v50 respondsToSelector:*v46])
      {
        sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v50 *v58];
        swift_unknownObjectRelease_n();

        v46 = v58;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001824D8()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for AADeviceRecord();
  sub_1001C4BB4(&qword_1002F9598, type metadata accessor for AADeviceRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v0)
  {

    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100226C80;
    sub_1000EE870(&qword_1002F9C60, &qword_1002299C8);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    v8 = sub_1000EE954();
    *(v4 + 64) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v9 = String.init<A>(describing:)();
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v8;
    *(v4 + 72) = v9;
    *(v4 + 80) = v10;
    os_log(_:dso:log:_:_:)();

    return swift_willThrow();
  }

  else
  {

    return v12;
  }
}

uint64_t sub_1001826E4()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for DeviceRecord();
  sub_1001C4BB4(&qword_1002F9C20, type metadata accessor for DeviceRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9C28, &qword_100229998);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_1001828F0()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for DeviceSupportInformationRecord();
  sub_1001C4BB4(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9C48, &qword_1002299B8);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_100182AFC()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for MagicPairingSettingsRecord();
  sub_1001C4BB4(&qword_1002F8710, type metadata accessor for MagicPairingSettingsRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9C40, &unk_1002299A8);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_100182D08()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for SoundProfileRecord();
  sub_1001C4BB4(&qword_1002F80F8, type metadata accessor for SoundProfileRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&unk_1002F9E30, &qword_100229AB8);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_100182F14()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for AAProxCardsRecord();
  sub_1001C4BB4(&qword_1002F7F70, type metadata accessor for AAProxCardsRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v0)
  {

    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100226C80;
    sub_1000EE870(&qword_1002F9C78, &qword_1002299D8);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    v8 = sub_1000EE954();
    *(v4 + 64) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v9 = String.init<A>(describing:)();
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v8;
    *(v4 + 72) = v9;
    *(v4 + 80) = v10;
    os_log(_:dso:log:_:_:)();

    return swift_willThrow();
  }

  else
  {

    return v12;
  }
}

uint64_t sub_100183120()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for HMDeviceCloudRecord();
  sub_1001C4BB4(&unk_1002F8AC0, type metadata accessor for HMDeviceCloudRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v0)
  {

    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100226C80;
    sub_1000EE870(&unk_1002F9C90, &qword_1002299E8);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    v8 = sub_1000EE954();
    *(v4 + 64) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v9 = String.init<A>(describing:)();
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v8;
    *(v4 + 72) = v9;
    *(v4 + 80) = v10;
    os_log(_:dso:log:_:_:)();

    return swift_willThrow();
  }

  else
  {

    return v12;
  }
}

uint64_t sub_10018332C()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CloudCoordinatorConfiguration();
  sub_1001C4BB4(&qword_1002F89B8, type metadata accessor for CloudCoordinatorConfiguration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&unk_1002F9E80, &qword_100229AF0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_100183538()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for LegacyAccountMagicKeysRecord();
  sub_1001C4BB4(&qword_1002F9DE0, type metadata accessor for LegacyAccountMagicKeysRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9DE8, &qword_100229AA0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_100183744()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for LegacyMagicPairingSettingsRecords();
  sub_1001C4BB4(&qword_1002F8D70, type metadata accessor for LegacyMagicPairingSettingsRecords);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&qword_1002F9E40, &qword_100229AC0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

uint64_t sub_100183950()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for BTDeferredRecord();
  sub_1001C4BB4(&qword_1002F9E50, type metadata accessor for BTDeferredRecord);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v0)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226C80;
  sub_1000EE870(&unk_1002F9E58, &unk_100229AD0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v9 = String.init<A>(describing:)();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  return swift_willThrow();
}

void sub_100183B5C(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v78 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  *&v81 = &v65 - v14;
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v76 = v6;
    v77 = a1;
    v75 = v9;
    v79 = v10;
    v21 = objc_autoreleasePoolPush();
    v82[0] = a2;
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for AADeviceRecord();
    sub_1001C4BB4(&qword_1002F95A0, type metadata accessor for AADeviceRecord);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      v28 = v25;
      v29 = v26;
      v73 = a2;
      v65 = 0;
      v68 = v5;

      objc_autoreleasePoolPop(v21);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v28, v29);
      v30 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v31 = v79;
      v32 = sub_1000EE91C(v79, qword_100300D88);
      v33 = v80;
      v34 = *(v80 + 16);
      v72 = v32;
      v71 = v80 + 16;
      v70 = v34;
      (v34)(v17);
      URL.path.getter();
      v37 = *(v33 + 8);
      v36 = v33 + 8;
      v35 = v37;
      v37(v17, v31);
      URL.appendingPathComponent(_:)();

      v69 = v30;
      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v35(v20, v31);
      UUID.uuidString.getter();
      v70(v20, v72, v31);
      v38 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v35(v17, v79);
      v39 = v38;
      v40 = v79;
      objc_autoreleasePoolPop(v39);
      v35(v20, v40);
      v83 = &type metadata for AudioAccessoryFeatures;
      v41 = sub_1000F1874();
      v84 = v41;
      v42 = isFeatureEnabled(_:)();
      sub_1000EF824(v82);
      v67 = v36;
      v66 = v35;
      if (v42)
      {
        v43 = *&v73[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];
        v73 = *&v73[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
        v70(v17, v72, v40);
        v44 = objc_autoreleasePoolPush();
        URL.path.getter();
        v45 = v78;
        URL.appendingPathComponent(_:)();
        v40 = v79;

        URL.appendingPathComponent(_:)();
        v35(v45, v40);
        objc_autoreleasePoolPop(v44);
        v35(v17, v40);
        v46 = v81;
        v35(v81, v40);
        (*(v80 + 32))(v46, v20, v40);
        v47 = v75;
      }

      else
      {
        v83 = &type metadata for AudioAccessoryFeatures;
        v84 = v41;
        isFeatureEnabled(_:)();
        sub_1000EF824(v82);
        v47 = v75;
        v46 = v81;
      }

      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v48);
      v50 = v49;
      [(objc_class *)isa writeToURL:v49 atomically:1];

      static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v51 = swift_allocObject();
      v81 = xmmword_100226100;
      *(v51 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_1000EE954();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = NSFileProtectionKey;
      v57 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v58 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v59 = [objc_opt_self() defaultManager];
      sub_10018AA14(v58);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v60 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v61 = String._bridgeToObjectiveC()();

      v82[0] = 0;
      LODWORD(v52) = [v59 setAttributes:v60 ofItemAtPath:v61 error:v82];

      if (v52)
      {
        v62 = v82[0];
        URL.setResourceValues(_:)();
        v63 = v68;

        (*(v76 + 8))(v47, v63);
      }

      else
      {
        v64 = v82[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v76 + 8))(v47, v68);
      }

      v66(v46, v40);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v27 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001845E0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v64 = a1;
    v65 = v9;
    v62 = v6;
    v63 = v5;
    v19 = objc_autoreleasePoolPush();
    v20 = type metadata accessor for PropertyListEncoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for CloudCoordinatorConfiguration();
    sub_1001C4BB4(&qword_1002F89C0, type metadata accessor for CloudCoordinatorConfiguration);
    v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v26 = v23;
      v27 = v24;
      v59 = a2;
      v56 = 0;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v26, v27);
      *&v60 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A10 != -1)
      {
        swift_once();
      }

      v28 = v65;
      v29 = sub_1000EE91C(v65, qword_100300C28);
      v30 = v10[2];
      v58 = v29;
      v57 = v30;
      (v30)(v15);
      URL.path.getter();
      v31 = v10[1];
      v31(v15, v28);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v32 = v65;
      v31(v18, v65);
      v59 = UUID.uuidString.getter();
      v57(v18, v58, v32);
      v33 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v34 = v66;
      URL.appendingPathComponent(_:)();

      v31(v15, v32);
      objc_autoreleasePoolPop(v33);
      v64 = v31;
      v31(v18, v32);
      v69 = &type metadata for AudioAccessoryFeatures;
      v35 = sub_1000F1874();
      v70 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v69 = &type metadata for AudioAccessoryFeatures;
      v70 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v36 = v67;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      [(objc_class *)isa writeToURL:v38 atomically:1];

      static os_log_type_t.default.getter();
      v40 = v32;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v41 = swift_allocObject();
      v60 = xmmword_100226100;
      *(v41 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_1000EE954();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v60;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = NSFileProtectionKey;
      v47 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v48 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v49 = [objc_opt_self() defaultManager];
      sub_10018AA14(v48);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v51 = String._bridgeToObjectiveC()();

      v68[0] = 0;
      LOBYTE(v42) = [v49 setAttributes:v50 ofItemAtPath:v51 error:v68];

      if (v42)
      {
        v52 = v68[0];
        URL.setResourceValues(_:)();
        v53 = v62;
        v54 = v64;

        (*(v53 + 8))(v36, v63);
        v54(v34, v40);
      }

      else
      {
        v55 = v68[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v62 + 8))(v36, v63);
        v64(v34, v40);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v25 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100184EF0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v64 = a1;
    v65 = v9;
    v62 = v6;
    v63 = v5;
    v19 = objc_autoreleasePoolPush();
    v20 = type metadata accessor for PropertyListEncoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for LegacyAccountMagicKeysRecord();
    sub_1001C4BB4(&qword_1002F8310, type metadata accessor for LegacyAccountMagicKeysRecord);
    v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v26 = v23;
      v27 = v24;
      v59 = a2;
      v56 = 0;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v26, v27);
      *&v60 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79E8 != -1)
      {
        swift_once();
      }

      v28 = v65;
      v29 = sub_1000EE91C(v65, qword_100300B80);
      v30 = v10[2];
      v58 = v29;
      v57 = v30;
      (v30)(v15);
      URL.path.getter();
      v31 = v10[1];
      v31(v15, v28);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v32 = v65;
      v31(v18, v65);
      v59 = UUID.uuidString.getter();
      v57(v18, v58, v32);
      v33 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v34 = v66;
      URL.appendingPathComponent(_:)();

      v31(v15, v32);
      objc_autoreleasePoolPop(v33);
      v64 = v31;
      v31(v18, v32);
      v69 = &type metadata for AudioAccessoryFeatures;
      v35 = sub_1000F1874();
      v70 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v69 = &type metadata for AudioAccessoryFeatures;
      v70 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v36 = v67;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      [(objc_class *)isa writeToURL:v38 atomically:1];

      static os_log_type_t.default.getter();
      v40 = v32;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v41 = swift_allocObject();
      v60 = xmmword_100226100;
      *(v41 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_1000EE954();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v60;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = NSFileProtectionKey;
      v47 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v48 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v49 = [objc_opt_self() defaultManager];
      sub_10018AA14(v48);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v51 = String._bridgeToObjectiveC()();

      v68[0] = 0;
      LOBYTE(v42) = [v49 setAttributes:v50 ofItemAtPath:v51 error:v68];

      if (v42)
      {
        v52 = v68[0];
        URL.setResourceValues(_:)();
        v53 = v62;
        v54 = v64;

        (*(v53 + 8))(v36, v63);
        v54(v34, v40);
      }

      else
      {
        v55 = v68[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v62 + 8))(v36, v63);
        v64(v34, v40);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v25 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100185800(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for URL();
  *&v86 = *(v87 - 8);
  v10 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v84 = a1;
    v79 = v14;
    v80 = v9;
    v81 = v6;
    v21 = objc_autoreleasePoolPush();
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v25 = type metadata accessor for DeviceRecord();
    sub_1001C4BB4(&qword_1002F7CD0, type metadata accessor for DeviceRecord);
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v83 = v2;
    if (v2)
    {

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      v29 = v26;
      v30 = v27;
      v77 = v25;
      v78 = a2;

      objc_autoreleasePoolPop(v21);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v29, v30);
      v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v75 = v5;
      v31 = v87;
      v32 = sub_1000EE91C(v87, qword_100300AF0);
      v33 = v86;
      v34 = *(v86 + 16);
      v35 = v32;
      v76 = v86 + 16;
      v73 = v34;
      (v34)(v17);
      URL.path.getter();
      v38 = *(v33 + 8);
      v36 = (v33 + 8);
      v37 = v38;
      v38(v17, v31);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v37(v20, v31);
      v39 = v78 + *(v77 + 20);
      v70 = UUID.uuidString.getter();
      v40 = v35;
      v72 = v35;
      v41 = v73;
      v73(v20, v40, v31);
      v71 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v42 = v79;
      URL.appendingPathComponent(_:)();

      v37(v17, v87);
      objc_autoreleasePoolPop(v71);
      v37(v20, v87);
      v43 = (v78 + *(v77 + 24));
      v44 = *v43;
      v77 = v43[1];
      v78 = v44;
      v41(v17, v72, v87);
      v45 = objc_autoreleasePoolPush();
      URL.path.getter();
      v46 = v85;
      URL.appendingPathComponent(_:)();
      v47 = v42;

      URL.appendingPathComponent(_:)();
      v37(v46, v87);
      v48 = v45;
      v49 = v87;
      objc_autoreleasePoolPop(v48);
      v37(v17, v49);
      v84 = v37;
      v85 = v36;
      v37(v42, v49);
      (*(v86 + 32))(v42, v20, v49);
      v50 = v80;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v51);
      v53 = v52;
      v54 = isa;
      [(objc_class *)isa writeToURL:v52 atomically:1];

      static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v55 = swift_allocObject();
      v86 = xmmword_100226100;
      *(v55 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_1000EE954();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v60 = NSFileProtectionKey;
      v61 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v62 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v63 = [objc_opt_self() defaultManager];
      sub_10018AA14(v62);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v64 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v65 = String._bridgeToObjectiveC()();

      v88 = 0;
      LOBYTE(v56) = [v63 setAttributes:v64 ofItemAtPath:v65 error:&v88];

      v66 = v75;
      if (v56)
      {
        v67 = v88;
        URL.setResourceValues(_:)();
        v68 = v84;

        (*(v81 + 8))(v50, v66);
        v68(v47, v49);
      }

      else
      {
        v69 = v88;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v81 + 8))(v50, v66);
        v84(v47, v49);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v28 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001861E8(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  *&v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  __chkstk_darwin(v8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v74 = v13;
    v71 = v7;
    v72 = v4;
    v20 = objc_autoreleasePoolPush();
    v21 = type metadata accessor for PropertyListEncoder();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v24 = type metadata accessor for DeviceSupportInformationRecord();
    sub_1001C4BB4(&unk_1002F9DD0, type metadata accessor for DeviceSupportInformationRecord);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v75 = v2;
    if (v2)
    {

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v28 = v25;
      v29 = v26;
      v67 = v24;

      objc_autoreleasePoolPop(v20);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v28, v29);
      v73 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v69 = v3;
      v30 = sub_1000EE91C(v8, qword_100300D48);
      v31 = v77;
      v32 = *(v77 + 16);
      v33 = v30;
      v70 = (v77 + 16);
      v66 = v32;
      (v32)(v16);
      URL.path.getter();
      v34 = v8;
      v35 = v31 + 8;
      v36 = *(v31 + 8);
      v36(v16, v34);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v36(v19, v34);
      v63 = UUID.uuidString.getter();
      v65 = v33;
      v37 = v33;
      v38 = v66;
      v66(v19, v37, v34);
      v64 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v36;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v36(v16, v34);
      objc_autoreleasePoolPop(v64);
      v36(v19, v34);
      v40 = (v79 + *(v67 + 24));
      v41 = v40[1];
      v79 = *v40;
      v38(v16, v65, v34);
      v70 = objc_autoreleasePoolPush();
      URL.path.getter();
      v42 = v76;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();
      v36(v42, v34);
      v43 = v74;
      objc_autoreleasePoolPop(v70);
      v39(v16, v34);
      v78 = v39;
      v79 = v35;
      v39(v43, v34);
      (*(v77 + 32))(v43, v19, v34);
      v44 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      v48 = isa;
      [(objc_class *)isa writeToURL:v46 atomically:1];

      static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v49 = swift_allocObject();
      v77 = xmmword_100226100;
      *(v49 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_1000EE954();
      *(v49 + 32) = v50;
      *(v49 + 40) = v52;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v54 = NSFileProtectionKey;
      v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v57 = [objc_opt_self() defaultManager];
      sub_10018AA14(v56);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v59 = String._bridgeToObjectiveC()();

      v80 = 0;
      LOBYTE(v50) = [v57 setAttributes:v58 ofItemAtPath:v59 error:&v80];

      v60 = v69;
      if (v50)
      {
        v61 = v80;
        URL.setResourceValues(_:)();
      }

      else
      {
        v62 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v72 + 8))(v44, v60);
      v78(v43, v34);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v27 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100186B94(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v64 = a1;
    v65 = v9;
    v62 = v6;
    v63 = v5;
    v19 = objc_autoreleasePoolPush();
    v20 = type metadata accessor for PropertyListEncoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for LegacyMagicPairingSettingsRecords();
    sub_1001C4BB4(&qword_1002F8D78, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v26 = v23;
      v27 = v24;
      v59 = a2;
      v56 = 0;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v26, v27);
      *&v60 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A70 != -1)
      {
        swift_once();
      }

      v28 = v65;
      v29 = sub_1000EE91C(v65, qword_100300D60);
      v30 = v10[2];
      v58 = v29;
      v57 = v30;
      (v30)(v15);
      URL.path.getter();
      v31 = v10[1];
      v31(v15, v28);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v32 = v65;
      v31(v18, v65);
      v59 = UUID.uuidString.getter();
      v57(v18, v58, v32);
      v33 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v34 = v66;
      URL.appendingPathComponent(_:)();

      v31(v15, v32);
      objc_autoreleasePoolPop(v33);
      v64 = v31;
      v31(v18, v32);
      v69 = &type metadata for AudioAccessoryFeatures;
      v35 = sub_1000F1874();
      v70 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v69 = &type metadata for AudioAccessoryFeatures;
      v70 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v68);
      v36 = v67;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      [(objc_class *)isa writeToURL:v38 atomically:1];

      static os_log_type_t.default.getter();
      v40 = v32;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v41 = swift_allocObject();
      v60 = xmmword_100226100;
      *(v41 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_1000EE954();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v60;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v46 = NSFileProtectionKey;
      v47 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v48 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v49 = [objc_opt_self() defaultManager];
      sub_10018AA14(v48);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v51 = String._bridgeToObjectiveC()();

      v68[0] = 0;
      LOBYTE(v42) = [v49 setAttributes:v50 ofItemAtPath:v51 error:v68];

      if (v42)
      {
        v52 = v68[0];
        URL.setResourceValues(_:)();
        v53 = v62;
        v54 = v64;

        (*(v53 + 8))(v36, v63);
        v54(v34, v40);
      }

      else
      {
        v55 = v68[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v62 + 8))(v36, v63);
        v64(v34, v40);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v25 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001874A4(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  *&v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  __chkstk_darwin(v8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v74 = v13;
    v71 = v7;
    v72 = v4;
    v20 = objc_autoreleasePoolPush();
    v21 = type metadata accessor for PropertyListEncoder();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v24 = type metadata accessor for MagicPairingSettingsRecord();
    sub_1001C4BB4(&qword_1002F8718, type metadata accessor for MagicPairingSettingsRecord);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v75 = v2;
    if (v2)
    {

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v28 = v25;
      v29 = v26;
      v67 = v24;

      objc_autoreleasePoolPop(v20);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v28, v29);
      v73 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v69 = v3;
      v30 = sub_1000EE91C(v8, qword_100300BA8);
      v31 = v77;
      v32 = *(v77 + 16);
      v33 = v30;
      v70 = (v77 + 16);
      v66 = v32;
      (v32)(v16);
      URL.path.getter();
      v34 = v8;
      v35 = v31 + 8;
      v36 = *(v31 + 8);
      v36(v16, v34);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v36(v19, v34);
      v63 = UUID.uuidString.getter();
      v65 = v33;
      v37 = v33;
      v38 = v66;
      v66(v19, v37, v34);
      v64 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v36;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v36(v16, v34);
      objc_autoreleasePoolPop(v64);
      v36(v19, v34);
      v40 = (v79 + *(v67 + 24));
      v41 = v40[1];
      v79 = *v40;
      v38(v16, v65, v34);
      v70 = objc_autoreleasePoolPush();
      URL.path.getter();
      v42 = v76;
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();
      v36(v42, v34);
      v43 = v74;
      objc_autoreleasePoolPop(v70);
      v39(v16, v34);
      v78 = v39;
      v79 = v35;
      v39(v43, v34);
      (*(v77 + 32))(v43, v19, v34);
      v44 = v71;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      v48 = isa;
      [(objc_class *)isa writeToURL:v46 atomically:1];

      static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v49 = swift_allocObject();
      v77 = xmmword_100226100;
      *(v49 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_1000EE954();
      *(v49 + 32) = v50;
      *(v49 + 40) = v52;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v54 = NSFileProtectionKey;
      v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v56 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v57 = [objc_opt_self() defaultManager];
      sub_10018AA14(v56);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v59 = String._bridgeToObjectiveC()();

      v80 = 0;
      LOBYTE(v50) = [v57 setAttributes:v58 ofItemAtPath:v59 error:&v80];

      v60 = v69;
      if (v50)
      {
        v61 = v80;
        URL.setResourceValues(_:)();
      }

      else
      {
        v62 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v72 + 8))(v44, v60);
      v78(v43, v34);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v27 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100187E50(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v69 = a2;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v68 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v57 - v14;
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v65 = v4;
    *&v66 = a1;
    v63 = v8;
    v64 = v5;
    v67 = v9;
    v19 = objc_autoreleasePoolPush();
    v20 = type metadata accessor for PropertyListEncoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v23 = type metadata accessor for SoundProfileRecord();
    sub_1001C4BB4(&qword_1002F9D80, type metadata accessor for SoundProfileRecord);
    v24 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v27 = v24;
      v28 = v25;
      v60 = v23;
      v57[1] = 0;

      objc_autoreleasePoolPop(v19);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v27, v28);
      v61 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79D8 != -1)
      {
        swift_once();
      }

      v29 = v67;
      v30 = sub_1000EE91C(v67, qword_100300B50);
      v31 = v10[2];
      v59 = v30;
      v58 = v31;
      (v31)(v15);
      URL.path.getter();
      v32 = v10[1];
      v32(v15, v29);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v33 = v67;
      v32(v18, v67);
      v34 = v69 + *(v60 + 20);
      UUID.uuidString.getter();
      v58(v18, v59, v33);
      v69 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      v35 = v68;
      URL.appendingPathComponent(_:)();

      v32(v15, v33);
      objc_autoreleasePoolPop(v69);
      v69 = v32;
      v32(v18, v33);
      v71 = &type metadata for AudioAccessoryFeatures;
      v36 = sub_1000F1874();
      v72 = v36;
      isFeatureEnabled(_:)();
      sub_1000EF824(v70);
      v71 = &type metadata for AudioAccessoryFeatures;
      v72 = v36;
      isFeatureEnabled(_:)();
      sub_1000EF824(v70);
      v37 = v63;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      [(objc_class *)isa writeToURL:v39 atomically:1];

      static os_log_type_t.default.getter();
      v41 = v33;
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v42 = swift_allocObject();
      v66 = xmmword_100226100;
      *(v42 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_1000EE954();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v66;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v47 = NSFileProtectionKey;
      v48 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v49 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v50 = [objc_opt_self() defaultManager];
      sub_10018AA14(v49);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v51 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v52 = String._bridgeToObjectiveC()();

      v70[0] = 0;
      LOBYTE(v43) = [v50 setAttributes:v51 ofItemAtPath:v52 error:v70];

      if (v43)
      {
        v53 = v70[0];
        URL.setResourceValues(_:)();
        v54 = v64;
        v55 = v69;

        (*(v54 + 8))(v37, v65);
        v55(v35, v41);
      }

      else
      {
        v56 = v70[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v64 + 8))(v37, v65);
        v69(v35, v41);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v26 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100188774(uint64_t a1, char *a2)
{
  *&v81 = a1;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  __chkstk_darwin(v9);
  v79 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v66 - v13;
  __chkstk_darwin(v15);
  v17 = v66 - v16;
  __chkstk_darwin(v18);
  v20 = v66 - v19;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v75 = v14;
    v76 = v8;
    v77 = v5;
    v78 = v4;
    v21 = objc_autoreleasePoolPush();
    v82[0] = a2;
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for AAProxCardsRecord();
    sub_1001C4BB4(&qword_1002F7F78, type metadata accessor for AAProxCardsRecord);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      v28 = v25;
      v29 = v26;
      v72 = a2;

      objc_autoreleasePoolPop(v21);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v28, v29);
      v30 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v66[1] = 0;
      v31 = sub_1000EE91C(v9, qword_100300B10);
      v32 = v80;
      v33 = *(v80 + 16);
      v71 = v31;
      v70 = v80 + 16;
      v69 = v33;
      (v33)(v17);
      URL.path.getter();
      v36 = *(v32 + 8);
      v35 = (v32 + 8);
      v34 = v36;
      v36(v17, v9);
      URL.appendingPathComponent(_:)();

      v68 = v30;
      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v34(v20, v9);
      UUID.uuidString.getter();
      v69(v20, v71, v9);
      v74 = objc_autoreleasePoolPush();
      URL.path.getter();
      v37 = v9;
      v38 = v35;
      URL.appendingPathComponent(_:)();

      v39 = v75;
      URL.appendingPathComponent(_:)();

      v34(v17, v37);
      objc_autoreleasePoolPop(v74);
      v74 = v38;
      v73 = v34;
      v34(v20, v37);
      v40 = v37;
      v83 = &type metadata for AudioAccessoryFeatures;
      v41 = sub_1000F1874();
      v84 = v41;
      isFeatureEnabled(_:)();
      sub_1000EF824(v82);
      v83 = &type metadata for AudioAccessoryFeatures;
      v84 = v41;
      LOBYTE(v41) = isFeatureEnabled(_:)();
      sub_1000EF824(v82);
      if (v41)
      {
        v42 = *&v72[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
        v72 = *&v72[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];
        v69(v17, v71, v37);
        v43 = objc_autoreleasePoolPush();
        URL.path.getter();
        v44 = v79;
        URL.appendingPathComponent(_:)();

        URL.appendingPathComponent(_:)();
        v45 = v73;
        v73(v44, v37);
        objc_autoreleasePoolPop(v43);
        v45(v17, v37);
        v45(v39, v37);
        (*(v80 + 32))(v39, v20, v37);
      }

      v46 = v76;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v47 = v39;
      URL._bridgeToObjectiveC()(v48);
      v50 = v49;
      v51 = isa;
      [(objc_class *)isa writeToURL:v49 atomically:1];

      static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v52 = swift_allocObject();
      v81 = xmmword_100226100;
      *(v52 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_1000EE954();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v81;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v57 = NSFileProtectionKey;
      v58 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v60 = [objc_opt_self() defaultManager];
      sub_10018AA14(v59);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v61 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v62 = String._bridgeToObjectiveC()();

      v82[0] = 0;
      LODWORD(v55) = [v60 setAttributes:v61 ofItemAtPath:v62 error:v82];

      if (v55)
      {
        v63 = v82[0];
        URL.setResourceValues(_:)();
        v64 = v77;

        (*(v64 + 8))(v46, v78);
      }

      else
      {
        v65 = v82[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v77 + 8))(v46, v78);
      }

      v73(v47, v40);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v27 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_1001891DC(uint64_t a1, char *a2)
{
  v75 = a1;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  *&v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v73 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v62 - v13;
  __chkstk_darwin(v15);
  v17 = v62 - v16;
  __chkstk_darwin(v18);
  v20 = v62 - v19;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v72 = v14;
    v68 = v8;
    v69 = v5;
    v70 = v4;
    v21 = objc_autoreleasePoolPush();
    v76[0] = a2;
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for HMDeviceCloudRecord();
    sub_1001C4BB4(&unk_1002F9DF0, type metadata accessor for HMDeviceCloudRecord);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      v28 = v25;
      v29 = v26;
      v67 = a2;

      objc_autoreleasePoolPop(v21);
      v30.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v28, v29);
      v71 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      isa = v30.super.isa;
      v62[1] = 0;
      v31 = sub_1000EE91C(v9, qword_100300C40);
      v32 = v74;
      v33 = *(v74 + 16);
      v34 = v31;
      v66 = (v74 + 16);
      v65 = v33;
      (v33)(v17);
      URL.path.getter();
      v35 = v9;
      v37 = v32 + 8;
      v36 = *(v32 + 8);
      v36(v17, v35);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v36(v20, v35);
      v62[2] = UUID.uuidString.getter();
      v63 = v34;
      v65(v20, v34, v35);
      v38 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v36(v17, v35);
      objc_autoreleasePoolPop(v38);
      v36(v20, v35);
      v77 = &type metadata for AudioAccessoryFeatures;
      v39 = sub_1000F1874();
      v78 = v39;
      isFeatureEnabled(_:)();
      sub_1000EF824(v76);
      v77 = &type metadata for AudioAccessoryFeatures;
      v78 = v39;
      isFeatureEnabled(_:)();
      sub_1000EF824(v76);
      v40 = *&v67[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];
      v67 = *&v67[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
      v65(v17, v63, v35);
      v66 = objc_autoreleasePoolPush();
      URL.path.getter();
      v41 = v73;
      URL.appendingPathComponent(_:)();
      v42 = v72;

      URL.appendingPathComponent(_:)();
      v36(v41, v35);
      objc_autoreleasePoolPop(v66);
      v36(v17, v35);
      v75 = v37;
      v73 = v36;
      v36(v42, v35);
      (*(v74 + 32))(v42, v20, v35);
      v43 = v68;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      v47 = isa;
      [(objc_class *)isa writeToURL:v45 atomically:1];

      static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v48 = swift_allocObject();
      v74 = xmmword_100226100;
      *(v48 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_1000EE954();
      *(v48 + 32) = v49;
      *(v48 + 40) = v51;
      os_log(_:dso:log:_:_:)();

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v53 = NSFileProtectionKey;
      v54 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v55 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v56 = [objc_opt_self() defaultManager];
      sub_10018AA14(v55);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v58 = String._bridgeToObjectiveC()();

      v76[0] = 0;
      LOBYTE(v49) = [v56 setAttributes:v57 ofItemAtPath:v58 error:v76];

      if (v49)
      {
        v59 = v76[0];
        URL.setResourceValues(_:)();
        v60 = v69;

        (*(v60 + 8))(v43, v70);
      }

      else
      {
        v61 = v76[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v69 + 8))(v43, v70);
      }

      (v73)(v42, v35);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001266E0();
    swift_allocError();
    *v27 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100189C2C(uint64_t a1, char *a2)
{
  v123 = a2;
  *&v122 = a1;
  v2 = type metadata accessor for BTDeferredRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v118 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v115 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v100 - v14;
  __chkstk_darwin(v16);
  v18 = &v100 - v17;
  v119 = type metadata accessor for URL();
  v121 = *(v119 - 8);
  v19 = *(v121 + 64);
  __chkstk_darwin(v119);
  v112 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v116 = &v100 - v22;
  __chkstk_darwin(v23);
  v114 = &v100 - v24;
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  __chkstk_darwin(v28);
  v113 = &v100 - v29;
  __chkstk_darwin(v30);
  v117 = &v100 - v31;
  __chkstk_darwin(v32);
  v34 = &v100 - v33;
  __chkstk_darwin(v35);
  v37 = &v100 - v36;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v111 = v27;
    v105 = v9;
    v107 = v6;
    v106 = v5;
    v38 = objc_autoreleasePoolPush();
    v39 = type metadata accessor for PropertyListEncoder();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1001C4BB4(&unk_1002F9D20, type metadata accessor for BTDeferredRecord);
    v42 = v120;
    v43 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v120 = v42;
    if (v42)
    {

      objc_autoreleasePoolPop(v38);
      return;
    }

    v46 = v43;
    v47 = v44;
    v100 = v15;
    v102 = v2;

    objc_autoreleasePoolPop(v38);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000EF870(v46, v47);
    URL.init(string:)();
    v48 = v121;
    v49 = *(v121 + 48);
    v50 = v119;
    v104 = v121 + 48;
    v103 = v49;
    if (v49(v18, 1, v119) == 1)
    {
      __break(1u);
    }

    else
    {
      v51 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      v52 = *(v48 + 32);
      v110 = v48 + 32;
      v109 = v52;
      v52(v34, v18, v50);
      URL.path.getter();
      v55 = *(v48 + 8);
      v53 = v48 + 8;
      v54 = v55;
      (v55)(v34, v50);
      v108 = v51;
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      (v54)(v37, v50);
      v56 = &v123[*(v102 + 24)];
      v121 = UUID.uuidString.getter();
      v57 = v100;
      URL.init(string:)();
      if (v103(v57, 1, v50) != 1)
      {
        v58 = v114;
        v109(v114, v57, v50);
        v59 = objc_autoreleasePoolPush();
        URL.path.getter();
        v60 = v117;
        URL.appendingPathComponent(_:)();

        URL.appendingPathComponent(_:)();

        (v54)(v60, v50);
        objc_autoreleasePoolPop(v59);
        (v54)(v58, v50);
        v61 = v118;
        sub_1001CC14C(v123, v118, type metadata accessor for BTDeferredRecord);
        v62 = v115;
        URL.init(string:)();
        if (v103(v62, 1, v50) != 1)
        {
          v63 = v112;
          v109(v112, v62, v50);
          v64 = *(v61 + 8);
          v65 = *(v61 + 16);
          URL.appendingPathComponent(_:)();
          (v54)(v63, v50);
          URL.path.getter();
          URL.appendingPathComponent(_:)();

          sub_1000F0254();

          v123 = v54;
          (v54)(v60, v50);
          v66 = v102;
          v121 = v53;
          if (v64 == 0xD000000000000012 && 0x80000001002671C0 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v67 = v118;
            v68 = v118 + *(v66 + 24);
            UUID.uuidString.getter();
          }

          else
          {
            v67 = v118;
            v69 = (v118 + *(v66 + 28));
            v71 = *v69;
            v70 = v69[1];
          }

          v72 = v111;
          v73 = objc_autoreleasePoolPush();
          v74 = v116;
          URL.path.getter();
          v75 = v113;
          URL.appendingPathComponent(_:)();

          v76 = v117;
          URL.appendingPathComponent(_:)();

          v77 = v75;
          v78 = v119;
          v79 = v123;
          (v123)(v77, v119);
          objc_autoreleasePoolPop(v73);
          v79(v74, v78);
          v79(v72, v78);
          sub_1001CC1B4(v67, type metadata accessor for BTDeferredRecord);
          v109(v72, v76, v78);
          v80 = v105;
          URLResourceValues.init()();
          URLResourceValues.isExcludedFromBackup.setter();
          v81 = v72;
          URL._bridgeToObjectiveC()(v82);
          v84 = v83;
          [(objc_class *)isa writeToURL:v83 atomically:1];

          static os_log_type_t.default.getter();
          if (qword_1002F7AF0 != -1)
          {
            swift_once();
          }

          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v85 = swift_allocObject();
          v122 = xmmword_100226100;
          *(v85 + 16) = xmmword_100226100;
          sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          *(v85 + 56) = &type metadata for String;
          *(v85 + 64) = sub_1000EE954();
          *(v85 + 32) = v86;
          *(v85 + 40) = v88;
          os_log(_:dso:log:_:_:)();

          sub_1000EE870(&qword_1002F8900, &qword_100228398);
          inited = swift_initStackObject();
          *(inited + 16) = v122;
          *(inited + 32) = NSFileProtectionKey;
          *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v90 = NSFileProtectionKey;
          v91 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v92 = sub_1000F97FC(inited);
          swift_setDeallocating();
          sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
          v93 = [objc_opt_self() defaultManager];
          sub_10018AA14(v92);

          type metadata accessor for FileAttributeKey(0);
          sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
          v94 = Dictionary._bridgeToObjectiveC()().super.isa;

          URL.path.getter();
          v95 = String._bridgeToObjectiveC()();

          v124 = 0;
          LODWORD(v88) = [v93 setAttributes:v94 ofItemAtPath:v95 error:&v124];

          if (v88)
          {
            v96 = v124;
            URL.setResourceValues(_:)();
            v97 = v107;
            v98 = v123;

            v98(v81, v119);
            (*(v97 + 8))(v80, v106);
          }

          else
          {
            v99 = v124;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            (v123)(v81, v78);
            (*(v107 + 8))(v80, v106);
          }

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1001266E0();
  swift_allocError();
  *v45 = 0x8000000000000010;
  swift_willThrow();
}

uint64_t sub_10018AA14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000EE870(&unk_1002F9D40, &unk_100226FB0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1000FA7CC((v28 + 8), v26);
    sub_1000FA7CC(v26, v28);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1000FA7CC(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10018ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v22 = a2;
  v23 = a4;
  v7 = v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v16 = objc_autoreleasePoolPush();
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathComponent(_:)();
  v17 = *(v9 + 8);
  v17(v12, v8);
  objc_autoreleasePoolPop(v16);
  v18 = objc_autoreleasePoolPush();
  v19 = *(v6 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v26 = v15;
  v27 = v7;
  sub_1000EE870(v23, v24);
  OS_dispatch_queue.sync<A>(execute:)();
  v20 = v28;
  objc_autoreleasePoolPop(v18);
  v17(v15, v8);
  return v20;
}

uint64_t sub_10018AE70@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(uint64_t, unint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v13 = Data.init(contentsOf:options:)();
    if (v4)
    {

      return (*(v9 + 56))(a4, 1, 1, v8);
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v21 = a4;
      v18 = objc_autoreleasePoolPush();
      a2(v16, v17);
      objc_autoreleasePoolPop(v18);
      sub_1000EF870(v16, v17);
      v19 = v21;
      sub_1001CC214(v12, v21, a3);
      return (*(v9 + 56))(v19, 0, 1, v8);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return (*(v9 + 56))(a4, 1, 1, v8);
  }
}

void *sub_10018B20C(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for DeviceRecord();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F8520, &unk_100227B60);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for DeviceRecord);
        sub_1001CC14C(v56, v75, type metadata accessor for DeviceRecord);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF0CC(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF0CC(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for DeviceRecord);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for DeviceRecord);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_10018BDC8(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for DeviceSupportInformationRecord();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F8510, &unk_100227B50);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for DeviceSupportInformationRecord);
        sub_1001CC14C(v56, v75, type metadata accessor for DeviceSupportInformationRecord);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF0F4(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF0F4(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for DeviceSupportInformationRecord);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for DeviceSupportInformationRecord);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_10018C984(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for MagicPairingSettingsRecord();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &unk_1002F9C30, &qword_1002299A0);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for MagicPairingSettingsRecord);
        sub_1001CC14C(v56, v75, type metadata accessor for MagicPairingSettingsRecord);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF11C(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF11C(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for MagicPairingSettingsRecord);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for MagicPairingSettingsRecord);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_10018D540(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for SoundProfileRecord();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F84F8, &unk_1002299F0);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for SoundProfileRecord);
        sub_1001CC14C(v56, v75, type metadata accessor for SoundProfileRecord);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF144(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF144(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for SoundProfileRecord);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for SoundProfileRecord);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_10018E14C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v5 = v4;
  v7 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v82 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v67 - v16;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  __chkstk_darwin(v20);
  v22 = &v67 - v21;
  v97 = &_swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v83 = a1;
  URL.path.getter();
  v84 = v5;
  v80 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v89 = v26;
  if (v26)
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v76 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v78 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    v77 = sub_1000EE954();
    *(v28 + 64) = v77;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v79 = v27;
    os_log(_:dso:log:_:_:)();

    v32 = 0;
    v73 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v88 = (v12 + 56);
    v74 = (v12 + 48);
    v72 = (v12 + 32);
    v67 = v12;
    v33 = (v12 + 8);
    v68 = &_swiftEmptyArrayStorage;
    v75 = xmmword_100226C80;
    v71 = v22;
    v70 = v10;
    v69 = v19;
    v93 = v33;
    while (1)
    {
      if ([v89 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v94 = 0u;
        v95 = 0u;
      }

      v96[0] = v94;
      v96[1] = v95;
      if (!*(&v95 + 1))
      {
        break;
      }

      v34 = swift_dynamicCast();
      (*v88)(v10, v34 ^ 1u, 1, v11);
      if ((*v74)(v10, 1, v11) == 1)
      {
        goto LABEL_20;
      }

      (*v72)(v19, v10, v11);
      v35 = v81;
      URL.deletingPathExtension()();
      v36 = URL.lastPathComponent.getter();
      v38 = v37;
      v39 = *v33;
      (*v33)(v35, v11);
      v40 = objc_autoreleasePoolPush();
      v92 = v32;
      v41 = v40;
      URL.path.getter();
      v42 = v11;
      v43 = v84;
      v44 = v82;
      URL.appendingPathComponent(_:)();

      v90 = v36;
      v91 = v38;
      URL.appendingPathComponent(_:)();
      v39(v44, v42);
      objc_autoreleasePoolPop(v41);
      v45 = objc_autoreleasePoolPush();
      v46 = *(v43 + v73);
      __chkstk_darwin(v45);
      *(&v67 - 2) = v35;
      *(&v67 - 1) = v43;
      v11 = v42;
      sub_1000EE870(v85, v86);
      v32 = v92;
      OS_dispatch_queue.sync<A>(execute:)();
      v47 = *&v96[0];
      v48 = v45;
      v33 = v93;
      objc_autoreleasePoolPop(v48);
      v39(v35, v42);
      if (v47)
      {
        v19 = v69;

        v54 = v47;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = v71;
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v39(v19, v11);
        v68 = v97;
      }

      else
      {
        static os_log_type_t.error.getter();
        v49 = swift_allocObject();
        *(v49 + 16) = v75;
        v50 = v77;
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = v50;
        v51 = v91;
        *(v49 + 32) = v90;
        *(v49 + 40) = v51;
        v22 = v71;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v49 + 96) = &type metadata for String;
        *(v49 + 104) = v50;
        *(v49 + 72) = v52;
        *(v49 + 80) = v53;
        v33 = v93;
        os_log(_:dso:log:_:_:)();

        v19 = v69;
        v39(v69, v11);
      }

      v10 = v70;
    }

    sub_1000EEE6C(v96, &unk_1002F9C10, &qword_100228390);
    (*v88)(v10, 1, 1, v11);
LABEL_20:
    sub_1000EEE6C(v10, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = v75;
    v60 = v68;
    if (v68 >> 62)
    {
      v62 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v62 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v67;
    *(v61 + 56) = &type metadata for Int;
    *(v61 + 64) = &protocol witness table for Int;
    *(v61 + 32) = v62;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v77;
    *(v61 + 96) = &type metadata for String;
    *(v61 + 104) = v64;
    *(v61 + 72) = v63;
    *(v61 + 80) = v65;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = sub_1000EE954();
    *(v56 + 32) = v57;
    *(v56 + 40) = v59;
    os_log(_:dso:log:_:_:)();

    v60 = &_swiftEmptyArrayStorage;
  }

  (*(v12 + 8))(v22, v11);
  return v60;
}

void *sub_10018EB0C(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F9E68, &unk_100229AE0);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for CloudCoordinatorConfiguration();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F9E68, &unk_100229AE0);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for CloudCoordinatorConfiguration);
        sub_1001CC14C(v56, v75, type metadata accessor for CloudCoordinatorConfiguration);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF16C(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF16C(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for CloudCoordinatorConfiguration);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for CloudCoordinatorConfiguration);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_10018F6C8(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = _swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F8500, &qword_100227B38);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for LegacyAccountMagicKeysRecord);
        sub_1001CC14C(v56, v75, type metadata accessor for LegacyAccountMagicKeysRecord);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF2A0(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF2A0(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for LegacyAccountMagicKeysRecord);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for LegacyAccountMagicKeysRecord);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = _swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_100190284(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F9D90, &qword_100227B30);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for LegacyMagicPairingSettingsRecords);
        sub_1001CC14C(v56, v75, type metadata accessor for LegacyMagicPairingSettingsRecords);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF2C8(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF2C8(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for LegacyMagicPairingSettingsRecords);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for LegacyMagicPairingSettingsRecords);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

void *sub_100190E40(uint64_t a1)
{
  v2 = v1;
  v96 = sub_1000EE870(&qword_1002F9E48, &qword_100229AC8);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = &v72 - v5;
  v95 = type metadata accessor for BTDeferredRecord();
  v76 = *(v95 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v95);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v72 - v10;
  v11 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v72 - v20;
  __chkstk_darwin(v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v97 = a1;
  URL.path.getter();
  v98 = v2;
  v92 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v28 = objc_opt_self();

  v29 = [v28 defaultManager];
  v30 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v100 = v30;
  if (v30)
  {
    LODWORD(v104) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v31 = qword_100300E40;
    v89 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v91 = v26;
    v88 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    v87 = sub_1000EE954();
    *(v32 + 64) = v87;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v90 = v31;
    os_log(_:dso:log:_:_:)();

    v104 = 0;
    v83 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v99 = (v16 + 56);
    v85 = (v16 + 48);
    v82 = (v16 + 32);
    v73 = v16;
    v84 = (v16 + 8);
    v81 = (v76 + 48);
    v77 = &_swiftEmptyArrayStorage;
    v86 = xmmword_100226C80;
    v79 = v14;
    v78 = v23;
    v80 = v6;
    while (1)
    {
      if ([v100 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
      }

      v107[0] = v105;
      v107[1] = v106;
      if (!*(&v106 + 1))
      {
        break;
      }

      v37 = swift_dynamicCast();
      (*v99)(v14, v37 ^ 1u, 1, v15);
      if ((*v85)(v14, 1, v15) == 1)
      {
        goto LABEL_21;
      }

      (*v82)(v23, v14, v15);
      v38 = v93;
      URL.deletingPathExtension()();
      v39 = URL.lastPathComponent.getter();
      v41 = v40;
      v42 = *v84;
      (*v84)(v38, v15);
      v103 = objc_autoreleasePoolPush();
      URL.path.getter();
      v43 = v98;
      v44 = v94;
      URL.appendingPathComponent(_:)();

      v101 = v39;
      v102 = v41;
      URL.appendingPathComponent(_:)();
      v45 = v42;
      v42(v44, v15);
      objc_autoreleasePoolPop(v103);
      v46 = objc_autoreleasePoolPush();
      v47 = *(v43 + v83);
      __chkstk_darwin(v46);
      *(&v72 - 2) = v38;
      *(&v72 - 1) = v43;
      v48 = v80;
      v49 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      v104 = v49;
      objc_autoreleasePoolPop(v46);
      v42(v38, v15);
      if ((*v81)(v48, 1, v95) == 1)
      {
        sub_1000EEE6C(v48, &qword_1002F9E48, &qword_100229AC8);
        static os_log_type_t.error.getter();
        v50 = swift_allocObject();
        *(v50 + 16) = v86;
        v51 = v87;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = v51;
        v52 = v102;
        *(v50 + 32) = v101;
        *(v50 + 40) = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v50 + 96) = &type metadata for String;
        *(v50 + 104) = v51;
        *(v50 + 72) = v53;
        *(v50 + 80) = v54;
        os_log(_:dso:log:_:_:)();

        v55 = v78;
        v45(v78, v15);
        v14 = v79;
        v23 = v55;
      }

      else
      {
        v23 = v78;

        v56 = v74;
        sub_1001CC214(v48, v74, type metadata accessor for BTDeferredRecord);
        sub_1001CC14C(v56, v75, type metadata accessor for BTDeferredRecord);
        v57 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1001CF2F0(0, v57[2] + 1, 1, v57);
        }

        v14 = v79;
        v59 = v77[2];
        v58 = v77[3];
        if (v59 >= v58 >> 1)
        {
          v77 = sub_1001CF2F0(v58 > 1, v59 + 1, 1, v77);
        }

        sub_1001CC1B4(v74, type metadata accessor for BTDeferredRecord);
        v42(v23, v15);
        v60 = v77;
        v77[2] = v59 + 1;
        sub_1001CC214(v75, v60 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for BTDeferredRecord);
      }
    }

    sub_1000EEE6C(v107, &unk_1002F9C10, &qword_100228390);
    (*v99)(v14, 1, 1, v15);
LABEL_21:
    sub_1000EEE6C(v14, &unk_1002F7BA0, &unk_1002270E0);
    static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    v65 = v77;
    v67 = v77[2];
    *(v66 + 56) = &type metadata for Int;
    *(v66 + 64) = &protocol witness table for Int;
    *(v66 + 32) = v67;
    v26 = v91;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v87;
    *(v66 + 96) = &type metadata for String;
    *(v66 + 104) = v69;
    *(v66 + 72) = v68;
    *(v66 + 80) = v70;
    os_log(_:dso:log:_:_:)();

    v16 = v73;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_1000EE954();
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    os_log(_:dso:log:_:_:)();
    v65 = &_swiftEmptyArrayStorage;
  }

  (*(v16 + 8))(v26, v15);
  return v65;
}

unint64_t sub_1001919FC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1000EE870(&unk_1002F9530, qword_1002294F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = inited + 32;
    *(inited + 40) = v4;
    strcpy(v15, "Cloud Error: ");
    HIWORD(v15[1]) = -4864;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1000EE870(&unk_1002F9530, qword_1002294F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = inited + 32;
    *(inited + 40) = v3;
    _StringGuts.grow(_:)(17);

    v15[0] = 0x2074736973726550;
    v15[1] = 0xEF203A726F727245;
LABEL_5:
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v5._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v5);

    v6 = v15[0];
    v7 = v15[1];
    *(inited + 72) = &type metadata for String;
LABEL_22:
    *(inited + 48) = v6;
    goto LABEL_23;
  }

  v8 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v11;
        *(inited + 48) = 0x72724520656C6946;
        v7 = 0xEA0000000000726FLL;
        goto LABEL_23;
      }

      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271EF0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000019;
    }

    else
    {
      if (v8 != 4)
      {
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v12;
        *(inited + 48) = 0x2064696C61766E49;
        v7 = 0xEE0064726F636572;
        goto LABEL_23;
      }

      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271F10;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000015;
    }

LABEL_21:
    *(inited + 40) = v10;
    goto LABEL_22;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271F60;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD00000000000002ELL;
    }

    else
    {
      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271F30;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD00000000000002BLL;
    }

    goto LABEL_21;
  }

  if (v8)
  {
    sub_1000EE870(&unk_1002F9530, qword_1002294F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = inited + 32;
    v7 = 0x800000010026E030;
    *(inited + 72) = &type metadata for String;
    v6 = 0xD000000000000014;
    goto LABEL_21;
  }

  sub_1000EE870(&unk_1002F9530, qword_1002294F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100226100;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v9;
  *(inited + 48) = 0x206E776F6E6B6E55;
  v7 = 0xED0000726F727245;
LABEL_23:
  *(inited + 56) = v7;
  v13 = sub_1000F99F0(inited);
  swift_setDeallocating();
  sub_1000EEE6C(v2, &unk_1002F9EB0, &unk_100227D50);
  return v13;
}

uint64_t sub_100191F48(uint64_t a1)
{
  v2 = sub_1001CDF5C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100191F84(uint64_t a1)
{
  v2 = sub_1001CDF5C();

  return Error<>._code.getter(a1, v2);
}

void sub_100191FC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = objc_opt_self();
  if (([v5 isBuddyComplete] & 1) == 0)
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (([v5 isFirstUnlocked] & 1) == 0)
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 == -1)
    {
LABEL_8:
      os_log(_:dso:log:_:_:)();
      v6 = 0;
      goto LABEL_9;
    }

LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  v6 = [objc_allocWithZone(BTCloudAccountInfo) init];
  sub_100193560();
  type metadata accessor for CloudCoordinator();
  v7 = sub_10015A5B8();
  swift_unknownObjectRelease();
  [v6 setIsSignedIn:v7 & 1];
  v8 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  swift_unknownObjectRetain();
  v9 = sub_10015A5A0();
  swift_unknownObjectRelease();
  [v6 setManateeAvailable:v9 & 1];
  v10 = objc_autoreleasePoolPush();
  sub_100192218(a1, v6);
  if (!v2)
  {
    objc_autoreleasePoolPop(v10);
LABEL_9:
    *a2 = v6;
    return;
  }

  objc_autoreleasePoolPop(v10);
  __break(1u);
}

void sub_100192218(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 56) aa_primaryAppleAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 aa_personID];
    [a2 setAccountIdentifier:v5];

    v6 = [v4 appleID];
    [a2 setLoginID:v6];
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100192340()
{
  v1 = type metadata accessor for URL();
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
  if (*(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager))
  {
    v8 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  }

  else
  {
    (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL, v4);
    v9 = type metadata accessor for RecordFileManager();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = v0;
    v8 = sub_100123B00(v6);
    v13 = *(v0 + v7);
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100192464@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79E8 != -1)
    {
      swift_once();
    }

    v7 = sub_1000EE91C(v2, qword_100300B80);
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_10018F6C8(v6);

    (*(v3 + 8))(v6, v2);
    if (v8[2])
    {
      v9 = type metadata accessor for LegacyAccountMagicKeysRecord();
      v10 = *(v9 - 8);
      sub_1001CC14C(v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a1, type metadata accessor for LegacyAccountMagicKeysRecord);

      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    else
    {

      v14 = type metadata accessor for LegacyAccountMagicKeysRecord();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v12 = type metadata accessor for LegacyAccountMagicKeysRecord();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_100192770@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v128 = type metadata accessor for CloudCoordinatorConfiguration();
  *&v123 = *(v128 - 8);
  v4 = *(v123 + 64);
  __chkstk_darwin(v128);
  v115 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EE870(&qword_1002F9E68, &unk_100229AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v125 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v113 - v10;
  v12 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v131 = &v113 - v14;
  v129 = type metadata accessor for UUID();
  v15 = *(v129 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v129);
  v122 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for URL();
  v18 = *(v130 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v130);
  v117 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v119 = &v113 - v22;
  __chkstk_darwin(v23);
  v25 = &v113 - v24;
  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v28 = [v27 infoDictionary];

  if (!v28)
  {
    v132._countAndFlagsBits = 0;
    v132._object = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v132._countAndFlagsBits = 0xD00000000000001DLL;
    v132._object = 0x8000000100271B00;
    v105 = [v26 mainBundle];
    v106 = [v105 description];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    v110._countAndFlagsBits = v107;
    v110._object = v109;
    String.append(_:)(v110);

    v112 = 0;
    goto LABEL_38;
  }

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v29 + 16) || (v30 = sub_1000F8C5C(0xD00000000000001ALL, 0x8000000100271B20), (v31 & 1) == 0) || (sub_100162534(*(v29 + 56) + 32 * v30, &v132), (swift_dynamicCast() & 1) == 0))
  {
LABEL_36:
    v132._countAndFlagsBits = 0;
    v132._object = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v98._countAndFlagsBits = 0xD00000000000003DLL;
    v98._object = 0x8000000100271B40;
    String.append(_:)(v98);
    v99 = [v26 mainBundle];
    v100 = [v99 description];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104._countAndFlagsBits = v101;
    v104._object = v103;
    String.append(_:)(v104);

    v112 = 0;
LABEL_38:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v32 = v135;
  v120 = v136;
  sub_1000EE870(&unk_1002F9E70, qword_100229840);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100226C80;
  v124 = 0x8000000100267220;
  *(v33 + 32) = 0xD00000000000001ELL;
  *(v33 + 40) = 0x8000000100267220;
  *(v33 + 48) = 0xD000000000000010;
  *(v33 + 56) = 0x8000000100267960;
  v133 = &type metadata for AudioAccessoryFeatures;
  v134 = sub_1000F1874();
  v34 = isFeatureEnabled(_:)();
  sub_1000EF824(&v132._countAndFlagsBits);
  v126 = a1;
  v127 = v11;
  v121 = v32;
  if (v34)
  {
    v33 = sub_1001CF194(1, 3, 1, v33);
    *(v33 + 16) = 3;
    *(v33 + 64) = 0xD000000000000012;
    *(v33 + 72) = 0x8000000100267AF0;
  }

  v26 = *(v2 + 48);
  v113 = *(v2 + 40);
  v35 = *(v18 + 16);
  v36 = v2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
  v114 = v25;
  v116 = v2;
  v37 = v130;
  v118 = v35;
  (v35)(v25, v36, v130);

  v38 = v131;
  UUID.init(uuidString:)();
  v39 = v15;
  v40 = *(v15 + 48);
  v41 = v129;
  if (v40(v38, 1, v129) == 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v42 = *(v39 + 32);
  v43 = v122;
  v42(v122, v38, v41);
  v44 = v126;
  v42(v126, v43, v41);
  v45 = v128;
  v46 = &v44[*(v128 + 20)];
  *v46 = v113;
  *(v46 + 1) = v26;
  v47 = &v44[v45[6]];
  v48 = v120;
  *v47 = v121;
  v47[1] = v48;
  (*(v18 + 32))(&v44[v45[7]], v114, v37);
  *&v44[v45[8]] = v33;
  sub_100192340();
  if (qword_1002F7A10 != -1)
  {
    swift_once();
  }

  v49 = sub_1000EE91C(v37, qword_100300C28);
  v50 = v119;
  (v118)(v119, v49, v37);
  v51 = sub_10018EB0C(v50);

  v126 = *(v18 + 8);
  v129 = v18 + 8;
  (v126)(v50, v37);
  v52 = v127;
  if (v51[2])
  {
    v53 = v123;
    sub_1001CC14C(v51 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v127, type metadata accessor for CloudCoordinatorConfiguration);
    v54 = 0;
    v55 = v128;
  }

  else
  {
    v54 = 1;
    v55 = v128;
    v53 = v123;
  }

  (*(v53 + 56))(v52, v54, 1, v55);
  v56 = *(v33 + 16);
  v58 = v124;
  v57 = v125;
  if (v56)
  {
    v131 = 0;
    v118 = (v53 + 48);
    v116 = CKCurrentUserDefaultName;
    v59 = (v33 + 40);
    v123 = xmmword_100226100;
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      if (v61 == 0xD00000000000001ELL && v58 == v60)
      {
        goto LABEL_17;
      }

      v63 = *(v59 - 1);
      v64 = *v59;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_17;
      }

      sub_1000FAAFC(v127, v57, &qword_1002F9E68, &unk_100229AE0);
      v65 = v128;
      if ((*v118)(v57, 1, v128) == 1)
      {

        sub_1000EEE6C(v57, &qword_1002F9E68, &unk_100229AE0);
      }

      else
      {
        v66 = v115;
        v67 = sub_1001CC214(v57, v115, type metadata accessor for CloudCoordinatorConfiguration);
        v68 = *(v66 + *(v65 + 32));
        v132._countAndFlagsBits = v61;
        v132._object = v60;
        __chkstk_darwin(v67);
        v111 = &v132;

        v69 = v131;
        LOBYTE(v68) = sub_10017CE74(sub_1001CC27C, (&v113 - 4), v68);
        v131 = v69;
        sub_1001CC1B4(v66, type metadata accessor for CloudCoordinatorConfiguration);
        if (v68)
        {

          goto LABEL_16;
        }
      }

      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v70 = qword_100300E28;
      v121 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v71 = swift_allocObject();
      *(v71 + 16) = v123;
      *(v71 + 56) = &type metadata for String;
      v120 = sub_1000EE954();
      *(v71 + 64) = v120;
      *(v71 + 32) = v61;
      *(v71 + 40) = v60;

      v122 = v70;
      os_log(_:dso:log:_:_:)();

      sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75._countAndFlagsBits = v61;
      v75._object = v60;
      v76._countAndFlagsBits = v72;
      v76._object = v74;
      v77.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v75, v76).super.isa;
      v78 = v119;
      sub_10013A598();
      v79 = v117;
      URL.appendingPathComponent(_:isDirectory:)();
      v80 = v126;
      (v126)(v78, v130);
      v81._countAndFlagsBits = 0x65746176697250;
      v81._object = 0xE700000000000000;
      URL.appendPathComponent(_:)(v81);
      v82 = [(objc_class *)v77.super.isa ownerName];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86._countAndFlagsBits = v83;
      v86._object = v85;
      URL.appendPathComponent(_:)(v86);

      v87 = [(objc_class *)v77.super.isa zoneName];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v132._countAndFlagsBits = v88;
      v132._object = v90;
      v91 = v79;
      v92._countAndFlagsBits = 0x6E656B6F742ELL;
      v92._object = 0xE600000000000000;
      String.append(_:)(v92);
      URL.appendPathComponent(_:)(v132);

      v93 = sub_10013A930();
      if (v93)
      {

        static os_log_type_t.error.getter();
        v94 = swift_allocObject();
        *(v94 + 16) = v123;
        v95 = v120;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = v95;
        *(v94 + 32) = v61;
        *(v94 + 40) = v60;
        os_log(_:dso:log:_:_:)();

        v96 = v131;
        sub_10013ABC4();
        if (v96)
        {

          (v126)(v91, v130);
          v131 = 0;
        }

        else
        {
          v131 = 0;
          (v126)(v91, v130);
        }

        v58 = v124;
        v57 = v125;
        goto LABEL_17;
      }

      (v80)(v79, v130);
LABEL_16:
      v58 = v124;
      v57 = v125;
LABEL_17:
      v59 += 2;
      --v56;
    }

    while (v56);
  }

  return sub_1000EEE6C(v127, &qword_1002F9E68, &unk_100229AE0);
}

uint64_t sub_100193560()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CloudCoordinatorConfiguration();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = (v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  v18 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  if (v18)
  {
    v19 = v17[1];
    v20 = v18;
  }

  else
  {
    v30 = v0;
    sub_100192770(v29 - v15);
    sub_1001CC14C(v16, v13, type metadata accessor for CloudCoordinatorConfiguration);
    v21 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
    v29[2] = " in beforeFirstUnlock state";
    v29[3] = v21;
    (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
    static DispatchQoS.unspecified.getter();
    v31 = &_swiftEmptyArrayStorage;
    v29[1] = sub_1001C4BB4(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_1000FA0E0(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v23 = type metadata accessor for CloudCoordinator();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = v30;
    swift_unknownObjectRetain();
    v20 = sub_10015F20C(v13, v26, &off_1002C0580, v22);

    sub_1001CC1B4(v16, type metadata accessor for CloudCoordinatorConfiguration);
    v27 = *v17;
    *v17 = v20;
    v17[1] = &off_1002BE310;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v20;
}

uint64_t sub_10019391C()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v113 = &v104 - v5;
  __chkstk_darwin(v6);
  v114 = &v104 - v7;
  __chkstk_darwin(v8);
  v118 = &v104 - v9;
  __chkstk_darwin(v10);
  v121 = &v104 - v11;
  __chkstk_darwin(v12);
  v123 = &v104 - v13;
  __chkstk_darwin(v14);
  v125 = &v104 - v15;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v115 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  __chkstk_darwin(v23);
  v111 = &v104 - v24;
  __chkstk_darwin(v25);
  v112 = &v104 - v26;
  __chkstk_darwin(v27);
  v29 = &v104 - v28;
  __chkstk_darwin(v30);
  v32 = &v104 - v31;
  __chkstk_darwin(v33);
  v35 = &v104 - v34;
  __chkstk_darwin(v36);
  v38 = &v104 - v37;
  __chkstk_darwin(v39);
  v116 = &v104 - v40;
  __chkstk_darwin(v41);
  v117 = &v104 - v42;
  __chkstk_darwin(v43);
  v119 = &v104 - v44;
  __chkstk_darwin(v45);
  v120 = (&v104 - v46);
  __chkstk_darwin(v47);
  v49 = &v104 - v48;
  __chkstk_darwin(v50);
  v52 = &v104 - v51;
  if (([objc_opt_self() isFirstUnlocked] & 1) == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v103 = &_swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
    return v103;
  }

  v109 = v35;
  v110 = v38;
  v105 = v29;
  v106 = v32;
  v107 = v22;
  v108 = v3;
  v128 = &_swiftEmptyArrayStorage;
  sub_100192340();
  v53 = v125;
  URL.init(string:)();
  v55 = (v17 + 6);
  v54 = v17[6];
  result = v54(v53, 1, v16);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v122 = v17[4];
  v122(v49, v53, v16);
  URL.appendingPathComponent(_:)();
  v59 = v17[1];
  v58 = (v17 + 1);
  v57 = v59;
  (v59)(v49, v16);
  v60 = sub_100190E40(v52);

  (v59)(v52, v16);
  sub_100194504(v60);
  v125 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
  v61 = *(v126 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);

  v62 = v123;
  URL.init(string:)();
  result = v54(v62, 1, v16);
  v124 = v54;
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v63 = v119;
  v64 = v122;
  v122(v119, v62, v16);
  v65 = v120;
  URL.appendingPathComponent(_:)();
  (v57)(v63, v16);
  v66 = sub_100190E40(v65);

  v120 = v57;
  (v57)(v65, v16);
  sub_100194504(v66);
  v67 = *&v125[v126];

  v68 = v121;
  URL.init(string:)();
  v69 = v124;
  result = v124(v68, 1, v16);
  v123 = v55;
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v70 = v64;
  v71 = v116;
  v70(v116, v68, v16);
  v72 = v117;
  URL.appendingPathComponent(_:)();
  v73 = v120;
  v120(v71, v16);
  v74 = sub_100190E40(v72);

  v73(v72, v16);
  sub_100194504(v74);
  v75 = v126;
  v76 = *&v125[v126];

  v77 = v118;
  URL.init(string:)();
  result = v69(v77, 1, v16);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v78 = v75;
  v79 = v109;
  v70(v109, v77, v16);
  v80 = v110;
  URL.appendingPathComponent(_:)();
  v81 = v120;
  v120(v79, v16);
  v82 = sub_100190E40(v80);

  v121 = v58;
  v81(v80, v16);
  sub_100194504(v82);
  v127[3] = &type metadata for AudioAccessoryFeatures;
  v127[4] = sub_1000F1874();
  v83 = isFeatureEnabled(_:)();
  sub_1000EF824(v127);
  v84 = v125;
  if ((v83 & 1) == 0)
  {
    goto LABEL_10;
  }

  v85 = v81;
  v86 = *&v125[v78];

  v87 = v114;
  URL.init(string:)();
  result = v124(v87, 1, v16);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v88 = v105;
  v89 = v122;
  v122(v105, v87, v16);
  v90 = v106;
  URL.appendingPathComponent(_:)();
  v85(v88, v16);
  v91 = sub_100190E40(v90);

  v92 = v90;
  v81 = v85;
  v85(v92, v16);
  sub_100194504(v91);
  v84 = v125;
  v93 = *&v125[v78];

  v94 = v113;
  URL.init(string:)();
  result = v124(v94, 1, v16);
  if (result != 1)
  {
    v95 = v111;
    v89(v111, v94, v16);
    v96 = v112;
    URL.appendingPathComponent(_:)();
    v81(v95, v16);
    v97 = sub_100190E40(v96);

    v81(v96, v16);
    sub_100194504(v97);
    v78 = v126;
LABEL_10:
    v98 = *&v84[v78];

    v99 = v108;
    URL.init(string:)();
    result = v124(v99, 1, v16);
    if (result != 1)
    {
      v100 = v115;
      v122(v115, v99, v16);
      v101 = v107;
      URL.appendingPathComponent(_:)();
      v81(v100, v16);
      v102 = sub_100190E40(v101);

      v81(v101, v16);
      sub_100194504(v102);
      return v128;
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}