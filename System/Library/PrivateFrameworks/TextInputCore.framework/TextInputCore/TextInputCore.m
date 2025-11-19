id TIInputManagerOSLogFacility()
{
  if (TIInputManagerOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIInputManagerOSLogFacility_onceToken, &__block_literal_global_58);
  }

  v1 = TIInputManagerOSLogFacility_logFacility;

  return v1;
}

const void **KB::retain_ptr<__CFDictionary const*>::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *a1;
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *a1 = cf;
  }

  return a1;
}

uint64_t std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(std::vector<std::string> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(this);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](this, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = this->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = this->__end_;
    }

    this->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>((v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t TILexiconIDForLocaleIdentifier(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v16 = v2;
  if (v2)
  {
    memcpy(__dst, a1, v2);
  }

  *(__dst + v3) = 0;
  _TISharedLexiconIDManager();
  explicit = atomic_load_explicit(&_TISharedLexiconIDManager(void)::lexicon_id_manager, memory_order_acquire);
  v5 = v16;
  if (!explicit)
  {
LABEL_24:
    operator new();
  }

  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = __dst[1];
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  v8 = explicit;
  while (1)
  {
    v9 = *(v8 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v8 + 8);
    }

    if (v9 == v6)
    {
      v11 = v10 >= 0 ? v8 : *v8;
      if (!memcmp(v11, v7, v6))
      {
        break;
      }
    }

    v8 = *(v8 + 32);
    if (!v8)
    {
      v12 = (*(explicit + 24) + 1);
      goto LABEL_24;
    }
  }

  v13 = *(v8 + 24);
  if ((v5 & 0x80) != 0)
  {
    operator delete(__dst[0]);
  }

  return v13;
}

void _TISharedLexiconIDManager(void)
{
  {
    _TISharedLexiconIDManager(void)::lexicon_id_manager = 0;
    atomic_store(0, &_TISharedLexiconIDManager(void)::lexicon_id_manager);
    __cxa_atexit(KB::LexiconIDManager::~LexiconIDManager, &_TISharedLexiconIDManager(void)::lexicon_id_manager, &dword_22CA55000);
  }
}

uint64_t KB::StaticDictionary::lexicon_index(KB::StaticDictionary *this, int a2)
{
  if (a2 == -1 && *this != *(this + 1))
  {
    return 0;
  }

  v2 = *(this + 6);
  v3 = *(this + 7) - v2;
  if (!v3)
  {
    return -1;
  }

  result = 0;
  v5 = v3 >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  while (*(v2 + 4 * result) != a2)
  {
    if (v5 == ++result)
    {
      return -1;
    }
  }

  return result;
}

void TIRestoreAdaptationAutocorrectionRejectionV2Trial()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315138;
    v2 = "TIRestoreAdaptationAutocorrectionRejectionV2Trial";
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Trial: removing override of adaptation_autocorrection_rejection_v2", &v1, 0xCu);
  }

  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) = 0;
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_favonius_language_weight(uint64_t result, uint64_t a2)
{
  *(result + 332) = a2;
  *(result + 336) = BYTE4(a2);
  return result;
}

void TIInputManager::clear_key_areas(TIInputManager *this)
{
  v2 = *(this + 45);
  *(this + 45) = 0;
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v2);
  }

  if (*(this + 39))
  {
    v3 = *(this + 37);
    if (v3)
    {
      v4 = *(this + 38);
      v5 = 8 * v3;
      do
      {
        if (*v4)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(*v4);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
      *(this + 37) = 0;
    }

    v6 = *(this + 38);
    *(this + 38) = 0;
    *(this + 39) = 0;

    free(v6);
  }
}

uint64_t WTF::RefCounted<TI::Favonius::Key>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    if (*(result + 40) >= 0xFu)
    {
      v3 = *(result + 48);
      if (v3)
      {
        MEMORY[0x2318BE250](v3, 0x1000C8077774924);
      }
    }

    v4 = *(v1 + 16);
    if (v4 && *(v1 + 14) == 1)
    {
      free(v4);
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

KB::String *KB::String::String(KB::String *this, const char *__s)
{
  *this = 0x100000;
  *(this + 2) = 0;
  *(this + 6) = 1;
  *(this + 1) = 0;
  if (__s)
  {
    v4 = strlen(__s);
    v5 = v4;
    *(this + 2) = 0;
    *(this + 3) = 0;
    if (v4)
    {
      KB::String::ensure_capacity(this, v4);
      if (*(this + 1))
      {
        v6 = *(this + 1);
      }

      else
      {
        v6 = this + 16;
      }

      memcpy(v6, __s, v5);
      *this = v5;
    }
  }

  else
  {
    *(this + 2) = 0;
    *(this + 3) = 0;
  }

  return this;
}

unsigned __int16 *KB::String::compute_length(unsigned __int16 *this)
{
  this[2] = 0;
  v1 = *this;
  if (*this)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = this + 8;
    }

    do
    {
      v5 = v2 + 1;
      if (*(v4 + v2) - 192 <= 0x3D)
      {
        v6 = kb_utf8_countTrailBytes[*(v4 + v2)];
        if (v6 + v5 > v1)
        {
          v6 = v1 - v5;
        }

        if (v6)
        {
          v7 = v2 + (v6 - 1) + 2;
          while ((*(v4 + v5) & 0xC0) == 0x80)
          {
            ++v5;
            if (!--v6)
            {
              v5 = v7;
              break;
            }
          }
        }
      }

      this[2] = ++v3;
      v2 = v5;
    }

    while (v1 > v5);
  }

  return this;
}

uint64_t TIInputManager::register_key_area(uint64_t this, _LXLexicon *a2, CGRect a3)
{
  if (*a2)
  {
    v4 = this;
    v5 = *(this + 360);
    *(v4 + 360) = 0;
    if (v5)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v5);
    }

    KB::CollatorWrapper::sortkey_for_string((*(*(v4 + 264) + 8) + 72), a2, &v6);
    operator new();
  }

  return this;
}

void KB::String::ensure_capacity(KB::String *this, __int16 a2)
{
  v2 = a2 + 1;
  v3 = *(this + 1);
  if (v3 <= (a2 + 1))
  {
    if (!*(this + 6))
    {
      KB::String::internalize_buffer(this);
      v3 = *(this + 1);
    }

    if (v2 >= 0x7FF8u)
    {
      v5 = 32760;
    }

    else
    {
      v5 = v2;
    }

    v6 = v3;
    if (v3 < v5)
    {
      v6 = v3;
      do
      {
        v6 = 2 * v6 + 16;
      }

      while ((v6 & 0xFFFEu) < v5);
      *(this + 1) = v6;
    }

    if (v6 >= 0x11u)
    {
      if (*(this + 6) == 1 && (v7 = *(this + 1)) != 0)
      {
        v8 = v3;
        v9 = malloc_type_realloc(v7, v6 + 1, 0x100004077774924uLL);
        *(this + 1) = v9;
        v10 = *(this + 1) - v8 + 1;
        v11 = &v9[v8];

        bzero(v11, v10);
      }

      else
      {
        v12 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
        *(this + 1) = v12;
        bzero(v12, *(this + 1) + 1);
        if (*this)
        {
          strlcpy(*(this + 1), this + 16, *(this + 1) + 1);
          *(this + 2) = 0;
          *(this + 3) = 0;
        }
      }
    }
  }
}

uint64_t *KB::String::iterator::initialize(uint64_t *this)
{
  v1 = *(this + 3);
  v2 = *(this + 2);
  if (v2 >= v1)
  {
    *(this + 2) = v1 + 1;
    *(this + 4) = 0;
  }

  else
  {
    v3 = *this;
    v4 = v2 + 1;
    *(this + 2) = v2 + 1;
    v5 = *(v3 + v2);
    *(this + 4) = v5;
    if ((v5 + 64) > 0x34)
    {
      return this;
    }

    v6 = kb_utf8_countTrailBytes[v5];
    v7 = v5 & ~(-1 << (6 - v6));
    *(this + 4) = v7;
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          return this;
        }

        v8 = v2 + 2;
        *(this + 2) = v8;
        v9 = *(v3 + v4) & 0x3F | (v7 << 6);
        *(this + 4) = v9;
        LODWORD(v4) = v8;
        v7 = v9;
      }

      *(this + 2) = v4 + 1;
      v10 = *(v3 + v4) & 0x3F | (v7 << 6);
      *(this + 4) = v10;
      LODWORD(v4) = v4 + 1;
      v7 = v10;
    }

    *(this + 2) = v4 + 1;
    *(this + 4) = *(v3 + v4) & 0x3F | (v7 << 6);
  }

  return this;
}

void KB::CollatorWrapper::_sortkey_for_string(_LXLexicon *a1@<X1>, _WORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  KB::cf_string_impl<KB::String>(&cf, a1);
  v7 = 0;
  v8 = 32;
  v9 = 0;
  if (LXLexiconGetSortkeyBytes())
  {
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
  }

  free(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void KB::CollatorWrapper::sortkey_for_string(KB::CollatorWrapper *this@<X0>, _LXLexicon *a2@<X1>, _WORD *a3@<X8>)
{
  if (*this)
  {

    KB::CollatorWrapper::_sortkey_for_string(a2, a3);
  }

  else
  {
    v5 = _icu_root_collator();

    _sortkey_for_string_with_collator(a3, a2, v5);
  }
}

void KB::cf_string_impl<KB::String>(CFStringRef *a1, unsigned __int16 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a2 + 8;
  if (!v5)
  {
    v5 = (a2 + 8);
  }

  *a2;
  if (*a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = "";
  }

  v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v4, 0x8000100u, 1u);
  if (!v8)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a2 + 1);
        if (!v11)
        {
          v11 = v6;
        }

        if (*a2)
        {
          v12 = v11;
        }

        else
        {
          v12 = "";
        }

        v13 = 136315394;
        v14 = "cf_string_impl";
        v15 = 2080;
        v16 = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%s warning: bytes do not represent UTF8 string: %s", &v13, 0x16u);
      }
    }
  }

  *a1 = v8;
  v10 = *MEMORY[0x277D85DE8];
}

TI::Favonius::Key *TI::Favonius::Key::Key(TI::Favonius::Key *this, const KB::String *a2, const KB::ByteString *a3)
{
  *this = 1;
  v6 = (this + 8);
  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = a2 + 16;
  }

  if (*a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  if (!strcmp(v8, "delete"))
  {
    *(this + 6) = 0;
    *(this + 14) = 1;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v9 = 8;
LABEL_18:
    *(this + 24) = v9;
    *(this + 2) = 1048577;
    goto LABEL_19;
  }

  if (!strcmp(v8, "shift"))
  {
    *(this + 6) = 0;
    *(this + 14) = 1;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v9 = 14;
    goto LABEL_18;
  }

  if (!strcmp(v8, "more"))
  {
    *(this + 6) = 0;
    *(this + 14) = 1;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v9 = 16;
    goto LABEL_18;
  }

  if (!strcmp(v8, "international"))
  {
    *(this + 6) = 0;
    *(this + 14) = 1;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v9 = 15;
    goto LABEL_18;
  }

  if (!strcmp(v8, "dismiss"))
  {
    *(this + 6) = 0;
    *(this + 14) = 1;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v9 = 4;
    goto LABEL_18;
  }

  if (!strcmp(v8, "undo"))
  {
    *(this + 6) = 0;
    *(this + 14) = 1;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 12) = -28958;
    *(this + 2) = 1048579;
    *(this + 26) = -116;
  }

  else
  {
    KB::String::String(v6, a2);
  }

LABEL_19:
  v10 = *a3;
  if (v10 >= 0xF)
  {
    *(this + 20) = v10;
    operator new[]();
  }

  *(this + 40) = *a3;
  v11 = *v6;
  if (*v6)
  {
    v12 = *(this + 2);
    if (!v12)
    {
      v12 = this + 24;
    }

    v15 = v12;
    v16 = 0;
    v17 = v11;
    v18 = 0;
    KB::String::iterator::initialize(&v15);
    v13 = v18;
  }

  else
  {
    v13 = 0;
  }

  *(this + 14) = v13;
  TI::Favonius::KeyClassification::KeyClassification((this + 60), v13);
  return this;
}

TI::Favonius::LayoutKey *TI::Favonius::LayoutKey::LayoutKey(TI::Favonius::LayoutKey *this, const KB::String *a2, const KB::ByteString *a3, CGRect a4, __int16 a5)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = TI::Favonius::Key::Key(this, a2, a3);
  *(v11 + 31) = a5;
  *(v11 + 8) = x;
  *(v11 + 9) = y;
  *(v11 + 10) = width;
  *(v11 + 11) = height;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  *(this + 12) = MidX;
  *(this + 13) = MidY;
  return this;
}

KB::String *KB::String::String(KB::String *this, const KB::String *a2)
{
  *this = 0x100000;
  *(this + 2) = 0;
  v4 = *(a2 + 6);
  *(this + 6) = v4;
  *(this + 1) = 0;
  if (v4 == 1)
  {
    v6 = *(a2 + 1);
    v7 = *a2;
    *(this + 2) = 0;
    *(this + 3) = 0;
    if (v7)
    {
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = a2 + 16;
      }

      KB::String::ensure_capacity(this, v7);
      if (*(this + 1))
      {
        v9 = *(this + 1);
      }

      else
      {
        v9 = this + 16;
      }

      memcpy(v9, v8, v7);
      *this = v7;
    }
  }

  else if (!v4)
  {
    *(this + 1) = *(a2 + 1);
    *this = *a2;
    v5 = *(a2 + 2);
    if (!v5)
    {
      KB::String::compute_length(a2);
      v5 = *(a2 + 2);
    }

    *(this + 2) = v5;
    *(this + 17) = 0;
  }

  return this;
}

TI::Favonius::KeyClassification *TI::Favonius::KeyClassification::KeyClassification(TI::Favonius::KeyClassification *this, UChar32 c)
{
  v4 = 0;
  *this = 0;
  if (c <= 729)
  {
    if ((c - 168) <= 0xC && ((1 << (c + 88)) & 0x1081) != 0)
    {
      goto LABEL_16;
    }

    if (!c)
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (c != 699)
    {
      goto LABEL_14;
    }

LABEL_11:
    v5 = 2;
LABEL_23:
    *this = v5;
    return this;
  }

  if (c <= 900)
  {
    if (c == 730 || c == 732)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (c == 901)
  {
    goto LABEL_16;
  }

  if (c == 8204 || c == 3654)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (u_charType(c) != 4)
  {
    if (((1 << u_charType(c)) & 0x16E) != 0)
    {
      v4 = *this;
      *this |= 2u;
      if (c > 2491)
      {
        if (c > 2747)
        {
          if (c <= 3020)
          {
            if (c != 2748 && c != 2765 && c != 2946)
            {
              return this;
            }
          }

          else if (c > 3148)
          {
            if (c != 8204 && c != 3149)
            {
              return this;
            }
          }

          else if (c != 3021 && c != 3075)
          {
            return this;
          }
        }

        else
        {
          if (c > 2636)
          {
            if ((c - 2637) > 0x36)
            {
              return this;
            }

            v8 = 1 << (c - 77);
            v9 = 0x70001800000011;
LABEL_40:
            if ((v8 & v9) == 0)
            {
              return this;
            }

            goto LABEL_63;
          }

          if (((c - 2561) > 0x3B || ((1 << (c - 1)) & 0x800000000000007) == 0) && c != 2492 && c != 2509)
          {
            return this;
          }
        }
      }

      else if (((c - 1600) > 0x30 || ((1 << (c - 64)) & 0x1000000FFF801) == 0) && ((c - 2305) > 0x3B || ((1 << (c - 1)) & 0x800000000000007) == 0))
      {
        if ((c - 2381) > 0x36)
        {
          return this;
        }

        v8 = 1 << (c - 77);
        v9 = 0x50000000000001;
        goto LABEL_40;
      }

LABEL_63:
      v6 = 4098;
      goto LABEL_22;
    }

    if (u_isspace(c))
    {
      v5 = *this | 0x20;
      goto LABEL_23;
    }

    if (u_isdigit(c))
    {
      v5 = *this | 4;
      goto LABEL_23;
    }

    if (u_ispunct(c))
    {
      *this |= 0x10u;
      if (!is_nonstop(c))
      {
        return this;
      }

      v5 = *this | 8;
      goto LABEL_23;
    }

    if (c > 14)
    {
      if ((c - 15) >= 2)
      {
        if (c == 9100)
        {
          v5 = *this | 0x800;
          goto LABEL_23;
        }

        goto LABEL_73;
      }
    }

    else if (c != 4)
    {
      if (c == 8)
      {
        v5 = *this | 0x80;
        goto LABEL_23;
      }

      if (c == 14)
      {
        v5 = *this | 0x100;
        goto LABEL_23;
      }

LABEL_73:
      v5 = *this | 0x8000;
      goto LABEL_23;
    }

    v5 = *this | 0x200;
    goto LABEL_23;
  }

  v4 = *this;
LABEL_16:
  *this = v4 | 0x40;
  if ((c - 710) <= 0x16 && ((1 << (c + 58)) & 0x400033) != 0 || (c - 168) <= 0xC && ((1 << (c + 88)) & 0x1081) != 0 || c == 901)
  {
    v6 = 1088;
LABEL_22:
    v5 = v4 | v6;
    goto LABEL_23;
  }

  return this;
}

void WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(void *a1, unint64_t a2)
{
  if (a1[2] < a2)
  {
    v6 = (a1 + 1);
    v5 = a1[1];
    v7 = *a1;
    v8 = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
    *v6 = v8;
    a1[2] = a2;
    if (v8)
    {
      memcpy(v8, v5, 8 * v7);
      v9 = *v6;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == v5)
    {
      *v6 = 0;
      v6[1] = 0;
    }

    free(v5);
  }
}

void TIInputManager::clear_primary2secondary_character_map(TIInputManager *this)
{
  if (*(this + 25))
  {
    std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__deallocate_node(*(this + 24));
    *(this + 24) = 0;
    v2 = *(this + 23);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 22) + 8 * i) = 0;
      }
    }

    *(this + 25) = 0;
  }
}

void KB::utf8_string(KB *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  v6.location = [(KB *)v4 length];
  KB::utf8_substring(v4, 0, v6, a2);
}

void KB::utf8_substring(KB *this@<X0>, NSString *a2@<X1>, _NSRange a3@<0:X2, 8:X3>, uint64_t a4@<X8>)
{
  location = a3.location;
  v31 = *MEMORY[0x277D85DE8];
  v7 = this;
  if (!v7)
  {
    *a4 = 0x100000;
    *(a4 + 4) = 0;
    *(a4 + 6) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    goto LABEL_33;
  }

  if (((location >> 2) & 0xFFFFFFFFFFFFFFFLL) < 0xFFF)
  {
    v8 = 4 * location + 1;
  }

  else
  {
    v8 = 65520;
  }

  v28 = 0;
  v29 = v8;
  v30 = v8 > 0x400;
  if (v8 <= 0x400)
  {
    *v24 = 0;
    v23 = xmmword_22CC889D0;
    v10 = v27;
LABEL_10:
    v9 = v8 - 1;
    goto LABEL_11;
  }

  v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v28 = v10;
  *v24 = 0;
  v23 = xmmword_22CC889D0;
  if (v10)
  {
    goto LABEL_10;
  }

  v9 = -1;
LABEL_11:
  if (([(KB *)v7 getBytes:v10 maxLength:v9 usedLength:v24 encoding:4 options:0 range:a2 remainingRange:location, &v23]& 1) != 0)
  {
    if (v30)
    {
      v11 = v28;
    }

    else
    {
      v11 = v27;
    }

    v11[*v24] = 0;
    if (*(&v23 + 1))
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v12 = TIOSLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = MEMORY[0x277CCACA8];
        v32.location = a2;
        v32.length = location;
        v17 = NSStringFromRange(v32);
        v18 = NSStringFromRange(v23);
        v19 = [v16 stringWithFormat:@"%s warning: attempt to convert range [%@] is incomplete, with remaining range [%@]", "utf8_substring", v17, v18];
        *buf = 138412290;
        v26 = v19;
        _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if (v30)
    {
      v13 = v28;
    }

    else
    {
      v13 = v27;
    }

    KB::String::String(a4, v13, v24[0]);
  }

  else
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = MEMORY[0x277CCACA8];
        v33.location = a2;
        v33.length = location;
        v21 = NSStringFromRange(v33);
        v22 = [v20 stringWithFormat:@"%s warning: cannot get UTF8 substring from [%@] in range [%@]", "utf8_substring", v7, v21];
        *buf = 138412290;
        v26 = v22;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    *a4 = 0x100000;
    *(a4 + 4) = 0;
    *(a4 + 6) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  free(v28);
LABEL_33:

  v15 = *MEMORY[0x277D85DE8];
}

KB::String *KB::String::String(KB::String *this, const char *a2, unsigned int a3)
{
  *this = 0x100000;
  *(this + 2) = 0;
  *(this + 6) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  if (a2 && a3)
  {
    KB::String::ensure_capacity(this, a3);
    if (*(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = this + 16;
    }

    memcpy(v6, a2, a3);
    *this = a3;
  }

  return this;
}

KB::String *KB::String::operator=(KB::String *this, KB::String *a2)
{
  if (this != a2)
  {
    if (*(a2 + 6) == 1)
    {
      KB::String::clear(this);
      if (*a2)
      {
        KB::String::ensure_capacity(this, *a2);
        if (*(this + 1))
        {
          v6 = *(this + 1);
        }

        else
        {
          v6 = this + 16;
        }

        if (*(a2 + 1))
        {
          v7 = *(a2 + 1);
        }

        else
        {
          v7 = a2 + 16;
        }

        strlcpy(v6, v7, *a2 + 1);
        *this = *a2;
        v8 = *(a2 + 2);
        if (!v8)
        {
          KB::String::compute_length(a2);
          v8 = *(a2 + 2);
        }

        *(this + 2) = v8;
      }
    }

    else if (!*(a2 + 6))
    {
      v4 = *(this + 1);
      if (v4 && *(this + 6) == 1)
      {
        free(v4);
      }

      *(this + 1) = 16;
      *(this + 16) = 0;
      *(this + 1) = *(a2 + 1);
      *this = *a2;
      v5 = *(a2 + 2);
      if (!v5)
      {
        KB::String::compute_length(a2);
        v5 = *(a2 + 2);
      }

      *(this + 2) = v5;
      *(this + 6) = 0;
    }
  }

  return this;
}

KB::String *TIInputManager::set_layout_name(TIInputManager *this, const KB::String *a2)
{
  result = KB::String::operator=((this + 328), a2);
  v5 = *(this + 45);
  if (v5)
  {

    return KB::String::operator=((v5 + 208), a2);
  }

  return result;
}

void KB::String::clear(KB::String *this)
{
  v2 = *(this + 1);
  if (v2 && *(this + 6) == 1)
  {
    free(v2);
  }

  *(this + 1) = 0;
  *(this + 6) = 1;
  *(this + 16) = 0;
  *this = 0x100000;
  *(this + 2) = 0;
}

atomic_uint *TIInputManager::commit_key_layout(TIInputManager *this)
{
  result = *(this + 28);
  if (result)
  {
    result = (*(*result + 168))(&v10);
    v3 = v10;
    if (v10)
    {
      v4 = atomic_load(v10 + 2);
      if (v4 == 1)
      {
        result = (*(*v10 + 40))(v10);
      }

      else
      {
        atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
      }

      v5 = *(this + 73);
      if (v5)
      {
        v6 = *TIInputManager::favonius_layout(this);
        v8 = v6;
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        (*(*v5 + 16))(&v9, v5, &v8);
        (*(*v3 + 24))(v3, &v9);
        if (v9)
        {
          v7 = atomic_load(v9 + 2);
          if (v7 == 1)
          {
            (*(*v9 + 8))();
          }

          else
          {
            atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
          }
        }

        result = v8;
        if (v8)
        {
          return WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v8);
        }
      }
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::typing_model@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

uint64_t TIInputManager::clear_input(TIInputManager *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0x100000;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  KB::String::operator=((this + 32), &v8);
  if (v11)
  {
    v2 = v10 == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    free(v11);
  }

  v3 = *(this + 1);
  for (i = *(this + 2); i != v3; i -= 40)
  {
    v5 = *(i - 32);
    if (v5)
    {
      if (*(i - 34) == 1)
      {
        free(v5);
      }
    }
  }

  *(this + 2) = v3;
  *(this + 24) = 0;
  *(this + 144) = 0;
  *(this + 27) = 0;
  KB::String::clear((this + 64));
  *(this + 728) = 0;
  result = (*(**(this + 28) + 136))(*(this + 28));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::input_disruption_from_UI(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  *(this + 209) = 1;
  if (*(this + 9))
  {
    operator new();
  }

  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 104))(v2);
  }

  v3 = *(this + 90);
  if (v3)
  {
    TI::TIInputRecognizer::reset_session(v3);
  }
}

id KB::ns_string(KB *this, const KB::String *a2)
{
  KB::cf_string_impl<KB::String>(&v4, this);
  v2 = v4;

  return v2;
}

unsigned __int16 *TIInputManager::input_substring@<X0>(unsigned __int16 *result@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0x100000;
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a3 + a2 > a2)
  {
    v5 = a3;
    v6 = result;
    v7 = 40 * a2;
    do
    {
      result = KB::String::append(a4, (*v6 + v7));
      v7 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *KB::compose_diacritics@<X0>(KB *this@<X0>, const KB::String *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x100000;
  *(a3 + 4) = 0;
  *(a3 + 6) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(this + 1))
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = this + 16;
  }

  v17 = v6;
  v7 = *this;
  v18 = 0;
  v19 = v7;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  v13 = v6;
  v14 = v7;
  v15 = v7;
  v16 = 0;
  result = KB::String::iterator::initialize(&v13);
  for (i = v14; v18 != i; result = KB::String::iterator::operator++(&v17))
  {
    v10 = v20;
    v11 = combine_with_accent();
    if (v11)
    {
      v12 = v11;
      if (!a2 || MEMORY[0x2318BF290](a2, v11))
      {
        KB::String::pop_last(a3);
        v10 = v12;
      }
    }

    KB::String::append(a3, v10);
  }

  return result;
}

uint64_t *KB::decompose_diacritics@<X0>(unsigned __int16 *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0x100000;
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (*(a1 + 1))
  {
    v7 = *(a1 + 1);
  }

  else
  {
    v7 = (a1 + 8);
  }

  v21 = v7;
  v8 = *a1;
  v22 = 0;
  v23 = v8;
  v24 = 0;
  KB::String::iterator::initialize(&v21);
  v17 = v7;
  v18 = v8;
  v19 = v8;
  v20 = 0;
  result = KB::String::iterator::initialize(&v17);
  v10 = v22;
  v11 = v18;
  while (v10 != v11)
  {
    v12 = v24;
    if (!a3 || MEMORY[0x2318BF290](a3, v24))
    {
      v13 = *a2;
      v14 = a2[1];
      while (v13 != v14)
      {
        v15 = *v13;
        v16 = strip_accent();
        if (v16)
        {
          KB::String::append(a4, v16);
          v12 = v15;
          break;
        }

        ++v13;
      }
    }

    KB::String::append(a4, v12);
    result = KB::String::iterator::operator++(&v21);
    v10 = v22;
  }

  return result;
}

uint64_t KB::LanguageModelContext::LanguageModelContext(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 64));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 72));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  for (*(a1 + 96) = 0; a3; --a3)
  {
    v8 = *a2++;
    KB::LanguageModelContext::append(a1, v8, a4, 0);
    a4 += 24;
  }

  return a1;
}

void *std::vector<TITokenID>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TITokenID>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
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

void KB::LanguageModelContext::append(KB::LanguageModelContext *this, unint64_t a2, uint64_t a3, int a4)
{
  v41 = a2;
  if (HIDWORD(a2) == 1)
  {
    v8 = *(this + 6) + 1;
    *(this + 6) = v8;
    if (v8 >= 4)
    {
      KB::LanguageModelContext::pop_first_sentence(this);
      v9 = (*(this + 3) - *(this + 2)) >> 3;
      *(this + 5) = v9;
      *(this + 7) = v9;
      language_modeling::v1::LinguisticContext::clear((this + 72));
    }
  }

  else if (*(this + 3) == *(this + 2))
  {
    ++*(this + 6);
  }

  KB::LanguageModelContext::linguistic_token(a3, &v41, &__p);
  if (language_modeling::v1::LinguisticContext::try_push_back())
  {
    v11 = *(this + 3);
    v10 = *(this + 4);
    if (v11 >= v10)
    {
      v13 = *(this + 2);
      v14 = (v11 - v13) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v15 = v10 - v13;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v17);
      }

      v18 = (8 * v14);
      *v18 = a2;
      v12 = 8 * v14 + 8;
      v19 = *(this + 2);
      v20 = *(this + 3) - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(this + 2);
      *(this + 2) = v21;
      *(this + 3) = v12;
      *(this + 4) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = a2;
      v12 = (v11 + 1);
    }

    *(this + 3) = v12;
    v24 = *(this + 11);
    v23 = *(this + 12);
    if (v24 >= v23)
    {
      v26 = *(this + 10);
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 3);
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v26) >> 3);
      v29 = 2 * v28;
      if (2 * v28 <= v27 + 1)
      {
        v29 = v27 + 1;
      }

      if (v28 >= 0x555555555555555)
      {
        v30 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v30 = v29;
      }

      v42.__end_cap_.__value_ = (this + 80);
      if (v30)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v30);
      }

      v32 = (24 * v27);
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v32, *a3, *(a3 + 8));
      }

      else
      {
        v33 = *a3;
        v32->__r_.__value_.__r.__words[2] = *(a3 + 16);
        *&v32->__r_.__value_.__l.__data_ = v33;
      }

      v31 = v32 + 1;
      v34 = *(this + 10);
      v35 = *(this + 11) - v34;
      v36 = v32 - v35;
      memcpy(v32 - v35, v34, v35);
      v37 = *(this + 10);
      *(this + 10) = v36;
      *(this + 11) = v32 + 1;
      v38 = *(this + 12);
      *(this + 12) = 0;
      v42.__end_ = v37;
      v42.__end_cap_.__value_ = v38;
      v42.__first_ = v37;
      v42.__begin_ = v37;
      std::__split_buffer<std::string>::~__split_buffer(&v42);
    }

    else
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(*(this + 11), *a3, *(a3 + 8));
      }

      else
      {
        v25 = *a3;
        *(v24 + 16) = *(a3 + 16);
        *v24 = v25;
      }

      v31 = (v24 + 24);
    }

    *(this + 11) = v31;
    if (a4)
    {
      *(this + 7) = (*(this + 3) - *(this + 2)) >> 3;
      language_modeling::v1::LinguisticContext::clear((this + 72));
    }

    else
    {
      language_modeling::v1::LinguisticContext::try_push_back();
    }
  }

  if (v40 < 0)
  {
    operator delete(__p);
  }
}

void KB::LanguageModelContext::linguistic_token(uint64_t a1@<X0>, TITokenID a2@<X1>, uint64_t a3@<X8>)
{
  v5 = **&a2;
  v6 = KB::LanguageModelContext::linguistic_token_type(**&a2, a2);
  if (v6 != 3)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    goto LABEL_28;
  }

  if (SHIDWORD(v5) <= 62)
  {
    if (SHIDWORD(v5) > 5)
    {
      if (HIDWORD(v5) == 6)
      {
        v7 = MEMORY[0x277D22E50];
        goto LABEL_26;
      }

      if (HIDWORD(v5) == 7)
      {
        v7 = MEMORY[0x277D22D98];
        goto LABEL_26;
      }
    }

    else
    {
      if (HIDWORD(v5) == 3)
      {
        v7 = MEMORY[0x277D22DA0];
        goto LABEL_26;
      }

      if (HIDWORD(v5) == 5)
      {
        v7 = MEMORY[0x277D22D90];
        goto LABEL_26;
      }
    }

LABEL_33:
    v8 = "";
    goto LABEL_27;
  }

  if (SHIDWORD(v5) <= 129)
  {
    if (HIDWORD(v5) == 63)
    {
      v7 = MEMORY[0x277D22DA8];
      goto LABEL_26;
    }

    if (HIDWORD(v5) == 64)
    {
      v7 = MEMORY[0x277D22DB0];
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (HIDWORD(v5) == 130)
  {
    v7 = MEMORY[0x277D22DF8];
    goto LABEL_26;
  }

  if (HIDWORD(v5) == 131)
  {
    v7 = MEMORY[0x277D22DC8];
    goto LABEL_26;
  }

  if (HIDWORD(v5) != 499)
  {
    goto LABEL_33;
  }

  v7 = MEMORY[0x277D22E70];
LABEL_26:
  v8 = *v7;
LABEL_27:
  std::string::basic_string[abi:nn200100]<0>(&__p, v8);
LABEL_28:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a3 + 24) = v6;
    if (v9 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __p;
    *(a3 + 24) = v6;
  }
}

unint64_t KB::LanguageModelContext::linguistic_token_type(unint64_t this, TITokenID a2)
{
  result = HIDWORD(this);
  v3 = result - 1;
  if ((result - 1) <= 0x3F)
  {
    if (((1 << v3) & 0xC000000000000074) != 0)
    {
      return 3;
    }

    if (((1 << v3) & 3) != 0)
    {
      return result;
    }
  }

  if ((result - 130) < 2 || result == 499)
  {
    return 3;
  }

  return 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<TITokenID>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

KB::LanguageModelContext *KB::LanguageModelContext::LanguageModelContext(KB::LanguageModelContext *this, const KB::LanguageModelContext *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<TITokenID>::vector[abi:nn200100](this + 2, a2 + 2);
  v5 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v5;
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 64), (a2 + 64));
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 72), (a2 + 72));
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(this + 80, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  return this;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }

  return this;
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t KB::LanguageModelContext::operator=(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (a1 == a2)
  {
    v15 = *(a2 + 5);
    *(a1 + 56) = a2[7];
    *(a1 + 40) = v15;
    language_modeling::v1::LinguisticContext::operator=();
    language_modeling::v1::LinguisticContext::operator=();
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = a2[2];
    v9 = a2[3];
    v10 = v9 - v8;
    v11 = *(a1 + 32);
    if (v11 - v7 < (v9 - v8))
    {
      v12 = v10 >> 3;
      if (v7)
      {
        *(a1 + 24) = v7;
        operator delete(v7);
        v11 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
      }

      if (!(v12 >> 61))
      {
        v13 = v11 >> 2;
        if (v11 >> 2 <= v12)
        {
          v13 = v10 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        std::vector<TITokenID>::__vallocate[abi:nn200100](a1 + 16, v14);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v16 = *(a1 + 24);
    v17 = v16 - v7;
    if (v16 - v7 >= v10)
    {
      if (v9 != v8)
      {
        memmove(*(a1 + 16), a2[2], v9 - v8);
      }

      v19 = &v7[v10];
    }

    else
    {
      v18 = &v8[v17];
      if (v16 != v7)
      {
        memmove(*(a1 + 16), a2[2], v17);
        v16 = *(a1 + 24);
      }

      if (v9 != v18)
      {
        memmove(v16, v18, v9 - v18);
      }

      v19 = &v16[v9 - v18];
    }

    *(a1 + 24) = v19;
    v20 = *(a2 + 5);
    *(a1 + 56) = a2[7];
    *(a1 + 40) = v20;
    language_modeling::v1::LinguisticContext::operator=();
    language_modeling::v1::LinguisticContext::operator=();
    std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>((a1 + 80), a2[10], a2[11], 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 3));
  }

  return a1;
}

void *KB::DictionaryContainer::load_dynamic_dict(void *this, uint64_t a2)
{
  v2 = this + 5;
  if (this[5] != this[6])
  {
    v3 = this;
    this = this[3];
    if (this)
    {
      if (((*(*this + 32))(this) & 1) == 0)
      {
        (*(*v3[3] + 40))(v3[3], v2, a2);
        KB::DynamicDictionary::load_address_book(v3[3]);
        KB::DynamicDictionary::load_app_names(v3[3]);
        v5 = +[TITransientLexiconManager sharedInstance];
        [v5 loadLexicons];
      }

      v6 = v3[3];

      return KB::DynamicDictionary::load_user_dictionary(v6);
    }
  }

  return this;
}

void *KB::DynamicDictionary::load_user_dictionary(void *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!this[3])
  {
    v1 = this;
    v6 = 0x100000;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if ((*(*this + 32))(this))
    {
      v2 = (*(*v1 + 48))(v1, 0);
      KB::String::operator=(&v6, v2);
    }

    v3 = TIUserDictionaryOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Creating UserDictionaryLoader", "create_and_load"];
      buf = 138412290;
      *buf_4 = v4;
      _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
    }

    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

BOOL KB::DynamicDictionaryContainer::get_valid(KB::DynamicDictionaryContainer *this)
{
  v2 = *(this + 14);
  v1 = *(this + 15);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 8;
  do
  {
    v4 = *(v3 - 8);
    result = v4 != 0;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == v1;
    }

    v3 += 8;
  }

  while (!v6);
  return result;
}

id TIUserDictionaryOSLogFacility()
{
  if (TIUserDictionaryOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIUserDictionaryOSLogFacility_onceToken, &__block_literal_global_64_24132);
  }

  v1 = TIUserDictionaryOSLogFacility_logFacility;

  return v1;
}

id **std::unique_ptr<KB::WeakHolder>::reset[abi:nn200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    objc_destroyWeak(v2);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

id TITypologyDiagnosticExtensionOSLogFacility()
{
  if (TITypologyDiagnosticExtensionOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TITypologyDiagnosticExtensionOSLogFacility_onceToken, &__block_literal_global_79_24149);
  }

  v1 = TITypologyDiagnosticExtensionOSLogFacility_logFacility;

  return v1;
}

id _deepCopyOfStringDictionary(void *a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 alloc];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = [v3 initWithDictionary:v4 copyItems:1];

  return v5;
}

void ___ZN2KB20UserDictionaryLoader15create_and_loadERKNS_6StringE_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIUserDictionaryOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Queuing UserDictionary trie load/reload...", "create_and_load_block_invoke"];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (KB::UserDictionaryLoader::dispatch_queue(void)::once_token != -1)
  {
    dispatch_once(&KB::UserDictionaryLoader::dispatch_queue(void)::once_token, &__block_literal_global_20066);
  }

  v6 = KB::UserDictionaryLoader::dispatch_queue(void)::queue;
  KB::String::String(v10, (a1 + 40));
  v9 = *(a1 + 32);
  v7 = v3;
  TIDispatchAsync();

  if (v11 && v10[6] == 1)
  {
    free(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_mltt_bundle_url(uint64_t result, const std::string *a2)
{
  v2 = a2;
  v3 = result;
  v18 = *MEMORY[0x277D85DE8];
  v4 = (result + 736);
  v5 = *(result + 760);
  v6 = a2[1].__r_.__value_.__s.__data_[0];
  if (v5 != v6 || v5 == 0)
  {
    if (v5 == v6)
    {
      goto LABEL_35;
    }

    goto LABEL_20;
  }

  v8 = *(result + 759);
  if (v8 >= 0)
  {
    v9 = *(result + 759);
  }

  else
  {
    v9 = *(result + 744);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v11 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v9 != size)
  {
    goto LABEL_20;
  }

  if (v8 >= 0)
  {
    v12 = (result + 736);
  }

  else
  {
    v12 = v4->__r_.__value_.__r.__words[0];
  }

  v13 = a2->__r_.__value_.__r.__words[0];
  if (v11 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v12, a2, v9);
  if (result)
  {
LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "set_mltt_bundle_url";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Resetting ml tap typing recognizer", &v16, 0xCu);
      v5 = *(v3 + 760);
      v6 = v2[1].__r_.__value_.__s.__data_[0];
    }

    if (v5 == v6)
    {
      if (v5)
      {
        std::string::operator=(v4, v2);
      }
    }

    else if (v5)
    {
      if (*(v3 + 759) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
      }

      *(v3 + 760) = 0;
    }

    else
    {
      if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v4, v2->__r_.__value_.__l.__data_, v2->__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = *&v2->__r_.__value_.__l.__data_;
        v4->__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
        *&v4->__r_.__value_.__l.__data_ = v14;
      }

      *(v3 + 760) = 1;
    }

    result = *(v3 + 720);
    *(v3 + 720) = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_35:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN2KB20UserDictionaryLoader15create_and_loadERKNS_6StringE_block_invoke_10()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = TIUserDictionaryOSLogFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading UserDictionary trie...", "create_and_load_block_invoke"];
    buf = 138412290;
    *buf_4 = v1;
    _os_log_impl(&dword_22CA55000, v0, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
  }

  operator new();
}

uint64_t getExcessMemoryInBytes()
{
  v11 = *MEMORY[0x277D85DE8];
  getpid();
  v0 = memorystatus_control();
  if (v0)
  {
    v1 = v0;
    v2 = TIKeyboardActivityOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = *__error();
      v5 = __error();
      v6 = [v3 stringWithFormat:@"%s memorystatus_control returned error: %d, errno: %d, error-string: %s", "getExcessMemoryInBytes", v1, v4, strerror(*v5)];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id TIKeyboardActivityOSLogFacility()
{
  if (TIKeyboardActivityOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIKeyboardActivityOSLogFacility_onceToken, &__block_literal_global_61_24127);
  }

  v1 = TIKeyboardActivityOSLogFacility_logFacility;

  return v1;
}

void KB::LanguageModelStr::set_current_recipient_names(uint64_t a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 184);
  if (!v2)
  {
    goto LABEL_36;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String*,KB::String*>(&v22, *a2, a2[1], (a2[1] - *a2) >> 5);
  v3 = (v2 + 328);
  if ((*(v2 + 352) & 1) == 0)
  {
    v6 = v22;
    v7 = v23;
    goto LABEL_11;
  }

  v5 = *(v2 + 328);
  v4 = *(v2 + 336);
  v6 = v22;
  v7 = v23;
  if (v4 - v5 != v23 - v22)
  {
LABEL_11:
    v9 = *(v2 + 360);
    v30 = 0;
    v10 = 0uLL;
    v29 = 0u;
    if (v7 == v6)
    {
      v19 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = objc_opt_new();
        if (*(v6 + v11))
        {
          if (*(v6 + v11 + 8))
          {
            v14 = *(v6 + v11 + 8);
          }

          else
          {
            v14 = v6 + v11 + 16;
          }
        }

        else
        {
          v14 = "";
        }

        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
        v16 = [v13 personNameComponentsFromString:v15];
        v17 = [v16 givenName];

        if ([v17 length])
        {
          *&v26 = 0;
          *(&v26 + 1) = &v26;
          v27 = 0x2020000000;
          v28 = 1;
          v18 = [v17 length];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = ___Z15validFirstNamesRKNSt3__16vectorIN2KB6StringENS_9allocatorIS2_EEEEPK4USet_block_invoke;
          v25[3] = &unk_2787318F8;
          v25[4] = &v26;
          v25[5] = v9;
          [v17 _enumerateLongCharactersInRange:0 usingBlock:{v18, v25}];
          if (*(*(&v26 + 1) + 24) == 1)
          {
            KB::utf8_string(v17, &v31);
            std::vector<KB::String>::push_back[abi:nn200100](&v29, &v31);
            if (v32)
            {
              if (BYTE6(v31) == 1)
              {
                free(v32);
              }
            }
          }

          _Block_object_dispose(&v26, 8);
        }

        ++v12;
        v6 = v22;
        v7 = v23;
        v11 += 32;
      }

      while (v12 < (v23 - v22) >> 5);
      v10 = v29;
      v19 = v30;
      v3 = (v2 + 328);
    }

    v21 = v10;
    v26 = v10;
    v27 = v19;
    v30 = 0;
    v29 = 0uLL;
    v28 = 1;
    v31 = &v29;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v31);
    if (*(v2 + 392))
    {
      std::vector<KB::String>::__vdeallocate((v2 + 368));
      *(v2 + 368) = v21;
      *(v2 + 384) = v19;
      v27 = 0;
      v26 = 0uLL;
    }

    else
    {
      *(v2 + 368) = v21;
      *(v2 + 384) = v19;
      v27 = 0;
      v26 = 0uLL;
      *(v2 + 392) = 1;
    }

    v25[0] = &v26;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v25);
    goto LABEL_31;
  }

  if (v5 != v4)
  {
    v8 = v22;
    while (v5 == v8 || KB::String::equal(v5, v8, 1))
    {
      v5 = (v5 + 32);
      v8 = (v8 + 32);
      if (v5 == v4)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_11;
  }

LABEL_31:
  if (*(v2 + 352) == 1)
  {
    if (v3 != &v22)
    {
      std::vector<KB::String>::__assign_with_size[abi:nn200100]<KB::String*,KB::String*>(v3, v6, v7, (v7 - v6) >> 5);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String*,KB::String*>(v3, v6, v7, (v7 - v6) >> 5);
    *(v2 + 352) = 1;
  }

  v25[0] = &v22;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v25);
LABEL_36:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String*,KB::String*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<KB::String>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

unsigned int *KB::LanguageModelContainer::set_dictionaries(unsigned int *result, unsigned int **a2)
{
  v2 = *(result + 3);
  for (i = *(result + 4); v2 != i; v2 += 7)
  {
    v5 = *v2;
    v6 = *a2;
    v7 = v6;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    (*(*v5 + 248))(v5, &v7);
    result = v7;
    if (v7)
    {
      result = WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
    }
  }

  return result;
}

unsigned int *KB::LanguageModelStr::set_dictionaries(unsigned int *result, atomic_uint **a2)
{
  v2 = *(result + 23);
  if (v2)
  {
    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add(v3, 1u);
      atomic_fetch_add(v3, 1u);
    }

    result = *(v2 + 400);
    *(v2 + 400) = v3;
    if (result)
    {
      result = WTF::RefCounted<KB::DictionaryContainer>::deref(result);
    }

    if (v3)
    {

      return WTF::RefCounted<KB::DictionaryContainer>::deref(v3);
    }
  }

  return result;
}

unsigned int *WTF::RefCounted<KB::DictionaryContainer>::deref(unsigned int *result)
{
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    KB::DictionaryContainer::~DictionaryContainer(result);

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t KB::LanguageModelContainer::set_inline_completion_analytics_metadata(uint64_t this, const TIInlineCompletionAnalyticsMetadata *a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 256))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

void TIInlineCompletionGeneratorImpl::setInlineCompletionPersonalization(CFMutableDictionaryRef *this, const KB::String *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  KB::String::String(v7, a2);
  v3 = isInlineCompletionDefaultAllowlistedApp(v7);
  if (v8)
  {
    v4 = v7[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v8);
  }

  v5 = MEMORY[0x277CBED10];
  if (v3)
  {
    v5 = MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(this[6], *MEMORY[0x277D22E88], *v5);
  v6 = *MEMORY[0x277D85DE8];
}

KB::String *std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::__construct[abi:nn200100]<TIInlineCompletionAnalyticsMetadata const&>(_BYTE *a1, _BYTE *a2)
{
  v4 = KB::String::String(a1, a2);
  KB::String::String((v4 + 32), (a2 + 32));
  KB::String::String((a1 + 64), (a2 + 64));
  KB::String::String((a1 + 96), (a2 + 96));
  KB::String::String((a1 + 128), (a2 + 128));
  KB::String::String((a1 + 160), (a2 + 160));
  a1[192] = a2[192];
  KB::String::String((a1 + 200), (a2 + 200));
  KB::String::String((a1 + 232), (a2 + 232));
  KB::String::String((a1 + 264), (a2 + 264));
  result = KB::String::String((a1 + 296), (a2 + 296));
  a1[328] = 1;
  return result;
}

KB::String *__copy_helper_block_a8_32c127_ZTSKZN33TIInlineCompletionEventDispatcher19did_update_metadataERKNSt3__18optionalI35TIInlineCompletionAnalyticsMetadataEEE3__0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  result = (a1 + 6);
  *(result + 328) = 0;
  if (*(a2 + 376) == 1)
  {
    return std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::__construct[abi:nn200100]<TIInlineCompletionAnalyticsMetadata const&>(result, (a2 + 48));
  }

  return result;
}

uint64_t KB::LanguageModelContainer::updateAdditionalLexicons(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 7;
    this = (*(*v3 + 576))(v3);
  }

  return this;
}

void KB::LanguageModelStr::updateAdditionalLexicons(const _LXLexicon **this)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((*(*this + 2))(this))
  {
    *v3 = TITransientLexiconManagerGetActiveSupplementalLexiconWords();
    KB::LanguageModelStr::checkAndUpdateLexicon(this, this + 29, v3, *MEMORY[0x277D22DF0]);
    *v3 = TITransientLexiconManagerGetActiveSupplementalLexiconPhrases();
    KB::LanguageModelStr::checkAndUpdateLexicon(this, this + 30, v3, *MEMORY[0x277D22E38]);
    *v3 = KB::LanguageModel::get_word_lexicon(this);
    KB::LanguageModelStr::checkAndUpdateLexicon(this, this + 31, v3, *MEMORY[0x277D22DD8]);
    *v3 = KB::LanguageModel::get_phrase_lexicon(this);
    KB::LanguageModelStr::checkAndUpdateLexicon(this, this + 32, v3, *MEMORY[0x277D22E18]);
    *v3 = KB::LanguageModel::get_contacts_lexicon(this);
    KB::LanguageModelStr::checkAndUpdateLexicon(this, this + 33, v3, *MEMORY[0x277D22DE0]);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 136315138;
    *&v3[4] = "updateAdditionalLexicons";
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  LM model is not valid yet", v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t TITransientLexiconManagerGetActiveSupplementalLexiconWords()
{
  v0 = +[TITransientLexiconManager sharedInstance];
  v1 = [v0 isSupplementalLexiconSearchEnabled];

  if (!v1)
  {
    return 0;
  }

  v2 = +[TITransientLexiconManager sharedInstance];
  v3 = [v2 supplementalLexicons];
  v4 = [v3 activeWordLexicon];

  return v4;
}

void ___ZN33TIInlineCompletionEventDispatcher19did_update_metadataERKNSt3__18optionalI35TIInlineCompletionAnalyticsMetadataEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(v5 + 472) == *(a1 + 376))
        {
          if (*(v5 + 472))
          {
            KB::String::operator=((v5 + 144), (a1 + 48));
            KB::String::operator=((v5 + 176), (a1 + 80));
            KB::String::operator=((v5 + 208), (a1 + 112));
            KB::String::operator=((v5 + 240), (a1 + 144));
            KB::String::operator=((v5 + 272), (a1 + 176));
            KB::String::operator=((v5 + 304), (a1 + 208));
            *(v5 + 336) = *(a1 + 240);
            KB::String::operator=((v5 + 344), (a1 + 248));
            KB::String::operator=((v5 + 376), (a1 + 280));
            KB::String::operator=((v5 + 408), (a1 + 312));
            KB::String::operator=((v5 + 440), (a1 + 344));
          }
        }

        else if (*(v5 + 472))
        {
          v6 = *(v5 + 448);
          if (v6 && *(v5 + 446) == 1)
          {
            free(v6);
          }

          v7 = *(v5 + 416);
          if (v7 && *(v5 + 414) == 1)
          {
            free(v7);
          }

          v8 = *(v5 + 384);
          if (v8 && *(v5 + 382) == 1)
          {
            free(v8);
          }

          v9 = *(v5 + 352);
          if (v9 && *(v5 + 350) == 1)
          {
            free(v9);
          }

          v10 = *(v5 + 312);
          if (v10 && *(v5 + 310) == 1)
          {
            free(v10);
          }

          v11 = *(v5 + 280);
          if (v11 && *(v5 + 278) == 1)
          {
            free(v11);
          }

          v12 = *(v5 + 248);
          if (v12 && *(v5 + 246) == 1)
          {
            free(v12);
          }

          v13 = *(v5 + 216);
          if (v13 && *(v5 + 214) == 1)
          {
            free(v13);
          }

          v14 = *(v5 + 184);
          if (v14 && *(v5 + 182) == 1)
          {
            free(v14);
          }

          v15 = *(v5 + 152);
          if (v15 && *(v5 + 150) == 1)
          {
            free(v15);
          }

          *(v5 + 472) = 0;
        }

        else
        {
          std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::__construct[abi:nn200100]<TIInlineCompletionAnalyticsMetadata const&>((v5 + 144), (a1 + 48));
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void KB::LanguageModelStr::checkAndUpdateLexicon(KB::LanguageModelStr *this, const _LXLexicon **a2, const _LXLexicon **a3, char *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a2 != *a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315394;
      *&__p[4] = "checkAndUpdateLexicon";
      v14 = 2080;
      v15 = a4;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Removing lexicon for %s in Language Model", __p, 0x16u);
    }

    v8 = *(this + 21);
    std::string::basic_string[abi:nn200100]<0>(__p, a4);
    language_modeling::v1::LanguageModel::removeLexicon();
    if (v16 < 0)
    {
      operator delete(*__p);
    }

    if (*a3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "checkAndUpdateLexicon";
        v14 = 2080;
        v15 = a4;
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Setting lexicon for %s in Language Model", __p, 0x16u);
        v9 = *a3;
      }

      v10 = *(this + 21);
      std::string::basic_string[abi:nn200100]<0>(__p, a4);
      language_modeling::v1::LanguageModel::addLexicon();
      if (v16 < 0)
      {
        operator delete(*__p);
      }

      v11 = *a3;
    }

    else
    {
      v11 = 0;
    }

    *a2 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t TITransientLexiconManagerGetActiveSupplementalLexiconPhrases()
{
  v0 = +[TITransientLexiconManager sharedInstance];
  v1 = [v0 isSupplementalLexiconSearchEnabled];

  if (!v1)
  {
    return 0;
  }

  v2 = +[TITransientLexiconManager sharedInstance];
  v3 = [v2 supplementalLexicons];
  v4 = [v3 activePhraseLexicon];

  return v4;
}

uint64_t KB::LanguageModel::get_word_lexicon(KB::LanguageModel *this)
{
  v2 = +[TITransientLexiconManager sharedInstance];
  v3 = (*(*this + 40))(this);
  v4 = [v2 namedEntityLexiconForLocale:TILocaleIdentifierForLexiconID(v3)];

  return v4;
}

uint64_t KB::LanguageModelStr::lexicon_id(KB::LanguageModelStr *this)
{
  (*(*this + 48))(&v4);
  if (v5 != v4)
  {
    v1 = *v4;
LABEL_4:
    v5 = v4;
    operator delete(v4);
    return v1;
  }

  v1 = 0;
  v2 = 0;
  if (v5)
  {
    goto LABEL_4;
  }

  return v2;
}

__n128 KB::LanguageModelStr::lexicon_id_vector@<Q0>(language_modeling::v1::LanguageModel **this@<X0>, __n128 *a2@<X8>)
{
  if ((*(*this + 2))(this))
  {
    LanguageLocales = language_modeling::v1::LanguageModel::getLanguageLocales(this[21]);
    v5 = 0;
    v17 = 0u;
    while (CFArrayGetCount(LanguageLocales) > v5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(LanguageLocales, v5);
      v7 = MEMORY[0x2318BC170](ValueAtIndex);
      if (v7)
      {
        KB::std_string(v7, __p);
        if (v19 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        v9 = TILexiconIDForLocaleIdentifier(v8);
        v11 = (v17.n128_u64[1] - v17.n128_u64[0]) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (-v17.n128_u64[0] >> 1 > v12)
        {
          v12 = -v17.n128_u64[0] >> 1;
        }

        if (-v17.n128_u64[0] >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v13);
        }

        v14 = (4 * v11);
        *v14 = v9;
        v15 = v14 + 1;
        memcpy(0, v17.n128_u64[0], v17.n128_u64[1] - v17.n128_u64[0]);
        v10.n128_u64[0] = 0;
        if (v17.n128_u64[0])
        {
          operator delete(v17.n128_u64[0]);
          v10.n128_u64[0] = 0;
        }

        if (v19 < 0)
        {
          operator delete(__p[0]);
          v10.n128_u64[0] = 0;
        }

        v10.n128_u64[1] = v15;
      }

      else
      {
        v10 = v17;
      }

      v17 = v10;
      ++v5;
    }

    result = v17;
    *a2 = v17;
    a2[1].n128_u64[0] = 0;
  }

  else
  {

    std::vector<unsigned int>::vector[abi:nn200100](a2, this + 13);
  }

  return result;
}

const __CFString *KB::std_string@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return this;
}

void __destroy_helper_block_a8_32c127_ZTSKZN33TIInlineCompletionEventDispatcher19did_update_metadataERKNSt3__18optionalI35TIInlineCompletionAnalyticsMetadataEEE3__0(uint64_t a1)
{
  std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

unint64_t TILocaleIdentifierForLexiconID(int a1)
{
  _TISharedLexiconIDManager();
  result = atomic_load_explicit(&_TISharedLexiconIDManager(void)::lexicon_id_manager, memory_order_acquire);
  if (result)
  {
    while (*(result + 24) != a1)
    {
      result = *(result + 32);
      if (!result)
      {
        return result;
      }
    }

    if (*(result + 23) < 0)
    {
      return *result;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = a1[1];
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v6 <= v5)
    {
      v10 = v5 % v6;
    }
  }

  else
  {
    v10 = (v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (v12 + 2 == a2 || KB::String::equal((v12 + 2), a2, 1))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= v6)
          {
            v13 %= v6;
          }
        }

        else
        {
          v13 &= v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t KB::String::hash(KB::String *this, const char *a2)
{
  v2 = -1640531527;
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = this;
    do
    {
      v5 = v2 + *v4;
      v6 = (v5 << 16) ^ (*(v4 + 1) << 11);
      v4 = (v4 + 2);
      v2 = (v6 ^ v5) + ((v6 ^ v5) >> 11);
      --v3;
    }

    while (v3);
    this = (this + 2 * (a2 >> 1));
  }

  if (a2)
  {
    v2 = ((v2 + *this) ^ ((v2 + *this) << 11)) + (((v2 + *this) ^ ((v2 + *this) << 11)) >> 17);
  }

  v7 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v8 = (v7 ^ (4 * v7)) + ((v7 ^ (4 * v7)) >> 15);
  return v8 ^ (v8 << 10);
}

uint64_t KB::LanguageModel::get_phrase_lexicon(KB::LanguageModel *this)
{
  v2 = +[TITransientLexiconManager sharedInstance];
  v3 = (*(*this + 40))(this);
  v4 = [v2 namedEntityPhraseLexiconForLocale:TILocaleIdentifierForLexiconID(v3)];

  return v4;
}

uint64_t KB::LanguageModel::get_contacts_lexicon(KB::LanguageModel *this)
{
  v2 = +[TITransientLexiconManager sharedInstance];
  v3 = (*(*this + 40))(this);
  v4 = [v2 addressBookLexiconForLocale:TILocaleIdentifierForLexiconID(v3)];

  return v4;
}

uint64_t AddressBookTrieLoaderImpl::handle@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void KB::LanguageModelStr::set_inline_completion_analytics_metadata(KB::LanguageModelStr *this, const TIInlineCompletionAnalyticsMetadata *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(this + 23);
  if (!v2)
  {
    goto LABEL_38;
  }

  KB::String::String(v8, a2);
  KB::String::String(v10, &a2->var1);
  KB::String::String(v12, &a2->var2);
  KB::String::String(v14, &a2->var3);
  KB::String::String(v16, &a2->var4);
  KB::String::String(v18, &a2->var5);
  var6 = a2->var6;
  KB::String::String(v21, &a2->var7);
  KB::String::String(v23, &a2->var8);
  KB::String::String(v25, &a2->var9);
  KB::String::String(v27, &a2->var10);
  v4 = (v2 + 408);
  v5 = v8;
  if (*(v2 + 736) != 1)
  {
    goto LABEL_5;
  }

  KB::String::operator=(v4, v8);
  KB::String::operator=((v2 + 440), v10);
  KB::String::operator=((v2 + 472), v12);
  KB::String::operator=((v2 + 504), v14);
  KB::String::operator=((v2 + 536), v16);
  KB::String::operator=((v2 + 568), v18);
  *(v2 + 600) = var6;
  KB::String::operator=((v2 + 608), v21);
  KB::String::operator=((v2 + 640), v23);
  KB::String::operator=((v2 + 672), v25);
  KB::String::operator=((v2 + 704), v27);
  if ((*(v2 + 736) & 1) == 0)
  {
    v4 = std::__throw_bad_optional_access[abi:nn200100]();
LABEL_5:
    KB::String::String(v4, v5);
    KB::String::String((v2 + 440), v10);
    KB::String::String((v2 + 472), v12);
    KB::String::String((v2 + 504), v14);
    KB::String::String((v2 + 536), v16);
    KB::String::String((v2 + 568), v18);
    *(v2 + 600) = var6;
    KB::String::String((v2 + 608), v21);
    KB::String::String((v2 + 640), v23);
    KB::String::String((v2 + 672), v25);
    KB::String::String((v2 + 704), v27);
    *(v2 + 736) = 1;
  }

  TIInlineCompletionGeneratorImpl::setInlineCompletionPersonalization(v2, (v2 + 608));
  v6 = *(v2 + 744);
  if (v6)
  {
    TIInlineCompletionEventDispatcher::did_update_metadata(*v6, *(v6 + 8), (v2 + 408));
  }

  if (v28 && v27[6] == 1)
  {
    free(v28);
  }

  if (v26 && v25[6] == 1)
  {
    free(v26);
  }

  if (v24 && v23[6] == 1)
  {
    free(v24);
  }

  if (v22 && v21[6] == 1)
  {
    free(v22);
  }

  if (v19 && v18[6] == 1)
  {
    free(v19);
  }

  if (v17 && v16[6] == 1)
  {
    free(v17);
  }

  if (v15 && v14[6] == 1)
  {
    free(v15);
  }

  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  if (v11 && v10[6] == 1)
  {
    free(v11);
  }

  if (v9 && v8[6] == 1)
  {
    free(v9);
  }

LABEL_38:
  v7 = *MEMORY[0x277D85DE8];
}

BOOL isInlineCompletionDefaultAllowlistedApp(KB::String *a1)
{
  {
    KB::String::String(&isInlineCompletionDefaultAllowlistedApp(KB::String)::mobileSMS, "com.apple.MobileSMS");
    __cxa_atexit(KB::String::~String, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobileSMS, &dword_22CA55000);
  }

  {
    KB::String::String(&isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilemail, "com.apple.mobilemail");
    __cxa_atexit(KB::String::~String, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilemail, &dword_22CA55000);
  }

  {
    KB::String::String(&isInlineCompletionDefaultAllowlistedApp(KB::String)::reminders, "com.apple.reminders");
    __cxa_atexit(KB::String::~String, &isInlineCompletionDefaultAllowlistedApp(KB::String)::reminders, &dword_22CA55000);
  }

  {
    KB::String::String(&isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilenotes, "com.apple.mobilenotes");
    __cxa_atexit(KB::String::~String, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilenotes, &dword_22CA55000);
  }

  {
    KB::String::String(&isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilecal, "com.apple.mobilecal");
    __cxa_atexit(KB::String::~String, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilecal, &dword_22CA55000);
  }

  {
    KB::String::String(&isInlineCompletionDefaultAllowlistedApp(KB::String)::typist, "com.apple.Typist");
    __cxa_atexit(KB::String::~String, &isInlineCompletionDefaultAllowlistedApp(KB::String)::typist, &dword_22CA55000);
  }

  if (KB::String::equal(a1, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobileSMS, 1) || KB::String::equal(a1, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilemail, 1) || KB::String::equal(a1, &isInlineCompletionDefaultAllowlistedApp(KB::String)::reminders, 1) || KB::String::equal(a1, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilenotes, 1) || KB::String::equal(a1, &isInlineCompletionDefaultAllowlistedApp(KB::String)::mobilecal, 1))
  {
    return 1;
  }

  return KB::String::equal(a1, &isInlineCompletionDefaultAllowlistedApp(KB::String)::typist, 1);
}

BOOL KB::String::equal(KB::String *this, const KB::String *a2, int a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (*(this + 6) | *(a2 + 6) || *(this + 1) != *(a2 + 1))
    {
      if (*this != *a2)
      {
        v7 = 0;
        goto LABEL_40;
      }

      if (*this)
      {
        if (*(this + 1))
        {
          v5 = *(this + 1);
        }

        else
        {
          v5 = this + 16;
        }

        if (*(a2 + 1))
        {
          v6 = *(a2 + 1);
        }

        else
        {
          v6 = a2 + 16;
        }

        v7 = strcmp(v5, v6) == 0;
        goto LABEL_40;
      }
    }

LABEL_38:
    v7 = 1;
    goto LABEL_40;
  }

  if (*this == *a2)
  {
    if (!*this)
    {
      goto LABEL_38;
    }

    v8 = *(this + 1) ? *(this + 1) : this + 16;
    v9 = *(a2 + 1) ? *(a2 + 1) : a2 + 16;
    if (!strcasecmp(v8, v9))
    {
      goto LABEL_38;
    }
  }

  KB::lower_string(this, 0, v22);
  KB::lower_string(a2, 0, v18);
  v10 = v24;
  v11 = v25;
  if (v24)
  {
    v11 = v24;
  }

  if (v22[0])
  {
    v12 = v11;
  }

  else
  {
    v12 = "";
  }

  v13 = v20;
  v14 = &v21;
  if (v20)
  {
    v14 = v20;
  }

  if (v18[0])
  {
    v15 = v14;
  }

  else
  {
    v15 = "";
  }

  v7 = strcmp(v12, v15) == 0;
  if (v13 && v19 == 1)
  {
    free(v13);
    v10 = v24;
  }

  if (v10 && v23 == 1)
  {
    free(v10);
  }

LABEL_40:
  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void TIInlineCompletionEventDispatcher::did_update_metadata(uint64_t a1, std::__shared_weak_count *this, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v9, a1, this);
  v5 = v9;
  v4 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v6 = analytics_queue();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3321888768;
  v15 = ___ZN33TIInlineCompletionEventDispatcher19did_update_metadataERKNSt3__18optionalI35TIInlineCompletionAnalyticsMetadataEE_block_invoke;
  v16 = &__block_descriptor_384_a8_32c127_ZTSKZN33TIInlineCompletionEventDispatcher19did_update_metadataERKNSt3__18optionalI35TIInlineCompletionAnalyticsMetadataEEE3__0_e5_v8__0l;
  v9 = v5;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11[0] = 0;
  v12 = 0;
  v7 = v4;
  if (a3[328] == 1)
  {
    std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::__construct[abi:nn200100]<TIInlineCompletionAnalyticsMetadata const&>(v11, a3);
    v5 = v9;
    v7 = v10;
  }

  v17 = v5;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v19[0] = 0;
  v19[328] = 0;
  if (v12 == 1)
  {
    std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::__construct[abi:nn200100]<TIInlineCompletionAnalyticsMetadata const&>(v19, v11);
  }

  TIDispatchAsync();
  std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(v11);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(v19);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

id analytics_queue(void)
{
  if (analytics_queue(void)::onceToken != -1)
  {
    dispatch_once(&analytics_queue(void)::onceToken, &__block_literal_global_2477);
  }

  v1 = analytics_queue(void)::queue;

  return v1;
}

uint64_t std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    v2 = *(a1 + 304);
    if (v2 && *(a1 + 302) == 1)
    {
      free(v2);
    }

    v3 = *(a1 + 272);
    if (v3 && *(a1 + 270) == 1)
    {
      free(v3);
    }

    v4 = *(a1 + 240);
    if (v4 && *(a1 + 238) == 1)
    {
      free(v4);
    }

    v5 = *(a1 + 208);
    if (v5 && *(a1 + 206) == 1)
    {
      free(v5);
    }

    v6 = *(a1 + 168);
    if (v6 && *(a1 + 166) == 1)
    {
      free(v6);
    }

    v7 = *(a1 + 136);
    if (v7 && *(a1 + 134) == 1)
    {
      free(v7);
    }

    v8 = *(a1 + 104);
    if (v8 && *(a1 + 102) == 1)
    {
      free(v8);
    }

    v9 = *(a1 + 72);
    if (v9 && *(a1 + 70) == 1)
    {
      free(v9);
    }

    v10 = *(a1 + 40);
    if (v10 && *(a1 + 38) == 1)
    {
      free(v10);
    }

    v11 = *(a1 + 8);
    if (v11 && *(a1 + 6) == 1)
    {
      free(v11);
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

BOOL is_nonstop(UChar32 a1)
{
  v2 = u_charType(a1);
  result = 1;
  if (((1 << v2) & 0x4000FFE) == 0 && ((a1 - 38) > 0x3A || ((1 << (a1 - 38)) & 0x400000000000083) == 0))
  {
    return (a1 - 1523) < 2 || a1 == 8217;
  }

  return result;
}

void *std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (this)
  {
    v4 = std::__shared_weak_count::lock(this);
    a1[1] = v4;
    if (v4)
    {
      return a1;
    }
  }

  else
  {
    a1[1] = 0;
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
  return _icu_root_collator();
}

uint64_t _icu_root_collator(void)
{
  {
    __cxa_atexit(std::shared_ptr<UCollator>::~shared_ptr[abi:nn200100], &_icu_root_collator(void)::root_collator, &dword_22CA55000);
  }

  if (_icu_root_collator(void)::once != -1)
  {
    dispatch_once(&_icu_root_collator(void)::once, &__block_literal_global_24242);
  }

  return _icu_root_collator(void)::root_collator;
}

void KB::LanguageModelContainer::set_current_recipient_names(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 7;
    memset(v6, 0, sizeof(v6));
    std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String*,KB::String*>(v6, *a2, a2[1], (a2[1] - *a2) >> 5);
    (*(*v5 + 240))(v5, v6);
    v7 = v6;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v7);
  }
}

void std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6 && *(v4 - 26) == 1)
        {
          free(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t KB::LanguageModelStr::is_valid(KB::LanguageModelStr *this)
{
  v1 = atomic_load(this + 216);
  if (v1)
  {
    v2 = atomic_load(this + 217);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void std::vector<KB::String>::__assign_with_size[abi:nn200100]<KB::String*,KB::String*>(uint64_t a1, KB::String *a2, KB::String *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    std::vector<KB::String>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<KB::String>::__vallocate[abi:nn200100](a1, v11);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        KB::String::operator=(v8, v6);
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = *(a1 + 8);
    }

    while (v12 != v8)
    {
      v17 = *(v12 - 3);
      if (v17 && *(v12 - 26) == 1)
      {
        free(v17);
      }

      v12 = (v12 - 32);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != v8)
    {
      do
      {
        KB::String::operator=(v8, v6);
        v6 = (v6 + 32);
        v8 = (v8 + 32);
        v13 -= 32;
      }

      while (v13);
      v12 = *(a1 + 8);
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      do
      {
        v16 = KB::String::String(v15, v14);
        v14 = (v14 + 32);
        v15 = (v16 + 32);
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

void KB::LanguageModelImplBase::set_recipient_context(KB::LanguageModelImplBase *this, const __CFDictionary *a2)
{
  v4 = *(this + 17);
  std::mutex::lock(v4);
  KB::retain_ptr<__CFDictionary const*>::operator=(this + 7, a2);

  std::mutex::unlock(v4);
}

CFIndex KB::LanguageModelStr::active_locale_identifiers_vector@<X0>(language_modeling::v1::LanguageModel **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = (*(*this + 2))(this);
  if (result)
  {
    LanguageLocales = language_modeling::v1::LanguageModel::getLanguageLocales(this[21]);
    v6 = 0;
    for (i = 0; ; ++i)
    {
      result = CFArrayGetCount(LanguageLocales);
      if (result <= i)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(LanguageLocales, i);
      v9 = MEMORY[0x2318BC170](ValueAtIndex);
      if (v9)
      {
        v10 = v6;
        v11 = v6 >> 3;
        if (((v6 >> 3) + 1) >> 61)
        {
          a2[1] = v6;
          a2[2] = 0;
          *a2 = 0;
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (v6 >> 3 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>((v6 >> 3) + 1);
        }

        *(8 * v11) = v9;
        v6 = 8 * v11 + 8;
        memcpy(0, 0, v10);
      }
    }

    a2[1] = v6;
    a2[2] = 0;
    *a2 = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void KB::LanguageModelStr::start_session(_DWORD *a1, int a2)
{
  if ((*(*a1 + 16))(a1))
  {

    KB::LanguageModelStr::__start_session(a1, a2);
  }

  else
  {
    a1[16] = a2;
  }
}

void KB::LanguageModelStr::__start_session(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v4 = *(a1 + 184);
  if (v4)
  {
    atomic_store(1u, (v4 + 760));
  }

  std::mutex::lock(*(a1 + 136));
  v5 = *(a1 + 184);
  if (v5)
  {
    atomic_store(0, (v5 + 760));
  }

  KB::utf8_string(*(a1 + 48), &__p);
  size = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    size = &__p.__r_.__value_.__s.__data_[16];
  }

  if (LOWORD(__p.__r_.__value_.__l.__data_))
  {
    v7 = size;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&v28, v7);
  if (__p.__r_.__value_.__l.__size_ && __p.__r_.__value_.__s.__data_[6] == 1)
  {
    free(__p.__r_.__value_.__l.__size_);
  }

  v8 = a2 != 0;
  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E28]);
  v26[0] = &__p;
  v9 = std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v29, &__p);
  v10 = v9;
  v11 = *(v9 + 20);
  if (v11 != -1)
  {
    if (!v11)
    {
      *(v9 + 14) = v8;
      goto LABEL_18;
    }

    (off_283FD6FE8[v11])(v26, v9 + 7);
  }

  *(v10 + 14) = v8;
  *(v10 + 20) = 0;
LABEL_18:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v28;
  }

  std::string::basic_string[abi:nn200100]<0>(v26, *MEMORY[0x277D22E60]);
  v31 = v26;
  v12 = std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v29, v26);
  v13 = v12;
  v14 = *(v12 + 20);
  if (v14 == -1)
  {
    goto LABEL_29;
  }

  if (v14 != 1)
  {
    (off_283FD6FE8[v14])(&v31, v12 + 7);
LABEL_29:
    *(v13 + 7) = __p;
    memset(&__p, 0, sizeof(__p));
    *(v13 + 20) = 1;
    goto LABEL_30;
  }

  if (*(v12 + 79) < 0)
  {
    operator delete(v12[7]);
  }

  *(v13 + 7) = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
LABEL_30:
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v15 = *(a1 + 168);
  language_modeling::v1::LanguageModel::makeSession();
  if (__p.__r_.__value_.__r.__words[0])
  {
    operator new();
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  v16 = *(a1 + 208);
  *(a1 + 200) = 0u;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    v17 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v17)
    {
      language_modeling::v1::LanguageModelSession::~LanguageModelSession(v17);
      MEMORY[0x2318BE270]();
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  std::mutex::unlock(*(a1 + 136));
  v18 = *(a1 + 184);
  if (v18)
  {
    v20 = *(a1 + 136);
    v19 = *(a1 + 144);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 200);
    v21 = *(a1 + 208);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    atomic_store(0, (v18 + 16));
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v18 + 304);
    *(v18 + 296) = v20;
    *(v18 + 304) = v19;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      v20 = *(v18 + 296);
    }

    std::mutex::lock(v20);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(v18 + 40);
    *(v18 + 32) = v22;
    *(v18 + 40) = v21;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      v22 = *(v18 + 32);
    }

    if (v22)
    {
      atomic_store(1u, (v18 + 16));
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = "initialize";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  TIInlineCompletionGeneratorImpl: Failed to initialize language model session", &__p, 0xCu);
    }

    std::mutex::unlock(v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(v30[0]);
  v25 = *MEMORY[0x277D85DE8];
}

const __CFString *KB::utf8_string@<X0>(const __CFString *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return this;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(unsigned int *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(*(a1 + 1));
    v2 = a1[20];
    if (v2 != -1)
    {
      (off_283FD6FE8[v2])(&v3, a1 + 14);
    }

    a1[20] = -1;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN17language_modeling2v111SessionTypeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSA_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

void std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id TIAssetsOSLogFacility()
{
  if (TIAssetsOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIAssetsOSLogFacility_onceToken, &__block_literal_global_67);
  }

  v1 = TIAssetsOSLogFacility_logFacility;

  return v1;
}

void *std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

language_modeling::v1::LanguageModelSession *std::__shared_ptr_pointer<language_modeling::v1::LanguageModelSession  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    language_modeling::v1::LanguageModelSession::~LanguageModelSession(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t KB::LanguageModelLexiconGroup::LanguageModelLexiconGroup(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 8);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
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

void std::vector<std::shared_ptr<KB::LanguageModel>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
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
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v2 + 56));
      v4 = *(v2 + 6);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t KB::NgramCandidateRefinery::clear_cache(KB::NgramCandidateRefinery *this)
{
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v3 = *(**(this + 4) + 472);

      return v3();
    }
  }

  return result;
}

uint64_t KB::LanguageModelContainer::is_valid(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 56;
  do
  {
    result = (*(**(v3 - 56) + 16))(*(v3 - 56));
    if (result)
    {
      v5 = v3 == v2;
    }

    else
    {
      v5 = 1;
    }

    v3 += 56;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelStr::clear_prediction_cache(KB::LanguageModelStr *this)
{
  v2 = this + 336;
  std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>>>::destroy(*(this + 42));
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 40) = 0;
  *(this + 41) = v2;
  *(this + 39) = 0;
}

uint64_t KB::LanguageModelContainer::clear_prediction_cache(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 7;
    this = (*(*v3 + 472))(v3);
  }

  return this;
}

void std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>>>::destroy(*a1);
    std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,void *>>>::destroy[abi:nn200100]<std::pair<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

BOOL KB::LanguageModelContainer::supports_multilingual(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4) - v1;
  return (0x6DB6DB6DB6DB6DB7 * (v2 >> 3)) > 1 || v2 == 56 && *(v1 + 40) > 1;
}

uint64_t KB::LanguageModelStr::wire_memory(language_modeling::v1::LanguageModel **this)
{
  result = (*(*this + 2))(this);
  if (result)
  {
    v3 = this[21];

    return language_modeling::v1::LanguageModel::wireMemory(v3);
  }

  return result;
}

BOOL TICanLogMessageAtLevel(unsigned int a1)
{
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  return TICanLogMessageAtLevel_logLevel >= a1;
}

Class ___ZL22getSRSensorWriterClassv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SensorKitLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL20SensorKitLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27872EC50;
    v7 = 0;
    SensorKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SensorKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SRSensorWriter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getSRSensorWriterClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZL20SensorKitLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SensorKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<unsigned long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &unk_278733760;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __getLAContextClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LAContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    LocalAuthenticationLibrary();
  }
}

void LocalAuthenticationLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27872EF88;
    v4 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (LocalAuthenticationLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id deviceClassString()
{
  v0 = MGCopyAnswer();

  return v0;
}

Class __getLARatchetManagerClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  result = objc_getClass("LARatchetManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLARatchetManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_396(v3);
  }

  return result;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureAuthenticationBeforeAutoFillRequired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27872EF70;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCoreTelephonyClientClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreTelephonyLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27872EF58;
    v7 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreTelephonyLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CoreTelephonyClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCoreTelephonyClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSFAutoFillPasskeyClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFAutoFillPasskey");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAutoFillPasskeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    SafariFoundationLibrary();
  }
}

void SafariFoundationLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SafariFoundationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SafariFoundationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27872EF40;
    v4 = 0;
    SafariFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (SafariFoundationLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SafariFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSFAppAutoFillPasskeyProviderClass_block_invoke(uint64_t a1)
{
  SafariFoundationLibrary();
  result = objc_getClass("SFAppAutoFillPasskeyProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAppAutoFillPasskeyProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(TIAppAutofillManager *)v3];
  }

  return result;
}

uint64_t KB::FilterContactWordsConflictingWithValidInput::filter_candidates(KB::FilterContactWordsConflictingWithValidInput *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *(v7 + 8) + 144;
  result = WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
  v10 = *a2;
  v11 = *(a2 + 1);
  if (*a2 != v11)
  {
    while (1)
    {
      if ((*(*(v10 + 8) + 240 * *v10 - 134) & 0x80) == 0)
      {
        result = KB::CandidateFilter::candidate_matches_input(v10, a3, v8);
        if (result)
        {
          result = KB::FilterContactWordsConflictingWithValidInput::candidate_contains_non_input_contact_word(v10, a3, v8);
          if (!result)
          {
            break;
          }
        }
      }

      v10 += 1000;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    v11 = *(a2 + 1);
  }

  if (v10 != v11)
  {
    v12 = *(a4 + 7);
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KB::FilterContactWordsConflictingWithValidInput::candidate_contains_non_input_contact_word(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = 0;
LABEL_13:
    if (v4 == v8)
    {
      return 0;
    }

    else
    {
      v13 = -240 * v8 + 240 * v4;
      for (i = (240 * v8 + a1[1] + 224); ; i += 30)
      {
        v15 = *(i - 30);
        v17 = (v15 & 0x80020100) != 0 || *i != 0;
        v18 = (*(i - 15) & 0x2000) == 0;
        if ((v15 & 0x80) == 0)
        {
          v18 = 0;
        }

        if ((v15 & 0x40000) == 0)
        {
          v18 = 1;
        }

        if (v17 && (~v15 & 0x2002000) != 0 && v18)
        {
          break;
        }

        v13 -= 240;
        if (!v13)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = *(a3 + 24);
      if (!v10)
      {
        break;
      }

      v11 = (*(*v10 + 48))(v10, a1[1] + 240 * v8, a2[1] + 240 * v8);
      v4 = *a1;
      if (v11)
      {
        v8 = v9;
        v12 = v4 > v9++;
        v12 = v12 && *a2 > v8;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v21 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v21);
  }
}

uint64_t std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<KB::FilterContactWordsConflictingWithValidInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterContactWordsConflictingWithValidInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, unint64_t *a2, KB::String **a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = KB::FilterContactWordsConflictingWithValidInput::candidate_contains_non_input_contact_word(a2, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    KB::Candidate::capitalized_string(a2, v13);
    v9 = v15;
    if (!v15)
    {
      v9 = v16;
    }

    if (v13[0])
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    KB::String::append_format(v5, "Candidate '%s' contains a contact word suggestion in a collection with a non contact suggestion", v10);
    if (v15 && v14 == 1)
    {
      free(v15);
    }
  }

  if (v7)
  {
    std::vector<KB::Candidate>::push_back[abi:nn200100](*(a1 + 24) + 24, a2);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t std::vector<KB::Candidate>::push_back[abi:nn200100](uint64_t a1, const KB::Candidate *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0x1CAC083126E978D5 * ((v3 - *a1) >> 3);
    if ((v7 + 1) > 0x4189374BC6A7EFLL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x1CAC083126E978D5 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x20C49BA5E353F7)
    {
      v10 = 0x4189374BC6A7EFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v10);
    }

    v11 = (1000 * v7);
    KB::Candidate::Candidate(v11, a2);
    v6 = v11 + 1000;
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 1000;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<KB::Candidate>::~__split_buffer(v16);
  }

  else
  {
    result = KB::Candidate::Candidate(v3, a2);
    v6 = (result + 1000);
  }

  *(a1 + 8) = v6;
  return result;
}

KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this, const KB::Candidate *a2)
{
  v4 = WTF::Vector<KB::Word,3ul>::Vector(this, a2);
  v5 = *(a2 + 744);
  v6 = *(a2 + 760);
  v4[97] = *(a2 + 97);
  *(v4 + 93) = v5;
  *(v4 + 95) = v6;
  KB::LanguageModelContext::LanguageModelContext((v4 + 98), (a2 + 784));
  KB::String::String((this + 888), (a2 + 888));
  v7 = (this + 920);
  if (*(a2 + 943) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *(a2 + 115), *(a2 + 116));
  }

  else
  {
    v8 = *(a2 + 920);
    *(this + 117) = *(a2 + 117);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  v9 = *(a2 + 472);
  if (v9 >= 0xF)
  {
    *(this + 472) = v9;
    operator new[]();
  }

  *(this + 59) = *(a2 + 59);
  *(this + 60) = *(a2 + 60);
  v10 = *(a2 + 122);
  *(this + 122) = v10;
  if (v10)
  {
    CFRetain(v10);
    *(this + 122) = v10;
  }

  v11 = *(a2 + 123);
  *(this + 123) = v11;
  if (v11)
  {
    CFRetain(v11);
    *(this + 123) = v11;
  }

  *(this + 248) = *(a2 + 248);
  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(unint64_t a1)
{
  if (a1 < 0x4189374BC6A7F0)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(KB::Candidate *a1, KB::Candidate *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      KB::Candidate::Candidate(a3, v6);
      v6 += 1000;
      a3 += 1000;
    }

    while (v6 != a2);
    do
    {
      KB::Candidate::~Candidate(v5);
      v5 = (v5 + 1000);
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<KB::Candidate>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1000;
    KB::Candidate::~Candidate((i - 1000));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t KB::Candidate::Candidate(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a1 + 24;
  *a1 = 0;
  *(a1 + 16) = 3;
  *a1 = *a2;
  *a2 = 0;
  WTF::VectorBuffer<KB::Word,3ul>::swap((a1 + 8), (a2 + 8));
  v4 = *(a2 + 744);
  v5 = *(a2 + 760);
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 744) = v4;
  *(a1 + 760) = v5;
  KB::LanguageModelContext::LanguageModelContext(a1 + 784, a2 + 784);
  *(a1 + 888) = 0x100000;
  *(a1 + 892) = 0;
  *(a1 + 894) = 0;
  *(a1 + 896) = 0;
  KB::String::operator=(a1 + 888, (a2 + 888));
  v6 = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 920) = v6;
  *(a2 + 920) = 0u;
  *(a2 + 936) = 0;
  v7 = *(a2 + 944);
  *(a1 + 944) = *(a2 + 944);
  if (v7 >= 0xF)
  {
    *(a2 + 944) = 0;
  }

  *(a1 + 960) = *(a2 + 960);
  v8 = *(a2 + 976);
  *(a2 + 976) = 0uLL;
  *(a1 + 976) = v8;
  *(a1 + 992) = *(a2 + 992);
  return a1;
}

__int128 *WTF::VectorBuffer<KB::Word,3ul>::swap(__int128 *result, void *a2)
{
  v2 = result + 1;
  v3 = a2 + 2;
  v4 = *a2;
  if (*result == result + 1)
  {
    if (v4 == v3)
    {
      for (i = 0; i != 3; ++i)
      {
        for (j = 0; j != 240; ++j)
        {
          v14 = *(v2 + j);
          *(v2 + j) = *(v3 + j);
          *(v3 + j) = v14;
        }

        v3 += 30;
        v2 += 15;
      }
    }

    else
    {
      v6 = 0;
      *result = *a2;
      *a2 = v3;
      a2[1] = 3;
      do
      {
        for (k = 0; k != 240; ++k)
        {
          v8 = *(v2 + k);
          *(v2 + k) = *(v3 + k);
          *(v3 + k) = v8;
        }

        ++v6;
        v3 += 30;
        v2 += 15;
      }

      while (v6 != 3);
    }
  }

  else if (v4 == v3)
  {
    v9 = 0;
    *a2 = *result;
    *result = v2;
    *(result + 1) = 3;
    do
    {
      for (m = 0; m != 240; ++m)
      {
        v11 = *(v2 + m);
        *(v2 + m) = *(v3 + m);
        *(v3 + m) = v11;
      }

      ++v9;
      v3 += 30;
      v2 += 15;
    }

    while (v9 != 3);
  }

  else
  {
    v5 = *result;
    *result = *a2;
    *a2 = v5;
  }

  return result;
}

uint64_t KB::LanguageModelContext::LanguageModelContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  language_modeling::v1::LinguisticContext::LinguisticContext();
  language_modeling::v1::LinguisticContext::LinguisticContext();
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return a1;
}

uint64_t *WTF::Vector<KB::Word,3ul>::Vector(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[2];
  v6 = (a1 + 3);
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = 3;
  if (v5 >= 4)
  {
    v6 = malloc_type_malloc(240 * v5, 0x10B2040DF775671uLL);
    a1[1] = v6;
    a1[2] = v5;
    if (!v6)
    {
      return a1;
    }

    v4 = *a2;
  }

  if (v4)
  {
    v7 = a2[1];
    v8 = 240 * v4;
    do
    {
      v6 = (KB::Word::Word(v6, v7) + 240);
      v7 += 30;
      v8 -= 240;
    }

    while (v8);
  }

  return a1;
}

KB::Word *KB::Word::Word(KB::Word *this, size_t *a2)
{
  KB::String::String(this, a2);
  v4 = *(a2 + 16);
  if (v4 >= 0xF)
  {
    *(this + 16) = v4;
    operator new[]();
  }

  *(this + 2) = *(a2 + 2);
  v5 = a2[6];
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v5;
  KB::String::String((this + 64), (a2 + 8));
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 9);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = v8;
  *(this + 6) = v6;
  *(this + 7) = v7;
  KB::String::String((this + 160), (a2 + 20));
  v9 = *(a2 + 192);
  *(this + 200) = 0u;
  *(this + 192) = v9;
  *(this + 216) = 0u;
  *(this + 58) = *(a2 + 58);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(this + 200, a2[26]);
  for (i = a2[27]; i; i = *i)
  {
    v11 = i[2];
    v12 = *(this + 208);
    if (!*&v12)
    {
      goto LABEL_20;
    }

    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = i[2];
      if (v11 >= *&v12)
      {
        v14 = v11 % *&v12;
      }
    }

    else
    {
      v14 = (*&v12 - 1) & v11;
    }

    v15 = *(*(this + 25) + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v11)
      {
        break;
      }

      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_20;
      }

LABEL_19:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    if (v16[2] != v11)
    {
      goto LABEL_19;
    }
  }

  return this;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

__n128 std::__function::__func<KB::FilterContactWordsConflictingWithValidInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterContactWordsConflictingWithValidInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD6B80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void KB::FilterWordsConflictingWithValidContactNames::filter_candidates(KB::FilterWordsConflictingWithValidContactNames *this, const KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = 1000;
  if (!*(a3 + 2000))
  {
    v6 = 0;
  }

  v7 = (a3 + v6);
  if (!*(a3 + v6 + 888))
  {
    KB::Candidate::compute_string(v7);
  }

  WORD2(v40) = 0;
  BYTE6(v40) = 0;
  v41 = " \t\n";
  LODWORD(v40) = 1048579;
  v42 = 0;
  KB::sbs_string_tokenize(v7 + 111, &v40, v39);
  if (v41 && BYTE6(v40) == 1)
  {
    free(v41);
  }

  v8 = *(a4 + 2);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v9 = *(v8 + 8);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  v11 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      v12 = v11;
      if (*v11)
      {
        v13 = *(v11 + 1);
        v14 = v13 + 240 * *v11;
        do
        {
          if ((*(v13 + 106) & 2) != 0)
          {
            v16 = v39[0];
            v15 = v39[1];
            while (v16 != v15)
            {
              v17 = *(v9 + 168);
              if (!v17)
              {
                std::__throw_bad_function_call[abi:nn200100]();
                std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
              }

              if ((*(*v17 + 48))(v17, v16, v13))
              {
                v11 = v12;
                goto LABEL_24;
              }

              v16 += 32;
            }
          }

          v13 += 240;
        }

        while (v13 != v14);
      }

      v11 = (v12 + 1000);
    }

    while ((v12 + 1000) != v10);
    v11 = v10;
  }

LABEL_24:
  if (v11 != a2[1] && v11 != *a2)
  {
    v30 = a4;
    KB::LanguageModelContext::LanguageModelContext(v32, (a3 + 2032));
    if (*v11)
    {
      v18 = 240 * *v11;
      v19 = (*(v11 + 1) + 136);
      if ((*(*(v11 + 1) + 106) & 2) != 0)
      {
        *v19 = 0;
      }

      if ((*(v19 - 1) & 4) == 0)
      {
        v20 = (v19 - 30);
        if (*(v19 - 16))
        {
          v20 = *(v19 - 16);
        }

        v21 = *v20;
        if (v21 == 32)
        {
          v20[1];
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(1);
    }

    v22 = *(a4 + 3);
    v23 = *(a4 + 4);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v22)
    {
      v24 = *(a4 + 3);
      v25 = *(a4 + 4);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = (*(*v24 + 16))(v24) ^ 1;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      if (!v23)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v26 = 1;
      if (!v23)
      {
        goto LABEL_44;
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
LABEL_44:
    if ((v26 & 1) == 0)
    {
      v28 = *(v30 + 3);
      v27 = *(v30 + 4);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      KB::Candidate::Candidate(&v40, v11);
      std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>();
    }

    v40 = &v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v40);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v37);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v36);
    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }
  }

  v40 = v39;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v40);
  v29 = *MEMORY[0x277D85DE8];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::vector<language_modeling::v1::TokenMetadata>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        KB::Candidate::~Candidate((v4 - 1000));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<KB::LikelihoodInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL std::__function::__func<KB::FilterWordsConflictingWithValidContactNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterWordsConflictingWithValidContactNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v5 = 240 * *a2 - 240;
    v6 = (*(a2 + 8) + 104);
    do
    {
      v7 = *v6;
      v6 += 60;
      v8 = (v7 & 0x20000) == 0;
      if ((v7 & 0x20000) != 0)
      {
        break;
      }

      v9 = v5;
      v5 -= 240;
    }

    while (v9);
  }

  else
  {
    v8 = 1;
  }

  v10 = *a3;
  v11 = *(a1 + 16);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  v12 = *(a1 + 8);
  if (!*(v12 + 444))
  {
    KB::Candidate::compute_string(v12);
  }

  v13 = *(v11 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  if ((*(*v13 + 48))(v13, a2 + 888, v12 + 444))
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  if (v10 && v14)
  {
    KB::Candidate::capitalized_string(a2, v19);
    v15 = v21;
    if (!v21)
    {
      v15 = v22;
    }

    if (v19[0])
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    KB::String::append_format(v10, "Candidate list contains a valid contact name matching input, and '%s' is not a valid contact name nor sortkey equivalent to what the user typed", v16);
    if (v21 && v20 == 1)
    {
      free(v21);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

__n128 std::__function::__func<KB::FilterWordsConflictingWithValidContactNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterWordsConflictingWithValidContactNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD6BC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *std::vector<language_modeling::v1::TokenMetadata>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<language_modeling::v1::TokenMetadata>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 1);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::vector<KB::Candidate>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4189374BC6A7F0)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

Class __getUITextCheckerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27872EFD8;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UITextChecker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getUITextCheckerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id get_KSUserWordsSynchroniserClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_KSUserWordsSynchroniserClass_softClass;
  v7 = get_KSUserWordsSynchroniserClass_softClass;
  if (!get_KSUserWordsSynchroniserClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_KSUserWordsSynchroniserClass_block_invoke;
    v3[3] = &unk_278733760;
    v3[4] = &v4;
    __get_KSUserWordsSynchroniserClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

uint64_t KeyboardServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!KeyboardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __KeyboardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27872EFF0;
    v6 = 0;
    KeyboardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = KeyboardServicesLibraryCore_frameworkLibrary;
    if (KeyboardServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = KeyboardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __KeyboardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  KeyboardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLSApplicationProxyClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27872F008;
    v7 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getLSApplicationProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy__454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id asMCNearbyKeys(void *a1)
{
  v2 = [objc_opt_class() maxNearbyKeysCountDefault];

  return asMCNearbyKeys(a1, v2);
}

id asMCNearbyKeys(void *a1, unint64_t a2)
{
  v4 = [MEMORY[0x277CBEB18] array];
  if (*a1)
  {
    v5 = 0;
    v6 = a1[1];
    v7 = 8 * *a1 - 8;
    do
    {
      v8 = *(*v6 + 8);
      if (!*(v8 + 12))
      {
        KB::String::compute_length((v8 + 8));
        if (!*(v8 + 12))
        {
          goto LABEL_8;
        }
      }

      v9 = [MCNearbyKey alloc];
      v10 = *(v8 + 16);
      if (!v10)
      {
        v10 = v8 + 24;
      }

      v17 = v10;
      v11 = *(v8 + 8);
      v18 = 0;
      v19 = v11;
      v20 = 0;
      KB::String::iterator::initialize(&v17);
      LODWORD(v12) = *(*v6 + 32);
      v13 = [(MCNearbyKey *)v9 initWithCharacter:v20 logLikelihood:v12];
      [v4 addObject:v13];
      ++v5;

LABEL_8:
      if (v5 >= a2)
      {
        break;
      }

      v6 += 8;
      v14 = v7;
      v7 -= 8;
    }

    while (v14);
  }

  v15 = [v4 copy];

  return v15;
}

void TILXEntryGetSupplementalItemIdentifiers(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = ICLXEntryGetEntities();
  v3 = v2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (v2)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, [v2 count]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v5)
    {
      goto LABEL_26;
    }

    v6 = v5;
    v7 = *v19;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) data];
        v10 = *(a1 + 8);
        if (!*&v10)
        {
          goto LABEL_23;
        }

        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = v9;
          if (v9 >= *&v10)
          {
            v12 = v9 % *&v10;
          }
        }

        else
        {
          v12 = (*&v10 - 1) & v9;
        }

        v13 = *(*a1 + 8 * v12);
        if (!v13 || (v14 = *v13) == 0)
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            break;
          }

          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= *&v10)
            {
              v15 %= *&v10;
            }
          }

          else
          {
            v15 &= *&v10 - 1;
          }

          if (v15 != v12)
          {
            goto LABEL_23;
          }

LABEL_22:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        if (v14[2] != v9)
        {
          goto LABEL_22;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v6)
      {
LABEL_26:

        v3 = v17;
        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t TILXEntryIsPartOfHyphenatedWord()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = ICLXEntryGetEntities();
  if (v0)
  {
    v1 = ICLXEntryGetTransientLexicon();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = v0;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0 || ![v1 entityIsHyphenatedWord:{v7, v11}])
          {
            v8 = 0;
            goto LABEL_15;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v8 = 1;
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_15:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t TI::Favonius::UnigramCandidateGenerator::combined_word_id(TI::Favonius::UnigramCandidateGenerator *this, const KB::Candidate *a2, TITokenID *a3)
{
  v3 = *(this + 2);
  if (!*(v3 + 4))
  {
    return 0;
  }

  v4 = *(a2 + 1) + 240 * *a2;
  if ((a3[16].word_id & (*(v4 - 108) >> 12) & 0xFFF) == 0)
  {
    return 0;
  }

  v5 = *(v4 - 104);
  v6 = a3[17];
  return KB::DictionaryContainer::combined_word_id(v3, v5, v6);
}

uint64_t TI::Favonius::UnigramCandidateGenerator::should_combine_candidate_and_word(TI::Favonius::UnigramCandidateGenerator *this, const Candidate *a2, const Word *a3)
{
  v3 = *(*(a2 + 1) + 240 * *a2 - 108);
  if ((v3 & 0x4000000) != 0 || (var13 = a3->var13, (var13 & 0x4000000) != 0) || (var13 & (v3 >> 12) & 0xFFF) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(*(this + 2) + 64);
  }

  return v5 & 1;
}

void TI::Favonius::UnigramCandidateGenerator::score_candidate_without_termination(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*a5 + 104))(a5);
  if (*a4)
  {
    v10 = 240 * *a4;
    v11 = (*(a4 + 8) + 48);
    v12 = 1.0;
    do
    {
      v13 = *v11;
      v11 += 60;
      v12 = v12 * v13;
      v10 -= 240;
    }

    while (v10);
  }

  else
  {
    v12 = 1.0;
  }

  v14 = v9 + logf(v12);
  v15 = (*(*a5 + 96))(a5);
  *(a4 + 748) = a1;
  *(a4 + 752) = v14;
  *(a4 + 756) = v15;
  *(a4 + 760) = a2;
  *(a4 + 764) = -8388608;
  v16 = expf(a1 + (a2 * (v14 + v15)));
  *(a4 + 744) = logf(v16);
}

void TI::Favonius::UnigramCandidateGenerator::score_candidate(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*a5 + 104))(a5);
  (*(*a5 + 80))(a5);
  if (*a4)
  {
    v11 = 240 * *a4;
    v12 = (*(a4 + 8) + 48);
    v13 = 1.0;
    do
    {
      v14 = *v12;
      v12 += 60;
      v13 = v13 * v14;
      v11 -= 240;
    }

    while (v11);
  }

  else
  {
    v13 = 1.0;
  }

  v15 = v9 + logf(v10);
  v16 = v15 + logf(v13);
  v17 = (*(*a5 + 96))(a5);
  *(a4 + 748) = a1;
  *(a4 + 752) = v16;
  *(a4 + 756) = v17;
  *(a4 + 760) = a2;
  *(a4 + 764) = -8388608;
  v18 = expf(a1 + (a2 * (v16 + v17)));
  *(a4 + 744) = logf(v18);
}

void TI::Favonius::UnigramCandidateGenerator::generate_candidates()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v0 = 0u;
  v1 = 0u;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  operator new();
}

unint64_t *KB::CandidateCollection::add(KB::CandidateCollection *this, const KB::Candidate **a2)
{
  std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(this, *(this + 1), *a2, a2[1], 0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3));
  std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(this + 3, *(this + 4), a2[3], a2[4], 0x1CAC083126E978D5 * ((a2[4] - a2[3]) >> 3));
  std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(this + 6, *(this + 7), a2[6], a2[7], 0x1CAC083126E978D5 * ((a2[7] - a2[6]) >> 3));
  v4 = *(this + 10);
  v5 = a2[9];
  v6 = a2[10];

  return std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(this + 9, v4, v5, v6, 0x1CAC083126E978D5 * ((v6 - v5) >> 3));
}

unint64_t *std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(unint64_t *result, uint64_t a2, const KB::Candidate *a3, const KB::Candidate *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (0x1CAC083126E978D5 * ((v9 - v10) >> 3) >= a5)
    {
      v15 = v10 - a2;
      if (0x1CAC083126E978D5 * ((v10 - a2) >> 3) >= a5)
      {
        v20 = 1000 * a5;
        std::vector<KB::Candidate>::__move_range(result, a2, result[1], a2 + 1000 * a5);
        v21 = (v6 + v20);
        do
        {
          result = KB::Candidate::operator=(v7, v6);
          v6 = (v6 + 1000);
          v7 = (v7 + 1000);
        }

        while (v6 != v21);
      }

      else
      {
        v17 = (a3 + v15);
        result = result[1];
        if ((a3 + v15) != a4)
        {
          v18 = (a3 + v15);
          result = v10;
          do
          {
            v19 = KB::Candidate::Candidate(result, v18);
            v18 = (v18 + 1000);
            result = (v19 + 1000);
          }

          while (v18 != a4);
        }

        *(v8 + 8) = result;
        if (v15 >= 1)
        {
          std::vector<KB::Candidate>::__move_range(v8, v7, v10, v7 + 1000 * a5);
          do
          {
            result = KB::Candidate::operator=(v7, v6);
            v6 = (v6 + 1000);
            v7 = (v7 + 1000);
          }

          while (v6 != v17);
        }
      }
    }

    else
    {
      v11 = *result;
      v12 = a5 + 0x1CAC083126E978D5 * ((v10 - *result) >> 3);
      if (v12 > 0x4189374BC6A7EFLL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v13 = 0x1CAC083126E978D5 * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x20C49BA5E353F7)
      {
        v14 = 0x4189374BC6A7EFLL;
      }

      else
      {
        v14 = v12;
      }

      v25[4] = v8;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v14);
      }

      v22 = (8 * ((a2 - v11) >> 3));
      v25[0] = 0;
      v25[1] = v22;
      v25[3] = 0;
      v23 = 1000 * a5;
      v24 = v22 + 1000 * a5;
      do
      {
        v22 = (KB::Candidate::Candidate(v22, v6) + 1000);
        v6 = (v6 + 1000);
        v23 -= 1000;
      }

      while (v23);
      v25[2] = v24;
      std::vector<KB::Candidate>::__swap_out_circular_buffer(v8, v25, v7);
      return std::__split_buffer<KB::Candidate>::~__split_buffer(v25);
    }
  }

  return result;
}

uint64_t *std::vector<KB::Candidate>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 8);
    do
    {
      v11 = KB::Candidate::Candidate(result, v8);
      v8 += 1000;
      result = (v11 + 1000);
    }

    while (v8 < a3);
  }

  *(a1 + 8) = result;
  if (v7 != a4)
  {
    result = (v7 - 1000);
    v12 = a4 - v7;
    v13 = (a2 + v7 - 1000 - a4);
    do
    {
      result = KB::Candidate::operator=(result, v13) - 125;
      v13 -= 125;
      v12 += 1000;
    }

    while (v12);
  }

  return result;
}

uint64_t KB::Candidate::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1 <= *a2)
    {
      v9 = v5 > *(a1 + 16);
      v5 = *a1;
      if (v9)
      {
        WTF::Vector<KB::Word,3ul>::shrinkCapacity(a1);
        WTF::Vector<KB::Word,3ul>::reserveCapacity(a1, *a2);
        if (!*(a1 + 8))
        {
          goto LABEL_22;
        }

        v5 = *a1;
      }
    }

    else
    {
      v6 = (*(a1 + 8) + 240 * v5);
      v7 = -240 * v5 + 240 * v4;
      do
      {
        KB::Word::~Word(v6);
        v6 = (v8 + 240);
        v7 -= 240;
      }

      while (v7);
      *a1 = v5;
    }

    v10 = *(a2 + 8);
    if (v5)
    {
      v11 = 0;
      v12 = *(a1 + 8);
      v13 = 240 * v5;
      do
      {
        v14 = v12 + v11;
        v15 = v10 + v11;
        KB::String::operator=((v12 + v11), (v10 + v11));
        KB::ByteString::operator=((v12 + v11 + 32), (v10 + v11 + 32));
        v16 = *(v10 + v11 + 48);
        *(v14 + 56) = *(v10 + v11 + 56);
        *(v14 + 48) = v16;
        KB::String::operator=((v12 + v11 + 64), (v10 + v11 + 64));
        v17 = *(v10 + v11 + 96);
        v18 = *(v10 + v11 + 112);
        v19 = *(v10 + v11 + 144);
        *(v14 + 128) = *(v10 + v11 + 128);
        *(v14 + 144) = v19;
        *(v14 + 96) = v17;
        *(v14 + 112) = v18;
        KB::String::operator=((v12 + v11 + 160), (v10 + v11 + 160));
        *(v14 + 192) = *(v10 + v11 + 192);
        if (v10 != v12)
        {
          *(v14 + 232) = *(v15 + 232);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((v14 + 200), *(v15 + 216));
        }

        v11 += 240;
      }

      while (v13 != v11);
      v10 = *(a2 + 8);
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    if (v20 != *a2)
    {
      v21 = 240 * v20;
      v22 = (*(a1 + 8) + v21);
      v23 = (v10 + v21);
      v24 = 240 * *a2 - v21;
      do
      {
        v22 = (KB::Word::Word(v22, v23) + 240);
        v23 += 30;
        v24 -= 240;
      }

      while (v24);
      v20 = *a2;
    }

    *a1 = v20;
  }

LABEL_22:
  *(a1 + 744) = *(a2 + 744);
  v25 = *(a2 + 748);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 748) = v25;
  *(a1 + 776) = *(a2 + 776);
  KB::LanguageModelContext::operator=(a1 + 784, (a2 + 784));
  KB::String::operator=((a1 + 888), (a2 + 888));
  std::string::operator=((a1 + 920), (a2 + 920));
  KB::ByteString::operator=((a1 + 944), (a2 + 944));
  *(a1 + 960) = *(a2 + 960);
  KB::retain_ptr<__CFDictionary const*>::operator=((a1 + 976), *(a2 + 976));
  v26 = *(a2 + 984);
  v27 = *(a1 + 984);
  if (v27 != v26)
  {
    if (v26)
    {
      CFRetain(*(a2 + 984));
      v27 = *(a1 + 984);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    *(a1 + 984) = v26;
  }

  *(a1 + 992) = *(a2 + 992);
  return a1;
}

uint64_t std::vector<KB::Candidate>::__swap_out_circular_buffer(uint64_t a1, void *a2, KB::Candidate *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void KB::Word::~Word(KB::Word *this)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 200);
  v2 = *(this + 21);
  if (v2 && *(this + 166) == 1)
  {
    free(v2);
  }

  v3 = *(this + 9);
  if (v3 && *(this + 70) == 1)
  {
    free(v3);
  }

  if (*(this + 16) >= 0xFu)
  {
    v4 = *(this + 5);
    if (v4)
    {
      MEMORY[0x2318BE250](v4, 0x1000C8077774924);
    }
  }

  v5 = *(this + 1);
  if (v5)
  {
    if (*(this + 6) == 1)
    {
      free(v5);
    }
  }
}

void *WTF::Vector<KB::Word,3ul>::shrinkCapacity(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = result[1];
      v4 = 240 * v2;
      do
      {
        KB::Word::~Word(v3);
        v3 = (v5 + 240);
        v4 -= 240;
      }

      while (v4);
      *v1 = 0;
    }

    v6 = v1 + 1;
    result = v1[1];
    if (v1 + 3 != result)
    {
      *v6 = 0;
      v1[2] = 0;
      free(result);
      result = *v6;
    }

    if (!result)
    {
      v1[1] = v1 + 3;
      v1[2] = 3;
    }
  }

  return result;
}

void WTF::Vector<KB::Word,3ul>::reserveCapacity(void *a1, unint64_t a2)
{
  if (a1[2] >= a2)
  {
    return;
  }

  v5 = (a1 + 1);
  v4 = a1[1];
  v6 = *a1;
  if (a2 <= 3)
  {
    v7 = (a1 + 3);
    a1[1] = a1 + 3;
    a1[2] = 3;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = malloc_type_malloc(240 * a2, 0x10B2040DF775671uLL);
  a1[1] = v7;
  a1[2] = a2;
  if (v7 && v6)
  {
LABEL_7:
    v8 = 240 * v6;
    v9 = v4;
    do
    {
      KB::Word::Word(v7, v9);
      KB::Word::~Word(v9);
      v7 = (v7 + 240);
      v9 += 30;
      v8 -= 240;
    }

    while (v8);
  }

LABEL_9:
  if (a1 + 3 != v4)
  {
    if (*v5 == v4)
    {
      *v5 = 0;
      v5[1] = 0;
    }

    free(v4);
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(void *a1, void *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = a2[2];
      v6[2] = v7;
      v8 = *v6;
      v6[1] = v7;
      inserted = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__node_insert_multi_prepare(a1, v7, v6 + 2);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__node_insert_multi_perform(a1, v6, inserted);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t *KB::Candidate::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  WTF::VectorBuffer<KB::Word,3ul>::swap((a1 + 1), a2 + 1);
  v5 = *(a2 + 93);
  v6 = *(a2 + 95);
  a1[97] = a2[97];
  *(a1 + 93) = v5;
  *(a1 + 95) = v6;
  v7 = *(a2 + 49);
  *(a2 + 49) = 0u;
  v8 = a1[99];
  *(a1 + 49) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = a1[100];
  if (v9)
  {
    a1[101] = v9;
    operator delete(v9);
    a1[100] = 0;
    a1[101] = 0;
    a1[102] = 0;
  }

  *(a1 + 50) = *(a2 + 50);
  a1[102] = a2[102];
  a2[102] = 0;
  *(a2 + 50) = 0u;
  v10 = *(a2 + 103);
  a1[105] = a2[105];
  *(a1 + 103) = v10;
  language_modeling::v1::LinguisticContext::operator=();
  language_modeling::v1::LinguisticContext::operator=();
  std::vector<std::string>::__vdeallocate(a1 + 36);
  *(a1 + 54) = *(a2 + 54);
  a1[110] = a2[110];
  a2[110] = 0;
  *(a2 + 54) = 0u;
  KB::String::operator=((a1 + 111), (a2 + 111));
  v11 = (a1 + 115);
  if (*(a1 + 943) < 0)
  {
    operator delete(*v11);
  }

  v12 = *(a2 + 115);
  a1[117] = a2[117];
  *v11 = v12;
  *(a2 + 943) = 0;
  *(a2 + 920) = 0;
  KB::ByteString::operator=(a1 + 472, a2 + 472);
  *(a1 + 60) = *(a2 + 60);
  v13 = a1[122];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[122] = 0;
  v14 = a2[122];
  a2[122] = 0;
  a1[122] = v14;
  v15 = a1[123];
  if (v15)
  {
    CFRelease(v15);
  }

  a1[123] = 0;
  v16 = a2[123];
  a2[123] = 0;
  a1[123] = v16;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void std::__function::__func<TI::Favonius::UnigramCandidateGenerator::generate_candidates(TI::Favonius::TypingHypothesis const*,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0,std::allocator<TI::Favonius::UnigramCandidateGenerator::generate_candidates(TI::Favonius::TypingHypothesis const*,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0>,void ()(TI::Favonius::TypingHypothesis const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = (*(**a2 + 176))(*a2);
  v6 = v5;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  TI::Favonius::UnigramCandidateGenerator::words_for_input_segment(v5, v3, v7, &v47);
  v45 = 0uLL;
  v46 = 0;
  v8 = (*(*v3 + 136))(v3);
  v44 = a1;
  if ((*(*v8 + 144))(v8))
  {
    v10 = v47;
    for (i = v48; v10 != i; v10 += 30)
    {
      KB::Word::Word(v55, v10);
      if ((*(*v3 + 168))(v3))
      {
        v57 = 0;
      }

      else if ((v56 & 0x80060100) == 0 && HIDWORD(v57) == 0 && v58 == 0)
      {
        v56 |= 4u;
      }

      if (*(&v45 + 1) >= v46)
      {
        v14 = 0x1CAC083126E978D5 * ((*(&v45 + 1) - v45) >> 3) + 1;
        if (v14 > 0x4189374BC6A7EFLL)
        {
          goto LABEL_75;
        }

        if (0x395810624DD2F1AALL * ((v46 - v45) >> 3) > v14)
        {
          v14 = 0x395810624DD2F1AALL * ((v46 - v45) >> 3);
        }

        if ((0x1CAC083126E978D5 * ((v46 - v45) >> 3)) >= 0x20C49BA5E353F7)
        {
          v15 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v15 = v14;
        }

        v59[4] = &v45;
        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v15);
        }

        v16 = (8 * ((*(&v45 + 1) - v45) >> 3));
        KB::Candidate::Candidate(v16, v55);
        v13 = v16 + 1000;
        v17 = v16 + v45 - *(&v45 + 1);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(v45, *(&v45 + 1), v17);
        v18 = v45;
        v19 = v46;
        *&v45 = v17;
        *(&v45 + 1) = v13;
        v46 = 0;
        v59[2] = v18;
        v59[3] = v19;
        v59[1] = v18;
        v59[0] = v18;
        std::__split_buffer<KB::Candidate>::~__split_buffer(v59);
      }

      else
      {
        v13 = KB::Candidate::Candidate(*(&v45 + 1), v55) + 1000;
      }

      *(&v45 + 1) = v13;
      KB::LanguageModelContext::operator=((v13 - 216), *(v44 + 24));
      if (v6)
      {
        *(*(&v45 + 1) - 38) = 1;
      }

      KB::Word::~Word(v55);
    }
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *v20;
    v43 = v20[1];
    if (*v20 != v43)
    {
      do
      {
        v22 = v47;
        v23 = v48;
        while (v22 != v23)
        {
          KB::Word::Word(v59, v22);
          if ((*(*v4 + 40))(v4, v21, v59))
          {
            v24 = (*(*v4 + 48))(v4, v21, v59);
            if (HIDWORD(v24))
            {
              v25 = v24;
              KB::Candidate::Candidate(v55, v21);
              KB::Word::Word(v51, (v21[1] + 240 * *v21 - 240));
              v26 = v25;
              KB::Word::append_suffix(v51, v22, 0, v26);
              KB::Candidate::pop_last_word(v55);
              if ((*(*v3 + 168))(v3))
              {
                v53 = 0;
              }

              else if ((v52 & 0x80060100) == 0 && !HIDWORD(v53) && !v54)
              {
                v52 |= 4u;
              }

              if (*(&v45 + 1) >= v46)
              {
                v31 = 0x1CAC083126E978D5 * ((*(&v45 + 1) - v45) >> 3) + 1;
                if (v31 > 0x4189374BC6A7EFLL)
                {
LABEL_75:
                  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                }

                if (0x395810624DD2F1AALL * ((v46 - v45) >> 3) > v31)
                {
                  v31 = 0x395810624DD2F1AALL * ((v46 - v45) >> 3);
                }

                if ((0x1CAC083126E978D5 * ((v46 - v45) >> 3)) >= 0x20C49BA5E353F7)
                {
                  v32 = 0x4189374BC6A7EFLL;
                }

                else
                {
                  v32 = v31;
                }

                v50[4] = &v45;
                if (v32)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v32);
                }

                v37 = (8 * ((*(&v45 + 1) - v45) >> 3));
                KB::Candidate::Candidate(v37, v55, v51);
                v28 = v37 + 1000;
                v38 = v37 + v45 - *(&v45 + 1);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(v45, *(&v45 + 1), v38);
                v39 = v45;
                v40 = v46;
                *&v45 = v38;
                *(&v45 + 1) = v28;
                v46 = 0;
                v50[2] = v39;
                v50[3] = v40;
                v50[0] = v39;
                v50[1] = v39;
                std::__split_buffer<KB::Candidate>::~__split_buffer(v50);
              }

              else
              {
                v28 = KB::Candidate::Candidate(*(&v45 + 1), v55, v51) + 1000;
              }

              *(&v45 + 1) = v28;
              KB::Word::~Word(v51);
              KB::Candidate::~Candidate(v55);
              v27 = *(&v45 + 1);
            }

            else
            {
              if ((*(*v3 + 168))(v3))
              {
                v61 = 0;
              }

              else if ((v60 & 0x80060100) == 0 && !HIDWORD(v61) && !v62)
              {
                v60 |= 4u;
              }

              if (*(&v45 + 1) >= v46)
              {
                v29 = 0x1CAC083126E978D5 * ((*(&v45 + 1) - v45) >> 3) + 1;
                if (v29 > 0x4189374BC6A7EFLL)
                {
                  goto LABEL_75;
                }

                if (0x395810624DD2F1AALL * ((v46 - v45) >> 3) > v29)
                {
                  v29 = 0x395810624DD2F1AALL * ((v46 - v45) >> 3);
                }

                if ((0x1CAC083126E978D5 * ((v46 - v45) >> 3)) >= 0x20C49BA5E353F7)
                {
                  v30 = 0x4189374BC6A7EFLL;
                }

                else
                {
                  v30 = v29;
                }

                v55[4] = &v45;
                if (v30)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v30);
                }

                v33 = (8 * ((*(&v45 + 1) - v45) >> 3));
                KB::Candidate::Candidate(v33, v21, v59);
                v27 = v33 + 1000;
                v34 = v33 + v45 - *(&v45 + 1);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(v45, *(&v45 + 1), v34);
                v35 = v45;
                v36 = v46;
                *&v45 = v34;
                *(&v45 + 1) = v27;
                v46 = 0;
                v55[2] = v35;
                v55[3] = v36;
                v55[0] = v35;
                v55[1] = v35;
                std::__split_buffer<KB::Candidate>::~__split_buffer(v55);
              }

              else
              {
                v27 = KB::Candidate::Candidate(*(&v45 + 1), v21, v59) + 1000;
              }

              *(&v45 + 1) = v27;
            }

            KB::LanguageModelContext::operator=((v27 - 216), v21 + 98);
            if (v6)
            {
              *(*(&v45 + 1) - 38) = 1;
            }
          }

          KB::Word::~Word(v59);
          v22 += 30;
        }

        v21 += 125;
      }

      while (v21 != v43);
    }
  }

  v41 = *(v44 + 16);
  std::vector<KB::Candidate>::__vdeallocate(v41);
  *v41 = v45;
  *(v41 + 16) = v46;
  v45 = 0uLL;
  v46 = 0;
  v55[0] = &v45;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v55);
  v55[0] = &v47;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v55);
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::UnigramCandidateGenerator::words_for_input_segment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  (*(*a2 + 128))(a2, a4);
  result = (*(*a2 + 168))(a2);
  v7 = *a4;
  if (result)
  {
    *(v7 + 136) = 0;
  }

  else
  {
    for (i = a4[1]; v7 != i; v7 += 240)
    {
      v9 = *(v7 + 104);
      if ((v9 & 0x40000) == 0)
      {
        if ((v9 & 0x80020100) != 0)
        {
          v10 = 0;
        }

        else
        {
          v10 = HIDWORD(*(v7 + 136)) == 0;
          *(v7 + 136);
        }

        if (v10 && !*(v7 + 224))
        {
          *(v7 + 104) = v9 | 4;
        }
      }
    }
  }

  return result;
}

KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this, size_t *a2)
{
  *this = 0;
  *(this + 1) = this + 24;
  *(this + 2) = 3;
  *(this + 744) = xmmword_22CC88980;
  *(this + 95) = 0xFF8000003F800000;
  *(this + 105) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 848));
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 856));
  *(this + 110) = 0;
  *(this + 54) = 0u;
  *(this + 222) = 0x100000;
  *(this + 446) = 0;
  *(this + 894) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0;
  *(this + 115) = 0;
  *(this + 58) = 0u;
  *(this + 472) = 0;
  *(this + 240) = 0;
  *(this + 964) = 0;
  *(this + 61) = 0u;
  *(this + 248) = 0;
  KB::Candidate::append(this, a2);
  return this;
}

void std::vector<KB::Candidate>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        KB::Candidate::~Candidate((v3 - 1000));
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

void std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        KB::Word::~Word((v4 - 240));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::__function::__func<TI::Favonius::UnigramCandidateGenerator::generate_candidates(TI::Favonius::TypingHypothesis const*,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0,std::allocator<TI::Favonius::UnigramCandidateGenerator::generate_candidates(TI::Favonius::TypingHypothesis const*,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0>,void ()(TI::Favonius::TypingHypothesis const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD6CD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void TI::Favonius::UnigramCandidateGenerator::~UnigramCandidateGenerator(TI::Favonius::UnigramCandidateGenerator *this)
{
  *this = &unk_283FD6C90;
  v1 = *(this + 2);
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD6C90;
  v1 = *(this + 2);
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }
}

uint64_t TI::Favonius::UnigramCandidateGenerator::UnigramCandidateGenerator(uint64_t result, atomic_uint **a2)
{
  *(result + 8) = 1;
  *result = &unk_283FD6C90;
  v2 = *a2;
  *(result + 16) = *a2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return result;
}

{
  *(result + 8) = 1;
  *result = &unk_283FD6C90;
  v2 = *a2;
  *(result + 16) = *a2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return result;
}

BOOL TI::Favonius::UnigramCandidateGenerator::should_suggest_word_combination(TI::Favonius::UnigramCandidateGenerator *this, Candidate *a2, const KB::Word *a3)
{
  if (*this)
  {
    v4 = *(this + 1);
    v5 = 240 * *this;
    while (1)
    {
      v6 = *(v4 + 4);
      if (!*(v4 + 4))
      {
        KB::String::compute_length(v4);
        v6 = *(v4 + 4);
      }

      if (v6 >= 2 && *(v4 + 120))
      {
        return 0;
      }

      v4 += 240;
      v5 -= 240;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v7 = *(a2 + 2);
    if (!*(a2 + 2))
    {
      KB::String::compute_length(a2);
      v7 = *(a2 + 2);
    }

    return v7 < 2 || *(a2 + 30) == 0;
  }
}

uint64_t TI::Favonius::UnigramCandidateGenerator::update_word(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a3 + 168))(a3);
  if (result)
  {
    *(a2 + 136) = 0;
  }

  else
  {
    v5 = *(a2 + 104);
    if ((v5 & 0x80060100) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = HIDWORD(*(a2 + 136)) == 0;
      *(a2 + 136);
    }

    if (v6 && *(a2 + 224) == 0)
    {
      *(a2 + 104) = v5 | 4;
    }
  }

  return result;
}

void KB::LanguageModelStr::do_store(KB::LanguageModelStr *this, int a2)
{
  v4 = (*(*this + 16))(this);
  if (v4)
  {
    if (a2)
    {
      v5 = *(this + 23);
      if (v5)
      {
        atomic_store(1u, (v5 + 760));
      }

      std::mutex::lock(*(this + 17));
      v6 = *(this + 23);
      if (v6)
      {
        atomic_store(0, (v6 + 760));
      }

      language_modeling::v1::LanguageModelSession::flushCacheAndRecencyData(*(this + 25));
      std::mutex::unlock(*(this + 17));
    }

    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3802000000;
    v9[3] = __Block_byref_object_copy__37;
    v8 = *(this + 21);
    v7 = *(this + 22);
    v9[4] = __Block_byref_object_dispose__38;
    v9[5] = v8;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::LanguageModel::background_loading_queue(v4);
    TIDispatchAsync();
    _Block_object_dispose(v9, 8);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

__n128 __Block_byref_object_copy__37(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__38(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void ___ZN2KB16LanguageModelStr8do_storeEb_block_invoke(uint64_t a1)
{
  language_modeling::v1::LanguageModel::flushDynamicData(*(*(*(a1 + 32) + 8) + 40));
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void KB::LanguageModelStr::register_inline_completion_acceptance_rejection(uint64_t a1, const KB::String *a2, const KB::String *a3, const KB::String *a4, int a5)
{
  v5 = *(a1 + 184);
  if (v5)
  {
    TIInlineCompletionEventDispatcher::did_register_completion_acceptance(**(v5 + 744), *(*(v5 + 744) + 8), a2, a3, a4, a5);
  }
}

void KB::LanguageModelStr::inline_completions_with_stems(uint64_t a1@<X0>, uint64_t *a2@<X1>, KB::LanguageModelContext *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v153 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v100 = a2;
    v101 = a4;
    memset(v103, 0, sizeof(v103));
    convert_to_lm_completion_stem(a2, v103, 0);
    v99 = *(a1 + 88);
    v102 = (*(*a1 + 40))(a1);
    v10 = *(a1 + 184);
    v11 = v103[0];
    language_modeling::v1::CompletionStem::prefix(&v108, v103[0]);
    if (*(v10 + 288))
    {
      v12 = *(v10 + 88);
      v13 = v110;
      if ((v110 & 0x80u) != 0)
      {
        v13 = v109;
      }

      if (v13)
      {
LABEL_6:
        KB::LanguageModelContext::LanguageModelContext(&buf, (v10 + 104));
        v14 = *(&v125 + 1);
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v126 - *(&v125 + 1)) >> 3);
        v16 = *(a3 + 10);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 11) - v16) >> 3);
        if (v17 < v15 || v17 > *(v10 + 96) - 0x5555555555555555 * ((v126 - *(&v125 + 1)) >> 3))
        {
          LOBYTE(__sz[0]) = 0;
          BYTE8(v151) = 0;
LABEL_9:
          v111.__r_.__value_.__r.__words[0] = &v125 + 8;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v111);
          language_modeling::v1::LinguisticContext::~LinguisticContext(&v125);
          language_modeling::v1::LinguisticContext::~LinguisticContext(&v124);
          if (buf.__r_.__value_.__r.__words[2])
          {
            v122.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[2];
            operator delete(buf.__r_.__value_.__r.__words[2]);
          }

          if (buf.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](buf.__r_.__value_.__l.__size_);
          }

LABEL_48:
          if (v110 < 0)
          {
            operator delete(v108);
          }

          if (BYTE8(v151) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = "cachedCompletionsForContextAndStem";
              _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: No cached completion was found, cache emptied", &buf, 0xCu);
            }

            TIInlineCompletionsCache::clear((v10 + 96));
            v32 = *(v10 + 400);
            v104[0] = v32;
            if (v32)
            {
              atomic_fetch_add(v32, 1u);
              v33 = v104[0];
              greetingCompletion(&v132, a3, v11, v10 + 368, v104, *(v10 + 56));
              if (v33)
              {
                WTF::RefCounted<KB::DictionaryContainer>::deref(v33);
              }
            }

            else
            {
              greetingCompletion(&v132, a3, v11, v10 + 368, v104, *(v10 + 56));
            }

            v34 = v133.__r_.__value_.__s.__data_[0];
            if (v133.__r_.__value_.__s.__data_[0] == 1)
            {
              v98 = SHIBYTE(v132.__r_.__value_.__r.__words[2]);
              if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v138, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
              }

              else
              {
                v138 = v132;
              }

              if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v111, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
                v113 = 0u;
                v112 = 0u;
                v114 = 3;
                v115[0] = 0;
                v116 = 0;
                operator delete(v138.__r_.__value_.__l.__data_);
              }

              else
              {
                v111 = v138;
                v112 = 0u;
                v113 = 0u;
                v114 = 3;
                v115[0] = 0;
                v116 = 0;
              }

              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&buf, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
              }

              else
              {
                buf = v111;
              }

              if (SBYTE7(v113) < 0)
              {
                std::string::__init_copy_ctor_external(&v122, v112, *(&v112 + 1));
              }

              else
              {
                *&v122.__r_.__value_.__l.__data_ = v112;
                v122.__r_.__value_.__r.__words[2] = v113;
              }

              *&v123 = *(&v113 + 1);
              DWORD2(v123) = v114;
              LOBYTE(v124) = 0;
              LOBYTE(v125) = 0;
              if (v116 == 1)
              {
                MEMORY[0x2318BDB20](&v124, v115);
                LOBYTE(v125) = 1;
              }

              *(&v125 + 1) = 0;
              language_modeling::v1::CompletionStem::prefix(&v108, v11);
              shouldSuppress = TIInlineCompletionGeneratorImpl::_shouldSuppress(v10, &buf, &v108);
              if (v110 < 0)
              {
                operator delete(v108);
              }

              if (v125 == 1)
              {
                language_modeling::v1::InlineCompletion::~InlineCompletion(&v124);
              }

              if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v122.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              TIInlineCompletionEventDispatcher::did_generate_cached_completion(**(v10 + 744), *(*(v10 + 744) + 8), &v111, &v111, v11, shouldSuppress);
              if (!shouldSuppress)
              {
                if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v141, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
                }

                else
                {
                  v141 = v111;
                }

                if (SBYTE7(v113) < 0)
                {
                  std::string::__init_copy_ctor_external(&v142, v112, *(&v112 + 1));
                }

                else
                {
                  *&v142.__r_.__value_.__l.__data_ = v112;
                  v142.__r_.__value_.__r.__words[2] = v113;
                }

                v143 = *(&v113 + 1);
                v144 = v114;
                v145[0] = 0;
                v146 = 0;
                if (v116 == 1)
                {
                  MEMORY[0x2318BDB20](v145, v115);
                  v146 = 1;
                }

                memset(&v107, 0, sizeof(v107));
                std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion const*,TIInlineCompletion const*>();
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v141, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
                }

                else
                {
                  v141 = v111;
                }

                v94 = &v141;
                if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v94 = v141.__r_.__value_.__r.__words[0];
                }

                LODWORD(v139.__r_.__value_.__l.__data_) = 136315394;
                *(v139.__r_.__value_.__r.__words + 4) = "cachedCompletionsForContextAndStem";
                WORD2(v139.__r_.__value_.__r.__words[1]) = 2080;
                *(&v139.__r_.__value_.__r.__words[1] + 6) = v94;
                _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: Greeting completion --> %s was found but was suppressed", &v139, 0x16u);
                if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v141.__r_.__value_.__l.__data_);
                }
              }

              memset(&v139, 0, sizeof(v139));
              memset(&v141, 0, sizeof(v141));
              v140 = 1;
              v107.__r_.__value_.__r.__words[0] = &v141;
              std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&v107);
              if (v116 == 1)
              {
                language_modeling::v1::InlineCompletion::~InlineCompletion(v115);
              }

              if (SBYTE7(v113) < 0)
              {
                operator delete(v112);
              }

              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v111.__r_.__value_.__l.__data_);
              }

              if (v98 < 0)
              {
                operator delete(v132.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v139.__r_.__value_.__s.__data_[0] = 0;
              v140 = 0;
            }

            if (BYTE8(v151) != 1)
            {
              goto LABEL_254;
            }

LABEL_248:
            if (LOBYTE(v150[1]) == 1)
            {
              language_modeling::v1::InlineCompletion::~InlineCompletion(v150);
            }

            if (SHIBYTE(__s[3]) < 0)
            {
              operator delete(__s[1]);
            }

            if (SHIBYTE(__s[0]) < 0)
            {
              operator delete(__sz[0]);
              if (v34)
              {
                goto LABEL_255;
              }
            }

            else
            {
LABEL_254:
              if (v34)
              {
LABEL_255:
                v67 = 0uLL;
                memset(&v111, 0, sizeof(v111));
                size = v139.__r_.__value_.__l.__size_;
                v68 = v139.__r_.__value_.__r.__words[0];
                if (v139.__r_.__value_.__r.__words[0] == v139.__r_.__value_.__l.__size_)
                {
                  v85 = 0;
                }

                else
                {
                  do
                  {
                    KB::LanguageModel::PredictionInfo::PredictionInfo(&buf, v68, v102);
                    v70 = v111.__r_.__value_.__l.__size_;
                    if (v111.__r_.__value_.__l.__size_ >= v111.__r_.__value_.__r.__words[2])
                    {
                      v75 = 0xCCCCCCCCCCCCCCCDLL * ((v111.__r_.__value_.__l.__size_ - v111.__r_.__value_.__r.__words[0]) >> 5);
                      v76 = v75 + 1;
                      if (v75 + 1 > 0x199999999999999)
                      {
                        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                      }

                      if (0x999999999999999ALL * ((v111.__r_.__value_.__r.__words[2] - v111.__r_.__value_.__r.__words[0]) >> 5) > v76)
                      {
                        v76 = 0x999999999999999ALL * ((v111.__r_.__value_.__r.__words[2] - v111.__r_.__value_.__r.__words[0]) >> 5);
                      }

                      if (0xCCCCCCCCCCCCCCCDLL * ((v111.__r_.__value_.__r.__words[2] - v111.__r_.__value_.__r.__words[0]) >> 5) >= 0xCCCCCCCCCCCCCCLL)
                      {
                        v77 = 0x199999999999999;
                      }

                      else
                      {
                        v77 = v76;
                      }

                      __s[2] = &v111;
                      if (v77)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v77);
                      }

                      v78 = 32 * ((v111.__r_.__value_.__l.__size_ - v111.__r_.__value_.__r.__words[0]) >> 5);
                      *v78 = 0;
                      *(v78 + 8) = 0;
                      *(v78 + 16) = 0;
                      *v78 = buf;
                      memset(&buf, 0, sizeof(buf));
                      v79 = *&v122.__r_.__value_.__l.__data_;
                      *(v78 + 40) = v122.__r_.__value_.__r.__words[2];
                      *(v78 + 24) = v79;
                      v80 = v123;
                      *(v78 + 64) = v124;
                      *(v78 + 48) = v80;
                      v124 = 0;
                      v123 = 0uLL;
                      v81 = v125;
                      *(v78 + 88) = v126;
                      *(v78 + 72) = v81;
                      v126 = 0;
                      v125 = 0uLL;
                      *(v78 + 96) = 0;
                      *(v78 + 104) = 0;
                      *(v78 + 112) = 0;
                      *(v78 + 96) = *v127;
                      *(v78 + 112) = v128;
                      v127[0] = 0;
                      v127[1] = 0;
                      v128 = 0;
                      *(v78 + 120) = 0;
                      *(v78 + 128) = 0;
                      *(v78 + 136) = 0;
                      *(v78 + 120) = v129;
                      *(v78 + 136) = v130;
                      v129 = 0uLL;
                      v130 = 0;
                      *(v78 + 144) = v131;
                      v74 = 160 * v75 + 160;
                      v82 = 160 * v75 + v111.__r_.__value_.__r.__words[0] - v111.__r_.__value_.__l.__size_;
                      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_, v82);
                      v83 = v111.__r_.__value_.__r.__words[0];
                      v84 = v111.__r_.__value_.__r.__words[2];
                      v111.__r_.__value_.__r.__words[0] = v82;
                      *&v111.__r_.__value_.__r.__words[1] = v74;
                      __s[0] = v83;
                      __s[1] = v84;
                      __sz[1] = v83;
                      __sz[0] = v83;
                      std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(__sz);
                    }

                    else
                    {
                      *v111.__r_.__value_.__l.__size_ = 0uLL;
                      *(v70 + 16) = 0;
                      *v70 = buf;
                      memset(&buf, 0, sizeof(buf));
                      v71 = v122.__r_.__value_.__r.__words[2];
                      *(v70 + 24) = *&v122.__r_.__value_.__l.__data_;
                      *(v70 + 40) = v71;
                      v72 = v124;
                      *(v70 + 48) = v123;
                      *(v70 + 64) = v72;
                      v123 = 0uLL;
                      v73 = v125;
                      *(v70 + 88) = v126;
                      *(v70 + 96) = 0;
                      *(v70 + 72) = v73;
                      v126 = 0;
                      v124 = 0;
                      v125 = 0uLL;
                      *(v70 + 104) = 0;
                      *(v70 + 112) = 0;
                      *(v70 + 96) = *v127;
                      v127[0] = 0;
                      v127[1] = 0;
                      *(v70 + 112) = v128;
                      *(v70 + 120) = 0;
                      v128 = 0;
                      *(v70 + 128) = 0;
                      *(v70 + 136) = 0;
                      *(v70 + 120) = v129;
                      *(v70 + 136) = v130;
                      v129 = 0uLL;
                      v130 = 0;
                      *(v70 + 144) = v131;
                      v74 = v70 + 160;
                    }

                    v111.__r_.__value_.__l.__size_ = v74;
                    __sz[0] = &v129;
                    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__sz);
                    __sz[0] = v127;
                    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__sz);
                    if (SHIBYTE(v126) < 0)
                    {
                      operator delete(v125);
                    }

                    if (SHIBYTE(v124) < 0)
                    {
                      operator delete(v123);
                    }

                    if (buf.__r_.__value_.__r.__words[0])
                    {
                      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }

                    v68 += 5;
                  }

                  while (v68 != size);
                  v67 = *&v111.__r_.__value_.__l.__data_;
                  v85 = v111.__r_.__value_.__r.__words[2];
                  LOBYTE(v34) = v140;
                }

                *a5 = v67;
                *(a5 + 16) = v85;
                memset(&v111, 0, sizeof(v111));
                *(a5 + 24) = 1;
                buf.__r_.__value_.__r.__words[0] = &v111;
                std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&buf);
                if (v34)
                {
                  buf.__r_.__value_.__r.__words[0] = &v139;
                  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&buf);
                }

                buf.__r_.__value_.__r.__words[0] = v103;
                std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](&buf);
LABEL_281:
                v87 = *MEMORY[0x277D85DE8];
                return;
              }
            }

            v86 = *(a1 + 184);
            v118 = v99 | (v102 << 32);
            std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](&v119, v101);
            KB::Candidate::Candidate(&v120, *v100);
            operator new();
          }

          if (SHIBYTE(__s[0]) < 0)
          {
            std::string::__init_copy_ctor_external(&v111, __sz[0], __sz[1]);
          }

          else
          {
            *&v111.__r_.__value_.__l.__data_ = *__sz;
            v111.__r_.__value_.__r.__words[2] = __s[0];
          }

          if (SHIBYTE(__s[3]) < 0)
          {
            std::string::__init_copy_ctor_external(&v112, __s[1], __s[2]);
          }

          else
          {
            v112 = *&__s[1];
            *&v113 = __s[3];
          }

          *(&v113 + 1) = v149;
          v114 = DWORD2(v149);
          v115[0] = 0;
          v116 = 0;
          if (LOBYTE(v150[1]) == 1)
          {
            MEMORY[0x2318BDB20](v115, v150);
            v116 = 1;
          }

          if (BYTE8(v151))
          {
            completionFromCacheElement(&v141, __sz);
            if (BYTE8(v151))
            {
              if (SHIBYTE(__s[0]) < 0)
              {
                std::string::__init_copy_ctor_external(&buf, __sz[0], __sz[1]);
              }

              else
              {
                *&buf.__r_.__value_.__l.__data_ = *__sz;
                buf.__r_.__value_.__r.__words[2] = __s[0];
              }

              if (SHIBYTE(__s[3]) < 0)
              {
                std::string::__init_copy_ctor_external(&v122, __s[1], __s[2]);
              }

              else
              {
                v122 = *&__s[1];
              }

              *&v123 = v149;
              DWORD2(v123) = DWORD2(v149);
              LOBYTE(v124) = 0;
              LOBYTE(v125) = 0;
              if (LOBYTE(v150[1]) == 1)
              {
                MEMORY[0x2318BDB20](&v124, v150);
                LOBYTE(v125) = 1;
              }

              *(&v125 + 1) = v151;
              language_modeling::v1::CompletionStem::prefix(&v108, v11);
              v35 = TIInlineCompletionGeneratorImpl::_shouldSuppress(v10, &buf, &v108);
              if (v110 < 0)
              {
                operator delete(v108);
              }

              if (v125 == 1)
              {
                language_modeling::v1::InlineCompletion::~InlineCompletion(&v124);
              }

              if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v122.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              TIInlineCompletionEventDispatcher::did_generate_cached_completion(**(v10 + 744), *(*(v10 + 744) + 8), &v141, &v111, v11, v35);
              language_modeling::v1::CompletionStem::prefix(&v132, v11);
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v139, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
              }

              else
              {
                v139 = v141;
              }

              v36 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
              if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v37 = v132.__r_.__value_.__l.__size_;
              }

              v38 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
              v39 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v38 = v139.__r_.__value_.__l.__size_;
              }

              if (v37 == v38)
              {
                if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v40 = &v132;
                }

                else
                {
                  v40 = v132.__r_.__value_.__r.__words[0];
                }

                if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v41 = &v139;
                }

                else
                {
                  v41 = v139.__r_.__value_.__r.__words[0];
                }

                v42 = memcmp(v40, v41, v37) == 0;
              }

              else
              {
                v42 = 0;
              }

              v43 = v35 != 2 && v42;
              if (v39 < 0)
              {
                operator delete(v139.__r_.__value_.__l.__data_);
                if ((*(&v132.__r_.__value_.__s + 23) & 0x80) == 0)
                {
LABEL_108:
                  if (!v43)
                  {
                    goto LABEL_167;
                  }

                  goto LABEL_112;
                }
              }

              else if ((v36 & 0x80) == 0)
              {
                goto LABEL_108;
              }

              operator delete(v132.__r_.__value_.__l.__data_);
              if (!v43)
              {
LABEL_167:
                if (!v35)
                {
                  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v132, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v132 = v141;
                  }

                  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v133, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v133 = v142;
                  }

                  v134 = v143;
                  v135 = v144;
                  v136[0] = 0;
                  v137 = 0;
                  if (v146 == 1)
                  {
                    MEMORY[0x2318BDB20](v136, v145);
                    v137 = 1;
                  }

                  memset(&v138, 0, sizeof(v138));
                  std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion const*,TIInlineCompletion const*>();
                }

                v49 = MEMORY[0x277D86220];
                v50 = MEMORY[0x277D86220];
                if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_169;
                }

                if (BYTE8(v151))
                {
                  if (SHIBYTE(__s[0]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v132, __sz[0], __sz[1]);
                  }

                  else
                  {
                    *&v132.__r_.__value_.__l.__data_ = *__sz;
                    v132.__r_.__value_.__r.__words[2] = __s[0];
                  }

                  v93 = &v132;
                  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v93 = v132.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v139.__r_.__value_.__l.__data_) = 136315394;
                  *(v139.__r_.__value_.__r.__words + 4) = "cachedCompletionsForContextAndStem";
                  WORD2(v139.__r_.__value_.__r.__words[1]) = 2080;
                  *(&v139.__r_.__value_.__r.__words[1] + 6) = v93;
                  _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: Cached completion --> %s was found but was suppressed or blocked by negative learning", &v139, 0x16u);
                  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v132.__r_.__value_.__l.__data_);
                  }

LABEL_169:

                  memset(&v139, 0, sizeof(v139));
                  memset(&v132, 0, sizeof(v132));
                  v140 = 1;
                  v138.__r_.__value_.__r.__words[0] = &v132;
                  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&v138);
                  if (v146 == 1)
                  {
                    language_modeling::v1::InlineCompletion::~InlineCompletion(v145);
                  }

                  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v142.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v141.__r_.__value_.__l.__data_);
                  }

                  if (v116 == 1)
                  {
                    language_modeling::v1::InlineCompletion::~InlineCompletion(v115);
                  }

                  if (SBYTE7(v113) < 0)
                  {
                    operator delete(v112);
                  }

                  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v111.__r_.__value_.__l.__data_);
                  }

                  v34 = 1;
                  goto LABEL_248;
                }

                goto LABEL_338;
              }

LABEL_112:
              v44 = *(v10 + 744);
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v107, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
              }

              else
              {
                v107 = v141;
              }

              if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = &v107;
              }

              else
              {
                v46 = v107.__r_.__value_.__r.__words[0];
              }

              KB::String::String(&v132, v46);
              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v106, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
              }

              else
              {
                v106 = v111;
              }

              if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = &v106;
              }

              else
              {
                v47 = v106.__r_.__value_.__r.__words[0];
              }

              KB::String::String(&v139, v47);
              language_modeling::v1::CompletionStem::prefix(v104, v11);
              if (v105 >= 0)
              {
                v48 = v104;
              }

              else
              {
                v48 = v104[0];
              }

              KB::String::String(&v138, v48);
              TIInlineCompletionEventDispatcher::did_register_completion_acceptance(*v44, *(v44 + 8), &v132, &v139, &v138, 2);
              if (v138.__r_.__value_.__l.__size_ && v138.__r_.__value_.__s.__data_[6] == 1)
              {
                free(v138.__r_.__value_.__l.__size_);
              }

              if (v105 < 0)
              {
                operator delete(v104[0]);
              }

              if (v139.__r_.__value_.__l.__size_ && v139.__r_.__value_.__s.__data_[6] == 1)
              {
                free(v139.__r_.__value_.__l.__size_);
              }

              if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v106.__r_.__value_.__l.__data_);
              }

              if (v132.__r_.__value_.__l.__size_ && v132.__r_.__value_.__s.__data_[6] == 1)
              {
                free(v132.__r_.__value_.__l.__size_);
              }

              if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v107.__r_.__value_.__l.__data_);
              }

              goto LABEL_167;
            }
          }

LABEL_338:
          std::__throw_bad_optional_access[abi:nn200100]();
          goto LABEL_339;
        }

        v96 = v12;
        if (v126 != *(&v125 + 1))
        {
          v97 = a5;
          if (v15 <= 1)
          {
            v21 = 1;
          }

          else
          {
            v21 = 0xAAAAAAAAAAAAAAABLL * ((v126 - *(&v125 + 1)) >> 3);
          }

          v22 = *(a3 + 10);
          v23 = v21;
          while (1)
          {
            v24 = *(v22 + 23);
            if (v24 >= 0)
            {
              v25 = *(v22 + 23);
            }

            else
            {
              v25 = *(v22 + 8);
            }

            v26 = *(v14 + 23);
            v27 = v26;
            if ((v26 & 0x80u) != 0)
            {
              v26 = v14[1];
            }

            if (v25 != v26)
            {
              break;
            }

            v28 = v24 >= 0 ? v22 : *v22;
            v29 = *v14;
            v30 = v27 >= 0 ? v14 : *v14;
            if (memcmp(v28, v30, v25))
            {
              break;
            }

            v14 += 3;
            v22 += 24;
            if (!--v23)
            {
              a5 = v97;
              goto LABEL_194;
            }
          }

          LOBYTE(__sz[0]) = 0;
          BYTE8(v151) = 0;
          a5 = v97;
          goto LABEL_9;
        }

        v21 = 0;
LABEL_194:
        std::string::basic_string[abi:nn200100]<0>(&v132, "");
        v51 = v17 > v21;
        v52 = v17 - v21;
        if (v51)
        {
          v53 = (v16 + 24 * v21);
          do
          {
            v54 = v53;
            if (v53[23] < 0)
            {
              v54 = *v53;
            }

            std::string::basic_string[abi:nn200100]<0>(&v111, v54);
            v55 = std::string::append(&v111, " ", 1uLL);
            v56 = v55->__r_.__value_.__r.__words[2];
            *__sz = *&v55->__r_.__value_.__l.__data_;
            __s[0] = v56;
            v55->__r_.__value_.__l.__size_ = 0;
            v55->__r_.__value_.__r.__words[2] = 0;
            v55->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__s[0]) >= 0)
            {
              v57 = __sz;
            }

            else
            {
              v57 = __sz[0];
            }

            if (SHIBYTE(__s[0]) >= 0)
            {
              v58 = HIBYTE(__s[0]);
            }

            else
            {
              v58 = __sz[1];
            }

            std::string::append(&v132, v57, v58);
            if (SHIBYTE(__s[0]) < 0)
            {
              operator delete(__sz[0]);
            }

            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

            v53 += 24;
            --v52;
          }

          while (v52);
        }

        if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v132.__r_.__value_.__l.__size_;
        }

        if ((v110 & 0x80u) == 0)
        {
          v60 = v110;
        }

        else
        {
          v60 = v109;
        }

        std::string::basic_string[abi:nn200100](&v139, v60 + v59);
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v139;
        }

        else
        {
          v61 = v139.__r_.__value_.__r.__words[0];
        }

        if (v59)
        {
          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v62 = &v132;
          }

          else
          {
            v62 = v132.__r_.__value_.__r.__words[0];
          }

          memmove(v61, v62, v59);
        }

        v63 = v61 + v59;
        if (v60)
        {
          if ((v110 & 0x80u) == 0)
          {
            v64 = &v108;
          }

          else
          {
            v64 = v108;
          }

          memmove(v63, v64, v60);
        }

        v63[v60] = 0;
        v65 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        v66 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v65 = v139.__r_.__value_.__l.__size_;
        }

        if (v65 < v96)
        {
          LOBYTE(__sz[0]) = 0;
          BYTE8(v151) = 0;
LABEL_320:
          if (v66 < 0)
          {
            operator delete(v139.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          goto LABEL_9;
        }

        if ((*(v10 + 288) & 1) == 0)
        {
          goto LABEL_338;
        }

        if (*(v10 + 231) < 0)
        {
          std::string::__init_copy_ctor_external(&v141, *(v10 + 208), *(v10 + 216));
        }

        else
        {
          v141 = *(v10 + 208);
        }

        if (*(v10 + 255) < 0)
        {
          std::string::__init_copy_ctor_external(&v142, *(v10 + 232), *(v10 + 240));
        }

        else
        {
          v142 = *(v10 + 232);
        }

        v143 = *(v10 + 256);
        v144 = *(v10 + 264);
        v145[0] = 0;
        v146 = 0;
        if (*(v10 + 280) == 1)
        {
          MEMORY[0x2318BDB20](v145, v10 + 272);
          v146 = 1;
        }

        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v138, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
        }

        else
        {
          v138 = v141;
        }

        v88 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        v89 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v88 = v138.__r_.__value_.__l.__size_;
        }

        v90 = SHIBYTE(v139.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v90 = v139.__r_.__value_.__l.__size_;
          if (v88 < v139.__r_.__value_.__l.__size_)
          {
            goto LABEL_310;
          }

          v91 = v139.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v88 < SHIBYTE(v139.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_310;
          }

          v91 = &v139;
        }

        if (std::string::starts_with[abi:nn200100](&v138, v91, v90))
        {
          if ((*(v10 + 288) & 1) == 0)
          {
            goto LABEL_338;
          }

          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v92 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v92 = v132.__r_.__value_.__l.__size_;
          }

          TIInlineCompletion::TIInlineCompletion(&v111, (v10 + 208));
          v117 = v92;
          std::pair<TIInlineCompletion,unsigned long>::pair[abi:nn200100](__sz, &v111);
          BYTE8(v151) = 1;
          std::pair<TIInlineCompletion,unsigned long>::~pair(&v111);
          goto LABEL_311;
        }

LABEL_310:
        LOBYTE(__sz[0]) = 0;
        BYTE8(v151) = 0;
LABEL_311:
        if (v89 < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        if (v146 == 1)
        {
          language_modeling::v1::InlineCompletion::~InlineCompletion(v145);
        }

        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v142.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v141.__r_.__value_.__l.__data_);
        }

        v66 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        goto LABEL_320;
      }

      if (KB::LanguageModelContext::is_linguistically_void(a3))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = "cached_candidate";
          v19 = MEMORY[0x277D86220];
          v20 = "%s  TIInlineCompletionsCache:: Context is not linguistically void. Also prefix is empty - will not look into cache.";
LABEL_46:
          _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, v20, &buf, 0xCu);
        }
      }

      else
      {
        v31 = *(a3 + 3);
        if (v31 == *(a3 + 2) || *(v31 - 8) >> 34 > 0x7CuLL)
        {
          goto LABEL_6;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = "cached_candidate";
          v19 = MEMORY[0x277D86220];
          v20 = "%s  TIInlineCompletionsCache:: Context is not linguistically void but ends with a sentence delimiter or special token. Also prefix is empty - will not look into cache.";
          goto LABEL_46;
        }
      }
    }

    LOBYTE(__sz[0]) = 0;
    BYTE8(v151) = 0;
    goto LABEL_48;
  }

  memset(&v111, 0, sizeof(v111));
  bzero(&buf, 0x3E8uLL);
  KB::Candidate::Candidate(&buf);
  v152 = 0;
  v151 = 0u;
  *v150 = 0u;
  v149 = 0u;
  memset(__s, 0, sizeof(__s));
  *__sz = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(v150);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v150[1]);
  v151 = 0uLL;
  v152 = 0;
  v18 = *(a4 + 24);
  if (v18)
  {
    (*(*v18 + 48))(v18, &v111, &buf, __sz);
    v141.__r_.__value_.__r.__words[0] = &v151;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v141);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v150[1]);
    language_modeling::v1::LinguisticContext::~LinguisticContext(v150);
    if (__s[0])
    {
      __s[1] = __s[0];
      operator delete(__s[0]);
    }

    if (__sz[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](__sz[1]);
    }

    KB::Candidate::~Candidate(&buf);
    *a5 = 0;
    *(a5 + 24) = 0;
    buf.__r_.__value_.__r.__words[0] = &v111;
    std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&buf);
    goto LABEL_281;
  }

LABEL_339:
  std::__throw_bad_function_call[abi:nn200100]();
  v95 = std::__throw_bad_weak_ptr[abi:nn200100]();
  KB::Candidate::Candidate(v95);
}