int main(int argc, const char **argv, const char **envp)
{
  v3 = getWFRunningLifecycleLogObject();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xFFFFFFFFuLL, "UntilFirstAction", " enableTelemetry=YES ", buf, 2u);
  }

  v4 = getWFGeneralLogObject();
  v5 = os_signpost_id_generate(v4);

  v6 = getWFGeneralLogObject();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "BackgroundRunnerMain", "", v13, 2u);
  }

  unsetenv("TMPDIR");
  unsetenv("HOME");
  unsetenv("CFFIXED_USER_HOME");
  [VCBundleIdentifierRunner UTF8String];
  _set_user_dir_suffix();
  v8 = objc_alloc_init(WFIsolatedShortcutRunner);
  v9 = +[NSXPCListener serviceListener];
  [v9 setDelegate:v8];
  v10 = getWFGeneralLogObject();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "BackgroundRunnerMain", "", v12, 2u);
  }

  [v9 resume];
  exit(1);
}

void sub_100002564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002660;
  v10[3] = &unk_10009FA90;
  v11 = WeakRetained;
  v12 = v5;
  v8 = v5;
  v9 = WeakRetained;
  dispatch_async(v7, v10);
}

void sub_100002660(uint64_t a1)
{
  v2 = [*(a1 + 32) sandboxExtensionTaken];
  v3 = getWFToolKitExecutionLogObject();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[WFIsolatedShortcutRunner init]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Sandbox extension has already been taken, this is an error!", &v6, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[WFIsolatedShortcutRunner init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Sandbox extensions acquired", &v6, 0xCu);
    }

    [*(a1 + 32) setSandboxExtensionTaken:1];
    v5 = [*(a1 + 40) copy];
    [*(a1 + 32) setSandboxExtensionReleaseBlock:v5];

    v4 = [*(a1 + 32) sandboxExtensionGroup];
    dispatch_group_leave(v4);
  }
}

uint64_t sub_1000027D0(uint64_t a1)
{
  v1 = *(a1 + 16);

  return sub_100017A9C();
}

NSString sub_10000285C@<X0>(void *a1@<X8>)
{
  result = sub_100009AE8();
  *a1 = result;
  return result;
}

uint64_t sub_1000028D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10000996C() & 1;
}

uint64_t sub_10000297C()
{
  v1 = sub_100088E08();
  sub_100012368(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_100012544();
  v8(v7);

  return _swift_deallocObject(v0, ((v3 + 32) & ~v3) + v5, v3 | 7);
}

uint64_t sub_100002A2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002A6C()
{
  v1 = sub_100088E08();
  sub_100012368(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = sub_100012544();
  v8(v7);
  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100002B38()
{
  v1 = sub_100088E08();
  sub_100012368(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = sub_100012544();
  v8(v7);

  return _swift_deallocObject(v0, ((v3 + 40) & ~v3) + v5, v3 | 7);
}

uint64_t sub_100002BF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002C28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A5F50, &qword_10008D4B0);
  v5 = sub_100008E78(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002CB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100008DC0(&qword_1000A5F50, &qword_10008D4B0);

  return sub_100009158(a1, v5, a3, v6);
}

uint64_t sub_100002D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012578();
  v6 = sub_100088EA8();
  v7 = sub_1000125B4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_100008E78(v10, a2, v9);
  }

  v11 = sub_100088D48();
  v12 = sub_1000125B4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100002E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012578();
  v8 = sub_100088EA8();
  v9 = sub_1000125B4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_100088D48();
    result = sub_1000125B4(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return sub_100009158(v12, a2, a2, v11);
}

uint64_t sub_100002EE8()
{
  v1 = sub_1000899A8();
  sub_100012368(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (*(*v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);

  v14 = *(v3 + 8);
  v14(v0 + v5, v1);
  v14(v0 + v10, v1);
  v15 = v8[7];
  v16 = sub_100088A68();
  sub_100017A1C(v16);
  (*(v17 + 8))(v0 + v10 + v15);
  v18 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v11 | 7);
}

uint64_t sub_100003074()
{
  sub_10005F538();

  return sub_100012498();
}

uint64_t sub_1000030F8()
{
  v1 = sub_1000889E8();
  sub_100012368(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000031B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012578();
  v6 = sub_1000899A8();
  sub_1000125B4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = sub_10005E120();
  }

  else
  {
    v9 = sub_100088A68();
    v8 = v3 + *(a3 + 20);
  }

  return sub_100008E78(v8, a2, v9);
}

uint64_t sub_100003248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012578();
  v8 = sub_1000899A8();
  v9 = sub_1000125B4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = sub_100088A68();
    v12 = v4 + *(a4 + 20);
  }

  return sub_100009158(v12, a2, a2, v11);
}

uint64_t sub_100003300()
{
  _Block_release(*(v0 + 24));

  sub_100009BA0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003344()
{
  sub_10005E1F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003378()
{
  v1 = *(v0 + 16);

  sub_10005E1F0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000033AC()
{
  v1 = *(v0 + 16);

  sub_10005E1F0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000033E0()
{
  v1 = *(v0 + 24);

  sub_10005D504();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100003430()
{
  v1 = *(v0 + 24);

  sub_10005D504();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100003464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100088A68();
  v7 = sub_1000125B4(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_100060538(*(a1 + *(a3 + 20)));
  }

  return sub_100008E78(a1, a2, v7);
}

uint64_t sub_100003500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012578();
  v8 = sub_100088A68();
  result = sub_1000125B4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_100012498();

    return sub_100009158(v11, v12, a2, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000359C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100060538(*(a1 + 8));
  }

  v7 = sub_100089888();
  v8 = sub_1000125B4(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 28);
  }

  else
  {
    v10 = sub_100089C48();
    v11 = *(a3 + 32);
  }

  return sub_100008E78(a1 + v11, a2, v10);
}

uint64_t sub_100003658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100089888();
    v9 = sub_1000125B4(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 28);
    }

    else
    {
      v11 = sub_100089C48();
      v12 = *(a4 + 32);
    }

    return sub_100009158(v5 + v12, a2, a2, v11);
  }

  return result;
}

unint64_t sub_10000381C()
{
  sub_100085264();
  v3 = *(v1 + 32);
  sub_10005EB04();
  v5 = ~v4;
  for (i = v6 & ~v4; ((1 << i) & *(v1 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v8 = (*(v1 + 48) + 16 * i);
    v9 = *v8 == v2 && v8[1] == v0;
    if (v9 || (sub_10008AA68() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100003904()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003990()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000039C8()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003A18()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A58()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003AB4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003B04()
{
  _Block_release(*(v0 + 32));
  v1 = sub_1000849BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003B3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002900(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_100003BC8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_10008A268();
  v7 = v6;

  v13._countAndFlagsBits = v5;
  v13._object = v7;
  sub_10008A2C8(v13);

  sub_100089378();
  sub_100008DC0(&unk_1000A5A40, &qword_10008D8E0);
  sub_1000893A8();

  if (!v2)
  {
    *a2 = v9;
    a2[1] = v10;
    result = *&v11;
    a2[2] = v11;
    a2[3] = v12;
  }

  return result;
}

void sub_100003D04(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v148 = a3;
  v146 = a4;
  v7 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = (&v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v135 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v135 - v16);
  __chkstk_darwin(v15);
  v19 = (&v135 - v18);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      v35 = a2;
      v36 = [v34 fullyQualifiedLinkActionIdentifier];
      v37 = [v36 bundleIdentifier];

      v38 = sub_10008A268();
      v145 = v39;

      v144 = v35;
      if (sub_10008A7A8())
      {
        v40 = enum case for ContainerDefinition.ContainerType.framework(_:);
        v41 = sub_100089BE8();
        (*(*(v41 - 8) + 104))(v14, v40, v41);
        v42 = v14;
        v43 = 0;
        v44 = v41;
      }

      else
      {
        v44 = sub_100089BE8();
        v42 = v14;
        v43 = 1;
      }

      sub_100009158(v42, v43, 1, v44);
      v65 = sub_100004B0C(v38, v145, v14, a1);
      if (v4)
      {
        sub_100008F80(v14, &qword_1000A5A08, &qword_10008C9E8);

        goto LABEL_26;
      }

      v68 = a1;
      v47 = v65;
      v147 = v68;
      sub_100008F80(v14, &qword_1000A5A08, &qword_10008C9E8);
      v69 = [v34 displayableAppDescriptor];
      if (v69)
      {
        v70 = v69;
        v143 = v47;
        v71 = sub_100008C98(v69, &selRef_bundleIdentifier);
        v73 = v72;
        v74 = v38;
        if (v72)
        {
          v75 = v71;
          v45 = v145;
          if (v71 != v74 || v72 != v145)
          {
            v77 = v74;
            if (sub_10008AA68())
            {

              v78 = 0;
              v79 = 0;
              v73 = 0;
              v80 = _swiftEmptyArrayStorage;
              v47 = v143;
              v81 = v143;
              v50 = v74;
              goto LABEL_41;
            }

            v93 = sub_100089BE8();
            sub_100009158(v11, 1, 1, v93);
            v133 = sub_100004B0C(v75, v73, v11, v147);
            sub_100008F80(v11, &qword_1000A5A08, &qword_10008C9E8);

            v81 = v133;
            v78 = 0;
            v79 = 0;
            v73 = 0;
            v80 = _swiftEmptyArrayStorage;
            v47 = v143;
LABEL_91:
            v50 = v77;
            goto LABEL_41;
          }

          v78 = 0;
          v79 = 0;
          v73 = 0;
          v80 = _swiftEmptyArrayStorage;
          v47 = v143;
          v81 = v143;
        }

        else
        {

          v78 = 0;
          v79 = 0;
          v80 = _swiftEmptyArrayStorage;
          v47 = v143;
          v81 = v143;
          v45 = v145;
        }

        v50 = v74;
        goto LABEL_41;
      }

      v78 = 0;
      v79 = 0;
      v73 = 0;
      v80 = _swiftEmptyArrayStorage;
      v81 = v47;
      v50 = v38;
      goto LABEL_48;
    }

    objc_opt_self();
    v54 = swift_dynamicCastObjCClass();
    if (!v54)
    {
      v50 = sub_10008A268();
      v85 = v84;
      v86 = sub_100004E1C(a1);
      if (v4)
      {

        return;
      }

      v47 = v86;
      v145 = v85;
      v77 = v50;
      v90 = [a2 displayableAppDescriptor];
      if (v90 || (v90 = [a2 appDescriptor]) != 0)
      {
        v104 = v90;
        v79 = sub_100008C98(v90, &selRef_bundleIdentifier);
        v106 = v105;
        v107 = [a2 app];
        v130 = sub_100004C3C(v104, 1);
        v132 = v131;

        v78 = v132;
        v81 = v130;
        v80 = _swiftEmptyArrayStorage;
        v45 = v145;
        v73 = v106;
        goto LABEL_91;
      }

      v81 = 0;
      v79 = 0;
      v73 = 0;
      v80 = _swiftEmptyArrayStorage;
      v78 = 1;
LABEL_48:
      v45 = v145;
      goto LABEL_41;
    }

    v55 = v54;
    v56 = a2;
    v57 = [v55 appDescriptor];
    if (v57)
    {
      v58 = v57;
      v147 = a1;
      v59 = sub_100008C98(v57, &selRef_bundleIdentifier);
      if (v60 || (v59 = sub_100008C98(v58, &selRef_extensionBundleIdentifier), v60))
      {
        v61 = v59;
        v62 = v60;
        v63 = sub_100004C3C(v58, 0);
        if (v4)
        {

          return;
        }

        v91 = v64;
        v145 = v56;
        v45 = v62;
        v47 = v63;

        if ((v91 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v145 = v56;
      }

      a1 = v147;
    }

    else
    {
      v145 = v56;
    }

    v61 = sub_10008A268();
    v45 = v94;
    v95 = sub_100004E1C(a1);
    if (v4)
    {

      v96 = v145;

      return;
    }

    v97 = a1;
    v47 = v95;
    v147 = v97;
LABEL_65:
    v98 = [v55 displayableAppDescriptor];

    if (v98)
    {
      v99 = v47;
      v100 = sub_100008C98(v98, &selRef_bundleIdentifier);
      v102 = v101;
      v103 = sub_100004C3C(v98, 1);
      v139 = v108;
      v140 = v103;
      v144 = v100;

      v47 = v99;
      v73 = v102;
    }

    else
    {
      v140 = 0;
      v144 = 0;
      v73 = 0;
      v139 = 1;
    }

    objc_opt_self();
    v109 = swift_dynamicCastObjCClass();
    v50 = v61;
    if (v109)
    {
      v110 = v109;
      v111 = v145;
      v112 = sub_100008BC8(v110);
      if (v112)
      {
        v142 = v112[2];
        if (v142)
        {
          v141 = v110;
          v136 = v61;
          v137 = v111;
          v113 = 0;
          v145 = v112;
          v114 = v112 + 5;
          v138 = _swiftEmptyArrayStorage;
          v143 = v73;
          while (1)
          {
            if (v113 >= v145[2])
            {
              __break(1u);
              return;
            }

            v115 = v45;
            v117 = *(v114 - 1);
            v116 = *v114;

            v118 = sub_10008A238();
            v119 = [v141 actionForAppIdentifier:v118];

            if (!v119)
            {
              break;
            }

            v120 = objc_allocWithZone(INAppDescriptor);
            v121 = sub_10000842C(v117, v116);
            v122 = sub_100004C3C(v121, 1);
            v45 = v115;
            v73 = v143;
            if ((v123 & 1) == 0)
            {
              v124 = v122;
              if (v122 != v47)
              {
                if (v139 & 1 | (v122 != v140))
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v127 = v138[2];
                    sub_100080228();
                    v138 = v128;
                  }

                  v125 = v138[2];
                  if (v125 >= v138[3] >> 1)
                  {
                    sub_100080228();
                    v138 = v129;
                  }

                  v126 = v138;
                  v138[2] = (v125 + 1);
                  v126[v125 + 4] = v124;
                  goto LABEL_86;
                }
              }
            }

LABEL_87:
            ++v113;
            v114 += 2;
            if (v142 == v113)
            {
              v134 = v137;

              v50 = v136;
              v79 = v144;
              v81 = v140;
              v78 = v139;
              v80 = v138;
              goto LABEL_41;
            }
          }

LABEL_86:
          v45 = v115;
          v73 = v143;
          goto LABEL_87;
        }
      }

      else
      {
      }

      v80 = _swiftEmptyArrayStorage;
    }

    else
    {

      v80 = _swiftEmptyArrayStorage;
    }

    v79 = v144;
    v81 = v140;
    v78 = v139;
    goto LABEL_41;
  }

  v21 = v20;
  v147 = a1;
  v22 = a2;
  v23 = [v21 fullyQualifiedLinkActionIdentifier];
  v24 = [v23 bundleIdentifier];

  v25 = sub_10008A268();
  v27 = v26;

  if (sub_10008A7A8())
  {
    v28 = enum case for ContainerDefinition.ContainerType.framework(_:);
    v29 = sub_100089BE8();
    (*(*(v29 - 8) + 104))(v19, v28, v29);
    v30 = v19;
    v31 = 0;
    v32 = v29;
  }

  else
  {
    v32 = sub_100089BE8();
    v30 = v19;
    v31 = 1;
  }

  sub_100009158(v30, v31, 1, v32);
  v45 = v27;
  v46 = sub_100004B0C(v25, v27, v19, v147);
  if (!v4)
  {
    v47 = v46;
    v148 = 0;
    sub_100008F80(v19, &qword_1000A5A08, &qword_10008C9E8);
    v48 = sub_100008C98(v21, &selRef_displayableAppBundleIdentifier);
    if (v49)
    {
      v50 = v25;
      if (v48 != v25 || v49 != v45)
      {
        v52 = v49;
        v53 = v48;
        if ((sub_10008AA68() & 1) == 0)
        {
          v87 = sub_100089BE8();
          sub_100009158(v17, 1, 1, v87);
          v144 = v53;
          v88 = v148;
          v89 = sub_100004B0C(v53, v52, v17, v147);
          v73 = v52;
          if (v88)
          {

            sub_100008F80(v17, &qword_1000A5A08, &qword_10008C9E8);
            v81 = 0;
            v80 = _swiftEmptyArrayStorage;
            v78 = 1;
          }

          else
          {
            v92 = v89;
            sub_100008F80(v17, &qword_1000A5A08, &qword_10008C9E8);

            v81 = v92;
            v78 = 0;
            v80 = _swiftEmptyArrayStorage;
          }

          v50 = v25;
          v79 = v144;
          goto LABEL_41;
        }
      }
    }

    else
    {

      v50 = v25;
    }

    v78 = 0;
    v80 = _swiftEmptyArrayStorage;
    v81 = v47;
    v79 = v50;
    v73 = v45;
LABEL_41:
    v82 = v78 & 1;
    LOBYTE(v149) = v82;
    v83 = v146;
    *v146 = v50;
    *(v83 + 1) = v45;
    *(v83 + 2) = v47;
    *(v83 + 3) = v79;
    *(v83 + 4) = v73;
    *(v83 + 5) = v81;
    *(v83 + 48) = v82;
    *(v83 + 7) = v80;
    return;
  }

  sub_100008F80(v19, &qword_1000A5A08, &qword_10008C9E8);

LABEL_26:
  v151 = v4;
  swift_errorRetain();
  sub_100008DC0(&qword_1000A5E80, &qword_10008CA10);
  if ((swift_dynamicCast() & 1) != 0 && (v66 = v150, sub_100009180(v149, v150), v66 >= 2))
  {

    v67 = v146;
    v146[2] = 0u;
    v67[3] = 0u;
    *v67 = 0u;
    v67[1] = 0u;
  }

  else
  {
  }
}

uint64_t sub_100004B0C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v11 = *(v4 + 16);
  v12 = sub_100017A2C();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v14 = sub_100005168(a1, a2, a3, a4);
  if (!v5)
  {
    v6 = v14;

    sub_100017A9C();
    sub_100009BA0();
    v15 = swift_allocObject();
    v15[2] = v4;
    v15[3] = a1;
    v15[4] = a2;
    sub_1000896E8();

    sub_100089398();
  }

  return v6;
}

uint64_t sub_100004C3C(void *a1, char a2)
{
  if (a2)
  {
    v5 = sub_100009B84();
    v8 = sub_100006488(v5, v6, v7);
    if (v3)
    {
      return v4;
    }

    if (v9)
    {
      v10 = sub_100009B84();
      v8 = sub_100006678(v10, v11, v12);
      if (v13)
      {
        v14 = sub_100009B84();
        return sub_10000621C(v14, v15, v16);
      }
    }

    return v8;
  }

  v18 = sub_100008C98(a1, &selRef_extensionBundleIdentifier);
  if (!v19)
  {
    v26 = sub_100009B84();
    v8 = sub_100006488(v26, v27, v28);
    if (v3)
    {
      return v4;
    }

    if (v29)
    {
      v30 = sub_100009B84();
      return sub_100006678(v30, v31, v32);
    }

    return v8;
  }

  v20 = v18;
  v21 = v19;
  v22 = *(v2 + 16);
  v23 = sub_100017A2C();
  if (v24)
  {
    sub_100006390();
    if (v3)
    {
    }

    else
    {
      v4 = v25;

      sub_100017A9C();
      sub_100009BA0();
      v33 = swift_allocObject();
      v33[2] = v2;
      v33[3] = v20;
      v33[4] = v21;
      sub_1000896E8();

      sub_100089398();
    }
  }

  else
  {
    v4 = v23;
  }

  return v4;
}

uint64_t sub_100004E1C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10008A268();
  v7 = v6;
  v8 = *(v1 + 16);
  v9 = sub_100017A2C();
  if (v10)
  {
    v11 = sub_10008A268();
    v13 = v12;
    v14 = objc_allocWithZone(LSApplicationRecord);
    v15 = sub_100008490(v11, v13, 0);
    if (v2)
    {
      __chkstk_darwin(v15);
      sub_1000896D8();

      v20 = v24;
    }

    else
    {
      v16 = v15;
      v17 = sub_10008A268();
      v19 = v18;
      v23 = v16;
      v20 = sub_100005630(v17, v19, v16, a1);
    }

    sub_100017A9C();
    sub_100009BA0();
    v21 = swift_allocObject();
    v21[2] = v3;
    v21[3] = v5;
    v21[4] = v7;
    sub_1000896E8();

    sub_100089398();
  }

  else
  {
    v20 = v9;
  }

  return v20;
}

Swift::Int sub_1000050B0(char a1)
{
  sub_10008AB08();
  sub_10008AB18(a1 & 1);
  return sub_10008AB28();
}

Swift::Int sub_100005114()
{
  v1 = *v0;
  sub_10008AB08();
  sub_10008AB18(v1);
  return sub_10008AB28();
}

void (*sub_100005168(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4))(char *, uint64_t)
{
  v5 = v4;
  v34 = a4;
  v35 = a1;
  v8 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - v10;
  v12 = sub_100089BE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  if (qword_1000A5940 != -1)
  {
    swift_once();
  }

  v20 = qword_1000A8910;
  swift_beginAccess();
  if (!*(*(v20 + 16) + 16))
  {
    sub_100008EA0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return a3;
  }

  sub_100008E08(a3, v11);
  a3 = &enum case for ContainerDefinition.ContainerType.extension(_:);
  if (sub_100008E78(v11, 1, v12) == 1)
  {
    sub_100008F80(v11, &qword_1000A5A08, &qword_10008C9E8);
    if (*(*(v20 + 16) + 16) && (v21 = *(v20 + 16), , sub_100081308(v35, a2), v23 = v22, , (v23 & 1) != 0))
    {
      (*(v13 + 104))(v19, enum case for ContainerDefinition.ContainerType.daemon(_:), v12);
    }

    else
    {
      v25 = *(v13 + 104);
      v25(v19, enum case for ContainerDefinition.ContainerType.app(_:), v12);
      v26 = objc_allocWithZone(LSApplicationExtensionRecord);

      v27 = sub_10000856C();
      if (!v4)
      {

        (*(v13 + 8))(v19, v12);
        v25(v19, enum case for ContainerDefinition.ContainerType.extension(_:), v12);
        a3 = &enum case for ContainerDefinition.ContainerType.extension(_:);
        goto LABEL_14;
      }

      v5 = 0;
    }

    a3 = &enum case for ContainerDefinition.ContainerType.extension(_:);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
  }

LABEL_14:
  (*(v13 + 16))(v17, v19, v12);
  v28 = (*(v13 + 88))(v17, v12);
  if (v28 == enum case for ContainerDefinition.ContainerType.app(_:))
  {
    v29 = v5;
    sub_100005630(v35, a2, 0, v34);
  }

  else if (v28 == enum case for ContainerDefinition.ContainerType.daemon(_:))
  {
    v29 = v5;
    v30 = sub_100006E48(v35, a2);
  }

  else if (v28 == enum case for ContainerDefinition.ContainerType.extension(_:))
  {
    v29 = v5;
    sub_100006390();
  }

  else
  {
    if (v28 != enum case for ContainerDefinition.ContainerType.framework(_:))
    {
      sub_100008EA0();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
      a3 = *(v13 + 8);
      a3(v19, v12);
      a3(v17, v12);
      return a3;
    }

    v29 = v5;
    v30 = sub_100006FEC();
  }

  if (!v29)
  {
    a3 = v30;
  }

  (*(v13 + 8))(v19, v12);
  return a3;
}

void sub_100005630(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v9 = a3;
    goto LABEL_3;
  }

  if (sub_10008A268() == a1 && v11 == a2)
  {
    goto LABEL_17;
  }

  v13 = sub_10008AA68();

  if (v13)
  {
    goto LABEL_18;
  }

  if (sub_10008A268() == a1 && v14 == a2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v16 = sub_10008AA68();

  if ((v16 & 1) == 0)
  {
    v17 = objc_allocWithZone(LSApplicationRecord);

    v18 = sub_100008490(a1, a2, 1);
    if (v4)
    {

      v9 = 0;
      goto LABEL_4;
    }

    v9 = v18;
LABEL_3:
    v10 = a3;
LABEL_4:
    __chkstk_darwin(v10);
    sub_1000896D8();

    return;
  }

LABEL_18:
  sub_100004E1C(a4);
}

void sub_1000057FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v64 = a3;
  v65 = a4;
  v72 = a2;
  v70 = a5;
  v6 = sub_1000889B8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100088A68();
  v76 = *(v71 - 8);
  v9 = *(v76 + 8);
  v10 = __chkstk_darwin(v71);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v66 = &v57 - v13;
  __chkstk_darwin(v12);
  v69 = &v57 - v14;
  v15 = sub_100089C18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100089BE8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A268();
  (*(v21 + 104))(v24, enum case for ContainerDefinition.ContainerType.app(_:), v20);
  (*(v16 + 104))(v19, enum case for ContainerDefinition.Origin.firstParty(_:), v15);
  v68 = a1;
  v25 = v77;
  v26 = sub_100089548();
  if (v25)
  {

    (*(v16 + 8))(v19, v15);
    (*(v21 + 8))(v24, v20);
  }

  else
  {
    v61 = v26;

    (*(v16 + 8))(v19, v15);
    (*(v21 + 8))(v24, v20);
    v27 = *(v72 + 24);
    v62 = sub_10008391C(v27);
    v28 = 0;
    v59 = v27;
    v60 = v27 & 0xC000000000000001;
    v58 = v27 & 0xFFFFFFFFFFFFFF8;
    v77 = v76 + 8;
    v29 = v71;
    while (1)
    {
      v30 = v69;
      if (v62 == v28)
      {
        *v70 = v61;
        return;
      }

      if (v60)
      {
        v31 = sub_10008A928();
      }

      else
      {
        if (v28 >= *(v58 + 16))
        {
          goto LABEL_15;
        }

        v31 = *(v59 + 8 * v28 + 32);
      }

      if (__OFADD__(v28, 1))
      {
        break;
      }

      v73 = v28;
      v76 = v31;
      v32 = [v31 locale];
      sub_100088A48();

      v75 = sub_100088A08();
      v34 = v33;
      v74 = *v77;
      v74(v30, v29);
      v35 = sub_10008A298();
      v37 = v36;
      v38 = sub_10008A298();
      v40 = v39;
      v41 = v66;
      sub_100088A28();
      if (qword_1000A5948 != -1)
      {
        swift_once();
      }

      v42 = [static NSBundle._current bundleURL];
      v43 = v67;
      sub_1000889A8();

      v44 = objc_allocWithZone(_NSLocalizedStringResource);
      v45 = sub_100008638(v35, v37, v38, v40, 0, 0, v41, v43);
      v46 = v76;
      v47 = [v76 localize:v45];

      v48 = sub_10008A268();
      v50 = v49;

      v51 = v61;
      v78._countAndFlagsBits = v75;
      v78._object = v34;
      v79._countAndFlagsBits = v48;
      v79._object = v50;
      sub_100089628(v61, v78, v79);

      v52 = [v46 locale];
      v53 = v63;
      sub_100088A48();

      v54 = sub_100088A08();
      v56 = v55;
      v29 = v71;
      v74(v53, v71);
      sub_100005E88(v64, v65, v51, v54, v56);

      v28 = v73 + 1;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_100005E88(uint64_t a1, uint64_t a2, Swift::Int64 a3, uint64_t a4, void *a5)
{
  v40._object = a5;
  v40._countAndFlagsBits = a4;
  sub_100008F3C();

  v6 = sub_10000839C();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = sub_100008C2C(v6);
  if (!v8)
  {

    v41 = 0u;
    v42 = 0u;
LABEL_19:
    sub_100008F80(&v41, &qword_1000A5A20, &qword_10008C9F0);
    return;
  }

  sub_100009BAC(0xD000000000000015, 0x800000010008E420, v8, &v41);

  if (!*(&v42 + 1))
  {

    goto LABEL_19;
  }

  sub_100008DC0(&qword_1000A5A28, &qword_10008C9F8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v37 = v7;
  v9 = 0;
  v10 = v43;
  v11 = *(v43 + 16);
  v38 = _swiftEmptyArrayStorage;
  while (v11 != v9)
  {
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v12 = *(v10 + 8 * v9 + 32);
    if (*(v12 + 16))
    {
      v13 = *(v10 + 8 * v9 + 32);

      v14 = sub_100081308(0xD000000000000014, 0x800000010008E440);
      if ((v15 & 1) == 0)
      {

        goto LABEL_11;
      }

      v16 = (*(v12 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = v38[2];
        sub_1000802EC();
        v38 = v22;
      }

      v19 = v38[2];
      if (v19 >= v38[3] >> 1)
      {
        sub_1000802EC();
        v38 = v23;
      }

      ++v9;
      v38[2] = (v19 + 1);
      v20 = &v38[2 * v19];
      v20[4] = v18;
      v20[5] = v17;
    }

    else
    {
LABEL_11:
      ++v9;
    }
  }

  v24 = 0;
  v36 = v38[2];
  v25 = (v38 + 5);
  while (v36 != v24)
  {
    if (v24 >= v38[2])
    {
      goto LABEL_30;
    }

    v27 = *(v25 - 1);
    v26 = *v25;

    v28 = sub_10008A238();
    v29 = sub_10008A238();

    v30 = sub_10008A238();
    v31 = sub_10008A238();
    v32 = [v37 localizedStringForKey:v28 value:v29 table:v30 localization:v31];

    v33 = sub_10008A268();
    v35 = v34;

    v44._countAndFlagsBits = v33;
    v44._object = v35;
    sub_1000895E8(a3, v40, v44, v24);
    if (v5)
    {

      break;
    }

    ++v24;
    v25 += 2;
  }
}

uint64_t sub_10000621C(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_100008C98(a1, &selRef_extensionBundleIdentifier);
  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = v7;
  v11 = *(a2 + 16);
  v12 = sub_100017A2C();
  if (v13)
  {
    sub_100006390();
    if (v3)
    {
    }

    else
    {
      v4 = v14;

      sub_100017A9C();
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = v10;
      v15[4] = v9;

      sub_100089398();
    }
  }

  else
  {
    v4 = v12;
  }

  return v4;
}

void sub_100006390()
{
  v1 = objc_allocWithZone(LSApplicationExtensionRecord);

  v2 = sub_10000856C();
  if (!v0)
  {
    v3 = v2;
    __chkstk_darwin(v2);
    sub_1000896D8();
  }
}

uint64_t sub_100006488(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v8 = [a1 applicationRecord];
  v9 = sub_100008C98(a1, &selRef_bundleIdentifier);
  v11 = v10;
  if (!v8)
  {

    return 0;
  }

  if (!v10)
  {

    return 0;
  }

  v12 = v9;
  v13 = *(a2 + 16);
  v14 = v8;
  v15 = sub_100017A2C();
  if (v16)
  {
    v17 = v14;
    sub_100005630(v12, v11, v8, a3);
    if (v3)
    {
    }

    else
    {
      v7 = v18;

      sub_100017A9C();
      v19 = swift_allocObject();
      v19[2] = a2;
      v19[3] = v12;
      v19[4] = v11;

      sub_100089398();
    }
  }

  else
  {
    v7 = v15;
  }

  return v7;
}

uint64_t sub_100006678(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100008C98(a1, &selRef_bundleIdentifier);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = sub_100017A2C();
  if (v9)
  {
    __chkstk_darwin(v8);
    sub_100008DC0(&qword_1000A5A50, &qword_10008CA18);
    v10 = a3;
    sub_1000896D8();

    if (!v3)
    {
      return v12;
    }
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

void sub_1000067AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a2;
  v68 = a8;
  v69 = a6;
  v71 = a5;
  v72 = a1;
  v76 = a3;
  v9 = *a7;
  v66 = a7;
  v67 = v9;
  v77 = sub_100088A68();
  v73 = *(v77 - 8);
  v10 = *(v73 + 64);
  v11 = __chkstk_darwin(v77);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v58 - v13;
  v14 = sub_100089C18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100089BE8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, enum case for ContainerDefinition.ContainerType.app(_:), v19);
  v60 = a4;
  sub_100008C98(a4, &selRef_teamIdentifier);
  (*(v15 + 104))(v18, enum case for ContainerDefinition.Origin.unknown(_:), v14);
  v24 = v74;
  v25 = sub_100089548();
  if (v24)
  {

    (*(v15 + 8))(v18, v14);
    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v26 = v73;
    v64 = v25;

    (*(v15 + 8))(v18, v14);
    (*(v20 + 8))(v23, v19);
    v27 = v71;
    v28 = *(v71 + 24);
    v62 = sub_10008391C(v28);
    if (v62)
    {
      v29 = 0;
      v63 = v28 & 0xC000000000000001;
      v59 = v28 & 0xFFFFFFFFFFFFFF8;
      v74 = (v26 + 8);
      v61 = v28;
      while (1)
      {
        if (v63)
        {
          v30 = sub_10008A928();
          v31 = v77;
          v32 = v70;
        }

        else
        {
          v31 = v77;
          v32 = v70;
          if (v29 >= *(v59 + 16))
          {
            goto LABEL_21;
          }

          v30 = *(v28 + 8 * v29 + 32);
        }

        if (__OFADD__(v29, 1))
        {
          break;
        }

        v73 = v29 + 1;
        v33 = [v30 locale];
        sub_100088A48();

        v34 = sub_100088A08();
        v36 = v35;
        v37 = *v74;
        (*v74)(v32, v31);
        if (v69 && (v38 = [v69 localizedNameWithContext:v30]) != 0)
        {
          v39 = v38;
          v40 = sub_10008A268();
          v42 = v41;
        }

        else
        {
          v43 = sub_100008C98(v60, &selRef_localizedName);
          if (v44)
          {
            v40 = v43;
            v42 = v44;
          }

          else
          {
            v42 = v76;

            v40 = v75;
          }
        }

        v45 = v64;
        v79._countAndFlagsBits = v34;
        v79._object = v36;
        v80._countAndFlagsBits = v40;
        v80._object = v42;
        sub_100089628(v64, v79, v80);

        v46 = [v30 locale];
        v47 = v65;
        sub_100088A48();

        v48 = sub_100088A08();
        v50 = v49;
        v37(v47, v77);
        v27 = v71;
        sub_100005E88(v75, v76, v45, v48, v50);

        ++v29;
        v28 = v61;
        v51 = v68;
        v52 = v66;
        if (v73 == v62)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      v51 = v68;
      v52 = v66;
LABEL_19:
      v53 = *(v27 + 16);
      v54 = v76;

      v55 = v64;
      v56 = v75;
      sub_100017A9C();
      v78 = v52;
      v57 = swift_allocObject();
      v57[2] = v27;
      v57[3] = v56;
      v57[4] = v54;

      sub_100089398();

      *v51 = v55;
      *(v51 + 8) = 0;
    }
  }
}

uint64_t sub_100006DEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_100006E14()
{
  sub_100006DEC();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100006E48(uint64_t a1, uint64_t a2)
{
  if (qword_1000A5940 != -1)
  {
    swift_once();
  }

  v5 = qword_1000A8910;
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = sub_100081308(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_8:
    sub_100008FE0();
    swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    swift_willThrow();
  }

  v9 = (*(v6 + 56) + (v7 << 6));
  v11 = v9[2];
  v10 = v9[3];
  v12 = v9[1];
  v17[0] = *v9;
  v17[1] = v12;
  v17[2] = v11;
  v17[3] = v10;
  sub_100009034(v17, v16);

  __chkstk_darwin(v13);
  sub_1000896D8();
  result = sub_1000090AC(v17);
  if (!v2)
  {
    return v16[0];
  }

  return result;
}

uint64_t sub_100006FEC()
{
  result = sub_1000896D8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_100007054(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v69 = a5;
  v70 = a2;
  v71 = a3;
  v72 = a1;
  v58 = a6;
  v68 = sub_100088A68();
  v77 = *(v68 - 8);
  v8 = *(v77 + 8);
  v9 = __chkstk_darwin(v68);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v60 = &v57 - v12;
  __chkstk_darwin(v11);
  v66 = &v57 - v13;
  v14 = sub_100089C18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100089BE8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a4;
  if (a4)
  {
    sub_100008C98(a4, &selRef_bundleVersion);
  }

  (*(v20 + 104))(v23, enum case for ContainerDefinition.ContainerType.app(_:), v19);
  sub_100089C08();
  v24 = sub_100089548();
  if (v6)
  {

    (*(v15 + 8))(v18, v14);
    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v64 = v24;

    (*(v15 + 8))(v18, v14);
    (*(v20 + 8))(v23, v19);
    v25 = *(v69 + 24);
    v62 = sub_10008391C(v25);
    if (v62)
    {
      v26 = 0;
      v63 = v25 & 0xC000000000000001;
      v57 = v25 & 0xFFFFFFFFFFFFFF8;
      v27 = v77 + 8;
      v28 = &ContainerIndexer;
      v59 = xmmword_10008C980;
      v29 = v68;
      v61 = v25;
      while (1)
      {
        if (v63)
        {
          v30 = sub_10008A928();
        }

        else
        {
          if (v26 >= *(v57 + 16))
          {
            goto LABEL_20;
          }

          v30 = *(v25 + 8 * v26 + 32);
        }

        if (__OFADD__(v26, 1))
        {
          break;
        }

        v76 = 0;
        v73 = v26 + 1;
        v74 = v26;
        v31 = v30;
        v32 = [v30 v28[39].base_prots];
        v33 = v66;
        sub_100088A48();

        v75._countAndFlagsBits = sub_100088A08();
        v75._object = v34;
        v35 = *v27;
        (*v27)(v33, v29);
        v36 = v67;
        v77 = v31;
        if (v67)
        {
          v37 = v29;
          sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
          v38 = swift_allocObject();
          *(v38 + 16) = v59;
          v39 = [v31 v28[39].base_prots];
          v40 = v60;
          sub_100088A48();

          v41 = sub_100088A08();
          v43 = v42;
          v35(v40, v37);
          *(v38 + 32) = v41;
          *(v38 + 40) = v43;
          isa = sub_10008A318().super.isa;

          v45 = [v36 localizedNameWithPreferredLocalizations:isa];

          v46 = sub_10008A268();
          v48 = v47;
        }

        else
        {
          v46 = 0;
          v48 = 0xE000000000000000;
        }

        v49 = v64;
        v78._countAndFlagsBits = v46;
        v78._object = v48;
        v50 = v76;
        sub_100089628(v64, v75, v78);
        if (v50)
        {

          return;
        }

        v76 = v35;
        v51 = v77;
        v52 = [v77 locale];
        v53 = v65;
        sub_100088A48();

        v54 = sub_100088A08();
        v56 = v55;
        v29 = v68;
        v76(v53, v68);
        sub_100005E88(v70, v71, v49, v54, v56);

        v26 = v74 + 1;
        v25 = v61;
        v28 = &ContainerIndexer;
        if (v73 == v62)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
LABEL_17:
      *v58 = v64;
    }
  }
}

void sub_10000766C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v54 = a4;
  v57 = a2;
  v61 = a5;
  v62 = a1;
  v60 = sub_100088A68();
  v52 = *(v60 - 8);
  v6 = *(v52 + 64);
  v7 = __chkstk_darwin(v60);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v49 - v9;
  v10 = sub_100089C18();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100089BE8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008C98(a3, &selRef_bundleVersion);
  v19 = *(v15 + 104);
  v55 = v14;
  v19(v18, enum case for ContainerDefinition.ContainerType.extension(_:), v14);
  sub_100008C98(a3, &selRef_teamIdentifier);
  v50 = a3;
  [a3 developerType];
  sub_100089C08();
  v20 = v65;
  v21 = sub_100089548();
  if (v20)
  {

    (*(v63 + 8))(v13, v64);
    (*(v15 + 8))(v18, v55);
  }

  else
  {
    v56 = v21;

    (*(v63 + 8))(v13, v64);
    (*(v15 + 8))(v18, v55);
    v22 = *(v54 + 24);
    v57 = sub_10008391C(v22);
    v23 = 0;
    v54 = v22;
    v55 = v22 & 0xC000000000000001;
    v52 += 8;
    v53 = v22 & 0xFFFFFFFFFFFFFF8;
    v51 = xmmword_10008C980;
    v24 = v50;
    while (1)
    {
      v25 = v58;
      v26 = v60;
      v27 = v59;
      if (v57 == v23)
      {
        *v61 = v56;
        return;
      }

      if (v55)
      {
        v28 = sub_10008A928();
      }

      else
      {
        if (v23 >= *(v53 + 16))
        {
          goto LABEL_16;
        }

        v28 = *(v54 + 8 * v23 + 32);
      }

      if (__OFADD__(v23, 1))
      {
        break;
      }

      v63 = v23;
      v29 = v28;
      v30 = [v28 locale];
      v65 = 0;
      v31 = v30;
      sub_100088A48();

      v64 = sub_100088A08();
      v33 = v32;
      v34 = v24;
      v35 = *v52;
      (*v52)(v25, v26);
      sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
      v36 = v26;
      v37 = swift_allocObject();
      *(v37 + 16) = v51;
      v38 = [v29 locale];
      sub_100088A48();

      v39 = sub_100088A08();
      v40 = v27;
      v42 = v41;
      v35(v40, v36);
      v24 = v34;
      *(v37 + 32) = v39;
      *(v37 + 40) = v42;
      isa = sub_10008A318().super.isa;

      v44 = [v34 localizedNameWithPreferredLocalizations:isa];

      v45 = sub_10008A268();
      v47 = v46;

      v66._countAndFlagsBits = v64;
      v66._object = v33;
      v67._countAndFlagsBits = v45;
      v67._object = v47;
      v48 = v65;
      sub_100089628(v56, v66, v67);
      if (v48)
      {

        return;
      }

      v23 = v63 + 1;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_100007BD4(uint64_t a1@<X0>, unint64_t a2@<X1>, Swift::Int64 a3@<X2>, Swift::String *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v42 = a3;
  v38 = a5;
  v41 = a2;
  v46 = a1;
  v45 = a6;
  v44 = sub_100088A68();
  v37 = *(v44 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v44);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100089C18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100089BE8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = a4[3]._countAndFlagsBits;
  object = a4[3]._object;
  v22 = *(v16 + 104);
  v39 = v23;
  v22(v19, enum case for ContainerDefinition.ContainerType.daemon(_:));
  v24 = *(v11 + 104);
  v40 = v10;
  v24(v14, enum case for ContainerDefinition.Origin.firstParty(_:), v10);
  v25 = v43;
  v26 = sub_100089548();
  if (v25)
  {
    (*(v11 + 8))(v14, v40);
    (*(v16 + 8))(v19, v39);
  }

  else
  {
    v42 = v26;
    (*(v11 + 8))(v14, v40);
    (*(v16 + 8))(v19, v39);
    v27 = *(v38 + 24);
    v43 = sub_10008391C(v27);
    v28 = 0;
    v40 = v27 & 0xFFFFFFFFFFFFFF8;
    v41 = v27 & 0xC000000000000001;
    v29 = (v37 + 8);
    while (1)
    {
      if (v43 == v28)
      {
        *v45 = v42;
        return;
      }

      if (v41)
      {
        v30 = sub_10008A928();
      }

      else
      {
        if (v28 >= *(v40 + 16))
        {
          goto LABEL_13;
        }

        v30 = *(v27 + 8 * v28 + 32);
      }

      v31 = v30;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v30 locale];
      sub_100088A48();

      v33 = sub_100088A08();
      v35 = v34;
      (*v29)(v9, v44);
      v47._countAndFlagsBits = v33;
      v47._object = v35;
      sub_100089628(v42, v47, a4[1]);

      ++v28;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_100007FB8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a4;
  v40 = a1;
  v39 = a5;
  v37 = sub_100088A68();
  v33 = *(v37 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v37);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100089C18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100089BE8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for ContainerDefinition.ContainerType.framework(_:), v15);
  v20 = *(v11 + 104);
  v35 = v10;
  v20(v14, enum case for ContainerDefinition.Origin.firstParty(_:), v10);
  v38._countAndFlagsBits = a2;
  v38._object = a3;
  v21 = v36;
  v22 = sub_100089548();
  if (v21)
  {
    (*(v11 + 8))(v14, v35);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    v36 = v22;
    (*(v11 + 8))(v14, v35);
    (*(v16 + 8))(v19, v15);
    v23 = *(v34 + 24);
    v24 = sub_10008391C(v23);
    v25 = 0;
    v34 = v23 & 0xFFFFFFFFFFFFFF8;
    v35 = v23 & 0xC000000000000001;
    v26 = (v33 + 8);
    while (1)
    {
      if (v24 == v25)
      {
        *v39 = v36;
        return;
      }

      if (v35)
      {
        v27 = sub_10008A928();
      }

      else
      {
        if (v25 >= *(v34 + 16))
        {
          goto LABEL_13;
        }

        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v27 locale];
      sub_100088A48();

      v30 = sub_100088A08();
      v32 = v31;
      (*v26)(v9, v37);
      v41._countAndFlagsBits = v30;
      v41._object = v32;
      sub_100089628(v36, v41, v38);

      ++v25;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

id sub_10000839C()
{
  v0 = sub_10008A238();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v0];

  return v1;
}

id sub_10000842C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10008A238();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

id sub_100008490(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10008A238();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100088978();

    swift_willThrow();
  }

  return v6;
}

id sub_10000856C()
{
  v1 = sub_10008A238();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100088978();

    swift_willThrow();
  }

  return v2;
}

id sub_100008638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_10008A238();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_10008A238();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_10008A238();

LABEL_6:
  isa = sub_100088A18().super.isa;
  sub_100088998(v18);
  v20 = v19;
  v21 = [v9 initWithKey:v14 defaultValue:v15 table:v16 locale:isa bundleURL:v19];

  v22 = sub_1000889B8();
  (*(*(v22 - 8) + 8))(a8, v22);
  v23 = sub_100088A68();
  (*(*(v23 - 8) + 8))(a7, v23);
  return v21;
}

uint64_t sub_1000087B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10005AFC0();
}

uint64_t sub_1000087D4(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B18, type metadata accessor for WFMeasurementUnitType);
  v3 = sub_100009524(&qword_1000A5B20, type metadata accessor for WFMeasurementUnitType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008890(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B08, type metadata accessor for WFLocalizationUsage);
  v3 = sub_100009524(&qword_1000A5B10, type metadata accessor for WFLocalizationUsage);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000894C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10008A238();

  *a2 = v5;
  return result;
}

uint64_t sub_100008994(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B28, type metadata accessor for LNPlatformName);
  v3 = sub_100009524(&qword_1000A5B30, type metadata accessor for LNPlatformName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008A50(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B38, type metadata accessor for WFExecutionPlatform);
  v3 = sub_100009524(&qword_1000A5B40, type metadata accessor for WFExecutionPlatform);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008B0C(uint64_t a1)
{
  v2 = sub_100009524(&qword_1000A5B48, type metadata accessor for WFWorkflowRunSource);
  v3 = sub_100009524(&unk_1000A5B50, type metadata accessor for WFWorkflowRunSource);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008BC8(void *a1)
{
  v2 = [a1 supportedAppIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10008A328();

  return v3;
}

uint64_t sub_100008C2C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10008A1C8();

  return v3;
}

uint64_t sub_100008C98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10008A268();

  return v4;
}

uint64_t sub_100008CF8()
{
  sub_10008A268();
  sub_10008A2B8();
}

Swift::Int sub_100008D4C()
{
  sub_10008A268();
  sub_10008AB08();
  sub_10008A2B8();
  v0 = sub_10008AB28();

  return v0;
}

uint64_t sub_100008DC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008EA0()
{
  result = qword_1000A5A10;
  if (!qword_1000A5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A10);
  }

  return result;
}

uint64_t sub_100008F30()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_1000027D0(v0[2]);
}

unint64_t sub_100008F3C()
{
  result = qword_1000A5A18;
  if (!qword_1000A5A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5A18);
  }

  return result;
}

uint64_t sub_100008F80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008DC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008FE0()
{
  result = qword_1000A62B0;
  if (!qword_1000A62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62B0);
  }

  return result;
}

uint64_t sub_100009180(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1000091B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100009BA0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100009214(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100009234(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContainerIndexer.ContainerIndexerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContainerIndexer.ContainerIndexerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_100009448(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100009524(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000095B8()
{
  result = qword_1000A5AA0;
  if (!qword_1000A5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5AA0);
  }

  return result;
}

uint64_t sub_10000996C()
{
  v0 = sub_10008A268();
  v2 = v1;
  if (v0 == sub_10008A268() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10008AA68();
  }

  return v5 & 1;
}

uint64_t sub_1000099F0(uint64_t a1, id *a2)
{
  result = sub_10008A248();
  *a2 = 0;
  return result;
}

uint64_t sub_100009A68(uint64_t a1, id *a2)
{
  v3 = sub_10008A258();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100009AE8()
{
  sub_10008A268();
  v0 = sub_10008A238();

  return v0;
}

uint64_t sub_100009B20()
{
  sub_10008A268();
  v0 = sub_10008A2F8();

  return v0;
}

void sub_100009B94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

double sub_100009BAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100081308(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000A650(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100009C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100081308(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_100009C60()
{
  type metadata accessor for DaemonEnumerator();
  v0 = swift_allocObject();
  result = sub_10008A1E8();
  *(v0 + 16) = result;
  qword_1000A8910 = v0;
  return result;
}

void sub_100009CC0()
{
  v2 = v0;
  sub_10000A4E0();
  v3 = sub_10000A35C();
  if (!v3)
  {
    sub_10000A524();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  strcpy(&v109, "LaunchDaemons");
  HIWORD(v109) = -4864;
  v5 = [v3 __swift_objectForKeyedSubscript:sub_10008AA88()];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_10008A7E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110[0] = 0u;
  }

  v104 = v109;
  v105 = v110[0];
  if (!*(&v110[0] + 1))
  {
    sub_10000A578(&v104);
    goto LABEL_54;
  }

  v92 = sub_100008DC0(&qword_1000A5DB0, &qword_10008D2E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    sub_10000A524();
    swift_allocError();
    *v86 = 0;
LABEL_55:
    swift_willThrow();

    return;
  }

  v7 = [objc_opt_self() currentDevice];
  v91 = sub_10000A5E0(v7);
  v98 = v8;
  if (!v8)
  {

    sub_10000A524();
    swift_allocError();
    *v87 = 1;
    goto LABEL_55;
  }

  v88 = v4;
  v89 = v1;
  v9 = 0;
  v101 = *&v108[0];
  v10 = *&v108[0] + 64;
  v11 = 1 << *(*&v108[0] + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*&v108[0] + 64);
  v14 = (v11 + 63) >> 6;
  v93 = "xpc/launchd.plist";
  v102 = *&v108[0] + 64;
  v90 = v0;
  while (v13)
  {
    v15 = v9;
LABEL_18:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(v101 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_10000A650(*(v101 + 56) + 32 * v17, v108);
    *&v104 = v20;
    *(&v104 + 1) = v19;
    sub_10000A6AC(v108, &v105);

LABEL_19:
    v109 = v104;
    v110[0] = v105;
    v110[1] = v106;
    if (!*(&v104 + 1))
    {

      return;
    }

    v21 = v109;
    v22 = sub_10000A6AC(v110, &v104);
    sub_10000A814(v22, v23, v24, v25, v26, v27, v28, v29, v88, v89, v90, v91, v92, v93, v94, v96, v98, v99, v100, v101, v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108[0]);
    if (swift_dynamicCast())
    {
      v30 = *&v108[0];
      if (*(*&v108[0] + 16) && (v31 = sub_100081308(0x6C6562614CLL, 0xE500000000000000), (v32 & 1) != 0))
      {
        v33 = sub_10000A650(*(v30 + 56) + 32 * v31, &v104);
        sub_10000A814(v33, v34, v35, v36, v37, v38, v39, v40, v88, v89, v90, v91, v92, v93, v94, v96, v98, v99, v100, v101, v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108[0]);
        v41 = swift_dynamicCast();
        v42 = *&v108[0];
        if (!v41)
        {
          v42 = 0;
        }

        v100 = v42;
        if (v41)
        {
          v43 = *(&v108[0] + 1);
        }

        else
        {
          v43 = 0;
        }

        v103 = v43;
      }

      else
      {
        v100 = 0;
        v103 = 0;
      }

      v99 = v21;
      if (*(v30 + 16) && (v44 = sub_100081308(0xD000000000000010, v93 | 0x8000000000000000), (v45 & 1) != 0))
      {
        sub_10000A650(*(v30 + 56) + 32 * v44, &v104);

        v46 = sub_100008DC0(&qword_1000A6C70, &qword_10008D2F8);
        sub_10000A814(v46, v47, v48, v46, v49, v50, v51, v52, v88, v89, v90, v91, v92, v93, v94, v96, v98, v21, v100, v101, v102, v103, v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108[0]);
        if (swift_dynamicCast())
        {
          v53 = *&v108[0];
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {

        v53 = 0;
      }

      v54 = v103;
      if (!v103 || !v53)
      {

        goto LABEL_42;
      }

      if (v53[2])
      {
        v55 = v53[4];
        v56 = v53[5];

        v57 = sub_10008A238();

        v58 = [v57 lastPathComponent];

        v59 = sub_10008A268();
        v95 = v60;
        v97 = v59;

        v54 = v103;
        v61 = v100;
      }

      else
      {

        v61 = v100;
        v95 = v103;
        v97 = v100;
      }

      swift_beginAccess();

      v62 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v54;
      v111 = *(v2 + 16);
      v65 = v111;
      *(v2 + 16) = 0x8000000000000000;
      v66 = sub_100081308(v61, v64);
      v68 = v65[2];
      v69 = (v67 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_59;
      }

      v71 = v66;
      v72 = v67;
      sub_100008DC0(&qword_1000A5DB8, &qword_10008D2F0);
      if (sub_10008A9A8(isUniquelyReferenced_nonNull_native, v70))
      {
        v73 = v100;
        v74 = sub_100081308(v100, v103);
        if ((v72 & 1) != (v75 & 1))
        {
          goto LABEL_61;
        }

        v71 = v74;
        v76 = v103;
        if (v72)
        {
LABEL_51:
          v77 = v111;
          v82 = v111[7] + (v71 << 6);
          v83 = *(v82 + 48);
          v85 = *v82;
          v84 = *(v82 + 16);
          v106 = *(v82 + 32);
          v107 = v83;
          v104 = v85;
          v105 = v84;
          sub_10000A7F0(v82, v88, v89, v90, v91, v92, v93, v95, v97, v98, v99);
          sub_1000090AC(&v104);

          goto LABEL_52;
        }
      }

      else
      {
        v76 = v103;
        v73 = v100;
        if (v72)
        {
          goto LABEL_51;
        }
      }

      v77 = v111;
      v111[(v71 >> 6) + 8] |= 1 << v71;
      v78 = (v77[6] + 16 * v71);
      *v78 = v73;
      v78[1] = v76;
      sub_10000A7F0((v77[7] + (v71 << 6)), v88, v89, v90, v91, v92, v93, v95, v97, v98, v99);
      v79 = v77[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        goto LABEL_60;
      }

      v77[2] = v81;
LABEL_52:
      v2 = v90;
      *(v90 + 16) = v77;
      swift_endAccess();
      v10 = v102;
    }

    else
    {
LABEL_42:

      v10 = v102;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      v13 = 0;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      goto LABEL_19;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  sub_10008AAA8();
  __break(1u);
}

id sub_10000A35C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10008A238();

  v2 = [v0 initWithContentsOfFile:v1];

  return v2;
}

uint64_t sub_10000A3D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

__n128 sub_10000A42C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000A440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A480(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10000A4E0()
{
  result = qword_1000A5DA0;
  if (!qword_1000A5DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5DA0);
  }

  return result;
}

unint64_t sub_10000A524()
{
  result = qword_1000A5DA8;
  if (!qword_1000A5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5DA8);
  }

  return result;
}

uint64_t sub_10000A578(uint64_t a1)
{
  v2 = sub_100008DC0(&qword_1000A5A20, &qword_10008C9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A5E0(void *a1)
{
  v2 = [a1 systemBuildNumber];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10008A268();

  return v3;
}

uint64_t sub_10000A650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A6AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for DaemonEnumerator.EnumeratorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000A79C()
{
  result = qword_1000A5DC0;
  if (!qword_1000A5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5DC0);
  }

  return result;
}

void sub_10000A7F0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = v12;
  a1[1] = v11;
  a1[2] = a9;
  a1[3] = a8;
  a1[4] = a11;
  a1[5] = v13;
  a1[6] = a5;
  a1[7] = a10;
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10008A298();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10008A298();
    }

LABEL_9:
    __break(1u);
    return sub_10008A298();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_1000A5948 != -1)
  {
    sub_10000AA34();
  }

  return &static NSBundle._current;
}

id sub_10000A95C()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1000A5948 != -1)
  {
    sub_10000AA34();
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_10000AA34()
{

  return swift_once();
}

uint64_t sub_10000AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100012554();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000AA84()
{
  sub_100012604();
  v1 = v0[1].i64[1];
  v2 = _s23IndexingPreflightResultV4StepOMa(0);
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  v4 = v0[2];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = _s23IndexingPreflightResultVMa(0);
  v6 = *(&async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:) + 1);
  swift_task_alloc();
  sub_100012480();
  v0[3].i64[1] = v7;
  *v7 = v8;
  v7[1] = sub_10000AB8C;
  v9 = v0[1].i64[0];

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v9, v2, v5, 0, 0, &unk_10008D3F8, v3, v2);
}

uint64_t sub_10000AB8C()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_100012554();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    sub_10001248C();

    return v13();
  }
}

uint64_t sub_10000ACAC()
{
  sub_100012404();
  v1 = *(v0 + 48);

  sub_10001248C();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_10000AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_100008DC0(&qword_1000A5E60, &qword_10008D400) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = _s23IndexingPreflightResultV4StepOMa(0);
  v5[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = sub_100008DC0(&qword_1000A5E68, &qword_10008D408);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = sub_100088EA8();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = _s23IndexingPreflightResultVMa(0);
  v5[17] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v17 = sub_100088E08();
  v5[20] = v17;
  v18 = *(v17 - 8);
  v5[21] = v18;
  v5[22] = *(v18 + 64);
  v5[23] = swift_task_alloc();
  v19 = *(*(sub_100008DC0(&qword_1000A5E70, &qword_10008D410) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10000AF84, 0, 0);
}

uint64_t sub_10000AF84()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v65 = v0[16];
  v64 = v0[6];
  v63 = v0[5];
  v6 = v0[3];
  v7 = v0[4];
  v70 = v7;
  v66 = sub_10008A3D8();
  v8 = sub_100012448();
  sub_100009158(v8, v9, v10, v11);
  v69 = *(v3 + 16);
  v67 = v2;
  v12 = v7;
  v13 = v5;
  v69(v2, v12, v5);
  v14 = *(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v68 = *(v3 + 32);
  v68(v15 + ((v14 + 32) & ~v14), v2, v13);
  v16 = sub_1000125F8();
  sub_10000BFEC(v16, v17, v15);
  sub_100012584();
  sub_10001096C(v18, v19, v20);
  v21 = sub_100012448();
  sub_100009158(v21, v22, v23, v66);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v63;
  v25 = v63;
  v26 = sub_1000125F8();
  sub_10000BFEC(v26, v27, v24);
  sub_100012584();
  sub_10001096C(v28, v29, v30);
  v31 = sub_100012448();
  sub_100009158(v31, v32, v33, v66);
  v69(v67, v70, v13);
  v34 = swift_allocObject();
  v35 = sub_1000125E4(v34);
  v68(v35, v67, v13);
  *(v66 + ((((v14 + 40) & ~v14) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)) = v64;
  v36 = v25;

  v37 = sub_1000125F8();
  sub_10000BFEC(v37, v38, v66);
  sub_10001096C(v1, &qword_1000A5E70, &qword_10008D410);
  v39 = sub_100012448();
  sub_100009158(v39, v40, v41, v66);
  v69(v67, v70, v13);
  v42 = swift_allocObject();
  v43 = sub_1000125E4(v42);
  v68(v43, v67, v13);
  v44 = v36;
  v45 = sub_1000125F8();
  sub_10000BFEC(v45, v46, v66);
  sub_10001096C(v1, &qword_1000A5E70, &qword_10008D410);
  v47 = *v6;
  sub_100088E68();
  v48 = v0[19];
  v49 = v0[16];
  v50 = v0[17];
  v52 = v0[14];
  v51 = v0[15];
  v53 = v0[13];
  v71 = v0[8];
  v54 = v0[2];
  v55 = v48 + v50[5];
  sub_100088D18();
  sub_100008DC0(&qword_1000A5E78, &unk_10008D458);
  v56 = sub_10008A1E8();
  v0[25] = *(v51 + 32);
  v0[26] = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  sub_100012584();
  v57();
  *(v48 + v50[6]) = &_swiftEmptySetSingleton;
  *(v48 + v50[7]) = v56;
  sub_100012430();
  sub_1000109C0(v48, v54);
  sub_100008DC0(&qword_1000A5E80, &qword_10008CA10);
  sub_10008A3E8();
  sub_1000108C0();
  v58 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_100012480();
  v0[27] = v59;
  *v59 = v60;
  v61 = sub_1000123B4(v59);

  return dispatch thunk of AsyncIteratorProtocol.next()(v61);
}

uint64_t sub_10000B448()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    v9 = v3[2];
    (*(v3[12] + 8))(v3[13], v3[11]);
    sub_100012350();
    sub_100010A14();
  }

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000B56C()
{
  v1 = v0[7];
  if (sub_100008E78(v1, 1, v0[8]) == 1)
  {
    v3 = v0[23];
    v2 = v0[24];
    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[16];
    v7 = v0[10];
    v8 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_100012350();
    sub_100010A14();
    sub_10001096C(v1, &qword_1000A5E60, &qword_10008D400);

    sub_100012420();
    sub_100012640();

    __asm { BRAA            X1, X16 }
  }

  v12 = v0[9];
  v11 = v0[10];
  sub_100010A64(v1, v11);
  sub_1000109C0(v11, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = v0[10];
      v46 = *v0[9];
      v47 = *(v0[2] + *(v0[17] + 24));
      if ((v47 & 0xC000000000000001) != 0)
      {
        v48 = sub_10008A888();
        sub_100012338();
        sub_100010A14();
        if (!v48)
        {
LABEL_12:
          v50 = v0[17];
          v49 = v0[18];
          v51 = v0[14];
          v52 = v0[2];
          v53 = *(v0[15] + 16);
          v54 = sub_100012498();
          v55(v54);
          v56 = v50[5];
          v57 = sub_100088D48();
          sub_10001238C(v57);
          (*(v58 + 16))(v49 + v56, v52 + v56);
          v59 = *(v52 + v50[7]);
          *(v49 + v50[6]) = v46;
          *(v49 + v50[7]) = v59;
          goto LABEL_13;
        }
      }

      else
      {
        sub_100012338();
        sub_100010A14();
        if (!*(v47 + 16))
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()();
    case 2u:
      v26 = v0[17];
      v27 = v0[10];
      v28 = v0[2];
      sub_100012338();
      sub_100010A14();
      if (*(*(v28 + *(v26 + 28)) + 16))
      {
        goto LABEL_19;
      }

      v30 = v0[17];
      v29 = v0[18];
      v31 = v0[14];
      v32 = v0[2];
      v33 = *v0[9];
      v34 = *(v0[15] + 16);
      v35 = sub_100012498();
      v36(v35);
      v37 = v30[5];
      v38 = sub_100088D48();
      sub_10001238C(v38);
      (*(v39 + 16))(v29 + v37, v32 + v37);
      *(v29 + v30[6]) = *(v32 + v30[6]);
      *(v29 + v30[7]) = v33;
LABEL_13:

LABEL_14:
      v60 = v0[18];
      v61 = v0[2];
      sub_100012350();
      sub_100010A14();
      v62 = sub_100012498();
      sub_100010A64(v62, v63);
      sub_1000108C0();
      v64 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      swift_task_alloc();
      sub_100012480();
      v0[27] = v65;
      *v65 = v66;
      sub_1000123B4();
      sub_100012640();

      return dispatch thunk of AsyncIteratorProtocol.next()();
    case 3u:
      v40 = v0[18];
      v41 = v0[10];
      v42 = v0[2];
      sub_100012338();
      sub_100010A14();
      sub_100012430();
      v43 = sub_1000125C0();
      sub_1000109C0(v43, v44);
      goto LABEL_14;
    default:
      v14 = v0[25];
      v13 = v0[26];
      v16 = v0[17];
      v15 = v0[18];
      v17 = v0[14];
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[2];
      sub_100012338();
      sub_100010A14();
      v21 = *(sub_100008DC0(&qword_1000A5E90, &qword_10008D468) + 48);
      v14(v15, v19, v17);
      v22 = v16[5];
      v23 = sub_100088D48();
      sub_10001238C(v23);
      (*(v24 + 32))(v15 + v22, v19 + v21);
      v25 = *(v20 + v16[7]);
      *(v15 + v16[6]) = *(v20 + v16[6]);
      *(v15 + v16[7]) = v25;

      goto LABEL_13;
  }
}

void sub_10000B9A8()
{
  v1 = v0[19];
  sub_100012350();
  sub_100010A14();
  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  sub_10001265C();

  sub_10001248C();
  sub_100012640();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10000BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_100088D48();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_100088EA8();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[10] = v11;
  *v11 = v4;
  v11[1] = sub_10000BBC4;

  return sub_100018420();
}

uint64_t sub_10000BBC4()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_100012554();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    swift_task_alloc();
    sub_100012480();
    v3[12] = v12;
    *v12 = v13;
    v12[1] = sub_10000BD1C;
    v14 = v3[6];
    v15 = v3[3];

    return sub_100019504();
  }
}

uint64_t sub_10000BD1C()
{
  sub_100012404();
  sub_100012474();
  sub_1000123F8();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000BE18()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = *(sub_100008DC0(&qword_1000A5E90, &qword_10008D468) + 48);
  (*(v2 + 32))(v7, v1, v3);
  (*(v6 + 32))(v7 + v8, v4, v5);
  sub_10001269C();
  swift_storeEnumTagMultiPayload();

  sub_100012420();

  return v9();
}

uint64_t sub_10000BF04()
{
  sub_100012404();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  sub_10001248C();

  return v4();
}

uint64_t sub_10000BF6C()
{
  sub_100012404();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];

  sub_10001248C();

  return v4();
}

uint64_t sub_10000BFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*(*(sub_100008DC0(&qword_1000A5E70, &qword_10008D410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v19 - v8;
  sub_100011F34(a1, v19 - v8);
  v10 = sub_10008A3D8();
  if (sub_100008E78(v9, 1, v10) == 1)
  {
    sub_10001096C(v9, &qword_1000A5E70, &qword_10008D410);
  }

  else
  {
    sub_10008A3C8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10008A388();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *v4;
  _s23IndexingPreflightResultV4StepOMa(0);
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_10000C1A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000C23C;

  return sub_10000C3B8();
}

uint64_t sub_10000C23C()
{
  sub_100012404();
  sub_100012474();
  v3 = *(v2 + 24);
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;

  if (v0)
  {
    sub_10001248C();

    return v6();
  }

  else
  {
    sub_100012554();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10000C354()
{
  sub_100012404();
  v1 = *(v0 + 16);
  sub_10001269C();
  swift_storeEnumTagMultiPayload();
  sub_100012420();

  return v2();
}

uint64_t sub_10000C3B8()
{
  v1 = async function pointer to withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10000C478;

  return withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10000C478()
{
  sub_100012404();
  sub_100012474();
  sub_1000123F8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 24) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10000C594()
{
  sub_10001248C();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t sub_10000C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_10000C668;

  return sub_10000C808(a5, a6);
}

uint64_t sub_10000C668()
{
  sub_100012604();
  v3 = v2;
  sub_100012474();
  v5 = v4;
  sub_1000123F8();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_10001237C();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_100012554();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_10000C79C()
{
  sub_100012404();
  **(v0 + 16) = *(v0 + 32);
  sub_10001269C();
  swift_storeEnumTagMultiPayload();
  sub_100012420();

  return v1();
}

uint64_t sub_10000C808(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1000898A8();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_100088F78();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = sub_100088F98();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = sub_100088D98();
  v2[24] = v12;
  v13 = *(v12 - 8);
  v2[25] = v13;
  v14 = *(v13 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v15 = sub_100089008();
  v2[28] = v15;
  v16 = *(v15 - 8);
  v2[29] = v16;
  v17 = *(v16 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v18 = sub_100088E08();
  v2[33] = v18;
  v19 = *(v18 - 8);
  v2[34] = v19;
  v20 = *(v19 + 64) + 15;
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10000CAF4, 0, 0);
}

uint64_t sub_10000CAF4()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[8];
  v4 = sub_1000124F4(v1);
  v5(v4);
  v6 = *(v1 + 88);
  v7 = sub_100012498();
  v9 = v8(v7);
  if (v9 != enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    if (v9 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {
      v62 = v0[32];
      sub_100088F28();
      v63 = sub_100088FF8();
      v64 = sub_10008A5B8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = sub_100012560();
        sub_10001251C(v65);
        sub_1000125CC();
        _os_log_impl(v66, v67, v68, v69, &WFLogCategoryToolKitIndexing, 2u);
        sub_100012458();
      }

      v70 = v0[32];
      v71 = v0[28];
      v72 = v0[29];
      v73 = v0[23];
      v74 = v0[18];

      v75 = *(v72 + 8);
      v76 = sub_1000124C8();
      v77(v76);
      sub_100088D68();
      sub_100088F88();
      sub_100088F58();
      v78 = sub_100088F88();
      sub_10008A6A8();
      if (sub_10008A7B8())
      {
        v79 = v0[18];
        v80 = sub_100012560();
        sub_10001251C(v80);
        sub_100088F68();
        sub_1000125CC();
        _os_signpost_emit_with_name_impl(v81, v82, v83, v84, v85, v86, v71, 2u);
        sub_100012458();
      }

      v246 = v0[27];
      v88 = v0[22];
      v87 = v0[23];
      v89 = v0[19];
      v90 = v0[20];
      v91 = v0[17];
      v92 = v0[18];
      v93 = v0[14];
      v94 = v0[15];

      sub_1000124F4(v94);
      sub_100012584();
      v95();
      v96 = sub_100088FD8();
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      sub_1000124D4();
      v99 = sub_100012528();
      v100(v99);
      sub_100088DA8();
      (*(v94 + 8))(v92, v93);
      v101 = *(v90 + 8);
      v102 = sub_1000124C8();
      v103(v102);
      v0[36] = [objc_opt_self() toolKitRegistry];
      v104 = async function pointer to WFActionRegistry.fillAndWait()[1];
      v105 = swift_task_alloc();
      v0[37] = v105;
      *v105 = v0;
      v105[1] = sub_10000DD34;
      sub_100012624();

      return WFActionRegistry.fillAndWait()();
    }

    if (v9 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
      (*(v0[34] + 8))(v0[35], v0[33]);
    }

LABEL_23:
    sub_1000124A4();
    v242 = v0[13];
    v244 = v0[12];

    v107 = v0[1];
    sub_100012624();

    __asm { BRAA            X2, X16 }
  }

  v10 = v0[35];
  (*(v0[34] + 96))(v10, v0[33]);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];

  if (!*(v12 + 16))
  {

    goto LABEL_23;
  }

  v245 = v12;
  v14 = v0[31];
  sub_100088F28();
  v15 = sub_100088FF8();
  v16 = sub_10008A5B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_100012560();
    sub_10001251C(v17);
    sub_1000125CC();
    _os_log_impl(v18, v19, v20, v21, &WFLogCategoryToolKitIndexing, 2u);
    sub_100012458();
  }

  v22 = v0[31];
  v23 = v0[28];
  v24 = v0[29];
  v25 = v0[21];
  v26 = v0[16];

  v27 = *(v24 + 8);
  v28 = sub_1000124C8();
  v234 = v29;
  v29(v28);
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v30 = sub_100088F88();
  v31 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    v32 = v0[16];
    v33 = sub_100012560();
    sub_10001251C(v33);
    v34 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v34, "FetchingActions", "Fetching actions for a given set of bundles", v23, 2u);
    sub_100012458();
  }

  v243 = v0[26];
  v36 = v0[21];
  v35 = v0[22];
  v37 = v0[19];
  v38 = v0[20];
  v40 = v0[16];
  v39 = v0[17];
  v41 = v0[14];
  v42 = v0[15];
  v236 = v0[8];

  v43 = sub_1000124F4(v42);
  v44(v43, v40, v41);
  v45 = sub_100088FD8();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_1000124D4();
  v48 = *(v38 + 16);
  v49 = sub_1000124C8();
  v50(v49);
  sub_100088DA8();
  (*(v42 + 8))(v40, v41);
  (*(v38 + 8))(v36, v37);
  v239 = swift_allocObject();
  *(v239 + 16) = &_swiftEmptySetSingleton;
  v240 = [objc_opt_self() sharedProvider];
  v241 = [objc_allocWithZone(WFIntentActionProvider) initWithOptions:1];
  if (ToolKitIndexingReason.Changeset.isExpensive.getter())
  {
    v51 = v0[30];
    sub_100088F28();
    v52 = sub_100088FF8();
    v53 = sub_10008A5D8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = sub_100012560();
      sub_10001251C(v54);
      _os_log_impl(&_mh_execute_header, v52, v53, "indexing: the changeset is expensive, filling Link provider in full", v36, 2u);
      sub_100012458();
    }

    v56 = v0[29];
    v55 = v0[30];
    v57 = v0[28];

    v58 = sub_1000124C8();
    v234(v58);
    v59 = [v240 createAllAvailableActions];
    if (v59)
    {
      v60 = v59;
      sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
      sub_10001119C();
      sub_100012498();
      v61 = sub_10008A3F8();
    }

    else
    {
      v61 = &_swiftEmptySetSingleton;
    }

    v118 = v245;

    v119 = sub_100010F44(v61, v245);
  }

  else
  {
    v110 = sub_10008A268();
    v112 = sub_1000636BC(v110, v111, v245);

    v113 = v245;
    if (v112)
    {
      v114 = WFBundleWithAppSettingsIdentifiers();
      v115 = sub_10008A3F8();

      sub_10001A784(v115);
      v113 = v116;
    }

    if (sub_10008391C(_swiftEmptyArrayStorage))
    {
      sub_1000561F8(_swiftEmptyArrayStorage);
    }

    else
    {
      v117 = &_swiftEmptySetSingleton;
    }

    v120 = *(v113 + 56);
    v249 = v117;
    v121 = *(v113 + 32);
    sub_100012500();
    v124 = v123 & v122;
    v126 = (63 - v125) >> 6;

    v127 = 0;
    if (v124)
    {
      while (1)
      {
        v128 = v127;
LABEL_39:
        v124 &= v124 - 1;
        v129 = *(v113 + 48);
        sub_100012590(v128);
        v130 = sub_10008A238();
        v131 = [v240 createActionsForBundleIdentifier:v130];

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        sub_10001119C();
        v132 = sub_10008A3F8();

        sub_10000F640(v132);

        if (!v124)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
LABEL_35:
      v128 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_99;
      }

      if (v128 >= v126)
      {
        break;
      }

      v124 = *(v113 + 56 + 8 * v128);
      ++v127;
      if (v124)
      {
        v127 = v128;
        goto LABEL_39;
      }
    }

    v118 = v245;
    v119 = v249;
  }

  sub_10000F640(v119);
  v133 = *(v118 + 56);
  v134 = *(v118 + 32);
  sub_100012500();
  v137 = v136 & v135;
  v139 = (63 - v138) >> 6;

  v140 = 0;
  if (!v137)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v141 = v140;
LABEL_48:
    v137 &= v137 - 1;
    v142 = *(v245 + 48);
    sub_100012590(v141);
    v143 = sub_10008A238();

    v144 = [v241 createActionsForBundleIdentifier:v143];

    sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
    sub_10001119C();
    v145 = sub_10008A3F8();

    sub_10000F640(v145);
    if (v137)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_44:
    v141 = v140 + 1;
    if (__OFADD__(v140, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v141 >= v139)
    {
      break;
    }

    v137 = *(v118 + 56 + 8 * v141);
    ++v140;
    if (v137)
    {
      v140 = v141;
      goto LABEL_48;
    }
  }

  v146 = v0[13];
  v147 = v0[10];
  v148 = v0[11];
  v149 = v0[9];

  v235 = [objc_allocWithZone(WFBundledActionProvider) init];
  v150 = *(v148 + 104);
  v150(v146, enum case for ActionProvider.bundled(_:), v147);
  sub_10000F820(v146);
  v151 = *(v148 + 8);
  v152 = sub_100012498();
  v151(v152);
  v153 = v0[12];
  v237 = v0[9];
  v150(v153, enum case for ActionProvider.interchange(_:), v0[10]);
  sub_10000F820(v153);
  v154 = sub_100012498();
  v151(v154);
  v155 = 0;
  v156 = v241;
  v157 = [v241 actionIdentifiersRequiringBundledActionProviderMappedByApp];
  v225 = sub_100008DC0(&qword_1000A5EB8, &qword_10008D480);
  v158 = sub_10008A1C8();

  v159 = sub_10001B5A0(v158);
  v160 = sub_100011204(v159, v245);

  if (!*(v160 + 16))
  {

LABEL_97:
    v218 = v0[25];
    v217 = v0[26];
    v219 = v0[24];
    swift_beginAccess();
    v248 = *(v239 + 16);

    sub_10000FE44();
    v220 = *(v218 + 8);
    v221 = sub_1000124C8();
    v222(v221);
    goto LABEL_23;
  }

  v161 = 0;
  v162 = v160 + 56;
  v163 = -1;
  v164 = -1 << *(v160 + 32);
  if (-v164 < 64)
  {
    v163 = ~(-1 << -v164);
  }

  v165 = v163 & *(v160 + 56);
  v166 = (63 - v164) >> 6;
  v167 = &ContainerIndexer;
  v227 = v166;
  v228 = v160 + 56;
  v229 = v160;
  if (!v165)
  {
    while (1)
    {
LABEL_55:
      v168 = v161 + 1;
      if (__OFADD__(v161, 1))
      {
        goto LABEL_102;
      }

      if (v168 >= v166)
      {
        break;
      }

      v165 = *(v162 + 8 * v168);
      ++v161;
      if (v165)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_97;
  }

  while (2)
  {
    v168 = v161;
LABEL_58:
    v230 = (v165 - 1) & v165;
    v169 = (*(v160 + 48) + ((v168 << 10) | (16 * __clz(__rbit64(v165)))));
    v170 = *v169;
    v171 = v169[1];

    v172 = [v156 *&v167[44].flags];
    v173 = sub_10008A1C8();

    if (!*(v173 + 16))
    {

      v161 = v168;
      goto LABEL_93;
    }

    v226 = v168;
    v174 = sub_100081308(v170, v171);
    v176 = v175;

    if ((v176 & 1) == 0)
    {

      v161 = v168;
LABEL_93:
      v162 = v228;
      v160 = v229;
      v166 = v227;
      v165 = v230;
      if (!v230)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v177 = *(*(v173 + 56) + 8 * v174);

  v178 = *(v177 + 16);
  v232 = v155;
  if (!v178)
  {
LABEL_81:

    v208 = _swiftEmptyArrayStorage;
    sub_100011D84(0, &qword_1000A5EC0, WFActionRequest_ptr);
    isa = sub_10008A318().super.isa;
    [v235 createActionsForRequests:isa];

    v210 = sub_10008391C(_swiftEmptyArrayStorage);
    v211 = 0;
    while (v210 != v211)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v212 = v208;
        v213 = sub_10008A928();
      }

      else
      {
        if (v211 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v212 = v208;
        v213 = v208[v211 + 4];
      }

      v214 = v213;
      v215 = v211 + 1;
      if (__OFADD__(v211, 1))
      {
        goto LABEL_100;
      }

      v216 = [v213 result];

      ++v211;
      v208 = v212;
      if (v216)
      {
        sub_10008A308();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10008A348();
        }

        sub_10008A368();
        v211 = v215;
        v208 = v212;
      }
    }

    swift_beginAccess();
    sub_10000F580(_swiftEmptyArrayStorage);
    swift_endAccess();
    v161 = v226;
    v156 = v241;
    v155 = v232;
    v167 = &ContainerIndexer;
    goto LABEL_93;
  }

  sub_10008A968();
  v180 = sub_100011D44(v177);
  v182 = v181;
  v183 = 0;
  v247 = v177 + 64;
  v231 = v177 + 72;
  v233 = v0;
  if ((v180 & 0x8000000000000000) == 0)
  {
    while (v180 < 1 << *(v177 + 32))
    {
      v184 = v180 >> 6;
      if ((*(v247 + 8 * (v180 >> 6)) & (1 << v180)) == 0)
      {
        goto LABEL_104;
      }

      if (*(v177 + 36) != v182)
      {
        goto LABEL_105;
      }

      v238 = v179;
      v185 = v178;
      v186 = (*(v177 + 56) + 16 * v180);
      v187 = v177;
      v188 = *v186;
      v189 = v186[1];
      v190 = objc_allocWithZone(WFActionRequest);

      sub_1000102D0(v188, v189, 0);
      sub_10008A948();
      v191 = _swiftEmptyArrayStorage[2];
      sub_10008A978();
      v177 = v187;
      sub_10008A988();
      v192 = sub_10008A958();
      v200 = 1 << *(v187 + 32);
      if (v180 >= v200)
      {
        goto LABEL_106;
      }

      v201 = *(v247 + 8 * v184);
      if ((v201 & (1 << v180)) == 0)
      {
        goto LABEL_107;
      }

      if (*(v187 + 36) != v182)
      {
        goto LABEL_108;
      }

      v178 = v185;
      v202 = v201 & (-2 << (v180 & 0x3F));
      if (v202)
      {
        v200 = __clz(__rbit64(v202)) | v180 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v203 = v184 << 6;
        v204 = (v231 + 8 * v184);
        v205 = v184 + 1;
        while (v205 < (v200 + 63) >> 6)
        {
          v207 = *v204++;
          v206 = v207;
          v203 += 64;
          ++v205;
          if (v207)
          {
            sub_10001267C(v192, v193, v194, v195, v196, v197, v198, v199, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v235, v238);
            v200 = __clz(__rbit64(v206)) + v203;
            goto LABEL_75;
          }
        }

        sub_10001267C(v192, v193, v194, v195, v196, v197, v198, v199, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v235, v238);
LABEL_75:
        v177 = v187;
      }

      ++v183;
      v0 = v233;
      if (v183 == v185)
      {
        goto LABEL_81;
      }

      v179 = 0;
      v182 = *(v177 + 36);
      v180 = v200;
      if (v200 < 0)
      {
        break;
      }
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return WFActionRegistry.fillAndWait()();
}

uint64_t sub_10000DD34()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 296);
  v3 = *v0;
  sub_10001237C();
  *v4 = v3;

  sub_100012554();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000DE1C()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = [v1 actions];
  sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
  sub_10001119C();
  v10 = sub_10008A3F8();

  sub_10000FE44();
  (*(v4 + 8))(v2, v3);
  sub_1000124A4();
  v8 = v0[13];
  v9 = v0[12];

  v6 = v0[1];

  return v6(v10);
}

uint64_t sub_10000DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10000DFC0, 0, 0);
}

uint64_t sub_10000DFC0()
{
  sub_100012604();
  v1 = *(v0 + 24);
  **(v0 + 16) = sub_10000E04C(*(v0 + 32));
  sub_10001269C();
  swift_storeEnumTagMultiPayload();
  sub_100012420();

  return v2();
}

uint64_t sub_10000E04C(void *a1)
{
  v82 = a1;
  v1 = sub_100088E08();
  v84 = *(v1 - 8);
  v2 = *(v84 + 64);
  __chkstk_darwin(v1);
  v83 = (&v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_100088F78();
  v4 = *(v81 - 1);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v81);
  v78 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v74 - v8;
  v79 = sub_100088F98();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v79);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v74 - v15;
  v17 = sub_100088D98();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  __chkstk_darwin(v17);
  v80 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v20 = sub_100088F88();
  v21 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    v22 = swift_slowAlloc();
    v75 = v1;
    v23 = v22;
    *v22 = 0;
    v24 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v24, "SampleInvocationFetch", "Fetching sample invocations prior to indexing", v23, 2u);
    v1 = v75;
  }

  v25 = v81;
  (*(v4 + 16))(v78, v9, v81);
  v26 = sub_100088FD8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_100088FC8();
  v29 = v79;
  (*(v10 + 16))(v14, v16, v79);
  sub_100088DA8();
  (*(v4 + 8))(v9, v25);
  (*(v10 + 8))(v16, v29);
  v31 = v83;
  v30 = v84;
  (*(v84 + 16))(v83, v82, v1);
  v32 = (*(v30 + 88))(v31, v1);
  if (v32 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    (*(v30 + 96))(v31, v1);
    v34 = *v31;
    v33 = v31[1];
    v35 = v31[2];

    v36 = sub_10001BE2C(v34);
  }

  else if (v32 == enum case for ToolKitIndexingReason.Changeset.full(_:))
  {
    v37 = [objc_opt_self() sharedProvider];
    v38 = [v37 metadataProvider];

    v85 = 0;
    v39 = [v38 bundlesWithError:&v85];
    v40 = v85;
    if (!v39)
    {
      v45 = v85;
      sub_100088978();

      swift_willThrow();
      v73 = v80;
      sub_10000FE44();
      (*(v76 + 8))(v73, v77);
      return v45;
    }

    v41 = v39;
    v36 = sub_10008A328();
    v42 = v40;
  }

  else
  {
    if (v32 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
      (*(v30 + 8))(v31, v1);
    }

    v36 = _swiftEmptyArrayStorage;
  }

  v82 = v36[2];
  if (!v82)
  {
    v45 = &_swiftEmptyDictionarySingleton;
LABEL_31:

    v71 = v80;
    sub_10000FE44();
    (*(v76 + 8))(v71, v77);
    return v45;
  }

  v81 = objc_opt_self();
  v43 = 0;
  v44 = (v36 + 5);
  v45 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v43 >= v36[2])
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v47 = *(v44 - 1);
    v46 = *v44;

    v48 = [v81 sharedProvider];
    v83 = v47;
    v84 = v46;
    v49 = sub_10008A238();
    v50 = [v48 examplePhrasesForBundleIdentifier:v49 useCache:1];

    sub_100011D84(0, &qword_1000A5E98, LNExamplePhraseDescription_ptr);
    v51 = sub_10008A328();

    if (v51 >> 62)
    {
      v52 = sub_10008A9D8();
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v52 < 1)
    {

      goto LABEL_24;
    }

    v53 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v45;
    v55 = sub_100081308(v83, v84);
    v57 = v45[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_35;
    }

    v60 = v55;
    v61 = v56;
    sub_100008DC0(&qword_1000A5EA0, &qword_10008D470);
    if (sub_10008A9A8(isUniquelyReferenced_nonNull_native, v59))
    {
      break;
    }

LABEL_21:
    v36 = v53;
    if ((v61 & 1) == 0)
    {
      v45 = v85;
      *(v85 + (v60 >> 6) + 8) |= 1 << v60;
      v66 = (v45[6] + 16 * v60);
      v67 = v84;
      *v66 = v83;
      v66[1] = v67;
      *(v45[7] + 8 * v60) = v51;
      v68 = v45[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_36;
      }

      v45[2] = v70;
      goto LABEL_27;
    }

    v45 = v85;
    v64 = *(v85 + 7);
    v65 = *(v64 + 8 * v60);
    *(v64 + 8 * v60) = v51;
LABEL_24:

LABEL_27:
    ++v43;
    v44 += 2;
    if (v82 == v43)
    {
      goto LABEL_31;
    }
  }

  v62 = sub_100081308(v83, v84);
  if ((v61 & 1) == (v63 & 1))
  {
    v60 = v62;
    goto LABEL_21;
  }

  result = sub_10008AAA8();
  __break(1u);
  return result;
}

uint64_t sub_10000E874(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = *(*(sub_100008DC0(&qword_1000A5E70, &qword_10008D410) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000E910, 0, 0);
}

uint64_t sub_10000E910()
{
  sub_100012404();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_10008A3D8();
  sub_100009158(v1, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_10000EDAC(v1, &unk_10008D4D0, v4);
  sub_10001096C(v1, &qword_1000A5E70, &qword_10008D410);

  sub_100012420();

  return v5();
}

uint64_t sub_10000E9D8()
{
  v1 = sub_100088F78();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v4 = sub_100088F98();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v7 = sub_100088D98();
  v0[10] = v7;
  v8 = *(v7 - 8);
  v0[11] = v8;
  v9 = *(v8 + 64) + 15;
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000EB64, 0, 0);
}

uint64_t sub_10000EB64()
{
  v2 = v1[9];
  v3 = v1[5];
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v4 = sub_100088F88();
  sub_10008A6A8();
  if (sub_10008A7B8())
  {
    v5 = v1[5];
    v6 = sub_100012560();
    sub_10001251C(v6);
    sub_100088F68();
    sub_1000125CC();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v0, 2u);
    sub_100012458();
  }

  v39 = v1[12];
  v14 = v1[8];
  v13 = v1[9];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[2];
  v20 = v1[3];

  sub_1000124F4(v20);
  sub_100012584();
  v21();
  v22 = sub_100088FD8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1000124D4();
  v25 = sub_100012528();
  v26(v25);
  sub_100088DA8();
  (*(v20 + 8))(v18, v19);
  v27 = *(v16 + 8);
  v28 = sub_1000124C8();
  v29(v28);
  if (qword_1000A5940 != -1)
  {
    swift_once();
  }

  v31 = v1[11];
  v30 = v1[12];
  v33 = v1[9];
  v32 = v1[10];
  v34 = v1[8];
  v36 = v1[4];
  v35 = v1[5];
  sub_100009CC0();
  sub_10000FE44();
  (*(v31 + 8))(v30, v32);

  sub_10001248C();

  return v37();
}

uint64_t sub_10000EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*(*(sub_100008DC0(&qword_1000A5E70, &qword_10008D410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v19 - v8;
  sub_100011F34(a1, v19 - v8);
  v10 = sub_10008A3D8();
  if (sub_100008E78(v9, 1, v10) == 1)
  {
    sub_10001096C(v9, &qword_1000A5E70, &qword_10008D410);
  }

  else
  {
    sub_10008A3C8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10008A388();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t ToolKitIndexingReason.Changeset.isExpensive.getter()
{
  v1 = sub_100089008();
  v2 = sub_100012368(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1000123E8();
  v5 = sub_100088E08();
  v6 = sub_100012368(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_1000123E8();
  v13 = (v12 - v11);
  v14 = [objc_opt_self() sharedProvider];
  v15 = [v14 metadataProvider];

  (*(v8 + 16))(v13, v0, v5);
  v16 = (*(v8 + 88))(v13, v5);
  if (v16 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    (*(v8 + 96))(v13, v5);
    v18 = *v13;
    v17 = v13[1];
    v19 = v13[2];

    v30 = 0;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 56);
    v23 = (v20 + 63) >> 6;

    for (i = 0; v22; i = v25)
    {
      v25 = i;
LABEL_9:
      v26 = (*(v18 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v22)))));
      v27 = v26[1];
      v29[0] = *v26;
      v29[1] = v27;

      sub_100010170(&v30, v29, v15);
      v22 &= v22 - 1;
    }

    while (1)
    {
      v25 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return v30 > 80;
      }

      v22 = *(v18 + 56 + 8 * v25);
      ++i;
      if (v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    if (v16 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {

      return 1;
    }

    if (v16 == enum case for ToolKitIndexingReason.Changeset.none(_:))
    {

      return 0;
    }
  }

  result = sub_10008AA58();
  __break(1u);
  return result;
}

uint64_t sub_10000F328(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 fullyQualifiedLinkActionIdentifier];
  }

  else
  {
    sub_100088BF8();
    if (!swift_dynamicCastClass())
    {
      while (1)
      {
        v15 = v3;
        sub_10008A918(31);
        v16._object = 0x800000010008E620;
        v16._countAndFlagsBits = 0xD00000000000001DLL;
        sub_10008A2C8(v16);
        sub_100008DC0(&unk_1000A5F30, &qword_10008D498);
        sub_10008A998();
LABEL_8:
        sub_10008A9C8();
        __break(1u);
      }
    }

    v14 = v3;
    v7 = sub_100088BE8();
  }

  v8 = v7;
  v9 = [v7 bundleIdentifier];

  v10 = sub_10008A268();
  v12 = v11;

  LOBYTE(v10) = sub_1000636BC(v10, v12, a2);

  return v10 & 1;
}

void sub_10000F580(uint64_t a1)
{
  v2 = sub_10008391C(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10008A928();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_100054E3C(&v5, v4);
  }
}

void sub_10000F640(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10008A878();
    sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
    sub_10001119C();
    sub_10008A428();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100011E9C();
      return;
    }

    while (1)
    {
      sub_100054E3C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_10008A8A8())
      {
        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10000F820(uint64_t a1)
{
  sub_100008DC0(&qword_1000A5F40, &qword_10008D4A8);
  sub_100089368();
  if (!v1)
  {
    v3 = v38;
    if (*(v38 + 16))
    {
      v4 = sub_10000FC54(a1);
      v5 = v4;
      v6 = *(v38 + 16);
      v35 = v4;
      if (v6)
      {
        sub_10008A968();
        v8 = (sub_100083920)();
        v10 = v9;
        v11 = 0;
        v12 = v38 + 56;
        v36 = v6;
        while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
        {
          v13 = v8 >> 6;
          if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
          {
            goto LABEL_40;
          }

          if (*(v3 + 36) != v10)
          {
            goto LABEL_41;
          }

          v37 = v11;
          v14 = (*(v3 + 48) + 16 * v8);
          v15 = v3;
          v16 = *v14;
          v17 = v14[1];
          v39 = v7;
          objc_allocWithZone(WFActionRequest);

          sub_1000102D0(v16, v17, 0);
          sub_10008A948();
          v18 = _swiftEmptyArrayStorage[2];
          sub_10008A978();
          sub_10008A988();
          sub_10008A958();
          if (v39)
          {
            goto LABEL_45;
          }

          v19 = 1 << *(v15 + 32);
          if (v8 >= v19)
          {
            goto LABEL_42;
          }

          v20 = *(v12 + 8 * v13);
          if ((v20 & (1 << v8)) == 0)
          {
            goto LABEL_43;
          }

          v3 = v15;
          if (*(v15 + 36) != v10)
          {
            goto LABEL_44;
          }

          v21 = v20 & (-2 << (v8 & 0x3F));
          if (v21)
          {
            v19 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v22 = v36;
          }

          else
          {
            v23 = v13 << 6;
            v24 = v13 + 1;
            v22 = v36;
            v25 = (v38 + 64 + 8 * v13);
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                v19 = __clz(__rbit64(v26)) + v23;
                break;
              }
            }
          }

          v7 = 0;
          v11 = v37 + 1;
          v8 = v19;
          if (v37 + 1 == v22)
          {

            v5 = v35;
            goto LABEL_24;
          }
        }
      }

      else
      {

LABEL_24:
        sub_100011D84(0, &qword_1000A5EC0, WFActionRequest_ptr);
        isa = sub_10008A318().super.isa;
        [v5 createActionsForRequests:isa];

        v29 = sub_10008391C(_swiftEmptyArrayStorage);
        v30 = 0;
        while (1)
        {
          if (v29 == v30)
          {

            swift_beginAccess();
            sub_10000F580(_swiftEmptyArrayStorage);
            swift_endAccess();

            return;
          }

          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v31 = sub_10008A928();
          }

          else
          {
            if (v30 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v31 = _swiftEmptyArrayStorage[v30 + 4];
          }

          v32 = v31;
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          v34 = [v31 result];

          ++v30;
          if (v34)
          {
            sub_10008A308();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10008A348();
            }

            sub_10008A368();
            v30 = v33;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    else
    {
    }
  }
}

id sub_10000FC54(uint64_t a1)
{
  v2 = sub_1000898A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ActionProvider.bundled(_:))
  {
    v8 = WFBundledActionProvider_ptr;
    return [objc_allocWithZone(*v8) init];
  }

  if (v7 == enum case for ActionProvider.interchange(_:))
  {
    v8 = WFInterchangeActionProvider_ptr;
    return [objc_allocWithZone(*v8) init];
  }

  _s14PreflightErrorOMa(0);
  sub_100011E44();
  swift_allocError();
  v11 = v10;
  v12 = sub_100008DC0(&qword_1000A5F50, &qword_10008D4B0);
  sub_100009158(v11, 1, 1, v12);
  swift_willThrow();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000FE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100089528();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000FE44()
{
  sub_100012578();
  v38 = sub_100088FA8();
  v0 = sub_100012368(v38);
  v41 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  sub_1000123E8();
  v40 = v5 - v4;
  v6 = sub_100088F78();
  v7 = sub_100012368(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000123E8();
  v14 = v13 - v12;
  v15 = sub_100088F98();
  v16 = sub_100012368(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_1000123E8();
  v23 = v22 - v21;
  sub_100088D58();
  v39 = sub_100088D78();
  v25 = v24;
  sub_100088D88();
  v26 = sub_100088F88();
  sub_100088FB8();
  v37 = sub_10008A698();
  result = sub_10008A7B8();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v14, v6);
    return (*(v18 + 8))(v23, v15);
  }

  v35 = v9;
  v36 = v6;
  if ((v25 & 1) == 0)
  {
    v29 = v40;
    v28 = v41;
    v30 = v39;
    if (v39)
    {
      v31 = v38;
LABEL_9:

      sub_100088FE8();

      if ((*(v28 + 88))(v29, v31) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v29, v31);
        v32 = "";
      }

      v33 = sub_100012560();
      *v33 = 0;
      v34 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v37, v34, v30, v32, v33, 2u);

      v9 = v35;
      v6 = v36;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v29 = v40;
  v28 = v41;
  if (HIDWORD(v39))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v39 & 0xFFFFF800) != 0xD800)
  {
    v31 = v38;
    if (v39 >> 16 <= 0x10)
    {
      v30 = &v42;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100010170(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v23 = 0;
  v7 = sub_100011CE4(v5, v6, &v23, a3, &selRef_actionIdentifiersForBundleIdentifier_error_);
  v8 = v23;
  if (v7)
  {
    v9 = v7;
    v10 = sub_10008A328();
    v11 = v8;

    v12 = *(v10 + 16);

    v23 = 0;
    v13 = sub_100011CE4(v5, v6, &v23, a3, &selRef_entityIdentifiersForBundleIdentifier_error_);
    v8 = v23;
    if (v13)
    {
      v14 = v13;
      v15 = sub_10008A328();
      v16 = v8;

      v17 = *(v15 + 16);

      v19 = v12 + v17;
      if (__OFADD__(v12, v17))
      {
        __break(1u);
      }

      else
      {
        v20 = __OFADD__(*a1, v19);
        v21 = *a1 + v19;
        if (!v20)
        {
          *a1 = v21;
          return result;
        }
      }

      __break(1u);
    }
  }

  v22 = v8;
  sub_100088978();

  return swift_willThrow();
}

id sub_1000102D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10008A238();

  if (a3)
  {
    v6.super.isa = sub_10008A1B8().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithActionIdentifier:v5 serializedParameters:v6.super.isa];

  return v7;
}

uint64_t sub_100010398(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  v9 = sub_100012410(v8);
  *v9 = v10;
  v9[1] = sub_100012334;

  return sub_10000AD08(a1, a2, v5, v6, v7);
}

uint64_t sub_100010474()
{
  sub_1000125D8();
  v1 = *(sub_100088E08() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_100012410(v5);
  *v6 = v7;
  v6[1] = sub_100012334;
  v8 = sub_1000123A0();

  return sub_10000BA6C(v8, v9, v10, v11);
}

uint64_t sub_10001054C()
{
  sub_100012604();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100012410(v4);
  *v5 = v6;
  v5[1] = sub_1000105E8;
  v7 = sub_1000123A0();

  return sub_10000C1A8(v7);
}

uint64_t sub_1000105E8()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001237C();
  *v4 = v3;

  sub_10001248C();

  return v5();
}

uint64_t sub_1000106C8()
{
  sub_1000125D8();
  v1 = *(sub_100088E08() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = sub_100012410(v6);
  *v7 = v8;
  v7[1] = sub_100012334;
  v9 = sub_1000123A0();

  return sub_10000C5B8(v9, v10, v11, v4, v12, v5);
}

uint64_t sub_1000107E0()
{
  sub_1000125D8();
  v1 = *(sub_100088E08() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100012410(v6);
  *v7 = v8;
  v7[1] = sub_100012334;
  v9 = sub_1000123A0();

  return sub_10000DF9C(v9, v10, v11, v5, v12);
}

unint64_t sub_1000108C0()
{
  result = qword_1000A5E88;
  if (!qword_1000A5E88)
  {
    sub_100010924(&qword_1000A5E68, &qword_10008D408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5E88);
  }

  return result;
}

uint64_t sub_100010924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001096C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008DC0(a2, a3);
  sub_100012610(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000109C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v5 = v4(v3);
  sub_10001238C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000125C0();
  v9(v8);
  return a2;
}

uint64_t sub_100010A14()
{
  v1 = sub_1000125D8();
  v3 = v2(v1);
  sub_100012610(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_100010A64(uint64_t a1, uint64_t a2)
{
  v3 = sub_100012578();
  v5 = v4(v3);
  sub_10001238C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000125C0();
  v9(v8);
  return a2;
}

unint64_t sub_100010AB8(uint64_t a1, uint64_t a2)
{
  sub_10008A758(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10008A868();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100010B3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100008DC0(&unk_1000A6440, &qword_10008D4A0);
  result = sub_10008A8F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_10008AB08();

    sub_10008A2B8();
    result = sub_10008AB28();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100010D58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100008DC0(&qword_1000A5EC8, &unk_10008D488);
  result = sub_10008A8F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_10008A758(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_100010F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = &_swiftEmptySetSingleton;
    v21 = &_swiftEmptySetSingleton;

    sub_10008A878();
    while (1)
    {
      while (1)
      {
        if (!sub_10008A8A8())
        {
          swift_bridgeObjectRelease_n();

          return v6;
        }

        sub_100011D84(0, &qword_1000A5EA8, WFAction_ptr);
        swift_dynamicCast();
        v7 = sub_10000F328(&v20, a2);
        if (v3)
        {

          v19 = v20;
          swift_bridgeObjectRelease_n();

          return v6;
        }

        v8 = v20;
        if (v7)
        {
          break;
        }
      }

      if (v6[3] <= v6[2])
      {
        sub_100051204();
      }

      v6 = v21;
      result = sub_10008A758(v21[5]);
      v10 = (v6 + 7);
      v11 = -1 << *(v6 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~v6[(v12 >> 6) + 7]) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~v6[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(v6[6] + 8 * v14) = v8;
      ++v6[2];
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *&v10[8 * v13];
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = sub_1000118A0(a1, a2);

    return v6;
  }

  return result;
}

unint64_t sub_10001119C()
{
  result = qword_1000A5EB0;
  if (!qword_1000A5EB0)
  {
    sub_100011D84(255, &qword_1000A5EA8, WFAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5EB0);
  }

  return result;
}

uint64_t sub_100011204(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = &v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100050188(0, v6, v8);
    v9 = sub_1000114FC(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1000113CC(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_1000113CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000114FC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_10001145C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_100011B64(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1000114FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_10008AB08();

      sub_10008A2B8();
      v42 = sub_10008AB28();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_10008AA68();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_100010B3C(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_10008AB08();

      sub_10008A2B8();
      v19 = sub_10008AB28();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_10008AA68();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

int64_t sub_1000118A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v30 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = &v25;
    __chkstk_darwin(v9);
    v26 = v7;
    v27 = (&v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100050188(0, v7, v27);
    v29 = 0;
    v10 = 0;
    v7 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v8 = v15 | (v10 << 6);
      v31 = *(*(a1 + 48) + 8 * v8);
      v18 = v31;
      v19 = sub_10000F328(&v31, v30);
      if (v3)
      {

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        return v14;
      }

      v20 = v19;

      if (v20)
      {
        *(v27 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          v14 = sub_100010D58(v27, v26, v29, a1);
          swift_bridgeObjectRelease_n();
          return v14;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_17;
      }

      v17 = *(v7 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v30;

  v14 = sub_10001145C(v23, v7, a1, v24);

  swift_bridgeObjectRelease_n();
  return v14;
}

void sub_100011B64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v24 = *(*(a3 + 48) + 8 * v15);
    v16 = v24;
    v17 = sub_10000F328(&v24, a4);
    if (v4)
    {

      return;
    }

    v18 = v17;

    if (v18)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100010D58(a1, a2, v22, a3);

        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_100011CE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = sub_10008A238();
  v9 = [a4 *a5];

  return v9;
}

uint64_t sub_100011D44(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_10008A848();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100011D84(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100011DC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100011DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000FE0C(a1);
}

uint64_t sub_100011E0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100011E44()
{
  result = qword_1000A5F48;
  if (!qword_1000A5F48)
  {
    _s14PreflightErrorOMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5F48);
  }

  return result;
}

uint64_t sub_100011EA4()
{
  sub_100012404();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100012334;
  sub_1000125C0();

  return sub_10000E9D8();
}

uint64_t sub_100011F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011FCC()
{
  sub_100012024();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100012024()
{
  if (!qword_1000A5FD8)
  {
    v0 = sub_1000898A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5FD8);
    }
  }
}

void sub_100012074()
{
  sub_1000120FC();
  if (v0 <= 0x3F)
  {
    sub_100012170();
    if (v1 <= 0x3F)
    {
      sub_1000121E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000120FC()
{
  if (!qword_1000A6080)
  {
    sub_100088EA8();
    sub_100088D48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000A6080);
    }
  }
}

void sub_100012170()
{
  if (!qword_1000A6088)
  {
    sub_100011D84(255, &qword_1000A5EA8, WFAction_ptr);
    sub_10001119C();
    v0 = sub_10008A438();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A6088);
    }
  }
}

void sub_1000121E4()
{
  if (!qword_1000A6090)
  {
    sub_100010924(&qword_1000A5E78, &unk_10008D458);
    v0 = sub_10008A1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A6090);
    }
  }
}

void sub_100012280()
{
  sub_100088EA8();
  if (v0 <= 0x3F)
  {
    sub_100088D48();
    if (v1 <= 0x3F)
    {
      sub_100012170();
      if (v2 <= 0x3F)
      {
        sub_1000121E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000123B4(uint64_t a1)
{
  *(a1 + 8) = sub_10000B448;
  v2 = v1[13];
  v3 = v1[11];
  return v1[7];
}

uint64_t sub_100012420()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100012458()
{
}

uint64_t sub_10001248C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000124A4()
{
  result = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[16];
  return result;
}

uint64_t sub_1000124D4()
{

  return sub_100088FC8();
}

uint64_t sub_100012560()
{

  return swift_slowAlloc();
}

uint64_t sub_100012590@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + ((a1 << 10) | (16 * v1)));
  v5 = *v4;
  v6 = v4[1];
}

char *sub_1000125E4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  return a1 + v1;
}

uint64_t sub_10001265C()
{
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
}

uint64_t sub_10001267C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return sub_100011DC4(v20, v21, a20 & 1);
}

unint64_t sub_1000126B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v108 = a5;
  v109 = a4;
  v10 = sub_100008DC0(&qword_1000A6210, &qword_10008D598);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v145 = &v95 - v12;
  v13 = sub_100008DC0(&unk_1000A6270, qword_10008D5F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v144 = &v95 - v15;
  v16 = sub_100008DC0(&qword_1000A6C60, &qword_10008D5B8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v143 = &v95 - v18;
  v151 = sub_100088C58();
  v19 = *(v151 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v151);
  v142 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100089F98();
  v146 = *(v141 - 8);
  v22 = *(v146 + 64);
  __chkstk_darwin(v141);
  v98 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100089FD8();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v107 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100089E68();
  v152 = *(v106 - 8);
  v27 = *(v152 + 64);
  __chkstk_darwin(v106);
  v105 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10008A128();
  v150 = *(v113 - 8);
  v29 = *(v150 + 64);
  __chkstk_darwin(v113);
  v125 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100089E88();
  v149 = *(v122 - 8);
  v31 = *(v149 + 64);
  v32 = __chkstk_darwin(v122);
  v104 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v95 - v34;
  v136 = sub_1000899A8();
  v36 = *(v136 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v136);
  v103 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v95 - v40;
  v123 = sub_100089918();
  v42 = *(v123 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v123);
  v45 = &v95 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a1 + 16);
  if (v46)
  {
    v120 = v45;
    v47 = a2;
    v48 = v19;
    v95 = v19;
    v49 = v47;
    v154 = _swiftEmptyArrayStorage;
    v110 = v35;
    v115 = v46;
    sub_100081B90(0, v46, 0);
    v137 = v154;
    result = sub_100083920(a1);
    v53 = 0;
    v135 = a1 + 56;
    v128 = v36 + 16;
    v111 = (v150 + 8);
    v119 = (v149 + 32);
    v118 = enum case for TypeDefinition.enumeration(_:);
    v117 = (v42 + 104);
    v139 = (v48 + 8);
    v140 = v48 + 16;
    v138 = v146 + 32;
    v101 = enum case for EnumerationDefinition.Kind.actionEnum(_:);
    v100 = (v152 + 104);
    v124 = (v36 + 8);
    v116 = v42 + 32;
    v99 = a1 + 64;
    v54 = v136;
    v114 = v41;
    v55 = v36;
    v97 = a3;
    v96 = v49;
    v102 = a1;
    v127 = v36;
    v121 = v42;
    while (1)
    {
      v56 = v125;
      if ((result & 0x8000000000000000) != 0 || result >= 1 << *(a1 + 32))
      {
        break;
      }

      if ((*(v135 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_39;
      }

      if (*(a1 + 36) != v51)
      {
        goto LABEL_40;
      }

      v130 = 1 << result;
      v131 = result >> 6;
      v134 = v52;
      v133 = v51;
      v129 = v53;
      v57 = *(a1 + 48);
      v58 = *(v55 + 72);
      v132 = result;
      v126 = *(v55 + 16);
      v126(v41, v57 + v58 * result, v54);
      v59 = v49;
      v60 = sub_10008A668();
      if (v6)
      {
        (*v124)(v41, v54);
      }

      v61 = v60;
      if (v60)
      {
        sub_10008A0F8();
        v62 = v110;
        sub_10008A5F8();
        (*v111)(v56, v113);

        v63 = v62;
        v41 = v114;
        v64 = v120;
      }

      else
      {
        v65 = v109;
        v66 = *(v109 + 16);
        v112 = 0;
        if (v66)
        {
          v152 = v66;
          v153 = _swiftEmptyArrayStorage;
          sub_100081C40(0, v66, 0);
          v67 = v153;
          v68 = v65 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v69 = *(v95 + 72);
          v147 = *(v95 + 16);
          v148 = v69;
          v70 = v98;
          do
          {
            v71 = v142;
            v147(v142, v68, v151);
            v72 = sub_100088C48();
            v149 = v73;
            v150 = v72;
            sub_100088C48();
            v74 = sub_100089D98();
            sub_100009158(v144, 1, 1, v74);
            v75 = sub_100089D58();
            sub_100009158(v145, 1, 1, v75);
            v76 = v143;
            sub_100089DB8();
            v77 = sub_100089E48();
            sub_100009158(v76, 0, 1, v77);
            sub_100089F78();
            (*v139)(v71, v151);
            v153 = v67;
            v79 = v67[2];
            v78 = v67[3];
            if (v79 >= v78 >> 1)
            {
              sub_100081C40(v78 > 1, v79 + 1, 1);
              v67 = v153;
            }

            v67[2] = (v79 + 1);
            (*(v146 + 32))(v67 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v79, v70, v141);
            v68 += v148;
            --v152;
          }

          while (v152);
          a3 = v97;
          v59 = v96;
          v54 = v136;
          v80 = v114;
        }

        else
        {
          v80 = v41;
        }

        v126(v103, v80, v54);
        (*v100)(v105, v101, v106);
        sub_10008A5A8();
        v81 = v104;
        v54 = v136;
        sub_100089E58();
        v63 = v81;
        a1 = v102;
        v64 = v120;
        v41 = v80;
        v6 = v112;
      }

      (*v119)(v64, v63, v122);
      v82 = v123;
      (*v117)(v64, v118, v123);
      (*v124)(v41, v54);
      v83 = v137;
      v154 = v137;
      v85 = v137[2];
      v84 = v137[3];
      if (v85 >= v84 >> 1)
      {
        sub_100081B90(v84 > 1, v85 + 1, 1);
        v82 = v123;
        v83 = v154;
      }

      v83[2] = (v85 + 1);
      v86 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v137 = v83;
      result = (*(v121 + 32))(v83 + v86 + *(v121 + 72) * v85, v64, v82);
      if (v134)
      {
        goto LABEL_44;
      }

      v87 = 1 << *(a1 + 32);
      result = v132;
      v54 = v136;
      v55 = v127;
      if (v132 >= v87)
      {
        goto LABEL_41;
      }

      v88 = *(v135 + 8 * v131);
      if ((v88 & v130) == 0)
      {
        goto LABEL_42;
      }

      if (*(a1 + 36) != v133)
      {
        goto LABEL_43;
      }

      v89 = v88 & (-2 << (v132 & 0x3F));
      if (v89)
      {
        v49 = v59;
        v87 = __clz(__rbit64(v89)) | v132 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v90 = v131 << 6;
        v91 = v131 + 1;
        v92 = (v99 + 8 * v131);
        while (v91 < (v87 + 63) >> 6)
        {
          v94 = *v92++;
          v93 = v94;
          v90 += 64;
          ++v91;
          if (v94)
          {
            v49 = v59;
            sub_100011DC4(v132, v133, 0);
            v55 = v127;
            v87 = __clz(__rbit64(v93)) + v90;
            goto LABEL_31;
          }
        }

        v49 = v59;
        sub_100011DC4(v132, v133, 0);
        v55 = v127;
LABEL_31:
        v54 = v136;
      }

      v53 = v129 + 1;
      if (v129 + 1 == v115)
      {

        goto LABEL_36;
      }

      v52 = 0;
      v51 = *(a1 + 36);
      result = v87;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {

    v137 = _swiftEmptyArrayStorage;
LABEL_36:

    return v137;
  }

  return result;
}

void *sub_100013468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void sub_100013478(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_100013508(a1, v3, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_100013508@<X0>(uint64_t a1@<X0>, id *a2@<X1>, id a3@<X2>, void *a4@<X3>, id **a5@<X8>)
{
  v74 = a5;
  v75 = a4;
  v86 = a2;
  v8 = sub_1000899A8();
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v73 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10008A128();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10008A088();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v81 = sub_10008A508();
  v16 = *(v81 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v81);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100089918();
  v21 = *(v20 - 8);
  v84 = v20;
  v85 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v76 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v72 - v26;
  __chkstk_darwin(v25);
  v29 = &v72 - v28;
  v90 = _swiftEmptyArrayStorage;
  v30 = sub_100011D84(0, &qword_1000A6250, WFMeasurementContentItem_ptr);
  v83 = a1;
  if (v30 == a1)
  {
    v82 = a3;
    v33 = [objc_opt_self() availableUnitTypes];
    type metadata accessor for WFMeasurementUnitType(0);
    v34 = sub_10008A328();

    v27 = *(v34 + 16);
    if (!v27)
    {

      v19 = _swiftEmptyArrayStorage;
LABEL_16:
      sub_10001BEE0(v19);
      goto LABEL_17;
    }

    *&v88[0] = _swiftEmptyArrayStorage;
    v35 = v88;
    sub_100081B90(0, v27, 0);
    v16 = 0;
    v19 = *&v88[0];
    v81 = v85 + 32;
    while (1)
    {
      v36 = *(v34 + 16);
      if (v16 >= v36)
      {
        break;
      }

      v37 = *(v34 + 8 * v16 + 32);
      v35 = v86;
      sub_100013F08(v37);
      if (v5)
      {

        goto LABEL_46;
      }

      *&v88[0] = v19;
      a1 = *(v19 + 16);
      v38 = *(v19 + 24);
      a3 = (a1 + 1);
      if (a1 >= v38 >> 1)
      {
        v35 = v88;
        sub_100081B90(v38 > 1, a1 + 1, 1);
        v19 = *&v88[0];
      }

      ++v16;
      *(v19 + 16) = a3;
      (*(v85 + 32))(v19 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * a1, v29, v84);
      if (v27 == v16)
      {

        goto LABEL_16;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    v31 = a3;
    sub_10008A4D8();
    sub_10008A4E8();
    sub_10008A4C8();
    sub_10008A598();
    if (v5)
    {
      result = (*(v16 + 8))(v19, v81);
LABEL_47:
      *v75 = v5;
      return result;
    }

    a1 = a3;
    sub_1000803C8(0, 1, 1, _swiftEmptyArrayStorage);
    v35 = v39;
    v34 = v39[2];
    v36 = v39[3];
    a3 = (v34 + 1);
    if (v34 < v36 >> 1)
    {
      goto LABEL_13;
    }
  }

  sub_1000803C8(v36 > 1, a3, 1, v35);
  v35 = v71;
LABEL_13:
  v82 = a1;
  v40 = *(v16 + 8);
  v16 += 8;
  v40(v19, v81);
  v35[2] = a3;
  (*(v85 + 32))(v35 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v34, v27, v84);
  v90 = v35;
LABEL_17:
  v34 = v83;
  v35 = [swift_getObjCClassFromMetadata() allProperties];
  sub_100011D84(0, &qword_1000A6258, WFContentProperty_ptr);
  v41 = sub_10008A328();

  v42 = sub_10008391C(v41);
  v19 = 0;
  v80 = v41 & 0xC000000000000001;
  v81 = v42;
  v79 = v41 & 0xFFFFFFFFFFFFFF8;
  while (v81 != v19)
  {
    if (v80)
    {
      v43 = sub_10008A928();
    }

    else
    {
      v36 = *(v79 + 16);
      if (v19 >= v36)
      {
        goto LABEL_57;
      }

      v43 = *(v41 + 8 * v19 + 32);
    }

    v27 = v43;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v44 = sub_1000140E8(v43, v34, v82);
    if (v5)
    {

      goto LABEL_46;
    }

    a1 = v44;
    a3 = v44[2];
    v35 = v90;
    v16 = v90[2];
    v34 = a3 + v16;
    if (__OFADD__(v16, a3))
    {
      goto LABEL_58;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v46 = v35[3] >> 1, v46 < v34))
    {
      if (v16 <= v34)
      {
        v47 = a3 + v16;
      }

      else
      {
        v47 = v16;
      }

      sub_1000803C8(isUniquelyReferenced_nonNull_native, v47, 1, v35);
      v35 = v48;
      v46 = v48[3] >> 1;
    }

    v34 = v83;
    if (*(a1 + 16))
    {
      v49 = v35[2];
      v36 = v46 - v49;
      if (v36 < a3)
      {
        goto LABEL_60;
      }

      v50 = v35 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v49;
      swift_arrayInitWithCopy();

      if (a3)
      {
        v51 = v35[2];
        v52 = __OFADD__(v51, a3);
        v36 = a3 + v51;
        if (v52)
        {
          goto LABEL_62;
        }

        v35[2] = v36;
      }
    }

    else
    {

      if (a3)
      {
        goto LABEL_59;
      }
    }

    v90 = v35;
    ++v19;
  }

  if (!v90[2])
  {
    goto LABEL_54;
  }

  sub_100011D84(0, &qword_1000A6260, WFLinkEnumerationContentItem_ptr);
  if (swift_dynamicCastMetatype())
  {
    v53 = [swift_getObjCClassFromMetadata() enumMetadata];
    sub_100011D84(0, &qword_1000A6268, LNEnumMetadata_ptr);
    v54 = sub_10008A738();
  }

  else
  {
    v54 = 0;
  }

  v55 = v86;
  v56 = v86[2];
  v87 = v34;
  *&v88[0] = v56;

  sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  v57 = sub_10008A278();
  __chkstk_darwin(v57);
  *(&v72 - 4) = &v90;
  *(&v72 - 3) = v55;
  *(&v72 - 16) = v54 & 1;
  *(&v72 - 1) = v82;
  sub_100089378();
  sub_1000893A8();
  if (v5)
  {

LABEL_46:

    goto LABEL_47;
  }

  v58 = v90;
  v59 = v90[2];
  if (v59)
  {
    *&v88[0] = _swiftEmptyArrayStorage;
    sub_100081BE8(0, v59, 0);
    v60 = *&v88[0];
    v61 = *(v85 + 16);
    v85 += 16;
    v86 = v61;
    v62 = (*(v85 + 64) + 32) & ~*(v85 + 64);
    v81 = v58;
    v63 = v58 + v62;
    v64 = *(v85 + 56);
    v65 = (v85 - 8);
    v82 = (v78 + 32);
    v83 = v64;
    v66 = v73;
    do
    {
      v67 = v76;
      v68 = v84;
      (v86)(v76, v63, v84);
      sub_1000898D8();
      (*v65)(v67, v68);
      *&v88[0] = v60;
      v70 = v60[2];
      v69 = v60[3];
      if (v70 >= v69 >> 1)
      {
        sub_100081BE8(v69 > 1, v70 + 1, 1);
        v60 = *&v88[0];
      }

      v60[2] = (v70 + 1);
      (*(v78 + 32))(v60 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v70, v66, v77);
      v63 += v83;
      --v59;
    }

    while (v59);
  }

  else
  {
LABEL_54:

    v60 = _swiftEmptyArrayStorage;
  }

  *v74 = v60;
  return result;
}

uint64_t sub_100013F08(void *a1)
{
  v2 = sub_10008A128();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10008A088();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008A508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WFMeasurementUnitType(0);
  v14[4] = v11;
  v14[5] = &protocol witness table for WFMeasurementUnitType;
  v14[1] = a1;
  v12 = a1;
  sub_10008A4D8();
  sub_10008A4E8();
  sub_10008A4F8();
  sub_10008A4C8();
  sub_100011D84(0, &qword_1000A6250, WFMeasurementContentItem_ptr);
  sub_10008A598();
  return (*(v7 + 8))(v10, v6);
}

id *sub_1000140E8(void *a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v26 = a2;
  v25 = sub_100089FF8();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100089888();
  v22 = *(v24 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v24);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 hasPossibleValues];
  v13 = [objc_msgSend(a1 "possibleValues")];
  swift_unknownObjectRelease();
  v14 = _swiftEmptyArrayStorage;
  if (v12 && (v13 & 1) == 0)
  {
    v15 = [a1 possibleValues];
    swift_getObjectType();
    v16 = sub_10008A748();
    swift_unknownObjectRelease();
    v17 = v26;
    sub_10008A518();
    sub_10008A648();
    sub_10008A658();
    v14 = a1;
    sub_10008A638();
    (*(v5 + 8))(v8, v25);
    if (!v3)
    {

      v18 = sub_100089868();
      v19 = a1;
      v20 = v23;

      v14 = sub_1000126B8(v18, v19, v20, v16, v17);
      (*(v22 + 8))(v11, v24);
    }
  }

  return v14;
}

uint64_t sub_1000143E0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5)
{
  v20 = a5;
  v19 = a4;
  v18 = a1;
  v7 = sub_100089918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(v12 + 16);
  v17[1] = v8 + 16;
  v14 = (v8 + 8);

  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {
    }

    if (i >= *(v12 + 16))
    {
      break;
    }

    (*(v8 + 16))(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v7);
    sub_100014590(v11, v18, v19 & 1, v20);
    if (v5)
    {
      (*v14)(v11, v7);
    }

    result = (*v14)(v11, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100014590(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v75 = a4;
  v68 = a3;
  v70 = a2;
  v5 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  v6 = v5 - 8;
  v64 = *(v5 - 8);
  v7 = *(v64 + 64);
  v8 = __chkstk_darwin(v5);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v9;
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = sub_1000899A8();
  v13 = sub_100012368(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v67 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v69 = a1;
  sub_1000898D8();
  v66 = sub_100089948();
  v72 = v21;
  v73 = v12;
  v22 = *(v15 + 16);
  v22(v11, v20, v12);
  v23 = [v75 locale];
  v24 = &v11[*(v6 + 28)];
  sub_100088A48();

  v25 = *(v78 + 24);
  v71 = sub_10001C0EC();
  v27 = v26;
  v28 = sub_10001C158();
  if (v27)
  {

    sub_100017740(v11);
    (*(v15 + 8))(v20, v73);
    return v71;
  }

  else
  {
    v57 = v25;
    v58 = v22;
    v59 = v15 + 16;
    v56 = v17;
    v61 = v20;
    v62 = v11;
    v30 = v67;
    v60 = v15;
    v31 = v73;
    *(&v55 - 10) = __chkstk_darwin(v28);
    *(&v55 - 9) = v32;
    v33 = v66;
    *(&v55 - 8) = v78;
    *(&v55 - 7) = v33;
    v29 = v72;
    *(&v55 - 6) = v72;
    *(&v55 - 40) = v68 & 1;
    v34 = v69;
    *(&v55 - 4) = v70;
    *(&v55 - 3) = v34;
    v35 = v74;
    *(&v55 - 2) = v75;
    *(&v55 - 8) = v36;
    sub_1000896D8();
    if (v35)
    {

      sub_100017740(v62);
      (*(v60 + 8))(v61, v31);
    }

    else
    {
      v74 = 0;

      v38 = v76;
      v39 = v77;
      v40 = v30;
      v41 = v30;
      v42 = v61;
      v43 = v31;
      v44 = v58;
      v58(v41, v61, v31);
      swift_bridgeObjectRetain_n();
      v71 = v38;
      v75 = v39;
      sub_10001C1C4(v38, v39, v40);
      v45 = v62;
      v46 = v65;
      sub_10001779C(v62, v65);
      sub_10001C270(v38, v39, v46);
      v76 = v70;
      v44(v40, v42, v43);
      sub_10001779C(v45, v46);
      v47 = v60;
      v48 = (*(v60 + 80) + 24) & ~*(v60 + 80);
      v49 = (v56 + *(v64 + 80) + v48) & ~*(v64 + 80);
      v50 = (v63 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v78;
      (*(v47 + 32))(v51 + v48, v40, v43);
      v52 = v51 + v49;
      v53 = v75;
      v29 = v71;
      sub_100017800(v46, v52);
      v54 = (v51 + v50);
      *v54 = v29;
      v54[1] = v53;
      sub_1000896E8();

      sub_100089398();

      sub_100017740(v62);
      (*(v47 + 8))(v61, v43);
    }
  }

  return v29;
}

uint64_t sub_100014AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v8 = sub_100088A68();
  v5[10] = v8;
  sub_100017A0C(v8);
  v5[11] = v9;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = sub_100089918();
  v5[13] = v12;
  sub_100017A0C(v12);
  v5[14] = v13;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v5[15] = v16;
  v17 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
  v18 = swift_task_alloc();
  v5[16] = v18;
  *v18 = v5;
  v18[1] = sub_100014C2C;

  return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v16, a3, 0, 0, a4);
}

uint64_t sub_100014C2C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10001501C;
  }

  else
  {
    v3 = sub_100014D40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100014D40()
{
  v29 = v0[9];
  v0[4] = *(v29 + 16);
  v30 = v0[17];
  v1 = v0[11];
  v2 = v0[12];
  v26 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v27 = v3;
  v28 = v0[15];
  v5 = v0[6];

  v6 = [v3 identifier];
  sub_10008A268();

  v32._countAndFlagsBits = 35;
  v32._object = 0xE100000000000000;
  sub_10008A2C8(v32);
  v7 = [v5 key];
  v8 = sub_10008A268();
  v10 = v9;

  v33._countAndFlagsBits = v8;
  v33._object = v10;
  sub_10008A2C8(v33);

  v34._countAndFlagsBits = 45;
  v34._object = 0xE100000000000000;
  sub_10008A2C8(v34);
  v11 = [v4 locale];
  sub_100088A48();

  v12 = sub_100088A08();
  v14 = v13;
  (*(v1 + 8))(v2, v26);
  v35._countAndFlagsBits = v12;
  v35._object = v14;
  sub_10008A2C8(v35);

  v15 = swift_task_alloc();
  v15[2] = v29;
  v15[3] = v28;
  v15[4] = v27;
  v15[5] = v4;
  sub_100089378();
  sub_1000893A8();
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  if (v30)
  {

    (*(v17 + 8))(v16, v18);
    v19 = v0[15];
    v20 = v0[12];
  }

  else
  {
    v22 = v0[12];
    v23 = v0[5];

    v24 = v0[3];

    sub_1000898D8();
    (*(v17 + 8))(v16, v18);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10001501C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v9 = sub_10008A7A8();
  result = sub_100014590(a2, a1, v9 & 1, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v11;
  }

  return result;
}

uint64_t sub_100015104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v17[1] = a2;
  v6 = sub_100089918();
  v7 = sub_100012368(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100089978();
  sub_100017A1C(v14);
  (*(v15 + 16))(v13, a1);
  (*(v9 + 104))(v13, enum case for TypeDefinition.primitive(_:), v6);
  v17[11] = *(v4 + 16);
  v17[6] = 0x766974696D697270;
  v17[7] = 0xEA00000000002065;

  v18._countAndFlagsBits = sub_100089958();
  sub_10008A2C8(v18);

  v17[4] = v4;
  v17[5] = v13;
  sub_100089378();
  sub_1000893A8();
  if (v3)
  {
  }

  else
  {

    sub_1000898D8();
  }

  return (*(v9 + 8))(v13, v6);
}

void sub_100015314(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = [objc_opt_self() defaultContext];
  v8 = sub_100014590(a2, a1, 0, v7);
  v10 = v9;

  if (!v3)
  {
    *a3 = v8;
    a3[1] = v10;
  }
}

uint64_t sub_1000153B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void (**)(char *, uint64_t), void (**)(char *, uint64_t), uint64_t)@<X3>, uint64_t (*a4)(char *, uint64_t)@<X4>, uint64_t a5@<X5>, int a6@<W6>, void *a7@<X7>, uint64_t *a8@<X8>, void (**a9)(char *, uint64_t), char *a10, unsigned __int8 a11)
{
  v270 = a7;
  LODWORD(v228) = a6;
  v230 = a5;
  v229 = a4;
  v227 = a3;
  v271 = a2;
  v268 = a1;
  v220 = a8;
  v247 = a9;
  v11 = sub_100008DC0(&qword_1000A6210, &qword_10008D598);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v251 = &v206 - v13;
  v14 = sub_100008DC0(&qword_1000A6218, &qword_10008D5A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v218 = &v206 - v16;
  v17 = sub_100008DC0(&qword_1000A6220, &qword_10008D5A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v264 = &v206 - v19;
  v20 = sub_100008DC0(&qword_1000A6228, &qword_10008D5B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v263 = &v206 - v22;
  v23 = sub_100008DC0(&qword_1000A6C60, &qword_10008D5B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v250 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v266 = &v206 - v28;
  v29 = __chkstk_darwin(v27);
  v262 = &v206 - v30;
  v31 = __chkstk_darwin(v29);
  v261 = &v206 - v32;
  v33 = __chkstk_darwin(v31);
  v260 = &v206 - v34;
  __chkstk_darwin(v33);
  v257 = &v206 - v35;
  v259 = sub_100089F98();
  v252 = *(v259 - 8);
  v36 = *(v252 + 64);
  __chkstk_darwin(v259);
  v265 = &v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_100089E88();
  v224 = *(v225 - 8);
  v38 = *(v224 + 64);
  __chkstk_darwin(v225);
  v223 = &v206 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_100089888();
  v219 = *(v240 - 8);
  v40 = *(v219 + 64);
  __chkstk_darwin(v240);
  v239 = &v206 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100089F48();
  v254 = *(v42 - 8);
  v255 = v42;
  v43 = *(v254 + 64);
  __chkstk_darwin(v42);
  v246 = &v206 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_100089A28();
  v232 = *(v233 - 8);
  v45 = *(v232 + 64);
  __chkstk_darwin(v233);
  v231 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_100088A68();
  v237 = *(v267 - 8);
  v47 = *(v237 + 64);
  v48 = __chkstk_darwin(v267);
  v249 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v248 = &v206 - v51;
  __chkstk_darwin(v50);
  v222 = &v206 - v52;
  v53 = sub_100008DC0(&qword_1000A6230, &unk_10008D5C0);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v253 = &v206 - v55;
  v245 = sub_100089FD8();
  v244 = *(v245 - 1);
  v56 = *(v244 + 64);
  __chkstk_darwin(v245);
  v221 = &v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_100088F48();
  v242 = *(v241 - 8);
  v58 = *(v242 + 64);
  __chkstk_darwin(v241);
  v258 = &v206 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_100089B18();
  v212 = *(v213 - 8);
  v60 = *(v212 + 64);
  v61 = __chkstk_darwin(v213);
  v238 = (&v206 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v61);
  v215 = &v206 - v63;
  v217 = sub_100089B38();
  v214 = *(v217 - 8);
  v64 = *(v214 + 64);
  __chkstk_darwin(v217);
  v216 = &v206 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100089BD8();
  v243 = *(v66 - 8);
  v67 = *(v243 + 64);
  __chkstk_darwin(v66);
  v69 = &v206 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000899B8();
  v226 = *(v70 - 8);
  v71 = *(v226 + 64);
  __chkstk_darwin(v70);
  v73 = &v206 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_100089918();
  v235 = *(v236 - 8);
  v74 = *(v235 + 64);
  v75 = __chkstk_darwin(v236);
  v256 = &v206 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v234 = (&v206 - v78);
  __chkstk_darwin(v77);
  v80 = &v206 - v79;
  v81 = sub_1000899D8();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  __chkstk_darwin(v81);
  v85 = &v206 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100008DC0(&qword_1000A5A08, &qword_10008C9E8);
  v87 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86 - 8);
  v90 = (&v206 - v89);
  if (v88)
  {
    v270 = v88;

    v91 = v257;
LABEL_3:
    v92 = v245;
    sub_1000898F8();
    v93 = v253;
    v94 = sub_100008E78(v253, 1, v92);
    v95 = v244;
    v258 = a10;
    if (v94 == 1)
    {
      sub_100017954(v93, &qword_1000A6230, &unk_10008D5C0);
      v96 = v266;
    }

    else
    {
      v103 = v221;
      (*(v244 + 32))(v221, v93, v92);
      v104 = v95;
      v253 = sub_100089FB8();
      v106 = v105;
      v245 = sub_100089FA8();
      v108 = v107;
      v243 = sub_100089FC8();
      v109 = [a10 locale];
      v110 = v222;
      sub_100088A48();

      sub_100088A08();
      v112 = v111;
      (*(v237 + 8))(v110, v267);
      v205._countAndFlagsBits = v112;
      v272._countAndFlagsBits = v271;
      v113 = v269;
      v272._object = v270;
      v275._countAndFlagsBits = v253;
      v275._object = v106;
      v278.value._countAndFlagsBits = v245;
      v253 = v108;
      v278.value._object = v108;
      v114._rawValue = v243;
      sub_1000895F8(v272, v275, v278, v114, v205);
      v269 = v113;
      if (v113)
      {
        (*(v104 + 8))(v103, v92);
      }

      (*(v104 + 8))(v103, v92);

      v96 = v266;
      v91 = v257;
    }

    v128 = v267;
    v129 = v235;
    v130 = v235 + 16;
    v131 = *(v235 + 16);
    v132 = v234;
    v133 = v236;
    v131(v234, v247, v236);
    v134 = *(v129 + 88);
    v230 = v129 + 88;
    v229 = v134;
    if (v134(v132, v133) == enum case for TypeDefinition.entity(_:))
    {
      v227 = v131;
      v228 = v130;
      v135 = v269;
      (*(v129 + 96))(v132, v133);
      (*(v232 + 32))(v231, v132, v233);
      result = sub_100089A18();
      v241 = *(result + 16);
      if (v241)
      {
        v136 = 0;
        v244 = result + ((*(v254 + 80) + 32) & ~*(v254 + 80));
        LODWORD(v243) = a11;
        v242 = v254 + 16;
        v234 = (v219 + 8);
        v238 = (v237 + 8);
        v245 = (v254 + 8);
        v137 = v246;
        v138 = v255;
        v253 = result;
        while (1)
        {
          if (v136 >= *(result + 16))
          {
            goto LABEL_79;
          }

          (*(v254 + 16))(v137, v244 + *(v254 + 72) * v136, v138);
          if ((v243 & 1) == 0)
          {
            sub_100089F28();
            v139 = v239;
            sub_100089F38();
            sub_1000894F8();
            if (v135)
            {

              (*v234)(v139, v240);
              (*v245)(v246, v138);
              return (*(v232 + 8))(v231, v233);
            }

            (*v234)(v139, v240);

            v137 = v246;
          }

          v140 = sub_100089F28();
          v142 = v141;
          v143 = [v258 locale];
          v144 = v248;
          sub_100088A48();

          v145 = sub_100088A08();
          v147 = v146;
          (*v238)(v144, v128);
          v280._countAndFlagsBits = sub_100089F18();
          v149 = v148;
          v273._countAndFlagsBits = v271;
          v273._object = v270;
          v276._countAndFlagsBits = v140;
          v276._object = v142;
          v279._countAndFlagsBits = v145;
          v279._object = v147;
          v280._object = v149;
          sub_100089608(v273, v276, v279, v280);
          if (v135)
          {

            (*v245)(v137, v255);
            return (*(v232 + 8))(v231, v233);
          }

          ++v136;
          v138 = v255;
          (*v245)(v137, v255);

          v150 = v265;
          v96 = v266;
          v128 = v267;
          v151 = v256;
          result = v253;
          if (v241 == v136)
          {
            goto LABEL_26;
          }
        }
      }

      v151 = v256;
      v150 = v265;
LABEL_26:
      v269 = v135;

      (*(v232 + 8))(v231, v233);
      v91 = v257;
      v133 = v236;
      v152 = v235;
      v131 = v227;
    }

    else
    {
      (*(v129 + 8))(v132, v133);
      v152 = v129;
      v151 = v256;
      v150 = v265;
    }

    v131(v151, v247, v133);
    v153 = v229(v151, v133);
    v154 = v237;
    if (v153 == enum case for TypeDefinition.enumeration(_:))
    {
      (*(v152 + 96))(v151, v133);
      (*(v224 + 32))(v223, v151, v225);
      result = sub_100089E78();
      v248 = *(result + 16);
      if (v248)
      {
        v155 = 0;
        v245 = (result + ((*(v252 + 80) + 32) & ~*(v252 + 80)));
        v244 = v252 + 16;
        v243 = v154 + 8;
        v247 = (v252 + 8);
        v156 = v218;
        v246 = result;
        while (v155 < *(result + 16))
        {
          v157 = v251;
          v158 = *(v252 + 72);
          v253 = v155;
          (*(v252 + 16))(v150, &v245[v158 * v155], v259);
          v159 = [v258 locale];
          v160 = v249;
          sub_100088A48();

          sub_100088A08();
          v256 = v161;
          (*v243)(v160, v128);
          v255 = sub_100089F88();
          sub_100089F68();
          v162 = sub_100089E48();
          if (sub_100008E78(v91, 1, v162) == 1)
          {
            sub_100017954(v91, &qword_1000A6C60, &qword_10008D5B8);
            v254 = 0;
          }

          else
          {
            v254 = sub_100089DC8();
            (*(*(v162 - 8) + 8))(v91, v162);
          }

          sub_100089F68();
          v163 = v260;
          if (sub_100008E78(v260, 1, v162) == 1)
          {
            sub_100017954(v163, &qword_1000A6C60, &qword_10008D5B8);
            v164 = sub_100008DC0(&qword_1000A6238, &qword_10008D5D0);
            sub_100009158(v263, 1, 1, v164);
          }

          else
          {
            sub_100089E28();
            (*(*(v162 - 8) + 8))(v163, v162);
          }

          sub_100089F68();
          v165 = v261;
          if (sub_100008E78(v261, 1, v162) == 1)
          {
            sub_100017954(v165, &qword_1000A6C60, &qword_10008D5B8);
            v166 = sub_100008DC0(&qword_1000A6240, &qword_10008D5D8);
            sub_100009158(v264, 1, 1, v166);
          }

          else
          {
            sub_100089E08();
            (*(*(v162 - 8) + 8))(v165, v162);
          }

          sub_100089F68();
          v167 = v262;
          if (sub_100008E78(v262, 1, v162) == 1)
          {
            sub_100017954(v167, &qword_1000A6C60, &qword_10008D5B8);
            v168 = sub_100008DC0(&qword_1000A6248, &qword_10008D5E0);
            sub_100009158(v156, 1, 1, v168);
          }

          else
          {
            sub_100089DA8();
            (*(*(v162 - 8) + 8))(v167, v162);
          }

          sub_100089F68();
          if (sub_100008E78(v96, 1, v162) == 1)
          {
            sub_100017954(v96, &qword_1000A6C60, &qword_10008D5B8);
            v169 = sub_100089D58();
            sub_100009158(v157, 1, 1, v169);
          }

          else
          {
            sub_100089D88();
            (*(*(v162 - 8) + 8))(v96, v162);
          }

          v170 = v250;
          sub_100089F68();
          if (sub_100008E78(v170, 1, v162) == 1)
          {
            sub_100017954(v170, &qword_1000A6C60, &qword_10008D5B8);
          }

          else
          {
            sub_100089E38();
            (*(*(v162 - 8) + 8))(v170, v162);
          }

          v171 = v263;
          v172 = v264;
          v173 = v269;
          sub_100089518();
          v269 = v173;
          if (v173)
          {

            sub_100017954(v157, &qword_1000A6210, &qword_10008D598);
            sub_100017954(v156, &qword_1000A6218, &qword_10008D5A0);
            sub_100017954(v172, &qword_1000A6220, &qword_10008D5A8);
            sub_100017954(v171, &qword_1000A6228, &qword_10008D5B0);
            (*v247)(v265, v259);
            return (*(v224 + 8))(v223, v225);
          }

          v155 = (v253 + 1);

          sub_100017954(v157, &qword_1000A6210, &qword_10008D598);
          sub_100017954(v156, &qword_1000A6218, &qword_10008D5A0);
          sub_100017954(v172, &qword_1000A6220, &qword_10008D5A8);
          sub_100017954(v171, &qword_1000A6228, &qword_10008D5B0);
          v150 = v265;
          (*v247)(v265, v259);
          v96 = v266;
          v128 = v267;
          v91 = v257;
          result = v246;
          if (v248 == v155)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }

LABEL_51:

      result = (*(v224 + 8))(v223, v225);
    }

    else
    {
      result = (*(v152 + 8))(v151, v133);
    }

    v174 = v220;
    v175 = v270;
    *v220 = v271;
    v174[1] = v175;
    return result;
  }

  v209 = v80;
  v210 = v85;
  v206 = v82;
  v207 = v73;
  v271 = v70;
  v211 = v69;
  v208 = v66;
  v97 = *(v227 + 4);
  if (v228)
  {
    v98 = enum case for ContainerDefinition.ContainerType.framework(_:);
    v99 = sub_100089BE8();
    (*(*(v99 - 8) + 104))(v90, v98, v99);
    v100 = v90;
    v101 = 0;
    v102 = v99;
  }

  else
  {
    v102 = sub_100089BE8();
    v100 = v90;
    v101 = 1;
  }

  sub_100009158(v100, v101, 1, v102);
  v116 = v269;
  v117 = v271;
  v118 = v226;
  v119 = v81;
  sub_100004B0C(v229, v230, v90, v270);
  result = sub_100017954(v90, &qword_1000A5A08, &qword_10008C9E8);
  if (!v116)
  {
    v120 = v247;
    v271 = sub_100089678();
    v270 = v121;
    v122 = v235;
    v123 = v209;
    v124 = v236;
    (*(v235 + 16))(v209, v120, v236);
    if ((*(v122 + 88))(v123, v124) == enum case for TypeDefinition.query(_:))
    {
      (*(v122 + 96))(v123, v124);
      v125 = v123;
      v126 = v206;
      (*(v206 + 32))(v210, v125, v119);
      v127 = v207;
      sub_1000899C8();
      sub_100089578();
      (*(v118 + 8))(v127, v117);
      (*(v126 + 8))(v210, v119);
    }

    else
    {
      (*(v122 + 8))(v123, v124);
    }

    result = sub_1000898E8();
    v176 = result;
    v177 = 0;
    v178 = *(result + 16);
    v179 = v243;
    v269 = v243 + 16;
    v180 = (v243 + 8);
    v181 = v208;
    while (v178 != v177)
    {
      if (v177 >= *(v176 + 16))
      {
        goto LABEL_80;
      }

      v182 = v211;
      (*(v179 + 16))(v211, v176 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v177, v181);
      sub_100089588();
      ++v177;
      result = (*v180)(v182, v181);
      v179 = v243;
    }

    result = sub_100089908();
    v183 = result;
    v184 = 0;
    v229 = *(result + 16);
    v185 = v214;
    v228 = v214 + 16;
    v211 = (v212 + 104);
    LODWORD(v210) = enum case for CoercionDefinition.Direction.export(_:);
    v212 += 8;
    v227 = (v214 + 8);
    v243 = v242 + 16;
    v269 = 0;
    v91 = v257;
    v186 = v241;
    v187 = v217;
    v188 = v238;
    v189 = v216;
    v190 = v215;
    v226 = result;
    v209 = (v242 + 8);
    while (1)
    {
      if (v184 == v229)
      {

        goto LABEL_3;
      }

      if (v184 >= *(v183 + 16))
      {
        goto LABEL_82;
      }

      v191 = v183 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
      v192 = *(v185 + 72);
      v230 = v184;
      (*(v185 + 16))(v189, v191 + v192 * v184, v187);
      v193 = v269;
      sub_1000894C8();
      if (v193)
      {
        break;
      }

      sub_100089B28();
      v194 = v213;
      (*v211)(v188, v210, v213);
      LODWORD(v269) = sub_100089B08();
      v195 = *v212;
      (*v212)(v188, v194);
      v195(v190, v194);
      if (v269)
      {
        result = sub_100089AF8();
        v196 = result;
        v197 = 0;
        v198 = *(result + 16);
        v183 = v226;
        while (v198 != v197)
        {
          if (v197 >= *(v196 + 16))
          {
            goto LABEL_81;
          }

          v199 = v242;
          (*(v242 + 16))(v258, v196 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v197, v186);
          v200 = sub_100088F38();
          v201 = v186;
          v203 = v202;
          (*(v199 + 8))(v258, v201);
          v274._countAndFlagsBits = v271;
          v274._object = v270;
          v277._countAndFlagsBits = v200;
          v277._object = v203;
          sub_100089508(v274, v277);

          ++v197;
          v186 = v241;
          v188 = v238;
        }

        v91 = v257;
      }

      else
      {
        v183 = v226;
      }

      v269 = 0;
      v204 = v230 + 1;
      v189 = v216;
      v187 = v217;
      result = (*v227)(v216, v217);
      v184 = v204;
      v190 = v215;
      v185 = v214;
    }

    (*v227)(v189, v187);
  }

  return result;
}

uint64_t sub_10001751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000899A8();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 24);
  (*(v19 + 16))(v17, a2);
  sub_10001C1C4(0, 0, v17);
  sub_10001779C(a3, v13);

  return sub_10001C270(a4, a5, v13);
}

void *sub_100017674()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1000176A4()
{
  sub_100017674();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100017740(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001779C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017864()
{
  v1 = sub_1000899A8();
  sub_100017A0C(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_100017A0C(v6);
  v8 = v7;
  v10 = v9;
  v11 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v0 + 16);
  v13 = (v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_10001751C(v12, v0 + v3, v0 + v11, v14, v15);
}

uint64_t sub_100017954(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008DC0(a2, a3);
  sub_100017A1C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000179C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_10001508C(a1, *(v2 + 24), *(v2 + 40), a2);
}

uint64_t sub_100017A2C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B380(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return sub_10005E694();
}

uint64_t sub_100017A9C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B360();
  os_unfair_lock_unlock(v1 + 6);
}

void sub_100017B14(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10005FF5C();
    swift_unknownObjectRetain();
    sub_10008A878();
    sub_10005FCB8();
    sub_100011D84(v4, v5, v6);
    sub_10005C60C();
    sub_10005FCB8();
    sub_10005B4C0(v7, v8, v9);
    sub_10005EDA0();
    sub_10008A428();
    v3 = v25;
    v10 = v26;
    v11 = v27;
    v12 = v28;
  }

  else
  {
    v13 = *(a1 + 32);
    sub_10005EB04();
    v10 = v3 + 56;
    v14 = *(v3 + 56);
    v11 = ~v15;
    sub_10005E054();
    v12 = v16 & v17;
  }

  while (v3 < 0)
  {
    if (!sub_10008A8A8() || (sub_100011D84(0, &qword_1000A6540, WFResource_ptr), sub_10005ED24(), swift_dynamicCast(), (v21 = v24) == 0))
    {
LABEL_18:
      sub_10005DC4C();
      sub_100011E9C();
      return;
    }

LABEL_13:
    v22 = *a2;
    objc_opt_self();
    sub_10005E028();
    if (swift_dynamicCastObjCClass())
    {
      sub_10008A308();
      sub_100060E6C();
      if (v23)
      {
        sub_10008A348();
      }

      sub_10005ECCC();
      sub_10008A368();
    }

    else
    {
    }
  }

  sub_100060EDC();
  if (v12)
  {
LABEL_9:
    sub_10005D470();
    v21 = sub_1000607C8(v20);
    if (!v21)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v18;
    if (*(v10 + 8 * v19))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}