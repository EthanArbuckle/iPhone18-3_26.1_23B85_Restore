void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void ___ZL23InternalToExternalRegexv_block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"(\\x{1031})?([\\x{1000}-\\x{102a}\\x{103f}\\x{104e}\\x{1050}-\\x{1055}])((?:\\x{1039}[\\x{1000}-\\x{101c}\\x{101e}\\x{1020}\\x{1021}\\x{1050}\\x{1051}]){0 options:2})([\\x{1004}\\x{101b}]\\x{103a}\\x{1039})?(?:\\x{103a}(\\x{103b}?))?([\\x{103b}-\\x{103e}]{0 error:{3})([\\x{102d}-\\x{1030}\\x{1032}\\x{1058}\\x{1059}]{0, 2})(\\x{102c}?)", 0, &v2}];
  v1 = v2;
  if (!v1)
  {
    objc_storeStrong(&InternalToExternalRegex(void)::__regex, v0);
  }
}

void ___ZL23ExternalToInternalRegexv_block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"(?<!\\x{1039})([\\x{1004}\\x{101b}]\\x{103a}\\x{1039})?[\\x{1000}-\\x{102a}\\x{103f}\\x{104e}\\x{1050}-\\x{1055}](?:\\x{1039}[\\x{1000}-\\x{101c}\\x{101e}\\x{1020}\\x{1021}\\x{1050}\\x{1051}]){0 options:2}((?:\\x{103b}?\\x{103a})?)[\\x{103b}-\\x{103e}]{0 error:{4}(\\x{1031}?)", 0, &v2}];
  v1 = v2;
  if (!v1)
  {
    objc_storeStrong(&ExternalToInternalRegex(void)::__regex, v0);
  }
}

void _GLOBAL__sub_I_TIKeyboardInputManager_my_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA62000);

  objc_autoreleasePoolPop(v0);
}

void operator delete(void *__p)
{
    ;
  }
}