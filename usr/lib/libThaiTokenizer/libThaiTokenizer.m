double marisa::Agent::Agent(marisa::Agent *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void *marisa::Agent::set_query(void *this, const char *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:21: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
  }

  v3 = this[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *this = a2;
  this[1] = a3;
  return this;
}

void *marisa::Agent::init_state(marisa::Agent *this)
{
  v1 = (this + 40);
  if (*(this + 5))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x100000024;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:36: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_8;
  }

  v2 = operator new(0x70uLL, MEMORY[0x29EDC9418]);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
  }

  result = marisa::scoped_ptr<marisa::grimoire::trie::State>::reset(v1, v2);
  if (!*v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x800000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:38: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return result;
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::reset(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v4);
}

void marisa::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x29C285730);
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[6];
    if (v3)
    {
      MEMORY[0x29C285700](v3, 0x1000C8077774924);
    }

    if (*v2)
    {
      MEMORY[0x29C285700](*v2, 0x1000C8077774924);
    }

    MEMORY[0x29C285730](v2, 0x1070C406A3FAA47);
  }

  return a1;
}

uint64_t marisa::grimoire::io::Mapper::Mapper(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = -1;
  return this;
}

void marisa::grimoire::io::Mapper::~Mapper(marisa::grimoire::io::Mapper *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if (v3 != -1)
  {
    close(v3);
  }
}

uint64_t *marisa::grimoire::io::Mapper::swap(uint64_t *this, marisa::grimoire::io::Mapper *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v4 = this[1];
  v3 = this[2];
  v5 = *(a2 + 2);
  this[1] = *(a2 + 1);
  this[2] = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v3;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return this;
}

__n128 marisa::grimoire::io::Mapper::open(marisa::grimoire::io::Mapper *this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x20000003FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:63: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *this;
  v4 = *(this + 1);
  *this = a2;
  *(this + 1) = -1;
  *(this + 2) = a3;
  *(this + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(this + 8);
  *(this + 8) = -1;
  v9 = v5;
  marisa::grimoire::io::Mapper::~Mapper(v8);
  return result;
}

uint64_t marisa::grimoire::io::Mapper::seek(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (*(this + 2) < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return marisa::grimoire::io::Mapper::map_data(this, a2);
}

uint64_t marisa::grimoire::io::Mapper::map_data(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = *(this + 2);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *this = v2 + a2;
  *(this + 2) = v5;
  return v2;
}

marisa::grimoire::trie::LoudsTrie *marisa::grimoire::trie::LoudsTrie::LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 345) = 0u;
  *(this + 393) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 297) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 441) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 601) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 505) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 649) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 697) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 90) = 0;
  *(this + 182) = 0;
  *(this + 92) = 0;
  marisa::grimoire::trie::Tail::Tail((this + 744));
  *(this + 1048) = 0;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1000) = 0u;
  *(this + 66) = 0u;
  *(this + 134) = 3;
  *(this + 135) = 0x100000000200;
  *(this + 272) = 0x20000;
  marisa::grimoire::io::Mapper::Mapper(this + 1096);
  return this;
}

void sub_298262E14(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x29C285700](v8, 0x1000C8077774924);
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v4);
  marisa::grimoire::trie::Tail::~Tail((v1 + 93));
  if (*v6)
  {
    MEMORY[0x29C285700](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x29C285700](*v5, 0x1000C8077774924);
  }

  marisa::grimoire::vector::BitVector::~BitVector(v3);
  marisa::grimoire::vector::BitVector::~BitVector(v2);
  marisa::grimoire::vector::BitVector::~BitVector(v1);
  _Unwind_Resume(a1);
}

void marisa::grimoire::vector::BitVector::~BitVector(marisa::grimoire::vector::BitVector *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x29C285700](v2, 0x1000C8077774924);
  }

  v3 = *(this + 14);
  if (v3)
  {
    MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C285700](v4, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x29C285700](*this, 0x1000C8077774924);
  }
}

void marisa::grimoire::trie::LoudsTrie::~LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  marisa::grimoire::io::Mapper::~Mapper((this + 1096));
  v2 = *(this + 126);
  if (v2)
  {
    MEMORY[0x29C285700](v2, 0x1000C8077774924);
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 1000);
  v3 = *(this + 119);
  if (v3)
  {
    MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  v4 = *(this + 113);
  if (v4)
  {
    MEMORY[0x29C285700](v4, 0x1000C8077774924);
  }

  v5 = *(this + 107);
  if (v5)
  {
    MEMORY[0x29C285700](v5, 0x1000C8077774924);
  }

  v6 = *(this + 99);
  if (v6)
  {
    MEMORY[0x29C285700](v6, 0x1000C8077774924);
  }

  v7 = *(this + 93);
  if (v7)
  {
    MEMORY[0x29C285700](v7, 0x1000C8077774924);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x29C285700](v8, 0x1000C8077774924);
  }

  v9 = *(this + 78);
  if (v9)
  {
    MEMORY[0x29C285700](v9, 0x1000C8077774924);
  }

  v10 = *(this + 72);
  if (v10)
  {
    MEMORY[0x29C285700](v10, 0x1000C8077774924);
  }

  v11 = *(this + 66);
  if (v11)
  {
    MEMORY[0x29C285700](v11, 0x1000C8077774924);
  }

  v12 = *(this + 60);
  if (v12)
  {
    MEMORY[0x29C285700](v12, 0x1000C8077774924);
  }

  v13 = *(this + 52);
  if (v13)
  {
    MEMORY[0x29C285700](v13, 0x1000C8077774924);
  }

  v14 = *(this + 46);
  if (v14)
  {
    MEMORY[0x29C285700](v14, 0x1000C8077774924);
  }

  v15 = *(this + 40);
  if (v15)
  {
    MEMORY[0x29C285700](v15, 0x1000C8077774924);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x29C285700](v16, 0x1000C8077774924);
  }

  v17 = *(this + 26);
  if (v17)
  {
    MEMORY[0x29C285700](v17, 0x1000C8077774924);
  }

  v18 = *(this + 20);
  if (v18)
  {
    MEMORY[0x29C285700](v18, 0x1000C8077774924);
  }

  v19 = *(this + 14);
  if (v19)
  {
    MEMORY[0x29C285700](v19, 0x1000C8077774924);
  }

  v20 = *(this + 8);
  if (v20)
  {
    MEMORY[0x29C285700](v20, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x29C285700](*this, 0x1000C8077774924);
  }
}

uint64_t *marisa::grimoire::trie::LoudsTrie::swap(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::trie::LoudsTrie *a2)
{
  marisa::grimoire::vector::BitVector::swap(this, a2);
  marisa::grimoire::vector::BitVector::swap((this + 208), (a2 + 208));
  marisa::grimoire::vector::BitVector::swap((this + 416), (a2 + 416));
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 78, a2 + 78);
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 84, a2 + 84);
  v4 = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v4;
  LODWORD(v4) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v4;
  v5 = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v5;
  marisa::grimoire::trie::Tail::swap((this + 744), (a2 + 744));
  v6 = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v6;
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 126, a2 + 126);
  v7 = *(this + 132);
  *(this + 132) = *(a2 + 132);
  *(a2 + 132) = v7;
  v8 = *(this + 133);
  *(this + 133) = *(a2 + 133);
  *(a2 + 133) = v8;
  v9 = *(this + 134);
  *(this + 134) = *(a2 + 134);
  *(a2 + 134) = v9;
  v10 = *(this + 135);
  *(this + 135) = *(a2 + 135);
  *(a2 + 135) = v10;
  LODWORD(v9) = *(this + 272);
  *(this + 272) = *(a2 + 272);
  *(a2 + 272) = v9;

  return marisa::grimoire::io::Mapper::swap(this + 137, (a2 + 1096));
}

void marisa::grimoire::trie::LoudsTrie::map(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::trie::Header::map(v4, a2);
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  marisa::grimoire::trie::LoudsTrie::map_(v4, a2);
  marisa::grimoire::io::Mapper::swap(v5, a2);
  marisa::grimoire::trie::LoudsTrie::swap(this, v4);
  marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v4);
}

_BYTE *marisa::grimoire::trie::Header::map(marisa::grimoire::trie::Header *this, marisa::grimoire::io::Mapper *a2)
{
  result = marisa::grimoire::io::Mapper::map_data(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = marisa::grimoire::trie::Header::get_header(void)::buf[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
  }

  return result;
}

double marisa::grimoire::trie::LoudsTrie::map_(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::BitVector::map(this, a2);
  marisa::grimoire::vector::BitVector::map((this + 208), a2);
  marisa::grimoire::vector::BitVector::map((this + 416), a2);
  marisa::grimoire::vector::Vector<unsigned char>::map(this + 39, a2);
  marisa::grimoire::vector::FlatVector::map((this + 672), a2);
  marisa::grimoire::trie::Tail::map((this + 744), a2);
  if (*(this + 59) && !*(this + 96))
  {
    v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v5 = v4;
    if (v4)
    {
      marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
    }

    marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset(this + 125, v5);
    v6 = *(this + 125);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1EB1848;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x80000021ELL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:542: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    marisa::grimoire::trie::LoudsTrie::map_(v6, a2);
  }

  marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::map(this + 63, a2);
  *(this + 132) = *(this + 129) - 1;
  *(this + 133) = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v7 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  marisa::grimoire::trie::Config::parse_(&v10, v7);
  *(this + 134) = v10;
  result = v11;
  *(this + 135) = v11;
  *(this + 272) = v12;
  return result;
}

uint64_t marisa::grimoire::trie::LoudsTrie::lookup(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2)
{
  v4 = *(a2 + 5);
  *(v4 + 96) = 0;
  *(v4 + 108) = 0;
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 <= *(v4 + 100))
    {
      break;
    }

    if ((marisa::grimoire::trie::LoudsTrie::find_child(this, a2) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v4 + 96);
  if ((*(*(this + 28) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
  {
    *(a2 + 3) = *a2;
    *(a2 + 8) = v5;
    *(a2 + 9) = marisa::grimoire::vector::BitVector::rank1((this + 208), v6);
    return 1;
  }

  return 0;
}

uint64_t marisa::grimoire::trie::LoudsTrie::find_child(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2)
{
  v4 = *(a2 + 5);
  v5 = *(v4 + 96);
  v6 = *(v4 + 100);
  v7 = (*(*a2 + v6) ^ (32 * v5) ^ v5) & *(this + 132);
  v8 = (*(this + 128) + 12 * v7);
  if (v5 != *v8)
  {
    v10 = marisa::grimoire::vector::BitVector::select0(this, v5);
    v11 = *(this + 2);
    if ((*(v11 + (((v10 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v10 + 1)))
    {
      v12 = v10 - *(v4 + 96);
      *(v4 + 96) = v12;
      v13 = v10 + 2;
      v14 = 0xFFFFFFFFLL;
      while (1)
      {
        v15 = v12;
        if ((*(*(this + 54) + ((v12 >> 3) & 0x1FFFFFF8)) >> v12))
        {
          if (v14 == 0xFFFFFFFFLL)
          {
            v14 = marisa::grimoire::vector::BitVector::rank1((this + 416), v12);
            v15 = *(v4 + 96);
          }

          else
          {
            ++v14;
          }

          v17 = *(v4 + 100);
          v18 = *(this + 90);
          v19 = v18 * v14;
          v20 = (v18 * v14) & 0x3F;
          v21 = v20 + v18;
          v22 = (*(this + 86) + 8 * ((v18 * v14) >> 6));
          v23 = *v22;
          if (v21 > 0x40)
          {
            v24 = ((2 * v22[1]) << ~v19) | (v23 >> v19);
          }

          else
          {
            v24 = v23 >> v20;
          }

          v25 = *(*(this + 80) + v15) | ((*(this + 182) & v24) << 8);
          v26 = *(this + 125);
          if (v26)
          {
            if (marisa::grimoire::trie::LoudsTrie::match_(v26, a2, v25))
            {
              return 1;
            }
          }

          else if (marisa::grimoire::trie::Tail::match((this + 744), a2, v25))
          {
            return 1;
          }

          if (*(v4 + 100) != v17)
          {
            return 0;
          }

          v12 = *(v4 + 96);
          v11 = *(this + 2);
        }

        else
        {
          v16 = *(v4 + 100);
          if (*(*(this + 80) + v12) == *(*a2 + v16))
          {
            *(v4 + 100) = v16 + 1;
            return 1;
          }
        }

        *(v4 + 96) = ++v12;
        v27 = *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
        ++v13;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v9 = v8[2];
  if (v9 > 0xFFFFFEFF)
  {
    *(v4 + 100) = v6 + 1;
    goto LABEL_25;
  }

  v28 = *(this + 125);
  if (v28)
  {
    if (marisa::grimoire::trie::LoudsTrie::match_(v28, a2, v9))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v9) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *(v4 + 96) = *(*(this + 128) + 12 * v7 + 4);
  return 1;
}

uint64_t *marisa::grimoire::vector::BitVector::swap(marisa::grimoire::vector::BitVector *this, marisa::grimoire::vector::BitVector *a2)
{
  marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 8, a2 + 8);
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 14, a2 + 14);

  return marisa::grimoire::vector::Vector<unsigned char>::swap(this + 20, a2 + 20);
}

uint64_t *marisa::grimoire::vector::Vector<unsigned char>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

marisa::grimoire::trie::LoudsTrie **marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset(marisa::grimoire::trie::LoudsTrie **a1, marisa::grimoire::trie::LoudsTrie *a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v4);
}

uint64_t marisa::grimoire::vector::BitVector::map(marisa::grimoire::vector::BitVector *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  marisa::grimoire::vector::BitVector::map_(v4, a2);
  marisa::grimoire::vector::BitVector::swap(this, v4);
  if (v9)
  {
    MEMORY[0x29C285700](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x29C285700](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x29C285700](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x29C285700](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned char>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_298263A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::FlatVector::map(marisa::grimoire::vector::FlatVector *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  marisa::grimoire::vector::FlatVector::map_(v9, a2);
  v3 = *this;
  *this = v9[0];
  v9[0] = v3;
  v4 = *(this + 2);
  *(this + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(this + 24);
  *(this + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(this + 40);
  *(this + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(this + 6);
  *(this + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(this + 14);
  *(this + 14) = v11;
  v11 = v6;
  v7 = *(this + 8);
  *(this + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_298263B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_298263C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::trie::LoudsTrie::match_(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2, unint64_t a3)
{
  v6 = *(a2 + 5);
  while (1)
  {
    while (1)
    {
      v7 = *(this + 132) & a3;
      v8 = *(this + 128) + 12 * v7;
      if (a3 == *(v8 + 4))
      {
        break;
      }

      if (((*(*(this + 54) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        v22 = *(v6 + 100);
        if (*(*(this + 80) + a3) != *(*a2 + v22))
        {
          return 0;
        }

        *(v6 + 100) = v22 + 1;
        goto LABEL_28;
      }

      v11 = *(this + 125);
      v12 = *(*(this + 80) + a3);
      v13 = marisa::grimoire::vector::BitVector::rank1((this + 416), a3);
      v14 = *(this + 90);
      v15 = v14 * v13;
      v16 = (v14 * v13) & 0x3F;
      v17 = v16 + v14;
      v18 = (*(this + 86) + 8 * ((v14 * v13) >> 6));
      v19 = *v18;
      if (v11)
      {
        if (v17 > 0x40)
        {
          v20 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
        }

        else
        {
          v20 = v19 >> v16;
        }

        v24 = v12 | ((*(this + 182) & v20) << 8);
        v25 = *(this + 125);
        if (v25)
        {
          if ((marisa::grimoire::trie::LoudsTrie::match_(v25, a2, v24) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v17 > 0x40)
        {
          v23 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
        }

        else
        {
          v23 = v19 >> v16;
        }

        v24 = v12 | ((*(this + 182) & v23) << 8);
      }

      if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v24) & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      if (a3 <= *(this + 133))
      {
        return 1;
      }

      if (*(a2 + 1) <= *(v6 + 100))
      {
        return 0;
      }

      a3 = marisa::grimoire::vector::BitVector::select1(this, a3) + ~a3;
    }

    v9 = *(v8 + 8);
    if (v9 <= 0xFFFFFEFF)
    {
      v21 = *(this + 125);
      if (v21)
      {
        if ((marisa::grimoire::trie::LoudsTrie::match_(v21, a2, v9) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v9) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v10 = *(v6 + 100);
      if (*(*a2 + v10) != v9)
      {
        return 0;
      }

      *(v6 + 100) = v10 + 1;
    }

    a3 = *(*(this + 128) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

    if (*(a2 + 1) <= *(v6 + 100))
    {
      return 0;
    }
  }
}

void marisa::grimoire::trie::Tail::~Tail(marisa::grimoire::trie::Tail *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x29C285700](v2, 0x1000C8077774924);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x29C285700](v4, 0x1000C8077774924);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C285700](v5, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x29C285700](*this, 0x1000C8077774924);
  }
}

uint64_t marisa::grimoire::trie::Config::parse_(marisa::grimoire::trie::Config *this, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000003BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:59: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
  }

  if ((a2 & 0x7F) != 0)
  {
    *this = a2 & 0x7F;
  }

  marisa::grimoire::trie::Config::parse_cache_level(this, a2);
  marisa::grimoire::trie::Config::parse_tail_mode(this, a2);

  return marisa::grimoire::trie::Config::parse_node_order(this, a2);
}

uint64_t marisa::grimoire::trie::Config::parse_cache_level(uint64_t this, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000065;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:101: MARISA_CODE_ERROR: undefined cache level";
  }

LABEL_11:
  *(this + 8) = v3;
  return this;
}

uint64_t marisa::grimoire::trie::Config::parse_tail_mode(uint64_t this, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1EB1848;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000079;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:121: MARISA_CODE_ERROR: undefined tail mode";
    }

    v2 = 0x2000;
  }

  *(this + 12) = v2;
  return this;
}

uint64_t marisa::grimoire::trie::Config::parse_node_order(uint64_t this, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1EB1848;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008DLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:141: MARISA_CODE_ERROR: undefined node order";
    }

    v2 = 0x10000;
  }

  *(this + 16) = v2;
  return this;
}

uint64_t marisa::grimoire::vector::BitVector::map_(marisa::grimoire::vector::BitVector *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  *(this + 6) = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v4 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (*(this + 6) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0xA00000087;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:135: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(this + 7) = v4;
  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map(this + 4, a2);
  marisa::grimoire::vector::Vector<unsigned int>::map(this + 7, a2);

  return marisa::grimoire::vector::Vector<unsigned int>::map(this + 10, a2);
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned long long>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_29826430C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2982643CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<unsigned int>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned int>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_29826448C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  marisa::grimoire::io::Mapper::map<unsigned long long>(this, (a1 + 16), v4 >> 3);
  marisa::grimoire::io::Mapper::seek(this, 0);
  *(a1 + 24) = v5;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::io::Mapper::map<unsigned long long>(marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = marisa::grimoire::io::Mapper::map_data(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::fix(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x10000006BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:107: MARISA_STATE_ERROR: fixed_";
  }

  *(result + 40) = 1;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  marisa::grimoire::io::Mapper::map<marisa::grimoire::vector::RankIndex>(this, (a1 + 16), v5);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v5;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::io::Mapper::map<marisa::grimoire::vector::RankIndex>(marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = marisa::grimoire::io::Mapper::map_data(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned int>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  marisa::grimoire::io::Mapper::map<unsigned int>(this, (a1 + 16), v4 >> 2);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::io::Mapper::map<unsigned int>(marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = marisa::grimoire::io::Mapper::map_data(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *marisa::grimoire::vector::FlatVector::map_(marisa::grimoire::vector::FlatVector *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  v4 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h:134: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  *(this + 6) = v4;
  *(this + 14) = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  result = marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  *(this + 8) = *result;
  return result;
}

marisa::grimoire::trie::LoudsTrie **marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(marisa::grimoire::trie::LoudsTrie **a1)
{
  v2 = *a1;
  if (v2)
  {
    marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v2);
    MEMORY[0x29C285730]();
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t marisa::grimoire::vector::Vector<unsigned char>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  *(a1 + 16) = marisa::grimoire::io::Mapper::map_data(this, v4);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v4;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

double marisa::grimoire::trie::Tail::Tail(marisa::grimoire::trie::Tail *this)
{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  return result;
}

uint64_t *marisa::grimoire::trie::Tail::swap(marisa::grimoire::trie::Tail *this, marisa::grimoire::trie::Tail *a2)
{
  marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);

  return marisa::grimoire::vector::BitVector::swap((this + 48), (a2 + 48));
}

uint64_t marisa::grimoire::trie::Tail::map(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  marisa::grimoire::vector::Vector<char>::map(v8, a2);
  marisa::grimoire::vector::BitVector::map(v9, a2);
  v4 = *this;
  *this = v8[0];
  v8[0] = v4;
  v5 = *(this + 2);
  *(this + 2) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(this + 24);
  *(this + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  marisa::grimoire::vector::BitVector::swap((this + 48), v9);
  if (v14)
  {
    MEMORY[0x29C285700](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x29C285700](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x29C285700](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x29C285700](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C285700](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t marisa::grimoire::trie::Tail::match(marisa::grimoire::trie::Tail *this, marisa::Agent *a2, unint64_t a3)
{
  v3 = *(a2 + 5);
  v4 = *(this + 2);
  if (*(this + 12))
  {
    v5 = *(v3 + 100);
    v6 = *a2;
    v7 = *(a2 + 1);
    do
    {
      if (*(v4 + a3) != *(v6 + v5))
      {
        break;
      }

      *(v3 + 100) = ++v5;
      if ((*(*(this + 8) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        return 1;
      }

      ++a3;
    }

    while (v7 > v5);
  }

  else
  {
    v12 = v4 + a3;
    v8 = v4 + a3 - *(v3 + 100);
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *v12;
    LODWORD(v12) = *(v3 + 100);
    while (v11 == *(v9 + v12))
    {
      v12 = (v12 + 1);
      *(v3 + 100) = v12;
      v11 = *(v8 + v12);
      if (!*(v8 + v12))
      {
        return 1;
      }

      if (v10 <= v12)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t marisa::grimoire::vector::Vector<char>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C285700](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_298264F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C285700](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::BitVector::rank1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 10) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(this + 2) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t marisa::grimoire::vector::BitVector::select0(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 16) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = (a2 - (v3 << 9) + *v11);
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = (v13 + v19 - 448);
      }

      else
      {
        v14 |= 6uLL;
        v13 = (v13 + v17 - 384);
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = (v13 + (v16 & 0x1FF) - 320);
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v13 + (v12 >> 23) - 256);
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = (v13 + v18 - 192);
    }

    else
    {
      v14 |= 2uLL;
      v13 = (v13 + (v12 >> 7) - 128);
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = (v13 + v15 - 64);
    }
  }
}

unint64_t marisa::grimoire::vector::anonymous namespace::select_bit(marisa::grimoire::vector::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * this - 0x101010101010101) >> 7) & 0x101010101010101));
}

unint64_t marisa::grimoire::vector::BitVector::select1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 22) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = (v12 - v25);
    }

    else
    {
      v29 = (v12 - v26);
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = (v12 - v23);
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = (v12 - v30);
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = (v12 - (v11 >> 7));
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = (v12 - v15);
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = (v12 - v18);
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::map(marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1EB1848;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_2A1EB1848;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  marisa::grimoire::io::Mapper::Mapper(v12);
  marisa::grimoire::io::Mapper::open(v12, a2, a3);
  marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  marisa::grimoire::io::Mapper::~Mapper(v12);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_2982655A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::lookup(result, a2);
  }

  return result;
}

void sub_298265754(_Unwind_Exception *a1)
{
  MEMORY[0x29C285730](v2, 0xA1C40BD48D6D6);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void Utils::CFBurstTrieWrapper::~CFBurstTrieWrapper(Utils::CFBurstTrieWrapper *this)
{
  *this = &unk_2A1EB1870;
  if (*(this + 1))
  {
    CFBurstTrieRelease();
  }
}

{
  Utils::CFBurstTrieWrapper::~CFBurstTrieWrapper(this);

  JUMPOUT(0x29C285730);
}

BOOL Utils::CFBurstTrieWrapper::lookup(Utils::CFBurstTrieWrapper *this, const __CFString *a2, CFRange a3, float *a4)
{
  v5 = *(this + 1);
  result = CFBurstTrieContains() != 0;
  *a4 = 0.0;
  return result;
}

void Utils::MarisaTrieWrapper::MarisaTrieWrapper(Utils::MarisaTrieWrapper *this, const __CFString *a2)
{
  v2 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1EB18A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = -1;
  operator new();
}

void sub_298265DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, marisa::Trie **a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!v24)
  {
LABEL_9:
    __cxa_begin_catch(exception_object);
    std::unique_ptr<trie::MarisaTrie<float,char>>::reset[abi:ne200100](a10, 0);
    if (*a11)
    {
      munmap(*a11, *(v25 + 24));
    }

    v27 = *(v25 + 32);
    if (v27)
    {
      close(v27);
    }

    *a11 = 0;
    *(a11 + 8) = 0;
    *(v25 + 32) = -1;
    __cxa_end_catch();
    JUMPOUT(0x298265BECLL);
  }

  __cxa_free_exception(v23);
  goto LABEL_9;
}

void sub_298265F08(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x298265F00);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

marisa::Trie **std::unique_ptr<trie::MarisaTrie<float,char>>::reset[abi:ne200100](marisa::Trie **result, marisa::Trie *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1);
    if (v3)
    {
      *(v2 + 2) = v3;
      operator delete(v3);
    }

    marisa::Trie::~Trie(v2);

    JUMPOUT(0x29C285730);
  }

  return result;
}

void Utils::MarisaTrieWrapper::~MarisaTrieWrapper(Utils::MarisaTrieWrapper *this)
{
  *this = &unk_2A1EB18A0;
  v2 = *(this + 2);
  if (v2)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  std::unique_ptr<trie::MarisaTrie<float,char>>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<trie::MarisaTrie<float,char>>::reset[abi:ne200100](this + 1, 0);
}

{
  Utils::MarisaTrieWrapper::~MarisaTrieWrapper(this);

  JUMPOUT(0x29C285730);
}

uint64_t Utils::MarisaTrieWrapper::lookup(Utils::MarisaTrieWrapper *this, const __CFString *a2, CFRange a3, float *a4)
{
  if (a3.length)
  {
    CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], a2, a3);
    operator new[]();
  }

  return 0;
}

void sub_298266230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C285700](v2, 0x1000C8077774924);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE8E558, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t ThaiTokenizerCreate(uint64_t a1, unsigned int a2)
{
  v4 = MEMORY[0x29C285540](a1, 128, 0x10E00409AE41C53, 0);
  v5 = v4;
  if (v4)
  {
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *(v4 + 112) = 0;
    *(v4 + 120) = a1;
    if (a2 <= 0x7D0)
    {
      v6 = 2000;
    }

    else
    {
      v6 = a2;
    }

    *(v4 + 104) = v6;
    v7 = getenv("THAI_TOK_ROOT");
    v8 = *MEMORY[0x29EDB8ED8];
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "/";
    }

    v10 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v9, 0x8000100u);
    v11 = CFStringCreateWithFormat(v8, 0, @"%@/System/Library/LinguisticData/th/tokenizer.dat", v10);
    if (v11)
    {
      Utils::TrieWrapper::loadTrie(v11, v12);
    }

    CFShow(@"Problem in setting triePath\n");
    ThaiTokenizerDestroy(v5);
    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  return v5;
}

void sub_298266580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t ThaiTokenizerDestroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *a1 = 0;
    (*(*v2 + 8))(v2);
  }

  ReleaseTransitionTable(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    free(v7);
  }

  CFAllocatorDeallocate(*(a1 + 120), a1);
  return 1;
}

void ReleaseTransitionTable(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 96);
    if (v3 < 1)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 64) + 8 * i);
      if (v5)
      {
        free(v5);
        v3 = *(a1 + 96);
      }
    }

    v2 = *(a1 + 64);
    if (v2)
    {
LABEL_8:
      free(v2);
    }

    *(a1 + 64) = 0;
  }
}

CFIndex ThaiTokenizerSetStringWithRange(CFIndex result, CFStringRef str, CFRange range)
{
  v3 = result;
  if (!str || (length = range.length) == 0)
  {
    *(result + 56) = 0;
    return result;
  }

  location = range.location;
  v7 = *(result + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v3[2] = location;
  v8 = *MEMORY[0x29EDB8ED8];
  v93.location = location;
  v93.length = length;
  v9 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], str, v93);
  v3[1] = v9;
  v10 = CFStringGetLength(v9);
  v3[7] = v10;
  valuePtr = 0;
  v11 = v3[3];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v3[4];
  if (v12)
  {
    CFRelease(v12);
  }

  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x29EDB9000]);
  v3[4] = Mutable;
  if (v10 >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = v3[1];
      CharacterAtIndex = CFStringGetCharacterAtIndex(v15, v14);
      v17 = 1;
      if ((CharacterAtIndex - 3662) <= 0xFFF1u && (CharacterAtIndex - 3631) <= 0xFFD1u && (CharacterAtIndex - 3643) <= 0xFFF4u)
      {
        if (CharacterAtIndex <= 0x20 && ((1 << CharacterAtIndex) & 0x100003E00) != 0)
        {
LABEL_16:
          v18 = v14 + 1;
          goto LABEL_28;
        }

        if (CharacterAtIndex == 3631)
        {
          v18 = v14 + 1;
          if (v14 + 2 < v10)
          {
            v89 = CFStringGetCharacterAtIndex(v15, v14 + 1);
            if (CFStringGetCharacterAtIndex(v15, v14 + 2) == 3631 && v89 == 3621)
            {
              v18 = v14 + 3;
            }
          }

          goto LABEL_28;
        }

        if (CharacterAtIndex == 160 || isPunct(CharacterAtIndex))
        {
          goto LABEL_16;
        }

        v17 = 16;
      }

      v18 = v14 + 1;
      if (v14 + 1 < v10)
      {
        while (1)
        {
          v19 = CFStringGetCharacterAtIndex(v15, v18);
          if (v19 != 46 && v17 != getChunkType(v19))
          {
            break;
          }

          if (v10 == ++v18)
          {
            v18 = v10;
            break;
          }
        }
      }

      if (v18 >= v10)
      {
        v18 = v10;
      }

LABEL_28:
      valuePtr = v18;
      v20 = CFStringGetCharacterAtIndex(v3[1], v14);
      if ((v20 - 3662) > 0xFFFFFFF1 || ((v20 - 3631) <= 0xFFFFFFD1 ? (v21 = (v20 - 3643) >= 0xFFFFFFF5) : (v21 = 1), v21))
      {
        v23 = valuePtr;
        v24 = v3[11];
        if (v24)
        {
          CFRelease(v24);
        }

        v94.length = v23 - v14;
        v94.location = v14;
        v25 = CFStringCreateWithSubstring(v8, v3[1], v94);
        v3[11] = v25;
        v26 = CFStringGetLength(v25);
        v3[12] = v26;
        v3[14] = v14;
        v27 = v26 >> 1;
        if (v26 < 100)
        {
          v27 = 50;
        }

        v3[9] = v27;
        v28 = malloc_type_calloc(v26, 8uLL, 0x2004093837F09uLL);
        v3[8] = v28;
        if (v28 && v3[12] > 1)
        {
          v29 = 0;
          v30 = 3585;
          do
          {
            v31 = CFStringGetCharacterAtIndex(v3[11], v29);
            v32 = v31;
            if ((v31 == 46 || v31 == 3654 || (v31 - 3631) > 0xFFD1u || (v31 - 3653) >= 0xFFFBu) && isThaiEndingChar(v30))
            {
              if (v29 + 1 < v3[12])
              {
                v33 = 2;
                do
                {
                  v34 = CFStringGetCharacterAtIndex(v3[11], v33 - 1 + v29);
                  if (isThaiEndingChar(v34))
                  {
                    if ((v33 - 1 + v29) >= v3[12] - 1 || (v35 = CFStringGetCharacterAtIndex(v3[11], v29 + v33), v35 == 46) || v35 == 3654 || (v35 - 3631) > 0xFFFFFFD1 || (v35 - 3653) >= 0xFFFFFFFB)
                    {
                      LODWORD(v92) = 0;
                      if ((v33 - 1) >= v3[12])
                      {
                        break;
                      }

                      if ((*(**v3 + 24))(*v3, v3[11], v29, v33, &v92))
                      {
                        v36 = *(v3[8] + 8 * v29);
                        if (v36)
                        {
                          v37 = *(v36 + 184);
                        }

                        else
                        {
                          v38 = malloc_type_malloc(0xC0uLL, 0x1000040DEF5506FuLL);
                          v37 = 0;
                          *(v3[8] + 8 * v29) = v38;
                          v36 = *(v3[8] + 8 * v29);
                          *(v36 + 160) = 0;
                          *(v36 + 176) = 0;
                          *(v36 + 184) = 0;
                          *(v36 + 168) = -915135488;
                          *(v36 + 172) = 0;
                          ++v3[9];
                        }

                        v39 = v36 + 16 * v37;
                        *(v39 + 8) = v92;
                        *v39 = v29 + v33;
                        *(v36 + 184) = v37 + 1;
                        if (v37 > 8)
                        {
                          break;
                        }
                      }
                    }
                  }

                  if ((v29 + v33) >= v3[12])
                  {
                    break;
                  }

                  v21 = v33++ >= 0x65;
                }

                while (!v21);
              }
            }

            else
            {
              v40 = *(v3[8] + 8 * v29);
              if (v40)
              {
                free(v40);
                *(v3[8] + 8 * v29) = 0;
              }
            }

            ++v29;
            v30 = v32;
          }

          while (v29 < v3[12] - 1);
        }

        v42 = v3[9];
        v41 = v3[10];
        *v41 = malloc_type_malloc(8 * v42, 0x100004000313F17uLL);
        v41[1] = v42;
        v41[2] = 0;
        if (v3[12] >= 1)
        {
          v43 = 0;
          do
          {
            v44 = v3[10];
            v45 = v44[2];
            if (v45 < v44[1])
            {
              v46 = *v44;
              v44[2] = v45 + 1;
              *(v46 + 8 * v45) = v43;
            }

            v47 = v3[8];
            v48 = *(v47 + 8 * v43);
            if (v48)
            {
              v49 = *(v48 + 184);
              v50 = v49 - 1;
              if (v49 <= 1)
              {
                v50 = *(v48 + 176);
              }

              else
              {
                *(v48 + 176) = v50;
              }

              v52 = *(v48 + 16 * v50);
              v54 = v3[12];
              if (v52 == v54)
              {
                *(v48 + 160) = v52;
                *(v48 + 168) = *(v48 + 16 * v50 + 8);
                if (v49 == 1)
                {
                  *(v48 + 172) = 1;
                }

                else
                {
                  *(v48 + 176) = v50 - 1;
                }

                break;
              }
            }

            else
            {
              v51 = v3[12];
              v52 = v43;
              if (v43 < v51)
              {
                v52 = v43;
                while (!*(v47 + 8 * v52))
                {
                  if (v51 == ++v52)
                  {
                    v52 = v3[12];
                    break;
                  }
                }
              }

              *(v3[8] + 8 * v43) = malloc_type_malloc(0xC0uLL, 0x1000040DEF5506FuLL);
              v53 = *(v3[8] + 8 * v43);
              *(v53 + 176) = xmmword_298267960;
              *(v53 + 160) = 0;
              *(v53 + 168) = -915135488;
              *(v53 + 172) = 0;
              *v53 = v52;
              *(*(v3[8] + 8 * v43) + 8) = getUnkProb(v3[1], v3[7], v3[14] + v43, v52 - v43);
              v54 = v3[12];
            }

            v43 = v52;
          }

          while (v52 < v54);
        }

        v55 = v3[10];
        v57 = v55 + 2;
        v56 = v55[2];
        if (v56 >= 1)
        {
          v58 = v3[8];
          do
          {
            v59 = (*v55 + 8 * v56);
            v60 = *(v58 + 8 * *(v59 - 1));
            if (*(v60 + 172))
            {
              *v57 = v56 - 1;
            }

            else
            {
              v61 = *(v60 + 176);
              v62 = *(v60 + 16 * v61);
              v63 = v3[12];
              if (v62 < v63 && !*(v58 + 8 * v62))
              {
                *(v3[8] + 8 * v62) = malloc_type_malloc(0xC0uLL, 0x1000040DEF5506FuLL);
                v66 = v3[8];
                v67 = *(v66 + 8 * v62);
                *(v67 + 176) = xmmword_298267960;
                *(v67 + 160) = 0;
                *(v67 + 168) = -915135488;
                *(v67 + 172) = 0;
                v68 = v3[12];
                if (v68 <= v62 + 1)
                {
                  v69 = v62 + 1;
                }

                else
                {
                  v69 = v3[12];
                }

                v70 = v66 + 8;
                v71 = v62;
                while (1)
                {
                  v72 = v71 + 1;
                  if (v71 + 1 >= v68)
                  {
                    break;
                  }

                  if (*(v70 + 8 * v71++))
                  {
                    goto LABEL_117;
                  }
                }

                v72 = v69;
LABEL_117:
                *v67 = v72;
                UnkProb = getUnkProb(v3[1], v3[7], v3[14] + v62, v72 - v62);
                v58 = v3[8];
                *(*(v58 + 8 * v62) + 8) = UnkProb;
                v55 = v3[10];
                v77 = v55[2];
                if (v77 < v55[1])
                {
                  v78 = *v55;
                  v55[2] = v77 + 1;
                  v78[v77] = v62;
                }

                goto LABEL_92;
              }

              if (v62 == v63)
              {
                v64 = *(v60 + 16 * v61 + 8);
              }

              else
              {
                v65 = *(v58 + 8 * v62);
                if (!*(v65 + 172))
                {
                  if (v56 < v55[1])
                  {
                    *v57 = v56 + 1;
                    *v59 = v62;
                  }

                  v74 = *(v65 + 184);
                  v85 = v74 <= 1;
                  v75 = v74 - 1;
                  if (!v85)
                  {
                    *(v65 + 176) = v75;
                  }

                  goto LABEL_92;
                }

                v64 = *(v60 + 16 * v61 + 8) + *(v65 + 168);
              }

              if (v64 > *(v60 + 168))
              {
                *(v60 + 168) = v64;
                *(v60 + 160) = v62;
              }

              if (v61 < 1)
              {
                *(v60 + 172) = 1;
              }

              else
              {
                *(v60 + 176) = v61 - 1;
              }
            }

LABEL_92:
            v57 = v55 + 2;
            v56 = v55[2];
          }

          while (v56 >= 1);
        }

        if (*v55)
        {
          free(*v55);
        }

        *v57 = 0;
        v79 = CFArrayCreateMutable(v8, 0, MEMORY[0x29EDB9000]);
        v80 = v3[12];
        if (v80 < 1)
        {
LABEL_139:
          v88 = v3[4];
          v95.length = CFArrayGetCount(v79);
          v95.location = 0;
          CFArrayAppendArray(v88, v79, v95);
          CFRelease(v79);
          ReleaseTransitionTable(v3);
          goto LABEL_140;
        }

        v81 = 0;
        v92 = 0;
        while (2)
        {
          v82 = v3[8];
          v83 = *(*(v82 + 8 * v81) + 160);
          if (v83 - v81 == 1)
          {
            v84 = *(*(v82 + 8 * v81) + 160);
            goto LABEL_125;
          }

          v86 = v83 < 1 || v80 <= v83;
          if (!v86 && CFStringGetCharacterAtIndex(v3[11], v83 - 1) == 46)
          {
            v82 = v3[8];
            v84 = *(*(v82 + 8 * v81) + 160);
            v80 = v3[12];
LABEL_125:
            if (v84 >= v80 || ((v83 = *(*(v82 + 8 * v84) + 160), v83 >= 1) ? (v85 = v80 <= v83) : (v85 = 1), v85 || CFStringGetCharacterAtIndex(v3[11], v83 - 1) != 46))
            {
              v83 = v84;
            }
          }

          v92 = v3[14] + v83;
          v87 = CFNumberCreate(v8, kCFNumberCFIndexType, &v92);
          CFArrayAppendValue(v79, v87);
          CFRelease(v87);
          v80 = v3[12];
          v81 = v83;
          if (v83 >= v80)
          {
            goto LABEL_139;
          }

          continue;
        }
      }

      v22 = CFNumberCreate(v8, kCFNumberCFIndexType, &valuePtr);
      CFArrayAppendValue(v3[4], v22);
      CFRelease(v22);
LABEL_140:
      v14 = valuePtr;
      if (valuePtr >= v10)
      {
        Mutable = v3[4];
        break;
      }
    }
  }

  result = CFArrayGetCount(Mutable);
  v3[5] = -1;
  v3[6] = result;
  return result;
}

CFIndex ThaiTokenizerSetString(CFIndex result, CFStringRef theString)
{
  v2 = result;
  if (theString)
  {
    v4.length = CFStringGetLength(theString);
    v4.location = 0;

    return ThaiTokenizerSetStringWithRange(v2, theString, v4);
  }

  else
  {
    *(result + 56) = 0;
  }

  return result;
}

uint64_t ThaiTokenizerAdvanceToNextToken(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    v3 = *(a1 + 48);
    if (v2 < v3)
    {
      *(a1 + 40) = v2 + 1;
      if (v2 + 1 < v3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v2);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
        CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 8), valuePtr);
        return getTokenType(CharacterAtIndex);
      }
    }

    return 0;
  }

  *(a1 + 40) = 0;
  v7 = CFStringGetCharacterAtIndex(*(a1 + 8), 0);

  return getTokenType(v7);
}

uint64_t getTokenType(unsigned int a1)
{
  v2 = isPunct(a1);
  result = 3;
  if (a1 != 3631 && !v2)
  {
    if (a1 > 0x3A)
    {
      goto LABEL_7;
    }

    if (((1 << a1) & 0x100003E00) != 0)
    {
      return 5;
    }

    if (((1 << a1) & 0x400500000000000) == 0)
    {
LABEL_7:
      if (a1 == 160)
      {
        return 5;
      }

      if (getChunkType(a1) == 16)
      {
        return 9;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ThaiTokenizerGoToTokenAtIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = a2 - *(a1 + 16);
  if (v5 < v2 && (v5 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 48) < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      valuePtr = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v6);
        CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
        if (v5 < valuePtr)
        {
          break;
        }

        if (++v6 >= *(a1 + 48))
        {
          return 0;
        }
      }

      *(a1 + 40) = v6;
      v11 = 0;
      if (v6)
      {
        v8 = CFArrayGetValueAtIndex(*(a1 + 32), v6 - 1);
        CFNumberGetValue(v8, kCFNumberCFIndexType, &v11);
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }

      CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 8), v9);
      return getTokenType(CharacterAtIndex);
    }
  }

  return result;
}

uint64_t ThaiTokenizerGetCurrentTokenRange(uint64_t a1)
{
  v7 = 0;
  valuePtr = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    if (v2 >= *(a1 + 48))
    {
      return -1;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v2 - 1);
      CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
      v4 = CFArrayGetValueAtIndex(*(a1 + 32), *(a1 + 40));
      CFNumberGetValue(v4, kCFNumberCFIndexType, &v7);
      return *(a1 + 16) + valuePtr;
    }
  }

  else
  {
    v6 = CFArrayGetValueAtIndex(*(a1 + 32), 0);
    CFNumberGetValue(v6, kCFNumberCFIndexType, &v7);
    return *(a1 + 16);
  }
}

BOOL isPunct(int a1)
{
  if ((a1 - 33) < 0xB)
  {
    return 1;
  }

  result = 1;
  if ((a1 - 45) > 0x33 || ((1 << (a1 - 45)) & 0x8400000084005) == 0)
  {
    return a1 == 123 || a1 == 126;
  }

  return result;
}

uint64_t getChunkType(unsigned int a1)
{
  v1 = 1;
  if ((a1 - 3662) <= 0xFFF1u && (a1 - 3631) <= 0xFFD1u && (a1 - 3643) <= 0xFFF4u)
  {
    if (a1 <= 0x20 && ((1 << a1) & 0x100003E00) != 0 || a1 == 160)
    {
      return 4;
    }

    else if (a1 == 3631)
    {
      return 2;
    }

    else if (isPunct(a1))
    {
      return 8;
    }

    else
    {
      return 16;
    }
  }

  return v1;
}

BOOL isThaiEndingChar(int a1)
{
  if ((a1 - 3597) < 0xF)
  {
    return 1;
  }

  if ((a1 - 3585) < 0xB)
  {
    if (((0x6FFu >> (a1 - 1)) & 1) == 0)
    {
      goto LABEL_8;
    }

    return 1;
  }

  if ((a1 - 3614) < 0xD)
  {
    return 1;
  }

LABEL_8:
  v1 = 1;
  if ((a1 - 3628) > 0x1A || ((1 << (a1 - 44)) & 0x4000013) == 0)
  {
    v4 = (a1 - 3634) < 9 || (a1 - 3653) < 0xA;
    return a1 == 46 || v4;
  }

  return v1;
}

float getUnkProb(const __CFString *a1, uint64_t a2, CFIndex idx, uint64_t a4)
{
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, idx);
  v9 = (CharacterAtIndex - 3585) < 0x2E || (CharacterAtIndex - 3648) < 5;
  if (CharacterAtIndex == 3654)
  {
    v9 = 1;
  }

  v10 = CharacterAtIndex == 46 || v9;
  result = -12.0;
  v12 = -9.0;
  if (a4 != 2)
  {
    v12 = -12.0;
  }

  if (a4 == 1)
  {
    v12 = -2.0;
  }

  if ((v10 & (a4 + idx == a2)) != 0)
  {
    return v12;
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}