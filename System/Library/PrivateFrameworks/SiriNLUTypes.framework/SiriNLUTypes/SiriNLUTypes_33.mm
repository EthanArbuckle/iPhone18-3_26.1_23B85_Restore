unint64_t sirinluinternalembedding::EmbeddingTensorOutput::hash_value(sirinluinternalembedding::EmbeddingTensorOutput *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    v6 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v6);
  }

  if (*(this + 44))
  {
    v7 = *(this + 1);
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v8 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v8 = *(this + 40);
  return v5 ^ v3 ^ v6 ^ v7 ^ v8;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::makeEmbeddingTensor(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingTensorOutput::makeSentenceEmbeddingTensor(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::PlanOverrideValue::formatText(sirinluinternal::PlanOverrideValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::PlanOverrideValue::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternal::PlanOverrideValue::readFrom(sirinluinternal::PlanOverrideValue *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if (!PB::Reader::skip(a2))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluinternal::PlanOverrideValue::~PlanOverrideValue(sirinluinternal::PlanOverrideValue *this)
{
  sirinluinternal::PlanOverrideValue::~PlanOverrideValue(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876170;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternal::PlanOverrideValue::PlanOverrideValue(void *this)
{
  *this = &unk_1F4876170;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876170;
  this[1] = 0;
  return this;
}

void *sirinluinternal::PlanOverrideValue::PlanOverrideValue(void *this, const sirinluinternal::PlanOverrideValue *a2)
{
  *this = &unk_1F4876170;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternal::PlanOverrideValue *sirinluinternal::PlanOverrideValue::operator=(const sirinluinternal::PlanOverrideValue *a1, const sirinluinternal::PlanOverrideValue *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::PlanOverrideValue::PlanOverrideValue(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternal::PlanOverrideValue::~PlanOverrideValue(&v5);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::PlanOverrideValue *a2, sirinluinternal::PlanOverrideValue *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternal::PlanOverrideValue::PlanOverrideValue(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876170;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

{
  *a1 = &unk_1F4876170;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t sirinluinternal::PlanOverrideValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876170;
    v6[1] = v4;
    sirinluinternal::PlanOverrideValue::~PlanOverrideValue(v6);
  }

  return a1;
}

BOOL sirinluinternal::PlanOverrideValue::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sirinluinternal::PlanOverrideValue::hash_value(sirinluinternal::PlanOverrideValue *this)
{
  result = *(this + 1);
  if (result)
  {
    return std::__string_hash<char>::operator()[abi:ne200100](result);
  }

  return result;
}

void sub_1C8ABE240(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8ABE330(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8ABFF4C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C8AC1C18(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC1E78(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC3028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PB::Writer *a9, char a10)
{
  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](&a9);
  sirinluexternal::UsoGraph::~UsoGraph(&a10);
  _Unwind_Resume(a1);
}

void sub_1C8AC359C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8AC3778(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C8AC4098(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8AC429C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8AC44A0(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC4618(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C8AC53C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53)
{
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a50);
  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  v56 = a53;
  a53 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t *std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1CCA7E9F0]();
    MEMORY[0x1CCA7EC50](v3, 0x10A0C403D23BABBLL);
  }

  return a1;
}

void sub_1C8AC5938(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C8AC5A58(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1C8AC6E38(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC703C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC71BC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7310(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7544(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1C8AC7684(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7798(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC78AC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC79D4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7AE8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7C00(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7D14(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7E28(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC7F3C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC8064(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC8178(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC8290(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC83E4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1C8AC8500(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC8CDC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C8AC8E30(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

uint64_t sirinluexternal::UtteranceAlignment::formatText(sirinluexternal::UtteranceAlignment *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "asr_hypothesis_index");
    v5 = *(this + 40);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 9);
    PB::TextFormatter::format(a2, "node_index");
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "spans");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UtteranceAlignment::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 40))
  {
    v4 = *(this + 32);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if ((*(v3 + 40) & 2) != 0)
  {
    v8 = *(v3 + 36);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::UtteranceAlignment::readFrom(sirinluexternal::UtteranceAlignment *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_65;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 40) |= 2u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v41 = 0;
          v42 = 0;
          v37 = 0;
          v43 = (v34 + v33);
          v18 = v32 >= v33;
          v44 = v32 - v33;
          if (!v18)
          {
            v44 = 0;
          }

          v45 = v33 + 1;
          while (1)
          {
            if (!v44)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v46 = *v43;
            *(a2 + 1) = v45;
            v37 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v43;
            --v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_47:
              LODWORD(v37) = 0;
              goto LABEL_60;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v37) = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(a2 + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_60:
        *(this + 9) = v37;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          *(this + 40) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v47 = 0;
            v48 = 0;
            v28 = 0;
            v49 = (v25 + v24);
            v18 = v23 >= v24;
            v50 = v23 - v24;
            if (!v18)
            {
              v50 = 0;
            }

            v51 = v24 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_63;
              }

              v52 = *v49;
              *(a2 + 1) = v51;
              v28 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              ++v49;
              --v50;
              ++v51;
              v14 = v48++ > 8;
              if (v14)
              {
LABEL_55:
                LODWORD(v28) = 0;
                goto LABEL_63;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_55;
              }
            }
          }

LABEL_63:
          *(this + 8) = v28;
        }

        else
        {
LABEL_17:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            v53 = 0;
            return v53 & 1;
          }
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_65;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_65:
  v53 = v4 ^ 1;
  return v53 & 1;
}

void sirinluexternal::UtteranceAlignment::~UtteranceAlignment(sirinluexternal::UtteranceAlignment *this)
{
  *this = &unk_1F4876200;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876200;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F4876200;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::UtteranceAlignment::UtteranceAlignment(uint64_t this)
{
  *this = &unk_1F4876200;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_1F4876200;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t sirinluexternal::UtteranceAlignment::UtteranceAlignment(uint64_t this, const sirinluexternal::UtteranceAlignment *a2)
{
  *this = &unk_1F4876200;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  if (*(a2 + 40))
  {
    v2 = *(a2 + 8);
    *(this + 40) = 1;
    *(this + 32) = v2;
  }

  v3 = *(a2 + 1);
  if (v3 != *(a2 + 2))
  {
    v4 = *v3;
    operator new();
  }

  if ((*(a2 + 40) & 2) != 0)
  {
    v5 = *(a2 + 9);
    *(this + 40) |= 2u;
    *(this + 36) = v5;
  }

  return this;
}

uint64_t sirinluexternal::UtteranceAlignment::operator=(uint64_t a1, const sirinluexternal::UtteranceAlignment *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UtteranceAlignment::UtteranceAlignment(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    *&v4 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    v7 = &unk_1F4876200;
    v12 = &v8;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UtteranceAlignment *a2, sirinluexternal::UtteranceAlignment *a3)
{
  v3 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  LODWORD(v7) = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v7;
  return this;
}

uint64_t sirinluexternal::UtteranceAlignment::UtteranceAlignment(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876200;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 8))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 8));
    operator delete(*v4);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t sirinluexternal::UtteranceAlignment::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UtteranceAlignment::UtteranceAlignment(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    *&v4 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v4;
    v7 = &unk_1F4876200;
    v12 = &v8;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v7);
  }

  return a1;
}

BOOL sirinluexternal::UtteranceAlignment::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    result = sirinluexternal::UtteranceSpan::operator==(*v7, *v8);
    if (!result)
    {
      return result;
    }

    ++v7;
    ++v8;
  }

  result = (v5 & 2) == 0;
  if ((v4 & 2) != 0)
  {
    return (v5 & 2) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return result;
}

uint64_t sirinluexternal::UtteranceAlignment::hash_value(sirinluexternal::UtteranceAlignment *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    v3 = *(this + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluexternal::UtteranceSpan::hash_value(v7);
    }

    while (v4 != v5);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = *(this + 9);
    return v6 ^ v3 ^ v8;
  }

  v6 = 0;
  if ((*(this + 40) & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 0;
  return v6 ^ v3 ^ v8;
}

uint64_t SIRINLUEXTERNALUsoLabelReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t siricommon::BoolValue::formatText(siricommon::BoolValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 8);
    PB::TextFormatter::format(a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::BoolValue::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t siricommon::BoolValue::readFrom(siricommon::BoolValue *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v23 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v22 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v23 = v22 != 0;
        }

        *(this + 8) = v23;
      }

      else
      {
LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

void siricommon::BoolValue::~BoolValue(siricommon::BoolValue *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::BoolValue::BoolValue(uint64_t this)
{
  *this = &unk_1F4876250;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4876250;
  *(this + 12) = 0;
  return this;
}

uint64_t siricommon::BoolValue::BoolValue(uint64_t this, const siricommon::BoolValue *a2)
{
  *this = &unk_1F4876250;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F4876250;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t siricommon::BoolValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4876250;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = &unk_1F4876250;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::BoolValue *a2, siricommon::BoolValue *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t siricommon::BoolValue::BoolValue(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4876250;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4876250;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL siricommon::BoolValue::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t siricommon::BoolValue::hash_value(siricommon::BoolValue *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensorReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALPayloadAttachmentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::SystemOffered::formatText(sirinluexternal::SystemOffered *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "offered_act");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemOffered::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluexternal::SystemOffered::readFrom(sirinluexternal::SystemOffered *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluexternal::SystemOffered::~SystemOffered(sirinluexternal::SystemOffered *this)
{
  sirinluexternal::SystemOffered::~SystemOffered(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48762A0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::SystemOffered::SystemOffered(void *this)
{
  *this = &unk_1F48762A0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F48762A0;
  this[1] = 0;
  return this;
}

void *sirinluexternal::SystemOffered::SystemOffered(void *this, const sirinluexternal::SystemOffered *a2)
{
  *this = &unk_1F48762A0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternal::SystemOffered *sirinluexternal::SystemOffered::operator=(const sirinluexternal::SystemOffered *a1, const sirinluexternal::SystemOffered *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemOffered::SystemOffered(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternal::SystemOffered::~SystemOffered(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::SystemOffered *a2, sirinluexternal::SystemOffered *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternal::SystemOffered::SystemOffered(void *a1, uint64_t a2)
{
  *a1 = &unk_1F48762A0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_1F48762A0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluexternal::SystemOffered::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F48762A0;
    v6[1] = v4;
    sirinluexternal::SystemOffered::~SystemOffered(v6);
  }

  return a1;
}

BOOL sirinluexternal::SystemOffered::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sirinluexternal::UserDialogAct::operator==(v2, v3);
  }
}

sirinluexternal::UserDialogAct *sirinluexternal::SystemOffered::hash_value(sirinluexternal::SystemOffered *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluexternal::UserDialogAct::hash_value(result);
  }

  return result;
}

uint64_t sirinluexternal::SystemOffered::makeOfferedAct(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UsoLabel::formatText(sirinluexternal::UsoLabel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoLabel::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternal::UsoLabel::readFrom(sirinluexternal::UsoLabel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if (!PB::Reader::skip(a2))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluexternal::UsoLabel::~UsoLabel(sirinluexternal::UsoLabel *this)
{
  sirinluexternal::UsoLabel::~UsoLabel(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48762F0;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::UsoLabel::UsoLabel(void *this)
{
  *this = &unk_1F48762F0;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F48762F0;
  this[1] = 0;
  return this;
}

void *sirinluexternal::UsoLabel::UsoLabel(void *this, const sirinluexternal::UsoLabel *a2)
{
  *this = &unk_1F48762F0;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternal::UsoLabel *sirinluexternal::UsoLabel::operator=(const sirinluexternal::UsoLabel *a1, const sirinluexternal::UsoLabel *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoLabel::UsoLabel(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternal::UsoLabel::~UsoLabel(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UsoLabel *a2, sirinluexternal::UsoLabel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternal::UsoLabel::UsoLabel(void *a1, uint64_t a2)
{
  *a1 = &unk_1F48762F0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

{
  *a1 = &unk_1F48762F0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t sirinluexternal::UsoLabel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F48762F0;
    v6[1] = v4;
    sirinluexternal::UsoLabel::~UsoLabel(v6);
  }

  return a1;
}

BOOL sirinluexternal::UsoLabel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = *(v2 + 23);
    }

    else
    {
      v6 = v2[1];
    }

    v7 = *(v3 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v3 + 8);
    }

    if (v6 == v7 && (v5 >= 0 ? (v9 = v2) : (v9 = *v2), v8 >= 0 ? (v10 = *(a2 + 8)) : (v10 = *v3), !memcmp(v9, v10, v6)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sirinluexternal::UsoLabel::hash_value(sirinluexternal::UsoLabel *this)
{
  result = *(this + 1);
  if (result)
  {
    return std::__string_hash<char>::operator()[abi:ne200100](result);
  }

  return result;
}

uint64_t SIRINLUEXTERNALSystemReportedSuccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUEXTERNALUUID);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALMENTION_RESOLVERMentionResolverRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v34) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v34 & 0x7F) << v5;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(SIRINLUEXTERNALUUID);
        v14 = 80;
        goto LABEL_35;
      case 2u:
        v13 = objc_alloc_init(SIRINLUEXTERNALUUID);
        v14 = 72;
LABEL_35:
        objc_storeStrong((a1 + v14), v13);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v13, a2))
        {
          goto LABEL_76;
        }

        goto LABEL_45;
      case 3u:
        v15 = PBReaderReadString();
        v16 = 88;
        goto LABEL_29;
      case 4u:
        v15 = PBReaderReadString();
        v16 = 104;
LABEL_29:
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_46;
      case 5u:
        v13 = objc_alloc_init(SIRINLUINTERNALTokenChain);
        objc_storeStrong((a1 + 96), v13);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v13, a2))
        {
          goto LABEL_76;
        }

        goto LABEL_45;
      case 6u:
        v13 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
        objc_storeStrong((a1 + 48), v13);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v13, a2))
        {
          goto LABEL_76;
        }

        goto LABEL_45;
      case 7u:
        v13 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
        [a1 addEntityCandidates:v13];
        v34 = 0;
        v35 = 0;
        if (PBReaderPlaceMark() && SIRINLUEXTERNALEntityCandidateReadFrom(&v13->super.super.isa, a2))
        {
          goto LABEL_45;
        }

        goto LABEL_76;
      case 8u:
        v13 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
        [a1 addDetectedMentions:v13];
        goto LABEL_31;
      case 9u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          LOBYTE(v34) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v34 & 0x7F) << v26;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v28;
        }

LABEL_73:
        v32 = 8;
        goto LABEL_74;
      case 0xAu:
        v13 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
        [a1 addMatchingSpans:v13];
        goto LABEL_31;
      case 0xBu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 112) |= 2u;
        while (1)
        {
          LOBYTE(v34) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v34 & 0x7F) << v19;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_69:
        v32 = 16;
LABEL_74:
        *(a1 + v32) = v25;
        goto LABEL_46;
      case 0xCu:
        v13 = objc_alloc_init(SIRINLUEXTERNALRequestID);
        objc_storeStrong((a1 + 24), v13);
        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v13, a2))
        {
          goto LABEL_76;
        }

        goto LABEL_45;
      case 0xDu:
        v13 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
        [a1 addContextualSpans:v13];
LABEL_31:
        v34 = 0;
        v35 = 0;
        if (PBReaderPlaceMark() && SIRINLUINTERNALMatchingSpanReadFrom(v13, a2))
        {
LABEL_45:
          PBReaderRecallMark();

LABEL_46:
          v18 = [a2 position];
          if (v18 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_76:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
    }
  }
}

uint64_t sirinluinternalplan_generation::VariableEventIdPair::formatText(sirinluinternalplan_generation::VariableEventIdPair *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalplan_generation::VariableEventIdPair::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternalplan_generation::VariableEventIdPair::readFrom(sirinluinternalplan_generation::VariableEventIdPair *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_28;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_28:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluinternalplan_generation::VariableEventIdPair::~VariableEventIdPair(sirinluinternalplan_generation::VariableEventIdPair *this)
{
  sirinluinternalplan_generation::VariableEventIdPair::~VariableEventIdPair(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876340;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalplan_generation::VariableEventIdPair::VariableEventIdPair(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876340;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876340;
  return this;
}

void *sirinluinternalplan_generation::VariableEventIdPair::VariableEventIdPair(void *this, const sirinluinternalplan_generation::VariableEventIdPair *a2)
{
  *this = &unk_1F4876340;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalplan_generation::VariableEventIdPair::operator=(uint64_t a1, const sirinluinternalplan_generation::VariableEventIdPair *a2)
{
  if (a1 != a2)
  {
    sirinluinternalplan_generation::VariableEventIdPair::VariableEventIdPair(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalplan_generation::VariableEventIdPair::~VariableEventIdPair(&v5);
  }

  return a1;
}

uint64_t sirinluinternalplan_generation::swap(uint64_t this, sirinluinternalplan_generation::VariableEventIdPair *a2, sirinluinternalplan_generation::VariableEventIdPair *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluinternalplan_generation::VariableEventIdPair::VariableEventIdPair(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4876340;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluinternalplan_generation::VariableEventIdPair::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalplan_generation::VariableEventIdPair::VariableEventIdPair(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalplan_generation::VariableEventIdPair::~VariableEventIdPair(&v5);
  }

  return a1;
}

BOOL sirinluinternalplan_generation::VariableEventIdPair::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 16) : *v4;
  v11 = v9 >= 0 ? *(a2 + 16) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  result = v14 == 0;
  if (v13)
  {
    if (v14)
    {
      v15 = *(v13 + 23);
      if (v15 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      v17 = *(v14 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? *(a1 + 8) : *v13;
        v20 = v18 >= 0 ? *(a2 + 8) : *v14;
        if (!memcmp(v19, v20, v16))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sirinluinternalplan_generation::VariableEventIdPair::hash_value(sirinluinternalplan_generation::VariableEventIdPair *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  return v4 ^ v3;
}

uint64_t SIRINLUINTERNALQUERYREWRITEQRHypothesisReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 32);
          *(a1 + 32) = v14;

          goto LABEL_46;
        }

        goto LABEL_32;
      }

      v23 = objc_alloc_init(SIRINLUEXTERNALUUID);
      objc_storeStrong((a1 + 16), v23);
      v29[0] = 0;
      v29[1] = 0;
      if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      *(a1 + 40) |= 1u;
      v29[0] = 0;
      v24 = [a2 position] + 8;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v29[0];
      goto LABEL_46;
    }

    if (v13 == 4)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v29[0] & 0x7F) << v16;
        if ((v29[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_43;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_43:
      *(a1 + 24) = v22;
      goto LABEL_46;
    }

LABEL_32:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8AD0D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
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

void apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*(v2 + 8));
    MEMORY[0x1CCA7EC50](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      v4 = *(this + 4);
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x1CCA7EC30](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*a1);
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1[1]);

    operator delete(a1);
  }
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
    JUMPOUT(0x1CCA7EC30);
  }
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
      MEMORY[0x1CCA7EC30](v2, 0x1000C8077774924);
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

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
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

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
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
        v15 = &unk_1F4878AC8;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_1F4878AC8;
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

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL);
  v6 = (*(this + 6) - 1);
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a3);
    v7 = (*(this + 6) - a3);
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5, 0);
  }

  return result;
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

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

BOOL SSUIntentParameter::Verify(SSUIntentParameter *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
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

BOOL apple::aiml::flatbuffers2::Table::VerifyOffset(apple::aiml::flatbuffers2::Table *this, const apple::aiml::flatbuffers2::Verifier *a2, unsigned int a3)
{
  v3 = (this - *this);
  if (*v3 <= a3)
  {
    return 1;
  }

  v4 = *(v3 + a3);
  if (!v4)
  {
    return 1;
  }

  v5 = this + v4 - *a2;
  if (v5 & 3) != 0 && (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  v7 = *(a2 + 1);
  if (v7 >= 5 && v7 - 4 >= v5)
  {
    v8 = *(*a2 + v5);
    if (v8 >= 1)
    {
      return v7 - 1 >= v5 + v8;
    }

    return 0;
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

void sub_1C8AD2224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL SSUExampleUtterance::Verify(SSUExampleUtterance *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1C8AD2780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8AD2ABC(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
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

BOOL SSUExampleEncodedVector::Verify(SSUExampleEncodedVector *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 < 5u || (v6 = *v5[4].var0) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v6 + *this[v6].var0].var0, 4uLL, 0)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1C8AD3354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 6, v3, 0);
  }

  return result;
}

BOOL SSUExample::Verify(SSUExample *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (!result)
  {
    return result;
  }

  v5 = &this[-*this->var0];
  v6 = *v5->var0;
  if (v6 >= 5)
  {
    if (*v5[4].var0)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this[*v5[4].var0 - *a2].var0)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  if (v6 < 7)
  {
    if (v6 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!*v5[6].var0)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = &this[*v5[6].var0 + *this[*v5[6].var0].var0];
LABEL_12:
  if (!*v5[4].var0)
  {
    goto LABEL_22;
  }

  v9 = this[*v5[4].var0].var0[0];
  if (v9 != 2)
  {
    v10 = v9 != 1 || v8 == 0;
    if (!v10 && !SSUExampleUtterance::Verify(v8, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v8 || (result = SSUExampleEncodedVector::Verify(v8, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

void sub_1C8AD3D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8AD42CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<apple::aiml::flatbuffers2::Offset<SSUExample>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2);
    }

    std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<SSUExample>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<SSUExample>>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 8, v3, 0);
  }

  return result;
}

BOOL SSUIntent::Verify(SSUIntent *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
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
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this->var0;
          if (*this[-v8].var0 < 7u)
          {
            goto LABEL_18;
          }

          if (*this[-v8 + 6].var0)
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*this[-v8 + 6].var0 + *this[*this[-v8 + 6].var0].var0].var0, 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this->var0;
            if (*this[-v8].var0 < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *this[-v8 + 6].var0;
          if (v9 && (v10 = &this[v9 + *this[v9].var0], *v10->var0))
          {
            v11 = 0;
            v12 = v10 + 4;
            while (SSUIntentParameter::Verify(&v12[*v12->var0], a2))
            {
              ++v11;
              v12 += 4;
              if (v11 >= *v10->var0)
              {
                goto LABEL_18;
              }
            }

            return 0;
          }

          else
          {
LABEL_18:
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (!result)
            {
              return result;
            }

            v13 = *this->var0;
            if (*this[-v13].var0 < 9u)
            {
              goto LABEL_25;
            }

            if (*this[-v13 + 8].var0)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*this[-v13 + 8].var0 + *this[*this[-v13 + 8].var0].var0].var0, 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = *this->var0;
              if (*this[-v13].var0 < 9u)
              {
                goto LABEL_25;
              }
            }

            v14 = *this[-v13 + 8].var0;
            if (!v14)
            {
LABEL_25:
              v15 = 0;
            }

            else
            {
              v15 = &this[v14 + *this[v14].var0];
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUExample>(a2, v15);
            if (result)
            {
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<SSUExample>(apple::aiml::flatbuffers2::Verifier *a1, SSUExample *a2)
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
    result = SSUExample::Verify(&v5[*v5->var0], a1);
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

uint64_t sirinluexternal::RRAnnotation::formatText(sirinluexternal::RRAnnotation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "key");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RRAnnotation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::RRAnnotation::readFrom(sirinluexternal::RRAnnotation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluexternal::RRAnnotation::~RRAnnotation(sirinluexternal::RRAnnotation *this)
{
  sirinluexternal::RRAnnotation::~RRAnnotation(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48763B0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::RRAnnotation::RRAnnotation(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48763B0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48763B0;
  return this;
}

void *sirinluexternal::RRAnnotation::RRAnnotation(void *this, const sirinluexternal::RRAnnotation *a2)
{
  *this = &unk_1F48763B0;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::RRAnnotation::operator=(uint64_t a1, const sirinluexternal::RRAnnotation *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRAnnotation::RRAnnotation(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::RRAnnotation::~RRAnnotation(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::RRAnnotation *a2, sirinluexternal::RRAnnotation *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

void *sirinluexternal::RRAnnotation::RRAnnotation(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F48763B0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = a1[1];
  a1[1] = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = a1[2];
  a1[2] = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t sirinluexternal::RRAnnotation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRAnnotation::RRAnnotation(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::RRAnnotation::~RRAnnotation(&v5);
  }

  return a1;
}

BOOL sirinluexternal::RRAnnotation::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5 && siricommon::StringValue::operator==(v4, v5))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_4:
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  result = (v6 | v7) == 0;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(a1 + 16);

    return siricommon::StringValue::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::RRAnnotation::hash_value(sirinluexternal::RRAnnotation *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](v6);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v4;
}

uint64_t sirinluexternal::RRAnnotation::makeKey(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::RRAnnotation::makeValue(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::formatText(sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "response");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::readFrom(sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::~NLv4SpanFeaturizerResponse(sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *this)
{
  sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::~NLv4SpanFeaturizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876400;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::NLv4SpanFeaturizerResponse(void *this)
{
  *this = &unk_1F4876400;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876400;
  this[1] = 0;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::NLv4SpanFeaturizerResponse(void *this, const sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *a2)
{
  *this = &unk_1F4876400;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::operator=(const sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *a1, const sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::NLv4SpanFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::~NLv4SpanFeaturizerResponse(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *a2, sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::NLv4SpanFeaturizerResponse(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876400;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_1F4876400;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876400;
    v6[1] = v4;
    sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::~NLv4SpanFeaturizerResponse(v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::operator==(v2, v3);
  }
}

uint64_t sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::hash_value(sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *this)
{
  v1 = *(this + 1);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::makeResponse(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::formatText(sirinluinternalembedding::EmbeddingResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 120))
  {
    v5 = *(this + 1);
    PB::TextFormatter::format(a2, "embedding_dim");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "embedding_tensor");
  }

  v7 = *(this + 3);
  v8 = *(this + 4);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "embedding_tensor_outputs");
  }

  v10 = *(this + 120);
  if ((v10 & 2) != 0)
  {
    v18 = *(this + 6);
    PB::TextFormatter::format(a2, "num_layer");
    v10 = *(this + 120);
    if ((v10 & 4) == 0)
    {
LABEL_9:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 120) & 4) == 0)
  {
    goto LABEL_9;
  }

  v19 = *(this + 7);
  PB::TextFormatter::format(a2, "num_subword_token");
  if ((*(this + 120) & 8) != 0)
  {
LABEL_10:
    v11 = *(this + 8);
    PB::TextFormatter::format(a2, "num_token");
  }

LABEL_11:
  v12 = *(this + 9);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "sentence_embedding_tensor");
  }

  v13 = *(this + 10);
  v14 = *(this + 11);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, a2, "subword_embedding_tensor_outputs");
  }

  v16 = *(this + 13);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "subword_token_chain");
  }

  v17 = *(this + 14);
  if (v17)
  {
    (*(*v17 + 32))(v17, a2, "token_chain");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalembedding::EmbeddingResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 112);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 120);
  if ((v6 & 8) != 0)
  {
    v17 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
    v6 = *(v3 + 120);
    if ((v6 & 2) == 0)
    {
LABEL_7:
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v3 + 120) & 2) == 0)
  {
    goto LABEL_7;
  }

  v18 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  if (*(v3 + 120))
  {
LABEL_8:
    v7 = *(v3 + 8);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_9:
  v8 = *(v3 + 72);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 104);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  if ((*(v3 + 120) & 4) != 0)
  {
    v13 = *(v3 + 56);
    this = PB::Writer::writeVarInt(a2);
  }

  v15 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v15 != v14)
  {
    v16 = *v15++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::readFrom(sirinluinternalembedding::EmbeddingResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v22 <= 7)
      {
        if (v22 == 6)
        {
          operator new();
        }

        if (v22 == 7)
        {
          PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::emplace_back<>();
        }
      }

      else
      {
        switch(v22)
        {
          case 8:
            operator new();
          case 9:
            *(this + 120) |= 4u;
            v51 = *(a2 + 1);
            v50 = *(a2 + 2);
            v52 = *a2;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v77 = 0;
              v78 = 0;
              v55 = 0;
              v79 = (v52 + v51);
              v18 = v50 >= v51;
              v80 = v50 - v51;
              if (!v18)
              {
                v80 = 0;
              }

              v81 = v51 + 1;
              while (1)
              {
                if (!v80)
                {
                  v55 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_117;
                }

                v82 = *v79;
                *(a2 + 1) = v81;
                v55 |= (v82 & 0x7F) << v77;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                ++v79;
                --v80;
                ++v81;
                v14 = v78++ > 8;
                if (v14)
                {
LABEL_101:
                  v55 = 0;
                  goto LABEL_117;
                }
              }

              if (*(a2 + 24))
              {
                v55 = 0;
              }
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = (v52 + v51);
              v57 = v51 + 1;
              while (1)
              {
                *(a2 + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v14 = v54++ > 8;
                if (v14)
                {
                  goto LABEL_101;
                }
              }
            }

LABEL_117:
            *(this + 7) = v55;
            goto LABEL_53;
          case 0xA:
            PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::emplace_back<>();
        }
      }
    }

    else if (v22 <= 2)
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        operator new();
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 120) |= 8u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v59 = 0;
            v60 = 0;
            v37 = 0;
            v61 = (v34 + v33);
            v18 = v32 >= v33;
            v62 = v32 - v33;
            if (!v18)
            {
              v62 = 0;
            }

            v63 = v33 + 1;
            while (1)
            {
              if (!v62)
              {
                v37 = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v64 = *v61;
              *(a2 + 1) = v63;
              v37 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              ++v61;
              --v62;
              ++v63;
              v14 = v60++ > 8;
              if (v14)
              {
LABEL_77:
                v37 = 0;
                goto LABEL_108;
              }
            }

            if (*(a2 + 24))
            {
              v37 = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_108:
          *(this + 8) = v37;
          goto LABEL_53;
        case 4:
          *(this + 120) |= 2u;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v71 = 0;
            v72 = 0;
            v46 = 0;
            v73 = (v43 + v42);
            v18 = v41 >= v42;
            v74 = v41 - v42;
            if (!v18)
            {
              v74 = 0;
            }

            v75 = v42 + 1;
            while (1)
            {
              if (!v74)
              {
                v46 = 0;
                *(a2 + 24) = 1;
                goto LABEL_114;
              }

              v76 = *v73;
              *(a2 + 1) = v75;
              v46 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              ++v73;
              --v74;
              ++v75;
              v14 = v72++ > 8;
              if (v14)
              {
LABEL_93:
                v46 = 0;
                goto LABEL_114;
              }
            }

            if (*(a2 + 24))
            {
              v46 = 0;
            }
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                goto LABEL_93;
              }
            }
          }

LABEL_114:
          *(this + 6) = v46;
          goto LABEL_53;
        case 5:
          *(this + 120) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v65 = 0;
            v66 = 0;
            v28 = 0;
            v67 = (v25 + v24);
            v18 = v23 >= v24;
            v68 = v23 - v24;
            if (!v18)
            {
              v68 = 0;
            }

            v69 = v24 + 1;
            while (1)
            {
              if (!v68)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_111;
              }

              v70 = *v67;
              *(a2 + 1) = v69;
              v28 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              ++v67;
              --v68;
              ++v69;
              v14 = v66++ > 8;
              if (v14)
              {
LABEL_85:
                v28 = 0;
                goto LABEL_111;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_85;
              }
            }
          }

LABEL_111:
          *(this + 1) = v28;
          goto LABEL_53;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v84 = 0;
      return v84 & 1;
    }

LABEL_53:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v84 = v4 ^ 1;
  return v84 & 1;
}

void sirinluinternalembedding::EmbeddingResponse::~EmbeddingResponse(sirinluinternalembedding::EmbeddingResponse *this)
{
  sirinluinternalembedding::EmbeddingResponse::~EmbeddingResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876450;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v6 = (this + 80);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v6 = (this + 24);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternalembedding::EmbeddingResponse::EmbeddingResponse(sirinluinternalembedding::EmbeddingResponse *this)
{
  *this = &unk_1F4876450;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

{
  *this = &unk_1F4876450;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::EmbeddingResponse(uint64_t this, const sirinluinternalembedding::EmbeddingResponse *a2)
{
  *(this + 16) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F4876450;
  *(this + 32) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 14))
  {
    operator new();
  }

  v2 = *(a2 + 120);
  if ((v2 & 8) != 0)
  {
    v9 = *(a2 + 8);
    *(this + 120) |= 8u;
    *(this + 64) = v9;
    v2 = *(a2 + 120);
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 120) & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 6);
  *(this + 120) |= 2u;
  *(this + 48) = v10;
  if (*(a2 + 120))
  {
LABEL_8:
    v3 = *(a2 + 1);
    *(this + 120) |= 1u;
    *(this + 8) = v3;
  }

LABEL_9:
  if (*(a2 + 9))
  {
    operator new();
  }

  v4 = *(a2 + 3);
  if (v4 != *(a2 + 4))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::emplace_back<sirinluinternalembedding::EmbeddingTensorOutput const&>();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  if ((*(a2 + 120) & 4) != 0)
  {
    v6 = *(a2 + 7);
    *(this + 120) |= 4u;
    *(this + 56) = v6;
  }

  v7 = *(a2 + 10);
  if (v7 != *(a2 + 11))
  {
    v8 = *v7;
    PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::emplace_back<sirinluinternalembedding::EmbeddingTensorOutput const&>();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::operator=(uint64_t a1, const sirinluinternalembedding::EmbeddingResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalembedding::EmbeddingResponse::EmbeddingResponse(v5, a2);
    sirinluinternalembedding::swap(a1, v5, v3);
    sirinluinternalembedding::EmbeddingResponse::~EmbeddingResponse(v5);
  }

  return a1;
}

uint64_t sirinluinternalembedding::swap(uint64_t this, sirinluinternalembedding::EmbeddingResponse *a2, sirinluinternalembedding::EmbeddingResponse *a3)
{
  v3 = *(this + 120);
  *(this + 120) = *(a2 + 30);
  *(a2 + 30) = v3;
  v4 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v4;
  v5 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v5;
  v7 = *(this + 8);
  v6 = *(this + 16);
  v8 = *(a2 + 2);
  *(this + 8) = *(a2 + 1);
  *(this + 16) = v8;
  *(a2 + 2) = v6;
  v9 = *(this + 112);
  *(this + 112) = *(a2 + 14);
  *(a2 + 14) = v9;
  *(a2 + 1) = v7;
  v10 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 104);
  *(this + 104) = *(a2 + 13);
  *(a2 + 13) = v14;
  v15 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v15;
  v16 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v17;
  v18 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v18;
  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::EmbeddingResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876450;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  v7 = *(a1 + 112);
  *(a1 + 112) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  v10 = *(a1 + 72);
  *(a1 + 64) = v8;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 72) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = *(a2 + 104);
  *(a2 + 104) = 0;
  v12 = *(a1 + 104);
  *(a1 + 104) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 56) = *(a2 + 56);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 80));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return a1;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalembedding::EmbeddingResponse::EmbeddingResponse(v5, a2);
    sirinluinternalembedding::swap(a1, v5, v3);
    sirinluinternalembedding::EmbeddingResponse::~EmbeddingResponse(v5);
  }

  return a1;
}

BOOL sirinluinternalembedding::EmbeddingResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 112);
  v7 = *(a2 + 112);
  if (v6)
  {
    if (!v7 || !sirinluinternal::TokenChain::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 120);
  v9 = *(a2 + 120);
  if ((v8 & 8) != 0)
  {
    if ((*(a2 + 120) & 8) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 120) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 120) & 2) != 0)
  {
    if ((*(a2 + 120) & 2) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 120) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 120))
  {
    if ((*(a2 + 120) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 120))
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v10, v11))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (!PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::operator==(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  v12 = *(a1 + 104);
  v13 = *(a2 + 104);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v13 || !sirinluinternal::SubwordTokenChain::operator==(v12, v13))
  {
    return 0;
  }

LABEL_37:
  if ((v8 & 4) != 0)
  {
    if ((v9 & 4) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v9 & 4) != 0)
  {
    return 0;
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);

  return PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::operator==(v14, v15, v16, v17);
}

BOOL PB::PtrVector<sirinluinternalembedding::EmbeddingTensorOutput>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = sirinluinternalembedding::EmbeddingTensorOutput::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

unint64_t sirinluinternalembedding::EmbeddingResponse::hash_value(sirinluinternalembedding::EmbeddingResponse *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    v5 = sirinluinternal::TokenChain::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  if ((*(this + 120) & 8) == 0)
  {
    v22 = 0;
    if ((*(this + 120) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = 0;
    if (*(this + 120))
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v22 = *(this + 8);
  if ((*(this + 120) & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = *(this + 6);
  if (*(this + 120))
  {
LABEL_10:
    v6 = *(this + 1);
    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
LABEL_14:
  v7 = *(this + 9);
  if (v7)
  {
    v8 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = *(this + 3);
  v9 = *(this + 4);
  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v10++;
      v11 ^= sirinluinternalembedding::EmbeddingTensorOutput::hash_value(v12);
    }

    while (v10 != v9);
  }

  v13 = *(this + 13);
  if (v13)
  {
    v14 = sirinluinternal::SubwordTokenChain::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  if ((*(this + 120) & 4) != 0)
  {
    v15 = *(this + 7);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 10);
  v17 = *(this + 11);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v16++;
      v18 ^= sirinluinternalembedding::EmbeddingTensorOutput::hash_value(v19);
    }

    while (v16 != v17);
  }

  return v5 ^ v3 ^ v22 ^ v21 ^ v6 ^ v8 ^ v11 ^ v14 ^ v15 ^ v18;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::makeEmbeddingTensor(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::makeTokenChain(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::makeSentenceEmbeddingTensor(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalembedding::EmbeddingResponse::makeSubwordTokenChain(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALMDSUaaPParseOverrideReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUINTERNALParseOverride);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALParseOverrideReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALUAAP_PARSERUaaPParserRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
            [a1 addMatchingSpans:v14];
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
            {
LABEL_57:

              return 0;
            }

            goto LABEL_49;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
            objc_storeStrong((a1 + 48), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_55;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_55:
            *(a1 + 8) = v21;
            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            objc_storeStrong((a1 + 32), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 2:
            v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
            objc_storeStrong((a1 + 40), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_49;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
            objc_storeStrong((a1 + 16), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALQUERYREWRITEQRResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          *(a1 + 16) = v21;
          goto LABEL_46;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALRewriteHypothesis);
          [a1 addRewriteHypotheses:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALRewriteHypothesisReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALQUERYREWRITEQRHypothesis);
          [a1 addQrHypotheses:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALQUERYREWRITEQRHypothesisReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

LABEL_32:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::PreprocessingWrapper::formatText(sirinluinternal::PreprocessingWrapper *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "embedding_response");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "mention_resolver_response");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "span_match_response");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "tokenizer_response");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::PreprocessingWrapper::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[3];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[1];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[2];
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluinternal::PreprocessingWrapper::readFrom(sirinluinternal::PreprocessingWrapper *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_33;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 2)
      {
        if (v21 == 3)
        {
          operator new();
        }

        if (v21 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          operator new();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_33;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_33:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternal::PreprocessingWrapper::~PreprocessingWrapper(sirinluinternal::PreprocessingWrapper *this)
{
  sirinluinternal::PreprocessingWrapper::~PreprocessingWrapper(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48764A0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::PreprocessingWrapper::PreprocessingWrapper(sirinluinternal::PreprocessingWrapper *this)
{
  *this = &unk_1F48764A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F48764A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternal::PreprocessingWrapper::PreprocessingWrapper(uint64_t this, const sirinluinternal::PreprocessingWrapper *a2)
{
  *this = &unk_1F48764A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::PreprocessingWrapper::operator=(uint64_t a1, const sirinluinternal::PreprocessingWrapper *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::PreprocessingWrapper::PreprocessingWrapper(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluinternal::PreprocessingWrapper::~PreprocessingWrapper(v7);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::PreprocessingWrapper *a2, sirinluinternal::PreprocessingWrapper *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v6;
  return this;
}

uint64_t sirinluinternal::PreprocessingWrapper::PreprocessingWrapper(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F48764A0;
  *(a1 + 24) = 0u;
  v5 = a2[4];
  a2[4] = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a2[3];
  a2[3] = 0;
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[1];
  a2[1] = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a2[2];
  a2[2] = 0;
  v12 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sirinluinternal::PreprocessingWrapper::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::PreprocessingWrapper::PreprocessingWrapper(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluinternal::PreprocessingWrapper::~PreprocessingWrapper(v7);
  }

  return a1;
}

BOOL sirinluinternal::PreprocessingWrapper::operator==(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = a2[4];
  if (v4)
  {
    if (!v5 || !sirinluinternaltokenizer::TokenizerResponse::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  if (v6)
  {
    if (!v7 || !PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((v6 + 8), *(v7 + 8), *(v7 + 16)))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9 || !sirinluinternalembedding::EmbeddingResponse::operator==(v8, v9))
  {
    return 0;
  }

LABEL_14:
  v10 = a1[2];
  v11 = a2[2];
  result = (v10 | v11) == 0;
  if (v10 && v11)
  {
    v13 = a1[2];

    return sirinluinternalmention_resolver::MentionResolverResponse::operator==(v13, v11);
  }

  return result;
}

unint64_t sirinluinternal::PreprocessingWrapper::hash_value(sirinluinternal::PreprocessingWrapper *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = sirinluinternaltokenizer::TokenizerResponse::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 3);
  if (!v4 || (v5 = *(v4 + 8), v6 = *(v4 + 16), v5 == v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v5++;
      v7 ^= sirinluinternal::MatchingSpan::hash_value(v8);
    }

    while (v5 != v6);
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = sirinluinternalembedding::EmbeddingResponse::hash_value(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 2);
  if (v11)
  {
    v11 = sirinluinternalmention_resolver::MentionResolverResponse::hash_value(v11);
  }

  return v7 ^ v3 ^ v10 ^ v11;
}

uint64_t sirinluinternal::PreprocessingWrapper::makeTokenizerResponse(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::PreprocessingWrapper::makeSpanMatchResponse(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::PreprocessingWrapper::makeEmbeddingResponse(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::PreprocessingWrapper::makeMentionResolverResponse(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::Parser::formatText(sirinluexternal::Parser *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "algorithm");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    PB::TextFormatter::format(a2, "parser_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::Parser::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    v5 = *(this + 8);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 12);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::Parser::readFrom(sirinluexternal::Parser *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_67;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 16) |= 2u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v42 = 0;
          v43 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v30)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_62;
            }

            v44 = v30 + 1;
            v45 = *(v31 + v30);
            *(a2 + 1) = v44;
            v34 |= (v45 & 0x7F) << v42;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v30 = v44;
            v14 = v43++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              goto LABEL_61;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }

LABEL_61:
          v3 = v44;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              break;
            }
          }
        }

LABEL_62:
        *(this + 3) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v22)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_58;
            }

            v40 = v22 + 1;
            v41 = *(v23 + v22);
            *(a2 + 1) = v40;
            v26 |= (v41 & 0x7F) << v38;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v22 = v40;
            v14 = v39++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_57;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_57:
          v3 = v40;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_58:
        *(this + 2) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v46 = 0;
          return v46 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_67;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_67:
  v46 = v4 ^ 1;
  return v46 & 1;
}

void sirinluexternal::Parser::~Parser(sirinluexternal::Parser *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluexternal::Parser::Parser(uint64_t this)
{
  *this = &unk_1F48764F0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F48764F0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t sirinluexternal::Parser::Parser(uint64_t this, const sirinluexternal::Parser *a2)
{
  *this = &unk_1F48764F0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 12) = v4;
  }

  return this;
}

uint64_t sirinluexternal::Parser::operator=(uint64_t a1, const sirinluexternal::Parser *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::Parser::Parser(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::Parser *a2, sirinluexternal::Parser *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  result = *(a2 + 1);
  v5 = *(this + 1);
  *(this + 1) = result;
  *(a2 + 1) = v5;
  return result;
}

double sirinluexternal::Parser::Parser(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48764F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F48764F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sirinluexternal::Parser::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F48764F0;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

BOOL sirinluexternal::Parser::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t sirinluexternal::Parser::hash_value(sirinluexternal::Parser *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 2);
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 3);
  return v2 ^ v1;
}

uint64_t SIRICOMMONBoolValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSPANMATCHSpanMatchResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
        [a1 addMatchingSpans:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8ADD774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8ADDAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL CDMCATISwiftBloomFilter::Verify(CDMCATISwiftBloomFilter *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this->var0;
      v6 = *this[-v5].var0;
      if (v6 < 5)
      {
        goto LABEL_28;
      }

      if (*this[-v5 + 4].var0)
      {
        result = CDMCATISwiftBitVector::Verify(&this[*this[-v5 + 4].var0 + *this[*this[-v5 + 4].var0].var0], a2);
        if (!result)
        {
          return result;
        }

        v5 = *this->var0;
        v7 = -v5;
        v6 = *this[-v5].var0;
      }

      else
      {
        v7 = -v5;
      }

      if (v6 < 7)
      {
        goto LABEL_28;
      }

      v8 = &this[v7];
      if (!*v8[6].var0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this[*v8[6].var0 - *a2].var0)
      {
        if (v6 < 9)
        {
          goto LABEL_28;
        }

        if (!*v8[8].var0 || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this[*v8[8].var0 - *a2].var0)
        {
          if (v6 < 0xB || (!*v8[10].var0 || (result = 0, v11 = *(a2 + 1), v11 >= 9) && v11 - 8 >= this[*v8[10].var0 - *a2].var0) && (v6 < 0xD || (!*v8[12].var0 || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this[*v8[12].var0 - *a2].var0) && (v6 < 0xF || (v13 = *v8[14].var0, !*v8[14].var0) || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this[v13 - *a2].var0)))
          {
LABEL_28:
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
            if (result)
            {
              v15 = &this[-v5];
              if (*v15->var0 >= 0x11u && (v16 = *v15[16].var0) != 0)
              {
                v17 = &this[v16 + *this[v16].var0];
              }

              else
              {
                v17 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17->var0);
              if (result)
              {
                v18 = &this[-*this->var0];
                v19 = *v18->var0;
                if (v19 < 0x13 || (!*v18[18].var0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this[*v18[18].var0 - *a2].var0) && (v19 < 0x15 || (v21 = *v18[20].var0) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 5) && v22 - 4 >= this[v21 - *a2].var0))
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

  return result;
}

BOOL CDMCATISwiftBitVector::Verify(CDMCATISwiftBitVector *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    v5 = &this[-*this->var0];
    v6 = *v5->var0;
    if (v6 < 5)
    {
      goto LABEL_18;
    }

    if (!*v5[4].var0 || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this[*v5[4].var0 - *a2].var0)
    {
      if (v6 < 7 || (!*v5[6].var0 || (result = 0, v8 = *(a2 + 1), v8 >= 9) && v8 - 8 >= this[*v5[6].var0 - *a2].var0) && (v6 < 9 || (!*v5[8].var0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this[*v5[8].var0 - *a2].var0) && (v6 < 0xB || !*v5[10].var0 || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this[*v5[10].var0 - *a2].var0)))
      {
LABEL_18:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
        if (result && (v6 < 0xD || !*v5[12].var0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[*v5[12].var0 + *this[*v5[12].var0].var0].var0, 1uLL, 0))))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sirinluinternal::CCQROverrideTemplate::formatText(sirinluinternal::CCQROverrideTemplate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "rewrite_message");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::CCQROverrideTemplate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternal::CCQROverrideTemplate::readFrom(sirinluinternal::CCQROverrideTemplate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluinternal::CCQROverrideTemplate::~CCQROverrideTemplate(sirinluinternal::CCQROverrideTemplate *this)
{
  sirinluinternal::CCQROverrideTemplate::~CCQROverrideTemplate(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4876540;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternal::CCQROverrideTemplate::CCQROverrideTemplate(void *this)
{
  *this = &unk_1F4876540;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4876540;
  this[1] = 0;
  return this;
}

void *sirinluinternal::CCQROverrideTemplate::CCQROverrideTemplate(void *this, const sirinluinternal::CCQROverrideTemplate *a2)
{
  *this = &unk_1F4876540;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternal::CCQROverrideTemplate *sirinluinternal::CCQROverrideTemplate::operator=(const sirinluinternal::CCQROverrideTemplate *a1, const sirinluinternal::CCQROverrideTemplate *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::CCQROverrideTemplate::CCQROverrideTemplate(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternal::CCQROverrideTemplate::~CCQROverrideTemplate(&v5);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::CCQROverrideTemplate *a2, sirinluinternal::CCQROverrideTemplate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternal::CCQROverrideTemplate::CCQROverrideTemplate(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4876540;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_1F4876540;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluinternal::CCQROverrideTemplate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4876540;
    v6[1] = v4;
    sirinluinternal::CCQROverrideTemplate::~CCQROverrideTemplate(v6);
  }

  return a1;
}

BOOL sirinluinternal::CCQROverrideTemplate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sirinluexternal::RewriteMessage::operator==(v2, v3);
  }
}

unint64_t sirinluinternal::CCQROverrideTemplate::hash_value(sirinluinternal::CCQROverrideTemplate *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 20))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  return v4 ^ v2;
}

uint64_t sirinluinternal::CCQROverrideTemplate::makeRewriteMessage(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::formatText(sirinluexternalsubword_embedding::SubwordEmbeddingRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "request_id");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 8);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4);
  }

  return this;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::readFrom(sirinluexternalsubword_embedding::SubwordEmbeddingRequest *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_28;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_28:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluexternalsubword_embedding::SubwordEmbeddingRequest::~SubwordEmbeddingRequest(sirinluexternalsubword_embedding::SubwordEmbeddingRequest *this)
{
  sirinluexternalsubword_embedding::SubwordEmbeddingRequest::~SubwordEmbeddingRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876590;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingRequest::SubwordEmbeddingRequest(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876590;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4876590;
  return this;
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingRequest::SubwordEmbeddingRequest(void *this, const sirinluexternalsubword_embedding::SubwordEmbeddingRequest *a2)
{
  *this = &unk_1F4876590;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::operator=(uint64_t a1, const sirinluexternalsubword_embedding::SubwordEmbeddingRequest *a2)
{
  if (a1 != a2)
  {
    sirinluexternalsubword_embedding::SubwordEmbeddingRequest::SubwordEmbeddingRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalsubword_embedding::SubwordEmbeddingRequest::~SubwordEmbeddingRequest(&v5);
  }

  return a1;
}

uint64_t sirinluexternalsubword_embedding::swap(uint64_t this, sirinluexternalsubword_embedding::SubwordEmbeddingRequest *a2, sirinluexternalsubword_embedding::SubwordEmbeddingRequest *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternalsubword_embedding::SubwordEmbeddingRequest::SubwordEmbeddingRequest(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4876590;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalsubword_embedding::SubwordEmbeddingRequest::SubwordEmbeddingRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalsubword_embedding::SubwordEmbeddingRequest::~SubwordEmbeddingRequest(&v5);
  }

  return a1;
}

BOOL sirinluexternalsubword_embedding::SubwordEmbeddingRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5)
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = *(v4 + 23);
      }

      else
      {
        v7 = *(v4 + 8);
      }

      v8 = *(v5 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v5 + 8);
      }

      if (v7 == v8)
      {
        v10 = v6 >= 0 ? *(a1 + 16) : *v4;
        v11 = v9 >= 0 ? *(a2 + 16) : *v5;
        if (!memcmp(v10, v11, v7))
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_16:
  v12 = *(a1 + 8);
  v13 = *(a2 + 8);
  result = (v12 | v13) == 0;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(a1 + 8);

    return sirinluexternal::RequestID::operator==(v16, v13);
  }

  return result;
}

unint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::hash_value(sirinluexternalsubword_embedding::SubwordEmbeddingRequest *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v4 = sirinluexternal::RequestID::hash_value(v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluexternalsubword_embedding::SubwordEmbeddingRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALRRSurroundingTextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUEXTERNALRRBoundingBox);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRRBoundingBoxReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::RRGroupIdentifier::formatText(sirinluexternal::RRGroupIdentifier *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "group_id");
  }

  if (*(this + 20))
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "seq");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RRGroupIdentifier::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::RRGroupIdentifier::readFrom(sirinluexternal::RRGroupIdentifier *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 4) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

void sirinluexternal::RRGroupIdentifier::~RRGroupIdentifier(sirinluexternal::RRGroupIdentifier *this)
{
  sirinluexternal::RRGroupIdentifier::~RRGroupIdentifier(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48765E0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::RRGroupIdentifier::RRGroupIdentifier(uint64_t this)
{
  *this = &unk_1F48765E0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_1F48765E0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

uint64_t sirinluexternal::RRGroupIdentifier::RRGroupIdentifier(uint64_t this, const sirinluexternal::RRGroupIdentifier *a2)
{
  *this = &unk_1F48765E0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

const sirinluexternal::RRGroupIdentifier *sirinluexternal::RRGroupIdentifier::operator=(const sirinluexternal::RRGroupIdentifier *a1, const sirinluexternal::RRGroupIdentifier *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRGroupIdentifier::RRGroupIdentifier(v6, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v3;
    v4 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v4;
    sirinluexternal::RRGroupIdentifier::~RRGroupIdentifier(v6);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::RRGroupIdentifier *a2, sirinluexternal::RRGroupIdentifier *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t sirinluexternal::RRGroupIdentifier::RRGroupIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48765E0;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sirinluexternal::RRGroupIdentifier::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRGroupIdentifier::RRGroupIdentifier(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    sirinluexternal::RRGroupIdentifier::~RRGroupIdentifier(v6);
  }

  return a1;
}

BOOL sirinluexternal::RRGroupIdentifier::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !siricommon::StringValue::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

unint64_t sirinluexternal::RRGroupIdentifier::hash_value(sirinluexternal::RRGroupIdentifier *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v3 = std::__string_hash<char>::operator()[abi:ne200100](v3);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 20))
  {
    v4 = *(this + 4);
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

uint64_t sirinluexternal::RRGroupIdentifier::makeGroupId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluRequest::formatText(sirinluexternalcdm::NluRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "current_turn_input");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "previous_turn_inputs");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "request_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalcdm::NluRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[1];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v7 = v3[2];
  v6 = v3[3];
  while (v7 != v6)
  {
    v8 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t sirinluexternalcdm::NluRequest::readFrom(sirinluexternalcdm::NluRequest *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        PB::PtrVector<sirinluexternal::TurnInput>::emplace_back<>();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternalcdm::NluRequest::~NluRequest(sirinluexternalcdm::NluRequest *this)
{
  sirinluexternalcdm::NluRequest::~NluRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4876630;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

double sirinluexternalcdm::NluRequest::NluRequest(sirinluexternalcdm::NluRequest *this)
{
  *this = &unk_1F4876630;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4876630;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluexternalcdm::NluRequest::NluRequest(uint64_t this, const sirinluexternalcdm::NluRequest *a2)
{
  *this = &unk_1F4876630;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::TurnInput>::emplace_back<sirinluexternal::TurnInput const&>();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluRequest::operator=(uint64_t a1, const sirinluexternalcdm::NluRequest *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm::NluRequest::NluRequest(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    sirinluexternalcdm::NluRequest::~NluRequest(&v7);
  }

  return a1;
}

void *sirinluexternalcdm::swap(void *this, sirinluexternalcdm::NluRequest *a2, sirinluexternalcdm::NluRequest *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v7;
  return this;
}

uint64_t sirinluexternalcdm::NluRequest::NluRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876630;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sirinluexternalcdm::NluRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm::NluRequest::NluRequest(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    sirinluexternalcdm::NluRequest::~NluRequest(&v7);
  }

  return a1;
}

BOOL sirinluexternalcdm::NluRequest::operator==(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = a2[5];
  if (v4)
  {
    if (!v5 || !sirinluexternal::RequestID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = a2[1];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v7 || !sirinluexternal::TurnInput::operator==(v6, v7))
  {
    return 0;
  }

LABEL_9:
  v8 = a2[2];
  v9 = a2[3];

  return PB::PtrVector<sirinluexternal::TurnInput>::operator==((a1 + 16), v8, v9);
}