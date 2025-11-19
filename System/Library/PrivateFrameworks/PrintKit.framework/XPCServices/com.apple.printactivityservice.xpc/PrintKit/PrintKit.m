void sub_100001968(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  v5 = @"com.apple.printcenter.unknown";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v9 = [*(a1 + 32) topLevelTemporaryDirectoryURL];
  v7 = [v9 URLByAppendingPathComponent:v6 isDirectory:1];

  v8 = qword_100014C20;
  qword_100014C20 = v7;
}

id sub_100001A24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [qword_100014C20 path];
  [v2 configureFileProtectionAtPath:v3];

  [*(a1 + 32) configureBackupFlagAtURL:qword_100014C20];
  v4 = *(a1 + 32);
  v5 = qword_100014C20;

  return [v4 markDirectoryAsPurgeableAtURL:v5];
}

id sub_100001FCC(uint64_t a1)
{
  [*(a1 + 32) configureTemporaryDirectoryProtectionIfNecessary];
  v2 = *(a1 + 32);

  return [v2 configureBackupFlagIfNecessary];
}

void sub_1000021B4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeItemAtURL:*(*(&v7 + 1) + 8 * v6) error:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

uint64_t sub_100002C70@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100002CB8(uint64_t a1)
{
  v2 = sub_100002ED0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002CF4(uint64_t a1)
{
  v2 = sub_100002ED0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002D30(void *a1)
{
  v2 = sub_100002E44(&qword_100014AE8, &qword_10000A940);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100002E8C(a1, a1[3]);
  sub_100002ED0();
  sub_1000099B0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100002E44(uint64_t *a1, uint64_t *a2)
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

void *sub_100002E8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002ED0()
{
  result = qword_100014C40;
  if (!qword_100014C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014C40);
  }

  return result;
}

uint64_t sub_100002F50(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002FCC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_100002FFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_100003054()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100003084(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_10000310C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_10000313C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_100003224()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_100003254(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t sub_1000032AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_1000032DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

unint64_t sub_100003334(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537265746E697270;
    v6 = 0x617453726F727265;
    if (a1 != 8)
    {
      v6 = 0x6567616D49626F6ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x50746E6572727563;
    if (a1 != 5)
    {
      v7 = 0x72676F7250626F6ALL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449626F6ALL;
    v2 = 0x656C746954626F6ALL;
    v3 = 0x73656761506D756ELL;
    if (a1 != 3)
    {
      v3 = 0x4E7265746E697270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1000034BC()
{
  v1 = *v0;
  sub_100009960();
  sub_100009970(v1);
  return sub_100009990();
}

Swift::Int sub_100003530()
{
  v1 = *v0;
  sub_100009960();
  sub_100009970(v1);
  return sub_100009990();
}

uint64_t sub_10000357C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000035B0(uint64_t a1)
{
  v2 = sub_1000043B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000035EC(uint64_t a1)
{
  v2 = sub_1000043B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000362C(void *a1)
{
  v3 = v1;
  v5 = sub_100002E44(&qword_100014AF0, &qword_10000A948);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27[-v8];
  v10 = a1[4];
  sub_100002E8C(a1, a1[3]);
  sub_1000043B0();
  sub_1000099B0();
  v11 = *v3;
  v27[15] = 0;
  sub_100009910();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v27[14] = 1;
  sub_1000098F0();
  v14 = v3[3];
  v15 = v3[4];
  v27[13] = 2;
  sub_1000098F0();
  v16 = v3[5];
  v27[12] = 3;
  sub_100009910();
  v17 = v3[6];
  v18 = v3[7];
  v27[11] = 4;
  sub_1000098F0();
  v19 = v3[8];
  v27[10] = 5;
  sub_100009910();
  v20 = v3[9];
  v27[9] = 6;
  sub_100009900();
  v21 = v3[10];
  v27[8] = 7;
  sub_100009910();
  v22 = v3[11];
  v23 = v3[12];
  v27[7] = 8;
  sub_1000098F0();
  v25 = v3[13];
  v26 = v3[14];
  v27[6] = 9;
  sub_1000098F0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000038AC()
{
  sub_100009970(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1000097B0();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1000097B0();
  sub_100009970(*(v0 + 40));
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1000097B0();
  sub_100009970(*(v0 + 64));
  v7 = *(v0 + 72);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  sub_100009980(*&v7);
  sub_100009970(*(v0 + 80));
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  sub_1000097B0();
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);

  return sub_1000097B0();
}

Swift::Int sub_100003950()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v17 = *(v0 + 64);
  v9 = *(v0 + 72);
  sub_100009960();
  sub_100009970(v1);
  sub_1000097B0();
  sub_1000097B0();
  sub_100009970(v6);
  sub_1000097B0();
  sub_100009970(v17);
  v10 = 0.0;
  if (v9 != 0.0)
  {
    v10 = v9;
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);
  sub_100009980(*&v10);
  sub_100009970(v11);
  sub_1000097B0();
  sub_1000097B0();
  return sub_100009990();
}

double sub_100003A74@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100004404(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_100003ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a11;
  *(a9 + 72) = a10;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  *(a9 + 112) = a14;
  return result;
}

Swift::Int sub_100003B30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 96);
  v17 = *(v0 + 104);
  v15 = *(v0 + 88);
  v16 = *(v0 + 112);
  sub_100009960();
  sub_100009970(v1);
  sub_1000097B0();
  sub_1000097B0();
  sub_100009970(v6);
  sub_1000097B0();
  sub_100009970(v9);
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = v10;
  }

  sub_100009980(*&v11);
  sub_100009970(v13);
  sub_1000097B0();
  sub_1000097B0();
  return sub_100009990();
}

uint64_t sub_100003C4C(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_10000426C(v12, v14) & 1;
}

uint64_t sub_100003CD0()
{
  v1 = sub_100009630();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  sub_100009600();
  v8 = sub_100009640();
  v10 = v9;
  v11 = objc_allocWithZone(UIImage);
  sub_100004994(v8, v10);
  isa = sub_100009650().super.isa;
  v13 = [v11 initWithData:isa];

  sub_1000049E8(v8, v10);
  if (v13)
  {
    v14 = sub_100009730();
    sub_1000049E8(v8, v10);
    (*(v2 + 8))(v5, v1);
    return v14;
  }

  else
  {
    (*(v2 + 8))(v5, v1);
    sub_1000049E8(v8, v10);
    return sub_100009740();
  }
}

uint64_t sub_100003F24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_100009930() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000B0C0 == a2 || (sub_100009930() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_100009930() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656761506D756ELL && a2 == 0xE800000000000000 || (sub_100009930() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E7265746E697270 && a2 == 0xEB00000000656D61 || (sub_100009930() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEB00000000656761 || (sub_100009930() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72676F7250626F6ALL && a2 == 0xEB00000000737365 || (sub_100009930() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537265746E697270 && a2 == 0xEC00000065746174 || (sub_100009930() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617453726F727265 && a2 == 0xEB00000000737574 || (sub_100009930() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6567616D49626F6ALL && a2 == 0xEC00000068746150)
  {

    return 9;
  }

  else
  {
    v6 = sub_100009930();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10000426C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_100009930() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_100009930() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_100009930() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_100009930() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    return 1;
  }

  return sub_100009930();
}

unint64_t sub_1000043B0()
{
  result = qword_100014C48[0];
  if (!qword_100014C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014C48);
  }

  return result;
}

uint64_t sub_100004404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002E44(&qword_100014B30, qword_10000ACF8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_100002E8C(a1, a1[3]);
  sub_1000043B0();
  sub_1000099A0();
  if (v2)
  {
    return sub_100002F50(a1);
  }

  LOBYTE(v49[0]) = 0;
  v11 = sub_1000098E0();
  LOBYTE(v49[0]) = 1;
  v38 = sub_1000098C0();
  v40 = v12;
  LOBYTE(v49[0]) = 2;
  v13 = sub_1000098C0();
  v39 = v14;
  v36 = v13;
  LOBYTE(v49[0]) = 3;
  v35 = sub_1000098E0();
  LOBYTE(v49[0]) = 4;
  v34 = sub_1000098C0();
  v37 = v15;
  LOBYTE(v49[0]) = 5;
  v33 = sub_1000098E0();
  LOBYTE(v49[0]) = 6;
  sub_1000098D0();
  v17 = v16;
  LOBYTE(v49[0]) = 7;
  v31 = sub_1000098E0();
  LOBYTE(v49[0]) = 8;
  v30 = sub_1000098C0();
  v32 = v18;
  v50 = 9;
  v19 = sub_1000098C0();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  *&v41 = v11;
  *(&v41 + 1) = v38;
  v22 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v36;
  v23 = v39;
  *&v43 = v39;
  *(&v43 + 1) = v35;
  *&v44 = v34;
  v24 = v37;
  *(&v44 + 1) = v37;
  *&v45 = v33;
  *(&v45 + 1) = v17;
  *&v46 = v31;
  *(&v46 + 1) = v30;
  *&v47 = v32;
  *(&v47 + 1) = v19;
  v48 = v21;
  sub_100005074(&v41, v49);
  sub_100002F50(a1);
  v49[0] = v11;
  v49[1] = v38;
  v49[2] = v22;
  v49[3] = v36;
  v49[4] = v23;
  v49[5] = v35;
  v49[6] = v34;
  v49[7] = v24;
  v49[8] = v33;
  v49[9] = v17;
  v49[10] = v31;
  v49[11] = v30;
  v49[12] = v32;
  v49[13] = v19;
  v49[14] = v21;
  result = sub_1000050AC(v49);
  v26 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v26;
  *(a2 + 96) = v47;
  *(a2 + 112) = v48;
  v27 = v42;
  *a2 = v41;
  *(a2 + 16) = v27;
  v28 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_100004994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000049E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100004A40()
{
  result = qword_100014B00;
  if (!qword_100014B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B00);
  }

  return result;
}

unint64_t sub_100004A98()
{
  result = qword_100014B08;
  if (!qword_100014B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B08);
  }

  return result;
}

unint64_t sub_100004AF0()
{
  result = qword_100014B10;
  if (!qword_100014B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B10);
  }

  return result;
}

unint64_t sub_100004B48()
{
  result = qword_100014B18;
  if (!qword_100014B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B18);
  }

  return result;
}

unint64_t sub_100004BA0()
{
  result = qword_100014B20;
  if (!qword_100014B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B20);
  }

  return result;
}

unint64_t sub_100004BF8()
{
  result = qword_100014B28;
  if (!qword_100014B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014B28);
  }

  return result;
}

__n128 sub_100004C5C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100004C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100004CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrintJobState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrintJobState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004EC0()
{
  result = qword_1000151D0[0];
  if (!qword_1000151D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000151D0);
  }

  return result;
}

unint64_t sub_100004F18()
{
  result = qword_1000152E0;
  if (!qword_1000152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000152E0);
  }

  return result;
}

unint64_t sub_100004F70()
{
  result = qword_1000152E8[0];
  if (!qword_1000152E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000152E8);
  }

  return result;
}

unint64_t sub_100004FC8()
{
  result = qword_100015370;
  if (!qword_100015370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015370);
  }

  return result;
}

unint64_t sub_100005020()
{
  result = qword_100015378[0];
  if (!qword_100015378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100015378);
  }

  return result;
}

uint64_t sub_1000050F0()
{
  v1 = (v0 + OBJC_IVAR___PrintActivityObject_jobImagePath);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100005148(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PrintActivityObject_jobImagePath);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

Swift::Void __swiftcall PrintActivityObject.startPrintLiveActivity()()
{
  v1 = sub_1000096F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002E44(&qword_100014B40, &qword_10000AD30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v88 - v8;
  v10 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v88 - v14;
  v16 = OBJC_IVAR___PrintActivityObject_currentActivity;
  if (*&v0[OBJC_IVAR___PrintActivityObject_currentActivity])
  {
    return;
  }

  v96 = v13;
  v17 = [objc_opt_self() jobs];
  v92 = v11;
  v93 = v5;
  v88 = v16;
  if (v17)
  {
    v18 = v17;
    sub_10000846C(0, &qword_100014B70, PKJob_ptr);
    v19 = sub_1000097D0();
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  v20 = OBJC_IVAR___PrintActivityObject_pendingJobs;
  v21 = *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs];
  *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs] = v19;

  v22 = sub_100005C64();
  v24 = v23;
  v25 = &v0[OBJC_IVAR___PrintActivityObject_jobImagePath];
  swift_beginAccess();
  v26 = v25[1];
  *v25 = v22;
  v25[1] = v24;

  v27 = *&v0[v20];
  v98 = v0;
  v94 = v2;
  v95 = v1;
  v90 = v9;
  v91 = v15;
  if (v27 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000098B0())
  {

    if (i)
    {
      v29 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = sub_100009890();
        }

        else
        {
          if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (sub_1000090C8())
        {

          v97 = [v31 printer];

          goto LABEL_19;
        }

        ++v29;
        if (v32 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_17:

    v97 = 0;
LABEL_19:
    nullsub_1(v33);
    v27 = *&v98[v20];
    if (v27 >> 62)
    {
      if (v27 < 0)
      {
        v86 = *&v98[v20];
      }

      v34 = sub_1000098B0();
    }

    else
    {
      v34 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v34)
    {
      break;
    }

    v35 = 0;
    v20 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v36 = sub_100009890();
      }

      else
      {
        if (v35 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v36 = *(v27 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (sub_1000090C8())
      {

        v50 = v37;
        v51 = sub_100009234();

        v52 = v51;
        v53 = v50;
        v54 = sub_100009288();

        v40 = v52 / v54;
        v89 = [v53 localJobID];
        v55 = v53;
        v39 = sub_100009120();
        v41 = v56;
        v42 = sub_100009234();

        v43 = v97;
        if (v97)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_31;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_31:

  v39 = 0;
  v89 = 0;
  v37 = 0;
  v40 = 1.0;
  v41 = 0xE000000000000000;
  v42 = 1;
  v43 = v97;
  if (v97)
  {
LABEL_32:
    v44 = [v43 displayName];
    v45 = sub_100009790();
    v47 = v46;

    if (v37)
    {
      goto LABEL_33;
    }

LABEL_36:
    v49 = 1;
  }

  else
  {
LABEL_35:
    v45 = 0;
    v47 = 0xE000000000000000;
    if (!v37)
    {
      goto LABEL_36;
    }

LABEL_33:
    v48 = v37;
    v49 = sub_100009288();
  }

  v58 = *v25;
  v57 = v25[1];

  *(&v87 + 1) = v58;
  *&v87 = 0xE000000000000000;
  sub_100003ADC(v89, 0, 0xE000000000000000, v39, v41, v42, v45, v47, v107, v40, v49, 0, v87, v59);
  v89 = 0x800000010000B0E0;
  sub_100002E44(&qword_100014B60, &qword_10000AD40);
  v60 = sub_1000096A0();
  v61 = *(v60 - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10000AD10;
  v65 = (v64 + v63);
  *v65 = 0xD000000000000015;
  v65[1] = 0x800000010000B0E0;
  v66 = *(v61 + 104);
  (v66)(v64 + v63, enum case for ActivityContentSource.Request.process(_:), v60);
  v67 = (v65 + v62);
  *v67 = 0xD000000000000022;
  v67[1] = 0x800000010000B100;
  v66();
  sub_100002E44(&qword_100014B68, &unk_10000AD48);
  v103 = v107[4];
  v104 = v107[5];
  v105 = v107[6];
  v106 = v108;
  v99 = v107[0];
  v100 = v107[1];
  v101 = v107[2];
  v102 = v107[3];
  v68 = sub_100009680();
  (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
  sub_100004AF0();
  sub_100004B48();
  sub_100004BA0();
  v69 = v91;
  sub_100009700();
  sub_1000096D0();
  v70 = v93;
  sub_1000096E0();
  v71 = sub_100009690();

  (*(v94 + 8))(v70, v95);
  (*(v92 + 8))(v69, v96);
  v72 = v98;
  v73 = *&v98[v88];
  *&v98[v88] = v71;

  sub_100006210();
  v98 = objc_opt_self();
  v74 = [v98 defaultCenter];
  v75 = PKJobListNotification;
  v76 = swift_allocObject();
  *(v76 + 16) = v72;
  *&v101 = sub_100006504;
  *(&v101 + 1) = v76;
  *&v99 = _NSConcreteStackBlock;
  *(&v99 + 1) = 1107296256;
  *&v100 = sub_100006528;
  *(&v100 + 1) = &unk_100010A18;
  v77 = _Block_copy(&v99);
  v78 = v72;

  v79 = [v74 addObserverForName:v75 object:0 queue:0 usingBlock:v77];
  _Block_release(v77);
  swift_unknownObjectRelease();

  v80 = [v98 defaultCenter];
  v81 = PKJobProgressNotification;
  v82 = swift_allocObject();
  *(v82 + 16) = v78;
  *&v101 = sub_100006634;
  *(&v101 + 1) = v82;
  *&v99 = _NSConcreteStackBlock;
  *(&v99 + 1) = 1107296256;
  *&v100 = sub_100006528;
  *(&v100 + 1) = &unk_100010A68;
  v83 = _Block_copy(&v99);
  v84 = v78;

  v85 = [v80 addObserverForName:v81 object:0 queue:0 usingBlock:v83];
  _Block_release(v83);
  swift_unknownObjectRelease();
}

uint64_t sub_100005C64()
{
  v36 = *(sub_100009630() - 8);
  v1 = *(v36 + 64);
  v2 = (__chkstk_darwin)();
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR___PrintActivityObject_pendingJobs;
  v9 = *(v0 + OBJC_IVAR___PrintActivityObject_pendingJobs);
  v33 = v0;
  v34 = v5;
  if (v9 >> 62)
  {
LABEL_39:
    v10 = sub_1000098B0();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v7;

  if (v10)
  {
    v11 = 0;
    v7 = (v9 & 0xC000000000000001);
    while (1)
    {
      if (v7)
      {
        v12 = sub_100009890();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (sub_1000090C8())
      {
        break;
      }

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_13;
      }
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_100009870(36);
    v37 = [v13 localJobID];
    v16 = sub_100009920();
    v18 = v17;

    v38 = v16;
    v39 = v18;
    v40._object = 0x800000010000B1E0;
    v40._countAndFlagsBits = 0xD000000000000022;
    sub_1000097C0(v40);
    v19 = objc_opt_self();
    v20 = sub_100009780();

    v21 = [v19 createTemporaryFileWithFilename:v20];

    if (!v21)
    {

      return 0;
    }

    sub_100009610();

    v22 = v34;
    (*(v36 + 32))(v35, v4, v34);
    v23 = *(v33 + v8);
    v8 = 0xD000000000000022;
    if (v23 >> 62)
    {
      v4 = sub_1000098B0();
    }

    else
    {
      v4 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v9 = 0;
      v7 = (v23 & 0xC000000000000001);
      do
      {
        if (v7)
        {
          v24 = sub_100009890();
        }

        else
        {
          if (v9 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v24 = *(v23 + 8 * v9 + 32);
        }

        v25 = v24;
        v26 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_37;
        }

        if (sub_1000090C8())
        {

          v30 = [v25 thumbnailImage];

          v29 = v35;
          if (v30)
          {
            v27 = sub_100009660();
            v28 = v31;
          }

          else
          {
            v27 = 0;
            v28 = 0xC000000000000000;
          }

          goto LABEL_34;
        }

        ++v9;
      }

      while (v26 != v4);
    }

    v27 = 0;
    v28 = 0xC000000000000000;
    v29 = v35;
LABEL_34:
    sub_100009670();
    sub_1000049E8(v27, v28);
    v32 = sub_100009620();

    (*(v36 + 8))(v29, v22);
    return v32;
  }

  else
  {
LABEL_13:

    return 0;
  }
}

uint64_t sub_100006210()
{
  v1 = sub_100009750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009770();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR___PrintActivityObject_workQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100008F6C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000811C;
  aBlock[3] = &unk_100010B58;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_100009760();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000900C(&qword_100014BE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002E44(&qword_100014BE8, &qword_10000ADF0);
  sub_100009054(&qword_100014BF0, &qword_100014BE8, &qword_10000ADF0);
  sub_100009860();
  sub_100009830();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_1000064CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006528(uint64_t a1)
{
  v2 = sub_1000095E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1000095D0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000661C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100006658()
{
  v1 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v93 = &v82 - v3;
  v4 = sub_100002E44(&qword_100014B40, &qword_10000AD30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v87 = &v82 - v6;
  v92 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
  v91 = *(v92 - 8);
  v7 = *(v91 + 64);
  v8 = __chkstk_darwin(v92);
  v89 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v9;
  __chkstk_darwin(v8);
  v90 = &v82 - v10;
  v94 = OBJC_IVAR___PrintActivityObject_pendingJobs;
  v11 = *(v0 + OBJC_IVAR___PrintActivityObject_pendingJobs);
  if (v11 >> 62)
  {
    goto LABEL_104;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000098B0())
  {

    if (!i)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_100009890();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 update];
      sub_10000846C(0, &qword_100014B70, PKJob_ptr);
      sub_100008D48();
      sub_100009710();
      sub_100009720();

      ++v13;
      if (v16 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    ;
  }

LABEL_12:

  v17 = v95;
  v11 = *(v95 + OBJC_IVAR___PrintActivityObject_currentActivity);
  if (v11)
  {
    v18 = *(v95 + v94);
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }

    while (1)
    {
      v19 = sub_1000098B0();
LABEL_15:

      if (v19)
      {
        v20 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = sub_100009890();
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v21 = *(v18 + 8 * v20 + 32);
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          v96 = v21;
          if (sub_1000090C8())
          {
            break;
          }

          ++v20;
          if (v22 == v19)
          {
            goto LABEL_26;
          }
        }

        v25 = v96;
        v26 = sub_100009234();

        v27 = v25;
        v28 = sub_100009288();

        v24 = v26 == 0;
        v23 = v28 == 0;
      }

      else
      {
LABEL_26:

        v96 = 0;
        v23 = 1;
        v24 = 1;
      }

      v29 = *(v17 + v94);
      if (v29 >> 62)
      {
        if (v29 < 0)
        {
          v78 = *(v17 + v94);
        }

        v30 = sub_1000098B0();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v30)
      {
        break;
      }

LABEL_40:

      v35 = 0.0;
LABEL_42:
      v36 = *(v95 + v94);
      if (v36 >> 62)
      {
        if (v36 < 0)
        {
          v79 = *(v95 + v94);
        }

        v37 = sub_1000098B0();
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v37)
      {
        v38 = 0;
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v39 = sub_100009890();
          }

          else
          {
            if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v39 = *(v36 + 8 * v38 + 32);
          }

          v40 = v39;
          v41 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_102;
          }

          if (sub_1000090C8())
          {

            v42 = sub_1000090F4();

            if (v42)
            {
              v35 = 1.0;
            }

            goto LABEL_57;
          }

          ++v38;
        }

        while (v41 != v37);
      }

LABEL_57:
      v17 = v95;
      if (!v96)
      {

        return;
      }

      if (v24 || v23)
      {

        v43 = v96;

        return;
      }

      v44 = [v96 localJobID];
      v45 = v96;
      v46 = sub_100009120();
      v48 = v47;

      v49 = v45;
      v50 = sub_100009234();

      v18 = *(v17 + v94);
      v96 = v46;
      v86 = v48;
      v85 = v44;
      v84 = v50;
      if (v18 >> 62)
      {
        v51 = sub_1000098B0();
      }

      else
      {
        v51 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v51)
      {
        v52 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v53 = sub_100009890();
          }

          else
          {
            if (v52 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_106;
            }

            v53 = *(v18 + 8 * v52 + 32);
          }

          v54 = v53;
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (sub_1000090C8())
          {

            v56 = [v54 printer];

            v57 = [v56 displayName];
            v83 = sub_100009790();
            v82 = v58;

            goto LABEL_81;
          }

          ++v52;
          if (v55 == v51)
          {
            goto LABEL_79;
          }
        }

        __break(1u);
LABEL_106:
        __break(1u);
      }

      else
      {
LABEL_79:

        v83 = 0;
        v82 = 0xE000000000000000;
LABEL_81:
        v18 = *(v17 + v94);
        if (v18 >> 62)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            v80 = *(v17 + v94);
          }

          v59 = sub_1000098B0();
        }

        else
        {
          v59 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v59)
        {
LABEL_93:

          v64 = 0;
LABEL_95:
          v65 = (v17 + OBJC_IVAR___PrintActivityObject_jobImagePath);
          swift_beginAccess();
          v67 = *v65;
          v66 = v65[1];

          *(&v81 + 1) = v67;
          *&v81 = 0xE000000000000000;
          sub_100003ADC(v85, 0, 0xE000000000000000, v96, v86, v84, v83, v82, v97, v35, v64, 0, v81, v68);
          v69 = sub_100009680();
          (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
          sub_100004AF0();
          sub_100004B48();
          sub_100004BA0();
          v70 = v90;
          sub_100009700();
          v71 = sub_100009800();
          v72 = v93;
          (*(*(v71 - 8) + 56))(v93, 1, 1, v71);
          v73 = v91;
          v74 = v89;
          v75 = v92;
          (*(v91 + 16))(v89, v70, v92);
          v76 = (*(v73 + 80) + 40) & ~*(v73 + 80);
          v77 = swift_allocObject();
          *(v77 + 2) = 0;
          *(v77 + 3) = 0;
          *(v77 + 4) = v11;
          (*(v73 + 32))(&v77[v76], v74, v75);

          sub_100007DE4(0, 0, v72, &unk_10000ADE8, v77);

          (*(v73 + 8))(v70, v75);
          return;
        }

        v60 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v61 = sub_100009890();
          }

          else
          {
            if (v60 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_108;
            }

            v61 = *(v18 + 8 * v60 + 32);
          }

          v62 = v61;
          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (sub_1000090C8())
          {

            v64 = sub_100009288();

            goto LABEL_95;
          }

          ++v60;
          if (v63 == v59)
          {
            goto LABEL_93;
          }
        }
      }

      __break(1u);
LABEL_108:
      __break(1u);
    }

    v31 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = sub_100009890();
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_100;
      }

      if (sub_1000090C8())
      {

        v35 = sub_100009304();

        goto LABEL_42;
      }

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_40;
      }
    }
  }
}

Swift::Void __swiftcall PrintActivityObject.stopPrintLiveActivity()()
{
  v1 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver:v0];

  v6 = *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs];
  *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs] = &_swiftEmptyArrayStorage;

  v7 = sub_100009800();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v9 = v0;
  sub_100007DE4(0, 0, v4, &unk_10000AD68, v8);
}

uint64_t sub_1000072D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1000096C0();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(sub_100002E44(&qword_100014BD0, &qword_10000ADD8) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000073F4, 0, 0);
}

uint64_t sub_1000073F4()
{
  v1 = v0[6];
  sub_100006658();
  v2 = *(v1 + OBJC_IVAR___PrintActivityObject_currentActivity);
  v0[11] = v2;
  if (v2)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

    sub_1000096B0();
    v6 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
    v7 = async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:);
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1000077A8;
    v9 = v0[9];
    v10 = v0[10];

    return ((&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + v7))(v10, v9);
  }

  else
  {
    v12 = v0[6];
    v13 = objc_opt_self();
    v14 = [v13 defaultManager];
    v15 = (v12 + OBJC_IVAR___PrintActivityObject_jobImagePath);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_100009780();

    LODWORD(v17) = [v14 fileExistsAtPath:v18];

    if (v17)
    {
      v19 = [v13 defaultManager];
      v20 = *v15;
      v21 = v15[1];

      v22 = sub_100009780();

      v0[5] = 0;
      LODWORD(v21) = [v19 removeItemAtPath:v22 error:v0 + 5];

      v23 = v0[5];
      if (v21)
      {
        v24 = v23;
      }

      else
      {
        v25 = v23;
        sub_1000095F0();

        swift_willThrow();
        sub_100002E44(&qword_100014AF8, qword_10000A950);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10000A930;
        sub_100009870(33);

        v28 = *v15;
        v27 = v15[1];

        v33._countAndFlagsBits = v28;
        v33._object = v27;
        sub_1000097C0(v33);

        *(v26 + 56) = &type metadata for String;
        *(v26 + 32) = 0xD00000000000001FLL;
        *(v26 + 40) = 0x800000010000B1B0;
        sub_100009950();
      }
    }

    v30 = v0[9];
    v29 = v0[10];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1000077A8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_100008CE8(v3, &qword_100014BD0, &qword_10000ADD8);

  return _swift_task_switch(sub_10000797C, 0, 0);
}

uint64_t sub_10000797C()
{
  v1 = v0[6];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  v4 = (v1 + OBJC_IVAR___PrintActivityObject_jobImagePath);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];

  v7 = sub_100009780();

  LODWORD(v6) = [v3 fileExistsAtPath:v7];

  if (v6)
  {
    v8 = [v2 defaultManager];
    v9 = *v4;
    v10 = v4[1];

    v11 = sub_100009780();

    v0[5] = 0;
    v12 = [v8 removeItemAtPath:v11 error:v0 + 5];

    v13 = v0[5];
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v15 = v13;
      sub_1000095F0();

      swift_willThrow();
      sub_100002E44(&qword_100014AF8, qword_10000A950);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10000A930;
      sub_100009870(33);

      v18 = *v4;
      v17 = v4[1];

      v24._countAndFlagsBits = v18;
      v24._object = v17;
      sub_1000097C0(v24);

      *(v16 + 56) = &type metadata for String;
      *(v16 + 32) = 0xD00000000000001FLL;
      *(v16 + 40) = 0x800000010000B1B0;
      sub_100009950();
    }
  }

  v20 = v0[9];
  v19 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100007C1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007C5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007CF0;

  return sub_1000072D0(v3, v4, v5, v2);
}

uint64_t sub_100007CF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000088E0(a3, v27 - v11);
  v13 = sub_100009800();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008CE8(v12, &qword_100014B78, &qword_10000AD58);
  }

  else
  {
    sub_1000097F0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000097E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000097A0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100008CE8(a3, &qword_100014B78, &qword_10000AD58);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008CE8(a3, &qword_100014B78, &qword_10000AD58);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000811C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100008160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(&async function pointer to dispatch thunk of Activity.update(_:) + 1);
  v10 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_100007CF0;

  return v10(a5);
}

uint64_t variable initialization expression of PrintActivityObject.workQueue()
{
  v10 = sub_100009820();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009810();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100009770();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10000846C(0, &qword_100014B80, OS_dispatch_queue_ptr);
  sub_100009760();
  v11 = &_swiftEmptyArrayStorage;
  sub_10000900C(&qword_100014B88, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002E44(&qword_100014B90, &unk_10000AD70);
  sub_100009054(&qword_100014B98, &qword_100014B90, &unk_10000AD70);
  sub_100009860();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return sub_100009840();
}

uint64_t sub_10000846C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000084B4(uint64_t *a1, uint64_t *a2)
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

id PrintActivityObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PrintActivityObject.init()()
{
  ObjectType = swift_getObjectType();
  v14 = sub_100009820();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v14);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009810();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_100009770();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR___PrintActivityObject_currentActivity] = 0;
  *&v0[OBJC_IVAR___PrintActivityObject_pendingJobs] = &_swiftEmptyArrayStorage;
  v9 = &v0[OBJC_IVAR___PrintActivityObject_jobImagePath];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v13 = OBJC_IVAR___PrintActivityObject_workQueue;
  v10 = sub_10000846C(0, &qword_100014B80, OS_dispatch_queue_ptr);
  v12[0] = "v16@?0@NSNotification8";
  v12[1] = v10;
  sub_100009760();
  v17 = &_swiftEmptyArrayStorage;
  sub_10000900C(&qword_100014B88, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002E44(&qword_100014B90, &unk_10000AD70);
  sub_100009054(&qword_100014B98, &qword_100014B90, &unk_10000AD70);
  sub_100009860();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[v13] = sub_100009840();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

id PrintActivityObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000088E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E44(&qword_100014B78, &qword_10000AD58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008950(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008A48;

  return v7(a1);
}

uint64_t sub_100008A48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008B40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000090BC;

  return sub_100008950(a1, v5);
}

uint64_t sub_100008C30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007CF0;

  return sub_100008950(a1, v5);
}

uint64_t sub_100008CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E44(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008D48()
{
  result = qword_100014BD8;
  if (!qword_100014BD8)
  {
    sub_10000846C(255, &qword_100014B70, PKJob_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014BD8);
  }

  return result;
}

uint64_t sub_100008DB0()
{
  v1 = sub_100002E44(&qword_100014B48, &qword_10000AD38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008E88()
{
  v2 = *(sub_100002E44(&qword_100014B48, &qword_10000AD38) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000090BC;

  return sub_100008160(v5, v6, v7, v4, v0 + v3);
}

void sub_100008F6C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() jobs];
  if (v2)
  {
    v3 = v2;
    sub_10000846C(0, &qword_100014B70, PKJob_ptr);
    v4 = sub_1000097D0();
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  v5 = *(v1 + OBJC_IVAR___PrintActivityObject_pendingJobs);
  *(v1 + OBJC_IVAR___PrintActivityObject_pendingJobs) = v4;

  sub_100006658();
}

uint64_t sub_10000900C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009054(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000084B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000912C()
{
  v1 = [v0 settings];
  v2 = [v1 objectForKey:PKCopiesKey];

  if (v2)
  {
    sub_100009850();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_10000846C(0, &unk_100014C10, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100009550(v8);
  }

  return 1;
}

uint64_t sub_100009234()
{
  v1 = [v0 mediaSheets];
  result = sub_10000912C();
  if (result)
  {
    if (v1 != 0x8000000000000000 || result != -1)
    {
      return v1 / result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100009288()
{
  result = [v0 mediaSheetsCompleted];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result + 1 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = result + 1;
    }

    if ([v0 mediaSheets] < 1)
    {
      return v2;
    }

    else
    {
      result = [v0 mediaSheets];
      if (result >= v2)
      {
        return v2;
      }
    }
  }

  return result;
}

double sub_100009304()
{
  v1 = 0.0;
  if ([v0 mediaSheets] >= 1)
  {
    v2 = 1.0 / [v0 mediaSheets];
    v3 = [v0 mediaSheetsCompleted];
    v4 = v3 / [v0 mediaSheets];
    v5 = [v0 mediaProgress];
    v6 = v4 + v2 * v5 / 100.0;
    if (v6 >= 0.0)
    {
      if (v6 <= 1.0)
      {
        return v4 + v2 * v5 / 100.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v1;
}

uint64_t sub_1000093D4(void *a1)
{
  v3 = [v1 settings];
  v4 = [v3 objectForKey:*a1];

  if (v4)
  {
    sub_100009850();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100009550(v9);
  }

  return 0;
}

uint64_t sub_1000094AC@<X0>(uint64_t *a1@<X8>)
{
  sub_10000846C(0, &qword_100014B70, PKJob_ptr);
  result = sub_100009710();
  *a1 = result;
  return result;
}

uint64_t sub_1000094FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_10000846C(0, &qword_100014B70, PKJob_ptr);
  result = sub_100009880();
  *a1 = result;
  return result;
}

uint64_t sub_100009550(uint64_t a1)
{
  v2 = sub_100002E44(&qword_100014C08, qword_10000AE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}