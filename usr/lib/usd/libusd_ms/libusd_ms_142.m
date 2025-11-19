void *sub_29ACA48BC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F708;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA4914(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA4930(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA4958(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA4988(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F758))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA49C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F780;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA4B60(a2, v4);
}

uint64_t sub_29ACA4B2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA4B60(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F7E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA4BB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA4BD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA4BFC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA4C2C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F838))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA4C6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F860;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA4E04(a2, v4);
}

uint64_t sub_29ACA4DD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA4E04(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F8C8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA4E5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA4E78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA4EA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA4ED0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F918))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA4F10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207F940;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA50A8(a2, v4);
}

uint64_t sub_29ACA5074@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA50A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207F9A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA5100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA511C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA5144(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA5174(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207F9F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA51B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FA20;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA534C(a2, v4);
}

uint64_t sub_29ACA5318@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA534C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FA88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA53A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA53C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA53E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA5418(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207FAD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA5458@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FB00;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA55F0(a2, v4);
}

uint64_t sub_29ACA55BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA55F0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FB68;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA5648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA5664(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA568C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA56BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207FBB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA56FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FBE0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA5894(a2, v4);
}

uint64_t sub_29ACA5860@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA5894(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FC48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA58EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA5908(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA5930(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA5960(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207FC98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA59A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FCC0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA5B38(a2, v4);
}

uint64_t sub_29ACA5B04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA5B38(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FD28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA5B90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA5BAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA5BD4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA5C04(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207FD78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA5C44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FDA0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA5DDC(a2, v4);
}

uint64_t sub_29ACA5DA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA5DDC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FE08;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA5E34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA5E50(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA5E78(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA5EA8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207FE58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA5EE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FE80;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA6080(a2, v4);
}

uint64_t sub_29ACA604C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA6080(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FEE8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA60D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA60F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA611C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA614C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A207FF38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA618C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A207FF60;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA6324(a2, v4);
}

uint64_t sub_29ACA62F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA6324(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A207FFC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA637C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA6398(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA63C0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA63F0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080018))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA6430@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080040;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA65C8(a2, v4);
}

uint64_t sub_29ACA6594@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA65C8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20800A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA6620(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA663C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA6664(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA6694(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20800F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA66D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080120;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA686C(a2, v4);
}

uint64_t sub_29ACA6838@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA686C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080188;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA68C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA68E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA6908(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA6938(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20801D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA6978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080200;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA6B10(a2, v4);
}

uint64_t sub_29ACA6ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA6B10(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080268;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA6B68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA6B84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA6BAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA6BDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20802B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA6C1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20802E0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA6DB4(a2, v4);
}

uint64_t sub_29ACA6D80@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA6DB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080348;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA6E0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA6E28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA6E50(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA6E80(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080398))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA6EC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20803C0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA7058(a2, v4);
}

uint64_t sub_29ACA7024@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA7058(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080428;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA70B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA70CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA70F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA7124(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080478))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA7164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20804A0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA72FC(a2, v4);
}

uint64_t sub_29ACA72C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA72FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080508;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA7354(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA7370(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA7398(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA73C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080558))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA7408@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080580;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA75A0(a2, v4);
}

uint64_t sub_29ACA756C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA75A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20805E8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA75F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA7614(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA763C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA766C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080638))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA76AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080660;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA7844(a2, v4);
}

uint64_t sub_29ACA7810@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA7844(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20806C8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA789C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA78B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA78E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA7910(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080718))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA7950@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080740;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA7AE8(a2, v4);
}

uint64_t sub_29ACA7AB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA7AE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080790;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA7B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA7B5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA7B84(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA7BB4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20807E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA7BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080808;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA7D8C(a2, v4);
}

uint64_t sub_29ACA7D58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA7D8C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080870;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA7DE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA7E00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA7E28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA7E58(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20808C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA7E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20808E8;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA8030(a2, v4);
}

uint64_t sub_29ACA7FFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA8030(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080950;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA8088(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA80A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA80CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA80FC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20809A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA813C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20809C8;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA82D4(a2, v4);
}

uint64_t sub_29ACA82A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA82D4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080A30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA832C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA8348(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA8370(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA83A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080A80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA83E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080AA8;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA8578(a2, v4);
}

uint64_t sub_29ACA8544@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA8578(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080B10;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA85D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA85EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA8614(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA8644(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080B60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA8684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080B88;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA881C(a2, v4);
}

uint64_t sub_29ACA87E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA881C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080BF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA8874(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA8890(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA88B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA88E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080C40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA8928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080C68;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA8AC0(a2, v4);
}

uint64_t sub_29ACA8A8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA8AC0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080CD0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA8B18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA8B34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA8B5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA8B8C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080D20))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA8BCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080D48;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA8D64(a2, v4);
}

uint64_t sub_29ACA8D30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA8D64(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080DB0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA8DBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA8DD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA8E00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA8E30(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080E00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA8E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080E28;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA9008(a2, v4);
}

uint64_t sub_29ACA8FD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA9008(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080E78;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA9060(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA907C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA90A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA90D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080EC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA9114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080EF0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA92AC(a2, v4);
}

uint64_t sub_29ACA9278@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA92AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2080F58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA9304(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA9320(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA9348(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA9378(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2080FA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACA93B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2080FD0;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACA9550(a2, v4);
}

uint64_t sub_29ACA951C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACA9550(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081038;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA95A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA95C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA95EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA961C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081088))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA965C@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A20810B0;
  *(v4 + 8) = *a1;
  sub_29ACA9760(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA96CC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACA96F4@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = (&off_2A20481C8 + 2);
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACA9760(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081118;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA97B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA97D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA97FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA982C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081168))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA986C@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = *a1;
  *v4 = &unk_2A2079650;
  v4[1] = v5;
  *(v4 + 4) = *(a1 + 2);
  sub_29ABFF55C(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

double sub_29ACA98DC@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2079A68;
  v4[1] = v5;
  sub_29AC010A0(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

double sub_29ACA9944@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2081190;
  v4[1] = v5;
  sub_29ACA9A00(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACA99B0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA99D8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &off_2A20429B0 + 3;
  return result;
}

void *sub_29ACA9A00(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20811F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA9A58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA9A74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA9A9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA9ACC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081248))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA9B0C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2081270;
  v4[2] = *a1;
  *(v4 + 6) = *(a1 + 4);
  sub_29ACA9BE8(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA9B84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA9BAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2042788 + 3;
  *a2 = *(result + 8);
  *(a2 + 4) = *(result + 12);
  return result;
}

void *sub_29ACA9BE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20812D8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA9C40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA9C5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA9C84(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA9CB4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081328))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA9CF4@<D0>(_DWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2081350;
  v4[2] = *a1;
  sub_29ACA9DB8(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACA9D64(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACA9D8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A2042560 + 3;
  *a2 = *(result + 8);
  return result;
}

void *sub_29ACA9DB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20813B8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACA9E10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACA9E2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACA9E54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACA9E84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081408))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACA9EC4@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A2079C88;
  *(v4 + 8) = *a1;
  sub_29AC014B4(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACA9F30@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = *a1;
  *v4 = &unk_2A2081430;
  v4[1] = v5;
  *(v4 + 4) = *(a1 + 2);
  sub_29ACAA040(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACA9FA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

_DWORD *sub_29ACA9FCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2042840 + 2;
  result = operator new(0x10uLL);
  *result = *(a1 + 8);
  result[2] = *(a1 + 16);
  atomic_store(0, result + 3);
  *a2 = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAA040(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081498;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAA098(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAA0B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAA0DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAA10C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20814E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAA14C@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2078B78;
  v4[1] = v5;
  sub_29ABFBC18(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

double sub_29ACAA1B4@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A2081510;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACAA2C0(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAA228(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAA250@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2042B20 + 2;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAA2C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081578;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAA318(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAA334(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAA35C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAA38C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20815C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAA3CC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20779A8;
  *(v4 + 8) = *a1;
  *(v4 + 3) = *(a1 + 16);
  sub_29ABF5720(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

double sub_29ACAA440@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A20815F0;
  *(v4 + 8) = *a1;
  sub_29ACAA540(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACAA4B0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACAA4D8@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = (&off_2A20426D0 + 2);
  result = operator new(0x18uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAA540(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081640;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAA598(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAA5B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAA5DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAA60C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081690))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAA64C@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  *v4 = &unk_2A20816B8;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = a1[3];
  *(v4 + 40) = a1[2];
  *(v4 + 56) = v6;
  sub_29ACAA780(&v8, v4);
  result = *&v8;
  *a2 = v8;
  return result;
}

void sub_29ACAA6CC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAA6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2042C90 + 2;
  result = operator new(0x44uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  v6 = *(a1 + 56);
  *(result + 2) = *(a1 + 40);
  *(result + 3) = v6;
  atomic_store(0, result + 16);
  *a2 = result;
  atomic_fetch_add_explicit(result + 16, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAA764@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void *sub_29ACAA780(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081720;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAA7D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAA7F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAA81C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAA84C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081770))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAA88C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A2081798;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  *(v4 + 10) = *(a1 + 32);
  sub_29ACAA9B4(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAA908(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAA930@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2071A80 + 2;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  *(result + 8) = *(a1 + 40);
  atomic_store(0, result + 9);
  *a2 = result;
  atomic_fetch_add_explicit(result + 9, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAA99C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

void *sub_29ACAA9B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081800;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAAA0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAAA28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAAA50(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAAA80(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081850))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAAAC0@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A2081878;
  *(v4 + 8) = *a1;
  sub_29ACAADB0(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACAAB30(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACAAB58@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = (&off_2A20818D0 + 2);
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ACAABC4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAABE0(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAAC08(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAAC20(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A18B6BC(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unsigned int *sub_29ACAAD58@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = (&off_2A20818D0 + 2);
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAADB0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081998;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAAE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAAE24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAAE4C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAAE7C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20819E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAAEBC@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x88uLL);
  v5 = a1[5];
  *(v4 + 72) = a1[4];
  *(v4 + 88) = v5;
  v6 = a1[7];
  *(v4 + 104) = a1[6];
  *(v4 + 120) = v6;
  v7 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v7;
  v8 = a1[3];
  *(v4 + 40) = a1[2];
  *v4 = &unk_2A207BA78;
  *(v4 + 56) = v8;
  sub_29AC29E70(&v10, v4);
  result = *&v10;
  *a2 = v10;
  return result;
}

double sub_29ACAAF50@<D0>(__int128 *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  *v4 = &unk_2A2081A10;
  v5 = *a1;
  *(v4 + 24) = a1[1];
  v6 = a1[3];
  *(v4 + 40) = a1[2];
  *(v4 + 56) = v6;
  *(v4 + 9) = *(a1 + 8);
  *(v4 + 8) = v5;
  sub_29ACAB09C(&v8, v4);
  result = *&v8;
  *a2 = v8;
  return result;
}

void sub_29ACAAFD8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAB000@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A20484A8 + 2;
  result = operator new(0x50uLL);
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  *(result + 2) = *(a1 + 40);
  *(result + 3) = v6;
  *(result + 8) = *(a1 + 72);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 18);
  *a2 = result;
  atomic_fetch_add_explicit(result + 18, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAB078@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 24);
  v3 = *(a1 + 56);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 72);
  *a2 = *(a1 + 8);
  *(a2 + 16) = result;
  return result;
}

void *sub_29ACAB09C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081A78;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAB0F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAB110(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAB138(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAB168(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081AC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAB1A8@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A2081AF0;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACAB2B4(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAB21C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAB244@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2048338 + 2;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAB2B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081B58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAB30C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAB328(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAB350(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAB380(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081BA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAB3C0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081BD0;
  *(v4 + 8) = *a1;
  *(v4 + 3) = *(a1 + 16);
  sub_29ACAB75C(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACAB438(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAB460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2081C28;
  result = operator new(0x1CuLL);
  *result = *(a1 + 8);
  *(result + 2) = *(a1 + 24);
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAB4C4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 24);
  return result;
}

uint64_t *sub_29ACAB4D8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAB4F4(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 6, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAB51C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAB534(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A1A2E78(&v3, v1, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void *sub_29ACAB664@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2081C28;
  result = operator new(0x1CuLL);
  v5 = *(v3 + 16);
  *result = *v3;
  *(result + 2) = v5;
  atomic_store(0, result + 6);
  *a2 = result;
  atomic_fetch_add_explicit(result + 6, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29ACAB6C0(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 6);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x1CuLL);
  v5 = *(v2 + 2);
  *v3 = *v2;
  *(v3 + 2) = v5;
  atomic_store(0, v3 + 6);
  atomic_fetch_add_explicit(v3 + 6, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 6, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29ACAB75C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081CF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAB7B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAB7D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAB7F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAB828(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081D40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAB868@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  *v4 = &unk_2A2081D68;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  *(v4 + 40) = a1[2];
  sub_29ACABC10(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAB8E4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAB90C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2081DC0;
  result = operator new(0x38uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  *(result + 2) = *(a1 + 40);
  atomic_store(0, result + 12);
  *a2 = result;
  atomic_fetch_add_explicit(result + 12, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAB974@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v2;
  result = *(a1 + 40);
  *(a2 + 32) = result;
  return result;
}

uint64_t *sub_29ACAB98C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAB9A8(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 12, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAB9D0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAB9E8(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A1A22A4(&v3, v1, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void *sub_29ACABB18@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2081DC0;
  result = operator new(0x38uLL);
  v6 = v3[1];
  v5 = v3[2];
  *result = *v3;
  *(result + 1) = v6;
  *(result + 2) = v5;
  atomic_store(0, result + 12);
  *a2 = result;
  atomic_fetch_add_explicit(result + 12, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29ACABB74(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 12);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x38uLL);
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  *v3 = *v2;
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;
  atomic_store(0, v3 + 12);
  atomic_fetch_add_explicit(v3 + 12, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 12, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29ACABC10(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081E88;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACABC68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACABC84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACABCAC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACABCDC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081ED8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACABD1C@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A2081F00;
  *(v4 + 8) = *a1;
  sub_29ACABE1C(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACABD8C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACABDB4@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = &off_2A2071910;
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACABE1C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2081F68;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACABE74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACABE90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACABEB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACABEE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2081FB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACABF28@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A2081FE0;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACAC2A0(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACABF9C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACABFC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2082038;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ACAC030(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAC04C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 8, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAC074(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAC08C(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A1A0ADC(&v3, v1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29ACAC0E4(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void *sub_29ACAC24C@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082038;
  result = operator new(0x28uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAC2A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082100;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAC2F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAC314(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAC33C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAC36C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082150))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAC3AC@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A2082178;
  v4[1] = v5;
  sub_29ACAC5EC(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAC418(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACAC440@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &off_2A20821D0 + 1;
  return result;
}

unint64_t sub_29ACAC48C(float *a1)
{
  v2 = 0;
  v3 = 0;
  sub_29A18994C(&v2, a1, a1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void *sub_29ACAC5D4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A20821D0 + 1;
  return result;
}

void *sub_29ACAC5EC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082298;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAC644(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAC660(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAC688(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAC6B8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20822E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAC6F8@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A2082310;
  *(v4 + 8) = *a1;
  sub_29ACACA04(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACAC768(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACAC790@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = &off_2A2082368;
  result = operator new(0x18uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ACAC7F4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAC810(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAC838(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAC850(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A189C3C(&v3, v1, v1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unsigned int *sub_29ACAC9B0@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082368;
  result = operator new(0x18uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACACA04(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082430;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACACA5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACACA78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACACAA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACACAD0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082480))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACACB10@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A20824A8;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACACE8C(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACACB84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACACBAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2082500;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACACC0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t *sub_29ACACC1C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACACC38(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 8, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACACC60(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACACC78(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A13F68C(&v3, v1, v1 + 16);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29ACACCD0(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && *(v2 + 8) == *(v3 + 8) && v2[2] == v3[2] && *(v2 + 24) == *(v3 + 24);
}

void *sub_29ACACE38@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082500;
  result = operator new(0x28uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACACE8C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20825C8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACACEE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACACF00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACACF28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACACF58(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082618))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACACF98@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A2082640;
  *(v4 + 8) = *a1;
  sub_29ACAD308(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACAD008(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACAD030@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = &off_2A2082698;
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ACAD098(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAD0B4(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAD0DC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAD0F4(int **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29AC807B0(&v3, v1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29ACAD14C(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

unsigned int *sub_29ACAD2B4@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082698;
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAD308(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082760;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAD360(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAD37C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAD3A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAD3D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20827B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAD414@<D0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = *a1;
  *v4 = &unk_2A20827D8;
  v4[1] = v5;
  sub_29ACAD4D0(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAD480(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

uint64_t sub_29ACAD4A8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  a2[1] = &off_2A2042E00 + 1;
  return result;
}

void *sub_29ACAD4D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082840;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAD528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAD544(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAD56C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAD59C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082890))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAD5DC@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A20828B8;
  *(v4 + 8) = *a1;
  sub_29ACAD6DC(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACAD64C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACAD674@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = &off_2A2042D48;
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAD6DC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082920;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAD734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAD750(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAD778(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAD7A8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082970))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAD7E8@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A2082998;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACAD8F0(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAD85C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAD884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2042EB8;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAD8F0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082A00;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAD948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAD964(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAD98C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAD9BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082A50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAD9FC@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A2082A78;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACADD7C(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACADA70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACADA98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2082AD0;
  result = operator new(0x28uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ACADB04(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACADB20(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 8, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACADB48(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACADB60(uint64_t **a1)
{
  v1 = (*a1 + 1);
  v3 = **a1;
  v4 = 0;
  v5 = 0;
  sub_29A18DBF4(&v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

BOOL sub_29ACADBC0(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void *sub_29ACADD28@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082AD0;
  result = operator new(0x28uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACADD7C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082B98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACADDD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACADDF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACADE18(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACADE48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082BE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACADE88@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A2082C10;
  *(v4 + 8) = *a1;
  sub_29ACAE168(&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

void sub_29ACADEF8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

unsigned int *sub_29ACADF20@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  a2[1] = &off_2A2082C68;
  result = operator new(0x14uLL);
  *result = *(a1 + 8);
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29ACADF88(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACADFA4(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACADFCC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACADFE4(unsigned __int16 **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29AC81624(&v3, v1, v1 + 4);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

unsigned int *sub_29ACAE114@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082C68;
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAE168(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082D30;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAE1C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAE1DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAE204(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAE234(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082D80))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAE274@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  *v4 = &unk_2A2082DA8;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  sub_29ACAE5F4(&v7, v4);
  result = *&v7;
  *a2 = v7;
  return result;
}

void sub_29ACAE2E8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAE310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2082E00;
  result = operator new(0x24uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAE370@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t *sub_29ACAE380(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAE39C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 8, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAE3C4(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAE3DC(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29AC81E40(&v3, v1, v1 + 16);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void *sub_29ACAE50C@<X0>(_OWORD **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082E00;
  result = operator new(0x24uLL);
  v5 = v3[1];
  *result = *v3;
  *(result + 1) = v5;
  atomic_store(0, result + 8);
  *a2 = result;
  atomic_fetch_add_explicit(result + 8, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29ACAE560(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 8);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x24uLL);
  v5 = *(v2 + 1);
  *v3 = *v2;
  *(v3 + 1) = v5;
  atomic_store(0, v3 + 8);
  atomic_fetch_add_explicit(v3 + 8, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 8, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29ACAE5F4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2082EC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAE64C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAE668(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAE690(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAE6C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2082F18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_29ACAE700@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  *v4 = &unk_2A2082F40;
  v5 = a1[1];
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = a1[3];
  *(v4 + 40) = a1[2];
  *(v4 + 56) = v6;
  sub_29ACAEAB4(&v8, v4);
  result = *&v8;
  *a2 = v8;
  return result;
}

void sub_29ACAE780(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v1);
}

void *sub_29ACAE7A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = &off_2A2082F98;
  result = operator new(0x48uLL);
  v5 = *(a1 + 24);
  *result = *(a1 + 8);
  *(result + 1) = v5;
  v6 = *(a1 + 56);
  *(result + 2) = *(a1 + 40);
  *(result + 3) = v6;
  atomic_store(0, result + 16);
  *a2 = result;
  atomic_fetch_add_explicit(result + 16, 1u, memory_order_relaxed);
  return result;
}

__n128 sub_29ACAE814@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t *sub_29ACAE830(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 64), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAE84C(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 16, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29ACAE874(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29ACAE88C(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29AC82674(&v3, v1, v1 + 32);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void *sub_29ACAE9BC@<X0>(__int128 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2082F98;
  result = operator new(0x48uLL);
  v5 = v3[3];
  v7 = *v3;
  v6 = v3[1];
  *(result + 2) = v3[2];
  *(result + 3) = v5;
  *result = v7;
  *(result + 1) = v6;
  atomic_store(0, result + 16);
  *a2 = result;
  atomic_fetch_add_explicit(result + 16, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29ACAEA18(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 16);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x48uLL);
  v5 = *(v2 + 3);
  v7 = *v2;
  v6 = *(v2 + 1);
  *(v3 + 2) = *(v2 + 2);
  *(v3 + 3) = v5;
  *v3 = v7;
  *(v3 + 1) = v6;
  atomic_store(0, v3 + 16);
  atomic_fetch_add_explicit(v3 + 16, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 16, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29ACAEAB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2083060;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAEB0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAEB28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAEB50(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAEB80(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20830B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACAEBC0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x88uLL);
  sub_29ACAEC2C(v4, a1);

  return sub_29ACAF42C(a2, v4);
}

void *sub_29ACAEC2C(void *a1, __int128 *a2)
{
  *a1 = &unk_2A20830D8;
  sub_29A1340B0((a1 + 1), a2);
  return a1;
}

void sub_29ACAEC84(uint64_t a1)
{
  *a1 = &unk_2A20830D8;
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum((a1 + 8));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ACAECD8(uint64_t a1)
{
  *a1 = &unk_2A20830D8;
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum((a1 + 8));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t *sub_29ACAED5C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAED7C(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29ACAEEEC(a1);
}

unint64_t sub_29ACAED94(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29ACAEF38(&v3, v1, (v1 + 24), (v1 + 56), (v1 + 88), (v1 + 104), (v1 + 112));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t sub_29ACAEED4@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2083130;
  return sub_29ACAF3C4(a2, v2);
}

void sub_29ACAEEEC(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit(v2 + 32, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v2);

    operator delete(v3);
  }
}

uint64_t sub_29ACAEF38(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, unsigned int *a7)
{
  v15 = 0;
  v16 = 0;
  sub_29A18AAA0(&v15, a2, a2 + 1, a2 + 2);
  v13 = bswap64(0x9E3779B97F4A7C55 * v15);
  if (*(a1 + 8))
  {
    v13 += (*a1 + v13 + (*a1 + v13) * (*a1 + v13)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_29ACAEFFC(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_29ACAEFFC(uint64_t a1, double *a2, double *a3, double *a4, double *a5, unsigned int *a6)
{
  v13 = 0;
  v14 = 0;
  sub_29ACAF15C(&v13, a2, a2 + 3);
  v11 = bswap64(0x9E3779B97F4A7C55 * v13);
  if (*(a1 + 8))
  {
    v11 += (*a1 + v11 + (*a1 + v11) * (*a1 + v11)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_29ACAF0B4(a1, a3, a4, a5, a6);
}

uint64_t sub_29ACAF0B4(uint64_t a1, double *a2, double *a3, double *a4, unsigned int *a5)
{
  v11 = 0;
  v12 = 0;
  sub_29A1A0ADC(&v11, a2, a2 + 2);
  v9 = bswap64(0x9E3779B97F4A7C55 * v11);
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_29ACAF204(a1, a3, a4, a5);
}

uint64_t sub_29ACAF15C(uint64_t a1, double *a2, double *a3)
{
  v8 = 0;
  v9 = 0;
  result = sub_29A18AAA0(&v8, a2, a2 + 1, a2 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v8);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  v7 = *a3;
  if (*a3 == 0.0)
  {
    v7 = 0.0;
  }

  *a1 = *&v7 + ((v6 + *&v7 + (v6 + *&v7) * (v6 + *&v7)) >> 1);
  return result;
}

uint64_t sub_29ACAF204(uint64_t a1, double *a2, double *a3, unsigned int *a4)
{
  v9 = 0;
  v10 = 0;
  sub_29A189C3C(&v9, a2, a2 + 1);
  v7 = bswap64(0x9E3779B97F4A7C55 * v9);
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_29ACAF2A4(a1, a3, a4);
}

uint64_t sub_29ACAF2A4(uint64_t result, double *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = v3;
  if (*(result + 8))
  {
    *&v4 = *&v3 + ((*result + *&v3 + (*result + *&v3) * (*result + *&v3)) >> 1);
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((*&v4 + *a3 + (*&v4 + *a3) * (*&v4 + *a3)) >> 1);
  return result;
}

__int128 *sub_29ACAF2F4(__int128 **a1)
{
  v2 = atomic_load(*a1 + 32);
  if (v2 != 1)
  {
    sub_29ACAF35C(*a1, &v4);
    sub_29ACAEEEC(a1);
    *a1 = v4;
    v4 = 0;
    sub_29ACAEEEC(&v4);
  }

  return *a1;
}

uint64_t sub_29ACAF35C@<X0>(__int128 *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x88uLL);
  result = sub_29A1340B0(v4, a1);
  atomic_store(0, v4 + 32);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 32, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29ACAF3C4(unsigned int **a1, __int128 *a2)
{
  v4 = operator new(0x88uLL);
  result = sub_29A1340B0(v4, a2);
  atomic_store(0, v4 + 32);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 32, 1u, memory_order_relaxed);
  return result;
}

void *sub_29ACAF42C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20831F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAF484(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAF4A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAF4C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAF4F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083248))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACAF5FC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2083270;
  sub_29A082B84(a1 + 8, *(a1 + 2));

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ACAF658(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A2083270;
  sub_29A082B84(a1 + 8, *(a1 + 2));
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t *sub_29ACAF6E4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29ACAF704(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29ACAF840(a1);
}

void sub_29ACAF840(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_29A082B84(v1, *(v1 + 8));

    operator delete(v1);
  }
}

uint64_t sub_29ACAF8A8(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_29ACAF910();
  }

  return *a1;
}

void *sub_29ACAF9E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2083390;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACAFA38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACAFA54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACAFA7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACAFAAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20833E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACAFAEC(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (sub_29A1F594C(a1))
  {
    v4 = *(v2 + 8);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    sub_29ABE8360(v2, &v16);
LABEL_25:
    *a2 = v16;
    return;
  }

  if (sub_29ACAFD14(v2))
  {
    v5 = *(v2 + 8);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v6 = *v2;
    }

    sub_29ABE9C5C(v6, &v16);
    goto LABEL_25;
  }

  if (sub_29A1FA780(v2))
  {
    v7 = *(v2 + 8);
    if ((v7 & 4) != 0)
    {
      v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v8 = *v2;
    }

    sub_29ACAFDA0(v8, &v16);
    goto LABEL_25;
  }

  if (sub_29A1FA80C(v2))
  {
    v9 = *(v2 + 8);
    if ((v9 & 4) != 0)
    {
      v10 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v10 = *v2;
    }

    sub_29ACAFE0C(v10, &v16);
    goto LABEL_25;
  }

  if (sub_29A23DDC0(v2))
  {
    v11 = *(v2 + 8);
    if ((v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    sub_29ACAFE9C();
  }

  if (sub_29A1FD484(v2))
  {
    v12 = *(v2 + 8);
    if ((v12 & 4) != 0)
    {
      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    sub_29AC04E80();
  }

  if (*(v2 + 8))
  {
    *&v16 = "hd/retainedDataSource.cpp";
    *(&v16 + 1) = "operator()";
    v17 = 379;
    v18 = "HdSampledDataSource::Handle pxrInternal__aapl__pxrReserved__::Hd_CreateTypedRetainedDataSourceVisitor::operator()(const VtValue &) const";
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(v2, &__p);
    v13 = v15 >= 0 ? &__p : __p.__vftable;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v16, 1, "Unsupported type %s", v13);
    if (v15 < 0)
    {
      operator delete(__p.__vftable);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

void sub_29ACAFCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ACAFD14(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B6CC182 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2076BA8);
}

void *sub_29ACAFDA0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  sub_29ACAFF08(v4, a1);

  return sub_29ACB0168(a2, v4);
}

void *sub_29ACAFE0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A20834E8;
  v5 = *(a1 + 16);
  *(v4 + 8) = *a1;
  *(v4 + 24) = v5;
  v6 = *(a1 + 32);
  *(v4 + 5) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(v4 + 4))
    {
      v7 = *(v4 + 4);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return sub_29ACB037C(a2, v4);
}

uint64_t sub_29ACAFF08(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2A2083408;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 48) = *(a2 + 5);
    *(a1 + 32) = v5;
  }

  return a1;
}

void sub_29ACAFFA8(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(v1);
  _Unwind_Resume(a1);
}

void sub_29ACAFFD4(void **this)
{
  *this = &unk_2A2083408;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB0044(void **this)
{
  *this = &unk_2A2083408;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v2);
}

char *sub_29ACB00D8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[31] < 0)
  {
    result = sub_29A008D14(a2, *(result + 1), *(result + 2));
  }

  else
  {
    *a2 = *(result + 8);
    *(a2 + 16) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    return sub_29A008D14((a2 + 24), *(v2 + 4), *(v2 + 5));
  }

  *(a2 + 24) = *(v2 + 2);
  *(a2 + 40) = *(v2 + 6);
  return result;
}

void sub_29ACB014C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29ACB0168(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2083470;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACB01C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACB01DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB0204(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB0234(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20834C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB0274(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20834E8;
  sub_29A216064(a1 + 1);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ACB02CC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20834E8;
  sub_29A216064(a1 + 1);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);

  operator delete(v2);
}

uint64_t sub_29ACB0348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 8);
  *(a2 + 16) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = (v3 - 16);
    if (!v4)
    {
      v4 = v5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29ACB037C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2083550;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACB03D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACB03F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB0418(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB0448(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20835A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB0488(void *a1)
{
  *a1 = &unk_2A20835C8;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29ACB04F8(void **a1)
{
  *a1 = &unk_2A20835C8;
  v2 = a1 + 1;
  sub_29A1E234C(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ACB0554(void **a1)
{
  *a1 = &unk_2A20835C8;
  v3 = a1 + 1;
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void sub_29ACB05D4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void *sub_29ACB05F0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2083630;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29ACB0648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ACB0664(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB068C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB06BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083680))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACB06FC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x210uLL);
  pxrInternal__aapl__pxrReserved__::HdRetainedSmallVectorDataSource::HdRetainedSmallVectorDataSource(v6, *a1, *a2);

  return sub_29AC011AC(a3, v6);
}

void sub_29ACB0774(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB079C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB07CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20836F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB080C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083720;
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB0880(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083720;
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v4);
}

void *sub_29ACB08F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 32));
  if (*(a1 + 32))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 32));
  }

  return result;
}

void sub_29ACB0970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB098C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = -v3;
    v5 = 1;
    while ((*(result + 8 * v5) ^ *a2) > 7)
    {
      ++v5;
      if (v4 + v5 == 1)
      {
        goto LABEL_5;
      }
    }

    v6 = *(result + 16 * v5);
    *a3 = v6;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB09EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB0A14(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB0A44(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20837B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB0A84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20837E0;
  for (i = 48; i != 16; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 16;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB0B14(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20837E0;
  for (i = 48; i != 16; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 16;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB0BA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 56));
  if (*(a1 + 56))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 56));
  }

  return result;
}

void sub_29ACB0C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB0C3C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 56);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 24);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB0C9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB0CC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB0CF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083878))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB0D34(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20838A0;
  for (i = 72; i != 24; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 24;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB0DC4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20838A0;
  for (i = 72; i != 24; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 24;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB0E58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 80));
  if (*(a1 + 80))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 80));
  }

  return result;
}

void sub_29ACB0ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB0EEC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 80);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 32);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB0F4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB0F74(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB0FA4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083938))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB0FE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083960;
  for (i = 96; i != 32; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 32;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB1074(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083960;
  for (i = 96; i != 32; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 32;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB1108@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 104));
  if (*(a1 + 104))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 104));
  }

  return result;
}

void sub_29ACB1180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB119C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 104);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 40);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB11FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB1224(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB1254(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20839F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB1294(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083A20;
  for (i = 120; i != 40; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 40;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB1324(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083A20;
  for (i = 120; i != 40; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 40;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB13B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 128));
  if (*(a1 + 128))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 128));
  }

  return result;
}

void sub_29ACB1430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB144C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 128);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 48);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB14AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB14D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB1504(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083AB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB1544(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083AE0;
  for (i = 144; i != 48; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 48;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB15D4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083AE0;
  for (i = 144; i != 48; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 48;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB1668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 152));
  if (*(a1 + 152))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 152));
  }

  return result;
}

void sub_29ACB16E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB16FC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 152);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 56);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB175C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB1784(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB17B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083B78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB17F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083BA0;
  for (i = 168; i != 56; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 56;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB1884(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083BA0;
  for (i = 168; i != 56; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 56;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB1918@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 176));
  if (*(a1 + 176))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 176));
  }

  return result;
}

void sub_29ACB1990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB19AC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 176);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 64);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB1A0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB1A34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB1A64(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083C38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB1AA4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083C60;
  for (i = 192; i != 64; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 64;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB1B34(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083C60;
  for (i = 192; i != 64; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 64;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB1BC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 200));
  if (*(a1 + 200))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 200));
  }

  return result;
}

void sub_29ACB1C40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB1C5C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 200);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 72);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB1CBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB1CE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB1D14(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083CF8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB1D54(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083D20;
  for (i = 216; i != 72; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 72;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB1DE4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083D20;
  for (i = 216; i != 72; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 72;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB1E78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 224));
  if (*(a1 + 224))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 224));
  }

  return result;
}

void sub_29ACB1EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB1F0C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 224);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 80);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB1F6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB1F94(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB1FC4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083DB8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB2004(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083DE0;
  for (i = 240; i != 80; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 80;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB2094(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083DE0;
  for (i = 240; i != 80; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 80;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB2128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 248));
  if (*(a1 + 248))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 248));
  }

  return result;
}

void sub_29ACB21A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB21BC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 248);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 88);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB221C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB2244(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB2274(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083E78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB22B4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083EA0;
  for (i = 264; i != 88; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 88;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB2344(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083EA0;
  for (i = 264; i != 88; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 88;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB23D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 272));
  if (*(a1 + 272))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 272));
  }

  return result;
}

void sub_29ACB2450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB246C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 272);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 96);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB24CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB24F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB2524(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083F38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB2564(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083F60;
  for (i = 288; i != 96; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 96;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB25F4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2083F60;
  for (i = 288; i != 96; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 96;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB2688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 296));
  if (*(a1 + 296))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 296));
  }

  return result;
}

void sub_29ACB2700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB271C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 296);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 104);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB277C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB27A4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB27D4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2083FF8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB2814(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2084020;
  for (i = 312; i != 104; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 104;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB28A4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2084020;
  for (i = 312; i != 104; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 104;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB2938@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 320));
  if (*(a1 + 320))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 320));
  }

  return result;
}

void sub_29ACB29B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB29CC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 320);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 112);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB2A2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB2A54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB2A84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20840B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB2AC4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20840E0;
  for (i = 336; i != 112; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 112;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB2B54(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20840E0;
  for (i = 336; i != 112; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 112;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB2BE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 344));
  if (*(a1 + 344))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 344));
  }

  return result;
}

void sub_29ACB2C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB2C7C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 344);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 120);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB2CDC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB2D04(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB2D34(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2084178))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB2D74(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20841A0;
  for (i = 360; i != 120; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 120;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB2E04(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A20841A0;
  for (i = 360; i != 120; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 120;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB2E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 368));
  if (*(a1 + 368))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 368));
  }

  return result;
}

void sub_29ACB2F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB2F2C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 368);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 128);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB2F8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB2FB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB2FE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2084238))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29ACB3024(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2084260;
  for (i = 384; i != 128; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 128;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);

  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);
}

void sub_29ACB30B4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *this)
{
  *this = &unk_2A2084260;
  for (i = 384; i != 128; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      sub_29A014BEC(v3);
    }
  }

  v4 = 128;
  do
  {
    v5 = *(this + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
  }

  while (v4);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(this);

  operator delete(v6);
}

void *sub_29ACB3148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, *(a1 + 392));
  if (*(a1 + 392))
  {
    v5 = 0;
    v6 = (a1 + 8);
    do
    {
      result = sub_29A1D8028(a2, v6);
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 392));
  }

  return result;
}

void sub_29ACB31C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB31DC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 392);
  if (v3)
  {
    v4 = (result + 8);
    v5 = (result + 136);
    while ((*v4 ^ *a2) > 7)
    {
      ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
    *a3 = *v5;
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_29ACB323C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29ACB3264(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29ACB3294(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20842F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29ACB32D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6[0] = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6[0] = v3;
    }
  }

  v6[1] = 0;
  v7 = 0;
  v4 = sub_29ACB374C(a1, v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v6[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v6[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4 + 1;
}

void sub_29ACB3354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB3374(uint64_t a1)
{
  sub_29A1601D8((a1 + 24), 0);
  v3 = a1;
  sub_29A3E01A4(&v3);
  return a1;
}

void sub_29ACB33B8(uint64_t a1)
{
  *a1 = &unk_2A2084320;
  sub_29A1601D8((a1 + 32), 0);
  v2 = (a1 + 8);
  sub_29A3E01A4(&v2);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
}

void sub_29ACB341C(uint64_t a1)
{
  *a1 = &unk_2A2084320;
  sub_29A1601D8((a1 + 32), 0);
  v3 = (a1 + 8);
  sub_29A3E01A4(&v3);
  pxrInternal__aapl__pxrReserved__::HdDataSourceBase::~HdDataSourceBase(a1);
  operator delete(v2);
}

void *sub_29ACB3484@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29A1D7F98(a2, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    result = sub_29A1D8028(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_29ACB3500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A124AB0(va);
  _Unwind_Resume(a1);
}

void *sub_29ACB351C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_29ACB3BCC((a1 + 8), a2);
  if (*(a1 + 16) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[2];
    *a3 = result[1];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void *sub_29ACB3574(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A012C48(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = &v4[3 * v6];
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = (v4 + v3 + *v2 - v8);
    sub_29ACB3650(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A3E0E04(&v12);
  }

  return result;
}

void sub_29ACB363C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A3E0E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29ACB3650(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_29A3E00AC(a4, v7);
      v7 += 3;
      a4 = v12 + 3;
      v12 += 3;
    }

    while (v7 != a3);
  }

  v10 = 1;
  sub_29A3E0D9C(a1, a2, a3);
  return sub_29ACB3700(v9);
}

uint64_t sub_29ACB3700(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A3E0140(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void *sub_29ACB374C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = v6;
    v16 = v5;
    v7 = sub_29A162678(v4, &v15, &v15);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 24 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 3;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    v11 = *a2;
    v15 = v11;
    if ((v11 & 7) != 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 = v12;
      }
    }

    v13 = a2[2];
    v16 = a2[1];
    v17 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29ACB391C(a1, &v15);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v14 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3) >= 0x20)
    {
      sub_29ACB3A90(a1);
      v14 = a1[1];
    }

    return (v14 - 24);
  }

  return result;
}

void sub_29ACB38DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_29ACB391C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29ACB3964(a1, a2);
  }

  else
  {
    result = sub_29A3E00AC(v3, a2) + 3;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29ACB3964(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29A3E00AC(v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29ACB3650(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A3E0E04(&v14);
  return v13;
}