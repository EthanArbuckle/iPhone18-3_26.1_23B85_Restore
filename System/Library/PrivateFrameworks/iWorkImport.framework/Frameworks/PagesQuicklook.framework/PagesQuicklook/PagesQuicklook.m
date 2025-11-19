void sub_275F88560(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  for (i = objc_msgSend_firstIndex(v6, v7, v8, v9, v10, v11); i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_indexGreaterThanIndex_(v6, v40, v41, v42, v43, v44, i))
  {
    v17 = MEMORY[0x277CBEAE8];
    v18 = objc_msgSend_methodSignatureForSelector_(a1, v12, v13, v14, v15, v16, a3);
    v24 = objc_msgSend_invocationWithMethodSignature_(v17, v19, v20, v21, v22, v23, v18);

    objc_msgSend_setSelector_(v24, v25, v26, v27, v28, v29, a3);
    objc_msgSend_setArgument_atIndex_(v24, v30, v31, v32, v33, v34, &i, 2);
    objc_msgSend_invokeWithTarget_(v24, v35, v36, v37, v38, v39, a1);
  }
}

uint64_t sub_275F88C3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F8ED0 = &unk_2884FFC70;
  *algn_2812F8ED8 = 0;
  dword_2812F8EE0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F88CB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F8B40 = v4;
  qword_2812F8B38 = &unk_2884FF4E0;
  if (atomic_load_explicit(dword_2812F7F48, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F8B60 = 0u;
  unk_2812F8B50 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F88D6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA2328(&unk_2812F8E30, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F88DDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F8A16C(&unk_2812F85D8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F88E4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F8AF0 = 0;
  unk_2812F8AF8 = 0;
  qword_2812F8AE8 = &unk_2884FF380;
  qword_2812F8B00 = 0;
  unk_2812F8B08 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F88EC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F8B18 = 0;
  unk_2812F8B20 = 0;
  qword_2812F8B10 = &unk_2884FF430;
  qword_2812F8B28 = 0;
  unk_2812F8B30 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F88F44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F91220(&unk_2812F87F0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F88FB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F909C0(qword_2812F87C8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89024(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F936FC(&unk_2812F88E0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89094(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F92D7C(qword_2812F88A8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89104(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F8828 = v4;
  qword_2812F8820 = &unk_2884FEE00;
  if (atomic_load_explicit(dword_2812F8090, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F8838 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F891B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F91F54(&unk_2812F8840, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89224(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA1098(qword_2812F8DD0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89294(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FAD358(&unk_2812F9288, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89304(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F9230 = 0;
  unk_2812F9238 = MEMORY[0x277D80A90];
  qword_2812F9240 = 0;
  dword_2812F9248 = 0;
  qword_2812F9250 = 0;
  qword_2812F9228 = &unk_2885004B0;
  return result;
}

uint64_t sub_275F89370(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FAC344(qword_2812F91E0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F893E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F9260 = 0;
  unk_2812F9268 = MEMORY[0x277D80A90];
  qword_2812F9270 = 0;
  dword_2812F9278 = 0;
  qword_2812F9280 = 0;
  qword_2812F9258 = &unk_288500570;
  return result;
}

uint64_t sub_275F8944C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F8CC8 = &unk_2884FF6F0;
  unk_2812F8CD0 = 0;
  dword_2812F8CD8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F894C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F9BB30(&unk_2812F8BC8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89534(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F95744(&unk_2812F89A8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F895A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F94D68(&unk_2812F8978, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89614(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F87B0 = v4;
  qword_2812F87A8 = &unk_2884FEBF0;
  if (atomic_load_explicit(dword_2812F8240, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F87C0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F896C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F968E0(&unk_2812F8A10, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89734(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F9E798(&unk_2812F8CE0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F897A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA9FFC(&unk_2812F9100, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89814(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F90E0 = v4;
  qword_2812F90D8 = &unk_288500140;
  if (atomic_load_explicit(dword_2812F82D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F90F8 = 0;
  qword_2812F90F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F898C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA8698(&unk_2812F9068, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89938(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA8D50(qword_2812F9098, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F899A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F93E94(qword_2812F8910, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89A18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FAB68C(&unk_2812F9180, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89A88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9160 = v4;
  qword_2812F9158 = &unk_2885002A0;
  if (atomic_load_explicit(dword_2812F8390, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9170 = 0;
  unk_2812F9178 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F89B38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275F8DF54(&unk_2812F8728, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89BA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F8B78 = v4;
  qword_2812F8B70 = &unk_2884FF590;
  if (atomic_load_explicit(dword_2812F83D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F8BB8 = 0u;
  unk_2812F8BA8 = 0u;
  unk_2812F8B98 = 0u;
  unk_2812F8B88 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F89C68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F8D20 = v4;
  qword_2812F8D18 = &unk_2884FF850;
  if (atomic_load_explicit(dword_2812F8410, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F8D30 = 0;
  unk_2812F8D38 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F89D18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F8710 = v4;
  qword_2812F8708 = &unk_2884FEA90;
  if (atomic_load_explicit(dword_2812F8438, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F8720 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F89DC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA01A4(qword_2812F8D68, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89E38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  qword_2812F8D48 = 0;
  unk_2812F8D50 = 0;
  qword_2812F8D40 = &unk_2884FF900;
  qword_2812F8D58 = 0;
  *(&qword_2812F8D58 + 5) = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89EB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA0AB8(&unk_2812F8DA0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89F28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA4178(&unk_2812F8EE8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F89F98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  sub_275FA7F2C(&unk_2812F9038, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275F8A008(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9018 = v4;
  qword_2812F9010 = &unk_2884FFE80;
  if (atomic_load_explicit(dword_2812F8520, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F9030 = 0;
  qword_2812F9028 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F8A0BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TPArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F8FF0 = v4;
  qword_2812F8FE8 = &unk_2884FFDD0;
  if (atomic_load_explicit(dword_2812F8540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9000 = 0;
  unk_2812F9008 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275F8A16C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FE9E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 96) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (atomic_load_explicit(dword_2812F7FA8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 120) = MEMORY[0x277D80A90];
  *(a1 + 128) = v3;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 293) = 0;
  return a1;
}

void sub_275F8A24C(_Unwind_Exception *a1)
{
  sub_275FB56E8(v4);
  sub_275FB56E8(v3);
  sub_275FB56E8(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275F8A28C(uint64_t *a1)
{
  sub_275F8A2F0(a1);
  sub_275F8A514(a1 + 1);
  sub_275FB56E8(a1 + 12);
  sub_275FB56E8(a1 + 9);
  sub_275FB56E8(a1 + 6);
  sub_275FB56E8(a1 + 3);
  return a1;
}

TSP::Reference *sub_275F8A2F0(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 15);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 16);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C93390](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F85D8)
  {
    v5 = *(v1 + 17);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C93390]();
    }

    v6 = *(v1 + 18);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C93390]();
    }

    v7 = *(v1 + 19);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C93390]();
    }

    v8 = *(v1 + 20);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C93390]();
    }

    v9 = *(v1 + 21);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C93390]();
    }

    v10 = *(v1 + 22);
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x277C93390]();
    }

    v11 = *(v1 + 23);
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x277C93390]();
    }

    v12 = *(v1 + 24);
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x277C93390]();
    }

    if (*(v1 + 25))
    {
      v13 = MEMORY[0x277C928B0]();
      MEMORY[0x277C93390](v13, 0x10A1C406A766619);
    }

    v14 = *(v1 + 26);
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x277C93390]();
    }

    v15 = *(v1 + 27);
    if (v15)
    {
      TSP::Reference::~Reference(v15);
      MEMORY[0x277C93390]();
    }

    v16 = *(v1 + 28);
    if (v16)
    {
      TSP::Reference::~Reference(v16);
      MEMORY[0x277C93390]();
    }

    v17 = *(v1 + 29);
    if (v17)
    {
      TSP::DataReference::~DataReference(v17);
      MEMORY[0x277C93390]();
    }

    v18 = *(v1 + 30);
    if (v18)
    {
      TSP::Reference::~Reference(v18);
      MEMORY[0x277C93390]();
    }

    result = *(v1 + 31);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

uint64_t *sub_275F8A514(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275F8A5AC(uint64_t *a1)
{
  sub_275F8A28C(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F8A5EC()
{
  if (atomic_load_explicit(dword_2812F7FA8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F85D8;
}

uint64_t *sub_275F8A62C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (v1[8] + 8);
    do
    {
      v7 = *v6++;
      result = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (v1[11] + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  v11 = *(v1 + 26);
  if (v11 >= 1)
  {
    v12 = (v1[14] + 8);
    do
    {
      v13 = *v12++;
      result = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 26) = 0;
  }

  v14 = *(v1 + 4);
  if (!v14)
  {
    goto LABEL_27;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_59:
    v18 = v1[16] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v18 + 23) < 0)
    {
      **v18 = 0;
      *(v18 + 8) = 0;
      if ((v14 & 4) != 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *v18 = 0;
      *(v18 + 23) = 0;
      if ((v14 & 4) != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_21:
    if ((v14 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

  v17 = v1[15] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v17 + 23) < 0)
  {
    **v17 = 0;
    *(v17 + 8) = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_20:
  if ((v14 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_63:
  result = TSP::Reference::Clear(v1[17]);
  if ((v14 & 8) == 0)
  {
LABEL_22:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = TSP::Reference::Clear(v1[18]);
  if ((v14 & 0x10) == 0)
  {
LABEL_23:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_24;
    }

LABEL_66:
    result = TSP::Reference::Clear(v1[20]);
    if ((v14 & 0x40) == 0)
    {
LABEL_25:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_65:
  result = TSP::Reference::Clear(v1[19]);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_66;
  }

LABEL_24:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_67:
  result = TSP::Reference::Clear(v1[21]);
  if ((v14 & 0x80) != 0)
  {
LABEL_26:
    result = TSP::Reference::Clear(v1[22]);
  }

LABEL_27:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_37;
  }

  if ((v14 & 0x100) != 0)
  {
    result = TSP::Reference::Clear(v1[23]);
    if ((v14 & 0x200) == 0)
    {
LABEL_30:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_52;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  result = TSP::Reference::Clear(v1[24]);
  if ((v14 & 0x400) == 0)
  {
LABEL_31:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = TSA::DocumentArchive::Clear(v1[25]);
  if ((v14 & 0x800) == 0)
  {
LABEL_32:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = TSP::Reference::Clear(v1[26]);
  if ((v14 & 0x1000) == 0)
  {
LABEL_33:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = TSP::Reference::Clear(v1[27]);
  if ((v14 & 0x2000) == 0)
  {
LABEL_34:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = TSP::Reference::Clear(v1[28]);
  if ((v14 & 0x4000) == 0)
  {
LABEL_35:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_56:
  result = TSP::DataReference::Clear(v1[29]);
  if ((v14 & 0x8000) != 0)
  {
LABEL_36:
    result = TSP::Reference::Clear(v1[30]);
  }

LABEL_37:
  if ((v14 & 0x10000) != 0)
  {
    result = TSP::Reference::Clear(v1[31]);
  }

  if ((v14 & 0xFE0000) != 0)
  {
    v1[32] = 0;
    v1[33] = 0;
    *(v1 + 70) = 0;
    v1[34] = 0;
  }

  if (HIBYTE(v14))
  {
    *(v1 + 300) = 0;
    *(v1 + 292) = 0;
    *(v1 + 284) = 0;
  }

  v16 = *(v1 + 8);
  v15 = v1 + 1;
  *(v15 + 2) = 0;
  if (v16)
  {

    return sub_275FB57B8(v15);
  }

  return result;
}

google::protobuf::internal *sub_275F8A8BC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v123 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v123) & 1) == 0)
  {
    while (2)
    {
      v7 = (v123 + 1);
      v8 = *v123;
      if (*v123 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v123, (v9 - 128));
          v123 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_216;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 4u;
              v10 = *(a1 + 136);
              if (v10)
              {
                goto LABEL_194;
              }

              v11 = *(a1 + 8);
              if (v11)
              {
                v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C92D60](v11);
              LODWORD(v10) = v12;
              *(a1 + 136) = v12;
              goto LABEL_193;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 8u;
              v10 = *(a1 + 144);
              if (v10)
              {
                goto LABEL_194;
              }

              v60 = *(a1 + 8);
              if (v60)
              {
                v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
              }

              v61 = MEMORY[0x277C92D60](v60);
              LODWORD(v10) = v61;
              *(a1 + 144) = v61;
              goto LABEL_193;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x10u;
              v10 = *(a1 + 152);
              if (v10)
              {
                goto LABEL_194;
              }

              v41 = *(a1 + 8);
              if (v41)
              {
                v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
              }

              v42 = MEMORY[0x277C92D60](v41);
              LODWORD(v10) = v42;
              *(a1 + 152) = v42;
              goto LABEL_193;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x20u;
              v10 = *(a1 + 160);
              if (v10)
              {
                goto LABEL_194;
              }

              v73 = *(a1 + 8);
              if (v73)
              {
                v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
              }

              v74 = MEMORY[0x277C92D60](v73);
              LODWORD(v10) = v74;
              *(a1 + 160) = v74;
              goto LABEL_193;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x40u;
              v10 = *(a1 + 168);
              if (v10)
              {
                goto LABEL_194;
              }

              v75 = *(a1 + 8);
              if (v75)
              {
                v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
              }

              v76 = MEMORY[0x277C92D60](v75);
              LODWORD(v10) = v76;
              *(a1 + 168) = v76;
              goto LABEL_193;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x80u;
              v10 = *(a1 + 176);
              if (v10)
              {
                goto LABEL_194;
              }

              v46 = *(a1 + 8);
              if (v46)
              {
                v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
              }

              v47 = MEMORY[0x277C92D60](v46);
              LODWORD(v10) = v47;
              *(a1 + 176) = v47;
              goto LABEL_193;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x100u;
              v10 = *(a1 + 184);
              if (v10)
              {
                goto LABEL_194;
              }

              v62 = *(a1 + 8);
              if (v62)
              {
                v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
              }

              v63 = MEMORY[0x277C92D60](v62);
              LODWORD(v10) = v63;
              *(a1 + 184) = v63;
              goto LABEL_193;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x200u;
              v10 = *(a1 + 192);
              if (v10)
              {
                goto LABEL_194;
              }

              v64 = *(a1 + 8);
              if (v64)
              {
                v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
              }

              v65 = MEMORY[0x277C92D60](v64);
              LODWORD(v10) = v65;
              *(a1 + 192) = v65;
              goto LABEL_193;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_198;
              }

              v86 = v7 - 1;
              while (1)
              {
                v87 = (v86 + 1);
                v123 = (v86 + 1);
                v88 = *(a1 + 40);
                if (!v88)
                {
                  goto LABEL_151;
                }

                v94 = *(a1 + 32);
                v89 = *v88;
                if (v94 < *v88)
                {
                  *(a1 + 32) = v94 + 1;
                  v91 = *&v88[2 * v94 + 2];
                  goto LABEL_155;
                }

                if (v89 == *(a1 + 36))
                {
LABEL_151:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v88 = *(a1 + 40);
                  v89 = *v88;
                }

                *v88 = v89 + 1;
                v90 = MEMORY[0x277C92D60](*(a1 + 24));
                LODWORD(v91) = v90;
                v92 = *(a1 + 32);
                v93 = *(a1 + 40) + 8 * v92;
                *(a1 + 32) = v92 + 1;
                *(v93 + 8) = v90;
                v87 = v123;
LABEL_155:
                v86 = sub_27603450C(a3, v91, v87);
                v123 = v86;
                if (!v86)
                {
                  goto LABEL_216;
                }

                if (*a3 <= v86 || *v86 != 106)
                {
                  goto LABEL_196;
                }
              }

            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_198;
              }

              v77 = v7 - 1;
              while (1)
              {
                v78 = (v77 + 1);
                v123 = (v77 + 1);
                v79 = *(a1 + 64);
                if (!v79)
                {
                  goto LABEL_138;
                }

                v85 = *(a1 + 56);
                v80 = *v79;
                if (v85 < *v79)
                {
                  *(a1 + 56) = v85 + 1;
                  v82 = *&v79[2 * v85 + 2];
                  goto LABEL_142;
                }

                if (v80 == *(a1 + 60))
                {
LABEL_138:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v79 = *(a1 + 64);
                  v80 = *v79;
                }

                *v79 = v80 + 1;
                v81 = MEMORY[0x277C92D60](*(a1 + 48));
                LODWORD(v82) = v81;
                v83 = *(a1 + 56);
                v84 = *(a1 + 64) + 8 * v83;
                *(a1 + 56) = v83 + 1;
                *(v84 + 8) = v81;
                v78 = v123;
LABEL_142:
                v77 = sub_27603450C(a3, v82, v78);
                v123 = v77;
                if (!v77)
                {
                  goto LABEL_216;
                }

                if (*a3 <= v77 || *v77 != 114)
                {
                  goto LABEL_196;
                }
              }

            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x400u;
              v24 = *(a1 + 200);
              if (!v24)
              {
                v25 = *(a1 + 8);
                if (v25)
                {
                  v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
                }

                v26 = MEMORY[0x277C92CD0](v25);
                LODWORD(v24) = v26;
                *(a1 + 200) = v26;
                v7 = v123;
              }

              v27 = sub_2760345DC(a3, v24, v7);
              goto LABEL_195;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_198;
              }

              v48 = v7 - 2;
              while (1)
              {
                v49 = (v48 + 2);
                v123 = (v48 + 2);
                v50 = *(a1 + 88);
                if (!v50)
                {
                  goto LABEL_82;
                }

                v56 = *(a1 + 80);
                v51 = *v50;
                if (v56 < *v50)
                {
                  *(a1 + 80) = v56 + 1;
                  v53 = *&v50[2 * v56 + 2];
                  goto LABEL_86;
                }

                if (v51 == *(a1 + 84))
                {
LABEL_82:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v50 = *(a1 + 88);
                  v51 = *v50;
                }

                *v50 = v51 + 1;
                v52 = MEMORY[0x277C92D60](*(a1 + 72));
                LODWORD(v53) = v52;
                v54 = *(a1 + 80);
                v55 = *(a1 + 88) + 8 * v54;
                *(a1 + 80) = v54 + 1;
                *(v55 + 8) = v52;
                v49 = v123;
LABEL_86:
                v48 = sub_27603450C(a3, v53, v49);
                v123 = v48;
                if (!v48)
                {
                  goto LABEL_216;
                }

                if (*a3 <= v48 || *v48 != 386)
                {
                  goto LABEL_196;
                }
              }

            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x800u;
              v10 = *(a1 + 208);
              if (v10)
              {
                goto LABEL_194;
              }

              v38 = *(a1 + 8);
              if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x277C92D60](v38);
              LODWORD(v10) = v39;
              *(a1 + 208) = v39;
              goto LABEL_193;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x1000u;
              v10 = *(a1 + 216);
              if (v10)
              {
                goto LABEL_194;
              }

              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x277C92D60](v18);
              LODWORD(v10) = v19;
              *(a1 + 216) = v19;
              goto LABEL_193;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_198;
              }

              v5 |= 0x1000000u;
              v67 = (v7 + 1);
              v66 = *v7;
              if ((v66 & 0x8000000000000000) == 0)
              {
                goto LABEL_116;
              }

              v68 = *v67;
              v66 = (v68 << 7) + v66 - 128;
              if (v68 < 0)
              {
                v117 = google::protobuf::internal::VarintParseSlow64(v7, v66);
                v123 = v117;
                *(a1 + 284) = v118 != 0;
                if (!v117)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v67 = (v7 + 2);
LABEL_116:
                v123 = v67;
                *(a1 + 284) = v66 != 0;
              }

              goto LABEL_196;
            case 0x1Eu:
              if (v8 != 245)
              {
                goto LABEL_198;
              }

              v69 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x20000u;
              *(a1 + 256) = v69;
              goto LABEL_172;
            case 0x1Fu:
              if (v8 != 253)
              {
                goto LABEL_198;
              }

              v99 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x40000u;
              *(a1 + 260) = v99;
              goto LABEL_172;
            case 0x20u:
              if (v8 != 5)
              {
                goto LABEL_198;
              }

              v95 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x80000u;
              *(a1 + 264) = v95;
              goto LABEL_172;
            case 0x21u:
              if (v8 != 13)
              {
                goto LABEL_198;
              }

              v16 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x100000u;
              *(a1 + 268) = v16;
              goto LABEL_172;
            case 0x22u:
              if (v8 != 21)
              {
                goto LABEL_198;
              }

              v40 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x200000u;
              *(a1 + 272) = v40;
              goto LABEL_172;
            case 0x23u:
              if (v8 != 29)
              {
                goto LABEL_198;
              }

              v100 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x400000u;
              *(a1 + 276) = v100;
              goto LABEL_172;
            case 0x24u:
              if (v8 != 37)
              {
                goto LABEL_198;
              }

              v17 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x800000u;
              *(a1 + 280) = v17;
              goto LABEL_172;
            case 0x25u:
              if (v8 != 45)
              {
                goto LABEL_198;
              }

              v37 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x10000000u;
              *(a1 + 288) = v37;
              goto LABEL_172;
            case 0x26u:
              if (v8 != 53)
              {
                goto LABEL_198;
              }

              v23 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x20000000u;
              *(a1 + 292) = v23;
LABEL_172:
              v123 = v15;
              goto LABEL_196;
            case 0x27u:
              if (v8 != 56)
              {
                goto LABEL_198;
              }

              v5 |= 0x2000000u;
              v58 = (v7 + 1);
              v57 = *v7;
              if ((v57 & 0x8000000000000000) == 0)
              {
                goto LABEL_96;
              }

              v59 = *v58;
              v57 = (v59 << 7) + v57 - 128;
              if (v59 < 0)
              {
                v115 = google::protobuf::internal::VarintParseSlow64(v7, v57);
                v123 = v115;
                *(a1 + 285) = v116 != 0;
                if (!v115)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v58 = (v7 + 2);
LABEL_96:
                v123 = v58;
                *(a1 + 285) = v57 != 0;
              }

              goto LABEL_196;
            case 0x28u:
              if (v8 != 64)
              {
                goto LABEL_198;
              }

              v5 |= 0x4000000u;
              v21 = (v7 + 1);
              v20 = *v7;
              if ((v20 & 0x8000000000000000) == 0)
              {
                goto LABEL_28;
              }

              v22 = *v21;
              v20 = (v22 << 7) + v20 - 128;
              if (v22 < 0)
              {
                v111 = google::protobuf::internal::VarintParseSlow64(v7, v20);
                v123 = v111;
                *(a1 + 286) = v112 != 0;
                if (!v111)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v21 = (v7 + 2);
LABEL_28:
                v123 = v21;
                *(a1 + 286) = v20 != 0;
              }

              goto LABEL_196;
            case 0x29u:
              if (v8 != 74)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x2000u;
              v10 = *(a1 + 224);
              if (v10)
              {
                goto LABEL_194;
              }

              v104 = *(a1 + 8);
              if (v104)
              {
                v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
              }

              v105 = MEMORY[0x277C92D60](v104);
              LODWORD(v10) = v105;
              *(a1 + 224) = v105;
              goto LABEL_193;
            case 0x2Au:
              if (v8 != 80)
              {
                goto LABEL_198;
              }

              v5 |= 0x40000000u;
              v101 = (v7 + 1);
              LODWORD(v102) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_177;
              }

              v103 = *v101;
              v102 = (v102 + (v103 << 7) - 128);
              if (v103 < 0)
              {
                v121 = google::protobuf::internal::VarintParseSlow32(v7, v102);
                v123 = v121;
                *(a1 + 296) = v122;
                if (!v121)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v101 = (v7 + 2);
LABEL_177:
                v123 = v101;
                *(a1 + 296) = v102;
              }

              goto LABEL_196;
            case 0x2Bu:
              if (v8 != 90)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_68;
            case 0x2Cu:
              if (v8 != 98)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 2u;
LABEL_68:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v27 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_195;
            case 0x2Du:
              if (v8 != 106)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x4000u;
              v70 = *(a1 + 232);
              if (!v70)
              {
                v71 = *(a1 + 8);
                if (v71)
                {
                  v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
                }

                v72 = MEMORY[0x277C92D00](v71);
                LODWORD(v70) = v72;
                *(a1 + 232) = v72;
                v7 = v123;
              }

              v27 = sub_2760346AC(a3, v70, v7);
              goto LABEL_195;
            case 0x2Eu:
              if (v8 != 112)
              {
                goto LABEL_198;
              }

              v5 |= 0x8000000u;
              v44 = (v7 + 1);
              v43 = *v7;
              if ((v43 & 0x8000000000000000) == 0)
              {
                goto LABEL_73;
              }

              v45 = *v44;
              v43 = (v45 << 7) + v43 - 128;
              if (v45 < 0)
              {
                v113 = google::protobuf::internal::VarintParseSlow64(v7, v43);
                v123 = v113;
                *(a1 + 287) = v114 != 0;
                if (!v113)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v44 = (v7 + 2);
LABEL_73:
                v123 = v44;
                *(a1 + 287) = v43 != 0;
              }

              goto LABEL_196;
            case 0x2Fu:
              if (v8 != 122)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x8000u;
              v10 = *(a1 + 240);
              if (v10)
              {
                goto LABEL_194;
              }

              v108 = *(a1 + 8);
              if (v108)
              {
                v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
              }

              v109 = MEMORY[0x277C92D60](v108);
              LODWORD(v10) = v109;
              *(a1 + 240) = v109;
              goto LABEL_193;
            case 0x30u:
              if (v8 != 130)
              {
                goto LABEL_198;
              }

              v28 = v7 - 2;
              break;
            case 0x31u:
              if (v8 != 136)
              {
                goto LABEL_198;
              }

              v5 |= 0x80000000;
              v97 = (v7 + 1);
              v96 = *v7;
              if ((v96 & 0x8000000000000000) == 0)
              {
                goto LABEL_167;
              }

              v98 = *v97;
              v96 = (v98 << 7) + v96 - 128;
              if (v98 < 0)
              {
                v119 = google::protobuf::internal::VarintParseSlow64(v7, v96);
                v123 = v119;
                *(a1 + 300) = v120 != 0;
                if (!v119)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v97 = (v7 + 2);
LABEL_167:
                v123 = v97;
                *(a1 + 300) = v96 != 0;
              }

              goto LABEL_196;
            case 0x32u:
              if (v8 != 146)
              {
                goto LABEL_198;
              }

              *(a1 + 16) |= 0x10000u;
              v10 = *(a1 + 248);
              if (v10)
              {
                goto LABEL_194;
              }

              v106 = *(a1 + 8);
              if (v106)
              {
                v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
              }

              v107 = MEMORY[0x277C92D60](v106);
              LODWORD(v10) = v107;
              *(a1 + 248) = v107;
LABEL_193:
              v7 = v123;
LABEL_194:
              v27 = sub_27603450C(a3, v10, v7);
              goto LABEL_195;
            default:
LABEL_198:
              if (v8)
              {
                v110 = (v8 & 7) == 4;
              }

              else
              {
                v110 = 1;
              }

              if (v110)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275FB5524((a1 + 8));
              }

              v27 = google::protobuf::internal::UnknownFieldParse();
LABEL_195:
              v123 = v27;
              if (!v27)
              {
LABEL_216:
                v123 = 0;
                goto LABEL_2;
              }

LABEL_196:
              if (sub_275FB1588(a3, &v123))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v29 = (v28 + 2);
            v123 = (v28 + 2);
            v30 = *(a1 + 112);
            if (!v30)
            {
              goto LABEL_40;
            }

            v36 = *(a1 + 104);
            v31 = *v30;
            if (v36 < *v30)
            {
              *(a1 + 104) = v36 + 1;
              v33 = *&v30[2 * v36 + 2];
              goto LABEL_44;
            }

            if (v31 == *(a1 + 108))
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v30 = *(a1 + 112);
              v31 = *v30;
            }

            *v30 = v31 + 1;
            v32 = MEMORY[0x277C92D60](*(a1 + 96));
            LODWORD(v33) = v32;
            v34 = *(a1 + 104);
            v35 = *(a1 + 112) + 8 * v34;
            *(a1 + 104) = v34 + 1;
            *(v35 + 8) = v32;
            v29 = v123;
LABEL_44:
            v28 = sub_27603450C(a3, v33, v29);
            v123 = v28;
            if (!v28)
            {
              goto LABEL_216;
            }

            if (*a3 <= v28 || *v28 != 898)
            {
              goto LABEL_196;
            }
          }
        }

        v7 = (v123 + 2);
      }

      break;
    }

    v123 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v123;
}

unsigned __int8 *sub_275F8B600(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 136);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 144);
  *v4 = 26;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 152);
  *v4 = 34;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(a1 + 160);
  *v4 = 42;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(a1 + 168);
  *v4 = 50;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = v4 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      v4[2] = v34;
      v33 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v32;
    v33 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(a1 + 176);
  *v4 = 58;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    v4[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
      do
      {
        *(v39 - 1) = v40 | 0x80;
        v41 = v40 >> 7;
        ++v39;
        v42 = v40 >> 14;
        v40 >>= 7;
      }

      while (v42);
      *(v39 - 1) = v41;
    }

    else
    {
      v4[2] = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v38;
    v39 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(a1 + 184);
  *v4 = 90;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      v4[2] = v46;
      v45 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v44;
    v45 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x200) != 0)
  {
LABEL_80:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v49 = *(a1 + 192);
    *v4 = 98;
    v50 = *(v49 + 5);
    if (v50 > 0x7F)
    {
      v4[1] = v50 | 0x80;
      v52 = v50 >> 7;
      if (v50 >> 14)
      {
        v51 = v4 + 3;
        do
        {
          *(v51 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++v51;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(v51 - 1) = v53;
      }

      else
      {
        v4[2] = v52;
        v51 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v50;
      v51 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v49, v51, a3);
  }

LABEL_90:
  v55 = *(a1 + 32);
  if (v55)
  {
    for (i = 0; i != v55; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v57 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 106;
      v58 = *(v57 + 5);
      if (v58 > 0x7F)
      {
        v4[1] = v58 | 0x80;
        v60 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v4 + 3;
          do
          {
            *(v59 - 1) = v60 | 0x80;
            v61 = v60 >> 7;
            ++v59;
            v62 = v60 >> 14;
            v60 >>= 7;
          }

          while (v62);
          *(v59 - 1) = v61;
        }

        else
        {
          v4[2] = v60;
          v59 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v58;
        v59 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v57, v59, a3);
    }
  }

  v63 = *(a1 + 56);
  if (v63)
  {
    for (j = 0; j != v63; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v65 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 114;
      v66 = *(v65 + 5);
      if (v66 > 0x7F)
      {
        v4[1] = v66 | 0x80;
        v68 = v66 >> 7;
        if (v66 >> 14)
        {
          v67 = v4 + 3;
          do
          {
            *(v67 - 1) = v68 | 0x80;
            v69 = v68 >> 7;
            ++v67;
            v70 = v68 >> 14;
            v68 >>= 7;
          }

          while (v70);
          *(v67 - 1) = v69;
        }

        else
        {
          v4[2] = v68;
          v67 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v66;
        v67 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v65, v67, a3);
    }
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v71 = *(a1 + 200);
    *v4 = 122;
    v72 = *(v71 + 5);
    if (v72 > 0x7F)
    {
      v4[1] = v72 | 0x80;
      v74 = v72 >> 7;
      if (v72 >> 14)
      {
        v73 = v4 + 3;
        do
        {
          *(v73 - 1) = v74 | 0x80;
          v75 = v74 >> 7;
          ++v73;
          v76 = v74 >> 14;
          v74 >>= 7;
        }

        while (v76);
        *(v73 - 1) = v75;
      }

      else
      {
        v4[2] = v74;
        v73 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v72;
      v73 = v4 + 2;
    }

    v4 = TSA::DocumentArchive::_InternalSerialize(v71, v73, a3);
  }

  v77 = *(a1 + 80);
  if (v77)
  {
    for (k = 0; k != v77; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v79 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 386;
      v80 = *(v79 + 5);
      if (v80 > 0x7F)
      {
        v4[2] = v80 | 0x80;
        v82 = v80 >> 7;
        if (v80 >> 14)
        {
          v81 = v4 + 4;
          do
          {
            *(v81 - 1) = v82 | 0x80;
            v83 = v82 >> 7;
            ++v81;
            v84 = v82 >> 14;
            v82 >>= 7;
          }

          while (v84);
          *(v81 - 1) = v83;
        }

        else
        {
          v4[3] = v82;
          v81 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v80;
        v81 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v79, v81, a3);
    }
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(a1 + 208);
    *v4 = 394;
    v86 = *(v85 + 5);
    if (v86 > 0x7F)
    {
      v4[2] = v86 | 0x80;
      v88 = v86 >> 7;
      if (v86 >> 14)
      {
        v87 = v4 + 4;
        do
        {
          *(v87 - 1) = v88 | 0x80;
          v89 = v88 >> 7;
          ++v87;
          v90 = v88 >> 14;
          v88 >>= 7;
        }

        while (v90);
        *(v87 - 1) = v89;
      }

      else
      {
        v4[3] = v88;
        v87 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v86;
      v87 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v85, v87, a3);
    if ((v6 & 0x1000) == 0)
    {
LABEL_139:
      if ((v6 & 0x1000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_179;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_139;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v91 = *(a1 + 216);
  *v4 = 418;
  v92 = *(v91 + 5);
  if (v92 > 0x7F)
  {
    v4[2] = v92 | 0x80;
    v94 = v92 >> 7;
    if (v92 >> 14)
    {
      v93 = v4 + 4;
      do
      {
        *(v93 - 1) = v94 | 0x80;
        v95 = v94 >> 7;
        ++v93;
        v96 = v94 >> 14;
        v94 >>= 7;
      }

      while (v96);
      *(v93 - 1) = v95;
    }

    else
    {
      v4[3] = v94;
      v93 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v92;
    v93 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v91, v93, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_140:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_182;
  }

LABEL_179:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v97 = *(a1 + 284);
  *v4 = 424;
  v4[2] = v97;
  v4 += 3;
  if ((v6 & 0x20000) == 0)
  {
LABEL_141:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_185;
  }

LABEL_182:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v98 = *(a1 + 256);
  *v4 = 501;
  *(v4 + 2) = v98;
  v4 += 6;
  if ((v6 & 0x40000) == 0)
  {
LABEL_142:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_188;
  }

LABEL_185:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v99 = *(a1 + 260);
  *v4 = 509;
  *(v4 + 2) = v99;
  v4 += 6;
  if ((v6 & 0x80000) == 0)
  {
LABEL_143:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_191;
  }

LABEL_188:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v100 = *(a1 + 264);
  *v4 = 645;
  *(v4 + 2) = v100;
  v4 += 6;
  if ((v6 & 0x100000) == 0)
  {
LABEL_144:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_194;
  }

LABEL_191:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v101 = *(a1 + 268);
  *v4 = 653;
  *(v4 + 2) = v101;
  v4 += 6;
  if ((v6 & 0x200000) == 0)
  {
LABEL_145:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_197;
  }

LABEL_194:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v102 = *(a1 + 272);
  *v4 = 661;
  *(v4 + 2) = v102;
  v4 += 6;
  if ((v6 & 0x400000) == 0)
  {
LABEL_146:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_200;
  }

LABEL_197:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v103 = *(a1 + 276);
  *v4 = 669;
  *(v4 + 2) = v103;
  v4 += 6;
  if ((v6 & 0x800000) == 0)
  {
LABEL_147:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_203;
  }

LABEL_200:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v104 = *(a1 + 280);
  *v4 = 677;
  *(v4 + 2) = v104;
  v4 += 6;
  if ((v6 & 0x10000000) == 0)
  {
LABEL_148:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_206;
  }

LABEL_203:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v105 = *(a1 + 288);
  *v4 = 685;
  *(v4 + 2) = v105;
  v4 += 6;
  if ((v6 & 0x20000000) == 0)
  {
LABEL_149:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_209;
  }

LABEL_206:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v106 = *(a1 + 292);
  *v4 = 693;
  *(v4 + 2) = v106;
  v4 += 6;
  if ((v6 & 0x2000000) == 0)
  {
LABEL_150:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_212;
  }

LABEL_209:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v107 = *(a1 + 285);
  *v4 = 696;
  v4[2] = v107;
  v4 += 3;
  if ((v6 & 0x4000000) == 0)
  {
LABEL_151:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_215;
  }

LABEL_212:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v108 = *(a1 + 286);
  *v4 = 704;
  v4[2] = v108;
  v4 += 3;
  if ((v6 & 0x2000) == 0)
  {
LABEL_152:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

LABEL_225:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v115 = *(a1 + 296);
    *v4 = 720;
    if (v115 > 0x7F)
    {
      v4[2] = v115 | 0x80;
      v116 = v115 >> 7;
      if (v115 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v116 | 0x80;
          v117 = v116 >> 7;
          ++v4;
          v118 = v116 >> 14;
          v116 >>= 7;
        }

        while (v118);
        *(v4 - 1) = v117;
        if (v6)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v4[3] = v116;
        v4 += 4;
        if (v6)
        {
          goto LABEL_236;
        }
      }
    }

    else
    {
      v4[2] = v115;
      v4 += 3;
      if (v6)
      {
        goto LABEL_236;
      }
    }

LABEL_154:
    if ((v6 & 2) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_237;
  }

LABEL_215:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v109 = *(a1 + 224);
  *v4 = 714;
  v110 = *(v109 + 5);
  if (v110 > 0x7F)
  {
    v4[2] = v110 | 0x80;
    v112 = v110 >> 7;
    if (v110 >> 14)
    {
      v111 = v4 + 4;
      do
      {
        *(v111 - 1) = v112 | 0x80;
        v113 = v112 >> 7;
        ++v111;
        v114 = v112 >> 14;
        v112 >>= 7;
      }

      while (v114);
      *(v111 - 1) = v113;
    }

    else
    {
      v4[3] = v112;
      v111 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v110;
    v111 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v109, v111, a3);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_225;
  }

LABEL_153:
  if ((v6 & 1) == 0)
  {
    goto LABEL_154;
  }

LABEL_236:
  v4 = sub_275F8C698(a3, 43, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_155:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_238;
  }

LABEL_237:
  v4 = sub_275F8C698(a3, 44, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_156:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_248;
  }

LABEL_238:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v119 = *(a1 + 232);
  *v4 = 746;
  v120 = *(v119 + 5);
  if (v120 > 0x7F)
  {
    v4[2] = v120 | 0x80;
    v122 = v120 >> 7;
    if (v120 >> 14)
    {
      v121 = v4 + 4;
      do
      {
        *(v121 - 1) = v122 | 0x80;
        v123 = v122 >> 7;
        ++v121;
        v124 = v122 >> 14;
        v122 >>= 7;
      }

      while (v124);
      *(v121 - 1) = v123;
    }

    else
    {
      v4[3] = v122;
      v121 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v120;
    v121 = v4 + 3;
  }

  v4 = TSP::DataReference::_InternalSerialize(v119, v121, a3);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_157:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_251;
  }

LABEL_248:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v125 = *(a1 + 287);
  *v4 = 752;
  v4[2] = v125;
  v4 += 3;
  if ((v6 & 0x8000) != 0)
  {
LABEL_251:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v126 = *(a1 + 240);
    *v4 = 762;
    v127 = *(v126 + 5);
    if (v127 > 0x7F)
    {
      v4[2] = v127 | 0x80;
      v129 = v127 >> 7;
      if (v127 >> 14)
      {
        v128 = v4 + 4;
        do
        {
          *(v128 - 1) = v129 | 0x80;
          v130 = v129 >> 7;
          ++v128;
          v131 = v129 >> 14;
          v129 >>= 7;
        }

        while (v131);
        *(v128 - 1) = v130;
      }

      else
      {
        v4[3] = v129;
        v128 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v127;
      v128 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v126, v128, a3);
  }

LABEL_261:
  v132 = *(a1 + 104);
  if (v132)
  {
    for (m = 0; m != v132; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v134 = *(*(a1 + 112) + 8 * m + 8);
      *v4 = 898;
      v135 = *(v134 + 5);
      if (v135 > 0x7F)
      {
        v4[2] = v135 | 0x80;
        v137 = v135 >> 7;
        if (v135 >> 14)
        {
          v136 = v4 + 4;
          do
          {
            *(v136 - 1) = v137 | 0x80;
            v138 = v137 >> 7;
            ++v136;
            v139 = v137 >> 14;
            v137 >>= 7;
          }

          while (v139);
          *(v136 - 1) = v138;
        }

        else
        {
          v4[3] = v137;
          v136 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v135;
        v136 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v134, v136, a3);
    }
  }

  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_279;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v140 = *(a1 + 300);
  *v4 = 904;
  v4[2] = v140;
  v4 += 3;
  if ((v6 & 0x10000) != 0)
  {
LABEL_279:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v141 = *(a1 + 248);
    *v4 = 914;
    v142 = *(v141 + 5);
    if (v142 > 0x7F)
    {
      v4[2] = v142 | 0x80;
      v144 = v142 >> 7;
      if (v142 >> 14)
      {
        v143 = v4 + 4;
        do
        {
          *(v143 - 1) = v144 | 0x80;
          v145 = v144 >> 7;
          ++v143;
          v146 = v144 >> 14;
          v144 >>= 7;
        }

        while (v146);
        *(v143 - 1) = v145;
      }

      else
      {
        v4[3] = v144;
        v143 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v142;
      v143 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v141, v143, a3);
  }

LABEL_289:
  v147 = *(a1 + 8);
  if ((v147 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v147 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275F8C698(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50]();
}

uint64_t sub_275F8C7C4(uint64_t a1)
{
  if ((*(a1 + 17) & 4) != 0)
  {
    v3 = TSA::DocumentArchive::ByteSizeLong(*(a1 + 200));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 80);
  v19 = v12 + 2 * v18;
  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TSP::Reference::ByteSizeLong(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 104);
  v26 = v19 + 2 * v25;
  v27 = *(a1 + 112);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSP::Reference::ByteSizeLong(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(a1 + 16);
  if (!v32)
  {
    goto LABEL_38;
  }

  if (v32)
  {
    v41 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v41 + 23);
    v43 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v43 = v42;
    }

    v26 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v32 & 2) == 0)
    {
LABEL_31:
      if ((v32 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_94;
    }
  }

  else if ((v32 & 2) == 0)
  {
    goto LABEL_31;
  }

  v44 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v26 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v32 & 4) == 0)
  {
LABEL_32:
    if ((v32 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_95;
  }

LABEL_94:
  v47 = TSP::Reference::ByteSizeLong(*(a1 + 136));
  v26 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 8) == 0)
  {
LABEL_33:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_96;
  }

LABEL_95:
  v48 = TSP::Reference::ByteSizeLong(*(a1 + 144));
  v26 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x10) == 0)
  {
LABEL_34:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_35;
    }

LABEL_97:
    v50 = TSP::Reference::ByteSizeLong(*(a1 + 160));
    v26 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 0x40) == 0)
    {
LABEL_36:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    goto LABEL_98;
  }

LABEL_96:
  v49 = TSP::Reference::ByteSizeLong(*(a1 + 152));
  v26 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x20) != 0)
  {
    goto LABEL_97;
  }

LABEL_35:
  if ((v32 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_98:
  v51 = TSP::Reference::ByteSizeLong(*(a1 + 168));
  v26 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x80) != 0)
  {
LABEL_37:
    v33 = TSP::Reference::ByteSizeLong(*(a1 + 176));
    v26 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_38:
  if ((v32 & 0x300) != 0)
  {
    if ((v32 & 0x100) != 0)
    {
      v34 = TSP::Reference::ByteSizeLong(*(a1 + 184));
      v26 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v32 & 0x200) != 0)
    {
      v35 = TSP::Reference::ByteSizeLong(*(a1 + 192));
      v26 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v32 & 0xF800) == 0)
  {
    goto LABEL_50;
  }

  if ((v32 & 0x800) != 0)
  {
    v52 = TSP::Reference::ByteSizeLong(*(a1 + 208));
    v26 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v32 & 0x1000) == 0)
    {
LABEL_46:
      if ((v32 & 0x2000) == 0)
      {
        goto LABEL_47;
      }

LABEL_102:
      v54 = TSP::Reference::ByteSizeLong(*(a1 + 224));
      v26 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v32 & 0x4000) == 0)
      {
LABEL_48:
        if ((v32 & 0x8000) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      goto LABEL_103;
    }
  }

  else if ((v32 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  v53 = TSP::Reference::ByteSizeLong(*(a1 + 216));
  v26 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v32 & 0x2000) != 0)
  {
    goto LABEL_102;
  }

LABEL_47:
  if ((v32 & 0x4000) == 0)
  {
    goto LABEL_48;
  }

LABEL_103:
  v55 = TSP::DataReference::ByteSizeLong(*(a1 + 232));
  v26 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v32 & 0x8000) != 0)
  {
LABEL_49:
    v36 = TSP::Reference::ByteSizeLong(*(a1 + 240));
    v26 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_50:
  if ((v32 & 0xFF0000) != 0)
  {
    if ((v32 & 0x10000) != 0)
    {
      v37 = TSP::Reference::ByteSizeLong(*(a1 + 248));
      v26 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v38 = v26 + 6;
    if ((v32 & 0x20000) == 0)
    {
      v38 = v26;
    }

    if ((v32 & 0x40000) != 0)
    {
      v38 += 6;
    }

    if ((v32 & 0x80000) != 0)
    {
      v38 += 6;
    }

    if ((v32 & 0x100000) != 0)
    {
      v38 += 6;
    }

    if ((v32 & 0x200000) != 0)
    {
      v38 += 6;
    }

    if ((v32 & 0x400000) != 0)
    {
      v38 += 6;
    }

    if ((v32 & 0x800000) != 0)
    {
      v26 = v38 + 6;
    }

    else
    {
      v26 = v38;
    }
  }

  if (HIBYTE(v32))
  {
    v39 = v26 + 3;
    if ((v32 & 0x1000000) == 0)
    {
      v39 = v26;
    }

    if ((v32 & 0x2000000) != 0)
    {
      v39 += 3;
    }

    if ((v32 & 0x4000000) != 0)
    {
      v39 += 3;
    }

    if ((v32 & 0x8000000) != 0)
    {
      v39 += 3;
    }

    if ((v32 & 0x10000000) != 0)
    {
      v39 += 6;
    }

    if ((v32 & 0x20000000) != 0)
    {
      v39 += 6;
    }

    if ((v32 & 0x40000000) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 296) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if (v32 >= 0)
    {
      v26 = v39;
    }

    else
    {
      v26 = v39 + 3;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v26;
    return v26;
  }
}

uint64_t sub_275F8CDF8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885006D0, 0);
  if (v4)
  {

    return sub_275F8CEA0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F8CEA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5808(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_275FB5808(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_275FB5808(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275FB5808(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 16);
  if (!v25)
  {
    goto LABEL_75;
  }

  if (v25)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v25 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v26 = MEMORY[0x277D80A18];
  if ((v25 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v27 = *(v3 + 136);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C92D60](v28);
      *(v3 + 136) = v27;
    }

    if (*(a2 + 136))
    {
      v29 = *(a2 + 136);
    }

    else
    {
      v29 = v26;
    }

    result = TSP::Reference::MergeFrom(v27, v29);
    if ((v25 & 8) == 0)
    {
LABEL_22:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_43;
    }
  }

  else if ((v25 & 8) == 0)
  {
    goto LABEL_22;
  }

  *(v3 + 16) |= 8u;
  v30 = *(v3 + 144);
  if (!v30)
  {
    v31 = *(v3 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x277C92D60](v31);
    *(v3 + 144) = v30;
  }

  if (*(a2 + 144))
  {
    v32 = *(a2 + 144);
  }

  else
  {
    v32 = v26;
  }

  result = TSP::Reference::MergeFrom(v30, v32);
  if ((v25 & 0x10) == 0)
  {
LABEL_23:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_24;
    }

LABEL_51:
    *(v3 + 16) |= 0x20u;
    v36 = *(v3 + 160);
    if (!v36)
    {
      v37 = *(v3 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = MEMORY[0x277C92D60](v37);
      *(v3 + 160) = v36;
    }

    if (*(a2 + 160))
    {
      v38 = *(a2 + 160);
    }

    else
    {
      v38 = v26;
    }

    result = TSP::Reference::MergeFrom(v36, v38);
    if ((v25 & 0x40) == 0)
    {
LABEL_25:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_43:
  *(v3 + 16) |= 0x10u;
  v33 = *(v3 + 152);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x277C92D60](v34);
    *(v3 + 152) = v33;
  }

  if (*(a2 + 152))
  {
    v35 = *(a2 + 152);
  }

  else
  {
    v35 = v26;
  }

  result = TSP::Reference::MergeFrom(v33, v35);
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_24:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_59:
  *(v3 + 16) |= 0x40u;
  v39 = *(v3 + 168);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C92D60](v40);
    *(v3 + 168) = v39;
  }

  if (*(a2 + 168))
  {
    v41 = *(a2 + 168);
  }

  else
  {
    v41 = v26;
  }

  result = TSP::Reference::MergeFrom(v39, v41);
  if ((v25 & 0x80) != 0)
  {
LABEL_67:
    *(v3 + 16) |= 0x80u;
    v42 = *(v3 + 176);
    if (!v42)
    {
      v43 = *(v3 + 8);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = MEMORY[0x277C92D60](v43);
      *(v3 + 176) = v42;
    }

    if (*(a2 + 176))
    {
      v44 = *(a2 + 176);
    }

    else
    {
      v44 = v26;
    }

    result = TSP::Reference::MergeFrom(v42, v44);
  }

LABEL_75:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v25 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v45 = *(v3 + 184);
    if (!v45)
    {
      v46 = *(v3 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x277C92D60](v46);
      *(v3 + 184) = v45;
    }

    if (*(a2 + 184))
    {
      v47 = *(a2 + 184);
    }

    else
    {
      v47 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v45, v47);
    if ((v25 & 0x200) == 0)
    {
LABEL_78:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(v3 + 16) |= 0x200u;
  v48 = *(v3 + 192);
  if (!v48)
  {
    v49 = *(v3 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C92D60](v49);
    *(v3 + 192) = v48;
  }

  if (*(a2 + 192))
  {
    v50 = *(a2 + 192);
  }

  else
  {
    v50 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v48, v50);
  if ((v25 & 0x400) == 0)
  {
LABEL_79:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(v3 + 16) |= 0x400u;
  v51 = *(v3 + 200);
  if (!v51)
  {
    v52 = *(v3 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = MEMORY[0x277C92CD0](v52);
    *(v3 + 200) = v51;
  }

  if (*(a2 + 200))
  {
    v53 = *(a2 + 200);
  }

  else
  {
    v53 = MEMORY[0x277D80010];
  }

  result = TSA::DocumentArchive::MergeFrom(v51, v53);
  if ((v25 & 0x800) == 0)
  {
LABEL_80:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(v3 + 16) |= 0x800u;
  v54 = *(v3 + 208);
  if (!v54)
  {
    v55 = *(v3 + 8);
    if (v55)
    {
      v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
    }

    v54 = MEMORY[0x277C92D60](v55);
    *(v3 + 208) = v54;
  }

  if (*(a2 + 208))
  {
    v56 = *(a2 + 208);
  }

  else
  {
    v56 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v54, v56);
  if ((v25 & 0x1000) == 0)
  {
LABEL_81:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(v3 + 16) |= 0x1000u;
  v57 = *(v3 + 216);
  if (!v57)
  {
    v58 = *(v3 + 8);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = MEMORY[0x277C92D60](v58);
    *(v3 + 216) = v57;
  }

  if (*(a2 + 216))
  {
    v59 = *(a2 + 216);
  }

  else
  {
    v59 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v57, v59);
  if ((v25 & 0x2000) == 0)
  {
LABEL_82:
    if ((v25 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(v3 + 16) |= 0x2000u;
  v60 = *(v3 + 224);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x277C92D60](v61);
    *(v3 + 224) = v60;
  }

  if (*(a2 + 224))
  {
    v62 = *(a2 + 224);
  }

  else
  {
    v62 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v60, v62);
  if ((v25 & 0x4000) == 0)
  {
LABEL_83:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(v3 + 16) |= 0x4000u;
  v63 = *(v3 + 232);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = MEMORY[0x277C92D00](v64);
    *(v3 + 232) = v63;
  }

  if (*(a2 + 232))
  {
    v65 = *(a2 + 232);
  }

  else
  {
    v65 = MEMORY[0x277D80A30];
  }

  result = TSP::DataReference::MergeFrom(v63, v65);
  if ((v25 & 0x8000) != 0)
  {
LABEL_141:
    *(v3 + 16) |= 0x8000u;
    v66 = *(v3 + 240);
    if (!v66)
    {
      v67 = *(v3 + 8);
      if (v67)
      {
        v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
      }

      v66 = MEMORY[0x277C92D60](v67);
      *(v3 + 240) = v66;
    }

    if (*(a2 + 240))
    {
      v68 = *(a2 + 240);
    }

    else
    {
      v68 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v66, v68);
  }

LABEL_149:
  if ((v25 & 0xFF0000) == 0)
  {
    goto LABEL_160;
  }

  if ((v25 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v69 = *(v3 + 248);
    if (!v69)
    {
      v70 = *(v3 + 8);
      if (v70)
      {
        v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = MEMORY[0x277C92D60](v70);
      *(v3 + 248) = v69;
    }

    if (*(a2 + 248))
    {
      v71 = *(a2 + 248);
    }

    else
    {
      v71 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v69, v71);
    if ((v25 & 0x20000) == 0)
    {
LABEL_152:
      if ((v25 & 0x40000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_180;
    }
  }

  else if ((v25 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(v3 + 256) = *(a2 + 256);
  if ((v25 & 0x40000) == 0)
  {
LABEL_153:
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_181;
  }

LABEL_180:
  *(v3 + 260) = *(a2 + 260);
  if ((v25 & 0x80000) == 0)
  {
LABEL_154:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_182;
  }

LABEL_181:
  *(v3 + 264) = *(a2 + 264);
  if ((v25 & 0x100000) == 0)
  {
LABEL_155:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(v3 + 268) = *(a2 + 268);
  if ((v25 & 0x200000) == 0)
  {
LABEL_156:
    if ((v25 & 0x400000) == 0)
    {
      goto LABEL_157;
    }

LABEL_184:
    *(v3 + 276) = *(a2 + 276);
    if ((v25 & 0x800000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

LABEL_183:
  *(v3 + 272) = *(a2 + 272);
  if ((v25 & 0x400000) != 0)
  {
    goto LABEL_184;
  }

LABEL_157:
  if ((v25 & 0x800000) != 0)
  {
LABEL_158:
    *(v3 + 280) = *(a2 + 280);
  }

LABEL_159:
  *(v3 + 16) |= v25;
LABEL_160:
  if (!HIBYTE(v25))
  {
    return result;
  }

  if ((v25 & 0x1000000) != 0)
  {
    *(v3 + 284) = *(a2 + 284);
    if ((v25 & 0x2000000) == 0)
    {
LABEL_163:
      if ((v25 & 0x4000000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_188;
    }
  }

  else if ((v25 & 0x2000000) == 0)
  {
    goto LABEL_163;
  }

  *(v3 + 285) = *(a2 + 285);
  if ((v25 & 0x4000000) == 0)
  {
LABEL_164:
    if ((v25 & 0x8000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(v3 + 286) = *(a2 + 286);
  if ((v25 & 0x8000000) == 0)
  {
LABEL_165:
    if ((v25 & 0x10000000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_190;
  }

LABEL_189:
  *(v3 + 287) = *(a2 + 287);
  if ((v25 & 0x10000000) == 0)
  {
LABEL_166:
    if ((v25 & 0x20000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(v3 + 288) = *(a2 + 288);
  if ((v25 & 0x20000000) == 0)
  {
LABEL_167:
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_168;
    }

LABEL_192:
    *(v3 + 296) = *(a2 + 296);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

LABEL_193:
    *(v3 + 300) = *(a2 + 300);
    goto LABEL_169;
  }

LABEL_191:
  *(v3 + 292) = *(a2 + 292);
  if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_192;
  }

LABEL_168:
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_193;
  }

LABEL_169:
  *(v3 + 16) |= v25;
  return result;
}

uint64_t *sub_275F8D670(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F8A62C(result);

    return sub_275F8CDF8(v4, a2);
  }

  return result;
}

uint64_t sub_275F8D6BC(uint64_t a1)
{
  if ((*(a1 + 17) & 4) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 80);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Reference::IsInitialized(*(*(a1 + 88) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 104);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::Reference::IsInitialized(*(*(a1 + 112) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 16);
  if ((v15 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x80) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x200) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x400) != 0)
  {
    result = TSA::DocumentArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x1000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x2000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x4000) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x8000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 16);
  }

  if ((v15 & 0x10000) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 248));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275F8D8FC(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FEA90;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812F8438, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  return a1;
}

uint64_t *sub_275F8D964(uint64_t *a1)
{
  if (a1 != &qword_2812F8708 && a1[3])
  {
    v2 = MEMORY[0x277C92B40]();
    MEMORY[0x277C93390](v2, 0x10A1C401B5AB65DLL);
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275F8D9C8(uint64_t *a1)
{
  sub_275F8D964(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F8DA08()
{
  if (atomic_load_explicit(dword_2812F8438, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F8708;
}

uint64_t *sub_275F8DA48(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSS::ThemeArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275F8DAA4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275FB1588(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D70](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27603477C(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275F8DBEC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 11);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSS::ThemeArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F8DCDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSS::ThemeArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275F8DD68(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885006E8, 0);
  if (v4)
  {

    return sub_275F8DE10(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F8DE10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C92D70](v5);
    }

    return MEMORY[0x2821EB178]();
  }

  return result;
}

uint64_t *sub_275F8DEB8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F8DA48(result);

    return sub_275F8DD68(v4, a2);
  }

  return result;
}

uint64_t sub_275F8DF04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821EB368](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275F8DF54(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FEB40;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812F83B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  *(a1 + 64) = v3;
  *(a1 + 72) = v3;
  *(a1 + 80) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0x101010101010101;
  *(a1 + 124) = 16843009;
  return a1;
}

uint64_t sub_275F8DFEC(uint64_t a1)
{
  sub_275F8E020(a1);
  sub_275F8A514((a1 + 8));
  return a1;
}

uint64_t sub_275F8E020(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C93390](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C93390](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C93390](v6, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C93390](v7, 0x1012C40EC159624);
  }

  v8 = v1[8];
  if (v8 != v3)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x277C93390](v8, 0x1012C40EC159624);
  }

  v9 = v1[9];
  if (v9 != v3)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    result = MEMORY[0x277C93390](v9, 0x1012C40EC159624);
  }

  v10 = v1[10];
  if (v10 != v3)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    JUMPOUT(0x277C93390);
  }

  return result;
}

void sub_275F8E1C0(uint64_t a1)
{
  sub_275F8DFEC(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F8E200()
{
  if (atomic_load_explicit(dword_2812F83B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F8728;
}

uint64_t *sub_275F8E240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v1 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v1 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v1 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v1 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v9 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
      }

      goto LABEL_42;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 94) = 0;
    *(a1 + 88) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 108) = 0;
    *(a1 + 102) = 0;
    *(a1 + 116) = 16843009;
  }

  if (HIBYTE(v1))
  {
    *(a1 + 120) = 0x101010101010101;
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v11)
  {
    return sub_275FB57B8(result);
  }

  return result;
}

google::protobuf::internal *sub_275F8E434(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v128 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v128) & 1) == 0)
  {
    while (1)
    {
      v7 = (v128 + 1);
      v8 = *v128;
      if (*v128 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v128, (v9 - 128));
          v128 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_214;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v128 + 2);
      }

      v128 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_156;
          }

          v5 |= 0x1000000u;
          v11 = (v7 + 1);
          v10 = *v7;
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v12 = *v11;
          v10 = (v12 << 7) + v10 - 128;
          if ((v12 & 0x80000000) == 0)
          {
            v11 = (v7 + 2);
LABEL_12:
            v128 = v11;
            *(a1 + 120) = v10 != 0;
            goto LABEL_140;
          }

          v102 = google::protobuf::internal::VarintParseSlow64(v7, v10);
          v128 = v102;
          *(a1 + 120) = v103 != 0;
          if (!v102)
          {
            goto LABEL_214;
          }

          goto LABEL_140;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_156;
          }

          v5 |= 0x2000000u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v104 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v128 = v104;
            *(a1 + 121) = v105 != 0;
            if (!v104)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_80:
            v128 = v43;
            *(a1 + 121) = v42 != 0;
          }

          goto LABEL_140;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_156;
          }

          v5 |= 0x4000000u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v92 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v128 = v92;
            *(a1 + 122) = v93 != 0;
            if (!v92)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_53:
            v128 = v28;
            *(a1 + 122) = v27 != 0;
          }

          goto LABEL_140;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_156;
          }

          v5 |= 0x8000000u;
          v61 = (v7 + 1);
          v60 = *v7;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v116 = google::protobuf::internal::VarintParseSlow64(v7, v60);
            v128 = v116;
            *(a1 + 123) = v117 != 0;
            if (!v116)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v61 = (v7 + 2);
LABEL_110:
            v128 = v61;
            *(a1 + 123) = v60 != 0;
          }

          goto LABEL_140;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_156;
          }

          v5 |= 0x10000000u;
          v64 = (v7 + 1);
          v63 = *v7;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v118 = google::protobuf::internal::VarintParseSlow64(v7, v63);
            v128 = v118;
            *(a1 + 124) = v119 != 0;
            if (!v118)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v64 = (v7 + 2);
LABEL_115:
            v128 = v64;
            *(a1 + 124) = v63 != 0;
          }

          goto LABEL_140;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_156;
          }

          v5 |= 0x20000000u;
          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v98 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            v128 = v98;
            *(a1 + 125) = v99 != 0;
            if (!v98)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v37 = (v7 + 2);
LABEL_68:
            v128 = v37;
            *(a1 + 125) = v36 != 0;
          }

          goto LABEL_140;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_156;
          }

          v5 |= 0x100u;
          v46 = (v7 + 1);
          v45 = *v7;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v106 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v128 = v106;
            *(a1 + 88) = v107 != 0;
            if (!v106)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_85:
            v128 = v46;
            *(a1 + 88) = v45 != 0;
          }

          goto LABEL_140;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_156;
          }

          v5 |= 0x40000000u;
          v49 = (v7 + 1);
          v48 = *v7;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v108 = google::protobuf::internal::VarintParseSlow64(v7, v48);
            v128 = v108;
            *(a1 + 126) = v109 != 0;
            if (!v108)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v49 = (v7 + 2);
LABEL_90:
            v128 = v49;
            *(a1 + 126) = v48 != 0;
          }

          goto LABEL_140;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_156;
          }

          v5 |= 0x200u;
          v70 = (v7 + 1);
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_125;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v122 = google::protobuf::internal::VarintParseSlow64(v7, v69);
            v128 = v122;
            *(a1 + 89) = v123 != 0;
            if (!v122)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v70 = (v7 + 2);
LABEL_125:
            v128 = v70;
            *(a1 + 89) = v69 != 0;
          }

          goto LABEL_140;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_156;
          }

          v5 |= 0x400u;
          v67 = (v7 + 1);
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_120;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v120 = google::protobuf::internal::VarintParseSlow64(v7, v66);
            v128 = v120;
            *(a1 + 90) = v121 != 0;
            if (!v120)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v67 = (v7 + 2);
LABEL_120:
            v128 = v67;
            *(a1 + 90) = v66 != 0;
          }

          goto LABEL_140;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_156;
          }

          v5 |= 0x800u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v88 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v128 = v88;
            *(a1 + 91) = v89 != 0;
            if (!v88)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_32:
            v128 = v19;
            *(a1 + 91) = v18 != 0;
          }

          goto LABEL_140;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_156;
          }

          v5 |= 0x80000000;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_73;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v100 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v128 = v100;
            *(a1 + 127) = v101 != 0;
            if (!v100)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_73:
            v128 = v40;
            *(a1 + 127) = v39 != 0;
          }

          goto LABEL_140;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_156;
          }

          v5 |= 0x100000u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v90 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            v128 = v90;
            *(a1 + 116) = v91 != 0;
            if (!v90)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v25 = (v7 + 2);
LABEL_46:
            v128 = v25;
            *(a1 + 116) = v24 != 0;
          }

          goto LABEL_140;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_156;
          }

          v5 |= 0x1000u;
          v16 = (v7 + 1);
          LODWORD(v15) = *v7;
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_23;
          }

          v17 = *v16;
          v15 = (v15 + (v17 << 7) - 128);
          if (v17 < 0)
          {
            v86 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v128 = v86;
            *(a1 + 92) = v87;
            if (!v86)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_23:
            v128 = v16;
            *(a1 + 92) = v15;
          }

          goto LABEL_140;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_156;
          }

          v5 |= 0x200000u;
          v52 = (v7 + 1);
          v51 = *v7;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v110 = google::protobuf::internal::VarintParseSlow64(v7, v51);
            v128 = v110;
            *(a1 + 117) = v111 != 0;
            if (!v110)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v52 = (v7 + 2);
LABEL_95:
            v128 = v52;
            *(a1 + 117) = v51 != 0;
          }

          goto LABEL_140;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_156;
          }

          v5 |= 0x400000u;
          v55 = (v7 + 1);
          v54 = *v7;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_100;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v112 = google::protobuf::internal::VarintParseSlow64(v7, v54);
            v128 = v112;
            *(a1 + 118) = v113 != 0;
            if (!v112)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v55 = (v7 + 2);
LABEL_100:
            v128 = v55;
            *(a1 + 118) = v54 != 0;
          }

          goto LABEL_140;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_156;
          }

          v5 |= 0x800000u;
          v76 = (v7 + 1);
          v75 = *v7;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_135;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v126 = google::protobuf::internal::VarintParseSlow64(v7, v75);
            v128 = v126;
            *(a1 + 119) = v127 != 0;
            if (!v126)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v76 = (v7 + 2);
LABEL_135:
            v128 = v76;
            *(a1 + 119) = v75 != 0;
          }

          goto LABEL_140;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_156;
          }

          v5 |= 0x4000u;
          v73 = (v7 + 1);
          v72 = *v7;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_130;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v124 = google::protobuf::internal::VarintParseSlow64(v7, v72);
            v128 = v124;
            *(a1 + 100) = v125 != 0;
            if (!v124)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v73 = (v7 + 2);
LABEL_130:
            v128 = v73;
            *(a1 + 100) = v72 != 0;
          }

          goto LABEL_140;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_138;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_138;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 4u;
          goto LABEL_138;
        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 8u;
          goto LABEL_138;
        case 0x18u:
          if (v8 != 194)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 0x10u;
          goto LABEL_138;
        case 0x19u:
          if (v8 != 202)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 0x20u;
          goto LABEL_138;
        case 0x1Au:
          if (v8 != 210)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 0x40u;
          goto LABEL_138;
        case 0x1Bu:
          if (v8 != 218)
          {
            goto LABEL_156;
          }

          *(a1 + 16) |= 0x80u;
LABEL_138:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v78 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_139;
        case 0x1Eu:
          if (v8 != 240)
          {
            goto LABEL_156;
          }

          v83 = (v7 + 1);
          v82 = *v7;
          if ((v82 & 0x8000000000000000) == 0)
          {
            goto LABEL_153;
          }

          v84 = *v83;
          v82 = (v84 << 7) + v82 - 128;
          if (v84 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v7, v82);
            if (!v128)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v83 = (v7 + 2);
LABEL_153:
            v128 = v83;
          }

          if (v82 > 2)
          {
            sub_2760376F0();
          }

          else
          {
            *(a1 + 16) |= 0x2000u;
            *(a1 + 96) = v82;
          }

          goto LABEL_140;
        case 0x1Fu:
          if (v8 != 248)
          {
            goto LABEL_156;
          }

          v80 = (v7 + 1);
          v79 = *v7;
          if ((v79 & 0x8000000000000000) == 0)
          {
            goto LABEL_146;
          }

          v81 = *v80;
          v79 = (v81 << 7) + v79 - 128;
          if (v81 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v7, v79);
            if (!v128)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v80 = (v7 + 2);
LABEL_146:
            v128 = v80;
          }

          if (v79 > 5)
          {
            sub_2760376B4();
          }

          else
          {
            *(a1 + 16) |= 0x20000u;
            *(a1 + 104) = v79;
          }

          goto LABEL_140;
        case 0x20u:
          if (v8)
          {
            goto LABEL_156;
          }

          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            if (!v128)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_37:
            v128 = v22;
          }

          if (v21 > 2)
          {
            sub_276037678();
          }

          else
          {
            *(a1 + 16) |= 0x40000u;
            *(a1 + 108) = v21;
          }

          goto LABEL_140;
        case 0x21u:
          if (v8 != 8)
          {
            goto LABEL_156;
          }

          v5 |= 0x80000u;
          v31 = (v7 + 1);
          LODWORD(v30) = *v7;
          if ((v30 & 0x80) == 0)
          {
            goto LABEL_58;
          }

          v32 = *v31;
          v30 = (v30 + (v32 << 7) - 128);
          if (v32 < 0)
          {
            v94 = google::protobuf::internal::VarintParseSlow64(v7, v30);
            v128 = v94;
            *(a1 + 112) = v95;
            if (!v94)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_58:
            v128 = v31;
            *(a1 + 112) = v30;
          }

          goto LABEL_140;
        case 0x22u:
          if (v8 != 16)
          {
            goto LABEL_156;
          }

          v5 |= 0x8000u;
          v58 = (v7 + 1);
          v57 = *v7;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v114 = google::protobuf::internal::VarintParseSlow64(v7, v57);
            v128 = v114;
            *(a1 + 101) = v115 != 0;
            if (!v114)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v58 = (v7 + 2);
LABEL_105:
            v128 = v58;
            *(a1 + 101) = v57 != 0;
          }

          goto LABEL_140;
        case 0x28u:
          if (v8 != 64)
          {
            goto LABEL_156;
          }

          v5 |= 0x10000u;
          v34 = (v7 + 1);
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v96 = google::protobuf::internal::VarintParseSlow64(v7, v33);
            v128 = v96;
            *(a1 + 102) = v97 != 0;
            if (!v96)
            {
              goto LABEL_214;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_63:
            v128 = v34;
            *(a1 + 102) = v33 != 0;
          }

          goto LABEL_140;
        default:
LABEL_156:
          if (v8)
          {
            v85 = (v8 & 7) == 4;
          }

          else
          {
            v85 = 1;
          }

          if (v85)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275FB5524((a1 + 8));
          }

          v78 = google::protobuf::internal::UnknownFieldParse();
LABEL_139:
          v128 = v78;
          if (!v78)
          {
LABEL_214:
            v128 = 0;
            goto LABEL_2;
          }

LABEL_140:
          if (sub_275FB1588(a3, &v128))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v128;
}

unsigned __int8 *sub_275F8F1E0(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x1000000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 120);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x2000000) == 0)
    {
LABEL_3:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(a1 + 121);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x4000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(a1 + 122);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x8000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(a1 + 123);
  *v4 = 32;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(a1 + 124);
  *v4 = 40;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x20000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 125);
  *v4 = 48;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 88);
  *v4 = 56;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 126);
  *v4 = 64;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(a1 + 89);
  *v4 = 72;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(a1 + 90);
  *v4 = 80;
  v4[1] = v16;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 91);
  *v4 = 88;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

LABEL_67:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(a1 + 127);
  *v4 = 96;
  v4[1] = v18;
  v4 += 2;
  if ((v6 & 0x100000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

LABEL_73:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 92);
    *v4 = 112;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v4;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v4 - 1) = v22;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_84;
      }
    }

LABEL_16:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_87;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 116);
  *v4 = 104;
  v4[1] = v19;
  v4 += 2;
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_73;
  }

LABEL_15:
  if ((v6 & 0x200000) == 0)
  {
    goto LABEL_16;
  }

LABEL_84:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(a1 + 117);
  *v4 = 120;
  v4[1] = v24;
  v4 += 2;
  if ((v6 & 0x400000) == 0)
  {
LABEL_17:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_90;
  }

LABEL_87:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(a1 + 118);
  *v4 = 384;
  v4[2] = v25;
  v4 += 3;
  if ((v6 & 0x800000) == 0)
  {
LABEL_18:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_93;
  }

LABEL_90:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 119);
  *v4 = 392;
  v4[2] = v26;
  v4 += 3;
  if ((v6 & 0x4000) == 0)
  {
LABEL_19:
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_96;
  }

LABEL_93:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 100);
  *v4 = 400;
  v4[2] = v27;
  v4 += 3;
  if ((v6 & 1) == 0)
  {
LABEL_20:
    if ((v6 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_97;
  }

LABEL_96:
  v4 = sub_275F8C698(a3, 20, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_21:
    if ((v6 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_98;
  }

LABEL_97:
  v4 = sub_275F8C698(a3, 21, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_22:
    if ((v6 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_99;
  }

LABEL_98:
  v4 = sub_275F8C698(a3, 22, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_23:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_99:
  v4 = sub_275F8C698(a3, 23, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_24:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_101;
  }

LABEL_100:
  v4 = sub_275F8C698(a3, 24, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_25:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_102;
  }

LABEL_101:
  v4 = sub_275F8C698(a3, 25, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_26:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_102:
  v4 = sub_275F8C698(a3, 26, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_104;
  }

LABEL_103:
  v4 = sub_275F8C698(a3, 27, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_28:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

LABEL_115:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v32 = *(a1 + 104);
    *v4 = 504;
    if (v32 > 0x7F)
    {
      v4[2] = v32 | 0x80;
      v33 = v32 >> 7;
      if (v32 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v4;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v4 - 1) = v34;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v4[3] = v33;
        v4 += 4;
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_126;
        }
      }
    }

    else
    {
      v4[2] = v32;
      v4 += 3;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_126;
      }
    }

LABEL_30:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

LABEL_137:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v40 = *(a1 + 112);
    *v4 = 648;
    if (v40 > 0x7F)
    {
      v4[2] = v40 | 0x80;
      v41 = v40 >> 7;
      if (v40 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v41 | 0x80;
          v42 = v41 >> 7;
          ++v4;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
        *(v4 - 1) = v42;
        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v4[3] = v41;
        v4 += 4;
        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_148;
        }
      }
    }

    else
    {
      v4[2] = v40;
      v4 += 3;
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_148;
      }
    }

LABEL_32:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_151;
  }

LABEL_104:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(a1 + 96);
  *v4 = 496;
  if (v28 > 0x7F)
  {
    v4[2] = v28 | 0x80;
    v29 = v28 >> 7;
    if (v28 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v4;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v4 - 1) = v30;
      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v4[3] = v29;
      v4 += 4;
      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_115;
      }
    }
  }

  else
  {
    v4[2] = v28;
    v4 += 3;
    if ((v6 & 0x20000) != 0)
    {
      goto LABEL_115;
    }
  }

LABEL_29:
  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_30;
  }

LABEL_126:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 108);
  *v4 = 640;
  if (v36 > 0x7F)
  {
    v4[2] = v36 | 0x80;
    v37 = v36 >> 7;
    if (v36 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v4;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v4 - 1) = v38;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v4[3] = v37;
      v4 += 4;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_137;
      }
    }
  }

  else
  {
    v4[2] = v36;
    v4 += 3;
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_137;
    }
  }

LABEL_31:
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_32;
  }

LABEL_148:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(a1 + 101);
  *v4 = 656;
  v4[2] = v44;
  v4 += 3;
  if ((v6 & 0x10000) != 0)
  {
LABEL_151:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v45 = *(a1 + 102);
    *v4 = 704;
    v4[2] = v45;
    v4 += 3;
  }

LABEL_154:
  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v46 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275F8FAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_21;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v29 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_64;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(v32 + 23);
  v34 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_64:
  v35 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(v35 + 23);
  v37 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v36;
  }

  v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_70;
  }

LABEL_67:
  v38 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v39 = *(v38 + 23);
  v40 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v39;
  }

  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_70:
  v41 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v1 & 0x80) != 0)
  {
LABEL_18:
    v9 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  v12 = vdupq_n_s32(v1);
  if ((v1 & 0xFF00) != 0)
  {
    v13.i64[0] = 0x200000002;
    v13.i64[1] = 0x200000002;
    v14 = v2 + vaddvq_s32(vandq_s8(vshlq_u32(v12, xmmword_27605AD20), v13));
    if ((v1 & 0x1000) != 0)
    {
      v15 = *(a1 + 92);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v14 += v17;
    }

    if ((v1 & 0x2000) != 0)
    {
      v18 = *(a1 + 96);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 12;
      }

      v14 += v20;
    }

    if ((v1 & 0x4000) != 0)
    {
      v14 += 3;
    }

    if ((v1 & 0x8000) != 0)
    {
      v2 = v14 + 3;
    }

    else
    {
      v2 = v14;
    }
  }

  if ((v1 & 0xFF0000) != 0)
  {
    v21 = v2 + 3;
    if ((v1 & 0x10000) == 0)
    {
      v21 = v2;
    }

    if ((v1 & 0x20000) != 0)
    {
      v44 = *(a1 + 104);
      v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v44 >= 0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 12;
      }

      v21 += v46;
      if ((v1 & 0x40000) == 0)
      {
LABEL_42:
        if ((v1 & 0x80000) == 0)
        {
LABEL_47:
          v25 = v21 + ((v1 >> 20) & 2) + ((v1 >> 19) & 2);
          if ((v1 & 0x400000) != 0)
          {
            v25 += 3;
          }

          if ((v1 & 0x800000) != 0)
          {
            v2 = v25 + 3;
          }

          else
          {
            v2 = v25;
          }

          goto LABEL_52;
        }

LABEL_43:
        v22 = *(a1 + 112);
        v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
        if (v22 >= 0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 12;
        }

        v21 += v24;
        goto LABEL_47;
      }
    }

    else if ((v1 & 0x40000) == 0)
    {
      goto LABEL_42;
    }

    v47 = *(a1 + 108);
    v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v47 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 12;
    }

    v21 += v49;
    if ((v1 & 0x80000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_52:
  if (HIBYTE(v1))
  {
    v26.i64[0] = 0x200000002;
    v26.i64[1] = 0x200000002;
    v27 = vaddvq_s32(vandq_s8(vshlq_u32(v12, xmmword_27605AD30), v26));
    if ((v1 & 0x80000000) == 0)
    {
      v2 += v27 + ((v1 >> 27) & 2) + ((v1 >> 28) & 2) + ((v1 >> 29) & 2);
    }

    else
    {
      v2 += v27 + ((v1 >> 27) & 2) + ((v1 >> 28) & 2) + ((v1 >> 29) & 2) + 2;
    }
  }

  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_275F8FF10(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500700, 0);
  if (v4)
  {

    return sub_275F8FFB8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F8FFB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    *(v3 + 16) |= 8u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(v3 + 16) |= 0x10u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(v3 + 16) |= 0x20u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      *(v3 + 16) |= 0x80u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      goto LABEL_21;
    }

LABEL_19:
    *(v3 + 16) |= 0x40u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_32;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 88) = *(a2 + 88);
    if ((v5 & 0x200) == 0)
    {
LABEL_24:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_56;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  *(v3 + 89) = *(a2 + 89);
  if ((v5 & 0x400) == 0)
  {
LABEL_25:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v3 + 90) = *(a2 + 90);
  if ((v5 & 0x800) == 0)
  {
LABEL_26:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v3 + 91) = *(a2 + 91);
  if ((v5 & 0x1000) == 0)
  {
LABEL_27:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v3 + 92) = *(a2 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_28:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

LABEL_60:
    *(v3 + 100) = *(a2 + 100);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_59:
  *(v3 + 96) = *(a2 + 96);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_60;
  }

LABEL_29:
  if ((v5 & 0x8000) != 0)
  {
LABEL_30:
    *(v3 + 101) = *(a2 + 101);
  }

LABEL_31:
  *(v3 + 16) |= v5;
LABEL_32:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_43;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 102) = *(a2 + 102);
    if ((v5 & 0x20000) == 0)
    {
LABEL_35:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_64;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_35;
  }

  *(v3 + 104) = *(a2 + 104);
  if ((v5 & 0x40000) == 0)
  {
LABEL_36:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v3 + 108) = *(a2 + 108);
  if ((v5 & 0x80000) == 0)
  {
LABEL_37:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v3 + 112) = *(a2 + 112);
  if ((v5 & 0x100000) == 0)
  {
LABEL_38:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v3 + 116) = *(a2 + 116);
  if ((v5 & 0x200000) == 0)
  {
LABEL_39:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_40;
    }

LABEL_68:
    *(v3 + 118) = *(a2 + 118);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_67:
  *(v3 + 117) = *(a2 + 117);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_68;
  }

LABEL_40:
  if ((v5 & 0x800000) != 0)
  {
LABEL_41:
    *(v3 + 119) = *(a2 + 119);
  }

LABEL_42:
  *(v3 + 16) |= v5;
LABEL_43:
  if (!HIBYTE(v5))
  {
    return result;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 120) = *(a2 + 120);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_46:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_72;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_46;
  }

  *(v3 + 121) = *(a2 + 121);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v3 + 122) = *(a2 + 122);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v3 + 123) = *(a2 + 123);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_49:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v3 + 124) = *(a2 + 124);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_50:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_76:
    *(v3 + 126) = *(a2 + 126);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_77:
    *(v3 + 127) = *(a2 + 127);
    goto LABEL_52;
  }

LABEL_75:
  *(v3 + 125) = *(a2 + 125);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_76;
  }

LABEL_51:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_52:
  *(v3 + 16) |= v5;
  return result;
}

uint64_t sub_275F90384(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F8E240(result);

    return sub_275F8FF10(v4, a2);
  }

  return result;
}

uint64_t *sub_275F90410(uint64_t *a1)
{
  if (a1 != &qword_2812F87A8 && a1[3])
  {
    v2 = MEMORY[0x277C92BC0]();
    MEMORY[0x277C93390](v2, 0x10A1C4014782234);
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275F90474(uint64_t *a1)
{
  sub_275F90410(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F904B4(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSWP::ShapeInfoArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275F90510(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275FB1588(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D90](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27603484C(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275F90658(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSWP::ShapeInfoArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F90748(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSWP::ShapeInfoArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275F907D4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500718, 0);
  if (v4)
  {

    return sub_275F9087C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F9087C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C92D90](v5);
    }

    return MEMORY[0x2821EB9B8]();
  }

  return result;
}

uint64_t *sub_275F90924(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F904B4(result);

    return sub_275F907D4(v4, a2);
  }

  return result;
}

uint64_t sub_275F90970(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821EBC48](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_275F909C0(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FECA0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812F8028, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_275F90A30(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812F87C8)
  {
    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275F90AD0(void *a1)
{
  sub_275F90A30(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F90B10(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = TSP::Reference::Clear(result[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_275FB57B8(v4);
  }

  return result;
}

google::protobuf::internal *sub_275F90BA4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_275FB1588(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C92D60](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_27603450C(a3, v11, v5);
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_26:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *sub_275F90D44(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275F8C698(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275F90E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275F90F08(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v8 = sub_275F90E68(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSP::Reference::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_275F90FE8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500730, 0);
  if (v4)
  {

    return sub_275F91090(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F91090(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C92D60](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 32))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return result;
}

uint64_t *sub_275F9117C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F90B10(result);

    return sub_275F90FE8(v4, a2);
  }

  return result;
}

uint64_t sub_275F911C8(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 32));
  }
}

uint64_t sub_275F91220(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FED50;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F8008, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275F912A8(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB58C8((a1 + 16));
  return a1;
}

void sub_275F912E8(uint64_t a1)
{
  sub_275F912A8(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F91328(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275F90B10(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275F913A4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_275FB1588(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = sub_275FAEFA8(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_27603491C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_275FB1588(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *sub_275F91574(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = (a2 + 3);
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            v10 = (v10 + 1);
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v9;
        v10 = (a2 + 2);
      }

      a2 = sub_275F90D44(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F91698(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_275F90F08(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275F91750(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500748, 0);
  if (v4)
  {

    return sub_275F917F8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F917F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275FB594C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

uint64_t *sub_275F91898(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F91328(result);

    return sub_275F91750(v4, a2);
  }

  return result;
}

BOOL sub_275F918EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::Reference::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

uint64_t *sub_275F9198C(uint64_t *a1)
{
  if (a1 != &qword_2812F8820)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514(a1 + 1);
  return a1;
}

void sub_275F919F0(uint64_t *a1)
{
  sub_275F9198C(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F91A30(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::Reference::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275FB57B8(v2);
  }

  return result;
}

google::protobuf::internal *sub_275F91A8C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275FB1588(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C92D60](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27603450C(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275F91BD4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F91CC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275F91D50(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500760, 0);
  if (v4)
  {

    return sub_275F91DF8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F91DF8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C92D60](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return result;
}

uint64_t *sub_275F91EA0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F91A30(result);

    return sub_275F91D50(v4, a2);
  }

  return result;
}

uint64_t sub_275F91EEC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275F91F54(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FEEB0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812F80B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 96) = 0;
  return a1;
}

void sub_275F91FE8(_Unwind_Exception *a1)
{
  sub_275FB5A0C(v3);
  sub_275FB5A0C(v2);
  sub_275FB5A0C(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275F92018(uint64_t *a1)
{
  sub_275F8A514(a1 + 1);
  sub_275FB5A0C(a1 + 9);
  sub_275FB5A0C(a1 + 6);
  sub_275FB5A0C(a1 + 3);
  return a1;
}

void sub_275F92070(uint64_t *a1)
{
  sub_275F92018(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F920B0(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275F91A30(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (v1[8] + 8);
    do
    {
      v7 = *v6++;
      result = sub_275F91A30(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (v1[11] + 8);
    do
    {
      v10 = *v9++;
      result = sub_275F91A30(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 1;
  *(v11 + 22) = 0;
  *(v11 + 2) = 0;
  if (v12)
  {

    return sub_275FB57B8(v11);
  }

  return result;
}