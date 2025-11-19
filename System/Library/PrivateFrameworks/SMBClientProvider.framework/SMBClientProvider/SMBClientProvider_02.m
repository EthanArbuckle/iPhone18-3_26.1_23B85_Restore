void sub_1000513A0(uint64_t a1)
{
  [sub_10002AC0C(a1) UTF8String];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10005142C(uint64_t a1)
{
  [sub_10002AC0C(a1) UTF8String];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000514B8()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "getAttr: server: %@ share:%@, checkServerConnection error: %d", v7);
}

void sub_100051508(uint64_t a1)
{
  v1 = [sub_10002A9EC(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10005159C()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIOpen: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000515EC()
{
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051664()
{
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000516DC(uint64_t a1)
{
  v1 = [sub_10002AAE0(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100051770()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIClose: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000517C0()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "LIClose: np: %@, file not open for file handle %@", v5);
}

void sub_10005180C()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051884()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000518FC()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIReclaim: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_10005198C()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIReadDir: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000519DC()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIReadDir: Called on a non-directory node: %s", v4);
}

void sub_100051A28(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  sub_10002AD00(a1, a3, *a2, 4.8151e-34);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "LIReadDir: Unable to get a dirEnumerator from dnp: %s, error: %d", v5, 0x12u);
}

void sub_100051B04(uint64_t a1)
{
  sub_10002AD5C(a1, __stack_chk_guard);
  sub_10002AAF4();
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100051B80()
{
  sub_10002AB30();
  v2 = [sub_10002AA00(v1) name];
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_10002AB08();
  sub_10002ABC0();
  sub_100004248();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_100051C34()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIReadDirAndAttrs: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100051C84()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIReadDirAndAttrs: Called on a non-directory node: %@", v4);
}

void sub_100051CD0()
{
  sub_10002ACB4();
  sub_10002AD00(v2, v3, *v1, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "LIReadDirAndAttrs: Unable to get a dirEnumerator from dnp: %@, error: %d", v4, 0x12u);
}

void sub_100051D28()
{
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051DA0()
{
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100051E18(uint64_t a1)
{
  sub_10002AD5C(a1, __stack_chk_guard);
  sub_10002AAF4();
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100051E94()
{
  sub_10002AB30();
  v2 = [sub_10002AA00(v1) name];
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_10002AB08();
  sub_10002ABC0();
  sub_100004248();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_100051F48()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LICreate: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100051F98()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "LICreate: dnp: %@, file: %@ already exists", v5);
}

void sub_1000520A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [sub_10002AB14(a1) name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100052148(uint64_t a1)
{
  [sub_10002AAE0(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AC54();
  sub_10002A970();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000521DC()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100052278()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100052314()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000523B0()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIMakeDir: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100052400()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "LIMakeDir: dnp: %@, directory: %@ already exists\n", v5);
}

void sub_10005250C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [sub_10002AB14(a1) name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000525B0(uint64_t a1)
{
  [sub_10002AAE0(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AC54();
  sub_10002A970();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100052644()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000526E0()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10005277C()
{
  sub_10002AB30();
  [sub_10002AB14(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10005281C()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIGetFsAttr: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_10005286C()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIMakeSymLink: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000528BC()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "LIMakeSymLink: dnp: %@, node: %@ already exists\n", v5);
}

void sub_100052A0C()
{
  sub_10002AB30();
  [sub_10002AB24(*(v1 + 80)) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100052AB0(uint64_t a1)
{
  [sub_10002AAE0(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AC54();
  sub_10002A970();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100052B44()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100052BE0()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100052C7C()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100052D5C()
{
  sub_10002AB30();
  v2 = [v1 serverName];
  v3 = [v0 shareName];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100052E0C()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIRead: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100052E5C()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIRead: fileRef with nil fidCtx, np: %s\n", v4);
}

void sub_100052EA8()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIRead: No fileRef found for FREAD, np: %@\n", v4);
}

void sub_100052EF4()
{
  sub_10002AB30();
  v2 = [*(v1 + 32) name];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v7 = *(v0[13] + 24);
  sub_10002AB08();
  sub_10002AB6C();
  sub_100002178();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x40u);
}

void sub_10005302C()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000530A4()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIReadLink: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000530F4()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC6C(&_mh_execute_header, &_os_log_default, v3, "LIReadLink: warning, np: %s does not appear to be a symlink\n", v4);
}

void sub_1000531C0(uint64_t a1)
{
  v1 = [sub_10002A9EC(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100053298()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIRemove: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000532E8()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100053360()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000533D8(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_10002AAF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100053458()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100053538()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIRemoveDir: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_10005364C(uint64_t a1)
{
  sub_10002AC60(a1, __stack_chk_guard);
  sub_10002AAF4();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000536C8()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100053838()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIRename: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100053910()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIRename: Found frm_np: %@ in node table\n", v4);
}

void sub_10005395C()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100053A5C()
{
  sub_10002AB30();
  [sub_10002AA84(v3) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD38();
  [sub_10002AB24(*(v0 + 64)) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD18();
  sub_10002AA2C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_100053B1C()
{
  sub_10002AB30();
  [sub_10002AA84(v3) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD38();
  [sub_10002AB24(*(v0 + 64)) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD18();
  sub_10002AA2C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_100053BDC()
{
  sub_10002AB30();
  [sub_10002AB14(v3) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD38();
  [sub_10002AB24(*(v0 + 72)) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD18();
  sub_10002AA2C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_100053C9C()
{
  sub_10002AB30();
  [sub_10002AB14(v3) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD38();
  [sub_10002AB24(*(v0 + 72)) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AD18();
  sub_10002AA2C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_100053D5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*a2 + 40);
  *a3 = 136315394;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = v5;
  sub_10002AC30(&_mh_execute_header, &_os_log_default, a3, "LiSetAttr: np: %s, one or more attr not allowed to be set, validmask: 0x%llx\n", a3);
}

void sub_100053DC4(uint64_t a1)
{
  v2 = [sub_10002AC0C(a1) name];
  v3 = *(a1 + 56);
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100053E68(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100053EFC()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LISetAttr: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100053F8C(uint64_t a1)
{
  v1 = [sub_10002AA84(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100054024()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIStatFS: server: %@, share: %@, checkServerConnection  error: %d", v7);
}

void sub_100054074()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000540EC()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIWrite: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_10005413C()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIWrite: fileRef with nil fidCtx, np: %s\n", v4);
}

void sub_100054188()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LIWrite: No fileRef for FWRITE, np: %@\n", v4);
}

void sub_1000541D4()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005424C()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000542C4()
{
  sub_10002AB30();
  v2 = [*(v1 + 32) name];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[13];
  v7 = *(v0[14] + 24);
  sub_10002AB08();
  sub_10002AB6C();
  sub_100002178();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x40u);
}

void sub_100054378()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIGetXattr: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100054448()
{
  sub_10002AB30();
  v3 = [sub_10002AB24(*(v2 + 72)) name];
  v4 = *(v1 + 40);
  v5 = *(*(*v0 + 8) + 24);
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100054514()
{
  sub_10002AB30();
  v2 = [sub_10002AB24(*(v1 + 72)) name];
  v3 = *(v0 + 40);
  sub_10002A8F0();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1000545BC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054634()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LISetXattr: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100054684()
{
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000546FC()
{
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100054774()
{
  sub_10002AB30();
  [sub_10002AB14(v2) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  v3 = *(v0 + 72);
  sub_10002AB08();
  sub_10002AB48();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
}

void sub_100054834()
{
  sub_10002AB30();
  [sub_10002AA00(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000548D0()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIListXattrs: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000549E4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054A5C()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LISearch: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100054AAC()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100054B24()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "LISearch: failed to create searchPath for np: %@", v4);
}

void sub_100054B70()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC9C(&_mh_execute_header, &_os_log_default, v4, "Search path for np: %@ is %@", v5);
}

void sub_100054BBC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054C78()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054D34()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054DAC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054E24()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054E9C(uint8_t *buf, int a2, int a3)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "LISearch: procSecondaryQuery cRowsTotal: %u, cResultsFound: %u", buf, 0xEu);
}

void sub_100054EF4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100054F6C(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "LISearch: searchCtx.searchRows was nil for this pass", buf, 2u);
}

void sub_10005507C()
{
  sub_100004254();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100055394()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LIAccessCheck: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000553E4()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055480()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_10005551C()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000555B8()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055654()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000556F0()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_10005578C()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055828()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000558C4()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055960()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000559FC()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055A98()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055B34()
{
  sub_10002ABB4();
  [sub_10002A9EC(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABA8();
  sub_10002A92C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055BD0(uint64_t a1)
{
  v1 = [sub_10002AB24(*(a1 + 40)) name];
  sub_10002AA14();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100055CB0()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "setUpdateInterest: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100055D00(uint64_t a1)
{
  sub_10002AC60(a1, __stack_chk_guard);
  sub_10002A988();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100055D8C(uint64_t a1)
{
  sub_10002AC60(a1, __stack_chk_guard);
  sub_10002AACC();
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100055E10(uint64_t a1)
{
  sub_10002AC60(a1, __stack_chk_guard);
  sub_10002A988();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100055E9C(uint64_t a1)
{
  v1 = *(*(*(sub_10002AC60(a1, __stack_chk_guard) + 48) + 8) + 40);
  sub_10002ABC0();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100055F34(uint64_t a1)
{
  sub_10002AC60(a1, __stack_chk_guard);
  sub_10002A988();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100055FC0(uint64_t a1)
{
  sub_10002AC60(a1, __stack_chk_guard);
  sub_10002AACC();
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100056044(int *a1, id *a2)
{
  v3 = *a1;
  [*a2 serverName];
  objc_claimAutoreleasedReturnValue();
  v9 = [sub_10002AD44() shareName];
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100056110()
{
  sub_100004254();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056188(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100056208(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_100008EF4();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100056284(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100056410()
{
  sub_100004254();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056488()
{
  sub_10002AB30();
  [*v0 openFileCounter];
  [sub_10002ACDC() pendingChangeNotifyCount];
  sub_10002AB48();
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10005653C()
{
  sub_10002AA74();
  sub_10002A9A0(v2, v3, v4, v5, 1.5048e-36);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "reconnectSession: reconnect canceled by state: %u on server: %@, share: %@ \n", v7);
}

void sub_10005658C()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: Starting reconnect on server: %@, share: %@", v6);
}

void sub_1000565DC()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: disconnecting, unable to obtain credentials on server: %@, share: %@ \n", v6);
}

void sub_10005662C()
{
  sub_10002AA74();
  sub_10002A9A0(v2, v3, v4, v5, 1.5048e-36);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "reconnectSession: session reconnected, passes: %u on server: %@, share: %@ \n", v7);
}

void sub_10005667C()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC9C(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: Preparing fileRefs for reconnect on server: %@, share: %@ \n", v6);
}

void sub_1000566CC()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC9C(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: Reopening fileRefs on server: %@, share: %@ \n", v6);
}

void sub_10005671C()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: lost connection during reconnect, flush and starting new reconnect cycle on server: %@, share: %@ ", v6);
}

void sub_10005676C()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: Reconnect succeeded, resuming new session on server: %@, share: %@ ", v6);
}

void sub_1000567BC()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: no memory for modelName and/or tmpFSName on server: %@, share: %@ \n", v6);
}

void sub_10005680C()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "reconnectSession: SMBPiston init failed on server: %@, share: %@ \n", v6);
}

void sub_10005685C()
{
  sub_10002AA74();
  sub_10002A9A0(v2, v3, v4, v5, 1.5048e-36);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "reconnectSession: reconnect cycle failed, now disconnecting state: %u on server: %@, share: %@ \n", v7);
}

void sub_1000568AC()
{
  sub_10002AA74();
  sub_10002A9A0(v2, v3, v4, v5, 1.5048e-36);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "reconnectSession: reconnect failed with error: %d, ejecting server: %@, share: %@ \n", v7);
}

void sub_1000568FC(uint64_t *a1, id *a2)
{
  v3 = [sub_10002AB24(*a1) name];
  v4 = v3;
  [v3 UTF8String];
  v5 = [*a2 serverName];
  v6 = [*a2 shareName];
  sub_10002AB3C();
  sub_100002178();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_1000569F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) serverName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10002AC90() shareName];
  sub_10002AB3C();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100056AC4()
{
  sub_10002AB30();
  v2 = *(v1 + 32);
  [*(v1 + 40) serverName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10002AC48() shareName];
  sub_10002AB3C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
}

void sub_100056BE8()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC9C(&_mh_execute_header, &_os_log_default, v5, "flushAndDisconnect: starting. server: %@ share: %@ \n", v6);
}

void sub_100056C38()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "flushAndDisconnect: ejecting server: %@ share: %@", v6);
}

void sub_100056C88()
{
  sub_10002AB30();
  *v2 = 138412802;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  *(v2 + 22) = 2112;
  *(v2 + 24) = v5;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "flushAndDisconnect: server: %@ share:%@ ejectVolumeForURL returned error %@", v6, 0x20u);
}

void sub_100056CFC()
{
  sub_10002AA74();
  sub_10002A914(v2, v3, v4, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "flushAndDisconnect: resume idle timer on server: %@ share: %@", v6);
}

void sub_100056DD4()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC48() name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100056E80(uint64_t a1)
{
  [sub_10002AC0C(a1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC90() name];
  sub_10002A9C0();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100056F24()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC48() name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100056FD0(uint64_t a1)
{
  [sub_10002AC0C(a1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC90() name];
  sub_10002A9C0();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100057074()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC48() name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100057120(uint64_t a1)
{
  [sub_10002AC0C(a1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC90() name];
  sub_10002A9C0();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000571C4()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC48() name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100057270()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC48() name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10005731C(uint64_t a1)
{
  [sub_10002AC0C(a1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC90() name];
  sub_10002A9C0();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000573C0()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC48() name];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10005746C(uint64_t a1)
{
  [sub_10002AC0C(a1) name];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AC90() name];
  sub_10002A9C0();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100057554(uint8_t *a1, uint64_t a2, void *a3)
{
  *a1 = 138412290;
  *a3 = a2;
  sub_10002AC6C(&_mh_execute_header, &_os_log_default, a3, "deliverSearchResults: Calling LISearchResult path: %@\n", a1);
}

void sub_100057738()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000577B0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057828()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000578A0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000579E4()
{
  v5 = *__error();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057A68()
{
  sub_10002AB30();
  v7 = [v1 name];
  [v0 openFileRefs];
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100057B24(void *a1, void *a2)
{
  v3 = [a1 name];
  [a2 openMode];
  sub_10003265C();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100057BC0()
{
  sub_10002AB30();
  v2 = [sub_10002AC0C(v1) name];
  v3 = **(v0 + 56);
  sub_1000325C0();
  sub_10003260C();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_100057C68(uint64_t a1)
{
  v2 = [sub_10002AC0C(a1) name];
  [*(a1 + 40) openMode];
  sub_10003265C();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100057D04(int *a1, uint8_t *buf)
{
  v2 = *a1;
  *buf = 67109120;
  *(buf + 1) = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "refreshAttrsWithCompletionHandler: clock_gettime error: %d\n", buf, 8u);
}

void sub_100057D54(uint64_t a1)
{
  sub_10003264C(a1, __stack_chk_guard);
  sub_1000325F4();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100057DCC(uint64_t a1)
{
  v1 = *(*a1 + 384);
  sub_1000325F4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100057E4C(uint64_t a1)
{
  v6 = *(*a1 + 384);
  v7 = *(*a1 + 128);
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100057EE8(uint64_t a1)
{
  sub_10003264C(a1, __stack_chk_guard);
  sub_1000325F4();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100057F60()
{
  v5 = *__error();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057FE4()
{
  sub_10002AB30();
  [sub_10002AC0C(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10003261C();
  sub_1000325C0();
  sub_10003260C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100058084()
{
  sub_10002AB30();
  [sub_10002AC0C(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10003261C();
  sub_1000325C0();
  sub_10003260C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100058124()
{
  sub_10002AB30();
  [sub_10002AC0C(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10003261C();
  sub_1000325C0();
  sub_10003260C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000581C4(void *a1)
{
  v1 = [a1 name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058254(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "prepareForReclaimSync: np: %@, closing all fileRefs...", buf, 0xCu);
}

void sub_1000582B0(void *a1)
{
  v1 = [a1 name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058340()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000583B8()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100058430(void *a1)
{
  v1 = [a1 name];
  [v1 UTF8String];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000584C8(uint64_t a1)
{
  [sub_10002ACE8(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_1000325C0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100058560(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000585F0(uint64_t a1)
{
  [sub_10002ACE8(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_1000325C0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100058688(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058718(uint64_t a1)
{
  [sub_10002ACE8(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_1000325C0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000587B0(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058840(uint64_t a1)
{
  [sub_10002ACE8(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_1000325C0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000588D8(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058968(uint64_t a1)
{
  [sub_10002ACE8(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_1000325C0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100058A00(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058A90(uint64_t a1)
{
  [sub_10002ACE8(a1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_1000325C0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100058B28(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) name];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100058BB8(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 1024;
  *(v3 + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "reopenFileRef: fileRef for np: %@, openFileNode error: %d", v6, 0x12u);
}

void sub_100058C1C(void *a1, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = "[smbNode addChangeNotify:NotifyHandler:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: np: %@ fileRef alloc failed \n", buf, 0x16u);
}

void sub_100058C8C(id *a1)
{
  v1 = [*a1 name];
  sub_1000325D4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100058D30(uint64_t a1)
{
  v1 = [*(a1 + 32) name];
  sub_1000325D4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100058DD4(uint64_t a1)
{
  v1 = [*(a1 + 32) name];
  sub_1000325D4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100058E78(void *a1)
{
  v6 = [a1 name];
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100058F20(uint64_t a1)
{
  v1 = [*(a1 + 32) name];
  sub_1000325D4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100058FC4()
{
  sub_10002AB30();
  [*(v1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_10003261C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_100059090(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  *v3 = 136315650;
  sub_10003262C(v4, v3, v5);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: np: %@ setChangeNotify error: %d \n", v6, 0x1Cu);
}

void sub_1000590F0(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  *v3 = 136315650;
  sub_10003262C(v4, v3, v5);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: np: %@ sendClose error: %d\n", v6, 0x1Cu);
}

void sub_100059150(void *a1)
{
  v1 = [a1 name];
  [v1 UTF8String];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000591E8(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "getServerAddressStr: getnameinfo error: %d\n", v1, 8u);
}

void sub_100059334()
{
  sub_100036880();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005942C()
{
  sub_100036880();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000594A4()
{
  sub_100036880();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005951C()
{
  sub_100036868();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059594()
{
  sub_100036868();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005960C(int *a1)
{
  v6 = *a1;
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100059698()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100059710()
{
  sub_10002B860();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10005979C()
{
  sub_10002B860();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059820()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100059914()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000599D0()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100059A48()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100059AC0(uint64_t *a1)
{
  v6 = *a1;
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100059B54()
{
  sub_10002B860();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059BD8()
{
  sub_10002B860();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059C5C()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059CE8()
{
  sub_100036868();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059D60()
{
  sub_100036868();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059DD8()
{
  sub_100036868();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_10002AB08();
  v5 = 2112;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "reconstituteWithService: calling internalAddShare for share: %@, url: %@", v4, 0x16u);
}

void sub_100059EDC()
{
  sub_100036868();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100059F5C()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005A050()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005A0C8()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005A250(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  sub_100045B8C(v1, v2);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A2CC(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  v2 = *(v1 + 24);
  v4 = *(v3 + 16);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005A34C(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  v2 = *(v1 + 24);
  v4 = *(v3 + 16);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_10005A3CC(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  sub_100045B8C(v1, v2);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A448(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  sub_100045B8C(v1, v2);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A4C4(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  sub_100045B8C(v1, v2);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A540(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 24);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A5BC(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 24);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A638(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 12);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A6B4(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 12);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A730(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 84);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005A8F8(uint64_t a1)
{
  v6 = **(a1 + 32);
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10005A998(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005AA10(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005AA88(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005AB44()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005ABBC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005AC34(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005ACB0(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005AD2C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005ADA8(uint64_t a1)
{
  v1 = *(*a1 + 24);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005AE28()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "queryDirOneAttr: Failed to build path for dnp: %s", v4);
}

void sub_10005AEB8(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005AF74(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005AFEC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005B064()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005B0DC(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005B158(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005B218(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005B294()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "queryNodeAttr: Failed to build path for np: %@", v4);
}

void sub_10005B2E0()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "queryNodeAttr: No memory for SMBFileAllInformation, np: %@", v4);
}

void sub_10005B32C(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005B3A4(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005B41C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005B494()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005B50C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005B588(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005B604(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005B680(void *a1)
{
  v1 = [a1 name];
  [v1 UTF8String];
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005B718(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 52);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005B794(void *a1)
{
  v1 = [a1 name];
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005B824(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *(v1 + 52);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005B8A0()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "createFile: Failed to build path for dnp: %@, name: %@", v5);
}

void sub_10005B8EC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005B964(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005B9DC(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005BA98()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005BB10()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005BB88(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005BC04(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  v2 = *(v1 + 12);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005BC80(uint64_t a1, unsigned int **a2)
{
  v4 = [*(a1 + 48) name];
  v5 = *(a1 + 56);
  v6 = **a2;
  sub_100045A20();
  sub_100045AB0();
  sub_100002178();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x22u);
}

void sub_10005BD38()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  sub_10002AB08();
  sub_100045A54();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10005BDE0(void *a1)
{
  v1 = [a1 name];
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005BE70()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005BEE8(uint64_t a1)
{
  v1 = [sub_10002AC0C(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10005BF7C(uint64_t a1)
{
  v1 = [sub_10002AC0C(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10005C010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100045AC0(a1, a2, a3, 4.8151e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "createReparseSymlink: Failed to build path for dnp: %s, name: %s", v6);
}

void sub_10005C0E8(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C160(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C1D8(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C250()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005C2C8()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005C340(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005C3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 40) name];
  v7 = *(a1 + 48);
  v8 = *(*(*a2 + 8) + 24);
  v9 = *(*a3 + 12);
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v10, v11, v12, v13, v14, 0x22u);
}

void sub_10005C49C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005C518(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C590(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C64C()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  sub_10002AB08();
  sub_100045A54();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10005C6F4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005C76C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005C7E8()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "createWindowsSymlink: Failed to build path for dnp: %@, name: %@", v5);
}

void sub_10005C834(unsigned int *a1)
{
  v1 = *a1;
  sub_100004270();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005C8B0(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C928(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005C9E4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005CA5C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005CAD4(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005CB50(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 24);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005CBCC(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005CC48(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005CCC4(void *a1)
{
  v7 = [a1 name];
  [a1 np_flag];
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10005CD70()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "readReparseSymlink: Failed to build path for np: %s\n", v4);
}

void sub_10005CDBC()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "readReparseSymlink: No memory to read reparse node np: %@", v4);
}

void sub_10005CE08(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005CE80(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005CEF8(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005CF70()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005CFE8()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005D060(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005D0DC(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005D158(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005D1D4()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "readWindowsSymlink: Failed to build path for np: %s", v4);
}

void sub_10005D264(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005D2DC(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005D354(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005D3CC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005D444()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005D4BC(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005D538(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 24);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005D5B4(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005D630()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005D6A8(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  v2 = *(v1 + 28);
  sub_100045B58();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005D724()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "smbCheckForWindowsSymlink: Failed to build path for np: %s", v4);
}

void sub_10005D7B4(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005D82C(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005D8A4(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005D91C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005D994()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005DA0C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005DA88(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 24);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005DB04(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005DB80(uint64_t *a1)
{
  sub_100045AA4(a1, __stack_chk_guard);
  v2 = *(v1 + 28);
  sub_100045B58();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005DBFC()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "listNodeStreams: Failed to build path for np: %s", v4);
}

void sub_10005DC48(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005DCC0(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005DD38(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005DDB0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005DE28()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005DEA0(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005DF1C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005DF98(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005E014()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "queryNodeStream: Failed to build path for np: %s\n", v4);
}

void sub_10005E060(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005E0D8(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005E150(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005E1C8()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005E240()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005E2B8(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005E334(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 12);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005E3B0(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005E42C(void *a1)
{
  v1 = [a1 name];
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005E4BC()
{
  sub_10002AB30();
  [sub_10002AC84(v2) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  v3 = *(*(v0 + 64) + 52);
  sub_100045A20();
  sub_100045AB0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
}

void sub_10005E564()
{
  sub_10002AB30();
  [sub_10002AC84(v2) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  v3 = **(v0 + 56);
  sub_100045A20();
  sub_100045AB0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
}

void sub_10005E60C(uint64_t a1)
{
  [*(a1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B98();
  sub_10002AB08();
  sub_100045B0C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x32u);
}

void sub_10005E6A8()
{
  sub_10002AB30();
  [*(v1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B74();
  sub_10002AB08();
  sub_100045AD8();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x32u);
}

void sub_10005E74C()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "readNodeStreamCompound: Failed to build path for np: %s\n", v4);
}

void sub_10005E798(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005E810(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005E888(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005E900()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005E978()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005E9F0(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 24);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005EA6C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005EAE8(id *a1)
{
  [*a1 length];
  sub_10002AB08();
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10005EB80(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005EBFC(void *a1)
{
  v1 = [a1 name];
  [v1 UTF8String];
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005EC94()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005ED0C()
{
  sub_10002AB30();
  [sub_10002AC84(v2) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  v3 = *(*(v0 + 64) + 52);
  sub_100045A20();
  sub_100045AB0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
}

void sub_10005EDB4()
{
  sub_10002AB30();
  [sub_10002AC84(v2) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  v3 = **(v0 + 56);
  sub_100045A20();
  sub_100045AB0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
}

void sub_10005EE5C(uint64_t a1)
{
  [*(a1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B98();
  sub_10002AB08();
  sub_100045B0C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x32u);
}

void sub_10005EEF8()
{
  sub_10002AB30();
  [*(v1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B74();
  sub_10002AB08();
  sub_100045AD8();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x32u);
}

void sub_10005EF9C()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "writeNodeStreamCompound: Failed to build path for np: %s\n", v4);
}

void sub_10005EFE8(unsigned int *a1)
{
  v1 = *a1;
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005F064(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005F0DC(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005F154(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005F1CC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F244()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F2BC(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 24);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005F338(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005F3B4(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005F430()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "deleteNodeStream: Failed to build path for np: %s\n", v4);
}

void sub_10005F47C(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005F4F4(id *a1, uint64_t *a2, uint64_t a3)
{
  v5 = [*a1 name];
  v6 = *a2;
  v7 = *(*(*a3 + 8) + 24);
  sub_100045A20();
  sub_100002178();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x1Cu);
}

void sub_10005F5AC(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005F624()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F69C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F714(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 84);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005F790(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005F80C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005F888(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005F904(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005F980(uint64_t a1)
{
  sub_100045B4C(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_10005F9FC(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005FA74(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005FAEC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FB64()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FC20()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "setNodeBasicInfo: Failed to build path for np: %s\n", v4);
}

void sub_10005FC6C(uint64_t a1, uint64_t *a2)
{
  v3 = [sub_10002AC0C(a1) name];
  sub_100045A98(*a2);
  sub_100045A80();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10005FD08(uint64_t a1, uint64_t *a2)
{
  v3 = [sub_10002AC0C(a1) name];
  sub_100045A98(*a2);
  sub_100045A80();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10005FDA4(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005FE1C(uint64_t a1)
{
  v1 = [sub_10002AC0C(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10005FEB0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FF28(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005FFA4(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 84);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060020(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10006009C()
{
  sub_10002AD50();
  sub_10002AB54(v1, v2, 4.8149e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "setNodeEOF: Failed to build path for np: %s", v4);
}

void sub_1000600E8(uint64_t a1, uint64_t *a2)
{
  v3 = [sub_10002AC0C(a1) name];
  sub_100045A98(*a2);
  sub_100045A80();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100060184(uint64_t a1, uint64_t *a2)
{
  v3 = [sub_10002AC0C(a1) name];
  sub_100045A98(*a2);
  sub_100045A80();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100060220(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100060298(uint64_t a1)
{
  v1 = [sub_10002AC0C(a1) name];
  sub_10002AA14();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10006032C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000603A4(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060420(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 84);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10006049C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060518()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "deleteNameInParent: dnp: %@, name: %@, failed to build a path", v5);
}

void sub_100060564()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045A68();
  sub_100045A20();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100060604()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045A68();
  sub_100045A20();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000606A4(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006071C()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045B40();
  sub_10002AB08();
  sub_100045A54();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000607C4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006083C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1000608B8(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 84);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060934(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1000609B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100045AC0(a1, a2, a3, 4.8151e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "renameFile: Failed to build rename path for new_dnp: %s, newName: %s\n", v6);
}

void sub_100060A00()
{
  sub_10002ACB4();
  sub_10002A914(v1, v2, v3, 5.778e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v4, "renameFile: Failed to build path for dnp: %@, name: %@", v5);
}

void sub_100060A4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100045AC0(a1, a2, a3, 4.8151e-34);
  sub_10002AC30(&_mh_execute_header, &_os_log_default, v5, "renameFile: Failed to build rename path for dnp: %s, newName: %s\n", v6);
}

void sub_100060A9C()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045A68();
  sub_100045A20();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100060B3C()
{
  sub_10002AB30();
  [sub_10002AC84(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_100045A68();
  sub_100045A20();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100060BDC(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100060C54(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100060CEC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100060D64(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060DE0(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 84);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060E5C(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100060ED8()
{
  sub_10002ACF4();
  sub_10002AB54(v1, v2, 5.7779e-34);
  sub_10002AC18(&_mh_execute_header, &_os_log_default, v3, "queryMaxAccess: Failed to build path for np: %@\n", v4);
}

void sub_100060F24(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100060F9C(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100061014()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006108C(uint64_t a1)
{
  sub_100045A40(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100061104(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 52);
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100061180(uint64_t a1, uint64_t *a2)
{
  sub_100045A08(a1, a2, __stack_chk_guard);
  v3 = *v2;
  sub_1000459F0();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10006185C()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061914()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061A80()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061B38()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061C2C()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061CE4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061D98(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100061E8C(void *a1)
{
  [a1 negotiated_max_xmit_frag];
  [a1 negotiated_max_recv_frag];
  sub_100047A94();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100061FE0(void *a1)
{
  [a1 sec_addr];
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006209C()
{
  sub_100004254();
  sub_100047A94();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000621D0()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006224C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000622C4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006233C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000623B4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006242C(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "rpc_bind_interface: bind_ack p_result_list[%u]: ctx_uuid accepted not 32-bit NDR\n", buf, 8u);
}

void sub_1000624B4(void *a1)
{
  [a1 in_fbtbd];
  sub_100004254();
  sub_100047A94();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_100062588(void *a1)
{
  [a1 in_finger];
  [a1 in_len];
  sub_100047A94();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100062628()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000626A4(uint64_t a1, void *a2)
{
  [a2 in_len];
  sub_100047A94();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100062778(void *a1)
{
  [a1 in_len];
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000628E4(unsigned int *a1)
{
  v1 = *a1;
  sub_100004270();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100062960(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = *(*a2 + 56);
  sub_100004270();
  sub_100047A94();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1000629F0(uint64_t a1)
{
  v1 = *(*a1 + 60);
  sub_100004270();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100062B80()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100062BFC()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100062C78()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100062CF4()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100062D70()
{
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100062E30(void *a1, unsigned int *a2)
{
  [a1 call_id_counter];
  v3 = *a2;
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100062ECC(uint8_t *buf, unsigned __int8 a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "set_input_fragment: Unexpected rpc pdu_type in stream, pdu_type: %u\n", buf, 8u);
}

void sub_100062FA4(void *a1, unsigned __int16 *a2)
{
  [a1 context_id];
  v8 = *a2;
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
}

void sub_100063084(uint8_t *buf, _DWORD *a2)
{
  *buf = 67109120;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "set_input_fragment: rpc_reply, decode error reading reserved1, err: %d\n", buf, 8u);
}

void sub_100063114(unsigned int *a1)
{
  v1 = *a1;
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100063190(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "ndrrec_getbytes: remain: %u, but in_lastfrag set\n", v1, 8u);
}

void sub_100063210(uint8_t *buf, int a2)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "transport_flush: flushed %u bytes to the transport", buf, 8u);
}

void sub_10006325C(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "fill_input_buf: Filled %u bytes\n", buf, 8u);
}

void sub_100063338()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000633B0(unsigned int *a1)
{
  sub_10004A8D8(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10006346C(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *buf)
{
  v4 = *(*a2 + 24);
  v5 = *(*a3 + 84);
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  *(buf + 9) = 1024;
  *(buf + 5) = v5;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "open_named_pipe: pipe: %s sendCreateFile error: %d, ntstatus: 0x%x\n", buf, 0x18u);
}

void sub_1000634DC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000636A8()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100063940(unsigned int *a1)
{
  sub_10004A8D8(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000639FC(unsigned int *a1)
{
  sub_10004A8D8(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100063B84(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100063C10()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100063C88()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100063D00()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100063D78()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100063DF0()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100063E68()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100063EE0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100063F58()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006409C(unsigned int *a1)
{
  sub_10004A8D8(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100064158(unsigned int *a1)
{
  sub_10004A8D8(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100064368()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000643E0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100064458()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000644D0()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100064548(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1000645C4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10006463C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000646B4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10006472C(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100064824(unsigned int *a1)
{
  v1 = *a1;
  sub_100004270();
  sub_10004AF44(&_mh_execute_header, &_os_log_default, v2, "u1: 0x%4x\n", v3, v4, v5, v6, v7);
}

void sub_100064898(uint64_t a1)
{
  v1 = *(a1 + 4);
  sub_100004270();
  sub_10004AF44(&_mh_execute_header, &_os_log_default, v2, "u2: 0x%2x\n", v3, v4, v5, v6, v7);
}

void sub_10006490C(uint64_t a1)
{
  v1 = *(a1 + 6);
  sub_100004270();
  sub_10004AF44(&_mh_execute_header, &_os_log_default, v2, "u3: 0x%2x\n", v3, v4, v5, v6, v7);
}

void sub_100064980(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x32u);
}

void sub_100065344(uint8_t *buf, unsigned __int8 *a2, _DWORD *a3)
{
  v3 = *a2;
  *buf = 67109120;
  *a3 = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%02x ", buf, 8u);
}

void sub_1000653D8(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100065498(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100065514(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100065618(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "getShareArrayFromContainer: Skipping STYPE: 0x%x\n", buf, 8u);
}

void sub_100065664(uint8_t *buf, uint64_t *a2, void *a3)
{
  v3 = *a2;
  *buf = 136315138;
  *a3 = v3;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Adding DISK Share: %s\n", buf, 0xCu);
}

void sub_1000656B4(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "getShareArrayFromContainer: Share at index %u has NULL share_netname, skipping\n", buf, 8u);
}