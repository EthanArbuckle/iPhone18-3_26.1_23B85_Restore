void sub_275EEF474(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275EDDAC4(*v3);
          MEMORY[0x277C91940](v5, 0x10A1C40DFBAE579);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_275EEF4F8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C90D60]();
          MEMORY[0x277C91940](v5, 0x10A1C4054BF9DFBLL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_275EEF57C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_275EDE32C(*v3);
          MEMORY[0x277C91940](v5, 0x10A1C40DFBAE579);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_275EEF600(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275EEF6B0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C90F90](v18);
      result = sub_275EEF6B0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275EEF6C0(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275EEF770(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275EEE09C(v18);
      result = sub_275EEF770(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275EEF780(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275EEF830(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C90FF0](v18);
      result = sub_275EEF830(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275EEF840(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275EEF8F0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_275EEE168(v18);
      result = sub_275EEF8F0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275EEF900(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C90CE0]();
          MEMORY[0x277C91940](v5, 0x10A1C408B0084E7);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_275EEF984(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_275EEFA34(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C90FD0](v18);
      result = sub_275EEFA34(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275EEFA44(uint64_t a1)
{
  v2 = sub_275EEFAC8(a1, 1);
  *v2 = &unk_2884F4E48;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812DAE60, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275EEFAC8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A670(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_275EEFB50);
}

void *sub_275EEFB54(uint64_t a1)
{
  v2 = sub_275EEFBC8(a1, 1);
  *v2 = &unk_2884F4EF8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DAE98, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275EEFBC8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A6AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275EEFC50);
}

void *sub_275EEFC54(uint64_t a1)
{
  v2 = sub_275EEFCC8(a1, 1);
  *v2 = &unk_2884F4FA8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DAF48, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275EEFCC8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A6DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275EEFD50);
}

uint64_t sub_275EEFD54(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A70C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 280, sub_275EEFDDC);
}

uint64_t sub_275EEFDE0(uint64_t a1)
{
  v2 = sub_275EEFE58(a1, 1);
  *v2 = &unk_2884F5108;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812DADF8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275EEFE58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A748(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275EEFEE0);
}

uint64_t sub_275EEFEE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A778(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EEFF6C);
}

uint64_t sub_275EEFF8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A7A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EF0014);
}

uint64_t sub_275EF0034(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A7D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275EF00BC);
}

void *sub_275EF00DC(uint64_t a1)
{
  v2 = sub_275EF0150(a1, 1);
  *v2 = &unk_2884F53C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DAF70, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275EF0150(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A814(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EF01D8);
}

uint64_t sub_275EF01DC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A844(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 128, sub_275EF0264);
}

void *sub_275EF0268(uint64_t a1)
{
  v2 = sub_275EF02DC(a1, 1);
  *v2 = &unk_2884F5528;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DADB0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275EF02DC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A880(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EF0364);
}

uint64_t sub_275EF0368(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A8B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 176, sub_275EF03F0);
}

void *sub_275EF03F4(uint64_t a1)
{
  v2 = sub_275EF0468(a1, 1);
  *v2 = &unk_2884F5688;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DAE40, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275EF0468(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A8EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EF04F0);
}

uint64_t sub_275EF04F4(uint64_t a1)
{
  v2 = sub_275EF056C(a1, 1);
  *v2 = &unk_2884F5738;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812DAE18, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_275EF056C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A91C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275EF05F4);
}

void *sub_275EF05F8(uint64_t a1)
{
  v2 = sub_275EF066C(a1, 1);
  *v2 = &unk_2884F57E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DACF8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275EF066C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A958(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275EF06F4);
}

uint64_t sub_275EF06F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A988(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275EF0780);
}

void *sub_275EF0784(uint64_t a1)
{
  v2 = sub_275EF07F8(a1, 1);
  *v2 = &unk_2884F5948;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DAD88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275EF07F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A9B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275EF0880);
}

uint64_t sub_275EF0884(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A9E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 200, sub_275EF090C);
}

uint64_t sub_275EF0910(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4AA24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275EF0998);
}

uint64_t sub_275EF099C(uint64_t a1)
{
  v2 = sub_275EF0A18(a1, 1);
  *v2 = &unk_2884F5B58;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812DAC88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275EF0A18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4AA54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275EF0AA0);
}

void *sub_275EF0AA4(uint64_t a1)
{
  v2 = sub_275EF0B18(a1, 1);
  *v2 = &unk_2884F5C08;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812DAD38, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275EF0B18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4AA84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EF0BA0);
}

void sub_275EF0D54(uint64_t a1, void *a2)
{
  v18 = a2;
  v2 = sub_275EE4154();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v3, 1, v2, off_2812DAFE8[18], "TNDocumentRoot");
  v4 = sub_275EE6144();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v5, 2, v4, off_2812DAFE8[22], "TNSheet");
  v6 = sub_275EE92F4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v7, 3, v6, off_2812DAFE8[28], "TNFormBasedSheet");
  v8 = sub_275EEC5CC();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v9, 12006, v8, off_2812DAFE8[36], "TNPersistentChartMediator");
  v10 = sub_275EE9B30();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v11, 12009, v10, off_2812DAFE8[30], "TNTheme");
  v12 = sub_275EDEEF0();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v13, 12026, v12, off_2812DAFE8[6], "TNArchivedUIState");
  v14 = sub_275EE2480();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v15, 12028, v14, off_2812DAFE8[8], "TNArchivedSheetSelection");
  v16 = sub_275EE891C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v18, v17, 12050, v16, off_2812DAFE8[26], "TNSheetStyle");
  TSKRegisterPersistentClasses();
  __C();
  String();
  TSDRegisterPersistentClasses();
  TSTRegisterPersistentClasses();
  __C();
  __C();
  TSWPRegisterPersistentClasses();
  TSARegisterPersistentClasses();
}

void sub_275EF0F98(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = objc_msgSend_sharedRegistry(MEMORY[0x277D80880], v2, v3);
  String();
  TSDRegisterPropertyCommandObjects();
  TSTRegisterPropertyCommandObjects();
  TSWPRegisterPropertyCommandObjects();
}

void sub_275EF2284(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275EF2410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_275EF4640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, void *a38, void *a39, void *a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  _Block_object_dispose((v58 - 240), 8);

  _Block_object_dispose((v58 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275EF48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 & 0xFFFF00000000;
  v5 = a2 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFFLL && v4 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
  {
    v6 = 0;
    v7 = a2 != 0x7FFFFFFF;
  }

  else
  {
    v7 = 0;
    if (a1 != 0x7FFFFFFFLL || v4 == 0x7FFF00000000)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (v5 != 0x7FFF00000000)
      {
        v7 = 0;
        v6 = a2 == 0x7FFFFFFF;
      }
    }
  }

  v8 = a3 & 0xFFFF00000000;
  v9 = a4 & 0xFFFF00000000;
  v10 = a3;
  if (a3 != 0x7FFFFFFFLL && v8 == 0x7FFF00000000 && v9 == 0x7FFF00000000)
  {
    v11 = 0;
    v12 = a4 != 0x7FFFFFFF;
  }

  else
  {
    v12 = 0;
    if (a3 != 0x7FFFFFFFLL || v8 == 0x7FFF00000000)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      if (v9 != 0x7FFF00000000)
      {
        v12 = 0;
        v11 = a4 == 0x7FFFFFFF;
      }
    }
  }

  if (!v7)
  {
    if (v6)
    {
      LODWORD(a1) = 0;
      LODWORD(a2) = 999999;
    }

    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_27:
    v8 = 0;
    v9 = 0x3E700000000;
    goto LABEL_28;
  }

  v4 = 0;
  v5 = 0x3E700000000;
  if (v12)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v11)
  {
    LODWORD(a3) = 0;
    LODWORD(a4) = 999999;
  }

  v10 = a3;
LABEL_28:
  v13 = 0x7FFF7FFFFFFFLL;
  v14 = 0x7FFF00000000;
  v15 = 0x7FFFFFFFLL;
  if (a1 <= a4 && a3 <= a2)
  {
    v16 = HIDWORD(v4);
    v15 = 0x7FFFFFFFLL;
    if (HIDWORD(v4) <= HIDWORD(v9))
    {
      v17 = HIDWORD(v5);
      v18 = HIDWORD(v8);
      if (HIDWORD(v8) <= HIDWORD(v5))
      {
        v14 = 0x7FFF00000000;
        v15 = 0x7FFFFFFFLL;
        if (a1 != 0x7FFFFFFFLL && v4 != 0x7FFF00000000)
        {
          v15 = 0x7FFFFFFFLL;
          if (a2 != 0x7FFFFFFFLL && v5 != 0x7FFF00000000)
          {
            v15 = 0x7FFFFFFFLL;
            if (v17 >= v16 && a1 <= a2)
            {
              v15 = 0x7FFFFFFFLL;
              if (v10 != 0x7FFFFFFF && v8 != 0x7FFF00000000)
              {
                v15 = 0x7FFFFFFFLL;
                if (a4 != 0x7FFFFFFFLL && v9 != 0x7FFF00000000)
                {
                  v15 = 0x7FFFFFFFLL;
                  if (v18 <= HIDWORD(v9) && a3 <= a4)
                  {
                    if (v16 <= v17)
                    {
                      if (v16 <= v18)
                      {
                        v19 = HIDWORD(v8);
                      }

                      else
                      {
                        v19 = HIDWORD(v4);
                      }

                      if (a1 <= a3)
                      {
                        v20 = a3;
                      }

                      else
                      {
                        v20 = a1;
                      }

                      v13 = v20 | (v19 << 32);
                    }

                    if (v7 && v12)
                    {
                      v14 = 0x7FFF00000000;
                    }

                    else
                    {
                      v14 = v13 & 0xFFFF00000000;
                    }

                    if (v6 && v11)
                    {
                      v15 = 0x7FFFFFFFLL;
                    }

                    else
                    {
                      v15 = v13;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v14 | v15;
}

uint64_t sub_275EF4B94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275EF4BAC(uint64_t a1, TSUCellCoord a2, $85CD2974BE96D4886BB301820D1C36C2 a3)
{
  v22.var0 = a2;
  v22.var1 = a3;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    if (*(a1 + 48) == 1)
    {
      v18 = TSUCellRect::firstRow(&v22);
      v19 = TSUCellRect::lastRow(&v22);
      objc_msgSend_addRowRange_(v4, v5, &v18);
    }

    else
    {
      v18 = TSUCellRect::firstColumn(&v22);
      v19 = TSUCellRect::lastColumn(&v22);
      objc_msgSend_addColumnRange_(v4, v17, &v18);
    }
  }

  else
  {
    v6 = TSUCellRectToTSCERangeCoordinate();
    v8 = v7;
    v10 = objc_msgSend_tableUID(*(a1 + 32), v7, v9);
    v18 = v6;
    v19 = v8;
    v20 = v10;
    v21 = v11;
    v12 = objc_alloc(MEMORY[0x277D80C38]);
    v14 = objc_msgSend_initWithRangeRef_(v12, v13, &v18);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

void sub_275EF4C9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_msgSend_isValid(*(*(*(a1 + 40) + 8) + 40), v4, v5) & 1) != 0 || !objc_msgSend_isValid(v3, v6, v7))
  {
    if (objc_msgSend_isValid(v3, v6, v7))
    {
      objc_msgSend_rangeCoord(v3, v11, v12);
      v13 = TSUCellRectFromTSCERangeCoordinate();
      v15 = v14;
      v35.var0 = v13;
      v35.var1 = v14;
      v17 = objc_msgSend_cellRegion(*(a1 + 32), v14, v16);
      v19 = objc_msgSend_regionByIntersectingRange_(v17, v18, v13, v15);

      v22 = objc_msgSend_cellCount(v19, v20, v21);
      v24 = *(a1 + 48);
      if (v22)
      {
        if (*(a1 + 48))
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = sub_275EF4F14;
          v32[3] = &unk_27A6A2750;
          v32[4] = *(a1 + 40);
          objc_msgSend_enumerateColumnsUsingBlock_(v19, v23, v32);
        }

        else
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = sub_275EF4F28;
          v31[3] = &unk_27A6A2778;
          v31[4] = *(a1 + 40);
          objc_msgSend_enumerateRowsUsingBlock_(v19, v23, v31);
        }
      }

      else
      {
        v25 = *(*(*(a1 + 40) + 8) + 40);
        if (v24)
        {
          v33 = TSUCellRect::firstColumn(&v35);
          v34 = TSUCellRect::lastColumn(&v35);
          objc_msgSend_addColumnRange_(v25, v26, &v33);
        }

        else
        {
          v33 = TSUCellRect::firstRow(&v35);
          v34 = TSUCellRect::lastRow(&v35);
          objc_msgSend_addRowRange_(v25, v30, &v33);
        }
      }
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D80C38]);
    if (v3)
    {
      objc_msgSend_rangeRef(v3, v8, v9);
    }

    else
    {
      v35 = 0;
      v36 = 0u;
    }

    v27 = objc_msgSend_initWithRangeRef_(v10, v8, &v35);
    v28 = *(*(a1 + 40) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
  }
}

void sub_275EF4F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  v26 = v3;
  if (objc_msgSend_isValid(v3, v7, v8))
  {
    objc_msgSend_rangeCoord(v26, v9, v10);
    v11 = TSUCellRectFromTSCERangeCoordinate();
    v13 = v12;
    v15 = objc_msgSend_cellRegion(*(a1 + 32), v12, v14);
    v17 = objc_msgSend_regionByIntersectingRange_(v15, v16, v11, v13);

    if (!objc_msgSend_cellCount(v17, v18, v19))
    {
      v21 = objc_msgSend_regionFromRange_(MEMORY[0x277D80CE0], v20, v11, v13);

      v17 = v21;
    }

    v22 = objc_msgSend_chartFormulaForCellRegion_inTable_(TNChartFormulaWrapper, v20, v17, *(a1 + 40));
  }

  else
  {
    v17 = objc_msgSend_p_untitledLabelWithIndex_(*(a1 + 48), v9, v6 + 1);
    v22 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v23, v17);
  }

  v24 = v22;

  objc_msgSend_addFormula_withFormulaID_(*(a1 + 56), v25, v24, v6 | (v4 << 32));
}

uint64_t sub_275EF57D0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  return objc_msgSend_addFormula_withFormulaID_(*(a1 + 32), a2, a2, v4 | (v2 << 32));
}

void sub_275EF5A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Block_object_dispose((v28 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275EF5AC4(uint64_t a1, const char *a2, _BYTE *a3)
{
  v13 = 0;
  v6 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(*(a1 + 32), a2, *a2, &v13, 0);
  v9 = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(*(a1 + 32), v7, *(a2 + 2), &v12);
  if (*(a1 + 72) != 1)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 64);
  if (!v10)
  {
    result = objc_msgSend_aggregateIndexForRowIndex_(*(a1 + 32), v8, *a2);
    goto LABEL_6;
  }

  if (v10 == 1)
  {
    result = objc_msgSend_aggregateIndexForColumnIndex_(*(a1 + 32), v8, *(a2 + 2));
  }

  else
  {
LABEL_5:
    result = 0xFFFFLL;
  }

LABEL_6:
  if (v6 != 255 || v9 != 255)
  {
    *(*(*(a1 + 40) + 8) + 24) = v6;
    *(*(*(a1 + 48) + 8) + 24) = v9;
    *(*(*(a1 + 56) + 8) + 24) = result;
    *a3 = 1;
  }

  return result;
}

void sub_275EF5CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275EF5D40(uint64_t a1, const char *a2, _BYTE *a3)
{
  v4 = WORD2(a2);
  v10 = 0;
  v6 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(*(a1 + 32), a2, a2, &v10, 0);
  result = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(*(a1 + 32), v7, v4, &v9);
  if (v6 != 255 || result != 255)
  {
    *(*(*(a1 + 40) + 8) + 24) = v6;
    *(*(*(a1 + 48) + 8) + 24) = result;
    *a3 = 1;
  }

  return result;
}

void sub_275EF68DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275EF69A0(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D80AA8]);
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___TNChartMediator;
  v3 = objc_msgSendSuper2(&v11, sel_propertiesThatInvalidateMediator);
  v5 = objc_msgSend_initWithPropertySet_(v2, v4, v3);

  objc_msgSend_addProperty_(v5, v6, 1351);
  v9 = objc_msgSend_copy(v5, v7, v8);
  v10 = qword_280A3DF08;
  qword_280A3DF08 = v9;
}

void sub_275EF83E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (v15 != 253)
  {
  }

  if (v14 != 253)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275EF8BB4(uint64_t a1, int a2, const char **a3, BOOL *a4, void *a5, __CFString **a6)
{
  v7 = a4;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v276 = *(a1 + 16);
  v277 = v7;
  if (!a2)
  {
    if (a3)
    {
      v131 = *a3;
      if (*a3 >= *(a1 + 48))
      {
        v96 = 0;
        *(*(a1 + 72) + 8 * v131) = 0;
        goto LABEL_223;
      }
    }

    else
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_115;
      }

      v131 = 0;
    }

    v134 = sub_275EFA120(a1, v131, v10);
    v137 = v134;
    if (v134)
    {
      v138 = *(a1 + 72);
      v139 = objc_msgSend_count(v134, v135, v136);
      v279 = *(a1 + 24);
      v140 = v279;
      v303 = v279;
      v304 = 0;
      *&v305 = 0x10000000000;
      v306 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v307 = 0;
      v308 = 0;
      *(&v305 + 7) = v10;
      v142 = *(v138 + 8 * v131);
      if (v142 >= v139)
      {
        v184 = 0;
        v96 = 0;
      }

      else
      {
        while (1)
        {
          *(v138 + 8 * v131) = v142 + 1;
          v143 = objc_msgSend_valueAtIndexNoThrow_index_(v137, v141, &v303);
          v146 = v143;
          if (!v10 || !(BYTE10(v305) | BYTE9(v305)))
          {
            break;
          }

          v142 = *(v138 + 8 * v131);
          if (v142 >= v139)
          {
            v96 = 0;
            goto LABEL_200;
          }
        }

        if (objc_msgSend_isValueGridValue(v143, v144, v145))
        {
          v249 = objc_msgSend_valueGrid(v146, v247, v248);
          v252 = objc_msgSend_firstValue(v249, v250, v251);

          v146 = v252;
        }

        v253 = objc_msgSend_documentLocale(v276, v247, v248);
        sub_275EFA504(v146, v277, a5, v253);

        v96 = 1;
LABEL_200:
        v184 = v304;
      }
    }

    else
    {
      v177 = MEMORY[0x277D81150];
      v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "BOOL TNChartModelUpdateIterator(void *, TSCHModelUpdateDataType, NSUInteger *, BOOL *, __autoreleasing id<TSCHChartGridValue> *, NSString *__autoreleasing *)");
      v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v177, v181, v178, v180, 2327, 0, "Couldn't get vector for series %lu", v131);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v182, v183);
      v96 = 0;
    }

LABEL_202:

    goto LABEL_223;
  }

  if (a2 == 2)
  {
    if (!objc_msgSend_direction(*(a1 + 8), v11, v12))
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "BOOL TNChartModelUpdateIterator(void *, TSCHModelUpdateDataType, NSUInteger *, BOOL *, __autoreleasing id<TSCHChartGridValue> *, NSString *__autoreleasing *)");
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v103, v100, v102, 2091, 0, "Unknown direction in update.  This is not right.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
    }

    v107 = objc_msgSend_direction(*(a1 + 8), v97, v98);
    if (v107 == 2)
    {
      objc_msgSend_formulaListForType_(*(a1 + 8), v106, 2);
    }

    else
    {
      objc_msgSend_formulaListForType_(*(a1 + 8), v106, 3);
    }
    v108 = ;
    v273 = v108;
    v264 = objc_msgSend_count(v108, v109, v110);
    v262 = v107;
    v259 = v107 == 2;
    v113 = (a1 + 56);
    if (*(a1 + 56) == -1 || *(a1 + 64) == -1)
    {
      *v113 = 0;
      *(a1 + 64) = 0;
      if (*(a1 + 48))
      {
        v114 = 0;
        v266 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        while (1)
        {
          v115 = sub_275EFA120(a1, v114, v10);
          v118 = v115;
          if (!v115)
          {
            break;
          }

          v119 = objc_msgSend_count(v115, v116, v117);
          v122 = objc_msgSend_count(v108, v120, v121);
          if (v122 <= v119)
          {
            v123 = v119;
          }

          else
          {
            v123 = v122;
          }

          if (*v113 > v123)
          {
            v123 = *v113;
          }

          *v113 = v123;
          if (v10)
          {
            *v270 = *(a1 + 24);
            v124 = v270[0];
            v303 = *v270;
            v304 = 0;
            *&v305 = 0x10000000000;
            *(&v305 + 7) = 1;
            v306 = v266;
            v307 = 0;
            v308 = 0;
            if (v119)
            {
              v126 = 0;
              for (i = 0; i != v119; ++i)
              {
                v128 = objc_msgSend_valueAtIndexNoThrow_index_(v118, v125, &v303, i);
                if (!(BYTE10(v305) | BYTE9(v305)))
                {
                  ++v126;
                }
              }

              v129 = v304;
            }

            else
            {
              v129 = 0;
              v126 = 0;
            }

            v119 = v126;
            v108 = v273;
          }

          v130 = *(a1 + 64);
          if (v130 <= v119)
          {
            v130 = v119;
          }

          *(a1 + 64) = v130;

          if (++v114 >= *(a1 + 48))
          {
            goto LABEL_92;
          }
        }

        v147 = MEMORY[0x277D81150];
        v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "BOOL TNChartModelUpdateIterator(void *, TSCHModelUpdateDataType, NSUInteger *, BOOL *, __autoreleasing id<TSCHChartGridValue> *, NSString *__autoreleasing *)");
        v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v151, v148, v150, 2106, 0, "Couldn't get vector for series %lu", v114);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153);
        v96 = 0;
        v108 = v273;
LABEL_222:

        goto LABEL_223;
      }

LABEL_92:
      if (objc_msgSend_scheme(*(a1 + 8), v111, v112))
      {
        *(a1 + 112) = 0;
      }

      else
      {
        v298 = 0;
        v299 = &v298;
        v300 = 0x2020000000;
        v301 = 0;
        v294 = 0;
        v295 = &v294;
        v296 = 0x2020000000;
        v297 = 0;
        v290 = 0;
        v291 = &v290;
        v292 = 0x2020000000;
        v293 = 0;
        v185 = objc_msgSend_count(v108, v111, v112);
        if (v185)
        {
          v186 = v185 / 0x3E8;
          *&v303 = 0;
          *(&v303 + 1) = &v303;
          v304 = 0x3812000000;
          *&v305 = sub_275EFA354;
          *(&v305 + 1) = nullsub_1;
          v306.i64[0] = "";
          v306.i32[2] = 0;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_275EFA364;
          block[3] = &unk_27A6A28D8;
          v286 = v185;
          v288 = v259;
          v289 = v10;
          v281 = v108;
          v282 = &v303;
          v283 = &v298;
          v284 = &v290;
          v287 = a1;
          v285 = &v294;
          dispatch_apply(v186 + 1, 0, block);

          _Block_object_dispose(&v303, 8);
        }

        v187 = (v295[3] & 8) == 0 && v299[3] > *v113 && v291[3] >= *v113;
        *(a1 + 112) = v187;
        _Block_object_dispose(&v290, 8);
        _Block_object_dispose(&v294, 8);
        _Block_object_dispose(&v298, 8);
      }
    }

    v188 = *(a1 + 96);
    v189 = v277;
    if (v188 >= *(a1 + 56))
    {
      goto LABEL_190;
    }

    if (*(a1 + 104) < *(a1 + 64))
    {
      v271 = 0;
      v260 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      while (1)
      {
        v190 = v188;
        v192 = *(a1 + 120);
        v191 = *(a1 + 128);
        *(a1 + 96) = v188 + 1;
        if (v192 >= v264)
        {

          ++*(a1 + 104);
          v196 = &stru_2884F65E0;
          goto LABEL_214;
        }

        if (objc_msgSend_scheme(*(a1 + 8), v111, v112))
        {
          v194 = objc_msgSend_objectAtIndex_(v273, v193, v192);
          v196 = objc_msgSend_gridLabelValueAtIndex_withEvaluationContext_byRow_shouldSkipHiddenData_(v194, v195, v190, *(a1 + 24), v262 == 2, v10);
          v108 = v273;
          if (v196)
          {
            ++*(a1 + 104);

            goto LABEL_214;
          }

          goto LABEL_184;
        }

        v194 = objc_msgSend_objectAtIndex_(v273, v193, v192);
        v198 = objc_msgSend_outputValue_shouldSkipHiddenData_(v194, v197, *(a1 + 24), v10);
        v201 = objc_msgSend_vector(v198, v199, v200);

        if (v201)
        {
          break;
        }

LABEL_183:

        v108 = v273;
LABEL_184:

LABEL_185:
        v188 = *(a1 + 96);
        if (v188 >= *(a1 + 56) || *(a1 + 104) >= *(a1 + 64))
        {
          goto LABEL_189;
        }
      }

      if (*(a1 + 112) == 1)
      {
        shouldSkipHiddenData = objc_msgSend_count(v201, v202, v203);
        v207 = v262;
      }

      else
      {
        v208 = *(a1 + 16);
        v207 = v262;
        *&v303 = objc_msgSend_entityUID(*a1, v202, v203);
        *(&v303 + 1) = v209;
        shouldSkipHiddenData = objc_msgSend_numberOfTotalPlotwiseLabelValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v194, v209, v208, &v303, v262 == 2, v10);
      }

      v210 = shouldSkipHiddenData;
      if ((*(a1 + 112) & 1) == 0)
      {
        v211 = *(a1 + 128) + 1;
        *(a1 + 128) = v211;
        if (v211 < shouldSkipHiddenData)
        {
          goto LABEL_155;
        }

        *(a1 + 128) = 0;
      }

      ++*(a1 + 120);
LABEL_155:
      v212 = objc_msgSend_string(MEMORY[0x277CCAB68], v205, v206);
      v267 = *(a1 + 24);
      v213 = v267;
      v303 = v267;
      v304 = 0;
      *&v305 = 0x10000000000;
      v306 = v260;
      v307 = 0;
      v308 = 0;
      *(&v305 + 7) = v10;
      if (*(a1 + 112) == 1)
      {
        if (!v210)
        {
          goto LABEL_178;
        }

        v216 = 0;
        for (j = 0; j != v210; ++j)
        {
          v218 = objc_msgSend_valueAtIndexNoThrow_index_(v201, v214, &v303, j);
          v221 = v218;
          if (!v10 || !(BYTE10(v305) | BYTE9(v305)))
          {
            if (objc_msgSend_isNil(v218, v219, v220))
            {
              v224 = 0;
              v225 = objc_msgSend_length(0, v222, v223);
            }

            else
            {
              v224 = objc_msgSend_coercedStringWithContext_(v221, v222, *(a1 + 24));
              v225 = objc_msgSend_length(v224, v228, v229);
            }

            if (v225)
            {
              v230 = objc_msgSend_length(v212, v226, v227);
              v232 = @" ";
              if (!v230)
              {
                v232 = &stru_2884F65E0;
              }

              objc_msgSend_appendFormat_(v212, v231, @"%@%@", v232, v224);
            }

            v216 = 1;
          }
        }

        if ((v216 & 1) == 0)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v233 = *(a1 + 16);
        v298 = objc_msgSend_entityUID(*a1, v214, v215);
        v299 = v234;
        if (!objc_msgSend_numberOfTotalPlotwiseLabelValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v194, v234, v233, &v298, v207 == 2, v10))
        {
LABEL_178:
          v246 = 0;
          v245 = 1;
          goto LABEL_179;
        }

        v236 = objc_msgSend_plotwiseLabelValuesWithEvaluationContext_byRow_shouldSkipHiddenData_(v194, v235, *(a1 + 24), v207 == 2, v10);
        if (v191 < objc_msgSend_count(v236, v237, v238))
        {
          v240 = objc_msgSend_objectAtIndexedSubscript_(v236, v239, v191);
          if (objc_msgSend_length(v240, v241, v242))
          {
            objc_msgSend_appendString_(v212, v243, v240);
          }
        }
      }

      ++*(a1 + 104);
      v244 = v212;

      v245 = 0;
      v246 = 1;
      v271 = v244;
LABEL_179:

      if (v246)
      {

        v189 = v277;
        v108 = v273;
        if ((v245 & 1) == 0)
        {
          goto LABEL_189;
        }

        goto LABEL_185;
      }

      v189 = v277;
      goto LABEL_183;
    }

    v271 = 0;
    v190 = -1;
LABEL_189:
    v196 = v271;
    if (v271)
    {
LABEL_214:
      if (a6)
      {
        v254 = v196;
        *a6 = v196;
      }

      if (v189)
      {
        *v189 = 1;
      }

      v108 = v273;
      if (a3)
      {
        *a3 = v190;
      }

      v96 = 1;
    }

    else
    {
LABEL_190:
      if (a6)
      {
        *a6 = 0;
      }

      if (v189)
      {
        *v189 = 0;
      }

      if (a3)
      {
        *a3 = -1;
      }

      v96 = 0;
      v196 = 0;
      *(a1 + 96) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = 1;
    }

    goto LABEL_222;
  }

  if (a2 != 1)
  {
    v132 = (a2 - 3);
    if (v132 <= 3)
    {
      if (a3)
      {
        v133 = *a3;
LABEL_111:
        v137 = objc_msgSend_formulaListForType_(*(a1 + 8), v11, v132 + 4);
        v156 = objc_msgSend_count(v137, v154, v155);
        if (v156 && v133 < v156 && v133 < *(a1 + 48))
        {
          v159 = objc_msgSend_objectAtIndex_(v137, v157, v133);
        }

        else
        {
          v159 = objc_msgSend_defaultErrorBarFormulaWrapper(TNChartMediator, v157, v158);
        }

        v161 = v159;
        v162 = objc_msgSend_outputValue_shouldSkipHiddenData_(v159, v160, *(a1 + 24), v10);
        v165 = objc_msgSend_vector(v162, v163, v164);
        v166 = a1 + 8 * v132;

        if (v165)
        {
          v169 = objc_msgSend_count(v165, v167, v168);
          v274 = *(a1 + 24);
          v170 = v274;
          v303 = v274;
          v304 = 0;
          *&v305 = 0x10000000000;
          *(&v305 + 7) = 0;
          v306 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v307 = 0;
          v308 = 0;
          v172 = *(v166 + 136);
          if (v172 < v169)
          {
            *(v166 + 136) = v172 + 1;
            v173 = objc_msgSend_valueAtIndexNoThrow_index_(v165, v171, &v303);
            v176 = objc_msgSend_documentLocale(v276, v174, v175);
            sub_275EFA504(v173, v277, a5, v176);

            v96 = 1;
            if (v277)
            {
              *v277 = 1;
            }

LABEL_137:

            goto LABEL_202;
          }
        }

        if (a6)
        {
          *a6 = 0;
        }

        if (v277)
        {
          *v277 = 0;
        }

        if (a3)
        {
          *a3 = -1;
        }

        v96 = 0;
        *(v166 + 136) = 0;
        goto LABEL_137;
      }

      if (*(a1 + 48) == 1)
      {
        v133 = 0;
        goto LABEL_111;
      }
    }

LABEL_115:
    v96 = 0;
    goto LABEL_223;
  }

  if (!objc_msgSend_direction(*(a1 + 8), v11, v12))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "BOOL TNChartModelUpdateIterator(void *, TSCHModelUpdateDataType, NSUInteger *, BOOL *, __autoreleasing id<TSCHChartGridValue> *, NSString *__autoreleasing *)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1974, 0, "Unknown direction in update.  This is not right.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v23 = objc_msgSend_direction(*(a1 + 8), v13, v14);
  if (v23 == 2)
  {
    v24 = 3;
    objc_msgSend_formulaListForType_(*(a1 + 8), v22, 3);
  }

  else
  {
    v24 = 2;
    objc_msgSend_formulaListForType_(*(a1 + 8), v22, 2);
  }
  v25 = ;
  v27 = *(a1 + 8);
  v26 = *(a1 + 16);
  v258 = v25;
  v30 = objc_msgSend_ownerUID(*a1, v28, v29);
  v272 = objc_msgSend_numberOfLabelsForType_withCalcEngine_inEntity_shouldSkipHiddenData_(v27, v31, v24, v26, v30, v31, v10);
  v34 = *(a1 + 88);
  if (v34 >= *(a1 + 48))
  {
LABEL_57:
    if (a6)
    {
      *a6 = 0;
    }

    if (v7)
    {
      *v7 = 0;
    }

    if (a3)
    {
      *a3 = -1;
    }

    v96 = 0;
    v95 = 0;
    *(a1 + 88) = 0;
    goto LABEL_212;
  }

  v257 = 0;
  v261 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v256 = v23;
  while (1)
  {
    v35 = v34;
    *(a1 + 88) = v34 + 1;
    if (v34 >= v272)
    {
      v40 = &stru_2884F65E0;
      v7 = v277;
      v38 = v257;
      goto LABEL_204;
    }

    v7 = v277;
    if (objc_msgSend_scheme(*(a1 + 8), v32, v33) == 2)
    {
      v38 = objc_msgSend_firstObject(v25, v36, v37);
      v40 = objc_msgSend_gridLabelValueAtIndex_withEvaluationContext_byRow_shouldSkipHiddenData_(v38, v39, v35, *(a1 + 24), v23 != 2, v10);
      if (!v40)
      {
        goto LABEL_21;
      }

LABEL_204:
      v95 = v40;
      goto LABEL_205;
    }

    v38 = objc_msgSend_objectAtIndex_(v25, v36, v35);
    if (!v10)
    {
      goto LABEL_34;
    }

    *&v303 = objc_msgSend_entityUID(*a1, v41, v42);
    *(&v303 + 1) = v43;
    if (!objc_msgSend_isAllStaticValuesWithCalcEngine_inOwner_(v38, v43, v276, &v303))
    {
      goto LABEL_34;
    }

    v44 = sub_275EFA120(a1, v35, 1);
    v47 = objc_msgSend_count(v44, v45, v46);
    *v268 = *(a1 + 24);
    v48 = v268[0];
    v303 = *v268;
    v304 = 0;
    *&v305 = 0x10000000000;
    *(&v305 + 7) = 1;
    v306 = v261;
    v307 = 0;
    v308 = 0;
    if (!v47)
    {
      break;
    }

    v50 = 1;
    do
    {
      v51 = objc_msgSend_valueAtIndexNoThrow_index_(v44, v49, &v303, v50 - 1);
      v52 = BYTE10(v305) | BYTE9(v305);
      if (v52)
      {
        v53 = v50 >= v47;
      }

      else
      {
        v53 = 1;
      }

      ++v50;
    }

    while (!v53);

    if (!v52)
    {
      goto LABEL_34;
    }

LABEL_21:

LABEL_55:
    v34 = *(a1 + 88);
    if (v34 >= *(a1 + 48))
    {
      goto LABEL_56;
    }
  }

LABEL_34:
  v54 = objc_msgSend_formulaObject(v38, v41, v42);
  v56 = objc_msgSend_evaluateWithContextGridResult_(v54, v55, *(a1 + 24));

  v57 = *(a1 + 24);
  v58 = *(a1 + 32);
  v302 = 0;
  v269 = v56;
  v60 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v56, v59, v57, v58, 0, 0, &v302);
  v265 = v302;
  if (v265)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "BOOL TNChartModelUpdateIterator(void *, TSCHModelUpdateDataType, NSUInteger *, BOOL *, __autoreleasing id<TSCHChartGridValue> *, NSString *__autoreleasing *)");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 2039, 0, "Not handling a conversion to grid error here - it is pretty unlikely");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
  }

  v70 = objc_msgSend_count(v60, v61, v62);
  v73 = objc_msgSend_string(MEMORY[0x277CCAB68], v71, v72);
  v263 = *(a1 + 24);
  v74 = v263;
  v303 = v263;
  v304 = 0;
  *&v305 = 0x10000000000;
  v306 = v261;
  v307 = 0;
  v308 = 0;
  *(&v305 + 7) = v10;
  if (v70)
  {
    v76 = 0;
    for (k = 0; k != v70; ++k)
    {
      v78 = objc_msgSend_valueAtIndexNoThrow_index_(v60, v75, &v303, k);
      v81 = v78;
      if (!v10 || !(BYTE10(v305) | BYTE9(v305)))
      {
        if (objc_msgSend_isNil(v78, v79, v80))
        {
          v84 = 0;
          v85 = objc_msgSend_length(0, v82, v83);
        }

        else
        {
          v84 = objc_msgSend_coercedStringWithContext_(v81, v82, *(a1 + 24));
          v85 = objc_msgSend_length(v84, v88, v89);
        }

        if (v85)
        {
          v90 = objc_msgSend_length(v73, v86, v87);
          v92 = &stru_2884F65E0;
          if (v90)
          {
            v92 = @" ";
          }

          objc_msgSend_appendFormat_(v73, v91, @"%@%@", v92, v84);
        }

        v76 = 1;
      }
    }

    if (v76)
    {
      v93 = v73;

      v94 = 1;
      v257 = v93;
    }

    else
    {
      v94 = 0;
    }

    v25 = v258;
    v23 = v256;
  }

  else
  {
    v94 = 0;
  }

  if ((v94 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_56:
  v7 = v277;
  v95 = v257;
  if (!v257)
  {
    goto LABEL_57;
  }

LABEL_205:
  if (a6)
  {
    v95 = v95;
    *a6 = v95;
  }

  if (v7)
  {
    *v7 = 1;
  }

  if (a3)
  {
    *a3 = v35;
  }

  v96 = 1;
LABEL_212:

LABEL_223:
  return v96;
}

id sub_275EFA120(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 80), a2, a2);
  v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);

  if (v6 == v9)
  {
    v12 = objc_msgSend_formulaListForType_(*(a1 + 8), v10, 1);
    if (objc_msgSend_scheme(*(a1 + 8), v13, v14) == 2)
    {
      v17 = objc_msgSend_objectAtIndex_(v12, v15, 0);
      v18 = *(a1 + 24);
      v21 = objc_msgSend_direction(*(a1 + 8), v19, v20) == 1;
      v23 = objc_msgSend_outputGridVectorForSeries_withContext_byRow_shouldSkipHiddenData_(v17, v22, a2, v18, v21, a3);
    }

    else
    {
      v24 = *(a1 + 48);
      if (v24 != objc_msgSend_count(v12, v15, v16))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "TSCEGridValue *TNChartModelUpdateGetVectorPtrForSeries(TNChartModelUpdateIterationState *, NSUInteger, BOOL)");
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1905, 0, "Inconsistent number of series");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      }

      v17 = objc_msgSend_objectAtIndex_(v12, v25, a2);
      v23 = objc_msgSend_outputValue_shouldSkipHiddenData_(v17, v33, *(a1 + 24), a3);
    }

    v34 = v23;

    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 80), v35, v34, a2);
    v6 = v34;
  }

  v36 = objc_msgSend_vector(v6, v10, v11);

  return v36;
}

void sub_275EFA364(uint64_t a1, const char *a2)
{
  v3 = 1000 * a2;
  if (*(a1 + 72) - 1 >= (1000 * a2 + 999))
  {
    v4 = 1000 * a2 + 999;
  }

  else
  {
    v4 = *(a1 + 72) - 1;
  }

  if (v3 <= v4)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    do
    {
      v8 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, v3);
      v9 = *(a1 + 80);
      v10 = *(v9 + 16);
      v24 = objc_msgSend_entityUID(*v9, v11, v12);
      v25 = v13;
      v14 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v8, v13, v10, &v24);
      v15 = *(a1 + 80);
      v16 = *(v15 + 16);
      v24 = objc_msgSend_entityUID(*v15, v17, v18);
      v25 = v19;
      shouldSkipHiddenData = objc_msgSend_numberOfTotalPlotwiseLabelValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v8, v19, v16, &v24, *(a1 + 88), *(a1 + 89));
      v23 = objc_msgSend_components(v14, v21, v22);
      if (shouldSkipHiddenData)
      {
        ++v5;
      }

      v7 += shouldSkipHiddenData;
      v6 |= v23;

      ++v3;
    }

    while (v3 <= v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  os_unfair_lock_lock((*(*(a1 + 40) + 8) + 48));
  *(*(*(a1 + 48) + 8) + 24) += v7;
  *(*(*(a1 + 56) + 8) + 24) += v5;
  *(*(*(a1 + 64) + 8) + 24) |= v6;
  os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 48));
}

void sub_275EFA504(void *a1, BOOL *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v10 = objc_msgSend_deepType_(v7, v9, 0);
  v11 = v7;
  if (objc_msgSend_deepType_(v11, v12, 0) != 5)
  {
    goto LABEL_6;
  }

  v15 = objc_msgSend_number(v11, v13, v14);
  if ((objc_msgSend_hasUnits(v15, v16, v17) & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v20 = objc_msgSend_dimension(v15, v18, v19);

  if (!v20)
  {
    v23 = MEMORY[0x277D80020];
    v24 = objc_msgSend_number(v11, v21, v22);
    objc_msgSend_rawTimeIntervalValue(v24, v25, v26);
    v29 = objc_msgSend_durationValueWithDouble_(v23, v27, v28);
    goto LABEL_14;
  }

LABEL_7:
  v30 = 0;
  if (v10 <= 4u)
  {
    if (v10 != 2)
    {
      if (v10 != 3)
      {
        goto LABEL_16;
      }

      v31 = MEMORY[0x277D80020];
      v24 = objc_msgSend_date(v11, v21, v22);
      v29 = objc_msgSend_dateValueWithNSDate_(v31, v32, v24);
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v10 != 7)
  {
    if (v10 != 5)
    {
      goto LABEL_16;
    }

LABEL_13:
    v33 = MEMORY[0x277D80020];
    v24 = objc_msgSend_number(v11, v21, v22);
    objc_msgSend_rawDoubleValue(v24, v34, v35);
    v29 = objc_msgSend_numberValueWithDouble_(v33, v36, v37);
    goto LABEL_14;
  }

  v24 = objc_msgSend_asStringWithLocale_(v11, v21, v8);
  if (!v24)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "void p_TSCHMungeCalcEngineValueToDatum(TSCEValue *__strong, BOOL *, __autoreleasing id<TSCHChartGridValue> *, TSULocale *__strong)");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 1948, 0, "invalid nil value for '%{public}s'", "string");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  }

  v50 = NAN;
  if (!objc_msgSend_numberValueFromString_locale_outDoubleValue_(MEMORY[0x277D81290], v40, v24, v8, &v50))
  {
    v30 = 0;
    goto LABEL_15;
  }

  v29 = objc_msgSend_numberValueWithDouble_(MEMORY[0x277D80020], v48, v49, v50);
LABEL_14:
  v30 = v29;
LABEL_15:

LABEL_16:
  if (a2)
  {
    *a2 = v30 != 0;
  }

  if (a3)
  {
    if (v30)
    {
      v38 = v30;
      *a3 = v30;
    }

    else
    {
      v39 = objc_msgSend_numberValueWithDouble_(MEMORY[0x277D80020], v21, v22, NAN);
      *a3 = v39;
    }
  }
}

void sub_275EFA858()
{
  v0 = __C();
  TSUDecimal::operator=();
  TSCEASTNumberElement::appendNumberElement();
  TSCEASTFunctionElement::appendFunctionElement(v0, 0xAF, 1, 0, v1);
  v2 = objc_alloc(MEMORY[0x277D80C60]);
  v4 = objc_msgSend_initWithNodeArray_(v2, v3, v0);
  v6 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v5, v4);
  v7 = qword_280A3DF20;
  qword_280A3DF20 = v6;

  TSCEASTNodeArray::freeNodeArray();
}

void sub_275EFABD4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_275F06EE8(va);
  _Unwind_Resume(a1);
}

void sub_275EFAC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_275F06F3C(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_275EFB660(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_275EFB754(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_275EFC918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v25 = *(v23 - 136);
  if (v25)
  {
    *(v23 - 128) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_275EFD1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = *(v17 - 112);
  if (v19)
  {
    *(v17 - 104) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275EFD398(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *a2;
  v5 = *a2 & 0xFFFF00000000;
  v6 = v3 & 0xFFFF00000000;
  if (v4 != 0x7FFFFFFF && v5 != 0x7FFF00000000 && v3 != 0x7FFFFFFF && v6 != 0x7FFF00000000 && WORD2(*a2) <= WORD2(v3) && v2 <= v3)
  {
    goto LABEL_28;
  }

  if (v4 == 0x7FFFFFFF && v5 != 0x7FFF00000000 && v6 != 0x7FFF00000000)
  {
    if (v3 != 0x7FFFFFFF)
    {
      return 0;
    }

LABEL_28:
    if (*(a1 + 44) == 1)
    {
      if (*(a1 + 32) <= WORD2(v3))
      {
        LODWORD(v2) = WORD2(*a2);
        goto LABEL_33;
      }
    }

    else if (*(a1 + 32) <= v3)
    {
LABEL_33:
      if (*(a1 + 36) - *(a1 + 40) > v2)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    return 1;
  }

  v12 = 0;
  if (v4 != 0x7FFFFFFF && v5 == 0x7FFF00000000 && v6 == 0x7FFF00000000 && v3 != 0x7FFFFFFFLL)
  {
    goto LABEL_28;
  }

  return v12;
}

void sub_275EFDC74(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((*a2 & 0x101FFFFFFFFFFFFLL) != 0xFF00000000)
  {
    v5 = objc_msgSend_formulasForUndo(*(a1 + 32), a2, a3);
    objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v5, v4, 0, a2, 2);
  }
}

void sub_275EFDDF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_originalCellRefForUpdatedCellRef_(v5, a2, a2);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  if ((*a2 & 0x101FFFFFFFFFFFFLL) != 0xFF00000000)
  {
    v6 = objc_msgSend_formulasForUndo(*(a1 + 32), a2, a3);
    objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v6, v7, 0, v8, 2);
  }
}

void sub_275EFF228(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275F06FF8();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275EFF320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F001A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275F03548(TSUIndexSet *this)
{
  if (*(this + 80) == 1)
  {
    return TSUIndexSet::count((this + 32)) != 0;
  }

  result = TSUIndexSet::count(this);
  if (!result)
  {
    return result;
  }

  return *(this + 80) == 2 || TSUIndexSet::count((this + 32)) != 0;
}

void sub_275F03BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, void **a56, char a57)
{
  a56 = &a57;
  sub_275F077D4(&a56);

  a56 = &a53;
  sub_275F077D4(&a56);

  _Unwind_Resume(a1);
}

id sub_275F042A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24))
  {
    isVisible = 1;
  }

  else
  {
    isVisible = objc_msgSend_isVisible_(v3, v4, *(a1 + 32));
    v6 = *(*(a1 + 40) + 8);
  }

  *(v6 + 24) = isVisible;

  return v5;
}

__n128 sub_275F056D8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_275F056FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_275F05714(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = objc_msgSend_translator(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_baseRowIndexForViewRowIndex_(v5, v6, v3);

  v9 = v4[7];
  v8 = v4[8];
  if (v9 >= v8)
  {
    v11 = v4[6];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      sub_275F07904();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
    v17 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      sub_275F07A74((v4 + 6), v17);
    }

    v18 = (v9 - v11) >> 3;
    v19 = (8 * v13);
    v20 = (8 * v13 - 8 * v18);
    *v19 = v7;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = v4[6];
    v4[6] = v20;
    v4[7] = v10;
    v4[8] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = v7;
    v10 = v9 + 8;
  }

  v4[7] = v10;
}

void sub_275F05828(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_275F07904();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_275F07A74((v3 + 6), v13);
    }

    v14 = (v5 - v7) >> 3;
    v15 = (8 * v9);
    v16 = (8 * v9 - 8 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[6];
    v3[6] = v16;
    v3[7] = v6;
    v3[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 8;
  }

  v3[7] = v6;
}

void sub_275F05C4C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 104), 8);
  v4 = *(v2 - 56);
  if (v4)
  {
    *(v2 - 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

__n128 sub_275F05C98(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_275F05CBC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_275F05CD4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_275F05CE4(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 56) = a2;
  *(*(*(a1 + 32) + 8) + 48) = a2;
  sub_275F05D14(*(*(a1 + 40) + 8) + 48, (*(*(a1 + 32) + 8) + 48));
}

void sub_275F05D14(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_275F07904();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_275F07C2C(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_275F05DEC(uint64_t a1, __int16 a2)
{
  *(*(*(a1 + 32) + 8) + 60) = a2;
  *(*(*(a1 + 32) + 8) + 52) = a2;
  sub_275F05D14(*(*(a1 + 40) + 8) + 48, (*(*(a1 + 32) + 8) + 48));
}

void sub_275F05F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F06B08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v6 = *MEMORY[0x277D80070];
  if (*(a1 + v6) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(*(a1 + v6), v7, v8, a4);
  }
}

void sub_275F06BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *MEMORY[0x277D80070];
  if (*(a1 + v4) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_unregisterFromCalcEngine_(*(a1 + v4), v5, v6);
  }
}

id sub_275F06C28(uint64_t a1)
{
  v2 = *MEMORY[0x277D80070];
  v3 = *(a1 + v2);
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = objc_msgSend_formulaOwner(*(a1 + v2), v4, v5);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_275F06C90(uint64_t a1)
{
  v2 = *MEMORY[0x277D80070];
  result = *(a1 + v2);
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      return objc_msgSend_formulaOwnerUID(*(a1 + v2), v4, v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_275F06D00(void *a1)
{
  objc_opt_class();
  v4 = objc_msgSend_documentRoot(a1, v2, v3);
  v5 = TSUDynamicCast();
  v8 = objc_msgSend_calculationEngine(v5, v6, v7);

  if (!v8)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCHChartDrawableInfo(TSCECalculationEngineRegistrationPassthroughForTNChartMediator) componentRootObject]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 5775, 0, "Component root object is nil!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  return v8;
}

void sub_275F06E24(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_275F06E80(exception, a1);
  __cxa_throw(exception, off_27A6A2578, MEMORY[0x277D825F0]);
}

std::logic_error *sub_275F06E80(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_275F06EB4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_275F06F3C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275F06F3C(a1, *a2);
    sub_275F06F3C(a1, a2[1]);
    sub_275F06F9C((a2 + 8), a2[9]);

    operator delete(a2);
  }
}

void sub_275F06F9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275F06F9C(a1, *a2);
    sub_275F06F9C(a1, a2[1]);
    TSUIndexSet::~TSUIndexSet((a2 + 5));

    operator delete(a2);
  }
}

void *sub_275F0707C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *sub_275F070E8(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_275F07334(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_275F07424(a1, prime);
    }
  }
}

void sub_275F07424(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_275F06EB4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_275F07588(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_275F077D4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_275F07854(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_275F0791C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275F06EB4();
}

uint64_t sub_275F07964(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275F079B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07A38(result, a4);
  }

  return result;
}

void sub_275F07A38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_275F0791C(a1, a2);
  }

  sub_275F07904();
}

void sub_275F07A74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275F06EB4();
}

uint64_t sub_275F07ABC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07B38(result, a4);
  }

  return result;
}

void sub_275F07B1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F07B38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_275F07A74(a1, a2);
  }

  sub_275F07904();
}

uint64_t sub_275F07B74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07BF0(result, a4);
  }

  return result;
}

void sub_275F07BD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F07BF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_275F07C2C(a1, a2);
  }

  sub_275F07904();
}

void sub_275F07C2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_275F06EB4();
}

uint64_t sub_275F07C74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_275F0805C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

void sub_275F08A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t sub_275F092A4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (objc_msgSend_shouldShowInPrint(v3, v5, v6))
  {
    if (v4)
    {
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_275F0CF6C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 232), 8);

  _Block_object_dispose((v3 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_275F0CFF8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_275F0D0A4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 64);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v15, 16);
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_setParentInfo_(*(*(&v11 + 1) + 8 * v10++), v7, *(a1 + 32), v11);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

uint64_t sub_275F0D1F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275F0D22C(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = v3;
  if (*(*(a1 + 32) + 141))
  {
    if (objc_msgSend_count(v3, v4, v5) != 2)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNSheet loadFromArchive:unarchiver:]_block_invoke_3");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1287, 0, "expected equality between %{public}s and %{public}s", "[objects count]", "2");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }

    v14 = objc_msgSend_objectAtIndexedSubscript_(v28, v6, 0);
    v15 = *(*(a1 + 32) + 88);
    *(*(a1 + 32) + 88) = v14;

    v17 = objc_msgSend_objectAtIndexedSubscript_(v28, v16, 1);
    v18 = *(*(a1 + 32) + 112);
    *(*(a1 + 32) + 112) = v17;

    v3 = v28;
  }

  else
  {
    if (*(a1 + 40) < 1)
    {
      v21 = 0;
    }

    else
    {
      v19 = 0;
      do
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, v19);
        v22 = *(a1 + 32) + 80;
        v23 = *(v22 + 8 * v19);
        *(v22 + 8 * v19) = v20;

        v21 = ++v19;
        v3 = v28;
      }

      while (v19 < *(a1 + 40));
    }

    if (*(a1 + 44) >= 1)
    {
      v24 = 0;
      do
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, v21);
        ++v21;
        v26 = *(a1 + 32) + 80 + 8 * v24;
        v27 = *(v26 + 24);
        *(v26 + 24) = v25;

        ++v24;
        v3 = v28;
      }

      while (v24 < *(a1 + 44));
    }
  }
}

uint64_t sub_275F0D464(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(*(a1 + 32) + 64))
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNSheet loadFromArchive:unarchiver:]_block_invoke_5");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheet.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1310, 0, "TNSheet unarchived without a _childInfos array. patching up.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    if (!*(*(a1 + 32) + 64))
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      *(v12 + 64) = v11;
    }
  }

  if (objc_msgSend_length(*(*(*(a1 + 40) + 8) + 40), a2, a3) || objc_msgSend_length(*(*(*(a1 + 48) + 8) + 40), v14, v15))
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v14, v15);
    *(*(a1 + 32) + 141) = 1;
    v17 = *(*(*(a1 + 40) + 8) + 40);
    if (!v17)
    {
      v18 = *(a1 + 32);
      v19 = objc_msgSend_documentRoot(v18, 0, v16);
      v22 = objc_msgSend_stylesheet(v19, v20, v21);
      v24 = objc_msgSend_p_newHeaderFooterStorageWithStylesheet_(v18, v23, v22);
      v25 = *(*(a1 + 40) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v17 = *(*(*(a1 + 40) + 8) + 40);
    }

    objc_storeStrong((*(a1 + 32) + 88), v17);
    v28 = *(*(*(a1 + 48) + 8) + 40);
    if (!v28)
    {
      v29 = *(a1 + 32);
      v30 = objc_msgSend_documentRoot(v29, 0, v27);
      v33 = objc_msgSend_stylesheet(v30, v31, v32);
      v35 = objc_msgSend_p_newHeaderFooterStorageWithStylesheet_(v29, v34, v33);
      v36 = *(*(a1 + 48) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      v28 = *(*(*(a1 + 48) + 8) + 40);
    }

    objc_storeStrong((*(a1 + 32) + 112), v28);
  }

  v38 = *(a1 + 32);
  if ((*(v38 + 141) & 1) == 0 && !*(v38 + 80))
  {
    objc_msgSend_p_setupHeadersFooters(v38, v14, v15);
    v38 = *(a1 + 32);
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_275F0D730;
  v40[3] = &unk_27A6A2B08;
  v40[4] = v38;
  return objc_msgSend_enumerateHeaderFooterStoragesWithBlock_(v38, v14, v40);
}

void sub_275F0D730(uint64_t a1, void *a2)
{
  v21 = a2;
  objc_msgSend_setParentInfo_(v21, v3, *(a1 + 32));
  v5 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v21, v4, 0, 0);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_stylesheet(v5, v6, v7);

    if (!v9)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v10, v11);
      v14 = objc_msgSend_documentRoot(*(a1 + 32), v12, v13);
      v17 = objc_msgSend_stylesheet(v14, v15, v16);
      v19 = objc_msgSend_repairOrReplaceErrantStyle_(v17, v18, v8);

      if (v19 != v8)
      {
        objc_msgSend_setParagraphStyle_atParIndex_undoTransaction_(v21, v20, v19, 0, 0);
      }
    }
  }
}

void sub_275F0D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_275F0E0DC(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275F06FF8();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275F0E1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275F0ED40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DB688 = v4;
  qword_2812DB680 = &unk_2884F5EF8;
  if (atomic_load_explicit(dword_2812DB008, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DB6A0 = 0;
  qword_2812DB698 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812DB680);
}

uint64_t *sub_275F0EDF4(uint64_t *a1)
{
  if (a1 != &qword_2812DB680 && a1[3])
  {
    v2 = MEMORY[0x277C90EA0]();
    MEMORY[0x277C91940](v2, 0x10A1C404E50D5EBLL);
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275F0EE58(uint64_t *a1)
{
  sub_275F0EDF4(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275F0EE98(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSDSOS::SpecFillArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275EEF3A0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275F0EEF8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_275EEF00C(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C91040](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_275F4AAC8(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275EEF1DC((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_275EEF00C(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *sub_275F0F0E4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275F0F214(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 + (v2 & 2);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275F0F2B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5F98, 0);
  if (v4)
  {

    return sub_275F0F360(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F0F360(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C91040](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80530];
      }

      result = TSDSOS::SpecFillArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_275F0F414(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F0EE98(result);

    return sub_275F0F2B8(v4, a2);
  }

  return result;
}

uint64_t sub_275F0F460(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275F0F4CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275F0F5B0(a1);
}

uint64_t sub_275F0F5B0(uint64_t a1)
{
  v2 = sub_275F0F628(a1, 1);
  *v2 = &unk_2884F5EF8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812DB008, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275F0F628(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4AB98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275F0F6B0);
}

void sub_275F0FD00(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275F0FDF0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275F0FFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275F10008(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  v6 = a2[1];
  v9 = result == 0x7FFFFFFF || (result & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v6) == 0 || v6 == 0;
  v10 = HIDWORD(v6) * v6;
  if (!v9 && v10 != 0)
  {
    if (v10 == 1)
    {
      v12 = objc_msgSend_tableUID(*(a1 + 32), v6, a3);
      v22.range._topLeft = *a2;
      v22.range._bottomRight = v12;
      v22._tableUID._lower = v13;
      v14 = *(a1 + 48);
      memset(&v23, 0, sizeof(v23));
      result = TSCEASTNodeArray::appendReference(v14, &v22, 0, &v23);
    }

    else
    {
      v15 = __C();
      v17 = v16;
      v18 = *(a1 + 48);
      v20 = objc_msgSend_tableUID(*(a1 + 32), v16, v19);
      v22.range._topLeft = v15;
      v22.range._bottomRight = v17;
      v22._tableUID._lower = v20;
      v22._tableUID._upper = v21;
      memset(&v23, 0, sizeof(v23));
      result = TSCEASTNodeArray::appendRangeReference(v18, &v22, 0, &v23);
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void sub_275F103D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275F10438(uint64_t result, TSUCellCoord a2, unint64_t a3)
{
  if (a2.row != 0x7FFFFFFF && (*&a2 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(a3) && a3 && HIDWORD(a3) * a3)
  {
    v4 = result;
    if (HIDWORD(a3) * a3 == 1)
    {
      v5 = objc_msgSend_tableUID(*(result + 32), *&a2, a3);
      v15.range._topLeft = a2;
      v15.range._bottomRight = v5;
      v15._tableUID._lower = v6;
      v7 = *(v4 + 48);
      memset(&v16, 0, sizeof(v16));
      result = TSCEASTNodeArray::appendReference(v7, &v15, 0, &v16);
    }

    else
    {
      v8 = __C();
      v10 = v9;
      v11 = *(v4 + 48);
      v13 = objc_msgSend_tableUID(*(v4 + 32), v9, v12);
      v15.range._topLeft = v8;
      v15.range._bottomRight = v10;
      v15._tableUID._lower = v13;
      v15._tableUID._upper = v14;
      memset(&v16, 0, sizeof(v16));
      result = TSCEASTNodeArray::appendRangeReference(v11, &v15, 0, &v16);
    }

    ++*(*(*(v4 + 40) + 8) + 24);
  }

  return result;
}

void sub_275F1174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char *__p, char *a44, uint64_t a45, char a46)
{
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  __p = &a46;
  sub_275F077D4(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_275F11A20(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D80CA8]);
    v5 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v3, v4, v2, &unk_275F5EE50);
    TSCEASTColonTractElement::appendColonTractElement();

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_275F11AF0(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v148 = objc_msgSend_calcEngine(v8, v10, v11);
  v177 = 0;
  v178 = 0;
  v179 = 0;
  a4[1] = *a4;
  v14 = objc_msgSend_count(v9, v12, v13);
  v169 = 0;
  v170 = &v169;
  v171 = 0x4812000000;
  v172 = sub_275F15A5C;
  v173 = sub_275F15A98;
  v174 = "";
  v176[0] = 0;
  v176[1] = 0;
  v175 = v176;
  v16 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v15, 175);
  v146 = v8;
  v147 = v16;
  v163[0] = v146;
  v163[1] = v16;
  v164 = 0;
  *v165 = 0x10000000000;
  v166 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v167 = 0;
  v168 = 0;
  *&v165[7] = a3;
  v150 = v9;
  if (v14)
  {
    v151 = 0;
    v149 = 0;
    for (i = 0; i != v14; ++i)
    {
      v20 = objc_msgSend_valueAtIndexNoThrow_index_(v9, v17, v163, i);
      v154[0] = v20;
      if (a3 && v165[10] | v165[9])
      {
        ++v149;
      }

      else if (objc_msgSend_nativeType(v20, v21, v22) == 6)
      {
        v25 = a4;
        v26 = v14;
        v29 = objc_msgSend_asReferenceValue(v154[0], v23, v24);
        if (v29)
        {
          v30 = objc_alloc(MEMORY[0x277D80C38]);
          v33 = objc_msgSend_evalRef(v29, v31, v32);
          v36 = objc_msgSend_tractRef(v33, v34, v35);
          v38 = objc_msgSend_initWithCppCellTractRef_(v30, v37, v36);
        }

        else
        {
          v38 = 0;
        }

        if ((objc_msgSend_isValid(v38, v27, v28) & 1) == 0)
        {
          v41 = MEMORY[0x277D81150];
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "TSCEGridValue *reorderVectorForCategorizedTables(TSCEGridValue *__strong, TSCEEvaluationContext *__strong, BOOL, std::vector<TSUCellCoord> &)");
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 1170, 0, "Invalid tractRef - %{public}@", v38, v146, v147);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
        }

        if (v151 && (v48 = objc_msgSend_tableUID(v151, v39, v40), v50 = v49, v48 == objc_msgSend_tableUID(v38, v49, v51)) && v50 == v39)
        {
          v52 = v151;
        }

        else
        {
          v53 = MEMORY[0x277D80D48];
          v155._lower = objc_msgSend_tableUID(v38, v39, v40);
          v155._upper = v54;
          v55 = objc_msgSend_tableModelForTableUID_withCalcEngine_(v53, v54, &v155, v148);

          v52 = v55;
        }

        v151 = v52;
        v56 = objc_msgSend_tableUID(v52, v39, v40);
        if (!(v56 | v57))
        {
          v59 = MEMORY[0x277D81150];
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "TSCEGridValue *reorderVectorForCategorizedTables(TSCEGridValue *__strong, TSCEEvaluationContext *__strong, BOOL, std::vector<TSUCellCoord> &)");
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          v155._lower = objc_msgSend_tableUID(v151, v63, v64);
          v155._upper = v65;
          v66 = TSKUIDStruct::description(&v155);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v67, v60, v62, 1175, 0, "Invalid table UID in table model, UUID = %{public}@", v66);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
        }

        v70 = objc_msgSend_tableUID(v38, v57, v58);
        if (!(v70 | v71))
        {
          v73 = MEMORY[0x277D81150];
          v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "TSCEGridValue *reorderVectorForCategorizedTables(TSCEGridValue *__strong, TSCEEvaluationContext *__strong, BOOL, std::vector<TSUCellCoord> &)");
          v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          v155._lower = objc_msgSend_tableUID(v38, v77, v78);
          v155._upper = v79;
          v80 = TSKUIDStruct::description(&v155);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v81, v74, v76, 1176, 0, "Invalid table UID in tract ref, UUID = %{public}@", v80);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83);
        }

        v84 = objc_msgSend_tableInfo(v151, v71, v72);
        v87 = objc_msgSend_translator(v84, v85, v86);
        v89 = objc_msgSend_chromeTractRefForBaseTractRef_(v87, v88, v38);

        if ((objc_msgSend_isValid(v89, v90, v91) & 1) == 0)
        {
          v94 = MEMORY[0x277D81150];
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "TSCEGridValue *reorderVectorForCategorizedTables(TSCEGridValue *__strong, TSCEEvaluationContext *__strong, BOOL, std::vector<TSUCellCoord> &)");
          v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v98, v95, v97, 1178, 0, "Invalid chromeTractRef - %{public}@", v89);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100);
        }

        if (objc_msgSend_isValid(v89, v92, v93))
        {
          objc_msgSend_rows(v89, v101, v102);
          v157 = MEMORY[0x277D85DD0];
          v158 = 3221225472;
          v159 = sub_275F15B98;
          v160 = &unk_27A6A2C60;
          v161 = v89;
          v162 = &v169;
          TSUIndexSet::enumerateIndexesUsingBlock();
        }

        v9 = v150;
        v14 = v26;
        a4 = v25;
      }

      else
      {
        sub_275F15AA4(&v177, v154);
      }
    }
  }

  else
  {
    v149 = 0;
    v151 = 0;
  }

  v155._lower = 0;
  v155._upper = 0;
  v156 = 0;
  v103 = objc_msgSend_tableInfo(v151, v17, v18);
  v106 = objc_msgSend_translator(v103, v104, v105);

  v109 = objc_msgSend_calcEngine(v151, v107, v108);
  v154[0] = objc_msgSend_tableUID(v151, v110, v111);
  v154[1] = v112;
  v113 = objc_msgSend_tableResolverForTableUID_(v109, v112, v154);

  v116 = v170[6];
  v117 = v170 + 7;
  if (v116 != v170 + 7)
  {
    do
    {
      v118 = *(v116 + 28);
      v154[0] = 0;
      v154[0] = objc_msgSend_baseCellCoordForChromeCellCoord_(v106, v114, v118);
      if (v113)
      {
        LOBYTE(isOutputOfAFunction) = 0;
        v119 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v113, v114, v154, v154, &isOutputOfAFunction);
        v120 = objc_alloc(MEMORY[0x277D80CA0]);
        v152 = 0;
        isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v120, v121, v119, &unk_275F5EE50, &v152, 1, 0);
        sub_275F15AA4(&v155, &isOutputOfAFunction);
        sub_275F15C60(a4, (v116 + 28));

        v9 = v150;
      }

      v122 = v116[1];
      if (v122)
      {
        do
        {
          v123 = v122;
          v122 = *v122;
        }

        while (v122);
      }

      else
      {
        do
        {
          v123 = v116[2];
          v124 = *v123 == v116;
          v116 = v123;
        }

        while (!v124);
      }

      v116 = v123;
    }

    while (v123 != v117);
  }

  v125 = v177;
  for (j = v178; v125 != j; ++v125)
  {
    sub_275F15AA4(&v155, v125);
    sub_275F15C60(a4, &qword_275F5EE58);
  }

  lower = v155._lower;
  upper = v155._upper;
  if (v149 + ((upper - lower) >> 3) != objc_msgSend_count(v9, v114, v115))
  {
    v130 = MEMORY[0x277D81150];
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "TSCEGridValue *reorderVectorForCategorizedTables(TSCEGridValue *__strong, TSCEEvaluationContext *__strong, BOOL, std::vector<TSUCellCoord> &)");
    v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v134, v131, v133, 1209, 0, "valueVector and formattedGrid cannot have different counts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136);
  }

  v137 = objc_alloc(MEMORY[0x277D80C50]);
  v154[0] = objc_msgSend_dimensions(v150, v138, v139);
  isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v137, v140, &v155, 0, 0, v154);
  v143 = objc_msgSend_gridValue_(MEMORY[0x277D80C80], v142, isFlattened_dimensions);

  v144 = v143;
  v154[0] = &v155;
  sub_275F077D4(v154);

  _Block_object_dispose(&v169, 8);
  sub_275F16814(&v175, v176[0]);

  v169 = &v177;
  sub_275F077D4(&v169);

  return v144;
}

void sub_275F123C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  a20 = &a22;
  sub_275F077D4(&a20);

  _Block_object_dispose((v51 - 200), 8);
  sub_275F16814(v51 - 152, a47);

  a40 = v51 - 128;
  sub_275F077D4((v51 - 200));

  _Unwind_Resume(a1);
}

id sub_275F125F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  memset(v30, 0, sizeof(v30));
  v8 = objc_msgSend_count(v5, v6, v7);
  v10 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v9, 175);
  v12 = v4;
  v24[0] = v12;
  v24[1] = v10;
  v25 = 0;
  *v26 = 0x10000000000;
  v27 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v28 = 0;
  v29 = 0;
  *&v26[7] = 1;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v14 = objc_msgSend_valueAtIndexNoThrow_index_(v5, v11, v24, i);
      v23 = v14;
      if (!(v26[10] | v26[9]))
      {
        sub_275F15AA4(v30, &v23);
        v14 = v23;
      }
    }
  }

  v15 = objc_alloc(MEMORY[0x277D80C50]);
  v23 = objc_msgSend_dimensions(v5, v16, v17);
  isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v15, v18, v30, 0, 0, &v23);
  v21 = objc_msgSend_gridValue_(MEMORY[0x277D80C80], v20, isFlattened_dimensions);

  v24[0] = v30;
  sub_275F077D4(v24);

  return v21;
}

void sub_275F12788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, id a13)
{
  a11 = (v17 - 72);
  sub_275F077D4(&a11);

  _Unwind_Resume(a1);
}

char *sub_275F127F4(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 3)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 3)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      v18 = &v8[8 * (a3 - (v15 >> 3))];
      do
      {
        *&v8[v16] = *a4;
        v16 += 8;
      }

      while (8 * a3 - 8 * v17 != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v19 = &__src[8 * a3];
    v20 = &v18[-8 * a3];
    v21 = v18;
    if (v20 < v8)
    {
      v21 = v18;
      do
      {
        v22 = *v20;
        v20 += 8;
        *v21 = v22;
        v21 += 8;
      }

      while (v20 < v8);
    }

    a1[1] = v21;
    if (v18 != v19)
    {
      memmove(&__src[8 * a3], __src, v18 - v19);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v23 = 0;
      }

      else
      {
        v23 = a3;
      }

      v5 += 8 * v23;
    }

    v24 = __src;
    do
    {
      *v24 = *v5;
      v24 += 8;
      --v17;
    }

    while (v17);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 3);
  if (v11 >> 61)
  {
    sub_275F07904();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_275F07A74(a1, v14);
  }

  v25 = 8 * (v12 >> 3);
  v26 = 8 * a3;
  v27 = v25;
  do
  {
    *v27++ = *a4;
    v26 -= 8;
  }

  while (v26);
  memcpy((v25 + 8 * a3), __src, a1[1] - __src);
  v28 = *a1;
  v29 = v25 + 8 * a3 + a1[1] - __src;
  a1[1] = __src;
  v30 = (__src - v28);
  v31 = (v25 - (__src - v28));
  memcpy(v31, v28, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v29;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v25;
}

void sub_275F12DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275F12E18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275F12E30(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  if (objc_msgSend_isNil(v14, v4, v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_coercedStringWithContext_(v14, v6, *(a1 + 32));
    if (v7)
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v11 = objc_msgSend_length(v10, v8, v9);
      v13 = @" ";
      if (!v11)
      {
        v13 = &stru_2884F65E0;
      }

      objc_msgSend_appendFormat_(v10, v12, @"%@%@", v13, v7);
    }
  }
}

void sub_275F12F14(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  if (objc_msgSend_isNil(v14, v4, v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_coercedStringWithContext_(v14, v6, *(a1 + 32));
    if (v7)
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v11 = objc_msgSend_length(v10, v8, v9);
      v13 = @" ";
      if (!v11)
      {
        v13 = &stru_2884F65E0;
      }

      objc_msgSend_appendFormat_(v10, v12, @"%@%@", v13, v7);
    }
  }
}

void sub_275F13774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  sub_275F164FC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_275F13840(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_275F165F8(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    v3[1] = a2[1];
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

void sub_275F13AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  sub_275F164FC(&a18);

  _Unwind_Resume(a1);
}

uint64_t sub_275F14DBC(TSCEASTNodeArray *a1, TSKUIDStruct *a2, TSUCellCoord a3, TSUCellCoord a4)
{
  v6.range._topLeft = a3;
  v6.range._bottomRight = a4;
  v6._tableUID = *a2;
  memset(&v5, 0, sizeof(v5));
  TSCEASTNodeArray::appendRangeReference(a1, &v6, 0, &v5);
  return 1;
}

uint64_t sub_275F14E00(TSCEASTBooleanElement *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_nativeType(v5, v7, v8);
  v10 = sub_275F15D34(a1, v5, v9, v6);

  return v10;
}

uint64_t sub_275F152D8(TSCEASTBooleanElement *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = objc_msgSend_deepType_(v5, v7, 0);
  v9 = sub_275F15D34(a1, v5, v8, v6);

  return v9;
}

void sub_275F15478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_275F154A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48))
  {
    v15 = 0;
    goto LABEL_20;
  }

  v6 = objc_msgSend_numberOfValuesWithCalcEngine_plotByRow_(v3, v4, *(a1 + 32), *(a1 + 56));
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = *(*(*(a1 + 40) + 8) + 24) + v6;
  v12 = v11 - v10;
  if (v11 > v10)
  {
    if (v12 < v6)
    {
      if (objc_msgSend_type(v5, v7, v8) == 1)
      {
        if (v5)
        {
          objc_msgSend_rangeReference(v5, v13, v14);
        }

        else
        {
          v76 = 0;
          v77 = 0u;
        }

        if (TSCERangeCoordinate::isSpanning(&v76))
        {
          v40 = objc_msgSend_tableResolverForTableUID_(*(a1 + 32), v39, &v77);
          v42 = v40;
          if (v40)
          {
            v76._topLeft = objc_msgSend_apparentRangeForRange_rangeContext_(v40, v41, &v76, 1);
            v76._bottomRight = v43;
          }
        }

        if (*(a1 + 56) == 1)
        {
          column = v76._bottomRight.column;
          row = v76._bottomRight.row - v12;
        }

        else
        {
          TSCERangeCoordinate::spansAllRows(&v76);
          column = v76._bottomRight.column - v12;
          row = v76._bottomRight.row;
        }

        v76._bottomRight.row = row;
        *&v76._bottomRight.column = column;
        v46 = [TNChartFormulaArgument alloc];
        v72 = v76;
        v73 = v77;
        v16 = objc_msgSend_initWithRangeReference_(v46, v47, &v72);
        goto LABEL_9;
      }

      if (objc_msgSend_type(v5, v13, v14) == 2)
      {
        v19 = objc_msgSend_tractReference(v5, v17, v18);
        if ((objc_msgSend_spansAllRows(v19, v20, v21) & 1) != 0 || objc_msgSend_spansAllColumns(v19, v22, v23))
        {
          v24 = *(a1 + 32);
          v76._topLeft = objc_msgSend_tableUID(v19, v22, v23);
          v76._bottomRight = v25;
          v26 = objc_msgSend_tableResolverForTableUID_(v24, v25, &v76);
          if (v26)
          {
            v29 = objc_alloc(MEMORY[0x277D80C38]);
            if (v19)
            {
              objc_msgSend_cppCellTractRef(v19, v27, v28);
            }

            else
            {
              v75 = 0;
              v73 = 0u;
              memset(v74, 0, sizeof(v74));
              v72 = 0;
            }

            objc_msgSend_apparentTractRefForTractRef_rangeContext_(v26, v27, &v72, 1);
            v49 = objc_msgSend_initWithCppCellTractRef_(v29, v48, &v76);

            TSUIndexSet::~TSUIndexSet(&v78);
            TSUIndexSet::~TSUIndexSet(&v76);
            TSUIndexSet::~TSUIndexSet(v74);
            TSUIndexSet::~TSUIndexSet(&v72);
            v19 = v49;
          }
        }

        if (*(a1 + 56) == 1)
        {
          v50 = objc_msgSend_columns(v19, v22, v23);
          v53 = objc_msgSend_columns(v19, v51, v52);
          TSUIndexSet::count(v53);
          v54 = TSUIndexSet::nthIndex(v50);
          v57 = objc_msgSend_columns(v19, v55, v56);
          Index = TSUIndexSet::lastIndex(v57);
          v76._topLeft = v54;
          v76._bottomRight = Index;
          objc_msgSend_removeColumnRange_(v19, v59, &v76);
        }

        else
        {
          v60 = objc_msgSend_rows(v19, v22, v23);
          v63 = objc_msgSend_rows(v19, v61, v62);
          TSUIndexSet::count(v63);
          v64 = TSUIndexSet::nthIndex(v60);
          v67 = objc_msgSend_rows(v19, v65, v66);
          v68 = TSUIndexSet::lastIndex(v67);
          v76._topLeft = v64;
          v76._bottomRight = v68;
          objc_msgSend_removeRowRange_(v19, v69, &v76);
        }

        v70 = [TNChartFormulaArgument alloc];
        v15 = objc_msgSend_initWithTractReference_(v70, v71, v19);

        goto LABEL_19;
      }

      if (objc_msgSend_type(v5, v17, v18) != 3)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TNChartFormulaWrapper formulaByTrimmingCategoryLabels:plotByRow:calcEngine:inChart:]_block_invoke");
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 993, 0, "Trying to trim labels from unexpected type of chart formula argument!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      }
    }

    v15 = 0;
    goto LABEL_19;
  }

  v16 = v5;
LABEL_9:
  v15 = v16;
LABEL_19:
  *(*(*(a1 + 40) + 8) + 24) += v9;
LABEL_20:

  return v15;
}

void *sub_275F15A5C(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

id sub_275F15AA4(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_275F07904();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_275F0791C(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_275F07854(a1, v13);
    v7 = a1[1];
    result = sub_275F07964(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_275F15B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275F07964(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275F15C20(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 40) | (a2 << 32);
  return sub_275F16868(v2 + 48, &v4);
}

void sub_275F15C60(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_275F07904();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_275F07A74(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_275F15D34(TSCEASTBooleanElement *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v11 = v8;
  if (v7)
  {
    if (a3 <= 3)
    {
      if (!a3)
      {
        v19 = 0;
        goto LABEL_23;
      }

      if (a3 == 2)
      {
        v31 = objc_msgSend_BOOLean(v7, v9, v10);
        TSCEASTBooleanElement::appendBooleanElement(a1, v31);
        goto LABEL_22;
      }

      if (a3 != 3)
      {
        goto LABEL_17;
      }

      v20 = objc_msgSend_asDateValue(v7, v9, v10);
      objc_msgSend_appendASTForConstantToNodeArray_(v20, v21, a1);
    }

    else
    {
      if (a3 <= 6)
      {
        if (a3 == 4)
        {
          v25 = MEMORY[0x277D81150];
          v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "NSUInteger TNAddValueToChartFormulaNodeArray(TSCEASTNodeArray *, TSCEValue *__strong, TSCEArgumentType, TSCECalculationEngine *__strong)");
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v27, v13, v15, 1339, 0, "chart mediator doesn't handle durations.");
          goto LABEL_8;
        }

        if (a3 != 5)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (a3 != 7)
      {
        if (a3 == 8)
        {
LABEL_15:
          objc_msgSend_coercedDouble(v7, v9, v10);
          TSUDecimal::operator=();
          TSCEASTNumberElement::appendNumberElement();
LABEL_22:
          v19 = 1;
          goto LABEL_23;
        }

LABEL_17:
        v22 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "NSUInteger TNAddValueToChartFormulaNodeArray(TSCEASTNodeArray *, TSCEValue *__strong, TSCEArgumentType, TSCECalculationEngine *__strong)");
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v24, v13, v15, 1354, 0, "chart mediator doesn't handle value type: %d.", a3);
        goto LABEL_8;
      }

      v20 = objc_msgSend_documentLocale(v8, v9, v10);
      v29 = objc_msgSend_asStringWithLocale_(v7, v28, v20);
      TSCEASTStringElement::appendStringElement(a1, v29, v30);
    }

    goto LABEL_22;
  }

  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "NSUInteger TNAddValueToChartFormulaNodeArray(TSCEASTNodeArray *, TSCEValue *__strong, TSCEArgumentType, TSCECalculationEngine *__strong)");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1326, 0, "chart mediator asked to read a nil value");
LABEL_8:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  v19 = 0;
LABEL_23:

  return v19;
}

id sub_275F16010(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x60) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v3 = *(a1 + 64);
    v2 = *(a1 + 68);
    v4 = *(a1 + 73);
    v5 = *(a1 + 72);
  }

  v6 = objc_alloc(MEMORY[0x277D80C60]);
  isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v6, v7, a1, 0);
  if (v3 || v2)
  {
    if ((v3 & 0x8000) != 0 || (v2 & 0x80000000) != 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "TNChartFormulaWrapper *TNUnarchiveFormulaForCharts(const TSCE::FormulaArchive &)");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1397, 0, "Negative host cell in a chart? Should not be possible.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    if (v5)
    {
      v17 = -v3;
    }

    else
    {
      LOWORD(v17) = v3;
    }

    if (v4)
    {
      v18 = -v2;
    }

    else
    {
      v18 = v2;
    }

    v19 = objc_msgSend_copyByOffsettingRelativeReferences_(isPreUFF, v8, v17 | (v18 << 32));

    isPreUFF = v19;
  }

  v20 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v8, isPreUFF);

  return v20;
}

char *sub_275F161A4(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_275F07904();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_275F07A74(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *sub_275F163D0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_275F07B38(v6, v10);
    }

    sub_275F07904();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_275F164FC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_275F1657C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07B38(result, a4);
  }

  return result;
}

void sub_275F165DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275F165F8(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_275F07904();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_275F1670C(a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = 16 * v2;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  v8[1] = a2[1];
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = (16 * v2 + *a1 - v10);
  sub_275F16754(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_275F167C0(&v16);
  return v15;
}

void sub_275F166F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275F167C0(va);
  _Unwind_Resume(a1);
}

void sub_275F1670C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275F06EB4();
}

void sub_275F16754(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      a4[1] = v6[1];
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 2;
    }
  }
}

uint64_t sub_275F167C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275F16814(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275F16814(a1, *a2);
    sub_275F16814(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_275F16868(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_275F168FC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_275F168FC(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v6 >= v9 && (v6 != v9 || v7 >= *(v8 + 16)))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_13;
        }
      }

      if (v9 >= v6 && *(v8 + 16) >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_13:
  *a2 = v8;
  return result;
}

uint64_t *sub_275F1696C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_275F169C4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_275F169C4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

id sub_275F17158(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 48);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C90FB0](v5);
    *(v3 + 48) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TNTheme;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_275F174D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275F174E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

void sub_275F18ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a10);

  _Unwind_Resume(a1);
}

void sub_275F18DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&a10);

  _Unwind_Resume(a1);
}

uint64_t sub_275F1B0B8(uint64_t a1)
{
  v2 = TSCEASTStreamIterator::TSCEASTStreamIterator();
  *v2 = &unk_2884F6000;
  *(v2 + 136) = 0;
  *(v2 + 96) = 1;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = *(a1 + 136);
  *(a1 + 136) = v3;

  return a1;
}

id sub_275F1B140(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(*(a1 + 136), a2, a3);
  if (v4)
  {
    v4 = objc_msgSend_objectEnumerator(*(a1 + 136), v5, v6);
  }

  return v4;
}

void sub_275F1B188(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_msgSend_addObject_(*(a1 + 136), v3, v4);
  }
}

uint64_t sub_275F1B1F4(uint64_t a1, uint64_t a2)
{
  if (TSCEASTFunctionElement::functionIndex() != 175)
  {
    (*(*a1 + 328))(a1);
  }

  return a2;
}

uint64_t sub_275F1B260(uint64_t a1, uint64_t a2)
{
  v10[0] = TSCEASTNumberElement::value();
  v10[1] = v4;
  v5 = objc_msgSend_numberWithDecimal_(MEMORY[0x277D80C98], v4, v10);
  v6 = [TNChartFormulaArgument alloc];
  v8 = objc_msgSend_initWithStaticValue_(v6, v7, v5);
  sub_275F1B188(a1, v8);

  return a2;
}

uint64_t sub_275F1B314(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTBooleanElement::value();
  v6 = objc_msgSend_BOOLValue_(MEMORY[0x277D80C20], v5, v4);
  v7 = [TNChartFormulaArgument alloc];
  v9 = objc_msgSend_initWithStaticValue_(v7, v8, v6);
  sub_275F1B188(a1, v9);

  return a2;
}

uint64_t sub_275F1B3BC(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTStringElement::string();
  v6 = objc_msgSend_stringValue_(MEMORY[0x277D80CB0], v5, v4);
  v7 = [TNChartFormulaArgument alloc];
  v9 = objc_msgSend_initWithStaticValue_(v7, v8, v6);
  sub_275F1B188(a1, v9);

  return a2;
}

uint64_t sub_275F1B484(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTDateElement::value();
  v6 = objc_msgSend_dateValue_(MEMORY[0x277D80C48], v5, v4);
  v7 = [TNChartFormulaArgument alloc];
  v9 = objc_msgSend_initWithStaticValue_(v7, v8, v6);
  sub_275F1B188(a1, v9);

  return a2;
}

uint64_t sub_275F1B54C(uint64_t a1, uint64_t a2)
{
  TSCEASTDurationElement::unitNum();
  v4 = TSCEASTDurationElement::unit();
  v5 = MEMORY[0x277D80C98];
  TSUDecimal::operator=();
  v7 = objc_msgSend_numberWithDecimal_baseUnit_(v5, v6, &v12, v4);
  v8 = [TNChartFormulaArgument alloc];
  v10 = objc_msgSend_initWithStaticValue_(v8, v9, v7);
  sub_275F1B188(a1, v10);

  return a2;
}

uint64_t sub_275F1B62C(uint64_t a1, uint64_t a2)
{
  v4 = [TNChartFormulaArgument alloc];
  v7 = objc_msgSend_initWithBadRef(v4, v5, v6);
  sub_275F1B188(a1, v7);

  return a2;
}

uint64_t sub_275F1B690(uint64_t a1, uint64_t a2)
{
  v4 = [TNChartFormulaArgument alloc];
  v7 = objc_msgSend_initWithBadRef(v4, v5, v6);
  sub_275F1B188(a1, v7);

  return a2;
}

uint64_t sub_275F1B6F4(uint64_t a1, uint64_t a2)
{
  TSCEASTRelativeCoordRefElement::relativeCoord();
  v4 = TSCEASTRelativeCoordRefElement::tableUID();
  v6 = v5;
  v20 = TSCEASTRelativeCoordRefElement::preserveFlags();
  TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v7 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate();
  v8 = TSCEASTElement::refFlags() & 0xC;
  if (v8 == 8 || v8 == 4)
  {
    v9 = [TNChartFormulaArgument alloc];
    v16 = v7;
    v17 = v7;
    v18 = v4;
    v19 = v6;
    v11 = objc_msgSend_initWithRangeReference_(v9, v10, &v16);
  }

  else
  {
    v12 = [TNChartFormulaArgument alloc];
    v16 = v7;
    v17 = v4;
    v18 = v6;
    v11 = objc_msgSend_initWithCellReference_(v12, v13, &v16);
  }

  v14 = v11;
  if (v11)
  {
    sub_275F1B188(a1, v11);
  }

  return a2;
}

void sub_275F1B808(uint64_t a1)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v52 = 0;
  TSCEASTColonElement::rangeReference();
  if (objc_msgSend_count(*(a1 + 136), v2, v3) <= 1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "virtual void TNChartFormulaArgumentExtractionIterator::endColonNode(TSCEASTColonElement *)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentExtractionIterator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 153, 0, "must have pushed cell refs!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (objc_msgSend_count(*(a1 + 136), v4, v5) >= 2)
  {
    v15 = objc_msgSend_tsu_pop(*(a1 + 136), v13, v14);
    v18 = objc_msgSend_tsu_pop(*(a1 + 136), v16, v17);
    if (objc_msgSend_type(v18, v19, v20) || objc_msgSend_type(v15, v21, v22))
    {
      if (objc_msgSend_type(v18, v21, v22) != 1 || objc_msgSend_type(v15, v23, v24) != 1)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "virtual void TNChartFormulaArgumentExtractionIterator::endColonNode(TSCEASTColonElement *)");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentExtractionIterator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 180, 0, "Saw colon node without two cell references preceding it!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
        v34 = *(a1 + 136);
        v53[0] = v18;
        v53[1] = v15;
        v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v53, 2);
        objc_msgSend_addObjectsFromArray_(v34, v37, v36);

LABEL_21:
        return;
      }

      if (v18)
      {
        objc_msgSend_rangeReference(v18, v23, v25);
        if (v15)
        {
LABEL_10:
          objc_msgSend_rangeReference(v15, v23, v25);
          v26 = *(&v47[0] + 1);
LABEL_17:
          v51 = v49;
          *&v50 = v48;
          *(&v50 + 1) = v26;
          TSCERangeRef::setPreserveFlags();
          v39 = [TNChartFormulaArgument alloc];
          v45 = v50;
          v46 = v51;
          v41 = objc_msgSend_initWithRangeReference_(v39, v40, &v45);
          sub_275F1B188(a1, v41);

          goto LABEL_21;
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        if (v15)
        {
          goto LABEL_10;
        }
      }

      v26 = 0;
      memset(v47, 0, sizeof(v47));
      goto LABEL_17;
    }

    if (v18)
    {
      objc_msgSend_cellReference(v18, v21, v22);
      if (v15)
      {
LABEL_14:
        objc_msgSend_cellReference(v15, v21, v22);
        v38 = v45;
LABEL_20:
        v51 = *(v47 + 8);
        *&v50 = *&v47[0];
        *(&v50 + 1) = v38;
        TSCERangeRef::setPreserveFlags();
        v42 = [TNChartFormulaArgument alloc];
        v48 = v50;
        v49 = v51;
        v44 = objc_msgSend_initWithRangeReference_(v42, v43, &v48);
        sub_275F1B188(a1, v44);

        goto LABEL_21;
      }
    }

    else
    {
      memset(v47, 0, 24);
      if (v15)
      {
        goto LABEL_14;
      }
    }

    v38 = 0;
    v45 = 0uLL;
    *&v46 = 0;
    goto LABEL_20;
  }
}

uint64_t sub_275F1BBC8(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTColonTractElement::relativeTractRef();
  v6 = objc_msgSend_absoluteCellTractRefForHostCell_(v4, v5, &unk_275F5EE60);
  v7 = [TNChartFormulaArgument alloc];
  v9 = objc_msgSend_initWithTractReference_(v7, v8, v6);
  sub_275F1B188(a1, v9);

  return a2;
}

uint64_t sub_275F1BC80(uint64_t a1, uint64_t a2)
{
  v4 = [TNChartFormulaArgument alloc];
  v5 = TSCEASTCategoryRefElement::categoryRef();
  v7 = objc_msgSend_initWithCategoryReference_(v4, v6, v5);

  sub_275F1B188(a1, v7);
  return a2;
}

uint64_t sub_275F1BD14(uint64_t a1, uint64_t a2)
{
  v4 = [TNChartFormulaArgument alloc];
  v5 = TSCEASTViewTractRefElement::viewTractRef();
  v7 = objc_msgSend_initWithViewTractReference_(v4, v6, v5);

  sub_275F1B188(a1, v7);
  return a2;
}

void *sub_275F1BDA8()
{
  result = TSCEPartialEvalRewriter::TSCEPartialEvalRewriter();
  *result = &unk_2884F6160;
  result[29] = 0;
  return result;
}

uint64_t sub_275F1BDE0(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  if (TSCEASTFunctionElement::functionIndex() == 175)
  {
    if (*(a1 + 232))
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "virtual TSCEASTElement *TNChartFormulaEvalRewriter::functionNode(TSCEASTFunctionElement *)");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentExtractionIterator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 219, 0, "Iterating formula with multiple __CHART functions?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = *(a1 + 232);
    *(a1 + 232) = v11;

    v70 = *(a1 + 224);
    objc_msgSend_children(v70, v13, v14);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v15 = v75 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v74, v78, 16);
    if (v19)
    {
      v20 = *v75;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v75 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = objc_msgSend_value(*(*(&v74 + 1) + 8 * i), v17, v18);
          v25 = 0;
          v28 = objc_msgSend_nativeType(v22, v23, v24);
          if (v28 > 6)
          {
            if (v28 == 7)
            {
              if (objc_msgSend_isRichTextValue(v22, v26, v27))
              {
                v25 = 0;
                v33 = 0;
                goto LABEL_37;
              }

LABEL_15:
              v30 = [TNChartFormulaArgument alloc];
              v33 = objc_msgSend_initWithStaticValue_(v30, v31, v22);
              v25 = 0;
              if (v33)
              {
                goto LABEL_36;
              }

              goto LABEL_37;
            }

            if (v28 == 14)
            {
              v61 = objc_msgSend_asCategoryRef(v22, v26, v27);
              v62 = [TNChartFormulaArgument alloc];
              v33 = objc_msgSend_initWithCategoryReference_(v62, v63, v61);
            }

            else
            {
              v33 = 0;
              if (v28 != 17)
              {
                goto LABEL_37;
              }

              v34 = objc_msgSend_asViewTractRefValue(v22, v26, v27);
              v37 = objc_msgSend_viewTractRef(v34, v35, v36);

              v38 = [TNChartFormulaArgument alloc];
              v33 = objc_msgSend_initWithViewTractReference_(v38, v39, v37);
            }

            v25 = 0;
            if (v33)
            {
LABEL_36:
              objc_msgSend_addObject_(*(a1 + 232), v32, v33);
            }
          }

          else
          {
            if (v28 - 2 < 2 || v28 == 5)
            {
              goto LABEL_15;
            }

            v33 = 0;
            if (v28 == 6)
            {
              v40 = objc_alloc(MEMORY[0x277D80C38]);
              v43 = objc_msgSend_asReferenceValue(v22, v41, v42);
              v46 = objc_msgSend_tractRef(v43, v44, v45);
              v25 = objc_msgSend_initWithCppCellTractRef_(v40, v47, v46);

              if (objc_msgSend_isSingleCell(v25, v48, v49))
              {
                v52 = [TNChartFormulaArgument alloc];
                v55 = objc_msgSend_topLeft(v25, v53, v54);
                v58 = objc_msgSend_tableUID(v25, v56, v57);
                *&v72 = v55;
                *(&v72 + 1) = v58;
                *&v73 = v59;
                v60 = objc_msgSend_initWithCellReference_(v52, v59, &v72);
              }

              else if (objc_msgSend_isRectangularRange(v25, v50, v51))
              {
                v66 = [TNChartFormulaArgument alloc];
                if (v25)
                {
                  objc_msgSend_boundingRangeRef(v25, v64, v65);
                }

                else
                {
                  v72 = 0u;
                  v73 = 0u;
                }

                v60 = objc_msgSend_initWithRangeReference_(v66, v64, &v72);
              }

              else
              {
                v67 = [TNChartFormulaArgument alloc];
                v60 = objc_msgSend_initWithTractReference_(v67, v68, v25);
              }

              v33 = v60;
              if (v60)
              {
                goto LABEL_36;
              }
            }
          }

LABEL_37:
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v74, v78, 16);
      }

      while (v19);
    }
  }

  return a2;
}

id sub_275F1C2B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(*(a1 + 232), a2, a3);
  if (v4)
  {
    v4 = objc_msgSend_objectEnumerator(*(a1 + 232), v5, v6);
  }

  return v4;
}

void sub_275F1C2F8(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1);
}

void sub_275F1C334(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1);

  JUMPOUT(0x277C91940);
}

void sub_275F1C384(id *a1)
{

  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);
}

void sub_275F1C3C0(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x277C91940);
}

uint64_t sub_275F1C418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_275F1CD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_275F07C74(&a29);
  sub_275F07C74(&a35);

  _Unwind_Resume(a1);
}

void sub_275F1D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275F1D9BC(uint64_t *a1, void *a2)
{
  v4 = a2;
  *(*(a1[5] + 8) + 24) += objc_msgSend_numberOfTotalPlotwiseLabelValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(v4, v3, a1[4], a1 + 6, a1[8] == 2, 0);
}

void sub_275F1FB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_275F07C74(&a41);

  _Unwind_Resume(a1);
}

void *sub_275F20260(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_275F2031C(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_275F20550(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275F07B38(result, a4);
  }

  return result;
}

void sub_275F205A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_275F20608()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 516, 0);
  v3 = qword_280A3DF40;
  qword_280A3DF40 = v2;

  if (!qword_280A3DF40)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TNSheetStyle properties]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNSheetStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 34, 0, "invalid nil value for '%{public}s'", "properties");

    v12 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v12, v10, v11);
  }
}

void sub_275F219D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);

  _Block_object_dispose((v45 - 168), 8);
  _Unwind_Resume(a1);
}

__n128 sub_275F21C1C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_275F21C2C(uint64_t a1, void *a2, uint64_t a3)
{
  v126 = *MEMORY[0x277D85DE8];
  v116 = a2;
  context = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v7 = objc_msgSend_chartMediator(*(a1 + 40), v5, v6);
  *&v119 = objc_msgSend_entityUID(v7, v8, v9);
  *(&v119 + 1) = v10;
  v117 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v116, v10, v4, &v119);

  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, a3);
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v15 = objc_msgSend_elementEnumerator(v117, v13, v14);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v121, v125, 16);
  if (v19)
  {
    v20 = *v122;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v122 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v121 + 1) + 8 * i);
        v23 = objc_msgSend_type(v22, v17, v18);
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v25 = objc_msgSend_tractReference(v22, v17, v18);
            if (objc_msgSend_tableUID(v25, v52, v53) != *(a1 + 80))
            {
              goto LABEL_23;
            }

            v55 = v54 == *(a1 + 88);

            if (v55)
            {
              objc_msgSend_addIndex_(*(a1 + 48), v17, a3);
              v56 = *(a1 + 56);
              v59 = objc_msgSend_tractReference(v22, v57, v58);
              v62 = objc_msgSend_columns(v59, v60, v61);
              v63 = TSUIndexSet::asNSIndexSet(v62);
              objc_msgSend_addIndexes_(v56, v64, v63);

              v66 = objc_msgSend_objectForKey_(*(a1 + 64), v65, v12);
              LODWORD(v56) = v66 == 0;

              if (v56)
              {
                v67 = MEMORY[0x277CCABB0];
                v68 = *(a1 + 64);
                v69 = objc_msgSend_translator(*(a1 + 72), v17, v18);
                v72 = objc_msgSend_tractReference(v22, v70, v71);
                v75 = objc_msgSend_columns(v72, v73, v74);
                Index = TSUIndexSet::firstIndex(v75);
                v78 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v69, v77, Index);
                v80 = objc_msgSend_numberWithInteger_(v67, v79, v78);
                objc_msgSend_setObject_forKey_(v68, v81, v80, v12);
              }
            }
          }

          else
          {
            if (v23 != 3)
            {
              continue;
            }

            v25 = objc_msgSend_categoryReference(v22, v17, v18);
            v28 = objc_msgSend_groupByUid(v25, v26, v27);
            v30 = v29;
            if (v28 != objc_msgSend_groupByUid(*(a1 + 72), v29, v31))
            {
LABEL_23:

              continue;
            }

            v33 = v30 == v32;

            if (v33)
            {
              objc_msgSend_addIndex_(*(a1 + 48), v17, a3);
              v36 = objc_msgSend_translator(*(a1 + 72), v34, v35);
              v39 = objc_msgSend_categoryReference(v22, v37, v38);
              v42 = objc_msgSend_columnUid(v39, v40, v41);
              v44 = objc_msgSend_viewColumnIndexForColumnUID_(v36, v43, v42, v43);

              objc_msgSend_addIndex_(*(a1 + 56), v45, v44);
              v47 = objc_msgSend_objectForKey_(*(a1 + 64), v46, v12);
              LODWORD(v39) = v47 == 0;

              if (v39)
              {
                v48 = *(a1 + 64);
                v49 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, v44);
                objc_msgSend_setObject_forKey_(v48, v50, v49, v12);
              }
            }
          }
        }

        else if (v23)
        {
          if (v23 == 1)
          {
            if (v22)
            {
              objc_msgSend_rangeReference(v22, v17, v18);
              v24 = v120;
            }

            else
            {
              v24 = 0;
              v119 = 0u;
              v120 = 0u;
            }

            if (__PAIR128__(*(&v120 + 1), v24) == *(a1 + 80))
            {
              objc_msgSend_addIndex_(*(a1 + 48), v17, a3);
              if (v22)
              {
                objc_msgSend_rangeReference(v22, v82, v83);
                v84 = WORD2(v119);
                v85 = WORD6(v119);
              }

              else
              {
                v85 = 0;
                v84 = 0;
              }

              if (v85 == 0x7FFF || v84 == 0x7FFF)
              {
                objc_msgSend_addIndexesInRange_(*(a1 + 56), v82, v84, 0);
              }

              else
              {
                objc_msgSend_addIndexesInRange_(*(a1 + 56), v82, v84, v85 - v84 + 1);
              }

              v93 = objc_msgSend_objectForKey_(*(a1 + 64), v92, v12);
              v94 = v93 == 0;

              if (v94)
              {
                v95 = MEMORY[0x277CCABB0];
                v96 = *(a1 + 64);
                v97 = objc_msgSend_translator(*(a1 + 72), v17, v18);
                v99 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v97, v98, v84);
                v101 = objc_msgSend_numberWithInteger_(v95, v100, v99);
                objc_msgSend_setObject_forKey_(v96, v102, v101, v12);
              }
            }
          }
        }

        else
        {
          if (v22)
          {
            objc_msgSend_cellReference(v22, v17, v18);
            v51 = *(&v119 + 1);
          }

          else
          {
            v51 = 0;
            v119 = 0uLL;
            *&v120 = 0;
          }

          if (v51 == *(a1 + 80) && v120 == *(a1 + 88))
          {
            objc_msgSend_addIndex_(*(a1 + 48), v17, a3);
            v88 = *(a1 + 56);
            if (v22)
            {
              objc_msgSend_cellReference(v22, v86, v87);
              objc_msgSend_addIndex_(v88, v89, WORD2(v119));
            }

            else
            {
              v119 = 0uLL;
              *&v120 = 0;
              objc_msgSend_addIndex_(v88, v86, 0);
            }

            v103 = objc_msgSend_objectForKey_(*(a1 + 64), v90, v12);
            v104 = v103 == 0;

            if (v104)
            {
              v105 = MEMORY[0x277CCABB0];
              v106 = *(a1 + 64);
              v109 = objc_msgSend_translator(*(a1 + 72), v17, v18);
              if (v22)
              {
                objc_msgSend_cellReference(v22, v107, v108);
                v111 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v109, v110, WORD2(v119));
              }

              else
              {
                v119 = 0uLL;
                *&v120 = 0;
                v111 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v109, v107, 0);
              }

              v113 = objc_msgSend_numberWithInteger_(v105, v112, v111);
              objc_msgSend_setObject_forKey_(v106, v114, v113, v12);
            }
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v121, v125, 16);
    }

    while (v19);
  }

  objc_autoreleasePoolPop(context);
}

void sub_275F22320(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __C();
  v10 = __C();
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  if (*(a1 + 88) == 253)
  {
    v11 = objc_msgSend_translator(*(a1 + 32), v8, v9);
    v14 = objc_msgSend_unsignedIntegerValue(v6, v12, v13);
    v16 = objc_msgSend_baseColumnIndexForViewColumnIndex_(v11, v15, v14);

    v17 = objc_alloc_init(MEMORY[0x277D80C38]);
    objc_msgSend_setTableUID_(v17, v18, *(a1 + 72), *(a1 + 80));
    objc_msgSend_setSpansAllRows_(v17, v19, 1);
    objc_msgSend_addColumn_(v17, v20, v16);
    if (objc_msgSend_isCategorized(*(a1 + 32), v21, v22))
    {
      v24 = sub_275F11A20(v7, v17);
      v116[3] += v24;
    }

    else
    {
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = sub_275F2293C;
      v113[3] = &unk_27A6A2DE8;
      v113[4] = &v115;
      v113[5] = v7;
      v114 = *(a1 + 72);
      objc_msgSend_foreachCellRect_(v17, v23, v113);
    }

    if (objc_msgSend_numberOfHeaderRows(*(a1 + 32), v25, v26))
    {
      v66 = objc_msgSend_numberOfHeaderRows(*(a1 + 32), v64, v65);
      v67 = (v16 << 32);
      v68 = ((v66 - 1) | *&v67);
      v69 = sub_275F14DBC(v10, (a1 + 72), v67, v68);
      goto LABEL_13;
    }

    v61 = objc_msgSend_stringValue_(MEMORY[0x277D80CB0], v64, &stru_2884F65E0);
    v63 = sub_275F14E00(v10, v61, *(a1 + 40));
  }

  else
  {
    v112 = 0uLL;
    v27 = objc_msgSend_translator(*(a1 + 32), v8, v9);
    v30 = objc_msgSend_unsignedIntegerValue(v6, v28, v29);
    *&v112 = objc_msgSend_columnUIDForViewColumnIndex_(v27, v31, v30);
    *(&v112 + 1) = v32;

    v33 = *(*(a1 + 64) + 8);
    v35 = *(v33 + 48);
    v34 = (v33 + 48);
    if (!v35 && !*(*(*(a1 + 64) + 8) + 56))
    {
      *v34 = v112;
    }

    v36 = objc_alloc(MEMORY[0x277D80C30]);
    v110 = objc_msgSend_groupByUid(*(a1 + 32), v37, v38);
    v111 = v39;
    v41 = objc_msgSend_groupBy(*(a1 + 32), v39, v40);
    v108 = objc_msgSend_topLevelGroupUid(v41, v42, v43);
    v109 = v44;
    v17 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v36, v44, &v110, &v108, &v112, 11, *(a1 + 88));

    v46 = sub_275F11AB8(v7, v17, v45);
    v116[3] += v46;
    v47 = objc_alloc(MEMORY[0x277D80C30]);
    v110 = objc_msgSend_groupByUid(*(a1 + 32), v48, v49);
    v111 = v50;
    v52 = objc_msgSend_groupBy(*(a1 + 32), v50, v51);
    v108 = objc_msgSend_topLevelGroupUid(v52, v53, v54);
    v109 = v55;
    v56 = *(a1 + 32);
    v58 = objc_msgSend_unsignedIntegerValue(v6, v55, v57);
    v107[0] = objc_msgSend_columnUIDForColumnIndex_(v56, v59, v58);
    v107[1] = v60;
    v61 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v47, v60, &v110, &v108, v107, 12, *(a1 + 88));

    v63 = sub_275F11AB8(v10, v61, v62);
  }

  v69 = v63;

LABEL_13:
  v72 = v116[3];
  if (v72)
  {
    if (HIDWORD(v72))
    {
      v106 = MEMORY[0x277D81150];
      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TNChartFormulaHelper formulaStorageTransformTable:toLevel:]_block_invoke_2");
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v96, v93, v95, 244, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98);
      v72 = 0xFFFFFFFFLL;
    }

    TSCEASTFunctionElement::appendFunctionElement(v7, 0xAF, v72, 0, v71);
    v73 = objc_alloc(MEMORY[0x277D80C60]);
    v75 = objc_msgSend_initWithNodeArray_(v73, v74, v7);
    v77 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v76, v75);
    TSCEASTNodeArray::freeNodeArray();
    v78 = *(a1 + 48);
    v81 = objc_msgSend_unsignedIntegerValue(v5, v79, v80);
    objc_msgSend_replaceObjectAtIndex_withObject_(v78, v82, v81, v77);
  }

  if (v69)
  {
    if (HIDWORD(v69))
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TNChartFormulaHelper formulaStorageTransformTable:toLevel:]_block_invoke_2");
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v103, v100, v102, 255, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
      v69 = 0xFFFFFFFFLL;
    }

    TSCEASTFunctionElement::appendFunctionElement(v10, 0xAF, v69, 0, v71);
    v83 = objc_alloc(MEMORY[0x277D80C60]);
    v85 = objc_msgSend_initWithNodeArray_(v83, v84, v10);
    v87 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v86, v85);
    TSCEASTNodeArray::freeNodeArray();
    v88 = *(a1 + 56);
    v91 = objc_msgSend_unsignedIntegerValue(v5, v89, v90);
    objc_msgSend_replaceObjectAtIndex_withObject_(v88, v92, v91, v87);
  }

  _Block_object_dispose(&v115, 8);
}

void sub_275F22854(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275F2293C(TSKUIDStruct *a1)
{
  upper = a1[2]._upper;
  v3 = __C();
  v5 = v4;
  result = sub_275F14DBC(upper, a1 + 3, v3, v5);
  *(*(a1[2]._lower + 8) + 24) += result;
  return result;
}

void sub_275F22990(uint64_t a1, unsigned int a2)
{
  v3.i64[0] = 0xFFFF00000000;
  v3.i64[1] = 0xFFFF00000000;
  v4 = vorrq_s8(vandq_s8(vshlq_n_s64(*(a1 + 56), 0x20uLL), v3), vdupq_n_s64(a2));
  v5 = v4.i64[1];
  v6 = v4.i64[0];
  *(*(*(a1 + 40) + 8) + 24) += sub_275F14DBC(*(*(*(a1 + 48) + 8) + 24), (a1 + 72), v6, v5);
  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (HIDWORD(v10))
  {
    v16 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartFormulaHelper formulaStorageTransformTable:toLevel:]_block_invoke_4");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v19, v23, v18, 289, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    v10 = 0xFFFFFFFFLL;
  }

  TSCEASTFunctionElement::appendFunctionElement(v9, 0xAF, v10, 0, v8);
  v11 = objc_alloc(MEMORY[0x277D80C60]);
  v22 = objc_msgSend_initWithNodeArray_(v11, v12, *(*(*(a1 + 48) + 8) + 24));
  v14 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v13, v22);
  TSCEASTNodeArray::freeNodeArray();
  objc_msgSend_addObject_(*(a1 + 32), v15, v14);
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = __C();
}

void sub_275F22BD4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275F23B94(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_elementAtIndex_(*(a1 + 32), a2, a2);
  v6 = objc_msgSend_type(v3, v4, v5);
  if (v6 <= 1)
  {
    if (v3)
    {
      objc_msgSend_rangeReference(v3, v7, v8);
    }

    else
    {
      v174 = 0;
      v175 = 0;
    }

    v170 = v175;
    if (v175 != 0uLL)
    {
      v9 = TSKUIDStruct::NSUUIDValue(&v170);
      v22 = objc_msgSend_objectForKey_(*(a1 + 40), v46, v9);
      if (!v22)
      {
        v22 = objc_msgSend_rangeListWithTableUID_(TNChartRangeList, v47, &v170);
        objc_msgSend_setObject_forKey_(*(a1 + 40), v49, v22, v9);
        objc_msgSend_addObject_(*(a1 + 48), v50, v9);
      }

      v51 = MEMORY[0x277D80D40];
      v52 = v175;
      v53 = objc_msgSend_chartMediator(*(a1 + 56), v47, v48);
      v56 = objc_msgSend_calculationEngine(v53, v54, v55);
      v29 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v51, v57, v52._lower, v52._upper, v56);

      if (*(a1 + 72) == 1)
      {
        v174._lower = sub_275F2AEB8(v29, v174._lower, v174._upper, 0);
        v174._upper = v58;
      }

      if (!objc_msgSend_isCategorized(v29, v58, v59))
      {
        if (*(a1 + 73))
        {
          objc_msgSend_addRange_coalesceFlags_(v22, v60, v174._lower, v174._upper, 8);
        }

        else
        {
          objc_msgSend_addRange_coalesceFlags_(v22, v60, v174._lower, v174._upper, 2);
        }

        goto LABEL_48;
      }

      v61 = MEMORY[0x277D80CE0];
      v62 = TSUCellRectFromTSCERangeCoordinate();
      v33 = objc_msgSend_regionFromRange_(v61, v63, v62, v63);
      v66 = objc_msgSend_translator(v29, v64, v65);
      v68 = objc_msgSend_viewCellRegionForBaseCellRegion_(v66, v67, v33);
      v177[0] = MEMORY[0x277D85DD0];
      v177[1] = 3221225472;
      v177[2] = sub_275F24790;
      v177[3] = &unk_27A6A2E60;
      v178 = v22;
      v179 = *(a1 + 73);
      objc_msgSend_enumerateCellRangesUsingBlock_(v68, v69, v177);

LABEL_47:
LABEL_48:

      goto LABEL_49;
    }

    goto LABEL_51;
  }

  if (v6 == 3)
  {
    v9 = objc_msgSend_categoryReference(v3, v7, v8);
    v170._lower = 0;
    v170._upper = &v170;
    *&v171 = 0x3032000000;
    *(&v171 + 1) = sub_275F2484C;
    *&v172[0] = sub_275F2485C;
    *(&v172[0] + 1) = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v70, v9, *(a1 + 64));
    if (!*(v170._upper + 40))
    {
      v73 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TNChartFormulaHelper p_rangeListsForFormula:argumentIndexes:byRow:resolveSpanning:orderedListOfOwnerIDs:ownerIDToRangeList:]_block_invoke");
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v77, v74, v76, 519, 0, "invalid nil value for '%{public}s'", "groupBy");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79);
    }

    v80 = objc_msgSend_absoluteGroupUid(v9, v71, v72);
    v82 = v81;
    v161 = 0;
    v162 = &v161;
    v163 = 0x3032000000;
    v164 = sub_275F2484C;
    v165 = sub_275F2485C;
    v166 = objc_opt_new();
    v174._lower = 0;
    v174._upper = &v174;
    v175._lower = 0x4012000000;
    v175._upper = sub_275F21C1C;
    v176[0] = nullsub_10;
    v176[1] = "";
    v176[2] = 0;
    v176[3] = 0;
    v85 = objc_msgSend_type(v9, v83, v84);
    if (v85 > 9)
    {
      if (v85 != 10)
      {
        if (v85 == 11)
        {
          v123 = objc_msgSend_groupNodeForGroupUid_(*(v170._upper + 40), v86, v80, v82);
          v126 = objc_msgSend_groupLevel(v9, v124, v125);
          v158[0] = MEMORY[0x277D85DD0];
          v158[1] = 3221225472;
          v158[2] = sub_275F2497C;
          v158[3] = &unk_27A6A2EB0;
          v158[4] = &v161;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(v123, v127, v126, v158);

          v113 = objc_msgSend_columnUid(v9, v128, v129);
        }

        else
        {
          if (v85 != 12)
          {
            goto LABEL_37;
          }

          v103 = v162[5];
          v104 = objc_msgSend_tableInfo(*(v170._upper + 40), v86, v87);
          v107 = objc_msgSend_translator(v104, v105, v106);
          v109 = objc_msgSend_rowUIDForViewRowIndex_(v107, v108, 0);
          objc_msgSend_addUUID_(v103, v110, v109, v110);

          v113 = objc_msgSend_columnUid(v9, v111, v112);
        }

        upper = v174._upper;
        *(v174._upper + 48) = v113;
        *(upper + 56) = v86;
LABEL_37:
        if (objc_msgSend_count(v162[5], v86, v87) && (*(v174._upper + 48) || *(v174._upper + 56)))
        {
          v133 = objc_msgSend_tableInfo(*(v170._upper + 40), v131, v132);
          v136 = objc_msgSend_tableUID(v133, v134, v135);
          v138 = v137;

          v139 = v162[5];
          v150[0] = MEMORY[0x277D85DD0];
          v150[1] = 3221225472;
          v150[2] = sub_275F249F4;
          v150[3] = &unk_27A6A2ED8;
          v153 = &v170;
          v154 = &v174;
          v155 = v136;
          v156 = v138;
          v151 = *(a1 + 40);
          v152 = *(a1 + 48);
          v157 = *(a1 + 73);
          objc_msgSend_foreachUuid_(v139, v140, v150);
        }

        _Block_object_dispose(&v174, 8);
        _Block_object_dispose(&v161, 8);

        _Block_object_dispose(&v170, 8);
        goto LABEL_50;
      }

      v95 = objc_msgSend_groupNodeForGroupUid_(*(v170._upper + 40), v86, v80, v82);
      v116 = objc_msgSend_groupLevel(v9, v114, v115);
      v160[0] = MEMORY[0x277D85DD0];
      v160[1] = 3221225472;
      v160[2] = sub_275F24864;
      v160[3] = &unk_27A6A2EB0;
      v160[4] = &v161;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v95, v117, v116, v160);
      v120 = objc_msgSend_columnUid(v9, v118, v119);
      v121 = v174._upper;
      *(v174._upper + 48) = v120;
      *(v121 + 56) = v122;
    }

    else
    {
      if ((v85 - 7) >= 3)
      {
        goto LABEL_37;
      }

      v88 = objc_msgSend_groupNodeForGroupUid_(*(v170._upper + 40), v86, v80, v82);
      v91 = objc_msgSend_groupLevel(v9, v89, v90);
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = 3221225472;
      v159[2] = sub_275F24904;
      v159[3] = &unk_27A6A2EB0;
      v159[4] = &v161;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v88, v92, v91, v159);

      v95 = objc_msgSend_tableInfo(*(v170._upper + 40), v93, v94);
      v98 = objc_msgSend_translator(v95, v96, v97);
      v100 = objc_msgSend_columnUIDForViewColumnIndex_(v98, v99, 0);
      v101 = v174._upper;
      *(v174._upper + 48) = v100;
      *(v101 + 56) = v102;
    }

    goto LABEL_37;
  }

  if (v6 == 2)
  {
    v9 = objc_msgSend_tractReference(v3, v7, v8);
    v10 = MEMORY[0x277D80D40];
    v13 = objc_msgSend_tableUID(v9, v11, v12);
    v15 = v14;
    v17 = objc_msgSend_chartMediator(*(a1 + 56), v14, v16);
    v20 = objc_msgSend_calculationEngine(v17, v18, v19);
    v22 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v10, v21, v13, v15, v20);

    v25 = objc_msgSend_tableUID(v22, v23, v24);
    if (!(v25 | v26))
    {
LABEL_49:

LABEL_50:
      goto LABEL_51;
    }

    v174._lower = objc_msgSend_tableUID(v22, v26, v27);
    v174._upper = v28;
    v29 = TSKUIDStruct::NSUUIDValue(&v174);
    v33 = objc_msgSend_objectForKey_(*(a1 + 40), v30, v29);
    if (!v33)
    {
      v174._lower = objc_msgSend_tableUID(v22, v31, v32);
      v174._upper = v34;
      v33 = objc_msgSend_rangeListWithTableUID_(TNChartRangeList, v34, &v174);
      objc_msgSend_setObject_forKey_(*(a1 + 40), v35, v33, v29);
      objc_msgSend_addObject_(*(a1 + 48), v36, v29);
    }

    v37 = *(a1 + 64);
    v174._lower = objc_msgSend_tableUID(v22, v31, v32);
    v174._upper = v38;
    v41 = objc_msgSend_tableResolverForTableUID_(v37, v38, &v174);
    if (v41)
    {
      v42 = objc_msgSend_tractReference(v3, v39, v40);
      v45 = v42;
      if (v42)
      {
        objc_msgSend_cppCellTractRef(v42, v43, v44);
      }

      else
      {
        v173 = 0;
        v171 = 0u;
        memset(v172, 0, sizeof(v172));
        v170 = 0;
      }

      objc_msgSend_apparentTractRefForTractRef_rangeContext_(v41, v43, &v170, 0);
      TSUIndexSet::~TSUIndexSet(v172);
      TSUIndexSet::~TSUIndexSet(&v170);

      if (sub_275F03548(&v174))
      {
        v141 = objc_alloc(MEMORY[0x277D80C38]);
        v143 = objc_msgSend_initWithCppCellTractRef_(v141, v142, &v174);
        v146 = objc_msgSend_translator(v22, v144, v145);
        v148 = objc_msgSend_viewTractRefForBaseTractRef_(v146, v147, v143);

        v167[0] = MEMORY[0x277D85DD0];
        v167[1] = 3221225472;
        v167[2] = sub_275F247F0;
        v167[3] = &unk_27A6A2E88;
        v168 = v33;
        v169 = *(a1 + 73);
        objc_msgSend_foreachCellRect_(v148, v149, v167);
      }

      TSUIndexSet::~TSUIndexSet(v176);
      TSUIndexSet::~TSUIndexSet(&v174);
    }

    goto LABEL_47;
  }

LABEL_51:
}

void sub_275F24570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54)
{
  _Block_object_dispose((v56 - 240), 8);
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275F24790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = __C();
  if (*(a1 + 40))
  {
    v5 = 8;
  }

  else
  {
    v5 = 2;
  }

  return objc_msgSend_addRange_coalesceFlags_(v2, v3, v4, v3, v5);
}

uint64_t sub_275F247F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = __C();
  if (*(a1 + 40))
  {
    v5 = 8;
  }

  else
  {
    v5 = 2;
  }

  return objc_msgSend_addRange_coalesceFlags_(v2, v3, v4, v3, v5);
}

uint64_t sub_275F2484C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275F24864(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    objc_msgSend_unfilteredRowUidsAsVector(v3, v4, v5);
  }

  else
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
  }

  objc_msgSend_addUuidsFromVector_(v7, v4, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_275F24904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v3;
  v7 = objc_msgSend_groupUid(v3, v5, v6);
  objc_msgSend_addUUID_(v4, v8, v7, v8);
}

void sub_275F2497C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v3;
  v7 = objc_msgSend_groupUid(v3, v5, v6);
  objc_msgSend_addUUID_(v4, v8, v7, v8);
}

void sub_275F249F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tableInfo(*(*(*(a1 + 48) + 8) + 40), a2, a3);
  v7 = objc_msgSend_translator(v4, v5, v6);
  TSTMakeCellUID();
  v9 = objc_msgSend_viewCellCoordForCellUID_(v7, v8, &v24);

  v12 = objc_msgSend_tableInfo(*(*(*(a1 + 48) + 8) + 40), v10, v11);
  v23.var0 = v9;
  v23.var1._lower = objc_msgSend_tableUID(v12, v13, v14);
  v23.var1._upper = v15;

  if (*(a1 + 64) || *(a1 + 72))
  {
    v16 = TSKUIDStruct::NSUUIDValue((a1 + 64));
    v19 = objc_msgSend_objectForKey_(*(a1 + 32), v17, v16);
    if (!v19)
    {
      v19 = objc_msgSend_rangeListWithTableUID_(TNChartRangeList, v18, a1 + 64);
      objc_msgSend_setObject_forKey_(*(a1 + 32), v20, v19, v16);
      objc_msgSend_addObject_(*(a1 + 40), v21, v16);
    }

    TSCERangeRef::TSCERangeRef(&v24, &v23);
    if (*(a1 + 80))
    {
      objc_msgSend_addRange_coalesceFlags_(v19, v22, *&v24.range._topLeft, *&v24.range._bottomRight, 8);
    }

    else
    {
      objc_msgSend_addRange_coalesceFlags_(v19, v22, *&v24.range._topLeft, *&v24.range._bottomRight, 2);
    }
  }
}

void **sub_275F26510(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4++ = 0;
        v9 = *v7;
        *v7++ = v8;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v10 = *--v6;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_275F2659C(uint64_t a1, TSUCellCoord a2, $85CD2974BE96D4886BB301820D1C36C2 a3)
{
  v24.var0 = a2;
  v24.var1 = a3;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    if (*(a1 + 48) == 1)
    {
      v20 = TSUCellRect::firstColumn(&v24);
      v21 = TSUCellRect::lastColumn(&v24);
      return objc_msgSend_addColumnRange_(v4, v5, &v20);
    }

    else
    {
      v20 = TSUCellRect::firstRow(&v24);
      v21 = TSUCellRect::lastRow(&v24);
      return objc_msgSend_addRowRange_(v4, v19, &v20);
    }
  }

  else
  {
    v7 = TSUCellRectToTSCERangeCoordinate();
    v9 = v8;
    v11 = objc_msgSend_tableUID(*(a1 + 32), v8, v10);
    v20 = v7;
    v21 = v9;
    v22 = v11;
    v23 = v12;
    v13 = objc_alloc(MEMORY[0x277D80C38]);
    v15 = objc_msgSend_initWithRangeRef_(v13, v14, &v20);
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    return objc_msgSend_setPreserveFlags_(*(*(*(a1 + 40) + 8) + 40), v18, 0, v20, v21, v22, v23, *&v24.var0, *&v24.var1);
  }
}

uint64_t sub_275F28058(void *a1, void *a2, _BYTE *a3)
{
  result = objc_msgSend_groupUid(a2, a2, a3);
  if (result == a1[5] && v6 == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_275F2830C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275F2838C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v8 = objc_msgSend_cell(v5, v6, v7);
  v12 = objc_msgSend_cellID(v5, v9, v10);
  v13 = *(*(*(a1 + 56) + 8) + 24);
  if ((v13 | 2) == 0xFF)
  {
    v14 = objc_msgSend_containsIndex_(*(a1 + 32), v11, v12);
    v15 = *(*(a1 + 56) + 8);
    if (v14)
    {
      *(v15 + 24) = -3;
      *a3 = 1;
      goto LABEL_18;
    }

    v13 = *(v15 + 24);
  }

  if (v13 != 253 && objc_msgSend_containsIndex_(*(a1 + 40), v11, v12) && objc_msgSend_hasFormula(v8, v16, v17))
  {
    v20 = objc_msgSend_formulaObject(v8, v18, v19);
    v24 = objc_msgSend_calcEngine(*(a1 + 48), v21, v22);
    if (v20)
    {
      objc_msgSend_getCategoryReferencesWithCalcEngine_(v20, v23, v24);
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }

    for (i = v32; i != v33; ++i)
    {
      v26 = *i;
      v29 = v26;
      if (*(*(*(a1 + 56) + 8) + 24) == 255 && objc_msgSend_groupLevel(v26, v27, v28) != 255)
      {
        *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_groupLevel(v29, v30, v31);
        *a3 = 1;

        break;
      }
    }

    v35 = &v32;
    sub_275F077D4(&v35);
  }

LABEL_18:
}

void sub_275F28524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_275F077D4(&a12);

  _Unwind_Resume(a1);
}

void sub_275F2857C(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v8 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, a2);
  v6 = objc_msgSend_regionByIntersectingColumnIndices_(v4, v5, v8);
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v3, v7, v6, 0, 4325376, a1[6]);
}

void sub_275F28A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, char a24)
{
  a22 = &a24;
  sub_275F077D4(&a22);

  _Unwind_Resume(a1);
}

void sub_275F28BF4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_275F2906C()
{
  v0 = objc_alloc(MEMORY[0x277D80AB8]);
  v2 = objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(MEMORY[0x277D80048], v1, 258, 0, 1);
  v12 = objc_msgSend_initWithPropertiesAndValues_(v0, v3, 1349, 1, 1350, 0, 1355, 1, 1271, 1, 1264, 1, 1287, 0, 1259, 1, 1286, 0, 1481, 0, 1434, 1, 1435, 4, 1433, v2, 1484, 1, 1431, 0, 1472, 0, 1474, 0, 0);

  objc_storeStrong(&qword_280A3DF50, v12);
  if (!qword_280A3DF50)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNAppPropertiesProvider appChartPropertyOverrides]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNAppPropertiesProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 178, 0, "invalid nil value for '%{public}s'", "sAppChartPropertyOverrides");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }
}

void sub_275F293A4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_275F07904();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_275F2A5EC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

unint64_t sub_275F295E4(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a3);
  v5 = result & 0xFFFF00000000;
  v6 = a2 & 0xFFFF00000000;
  if (result != 0x7FFFFFFFLL && v5 == 0x7FFF00000000 && v6 == 0x7FFF00000000)
  {
    if (a2 != 0x7FFFFFFF && a3 != 0x7FFFFFFF && (a3 & 0xFFFF00000000) == 0x7FFF00000000 && (a4 & 0xFFFF00000000) == 0x7FFF00000000 && a4 != 0x7FFFFFFFLL)
    {
      if (result >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = result;
      }

      return v7 | 0x7FFF00000000;
    }

    goto LABEL_42;
  }

  if (result == 0x7FFFFFFFLL && v5 != 0x7FFF00000000 && v6 != 0x7FFF00000000)
  {
    if (a2 == 0x7FFFFFFF && a3 == 0x7FFFFFFF && (a3 & 0xFFFF00000000) != 0x7FFF00000000 && (a4 & 0xFFFF00000000) != 0x7FFF00000000 && a4 == 0x7FFFFFFFLL)
    {
      if (WORD2(result) < WORD2(a3))
      {
        v4 = HIDWORD(result);
      }

      return (v4 << 32) | 0x7FFFFFFF;
    }

LABEL_42:
    if (a3 == 0x7FFFFFFF)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    if ((a3 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    if (a4 == 0x7FFFFFFF)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    if ((a4 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    if (WORD2(a3) > WORD2(a4))
    {
      return 0x7FFF7FFFFFFFLL;
    }

    result = a3;
    if (a3 > a4)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    return result;
  }

  if (result == 0x7FFFFFFFLL || v5 == 0x7FFF00000000 || a2 == 0x7FFFFFFF || v6 == 0x7FFF00000000 || WORD2(result) > WORD2(a2) || result > a2)
  {
    goto LABEL_42;
  }

  if (a3 != 0x7FFFFFFF && (a3 & 0xFFFF00000000) != 0x7FFF00000000 && a4 != 0x7FFFFFFF && (a4 & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(a3) <= WORD2(a4) && a3 <= a4)
  {
    if (WORD2(result) < WORD2(a3))
    {
      v4 = HIDWORD(result);
    }

    if (result >= a3)
    {
      result = a3;
    }

    else
    {
      result = result;
    }

    return result & 0xFFFF0000FFFFFFFFLL | (v4 << 32);
  }

  return result;
}

void sub_275F2A5EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275F06EB4();
}

unint64_t sub_275F2AEB8(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = a2;
  v8 = HIDWORD(a2);
  v9 = a1;
  v12 = v9;
  v13 = a2 & 0xFFFF00000000;
  v14 = a3 & 0xFFFF00000000;
  if (a2 != 0x7FFFFFFFLL && v13 == 0x7FFF00000000 && v14 == 0x7FFF00000000)
  {
    if (a3 != 0x7FFFFFFF)
    {
      objc_msgSend_numberOfColumns(v9, v10, v11);
      LODWORD(v8) = objc_msgSend_numberOfHeaderColumns(v12, v15, v16);
      if ((a4 & 1) == 0)
      {
        LODWORD(v8) = v8 - objc_msgSend_numberOfCategoryColumns(v12, v17, v18);
      }
    }
  }

  else if (a2 == 0x7FFFFFFFLL && v13 != 0x7FFF00000000 && v14 != 0x7FFF00000000 && a3 == 0x7FFFFFFFLL)
  {
    objc_msgSend_numberOfRows(v9, v10, v11);
    v21 = objc_msgSend_numberOfHeaderRows(v12, v19, v20);
    objc_msgSend_numberOfFooterRows(v12, v22, v23);
    if (v7 == 0x7FFFFFFF)
    {
      v7 = v21;
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }
  }

  return a2 & 0xFFFF000000000000 | v7 | (v8 << 32);
}

void sub_275F2B370(void **a1, void *a2)
{
  if (*a1 != a2)
  {
    v4 = a2;
    v5 = *a1;
    *a1 = a2;
  }
}

uint64_t *sub_275F2B578(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v5)
    {
      if (v8 == v5)
      {
        v9 = *(v3 + 18);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 8);
  if (v5 < v12 || v5 == v12 && v6 < *(v7 + 18))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_275F2B600(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_275F2B698(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_275F2B698(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9 && (v6 != v9 || v7 >= *(v8 + 18)))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_13;
        }
      }

      if (v9 >= v6 && *(v8 + 18) >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_13:
  *a2 = v8;
  return result;
}

void *sub_275F2B708(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_275F2B744(uint64_t **a1, unsigned int *a2)
{
  v3 = sub_275F2B578(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_275F2B78C(a1, v3);
  return 1;
}

uint64_t *sub_275F2B78C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_275F2B7CC(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *sub_275F2B7CC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_275F2B840(v6, a2);
  return v3;
}

uint64_t *sub_275F2B840(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_275F2BBC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275F2BBC0(a1, *a2);
    sub_275F2BBC0(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_275F2CBF8(uint64_t a1, const char *a2)
{
  v3 = (*(a1 + 56) + (a2 / *(a1 + 48))) | ((*(a1 + 60) + a2 % *(a1 + 48)) << 32);
  v4 = objc_msgSend_p_hintCacheEntryAtCoordinate_(*(a1 + 32), a2, v3);
  objc_opt_class();
  objc_msgSend_hint(v4, v5, v6);
  v7 = TSUCheckedDynamicCast();
  v8 = *(a1 + 40);
  v11 = objc_msgSend_cellRange(v7, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275F2CCF0;
  v14[3] = &unk_27A6A3060;
  v14[4] = *(a1 + 32);
  v14[5] = v3;
  return objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v8, v12, v11, v12, 0, 4096, v14);
}

void sub_275F2CCF0(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((objc_msgSend_cellHasCommentStorage(a2, a2, a3) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNHintCache pageCoordinatesWithAnnotations]_block_invoke_4");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 371, 0, "Iterator returned cell without annotations");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 88);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_275F2CDF4;
  v16[3] = &unk_27A6A3038;
  v15 = *(a1 + 40);
  v16[4] = v13;
  v16[5] = v15;
  dispatch_sync(v14, v16);
  *a3 = 1;
}

void *sub_275F2CE68(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_275F2CEC0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_275F2CEC0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_275F2CF48(v5, (v5 + 8), v4 + 28);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_275F2CF48(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *sub_275F2CFE0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_275F2CFE0(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (a1 + 1 == a2 || (v5 = *a5, v6 = *(a2 + 7), *a5 < v6) || v5 == v6 && *(a5 + 4) < *(a2 + 16))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
    }

    else
    {
      if (v7)
      {
        v8 = *a2;
        do
        {
          v9 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        v12 = a2;
        do
        {
          v9 = v12[2];
          v13 = *v9 == v12;
          v12 = v9;
        }

        while (v13);
      }

      v14 = *(v9 + 7);
      if (v14 >= *a5 && (v14 != *a5 || *(v9 + 16) >= *(a5 + 4)))
      {
        return sub_275F168FC(a1, a3, a5);
      }
    }

    if (v7)
    {
      *a3 = v9;
      return v9 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  else if (v6 >= v5 && *(a2 + 16) >= *(a5 + 4))
  {
    *a3 = a2;
    *a4 = a2;
  }

  else
  {
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = a2;
      do
      {
        a4 = v15[2];
        v13 = *a4 == v15;
        v15 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v16 = *(a4 + 7);
      if (v5 >= v16 && (v5 != v16 || *(a5 + 4) >= *(a4 + 16)))
      {
        return sub_275F168FC(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

  return a4;
}

void sub_275F2D45C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275F2D614(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_selectionForRecordIndex_fieldIndex_(TNFormViewerSelection, a2, *(a1 + 40), *(a1 + 44));
  objc_msgSend_setSelection_(*(a1 + 32), v3, v4);
}

uint64_t sub_275F2DA78(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_scheme(a1, a2, a3);
  if (v6)
  {
    v7 = objc_opt_class();
    v10 = objc_msgSend_sheetHyperlinkURLScheme(v7, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v6, v11, v10);
  }

  else
  {
    isEqualToString = 1;
  }

  v13 = objc_msgSend_absoluteString(a1, v4, v5);
  v15 = objc_msgSend_rangeOfString_(v13, v14, *MEMORY[0x277D80FF8]);

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = isEqualToString;
  }

  return v16;
}

id sub_275F2DB18(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isSheetURL(a1, a2, a3))
  {
    v6 = objc_msgSend_absoluteString(a1, v4, v5);
    v8 = objc_msgSend_rangeOfString_(v6, v7, *MEMORY[0x277D80FF8]);
    v10 = objc_msgSend_substringFromIndex_(v6, v9, &v9[v8]);
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v13 = objc_msgSend_initWithUUIDString_(v11, v12, v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_275F2DBB8(void *a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x277D80FF8];
  v5 = a3;
  v7 = objc_msgSend_stringByAppendingString_(v4, v6, @"%@");
  v8 = MEMORY[0x277CCACA8];
  v11 = objc_msgSend_objectUUID(v5, v9, v10);

  v14 = objc_msgSend_UUIDString(v11, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v8, v15, v7, v14);

  v18 = objc_msgSend_initWithString_(a1, v17, v16);
  return v18;
}

id sub_275F2DC84(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  objc_msgSend_sheets(v5, v6, v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v25 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v22 + 1) + 8 * v15);
      if (!objc_msgSend_isForm(v16, v11, v12, v22))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v16;

    if (!v17)
    {
      goto LABEL_12;
    }

    a1 = objc_msgSend_initWithSheet_(a1, v18, v17);
    v19 = a1;
  }

  else
  {
LABEL_9:

    v17 = 0;
LABEL_12:
    v19 = 0;
  }

  v20 = v19;

  return v20;
}

void sub_275F2EE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20)
{
  _Block_object_dispose(&STACK[0x2A0], 8);

  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275F2F0A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275F2F0B8(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(*(a1[6] + 8) + 24) >= a1[9])
  {
    *a3 = 1;
  }

  else
  {
    v19 = v5;
    v8 = objc_msgSend_cell(v5, v6, v7);
    v9 = a1[4];
    v12 = objc_msgSend_currentFormat(v8, v10, v11);
    v14 = objc_msgSend_dataFormatterFromFormat_in_(v9, v13, v12, a1[5]);

    if (v14)
    {
      ++*(*(a1[6] + 8) + 24);
    }

    v16 = *(*(a1[7] + 8) + 40);
    if (v16)
    {
      if ((objc_msgSend_isCompatibleWithDataFormatter_(v16, v15, v14) & 1) == 0)
      {
        v17 = *(a1[7] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;

        *a3 = 1;
      }
    }

    else
    {
      objc_storeStrong((*(a1[8] + 8) + 40), v14);
      objc_storeStrong((*(a1[7] + 8) + 40), *(*(a1[8] + 8) + 40));
    }

    v5 = v19;
  }
}

void sub_275F2F22C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a1 + 88))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  v6 = a2[1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275F2F324;
  v12[3] = &unk_27A6A3100;
  v15 = *(a1 + 80);
  v16 = a3;
  v7 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = v11;
  v9 = *(a1 + 64);
  v13 = v11;
  v14 = v9;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v7, v10, v5, v6, v4, 66058240, v12);
}

void sub_275F2F324(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 72))
  {
    *a3 = 1;
    **(a1 + 80) = 1;
  }

  else
  {
    v19 = v5;
    v8 = objc_msgSend_cell(v5, v6, v7);
    v9 = *(a1 + 32);
    v12 = objc_msgSend_currentFormat(v8, v10, v11);
    v14 = objc_msgSend_dataFormatterFromFormat_in_(v9, v13, v12, *(a1 + 40));

    if (v14)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    v16 = *(*(*(a1 + 56) + 8) + 40);
    if (v16)
    {
      if ((objc_msgSend_isCompatibleWithDataFormatter_(v16, v15, v14) & 1) == 0)
      {
        v17 = *(*(a1 + 56) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;

        *a3 = 1;
        **(a1 + 80) = 1;
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v14);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
    }

    v5 = v19;
  }
}