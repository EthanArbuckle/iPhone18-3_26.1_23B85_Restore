uint64_t ___loggingAppDomain_block_invoke()
{
  result = [@"com.apple.triald" UTF8String];
  _MergedGlobals_15 = result;
  return result;
}

id TRILogCategory_ClientFramework()
{
  if (TRILogCategory_ClientFramework_onceToken != -1)
  {
    dispatch_once(&TRILogCategory_ClientFramework_onceToken, &__block_literal_global_2);
  }

  v1 = TRILogCategory_ClientFramework_log;

  return v1;
}

void sub_22EA6CFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__CFString *makeNSString(NSString *a1, AFBBufRef *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  [(AFBBufRef *)v6 retainBuf];
  v7 = CFStringCreateWithCStringNoCopy(0, a3, 0x8000100u, [(AFBBufRef *)v6 deallocator]);
  if (!v7)
  {
    [(AFBBufRef *)v6 releaseBuf];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to decode null-terminated string as UTF-8", v5];
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CED168] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  return v7;
}

id TRIValidateRampId(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString<TRIRampId> * _Nullable TRIValidateRampId(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"TRIStrongTypingProtocols.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"rampId"}];
  }

  if ([v1 triIsPathSafePlausibleUniqueId])
  {
    v2 = v1;
  }

  else
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "Identifier rejected as unsuitable for a ramp ID: %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

id TRIValidateFactorPackId(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString<TRIFactorPackId> * _Nullable TRIValidateFactorPackId(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"TRIStrongTypingProtocols.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];
  }

  if ([v1 triIsPathSafePlausibleUniqueId])
  {
    v2 = v1;
  }

  else
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "Identifier rejected as unsuitable for a factor pack ID: %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_22EA6FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

FactorLevel *FactorLevel::level_as_string_val(FactorLevel *this)
{
  v1 = &this[-*this->var0];
  v2 = *v1->var0;
  if (v2 >= 7 && *v1[6].var0 && (v2 >= 9 ? (v3 = this[*v1[6].var0].var0[0] == 2) : (v3 = 0), v3 && (v4 = *v1[8].var0) != 0))
  {
    return &this[v4 + *this[v4].var0];
  }

  else
  {
    return 0;
  }
}

id TRIValidateFactorPackSetId(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString<TRIFactorPackSetId> * _Nullable TRIValidateFactorPackSetId(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"TRIStrongTypingProtocols.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
  }

  if ([v1 triIsPathSafePlausibleUniqueId])
  {
    v2 = v1;
  }

  else
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "Identifier rejected as unsuitable for a factor pack set ID: %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyOffset(apple::aiml::flatbuffers2::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL FactorLevel::Verify(FactorLevel *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (!result)
  {
    return result;
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
  if (!result)
  {
    return result;
  }

  v5 = &this[-*this->var0];
  if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
  {
    v7 = &this[v6 + *this[v6].var0];
  }

  else
  {
    v7 = 0;
  }

  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
  if (!result)
  {
    return result;
  }

  v8 = &this[-*this->var0];
  v9 = *v8->var0;
  if (v9 >= 7)
  {
    if (*v8[6].var0)
    {
      result = 0;
      v10 = *(a2 + 1);
      if (v10 < 2 || v10 - 1 < this[*v8[6].var0 - *a2].var0)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  if (v9 < 9)
  {
    if (v9 < 7)
    {
      goto LABEL_40;
    }
  }

  else if (*v8[8].var0)
  {
    v11 = &this[*v8[8].var0 + *this[*v8[8].var0].var0];
    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:
  if (*v8[6].var0)
  {
    v12 = this[*v8[6].var0].var0[0];
    if (v12 > 3)
    {
      if (v12 == 4)
      {
LABEL_30:
        result = 0;
        v13 = *(a2 + 1);
        if (v13 < 9)
        {
          return result;
        }

        v14 = &v11[-*a2];
        v15 = v13 - 8;
        goto LABEL_34;
      }

      if (v12 != 5)
      {
        if (v12 == 6)
        {
          if (v11)
          {
            result = MobileAssetReference::Verify(v11, a2);
            if (!result)
            {
              return result;
            }
          }
        }

        goto LABEL_40;
      }

      if (v11 && !TrialManagedAsset::Verify(v11, a2))
      {
        return 0;
      }
    }

    else
    {
      if (v12 == 1)
      {
        result = 0;
        v16 = *(a2 + 1);
        if (v16 < 2)
        {
          return result;
        }

        v14 = &v11[-*a2];
        v15 = v16 - 1;
LABEL_34:
        if (v15 < v14)
        {
          return result;
        }

        goto LABEL_40;
      }

      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_40;
        }

        goto LABEL_30;
      }

      if (!apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11->var0))
      {
        return 0;
      }
    }
  }

LABEL_40:
  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 0xAu);
  if (!result)
  {
    return result;
  }

  v17 = *this->var0;
  if (*this[-v17].var0 < 0xBu)
  {
    goto LABEL_47;
  }

  if (*this[-v17 + 10].var0)
  {
    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*this[-v17 + 10].var0 + *this[*this[-v17 + 10].var0].var0].var0, 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v17 = *this->var0;
    if (*this[-v17].var0 < 0xBu)
    {
      goto LABEL_47;
    }
  }

  v18 = *this[-v17 + 10].var0;
  if (!v18)
  {
LABEL_47:
    v19 = 0;
  }

  else
  {
    v19 = &this[v18 + *this[v18].var0];
  }

  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<FactorMetadataKeyValue>(a2, v19);
  if (result)
  {
    v20 = &this[-*this->var0];
    v21 = *v20->var0;
    if (v21 < 0xD || !*v20[12].var0 || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this[*v20[12].var0 - *a2].var0)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
      if (result)
      {
        v23 = v21 >= 0xF && *v20[14].var0 ? &this[*v20[14].var0 + *this[*v20[14].var0].var0] : 0;
        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v23->var0);
        if (result)
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
          if (result)
          {
            v24 = &this[-*this->var0];
            if (*v24->var0 >= 0x11u && (v25 = *v24[16].var0) != 0)
            {
              v26 = &this[v25 + *this[v25].var0];
            }

            else
            {
              v26 = 0;
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v26->var0);
            if (result)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
              if (result)
              {
                v27 = &this[-*this->var0];
                if (*v27->var0 >= 0x13u && (v28 = *v27[18].var0) != 0)
                {
                  v29 = &this[v28 + *this[v28].var0];
                }

                else
                {
                  v29 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v29->var0);
                if (result)
                {
                  v30 = &this[-*this->var0];
                  if (*v30->var0 < 0x15u || (v31 = *v30[20].var0) == 0 || (result = 0, v32 = *(a2 + 1), v32 >= 5) && v32 - 4 >= this[v31 - *a2].var0)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL VerifyCloudKitAssetSource(apple::aiml::flatbuffers2::Verifier *a1, CloudKitTreatmentRecordAsset *this, int a3)
{
  if (a3 == 2)
  {
    if (this)
    {
      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this->var0);
      if (!result)
      {
        return result;
      }

      --*(a1 + 4);
    }

    return 1;
  }

  if (a3 != 1 || !this)
  {
    return 1;
  }

  return CloudKitTreatmentRecordAsset::Verify(this, a1);
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<FactorMetadataKeyValue>(apple::aiml::flatbuffers2::Verifier *a1, FactorMetadataKeyValue *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2->var0)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 4;
  do
  {
    result = FactorMetadataKeyValue::Verify(&v5[*v5->var0], a1);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2->var0);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL TrialManagedAsset::Verify(TrialManagedAsset *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (!result)
  {
    return result;
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
  if (!result)
  {
    return result;
  }

  v5 = &this[-*this->var0];
  if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
  {
    v7 = &this[v6 + *this[v6].var0];
  }

  else
  {
    v7 = 0;
  }

  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
  if (!result)
  {
    return result;
  }

  v8 = &this[-*this->var0];
  v9 = *v8->var0;
  if (v9 >= 7)
  {
    if (*v8[6].var0)
    {
      result = 0;
      v10 = *(a2 + 1);
      if (v10 < 2 || v10 - 1 < this[*v8[6].var0 - *a2].var0)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  v11 = v9 >= 9 && *v8[8].var0 ? &this[*v8[8].var0 + *this[*v8[8].var0].var0] : 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11->var0);
  if (!result)
  {
    return result;
  }

  v12 = &this[-*this->var0];
  v13 = *v12->var0;
  if (v13 >= 0xB)
  {
    if (*v12[10].var0)
    {
      result = 0;
      v14 = *(a2 + 1);
      if (v14 < 2 || v14 - 1 < this[*v12[10].var0 - *a2].var0)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 0xCu);
  if (!result)
  {
    return result;
  }

  if (v13 < 0xD)
  {
    v15 = 0;
    if (v13 < 0xB)
    {
      goto LABEL_31;
    }
  }

  else if (*v12[12].var0)
  {
    v15 = &this[*v12[12].var0 + *this[*v12[12].var0].var0];
  }

  else
  {
    v15 = 0;
  }

  if (*v12[10].var0)
  {
    v16 = this[*v12[10].var0].var0[0];
    goto LABEL_32;
  }

LABEL_31:
  v16 = 0;
LABEL_32:
  result = VerifyCloudKitAssetSource(a2, v15, v16);
  if (result)
  {
    v17 = &this[-*this->var0];
    v18 = *v17->var0;
    if (v18 < 0xF || (!*v17[14].var0 || (result = 0, v19 = *(a2 + 1), v19 >= 2) && v19 - 1 >= this[*v17[14].var0 - *a2].var0) && (v18 < 0x11 || !*v17[16].var0 || (result = 0, v20 = *(a2 + 1), v20 >= 9) && v20 - 8 >= this[*v17[16].var0 - *a2].var0))
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
      if (result)
      {
        if (v18 >= 0x13 && *v17[18].var0)
        {
          v21 = &this[*v17[18].var0 + *this[*v17[18].var0].var0];
        }

        else
        {
          v21 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v21->var0);
        if (result)
        {
          v22 = &this[-*this->var0];
          if (*v22->var0 < 0x15u || (v23 = *v22[20].var0) == 0 || (result = 0, v24 = *(a2 + 1), v24 >= 2) && v24 - 1 >= this[v23 - *a2].var0)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL CloudKitTreatmentRecordAsset::Verify(CloudKitTreatmentRecordAsset *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    v5 = &this[-*this->var0];
    v6 = *v5->var0;
    if (v6 < 5 || !*v5[4].var0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this[*v5[4].var0 - *a2].var0)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 6u);
      if (result)
      {
        if (v6 >= 7 && *v5[6].var0)
        {
          v8 = &this[*v5[6].var0 + *this[*v5[6].var0].var0];
        }

        else
        {
          v8 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v8->var0);
        if (result)
        {
          v9 = &this[-*this->var0];
          v10 = *v9->var0;
          if (v10 < 9 || (!*v9[8].var0 || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this[*v9[8].var0 - *a2].var0) && (v10 < 0xB || (v12 = *v9[10].var0) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 2) && v13 - 1 >= this[v12 - *a2].var0))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL FactorMetadataKeyValue::Verify(FactorMetadataKeyValue *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
      {
        v7 = &this[v6 + *this[v6].var0];
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 6u);
        if (result)
        {
          v8 = &this[-*this->var0];
          if (*v8->var0 >= 7u && (v9 = *v8[6].var0) != 0)
          {
            v10 = &this[v9 + *this[v9].var0];
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10->var0);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

FastFactorLevels *FastFactorLevels::source_as_defaults(FastFactorLevels *this)
{
  v1 = &this[-*this->var0];
  v2 = *v1->var0;
  if (v2 >= 7 && *v1[6].var0 && (v2 >= 9 ? (v3 = this[*v1[6].var0].var0[0] == 3) : (v3 = 0), v3 && (v4 = *v1[8].var0) != 0))
  {
    return &this[v4 + *this[v4].var0];
  }

  else
  {
    return 0;
  }
}

BOOL MobileAssetReference::Verify(MobileAssetReference *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
      {
        v7 = &this[v6 + *this[v6].var0];
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 6u);
        if (result)
        {
          v8 = &this[-*this->var0];
          if (*v8->var0 >= 7u && (v9 = *v8[6].var0) != 0)
          {
            v10 = &this[v9 + *this[v9].var0];
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10->var0);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
            if (result)
            {
              v11 = &this[-*this->var0];
              if (*v11->var0 >= 9u && (v12 = *v11[8].var0) != 0)
              {
                v13 = &this[v12 + *this[v12].var0];
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13->var0);
              if (result)
              {
                v14 = &this[-*this->var0];
                v15 = *v14->var0;
                if (v15 < 0xB || (!*v14[10].var0 || (result = 0, v16 = *(a2 + 1), v16 >= 2) && v16 - 1 >= this[*v14[10].var0 - *a2].var0) && (v15 < 0xD || (!*v14[12].var0 || (result = 0, v17 = *(a2 + 1), v17 >= 2) && v17 - 1 >= this[*v14[12].var0 - *a2].var0) && (v15 < 0xF || !*v14[14].var0 || (result = 0, v18 = *(a2 + 1), v18 >= 9) && v18 - 8 >= this[*v14[14].var0 - *a2].var0)))
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                  if (result)
                  {
                    if (v15 >= 0x11 && *v14[16].var0)
                    {
                      v19 = &this[*v14[16].var0 + *this[*v14[16].var0].var0];
                    }

                    else
                    {
                      v19 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19->var0);
                    if (result)
                    {
                      v20 = &this[-*this->var0];
                      if (*v20->var0 < 0x13u || (v21 = *v20[18].var0) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 2) && v22 - 1 >= this[v21 - *a2].var0)
                      {
                        --*(a2 + 4);
                        return 1;
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
  }

  return result;
}

unint64_t TRIPersistedNetworkBehavior_DiscretionaryBehavior_EnumDescriptor()
{
  if (!atomic_load(&TRIPersistedNetworkBehavior_DiscretionaryBehavior_EnumDescriptor_descriptor))
  {
    v1 = [MEMORY[0x277D73B70] allocDescriptorForName:@"TRIPersistedNetworkBehavior_DiscretionaryBehavior" valueNames:"Discretionary" values:&TRIPersistedNetworkBehavior_DiscretionaryBehavior_EnumDescriptor_values count:3 enumVerifier:TRIPersistedNetworkBehavior_DiscretionaryBehavior_IsValidValue extraTextFormatInfo:&unk_22EADC9B0];
    v2 = 0;
    atomic_compare_exchange_strong(&TRIPersistedNetworkBehavior_DiscretionaryBehavior_EnumDescriptor_descriptor, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&TRIPersistedNetworkBehavior_DiscretionaryBehavior_EnumDescriptor_descriptor);
}

unint64_t TRIPurgeabilityLevel_EnumDescriptor()
{
  if (!atomic_load(&TRIPurgeabilityLevel_EnumDescriptor_descriptor))
  {
    v1 = [MEMORY[0x277D73B70] allocDescriptorForName:@"TRIPurgeabilityLevel" valueNames:"LowDisk" values:&TRIPurgeabilityLevel_EnumDescriptor_values count:4 enumVerifier:TRIPurgeabilityLevel_IsValidValue];
    v2 = 0;
    atomic_compare_exchange_strong(&TRIPurgeabilityLevel_EnumDescriptor_descriptor, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&TRIPurgeabilityLevel_EnumDescriptor_descriptor);
}

uint64_t TRITripersistedEvaluationStatusRoot_FileDescriptor()
{
  result = TRITripersistedEvaluationStatusRoot_FileDescriptor_descriptor;
  if (!TRITripersistedEvaluationStatusRoot_FileDescriptor_descriptor)
  {
    result = [objc_alloc(MEMORY[0x277D73B78]) initWithPackage:@"TRI" objcPrefix:@"TRI" syntax:2];
    TRITripersistedEvaluationStatusRoot_FileDescriptor_descriptor = result;
  }

  return result;
}

uint64_t TRIPersistedFactorsState_ClearStateOneOfCase(void *a1)
{
  v2 = [objc_msgSend(objc_msgSend(a1 "descriptor")];

  return MEMORY[0x2821DBBD0](a1, v2, 0xFFFFFFFFLL, 0);
}

uint64_t TRITripersistedAllocationStatusRoot_FileDescriptor()
{
  result = TRITripersistedAllocationStatusRoot_FileDescriptor_descriptor;
  if (!TRITripersistedAllocationStatusRoot_FileDescriptor_descriptor)
  {
    result = [objc_alloc(MEMORY[0x277D73B78]) initWithPackage:@"TRI" objcPrefix:@"TRI" syntax:2];
    TRITripersistedAllocationStatusRoot_FileDescriptor_descriptor = result;
  }

  return result;
}

void sub_22EA78890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA78CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA79114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA79C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22EA7AA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7C92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    v15 = *MEMORY[0x277D73C08];
    a10 = *MEMORY[0x277D73C00];
    a11 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&a10 count:2];
    v17 = [v14 name];
    v18 = [v16 containsObject:v17];

    if (v18)
    {
      if (!*v12)
      {
        v19 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = [v19 initWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
        v21 = [*(v13 + 8) streamError];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v20;
        }

        objc_storeStrong(v12, v23);
      }

      if (v11)
      {
        objc_storeStrong(v11, *v12);
      }

      objc_end_catch();
      JUMPOUT(0x22EA7C890);
    }

    v24 = v14;
    objc_exception_throw(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA7CEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = *MEMORY[0x277D73C08];
    a10 = *MEMORY[0x277D73C00];
    a11 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&a10 count:2];
    v16 = [v13 name];
    v17 = [v15 containsObject:v16];

    if (v17)
    {
      v18 = (v12 + 24);
      if (!*(v12 + 24))
      {
        v19 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = [v19 initWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
        v21 = [*(v12 + 8) streamError];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v20;
        }

        objc_storeStrong(v18, v23);
      }

      if (v11)
      {
        objc_storeStrong(v11, *v18);
      }

      objc_end_catch();
      JUMPOUT(0x22EA7CE78);
    }

    v24 = v13;
    objc_exception_throw(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA7D1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7D6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7DD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7E1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA7FC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EA7FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA80220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA80974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA81194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EA844DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *TRIFBCloudKitContainerStringForValue(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27885E9F8[a1];
  }
}

__CFString *TRIFBCloudKitAssetSourceStringForValue(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27885EA10[a1];
  }
}

__CFString *TRIFBFilesystemAssetTypeStringForValue(int a1)
{
  v1 = @"TRIFBFilesystemAssetType_FILE";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"TRIFBFilesystemAssetType_DIR";
  }
}

__CFString *TRIFBLevelStringForValue(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_27885EA28[a1];
  }
}

BOOL TRIFBLevelIsValidValue(unsigned int a1)
{
  v1 = TRIFBLevelStringForValue(a1);
  v2 = v1 != 0;

  return v2;
}

__CFString *TRIFBSourceStringForValue(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27885EA60[a1];
  }
}

BOOL TRIFBSourceIsValidValue(int a1)
{
  v1 = a1 == 2 || a1 == 3;
  if (a1)
  {
    v2 = a1 == 1;
  }

  else
  {
    v2 = 1;
  }

  if (a1 <= 1)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v4 = *(this + 6);
  *(v4 - 4) = 0;
  v4 -= 4;
  *(this + 6) = v4;
  v5 = *(this + 4) - v4 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v6 = 4;
  }

  else
  {
    v6 = (*(this + 34) + 2);
  }

  *(this + 34) = v6;
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v6);
  v7 = (*(this + 6) - v6);
  *(this + 6) = v7;
  bzero(v7, v6);
  v8 = v5 - a2;
  if ((v5 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v9 = *(this + 6);
  if (!v9)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v9[1] = v8;
  *v9 = *(this + 34);
  v10 = *(this + 7);
  if (!v10)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v11 = *(this + 16);
  v12 = v10 - 8 * v11;
  if (v11)
  {
    v13 = (v10 - 8 * v11);
    do
    {
      v14 = *(v13 + 2);
      if (*(v9 + v14))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v15 = *v13;
      v13 += 2;
      *(v9 + v14) = v5 - v15;
    }

    while (v13 < v10);
  }

  *(this + 7) = v12;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v17 = *(this + 4);
  v16 = *(this + 5);
  LODWORD(v18) = v17 - v9 + v16;
  if (*(this + 81))
  {
    if (!v16)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v16 < v12)
    {
      v19 = *v9;
      v20 = v16 + v17;
      v21 = *(this + 5);
      while (1)
      {
        v18 = *v21;
        if (v19 == *(v20 - v18) && !memcmp((v20 - v18), v9, v19))
        {
          break;
        }

        if (++v21 >= v12)
        {
          LODWORD(v18) = v17 - v9 + v16;
          goto LABEL_21;
        }
      }

      v9 = (v9 + (v17 - v9 + v16 - v5));
      *(this + 6) = v9;
    }
  }

LABEL_21:
  if (v18 == v17 + v16 - v9)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v18;
    *(this + 7) = v22 + 1;
    v17 = *(this + 4);
    v16 = *(this + 5);
  }

  *(v16 + v17 - v5) = v18 - v5;
  *(this + 70) = 0;
  return v5;
}

void sub_22EA8E0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA8E0C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA8E50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA8E4DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA8E6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA8E694);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::Offset<void>>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<apple::aiml::flatbuffers2::Offset<void>>::__throw_length_error[abi:ne200100]();
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, 0, 4uLL);
  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, 0);
}

void sub_22EA8EFC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double apple::aiml::flatbuffers2::FlatBufferBuilder::Release(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2)
{
  if ((*(a2 + 71) & 1) == 0)
  {
    __assert_rtn("Finished", "flatbuffers.h", 1319, "finished");
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *this = *a2;
  *(this + 8) = v3;
  *(this + 2) = v4;
  *(this + 3) = v2;
  *(this + 4) = v5;
  *(this + 5) = (v2 + v4 - v5);
  if (v3 == 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

void apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(apple::aiml::flatbuffers2::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x2318F1DF0](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::GetBufferPointer(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  if ((*(this + 71) & 1) == 0)
  {
    __assert_rtn("Finished", "flatbuffers.h", 1319, "finished");
  }

  result = *(this + 6);
  if (!result)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  return result;
}

void sub_22EA91B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA91B6CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA9246C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA9243CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA92624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA925F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA92A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA929F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA957C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA95798);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA95980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA95950);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA95B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA95B08);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA95F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA95F08);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA9C894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA9C864);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA9D124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x277CCA450];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277CED160] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x22EA9D0F4);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__641(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__642(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

FastFactorLevels *FastFactorLevels::source_as_treatment_id(FastFactorLevels *this)
{
  v1 = &this[-*this->var0];
  v2 = *v1->var0;
  if (v2 >= 7 && *v1[6].var0 && (v2 >= 9 ? (v3 = this[*v1[6].var0].var0[0] == 1) : (v3 = 0), v3 && (v4 = *v1[8].var0) != 0))
  {
    return &this[v4 + *this[v4].var0];
  }

  else
  {
    return 0;
  }
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVectorOfStructs<BoxedBool>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a2, 1uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, a2);
  v6 = *(a1 + 6) - a2;
  *(a1 + 6) = v6;
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = *(a3 + 24);
      v10 = v6 + v7;
      v11 = v7;
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v8 + 48))(v8, &v11, &v10);
      ++v7;
    }

    while (a2 != v7);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a2);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVectorOfStructs<BoxedInt64>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  v6 = 8 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a2 & 0x1FFFFFFFFFFFFFFFLL, 8uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, v6);
  v7 = *(a1 + 6) - 8 * a2;
  *(a1 + 6) = v7;
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + 24);
      v11 = v7;
      v12 = v8;
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v9 + 48))(v9, &v12, &v11);
      v7 += 8;
      ++v8;
    }

    while (a2 != v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a2);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVectorOfStructs<BoxedDouble>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  v6 = 8 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a2 & 0x1FFFFFFFFFFFFFFFLL, 8uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, v6);
  v7 = *(a1 + 6) - 8 * a2;
  *(a1 + 6) = v7;
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + 24);
      v11 = v7;
      v12 = v8;
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v9 + 48))(v9, &v12, &v11);
      v7 += 8;
      ++v8;
    }

    while (a2 != v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a2);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return this;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (v8 + *(this + 3) + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_28435DFC8;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_28435DFC8;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x2318F1DF0);
  }
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 1uLL);
    v6 = (*(v5 + 6) - 1);
    *(v5 + 6) = v6;
    *v6 = v3;
    v7 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return v6 + 4;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 8uLL);
  v6 = *(a1 + 48);
  *(v6 - 8) = a3;
  v6 -= 8;
  *(a1 + 48) = v6;
  v7 = (*(a1 + 32) - v6 + *(a1 + 40));
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 8uLL);
  **(a1 + 56) = v7 | (a2 << 32);
  *(a1 + 56) += 8;
  ++*(a1 + 64);
  v9 = *(a1 + 68);
  if (v9 <= a2)
  {
    LOWORD(v9) = a2;
  }

  *(a1 + 68) = v9;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v174 = result;
  while (2)
  {
    v5 = v174;
    v6 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v5;
          v8 = v6 - v5;
          v174 = v7;
          if (v8 <= 2)
          {
            if (v8 < 2)
            {
              return result;
            }

            v6 = a2;
            if (v8 == 2)
            {
              v80 = *(a2 - 1);
              v81 = *(*a3 + 40) + *(*a3 + 32);
              v82 = *v7;
              result = FactorMetadataKeyValue::KeyCompareLessThan((v81 - v80), (v81 - v82));
              if (result)
              {
                *v7 = v80;
                *(a2 - 1) = v82;
              }

              return result;
            }

            goto LABEL_10;
          }

          switch(v8)
          {
            case 3:
              v83 = *(*a3 + 40) + *(*a3 + 32);
              v84 = *v7;
              v85 = v7[1];
              v86 = FactorMetadataKeyValue::KeyCompareLessThan((v83 - v85), (v83 - v84));
              v87 = *(v6 - 1);
              result = FactorMetadataKeyValue::KeyCompareLessThan((v83 - v87), (v83 - v85));
              if (v86)
              {
                if (result)
                {
                  *v7 = v87;
                  *(v6 - 1) = v84;
                }

                else
                {
                  *v7 = v85;
                  v7[1] = v84;
                  v159 = *(v6 - 1);
                  result = FactorMetadataKeyValue::KeyCompareLessThan((v83 - v159), (v83 - v84));
                  if (result)
                  {
                    v7[1] = v159;
                    *(a2 - 1) = v84;
                  }
                }

                return result;
              }

              if (!result)
              {
                return result;
              }

              v7[1] = v87;
              *(a2 - 1) = v85;
              v150 = *v7;
              v149 = v7[1];
              v151 = (v83 - v149);
              v152 = (v83 - v150);
LABEL_197:
              result = FactorMetadataKeyValue::KeyCompareLessThan(v151, v152);
              if (result)
              {
                *v7 = v149;
                v7[1] = v150;
              }

              return result;
            case 4:
              v169 = v7 + 1;
              v88 = *(*a3 + 40) + *(*a3 + 32);
              v173 = v7[1];
              v89 = *v7;
              v90 = FactorMetadataKeyValue::KeyCompareLessThan((v88 - v173), (v88 - v89));
              v91 = v7 + 2;
              v92 = v7[2];
              v93 = -v92;
              v94 = FactorMetadataKeyValue::KeyCompareLessThan((v88 - v92), (v88 - v173));
              if (v90)
              {
                v95 = -v89;
                if (v94)
                {
                  v96 = v7;
                  v97 = v7 + 2;
                  v98 = v89;
LABEL_192:
                  *v96 = v92;
                  *v97 = v89;
                  v93 = v95;
                  goto LABEL_194;
                }

                *v7 = v173;
                v7[1] = v89;
                v160 = FactorMetadataKeyValue::KeyCompareLessThan((v88 - v92), (v88 - v89));
                v96 = v7 + 1;
                v97 = v7 + 2;
                v98 = v89;
                if (v160)
                {
                  goto LABEL_192;
                }
              }

              else if (v94)
              {
                v98 = v173;
                v95 = -v173;
                *v169 = v92;
                *v91 = v173;
                v153 = FactorMetadataKeyValue::KeyCompareLessThan((v88 - v92), (v88 - v89));
                v96 = v7;
                v97 = v7 + 1;
                v93 = -v173;
                if (v153)
                {
                  goto LABEL_192;
                }

LABEL_194:
                v161 = *(a2 - 1);
                result = FactorMetadataKeyValue::KeyCompareLessThan((v88 - v161), (v88 + v93));
                if (!result)
                {
                  return result;
                }

                *v91 = v161;
                *(a2 - 1) = v98;
                v149 = *v91;
                v162 = *v169;
                result = FactorMetadataKeyValue::KeyCompareLessThan((v88 - v149), (v88 - v162));
                if (!result)
                {
                  return result;
                }

                v7[1] = v149;
                v7[2] = v162;
                v150 = *v7;
                v152 = (v88 - v150);
                v151 = (v88 - v149);
                goto LABEL_197;
              }

              v98 = v92;
              goto LABEL_194;
            case 5:
              v78 = *(*a3 + 32);
              v79 = *(*a3 + 40);

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *,0>(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1, v78, v79);
          }

LABEL_10:
          if (v8 <= 23)
          {
            v99 = v7 + 1;
            v100 = v7 == v6 || v99 == v6;
            v101 = v100;
            if (a5)
            {
              if ((v101 & 1) == 0)
              {
                v102 = 0;
                v103 = v7;
                v104 = *(*a3 + 40) + *(*a3 + 32);
                do
                {
                  v106 = *v103;
                  v105 = v103[1];
                  v103 = v99;
                  result = FactorMetadataKeyValue::KeyCompareLessThan((v104 - v105), (v104 - v106));
                  if (result)
                  {
                    v107 = v102;
                    while (1)
                    {
                      *(v7 + v107 + 4) = v106;
                      if (!v107)
                      {
                        break;
                      }

                      v106 = *(v7 + v107 - 4);
                      result = FactorMetadataKeyValue::KeyCompareLessThan((v104 - v105), (v104 - v106));
                      v107 -= 4;
                      if ((result & 1) == 0)
                      {
                        v108 = (v7 + v107 + 4);
                        goto LABEL_130;
                      }
                    }

                    v108 = v7;
LABEL_130:
                    *v108 = v105;
                  }

                  v99 = v103 + 1;
                  v102 += 4;
                }

                while (v103 + 1 != a2);
              }
            }

            else if ((v101 & 1) == 0)
            {
              v154 = *(*a3 + 40) + *(*a3 + 32);
              do
              {
                v156 = *v174;
                v155 = v174[1];
                v157 = v99;
                result = FactorMetadataKeyValue::KeyCompareLessThan((v154 - v155), (v154 - v156));
                if (result)
                {
                  v158 = v157;
                  do
                  {
                    *v158 = v156;
                    v156 = *(v158 - 2);
                    result = FactorMetadataKeyValue::KeyCompareLessThan((v154 - v155), (v154 - v156));
                    --v158;
                  }

                  while ((result & 1) != 0);
                  *v158 = v155;
                }

                v174 = v157;
                v99 = v157 + 1;
              }

              while (v157 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v7 != v6)
            {
              v109 = (v8 - 2) >> 1;
              v110 = v109;
              do
              {
                v111 = v110;
                if (v109 >= v110)
                {
                  v112 = *a3;
                  v113 = (2 * v111) | 1;
                  v114 = &v174[v113];
                  v167 = v111;
                  if (2 * v111 + 2 >= v8)
                  {
                    LODWORD(v118) = *v114;
                    v117 = *(v112 + 32);
                    v116 = *(v112 + 40);
                  }

                  else
                  {
                    v115 = *v114;
                    v117 = *(v112 + 32);
                    v116 = *(v112 + 40);
                    v118 = v114[1];
                    v119 = FactorMetadataKeyValue::KeyCompareLessThan((v116 + v117 - v115), (v116 + v117 - v118));
                    if (v119)
                    {
                      ++v114;
                    }

                    else
                    {
                      LODWORD(v118) = v115;
                    }

                    if (v119)
                    {
                      v113 = 2 * v111 + 2;
                    }
                  }

                  v120 = &v174[v111];
                  v121 = v116 + v117;
                  v165 = *v120;
                  v122 = (v121 - v165);
                  result = FactorMetadataKeyValue::KeyCompareLessThan((v121 - v118), (v121 - v165));
                  if ((result & 1) == 0)
                  {
                    do
                    {
                      *v120 = v118;
                      v120 = v114;
                      if (v109 < v113)
                      {
                        break;
                      }

                      v123 = (2 * v113) | 1;
                      v114 = &v174[v123];
                      v113 = 2 * v113 + 2;
                      if (v113 >= v8)
                      {
                        LODWORD(v118) = *v114;
                        v113 = v123;
                      }

                      else
                      {
                        v118 = *v114;
                        v124 = v122;
                        v125 = v114[1];
                        v126 = FactorMetadataKeyValue::KeyCompareLessThan((v121 - v118), (v121 - v125));
                        if (v126)
                        {
                          LODWORD(v118) = v125;
                        }

                        v122 = v124;
                        v109 = (v8 - 2) >> 1;
                        if (v126)
                        {
                          ++v114;
                        }

                        else
                        {
                          v113 = v123;
                        }
                      }

                      result = FactorMetadataKeyValue::KeyCompareLessThan((v121 - v118), v122);
                    }

                    while (!result);
                    v111 = v167;
                    *v120 = v165;
                  }
                }

                v110 = v111 - 1;
              }

              while (v111);
              do
              {
                v127 = 0;
                v128 = v174;
                v170 = *v174;
                v129 = *a3;
                do
                {
                  v130 = &v128[v127];
                  v131 = v130 + 1;
                  v132 = (2 * v127) | 1;
                  v133 = 2 * v127 + 2;
                  if (v133 >= v8)
                  {
                    v139 = *v131;
                    v127 = (2 * v127) | 1;
                  }

                  else
                  {
                    v136 = v130[2];
                    v135 = v130 + 2;
                    v134 = v136;
                    v137 = *(v135 - 1);
                    v138 = *(v129 + 40) + *(v129 + 32);
                    result = FactorMetadataKeyValue::KeyCompareLessThan((v138 - v137), (v138 - v136));
                    if (result)
                    {
                      v139 = v134;
                    }

                    else
                    {
                      v139 = v137;
                    }

                    if (result)
                    {
                      v131 = v135;
                      v127 = v133;
                    }

                    else
                    {
                      v127 = v132;
                    }
                  }

                  *v128 = v139;
                  v128 = v131;
                }

                while (v127 <= ((v8 - 2) >> 1));
                v140 = a2 - 1;
                v100 = v131 == --a2;
                if (v100)
                {
                  *v131 = v170;
                }

                else
                {
                  *v131 = *v140;
                  *v140 = v170;
                  v141 = (v131 - v174 + 4) >> 2;
                  v142 = v141 < 2;
                  v143 = v141 - 2;
                  if (!v142)
                  {
                    v144 = v143 >> 1;
                    v145 = &v174[v143 >> 1];
                    v146 = *v145;
                    v147 = *(*a3 + 40) + *(*a3 + 32);
                    v148 = *v131;
                    result = FactorMetadataKeyValue::KeyCompareLessThan((v147 - v146), (v147 - v148));
                    if (result)
                    {
                      do
                      {
                        *v131 = v146;
                        v131 = v145;
                        if (!v144)
                        {
                          break;
                        }

                        v144 = (v144 - 1) >> 1;
                        v145 = &v174[v144];
                        v146 = *v145;
                        result = FactorMetadataKeyValue::KeyCompareLessThan((v147 - v146), (v147 - v148));
                      }

                      while ((result & 1) != 0);
                      *v131 = v148;
                    }
                  }
                }

                v142 = v8-- <= 2;
              }

              while (!v142);
            }

            return result;
          }

          v9 = &v7[v8 >> 1];
          v10 = *(*a3 + 40) + *(*a3 + 32);
          v166 = v9;
          if (v8 >= 0x81)
          {
            v11 = *v9;
            v12 = *v7;
            v13 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v11), (v10 - v12));
            v14 = *(v6 - 1);
            v15 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v14), (v10 - v11));
            if (v13)
            {
              if (v15)
              {
                *v7 = v14;
                goto LABEL_27;
              }

              *v7 = v11;
              *v9 = v12;
              v25 = *(v6 - 1);
              if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v25), (v10 - v12)))
              {
                *v9 = v25;
LABEL_27:
                *(v6 - 1) = v12;
              }
            }

            else if (v15)
            {
              *v9 = v14;
              *(v6 - 1) = v11;
              v21 = *v9;
              v22 = *v7;
              if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v21), (v10 - v22)))
              {
                *v7 = v21;
                *v9 = v22;
              }
            }

            v26 = *(v9 - 1);
            v164 = v9 - 1;
            v27 = v7[1];
            v28 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v26), (v10 - v27));
            v29 = *(v6 - 2);
            v30 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v29), (v10 - v26));
            if (v28)
            {
              if (v30)
              {
                v7[1] = v29;
                goto LABEL_39;
              }

              v7[1] = v26;
              *v164 = v27;
              v34 = *(v6 - 2);
              if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v34), (v10 - v27)))
              {
                *v164 = v34;
LABEL_39:
                *(v6 - 2) = v27;
              }
            }

            else if (v30)
            {
              *v164 = v29;
              *(v6 - 2) = v26;
              v31 = *v164;
              v32 = v7[1];
              if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v31), (v10 - v32)))
              {
                v7[1] = v31;
                *v164 = v32;
              }
            }

            v37 = v9[1];
            v36 = v9 + 1;
            v35 = v37;
            v38 = v7[2];
            v39 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v37), (v10 - v38));
            v40 = *(v6 - 3);
            v41 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v40), (v10 - v37));
            if (v39)
            {
              if (v41)
              {
                v7[2] = v40;
                *(v6 - 3) = v38;
                v42 = &v7[v8 >> 1];
              }

              else
              {
                v7[2] = v35;
                *v36 = v38;
                v45 = *(v6 - 3);
                v42 = &v7[v8 >> 1];
                if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v45), (v10 - v38)))
                {
                  *v36 = v45;
                  *(v6 - 3) = v38;
                }
              }
            }

            else
            {
              v42 = &v7[v8 >> 1];
              if (v41)
              {
                *v36 = v40;
                *(v6 - 3) = v35;
                v43 = *v36;
                v44 = v7[2];
                if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v43), (v10 - v44)))
                {
                  v7[2] = v43;
                  *v36 = v44;
                }
              }
            }

            v46 = *v42;
            v47 = *v164;
            v48 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v46), (v10 - v47));
            v49 = *v36;
            v50 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v49), (v10 - v46));
            if (v48)
            {
              if (v50)
              {
                v6 = a2;
                v51 = v166;
                goto LABEL_55;
              }

              v51 = v166;
              *v164 = v46;
              *v166 = v47;
              v164 = v166;
              LODWORD(v46) = v49;
              v6 = a2;
              if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v49), (v10 - v47)))
              {
LABEL_55:
                *v164 = v49;
                *v36 = v47;
              }

              else
              {
                LODWORD(v46) = v47;
              }
            }

            else if (v50)
            {
              v51 = v166;
              *v166 = v49;
              *v36 = v46;
              v36 = v166;
              LODWORD(v46) = v47;
              v6 = a2;
              if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v49), (v10 - v47)))
              {
                goto LABEL_55;
              }

              LODWORD(v46) = v49;
            }

            else
            {
              v6 = a2;
              v51 = v166;
            }

            v52 = *v7;
            *v7 = v46;
            *v51 = v52;
            goto LABEL_59;
          }

          v16 = *v7;
          v17 = *v9;
          v18 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v16), (v10 - v17));
          v19 = *(v6 - 1);
          v20 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v19), (v10 - v16));
          if (v18)
          {
            if (v20)
            {
              *v9 = v19;
LABEL_36:
              *(v6 - 1) = v17;
              goto LABEL_59;
            }

            *v9 = v16;
            *v7 = v17;
            v33 = *(v6 - 1);
            if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v33), (v10 - v17)))
            {
              *v7 = v33;
              goto LABEL_36;
            }
          }

          else if (v20)
          {
            *v7 = v19;
            *(v6 - 1) = v16;
            v23 = *v7;
            v24 = *v9;
            if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v23), (v10 - v24)))
            {
              *v9 = v23;
              *v7 = v24;
            }
          }

LABEL_59:
          --a4;
          v53 = *v7;
          if ((a5 & 1) != 0 || FactorMetadataKeyValue::KeyCompareLessThan((v10 - *(v7 - 1)), (v10 - v53)))
          {
            break;
          }

          result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v53), (v10 - *(v6 - 1)));
          if (result)
          {
            v5 = v7;
            do
            {
              v69 = v5[1];
              ++v5;
              result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v53), (v10 - v69));
            }

            while ((result & 1) == 0);
          }

          else
          {
            v70 = v7 + 1;
            do
            {
              v5 = v70;
              if (v70 >= v6)
              {
                break;
              }

              ++v70;
              result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v53), (v10 - *v5));
            }

            while (!result);
          }

          v71 = v6;
          if (v5 < v6)
          {
            v71 = v6;
            do
            {
              v72 = *--v71;
              result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v53), (v10 - v72));
            }

            while ((result & 1) != 0);
          }

          if (v5 < v71)
          {
            v73 = *v5;
            v74 = *v71;
            do
            {
              *v5 = v74;
              *v71 = v73;
              do
              {
                v75 = v5[1];
                ++v5;
                v73 = v75;
              }

              while (!FactorMetadataKeyValue::KeyCompareLessThan((v10 - v53), (v10 - v75)));
              do
              {
                v76 = *--v71;
                v74 = v76;
                result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v53), (v10 - v76));
              }

              while ((result & 1) != 0);
            }

            while (v5 < v71);
          }

          v77 = v5 - 1;
          if (v5 - 1 != v7)
          {
            *v7 = *v77;
          }

          a5 = 0;
          *v77 = v53;
        }

        v54 = 0;
        v55 = *(*a3 + 40) + *(*a3 + 32);
        do
        {
          v56 = v7[++v54];
        }

        while (FactorMetadataKeyValue::KeyCompareLessThan((v55 - v56), (v55 - v53)));
        v57 = &v7[v54];
        v58 = v6;
        if (v54 == 1)
        {
          v58 = v6;
          do
          {
            if (v57 >= v58)
            {
              break;
            }

            v60 = *--v58;
          }

          while (!FactorMetadataKeyValue::KeyCompareLessThan((v55 - v60), (v55 - v53)));
        }

        else
        {
          do
          {
            v59 = *--v58;
          }

          while (!FactorMetadataKeyValue::KeyCompareLessThan((v55 - v59), (v55 - v53)));
        }

        if (v57 >= v58)
        {
          v67 = v57 - 1;
        }

        else
        {
          v61 = *v58;
          v62 = v56;
          v63 = &v7[v54];
          v64 = v58;
          do
          {
            *v63 = v61;
            *v64 = v62;
            do
            {
              v65 = v63[1];
              ++v63;
              v62 = v65;
            }

            while (FactorMetadataKeyValue::KeyCompareLessThan((v55 - v65), (v55 - v53)));
            do
            {
              v66 = *--v64;
              v61 = v66;
            }

            while (!FactorMetadataKeyValue::KeyCompareLessThan((v55 - v66), (v55 - v53)));
          }

          while (v63 < v64);
          v67 = v63 - 1;
          v6 = a2;
        }

        if (v67 != v7)
        {
          *v7 = *v67;
        }

        *v67 = v53;
        if (v57 >= v58)
        {
          break;
        }

LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *,false>(v7, v67, a3, a4, a5 & 1);
        a5 = 0;
        v5 = v67 + 1;
      }

      v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *>(v7, v67, *a3);
      v5 = v67 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *>(v67 + 1, v6, *a3);
      if (result)
      {
        break;
      }

      if (!v68)
      {
        goto LABEL_82;
      }
    }

    a2 = v67;
    if (!v68)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  v10 = a7 + a6;
  v11 = (a7 + a6 - v9);
  v13 = *a1;
  v14 = (a7 + a6 - v13);
  v15 = FactorMetadataKeyValue::KeyCompareLessThan(v11, v14);
  v16 = *a3;
  v17 = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v16), v11);
  if (!v15)
  {
    if (v17)
    {
      *a2 = v16;
      *a3 = v9;
      v20 = *a2;
      v19 = a1;
      v21 = *a1;
      if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v20), (v10 - v21)))
      {
        *a1 = v20;
        *a2 = v21;
        v16 = *a3;
        v18 = -v16;
      }

      else
      {
        v18 = -v9;
        LODWORD(v16) = v9;
      }
    }

    else
    {
      v18 = -v16;
      v19 = a1;
    }

    goto LABEL_11;
  }

  v18 = -v13;
  v19 = a1;
  if (v17)
  {
    *a1 = v16;
    *a3 = v13;
    LODWORD(v16) = v13;
LABEL_11:
    v22 = a2;
    goto LABEL_12;
  }

  *a1 = v9;
  v22 = a2;
  *a2 = v13;
  v16 = *a3;
  if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v16), v14))
  {
    *a2 = v16;
    *a3 = v13;
    LODWORD(v16) = v13;
  }

  else
  {
    v18 = -v16;
  }

LABEL_12:
  v23 = *a4;
  if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v23), (v10 + v18)))
  {
    *a3 = v23;
    *a4 = v16;
    v24 = *a3;
    v25 = *v22;
    if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v24), (v10 - v25)))
    {
      *v22 = v24;
      *a3 = v25;
      v26 = *v22;
      v27 = *v19;
      if (FactorMetadataKeyValue::KeyCompareLessThan((v10 - v26), (v10 - v27)))
      {
        *v19 = v26;
        *v22 = v27;
      }
    }
  }

  v28 = *a5;
  v29 = *a4;
  result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v28), (v10 - v29));
  if (result)
  {
    *a4 = v28;
    *a5 = v29;
    v31 = *a4;
    v32 = *a3;
    result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v31), (v10 - v32));
    if (result)
    {
      *a3 = v31;
      *a4 = v32;
      v33 = *a3;
      v34 = *v22;
      result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v33), (v10 - v34));
      if (result)
      {
        *v22 = v33;
        *a3 = v34;
        v35 = *v22;
        v36 = *v19;
        result = FactorMetadataKeyValue::KeyCompareLessThan((v10 - v35), (v10 - v36));
        if (result)
        {
          *v19 = v35;
          *v22 = v36;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = *(a3 + 40) + *(a3 + 32);
      v10 = *a1;
      v11 = a1[1];
      v12 = FactorMetadataKeyValue::KeyCompareLessThan((v9 - v11), (v9 - v10));
      v13 = *(a2 - 1);
      v14 = FactorMetadataKeyValue::KeyCompareLessThan((v9 - v13), (v9 - v11));
      if (!v12)
      {
        if (v14)
        {
          a1[1] = v13;
          *(a2 - 1) = v11;
          v37 = *a1;
          v36 = a1[1];
          if (FactorMetadataKeyValue::KeyCompareLessThan((v9 - v36), (v9 - v37)))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      if (v14)
      {
        *a1 = v13;
      }

      else
      {
        *a1 = v11;
        a1[1] = v10;
        v50 = *(a2 - 1);
        if (!FactorMetadataKeyValue::KeyCompareLessThan((v9 - v50), (v9 - v10)))
        {
          return 1;
        }

        a1[1] = v50;
      }

      *(a2 - 1) = v10;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *(a3 + 32), *(a3 + 40));
      return 1;
    }

    v58 = a1[1];
    v60 = a1 + 1;
    v25 = *(a3 + 40) + *(a3 + 32);
    v26 = *a1;
    v27 = (v25 - v26);
    v28 = FactorMetadataKeyValue::KeyCompareLessThan((v25 - v58), (v25 - v26));
    v30 = a1 + 2;
    v29 = a1[2];
    v31 = FactorMetadataKeyValue::KeyCompareLessThan((v25 - v29), (v25 - v58));
    if (v28)
    {
      v32 = -v26;
      if (v31)
      {
        v33 = a1;
        v34 = a1 + 2;
        v35 = v26;
      }

      else
      {
        *a1 = v58;
        a1[1] = v26;
        v51 = FactorMetadataKeyValue::KeyCompareLessThan((v25 - v29), v27);
        v33 = v60;
        v34 = a1 + 2;
        v35 = v26;
        v49 = -v29;
        if (!v51)
        {
          v35 = v29;
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (!v31)
      {
        v35 = v29;
        v49 = -v29;
        goto LABEL_48;
      }

      v32 = -v58;
      *v60 = v29;
      *v30 = v58;
      v35 = v58;
      v48 = FactorMetadataKeyValue::KeyCompareLessThan((v25 - v29), v27);
      v33 = a1;
      v34 = v60;
      v49 = -v58;
      if (!v48)
      {
        goto LABEL_48;
      }
    }

    *v33 = v29;
    *v34 = v26;
    v49 = v32;
LABEL_48:
    v53 = *(a2 - 1);
    if (FactorMetadataKeyValue::KeyCompareLessThan((v25 - v53), (v25 + v49)))
    {
      *v30 = v53;
      *(a2 - 1) = v35;
      v54 = *v30;
      v55 = *v60;
      if (FactorMetadataKeyValue::KeyCompareLessThan((v25 - v54), (v25 - v55)))
      {
        a1[1] = v54;
        a1[2] = v55;
        v56 = *a1;
        if (FactorMetadataKeyValue::KeyCompareLessThan((v25 - v54), (v25 - v56)))
        {
          *a1 = v54;
          a1[1] = v56;
        }
      }
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *(a3 + 40) + *(a3 + 32);
    v8 = *a1;
    if (FactorMetadataKeyValue::KeyCompareLessThan((v7 - v6), (v7 - v8)))
    {
      *a1 = v6;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_13:
  v15 = a1[1];
  v16 = *(a3 + 40) + *(a3 + 32);
  v59 = *a1;
  v17 = (v16 - v59);
  v18 = FactorMetadataKeyValue::KeyCompareLessThan((v16 - v15), (v16 - v59));
  v19 = a1 + 2;
  v57 = a1[2];
  v20 = (v16 - v57);
  v21 = FactorMetadataKeyValue::KeyCompareLessThan((v16 - v57), (v16 - v15));
  if (v18)
  {
    v22 = a1;
    v23 = a1 + 2;
    if (!v21)
    {
      *a1 = v15;
      a1[1] = v59;
      v24 = FactorMetadataKeyValue::KeyCompareLessThan(v20, v17);
      v22 = a1 + 1;
      v23 = a1 + 2;
      if (!v24)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v22 = v57;
    *v23 = v59;
    goto LABEL_26;
  }

  if (v21)
  {
    a1[1] = v57;
    *v19 = v15;
    v38 = FactorMetadataKeyValue::KeyCompareLessThan(v20, v17);
    v22 = a1;
    v23 = a1 + 1;
    if (v38)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v19;
    if (FactorMetadataKeyValue::KeyCompareLessThan((v16 - v42), (v16 - v43)))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v46 = FactorMetadataKeyValue::KeyCompareLessThan((v16 - v42), (v16 - v43));
        v44 = v45;
        if (!v46)
        {
          v47 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v47 = a1;
LABEL_34:
      *v47 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v19 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

BOOL FactorMetadataKeyValue::KeyCompareLessThan(FactorMetadataKeyValue *this, const FactorMetadataKeyValue *a2)
{
  v2 = &this[*this[-*this->var0 + 4].var0];
  v3 = &v2[*v2->var0];
  v4 = &a2[*a2[-*a2->var0 + 4].var0];
  v5 = *v4->var0;
  v8 = *v3->var0;
  v6 = v3 + 4;
  v7 = v8;
  v9 = *v4[v5].var0;
  if (v9 >= v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = memcmp(v6, &v4[v5 + 4], v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v7 < v9;
  }
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, a2);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_27885DE78, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<apple::aiml::flatbuffers2::Offset<void> ()(unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2, const char *a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 7) = *(this + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, 4, *(this + 9));
  v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, a2);
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, v5);
  *(this + 71) = 1;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__value_func<void ()(unsigned long,BoxedBool *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long,BoxedInt64 *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long,BoxedDouble *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_22EAAB118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EAAB514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22EAACA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EAAD064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EAB2360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EAB8558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22EAB8A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(a10 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EAB92C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_22EAB9DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22EABA02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22EABAD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EABB600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EABC0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EABC3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EABCB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EABD0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _loggingAppDomain()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  return _MergedGlobals_15;
}

id TRILogCategory_Daemon()
{
  if (qword_280ACAEC8 != -1)
  {
    dispatch_once(&qword_280ACAEC8, &__block_literal_global_5);
  }

  v1 = qword_280ACAED0;

  return v1;
}

id TRILogCategory_Server()
{
  if (TRILogCategory_Server_onceToken != -1)
  {
    dispatch_once(&TRILogCategory_Server_onceToken, &__block_literal_global_7);
  }

  v1 = TRILogCategory_Server_log;

  return v1;
}

id TRILogCategory_Backtrace()
{
  if (qword_280ACAED8 != -1)
  {
    dispatch_once(&qword_280ACAED8, &__block_literal_global_10);
  }

  v1 = qword_280ACAEE0;

  return v1;
}

id TRILogCategory_XCTest()
{
  if (qword_280ACAEE8 != -1)
  {
    dispatch_once(&qword_280ACAEE8, &__block_literal_global_13);
  }

  v1 = qword_280ACAEF0;

  return v1;
}

id TRILogCategory_InternalTool()
{
  if (TRILogCategory_InternalTool_onceToken != -1)
  {
    dispatch_once(&TRILogCategory_InternalTool_onceToken, &__block_literal_global_16);
  }

  v1 = TRILogCategory_InternalTool_log;

  return v1;
}

id TRILogCategory_Archiving()
{
  if (qword_280ACAEF8 != -1)
  {
    dispatch_once(&qword_280ACAEF8, &__block_literal_global_19);
  }

  v1 = qword_280ACAF00;

  return v1;
}

void sub_22EACFEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22EACFE30);
  }

  _Unwind_Resume(exception_object);
}

id TRIValidateAssetId(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString<TRIAssetId> * _Nullable TRIValidateAssetId(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"TRIStrongTypingProtocols.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"assetId"}];
  }

  if ([v1 triIsPathSafePlausibleUniqueId])
  {
    v2 = v1;
  }

  else
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "Identifier rejected as unsuitable for an asset ID: %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

id TRIValidateMLRuntimeEvaluationId(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString<TRIMLRuntimeEvaluationId> * _Nullable TRIValidateMLRuntimeEvaluationId(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"TRIStrongTypingProtocols.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"evalId"}];
  }

  if ([v1 triIsPathSafePlausibleUniqueId])
  {
    v2 = v1;
  }

  else
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "Identifier rejected as unsuitable for an MLRuntime evaluation ID: %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_22EAD2390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD26FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD2F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD34B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22EAD37C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose(va, 8);
  if (v12)
  {
    (*(v12 + 16))(v12);
  }

  _Unwind_Resume(a1);
}

void sub_22EAD3CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_22EAD40AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD4434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD47AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD4BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD4FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD5374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD5798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD5B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22EAD5D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EAD5F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
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

void operator new()
{
    ;
  }
}